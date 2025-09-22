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
            stats: {
                totalQuests: 0,
                questsWithRewards: 0,
                totalRewardItems: 0,
                processedItems: 0,
                errors: 0
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
     * 获取网页内容
     * @param {string} url - 目标URL
     * @returns {string} 网页HTML内容
     */
    async fetchPage(url) {
        try {
            console.log(`正在获取: ${url}`);
            
            // 导航到目标页面
            await this.driver.get(url);
            
            // 等待页面加载完成（等待body元素出现）
            await this.driver.wait(until.elementLocated(By.tagName('body')), 10000);
            
            // 额外等待，确保动态内容加载
            await this.sleep(2000);
            
            // 获取页面HTML源码
            const html = await this.driver.getPageSource();
            
            console.log(`✅ 成功获取: ${url}`);
            return html;
            
        } catch (error) {
            console.error(`获取页面失败 ${url}: ${error.message}`);
            this.results.stats.errors++;
            return null;
        }
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
            money: 0,
            reputation: []
        };

        try {
            // 获取任务标题
            const titleElement = $('h1.heading-size-1, h1, .page-header h1').first();
            if (titleElement.length > 0) {
                rewards.title = titleElement.text().trim();
            }

            console.log(`📝 解析任务: ${rewards.title || questId}`);

            // 解析所有奖励物品 - 查找所有包含 ?item= 的链接
            $('a[href*="?item="]').each((index, element) => {
                const itemLink = $(element);
                const href = itemLink.attr('href') || '';
                const itemIdMatch = href.match(/[?&]item=(\d+)/);
                
                if (itemIdMatch) {
                    const itemId = parseInt(itemIdMatch[1]);
                    const itemName = itemLink.text().trim() || itemLink.attr('title') || '';
                    
                    // 检查是否为有效的物品链接（有名称且不为空）
                    if (itemName && itemName.length > 0) {
                        const item = {
                            itemId: itemId,
                            name: itemName,
                            quantity: 1
                        };
                        
                        // 判断是否为可选择奖励
                        const parentText = itemLink.parent().parent().text().toLowerCase();
                        const isChoice = parentText.includes('choice') || 
                                       parentText.includes('choose') || 
                                       parentText.includes('可选') ||
                                       itemLink.closest('.choice-rewards, .tab-choice, [data-tab="choice"]').length > 0;
                        
                        if (isChoice) {
                            rewards.choiceItems.push(item);
                        } else {
                            rewards.rewardItems.push(item);
                        }
                        
                        console.log(`  📦 发现物品: ${itemName} (ID: ${itemId}) - ${isChoice ? '可选' : '固定'}`);
                    }
                }
            });

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
            stats: []
        };

        try {
            // 获取物品名称
            const nameElement = $('h1.heading-size-1, h1, .page-header h1').first();
            if (nameElement.length > 0) {
                item.name = nameElement.text().trim();
            }

            // 获取物品品质（通过CSS类名或颜色）
            const qualityClasses = ['q0', 'q1', 'q2', 'q3', 'q4', 'q5', 'q6'];
            const qualityNames = ['Poor', 'Common', 'Uncommon', 'Rare', 'Epic', 'Legendary', 'Artifact'];
            
            for (let i = 0; i < qualityClasses.length; i++) {
                if ($(`.${qualityClasses[i]}`).length > 0) {
                    item.quality = qualityNames[i];
                    break;
                }
            }

            // 查找物品信息表格或详情区域
            const pageText = $('body').text();
            
            // 解析物品类型
            const typeMatch = pageText.match(/Type[:\s]+([^\n\r]+)/i) || 
                             pageText.match(/类型[:\s]+([^\n\r]+)/i);
            if (typeMatch) {
                item.type = typeMatch[1].trim();
            }

            // 解析物品等级
            const levelMatch = pageText.match(/Item level[:\s]+(\d+)/i) || 
                              pageText.match(/物品等级[:\s]+(\d+)/i);
            if (levelMatch) {
                item.level = parseInt(levelMatch[1]);
            }

            // 解析需求等级
            const reqLevelMatch = pageText.match(/Required level[:\s]+(\d+)/i) || 
                                 pageText.match(/需要等级[:\s]+(\d+)/i);
            if (reqLevelMatch) {
                item.requiredLevel = parseInt(reqLevelMatch[1]);
            }

            console.log(`✅ 物品 ${itemId} (${item.name}) 解析完成: ${item.type} - ${item.quality}`);

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
        console.log(`✅ 成功率: ${((stats.totalQuests - stats.errors) / stats.totalQuests * 100).toFixed(1)}%`);
    }
}

module.exports = SeleniumQuestRewardScraper;