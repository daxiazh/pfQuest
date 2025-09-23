/**
 * 基于 Selenium 的任务奖励爬虫工具
 * 使用真实浏览器获取页面内容，避免反爬虫检测
 */

const fs = require('fs');
const path = require('path');
const { Builder, By, until, Key } = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');
const cheerio = require('cheerio');

class SeleniumQuestRewardScraper {
    constructor() {
        this.baseQuestUrl = 'https://database.turtle-wow.org/?quest=';
        this.baseItemUrl = 'https://database.turtle-wow.org/?item=';
        this.delay = 2000; // 请求间隔（毫秒）
        this.driver = null;
        this.results = {
            questRewards: {},
            itemDetails: {},
            failedQuests: new Set(),  // 失败的任务ID集合
            failedItems: new Set(),   // 失败的物品ID集合
            stats: {
                totalQuests: 0,
                questsWithRewards: 0,
                totalRewardItems: 0,
                processedItems: 0,
                errors: 0,
                networkRetries: 0
            }
        };
    }

    /**
     * 初始化浏览器驱动
     */
    async initDriver() {
        console.log('🚀 启动浏览器...');
        
        // Chrome 选项配置
        const options = new chrome.Options();
        
        // 可选：无头模式（后台运行，不显示浏览器窗口）
        // options.addArguments('--headless');
        
        // 浏览器优化选项
        options.addArguments('--no-sandbox');
        options.addArguments('--disable-dev-shm-usage');
        options.addArguments('--disable-blink-features=AutomationControlled');
        options.addArguments('--disable-extensions');
        options.addArguments('--disable-plugins');
        options.addArguments('--disable-images'); // 不加载图片，提高速度
        options.addArguments('--disable-javascript'); // 可选：禁用JS，只获取HTML
        
        // 设置用户代理
        options.addArguments('--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
        
        // 设置窗口大小
        options.addArguments('--window-size=1920,1080');
        
        try {
            this.driver = await new Builder()
                .forBrowser('chrome')
                .setChromeOptions(options)
                .build();
            
            // 设置页面加载超时
            await this.driver.manage().setTimeouts({
                pageLoad: 30000,
                script: 30000,
                implicit: 10000
            });
            
            console.log('✅ 浏览器启动成功');
            return true;
            
        } catch (error) {
            console.error('❌ 浏览器启动失败:', error.message);
            console.error('请确保已安装 Chrome 浏览器和 ChromeDriver');
            console.error('安装方法: npm install -g chromedriver 或下载 https://chromedriver.chromium.org/');
            return false;
        }
    }

    /**
     * 延迟函数
     * @param {number} ms - 延迟毫秒数
     */
    sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    /**
     * 获取网页内容（带重试机制）
     * @param {string} url - 目标URL
     * @param {number} maxRetries - 最大重试次数
     * @returns {string} 网页HTML内容
     */
    async fetchPage(url, maxRetries = 3) {
        let lastError = null;
        
        for (let attempt = 1; attempt <= maxRetries; attempt++) {
            try {
                console.log(`正在获取 (${attempt}/${maxRetries}): ${url}`);
                
                // 如果是重试，增加延迟
                if (attempt > 1) {
                    const retryDelay = 2000 + (attempt - 1) * 1000; // 递增延迟
                    console.log(`⏳ 等待 ${retryDelay}ms 后重试...`);
                    await this.sleep(retryDelay);
                    this.results.stats.networkRetries++;
                }
                
                // 导航到目标页面
                await this.driver.get(url);
                
                // 等待页面加载完成（等待body元素出现）
                await this.driver.wait(until.elementLocated(By.tagName('body')), 15000);
                
                // 检查页面是否包含错误信息
                const pageText = await this.driver.findElement(By.tagName('body')).getText();
                if (pageText.includes('404') || pageText.includes('Not Found') || pageText.includes('Error')) {
                    throw new Error('页面返回错误信息');
                }
                
                // 额外等待，确保动态内容加载
                await this.sleep(2000);
                
                // 获取页面HTML源码
                const html = await this.driver.getPageSource();
                
                console.log(`✅ 成功获取: ${url}`);
                return html;
                
            } catch (error) {
                lastError = error;
                const isNetworkError = error.message.includes('timeout') || 
                                     error.message.includes('network') ||
                                     error.message.includes('connection') ||
                                     error.message.includes('ERR_') ||
                                     error.name === 'TimeoutError';
                
                if (isNetworkError && attempt < maxRetries) {
                    console.warn(`🔄 网络错误，准备重试 (${attempt}/${maxRetries}): ${error.message}`);
                    continue;
                } else {
                    console.error(`❌ 获取页面失败 ${url} (尝试 ${attempt}/${maxRetries}): ${error.message}`);
                    break;
                }
            }
        }
        
        // 所有尝试都失败了
        this.results.stats.errors++;
        return null;
    }

    /**
     * 解析任务页面，提取奖励信息
     * @param {string} html - 任务页面HTML
     * @param {number} questId - 任务ID
     * @returns {Object} 任务奖励信息
     */
    parseQuestRewards(html, questId) {
        const $ = cheerio.load(html);
        const rewards = {
            questId: questId,
            title: '',
            rewardItems: [],
            choiceItems: [],
            experience: 0,
            reputation: []
        };

        try {
            // 获取任务标题
            const titleElement = $('h1.heading-size-1, h1, .page-header h1').first();
            if (titleElement.length > 0) {
                rewards.title = titleElement.text().trim();
            }

            console.log(`📝 解析任务: ${rewards.title || questId}`);

            // 精确匹配 <h3>Reward</h3> 后面的奖励内容
            const rewardHeader = $('h3:contains("Reward"), h3:contains("reward")').first();
            
            if (rewardHeader.length > 0) {
                console.log(`  🎯 找到奖励标题: ${rewardHeader.text()}`);
                
                // 查找紧跟在 Reward 标题后面的内容
                let currentElement = rewardHeader.next();
                let searchDepth = 0;
                const maxSearchDepth = 10; // 限制搜索深度，避免找到其他区域的内容
                
                while (currentElement.length > 0 && searchDepth < maxSearchDepth) {
                    const elementText = currentElement.text().toLowerCase();
                    
                    // 如果遇到下一个标题，停止搜索
                    if (currentElement.is('h1, h2, h3, h4') && 
                        !elementText.includes('reward') && 
                        !elementText.includes('choose')) {
                        break;
                    }
                    
                    // 查找此元素及其子元素中的物品链接
                    const itemLinks = currentElement.find('a[href*="?item="]');
                    
                    itemLinks.each((idx, element) => {
                        const itemLink = $(element);
                        const href = itemLink.attr('href') || '';
                        const itemIdMatch = href.match(/[?&]item=(\d+)/);
                        
                        if (itemIdMatch) {
                            const itemId = parseInt(itemIdMatch[1]);
                            const itemName = itemLink.text().trim();
                            
                            if (itemName && itemName.length > 0) {
                                const item = {
                                    itemId: itemId,
                                    name: itemName,
                                    quantity: 1
                                };
                                
                                // 判断是否为可选择奖励
                                // 检查上下文是否包含 "choose" 或类似词汇
                                const contextText = currentElement.text().toLowerCase();
                                const parentText = currentElement.parent().text().toLowerCase();
                                const isChoice = contextText.includes('choose') || 
                                               contextText.includes('one of these') ||
                                               contextText.includes('select') ||
                                               parentText.includes('choose') ||
                                               contextText.includes('可选');
                                
                                if (isChoice) {
                                    // 避免重复添加
                                    const exists = rewards.choiceItems.some(existing => existing.itemId === itemId);
                                    if (!exists) {
                                        rewards.choiceItems.push(item);
                                        console.log(`  🎁 发现可选奖励: ${itemName} (ID: ${itemId})`);
                                    }
                                } else {
                                    // 避免重复添加
                                    const exists = rewards.rewardItems.some(existing => existing.itemId === itemId);
                                    if (!exists) {
                                        rewards.rewardItems.push(item);
                                        console.log(`  🎁 发现固定奖励: ${itemName} (ID: ${itemId})`);
                                    }
                                }
                            }
                        }
                    });
                    
                    // 移动到下一个兄弟元素
                    currentElement = currentElement.next();
                    searchDepth++;
                }
                
                const totalRewards = rewards.rewardItems.length + rewards.choiceItems.length;
                if (totalRewards > 0) {
                    console.log(`  ✅ 共找到 ${totalRewards} 个奖励物品 (固定: ${rewards.rewardItems.length}, 可选: ${rewards.choiceItems.length})`);
                } else {
                    console.log(`  ⚠️ 找到奖励标题但没有找到奖励物品`);
                }
            } else {
                console.log(`  ℹ️ 此任务没有奖励 (未找到 Reward 标题)`);
            }

            // 解析经验值
            const pageText = $('body').text();
            const expMatch = pageText.match(/(\d+)\s*(?:experience|exp|经验)/i);
            if (expMatch) {
                rewards.experience = parseInt(expMatch[1]);
                console.log(`  ⭐ 经验奖励: ${rewards.experience}`);
            }

            // 解析金钱奖励
            const moneyMatch = pageText.match(/(\d+)\s*(?:copper|silver|gold|铜|银|金)/i);
            if (moneyMatch) {
                rewards.money = parseInt(moneyMatch[1]);
                console.log(`  💰 金钱奖励: ${rewards.money}`);
            }

            console.log(`✅ 任务 ${questId} 解析完成: ${rewards.rewardItems.length} 固定奖励, ${rewards.choiceItems.length} 可选奖励`);

        } catch (error) {
            console.error(`解析任务 ${questId} 奖励失败: ${error.message}`);
            this.results.stats.errors++;
        }

        return rewards;
    }

    /**
     * 解析物品页面，提取物品信息
     * @param {string} html - 物品页面HTML
     * @param {number} itemId - 物品ID
     * @returns {Object} 物品详细信息
     */
    parseItemDetails(html, itemId) {
        const $ = cheerio.load(html);
        const item = {
            itemId: itemId,
            name: '',
            type: '',
            subtype: '',
            quality: '',
            level: 0,
            requiredLevel: 0,
            slot: '',
            armor: 0,
            durability: ''
        };

        try {
            // 获取物品名称 - 从页面标题或 h1 标签
            let nameElement = $('h1').first();
            if (nameElement.length === 0) {
                // 从 title 标签获取名称
                const titleText = $('title').text();
                const nameMatch = titleText.match(/^([^-]+)/);
                if (nameMatch) {
                    item.name = nameMatch[1].trim();
                }
            } else {
                item.name = nameElement.text().trim();
            }

            // 解析 tooltip 内容 - 这是物品详细信息的主要来源
            const tooltipElement = $('.tooltip table, [class*="tooltip"]').first();
            if (tooltipElement.length > 0) {
                const tooltipText = tooltipElement.text();
                console.log(`🔍 Tooltip 内容: ${tooltipText.substring(0, 200)}...`);
                
                // 从 tooltip 中提取物品名称（如果之前没找到）
                if (!item.name) {
                    const tooltipNameMatch = tooltipText.match(/^([^\n\r]+)/);
                    if (tooltipNameMatch) {
                        item.name = tooltipNameMatch[1].replace(/^[^a-zA-Z]*/, '').trim();
                    }
                }

                // 解析装备位置和类型 - 格式: "Hands    Leather"
                const slotTypeMatch = tooltipText.match(/(Hands|Head|Neck|Shoulder|Chest|Waist|Legs|Feet|Wrist|Finger|Trinket|Main Hand|Off Hand|Two-Hand|Ranged|Back|Shirt|Tabard)\s+(Cloth|Leather|Mail|Plate|Dagger|Sword|Axe|Bow|Gun|Crossbow|Staff|Wand|Shield|Miscellaneous)/i);
                if (slotTypeMatch) {
                    item.slot = slotTypeMatch[1];
                    item.subtype = slotTypeMatch[2];
                    
                    // 根据子类型推断主类型
                    const subtypeToType = {
                        'Cloth': 'Armor',
                        'Leather': 'Armor', 
                        'Mail': 'Armor',
                        'Plate': 'Armor',
                        'Dagger': 'Weapon',
                        'Sword': 'Weapon',
                        'Axe': 'Weapon',
                        'Bow': 'Weapon',
                        'Gun': 'Weapon',
                        'Crossbow': 'Weapon',
                        'Staff': 'Weapon',
                        'Wand': 'Weapon',
                        'Shield': 'Armor',
                        'Miscellaneous': 'Miscellaneous'
                    };
                    item.type = subtypeToType[item.subtype] || 'Unknown';
                }

                // 解析护甲值 - 格式: "21 Armor"
                const armorMatch = tooltipText.match(/(\d+)\s+Armor/i);
                if (armorMatch) {
                    item.armor = parseInt(armorMatch[1]);
                }

                // 解析耐久度 - 格式: "Durability 16 / 16"
                const durabilityMatch = tooltipText.match(/Durability\s+(\d+\s*\/\s*\d+)/i);
                if (durabilityMatch) {
                    item.durability = durabilityMatch[1];
                }
            }

            // 解析品质 - 从 CSS 类名
            const qualityClasses = ['q0', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6'];
            const qualityNames = ['Poor', 'Common', 'Uncommon', 'Rare', 'Epic', 'Legendary', 'Artifact'];
            
            for (let i = 0; i < qualityClasses.length; i++) {
                if ($(`.${qualityClasses[i]}`).length > 0) {
                    item.quality = qualityNames[i];
                    break;
                }
            }

            // 从 infobox 解析物品等级
            const infoboxText = $('.infobox').text();
            if (infoboxText) {
                const levelMatch = infoboxText.match(/Level:\s*(\d+)/i);
                if (levelMatch) {
                    item.level = parseInt(levelMatch[1]);
                }
            }

            console.log(`✅ 物品 ${itemId} (${item.name}) 解析完成:`);
            console.log(`   - 类型: ${item.type}/${item.subtype}`);
            console.log(`   - 装备位置: ${item.slot}`);
            console.log(`   - 品质: ${item.quality}`);
            console.log(`   - 等级: ${item.level}`);
            if (item.armor > 0) console.log(`   - 护甲: ${item.armor}`);

        } catch (error) {
            console.error(`解析物品 ${itemId} 失败: ${error.message}`);
            this.results.stats.errors++;
        }

        return item;
    }

    /**
     * 获取任务奖励信息
     * @param {number} questId - 任务ID
     * @returns {Object} 任务奖励信息
     */
    async getQuestRewards(questId) {
        const url = `${this.baseQuestUrl}${questId}`;
        const html = await this.fetchPage(url);
        
        if (!html) {
            // 记录失败的任务ID
            this.results.failedQuests.add(questId);
            console.warn(`⚠️ 任务 ${questId} 获取失败，已记录到失败列表`);
            return null;
        }

        await this.sleep(this.delay);
        return this.parseQuestRewards(html, questId);
    }

    /**
     * 获取物品详细信息
     * @param {number} itemId - 物品ID
     * @returns {Object} 物品详细信息
     */
    async getItemDetails(itemId) {
        if (this.results.itemDetails[itemId]) {
            console.log(`物品 ${itemId} 已缓存，跳过`);
            return this.results.itemDetails[itemId];
        }

        const url = `${this.baseItemUrl}${itemId}`;
        const html = await this.fetchPage(url);
        
        if (!html) {
            // 记录失败的物品ID
            this.results.failedItems.add(itemId);
            console.warn(`⚠️ 物品 ${itemId} 获取失败，已记录到失败列表`);
            return null;
        }

        await this.sleep(this.delay);
        const itemDetails = this.parseItemDetails(html, itemId);
        
        // 缓存结果
        this.results.itemDetails[itemId] = itemDetails;
        return itemDetails;
    }

    /**
     * 处理任务列表
     * @param {Array<number>} questIds - 任务ID列表
     */
    async processQuests(questIds) {
        console.log(`开始处理 ${questIds.length} 个任务...`);
        this.results.stats.totalQuests = questIds.length;

        // 初始化浏览器
        const driverReady = await this.initDriver();
        if (!driverReady) {
            throw new Error('浏览器初始化失败');
        }

        try {
            for (let i = 0; i < questIds.length; i++) {
                const questId = questIds[i];
                console.log(`\n📋 进度: ${i + 1}/${questIds.length} - 处理任务 ${questId}`);

                try {
                    // 获取任务奖励
                    const questRewards = await this.getQuestRewards(questId);
                    
                    if (!questRewards) {
                        continue;
                    }

                    // 如果有奖励物品，获取物品详情
                    const allItems = [...questRewards.rewardItems, ...questRewards.choiceItems];
                    
                    if (allItems.length > 0) {
                        this.results.stats.questsWithRewards++;
                        this.results.stats.totalRewardItems += allItems.length;

                        // 获取每个物品的详细信息
                        for (const rewardItem of allItems) {
                            const itemDetails = await this.getItemDetails(rewardItem.itemId);
                            if (itemDetails) {
                                this.results.stats.processedItems++;
                            }
                        }
                    }

                    // 保存任务奖励信息
                    this.results.questRewards[questId] = questRewards;

                    // 每处理5个任务输出一次进度
                    if ((i + 1) % 5 === 0) {
                        this.saveProgressResults(`quest-rewards-progress-${i + 1}.json`);
                    }

                } catch (error) {
                    console.error(`处理任务 ${questId} 时出错: ${error.message}`);
                    this.results.stats.errors++;
                }
            }

        } finally {
            // 确保关闭浏览器
            await this.cleanup();
        }

        console.log('\n✅ 任务处理完成！');
        this.printStats();
    }

    /**
     * 清理资源
     */
    async cleanup() {
        if (this.driver) {
            console.log('🔄 关闭浏览器...');
            try {
                await this.driver.quit();
                console.log('✅ 浏览器已关闭');
            } catch (error) {
                console.error('关闭浏览器时出错:', error.message);
            }
            this.driver = null;
        }
    }

    /**
     * 保存进度结果
     * @param {string} filename - 文件名
     */
    saveProgressResults(filename) {
        const outputPath = path.join(__dirname, 'output', filename);
        const progressData = {
            timestamp: new Date().toISOString(),
            stats: this.results.stats,
            completed: Object.keys(this.results.questRewards).length
        };
        
        fs.writeFileSync(outputPath, JSON.stringify(progressData, null, 2), 'utf8');
        console.log(`💾 进度已保存: ${outputPath}`);
    }

    /**
     * 保存失败列表到文件
     * @param {string} outputDir - 输出目录
     */
    saveFailedItems(outputDir) {
        const failedData = {
            timestamp: new Date().toISOString(),
            failedQuests: Array.from(this.results.failedQuests).sort((a, b) => a - b),
            failedItems: Array.from(this.results.failedItems).sort((a, b) => a - b),
            retryInfo: {
                totalFailedQuests: this.results.failedQuests.size,
                totalFailedItems: this.results.failedItems.size,
                networkRetries: this.results.stats.networkRetries
            }
        };

        if (failedData.failedQuests.length > 0 || failedData.failedItems.length > 0) {
            const failedPath = path.join(outputDir, 'failed-items.json');
            fs.writeFileSync(failedPath, JSON.stringify(failedData, null, 2), 'utf8');
            console.log(`⚠️ 失败列表已保存到: ${failedPath}`);
            console.log(`   - 失败任务: ${failedData.failedQuests.length} 个`);
            console.log(`   - 失败物品: ${failedData.failedItems.length} 个`);
            console.log(`   - 总重试次数: ${failedData.networkRetries} 次`);
            
            if (failedData.failedQuests.length > 0) {
                console.log(`💡 可使用以下命令重新处理失败的任务:`);
                console.log(`   node scrape-quest-rewards-selenium.js -q ${failedData.failedQuests.slice(0, 10).join(',')}`);
            }
        }
    }

    /**
     * 保存最终结果到文件
     * @param {string} outputPath - 输出文件路径
     */
    saveResults(outputPath) {
        const finalResults = {
            timestamp: new Date().toISOString(),
            stats: this.results.stats,
            questRewards: this.results.questRewards,
            itemDetails: this.results.itemDetails
        };

        fs.writeFileSync(outputPath, JSON.stringify(finalResults, null, 2), 'utf8');
        console.log(`💾 结果已保存到: ${outputPath}`);
        
        // 保存失败列表
        const outputDir = path.dirname(outputPath);
        this.saveFailedItems(outputDir);
    }

    /**
     * 打印统计信息
     */
    printStats() {
        const stats = this.results.stats;
        console.log('\n📊 === 处理统计 ===');
        console.log(`📋 总任务数: ${stats.totalQuests}`);
        console.log(`🎁 有奖励的任务: ${stats.questsWithRewards}`);
        console.log(`💎 总奖励物品: ${stats.totalRewardItems}`);
        console.log(`🔍 已处理物品: ${stats.processedItems}`);
        console.log(`❌ 错误数量: ${stats.errors}`);
        console.log(`🔄 网络重试: ${stats.networkRetries} 次`);
        console.log(`⚠️ 失败任务: ${this.results.failedQuests.size} 个`);
        console.log(`⚠️ 失败物品: ${this.results.failedItems.size} 个`);
        console.log(`✅ 成功率: ${((stats.totalQuests - stats.errors) / stats.totalQuests * 100).toFixed(1)}%`);
    }
}

module.exports = SeleniumQuestRewardScraper;