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
    constructor(outputPath = null) {
        this.baseQuestUrl = 'https://database.turtle-wow.org/?quest=';
        this.baseItemUrl = 'https://database.turtle-wow.org/?item=';
        this.delay = 500; // 请求间隔（毫秒）
        this.driver = null;
        this.outputPath = outputPath; // 输出文件路径，用于增量处理
        this.progressFile = null; // 进度文件路径
        this.isIncrementalMode = false; // 是否为增量模式
        this.lastProcessedQuestId = 0; // 最后处理的任务ID
        
        // 使用 Map 优化查找性能
        this.ignoredItemsSet = new Set([]); // 忽略的物品ID集合
        this.subtypeToTypeMap = new Map([
            ['Cloth', 'Armor'],
            ['Leather', 'Armor'],
            ['Mail', 'Armor'],
            ['Plate', 'Armor'],
            ['Dagger', 'Weapon'],
            ['Sword', 'Weapon'],
            ['Axe', 'Weapon'],
            ['Bow', 'Weapon'],
            ['Gun', 'Weapon'],
            ['Crossbow', 'Weapon'],
            ['Staff', 'Weapon'],
            ['Wand', 'Weapon'],
            ['Shield', 'Armor'],
            ['Miscellaneous', 'Miscellaneous']
        ]);
        this.qualityMap = new Map([
            ['q0', 'Poor'],
            ['q1', 'Common'],
            ['q2', 'Uncommon'],
            ['q3', 'Rare'],
            ['q4', 'Epic'],
            ['q5', 'Legendary'],
            ['q6', 'Artifact']
        ]);
        
        // 特殊装备位置的默认类型映射
        this.specialSlotTypeMap = new Map([
            ['Trinket', 'Miscellaneous'],
            ['Held In Off-Hand', 'Miscellaneous'],
            ['Off Hand', 'Miscellaneous'],
            ['Ranged', 'Weapon'],
            ['Shirt', 'Armor'],  // 衬衫类型装备
            ['Tabard', 'Armor'],  // 战袍类型装备
            ['Finger', 'Armor'],  // 戒指类型装备
            ['Neck', 'Armor'],   // 项链类型装备
            ['Back', 'Armor'],   // 披风类型装备
            // 常见装备位置的默认类型映射
            ['Head', 'Armor'],   // 头部装备
            ['Chest', 'Armor'],  // 胸部装备
            ['Legs', 'Armor'],   // 腿部装备
            ['Feet', 'Armor'],   // 脚部装备
            ['Hands', 'Armor'],  // 手部装备
            ['Waist', 'Armor'],  // 腰部装备
            ['Shoulder', 'Armor'], // 肩部装备
            ['Wrist', 'Armor'],  // 手腕装备
            ['Main Hand', 'Weapon'], // 主手武器
            ['One-Hand', 'Weapon'],  // 单手武器
            ['Two-Hand', 'Weapon']   // 双手武器
        ]);
        
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
                networkRetries: 0,
                resumedFromQuestId: 0 // 从哪个任务ID开始恢复
            }
        };
    }

    /**
     * 启用增量处理模式
     * @param {string} outputPath - 输出文件路径
     */
    enableIncrementalMode(outputPath) {
        this.isIncrementalMode = true;
        this.outputPath = outputPath;
        this.progressFile = outputPath.replace('.json', '-progress.json');
        
        console.log('🔄 启用增量处理模式');
        console.log(`  输出文件: ${this.outputPath}`);
        console.log(`  进度文件: ${this.progressFile}`);
    }

    /**
     * 加载现有数据和进度
     */
    loadExistingData() {
        if (!this.isIncrementalMode) {
            return;
        }

        // 加载现有的完整数据
        if (fs.existsSync(this.outputPath)) {
            try {
                const existingData = JSON.parse(fs.readFileSync(this.outputPath, 'utf8'));
                
                // 合并现有数据
                if (existingData.questRewards) {
                    this.results.questRewards = { ...existingData.questRewards };
                }
                if (existingData.itemDetails) {
                    this.results.itemDetails = { ...existingData.itemDetails };
                }
                
                const existingCount = Object.keys(this.results.questRewards).length;
                console.log(`📂 加载了 ${existingCount} 个现有任务数据`);
                
            } catch (error) {
                console.warn(`⚠️ 加载现有数据失败: ${error.message}`);
            }
        }

        // 加载进度信息
        if (fs.existsSync(this.progressFile)) {
            try {
                const progressData = JSON.parse(fs.readFileSync(this.progressFile, 'utf8'));
                this.lastProcessedQuestId = progressData.lastProcessedQuestId || 0;
                this.results.stats.resumedFromQuestId = this.lastProcessedQuestId;
                
                console.log(`🔄 从任务 ID ${this.lastProcessedQuestId} 开始恢复处理`);
                
            } catch (error) {
                console.warn(`⚠️ 加载进度文件失败: ${error.message}`);
            }
        }
    }

    /**
     * 保存进度信息
     * @param {number} questId - 当前处理的任务ID
     */
    saveProgress(questId) {
        if (!this.isIncrementalMode) {
            return;
        }

        this.lastProcessedQuestId = questId;
        
        // 简化进度文件，只保存最后处理的任务ID，便于手动修改
        const progressData = {
            lastProcessedQuestId: questId
        };

        try {
            fs.writeFileSync(this.progressFile, JSON.stringify(progressData, null, 2), 'utf8');
        } catch (error) {
            console.warn(`⚠️ 保存进度失败: ${error.message}`);
        }
    }

    /**
     * 过滤任务列表，跳过已处理的任务
     * @param {Array<number>} questIds - 原始任务ID列表
     * @returns {Array<number>} 需要处理的任务ID列表
     */
    filterQuestList(questIds) {
        if (!this.isIncrementalMode || this.lastProcessedQuestId === 0) {
            return questIds;
        }

        // 找到从哪个位置开始处理
        let startIndex = 0;
        for (let i = 0; i < questIds.length; i++) {
            if (questIds[i] > this.lastProcessedQuestId) {
                startIndex = i;
                break;
            }
        }

        const filteredList = questIds.slice(startIndex);
        const skippedCount = questIds.length - filteredList.length;
        
        if (skippedCount > 0) {
            console.log(`⏭️ 跳过 ${skippedCount} 个已处理的任务`);
        }
        
        return filteredList;
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
                await this.sleep(1000);
                
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
                let title = titleElement.text().trim();
                // 清理标题末尾的 " - Quests" 后缀
                title = title.replace(/\s*-\s*Quests?\s*$/i, '');
                rewards.title = title || `Quest ${questId}`;
            } else {
                rewards.title = `Quest ${questId}`;
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
                                    // 使用 Set 避免重复添加
                                    if (!rewards.choiceItemIds) {
                                        rewards.choiceItemIds = new Set();
                                    }
                                    if (!rewards.choiceItemIds.has(itemId)) {
                                        rewards.choiceItemIds.add(itemId);
                                        rewards.choiceItems.push(item);
                                        console.log(`  🎁 发现可选奖励: ${itemName} (ID: ${itemId})`);
                                    }
                                } else {
                                    // 使用 Set 避免重复添加
                                    if (!rewards.rewardItemIds) {
                                        rewards.rewardItemIds = new Set();
                                    }
                                    if (!rewards.rewardItemIds.has(itemId)) {
                                        rewards.rewardItemIds.add(itemId);
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

        // 清理辅助的 Set，避免输出到最终结果
        delete rewards.rewardItemIds;
        delete rewards.choiceItemIds;

        return rewards;
    }

    /**
     * 解析物品页面，提取物品信息
     * @param {string} html - 物品页面HTML
     * @param {number} itemId - 物品ID
     * @returns {Object} 物品详细信息
     */
    parseItemDetails(html, itemId) {
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
            durability: '',
            containerSlots: 0 // 容器槽位数量，非容器物品为0
        };

        if (this.ignoredItemsSet.has(itemId)) {
            console.log(`  ⚠️ 忽略物品 ${itemId}`);
            return item;
        }

        const $ = cheerio.load(html);       

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
            
            // 清理物品名称末尾的 " - Items" 后缀
            if (item.name) {
                item.name = item.name.replace(/\s*-\s*Items?\s*$/i, '');
            }

            // 查找特定的 tooltip div - 格式: id="tooltip{itemId}-generic"
            let tooltipElement = $(`#tooltip${itemId}-generic table`).first();
            let tooltipText = '';
            
            if (tooltipElement.length === 0) {
                console.log(`⚠️ 物品 ${itemId}: 无法找到标准 tooltip，尝试其他方法...`);
                
                // 尝试查找其他可能的 tooltip 格式
                tooltipElement = $(`#tooltip${itemId}-generic`).first();
                if (tooltipElement.length === 0) {
                    tooltipElement = $(`.tooltip`).first();
                }
                
                if (tooltipElement.length === 0) {
                    console.log(`⚠️ 物品 ${itemId}: 无法找到任何 tooltip，将从整页解析`);
                    tooltipElement = $('body'); // 使用整个页面作为备选
                }
            }
            
            tooltipText = tooltipElement.text();
            console.log(`🔍 Tooltip 内容: ${tooltipText.substring(0, 200)}...`);
            
            // 使用正则表达式从 HTML 中提取物品名称和品质
            // 匹配格式: <b class="q4">Tiara of the Oracle</b>
            const nameQualityMatch = tooltipElement.html().match(/<b\s+class="(q\d+)"[^>]*>([^<]+)<\/b>/i);
            if (!nameQualityMatch) {
                throw new Error(`物品 ${itemId}: 正则表达式无法匹配到名称和品质信息。HTML: ${tooltipElement.html().substring(0, 500)}`);
            }
            
            const qualityClass = nameQualityMatch[1]; // q4
            const itemName = nameQualityMatch[2].trim(); // Tiara of the Oracle
            
            // 验证品质类名是否有效
            if (!this.qualityMap.has(qualityClass)) {
                throw new Error(`物品 ${itemId}: 无法识别的品质类名 '${qualityClass}'`);
            }
            
            // 设置物品名称
            if (!item.name) {
                item.name = itemName;
            }
            
            // 设置品质
            item.quality = this.qualityMap.get(qualityClass);
            console.log(`✅ 解析成功: ${qualityClass} -> ${item.quality}, 名称: ${itemName} (物品 ${itemId})`);
            
            // 最终验证
            if (!item.name || !item.quality) {
                throw new Error(`物品 ${itemId}: 解析后仍缺少必要信息。名称: '${item.name}', 品质: '${item.quality}'`);
            }

            // 解析装备位置和类型
            this.parseItemSlotAndType(tooltipElement, item, itemId);

            // 解析护甲值 - 格式: "9 Armor"
            const armorMatch = tooltipText.match(/(\d+)\s+Armor/i);
            if (armorMatch) {
                item.armor = parseInt(armorMatch[1]);
            }

            // 解析耐久度 - 格式: "Durability 30 / 30"
            const durabilityMatch = tooltipText.match(/Durability\s+(\d+\s*\/\s*\d+)/i);
            if (durabilityMatch) {
                item.durability = durabilityMatch[1];
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
            if (item.containerSlots > 0) console.log(`   - 容器大小: ${item.containerSlots}格`);

        } catch (error) {
            console.error(`解析物品 ${itemId} 失败: ${error.message}`);
            this.results.stats.errors++;
            // 重新抛出异常，确保程序停止
            throw error;
        }

        return item;
    }
    
    /**
     * 解析物品的装备位置和类型
     * @param {Object} tooltipElement - Cheerio包装的tooltip元素
     * @param {Object} item - 物品对象
     * @param {number} itemId - 物品ID
     */
    parseItemSlotAndType(tooltipElement, item, itemId) {
        // 格式: <table width="100%"><tr><td>位置</td><th>类型</th></tr></table>
        const slotTypeTable = tooltipElement.find('table[width="100%"]').first();
        
        if (slotTypeTable.length > 0) {
            // 检查表格内容是否有实际的装备信息
            const slotElement = slotTypeTable.find('td').first();
            const typeElement = slotTypeTable.find('th').first();
            
            const slotText = slotElement.length > 0 ? slotElement.text().trim() : '';
            const typeText = typeElement.length > 0 ? typeElement.text().trim() : '';
            
            // 如果表格存在但内容为空，说明这不是装备，是材料等其他物品
            if (!slotText && !typeText) {
                console.log(`  ℹ️ 发现空的装备位置表格，判断为非装备物品`);
                this.parseNonEquipmentItem(tooltipElement, item, itemId);
                return;
            }
            
            // 有实际内容，这是装备
            if (slotText) {
                item.slot = slotText;
            }
            
            if (typeText) {
                item.subtype = typeText;
                // 根据子类型推断主类型 - 使用 Map 优化查找
                item.type = this.subtypeToTypeMap.get(item.subtype) || 'Unknown';
            }
            
            // 处理特殊装备位置（如饰品、副手装备等）
            if (item.slot && !item.subtype) {
                // 检查是否是特殊装备位置
                const defaultType = this.specialSlotTypeMap.get(item.slot);
                if (defaultType) {
                    item.type = defaultType;
                    item.subtype = item.slot; // 使用位置作为子类型
                    console.log(`  ℹ️ 检测到特殊装备: ${item.slot}，设置类型为 ${item.type}`);
                } else {
                    throw new Error(`物品 ${itemId}: 未知的装备位置类型 (位置: ${item.slot})`);
                }
            }
            
            // 对于装备，如果没有解析到装备位置，抛出异常
            if (!item.slot) {
                throw new Error(`物品 ${itemId}: 装备缺少位置信息`);
            }
            
        } else {
            // 没有找到装备位置类型表格，可能是消耗品、配方等非装备物品
            this.parseNonEquipmentItem(tooltipElement, item, itemId);
        }
    }
    
    /**
     * 解析非装备类物品（消耗品、配方等）
     * @param {Object} tooltipElement - Cheerio包装的tooltip元素
     * @param {Object} item - 物品对象
     * @param {number} itemId - 物品ID
     */
    parseNonEquipmentItem(tooltipElement, item, itemId) {
        const tooltipText = tooltipElement.text();
        
        // 检查是否是任务相关物品（优先检查）
        const isQuestItem = tooltipText.includes('Quest Item');
        const isQuestStarter = tooltipText.includes('This Item Begins a Quest') ||
                              tooltipText.includes('Right Click to begin a quest') ||
                              tooltipText.includes('Starts a quest') ||
                              tooltipText.includes('Begin Quest');
        
        // 检查是否是配方/技能书类型
        const isRecipe = tooltipText.includes('Requires ') && tooltipText.includes('Use:') && !isQuestItem && !isQuestStarter;
        const isConsumable = tooltipText.includes('Use:') && !isRecipe && !isQuestItem && !isQuestStarter;
        
        // 检查是否是容器类型（背包、箭袋等）
        const bagMatch = tooltipText.match(/(\d+)\s+Slot\s+(Bag|Quiver)/i);
        const isContainer = bagMatch || 
                           tooltipText.includes('Slot Bag') || 
                           tooltipText.includes('Quiver') ||
                           tooltipText.includes('Container');
        
        // 检查是否是特殊职业物品类型
        const isTotem = tooltipText.includes('Totem') || item.name.includes('Totem');
        const isLibram = tooltipText.includes('Libram') || item.name.includes('Libram');
        const isIdol = tooltipText.includes('Idol') || item.name.includes('Idol');
        const isSigil = tooltipText.includes('Sigil') || item.name.includes('Sigil');
        const isClassItem = isTotem || isLibram || isIdol || isSigil;
        
        // 检查是否是制造材料（通过物品名称模式识别）
        const isTradeMaterial = item.name.includes('Bar') ||       // 锭（如Silver Bar）
                               item.name.includes('Ore') ||       // 矿石
                               item.name.includes('Ingot') ||     // 铸锭
                               item.name.includes('Leather') ||   // 皮革
                               item.name.includes('Cloth') ||     // 布料
                               item.name.includes('Thread') ||    // 线
                               item.name.includes('Oil') ||       // 油
                               item.name.includes('Essence') ||   // 精华
                               item.name.includes('Dust') ||      // 尘埃
                               item.name.includes('Shard') ||     // 碎片
                               item.name.includes('Crystal') ||   // 水晶
                               item.name.includes('Gem') ||       // 宝石
                               item.name.includes('Stone') ||     // 石头
                               item.name.includes('Herb') ||      // 草药
                               item.name.includes('Root') ||      // 根茎
                               item.name.includes('Petal') ||     // 花瓣
                               item.name.includes('Seed') ||      // 种子
                               item.name.includes('leaf') ||      // 叶子（如Silverleaf）
                               item.name.includes('Bloom') ||     // 花朵
                               item.name.includes('Moss') ||      // 苔藓
                               item.name.includes('Scale') ||     // 鳞片
                               item.name.includes('Hide') ||      // 兽皮
                               item.name.includes('Bone') ||      // 骨头
                               item.name.includes('Fang') ||      // 尖牙
                               item.name.includes('Claw') ||      // 爪子
                               item.name.includes('Feather') ||   // 羽毛
                               item.name.includes('Silk') ||      // 丝绸
                               item.name.includes('Wool') ||      // 羊毛
                               item.name.includes('Cotton') ||    // 棉花
                               item.name.includes('Linen');       // 亚麻
        
        if (isRecipe) {
            item.type = 'Recipe';
            item.subtype = '';
            item.slot = '';
        } else if (isConsumable) {
            item.type = 'Consumable';
            item.subtype = '';
            item.slot = '';
        } else if (isQuestItem || isQuestStarter) {
            item.type = 'Quest';
            item.subtype = isQuestStarter ? 'Quest Starter' : 'Quest Item';
            item.slot = '';
            console.log(`  ℹ️ 检测到任务物品: ${isQuestStarter ? '任务起始物品' : '任务物品'}`);
        } else if (isContainer) {
            item.type = 'Container';
            item.subtype = bagMatch ? bagMatch[2] : 'Bag'; // Bag 或 Quiver
            item.slot = '';
            
            // 提取容器大小信息
            if (bagMatch) {
                item.containerSlots = parseInt(bagMatch[1]);
                console.log(`  ℹ️ 检测到容器: ${item.containerSlots}格${item.subtype}`);
            } else {
                console.log(`  ℹ️ 检测到容器类型: ${item.subtype}`);
            }
        } else if (isClassItem) {
            item.type = 'Miscellaneous';
            item.slot = '';
            
            // 设置具体的子类型
            if (isTotem) {
                item.subtype = 'Totem';
                console.log(`  ℹ️ 检测到图腾类型物品`);
            } else if (isLibram) {
                item.subtype = 'Libram';
                console.log(`  ℹ️ 检测到圣契类型物品`);
            } else if (isIdol) {
                item.subtype = 'Idol';
                console.log(`  ℹ️ 检测到神像类型物品`);
            } else if (isSigil) {
                item.subtype = 'Sigil';
                console.log(`  ℹ️ 检测到符印类型物品`);
            }
        } else if (isTradeMaterial) {
            item.type = 'Trade Goods';
            item.subtype = 'Material';
            item.slot = '';
            console.log(`  ℹ️ 检测到制造材料: ${item.name}`);
        } else {
            // 对于其他无法明确分类的物品，如果有基本信息就归为杂项
            if (item.name && item.name.trim().length > 0) {
                item.type = 'Miscellaneous';
                item.subtype = 'Other';
                item.slot = '';
                console.log(`  ℹ️ 未明确分类的物品，归为杂项类型`);
            } else {
                // 如果连基本信息都没有，则抛出异常
                throw new Error(`物品 ${itemId}: 无法识别的物品类型，缺少有效信息`);
            }
        }
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

        // await this.sleep(this.delay);
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
        // 加载现有数据和进度
        this.loadExistingData();
        
        // 过滤任务列表，跳过已处理的任务
        const filteredQuestIds = this.filterQuestList(questIds);
        
        console.log(`开始处理 ${filteredQuestIds.length} 个任务... (总计: ${questIds.length})`);
        this.results.stats.totalQuests = questIds.length; // 保持总数不变

        if (filteredQuestIds.length === 0) {
            console.log('✅ 所有任务都已处理完成！');
            return;
        }

        // 初始化浏览器
        const driverReady = await this.initDriver();
        if (!driverReady) {
            throw new Error('浏览器初始化失败');
        }

        try {
            for (let i = 0; i < filteredQuestIds.length; i++) {
                const questId = filteredQuestIds[i];
                const originalIndex = questIds.indexOf(questId);
                console.log(`\n📋 进度: ${originalIndex + 1}/${questIds.length} - 处理任务 ${questId}`);

                try {
                    // 获取任务奖励
                    const questRewards = await this.getQuestRewards(questId);
                    
                    if (!questRewards) {
                        // 即使失败也要保存进度
                        this.saveProgress(questId);
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

                    // 保存进度
                    this.saveProgress(questId);

                    // 每处理10个任务保存一次完整数据
                    if ((i + 1) % 10 === 0) {
                        if (this.isIncrementalMode && this.outputPath) {
                            this.saveResults(this.outputPath, true); // 增量保存
                            console.log(`💾 已保存中间结果 (处理了 ${i + 1}/${filteredQuestIds.length} 个任务)`);
                        } else {
                            this.saveProgressResults(`quest-rewards-progress-${i + 1}.json`);
                        }
                    }

                } catch (error) {
                    console.error(`处理任务 ${questId} 时出错: ${error.message}`);
                    this.results.stats.errors++;
                    // 不保存失败任务的进度，确保下次可以重试
                    throw error;
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
     * @param {boolean} isIncremental - 是否为增量保存
     */
    saveResults(outputPath, isIncremental = false) {
        const finalResults = {
            timestamp: new Date().toISOString(),
            stats: this.results.stats,
            questRewards: this.results.questRewards,
            itemDetails: this.results.itemDetails
        };

        // 如果是增量模式且不是最终保存，则合并现有数据
        if (isIncremental && this.isIncrementalMode) {
            // 数据已经在内存中合并了，直接保存
            fs.writeFileSync(outputPath, JSON.stringify(finalResults, null, 2), 'utf8');
            
            if (!isIncremental) {
                console.log(`💾 结果已保存到: ${outputPath}`);
            }
        } else {
            fs.writeFileSync(outputPath, JSON.stringify(finalResults, null, 2), 'utf8');
            console.log(`💾 结果已保存到: ${outputPath}`);
        }
        
        // 只在最终保存时保存失败列表
        if (!isIncremental) {
            const outputDir = path.dirname(outputPath);
            this.saveFailedItems(outputDir);
        }
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