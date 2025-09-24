#!/usr/bin/env node

/**
 * 数据分析器工具
 * 从本地缓存的HTML文件中提取任务奖励和物品数据
 */

const fs = require('fs');
const path = require('path');
const cheerio = require('cheerio');

class DataAnalyzer {
    constructor() {
        this.cacheDir = path.join(__dirname, 'cache');
        this.questCacheDir = path.join(this.cacheDir, 'quests');
        this.itemCacheDir = path.join(this.cacheDir, 'items');
        this.outputDir = path.join(__dirname, 'output');
        
        // 初始化输出目录
        if (!fs.existsSync(this.outputDir)) {
            fs.mkdirSync(this.outputDir, { recursive: true });
        }
        
        // 品质映射
        this.qualityMap = new Map([
            ['q0', 'Poor'],
            ['q1', 'Common'],
            ['q2', 'Uncommon'],
            ['q3', 'Rare'],
            ['q4', 'Epic'],
            ['q5', 'Legendary'],
            ['q6', 'Artifact']
        ]);
        
        // 结果存储
        this.results = {
            questRewards: {},
            itemDetails: {}
        };
    }

    /**
     * 获取缓存的文件列表
     */
    getCachedFiles(type) {
        const dir = type === 'quest' ? this.questCacheDir : this.itemCacheDir;
        if (!fs.existsSync(dir)) {
            return [];
        }
        
        return fs.readdirSync(dir)
            .filter(file => file.endsWith('.html'))
            .map(file => parseInt(path.basename(file, '.html')))
            .filter(id => !isNaN(id))
            .sort((a, b) => a - b);
    }

    /**
     * 解析单个任务的HTML
     */
    parseQuestHTML(questId) {
        const cacheFile = path.join(this.questCacheDir, `${questId}.html`);
        if (!fs.existsSync(cacheFile)) {
            throw new Error(`任务 ${questId} 的缓存文件不存在: ${cacheFile}`);
        }
        
        const html = fs.readFileSync(cacheFile, 'utf8');
        const $ = cheerio.load(html);
        
        const questData = {
            questId: questId,
            rewardItems: [],
            choiceItems: []
        };
        
        // 解析奖励物品
        $('.iconlist').each((index, element) => {
            const $section = $(element);
            const sectionText = $section.prev().text();
            
            if (sectionText.includes('Reward') || sectionText.includes('奖励')) {
                $section.find('a[href*="item="]').each((i, link) => {
                    const href = $(link).attr('href');
                    const itemIdMatch = href.match(/item=(\d+)/);
                    if (itemIdMatch) {
                        questData.rewardItems.push({
                            itemId: parseInt(itemIdMatch[1])
                        });
                    }
                });
            } else if (sectionText.includes('Choice') || sectionText.includes('选择')) {
                $section.find('a[href*="item="]').each((i, link) => {
                    const href = $(link).attr('href');
                    const itemIdMatch = href.match(/item=(\d+)/);
                    if (itemIdMatch) {
                        questData.choiceItems.push({
                            itemId: parseInt(itemIdMatch[1])
                        });
                    }
                });
            }
        });
        
        return questData;
    }

    /**
     * 解析单个物品的HTML
     */
    parseItemHTML(itemId) {
        const cacheFile = path.join(this.itemCacheDir, `${itemId}.html`);
        if (!fs.existsSync(cacheFile)) {
            throw new Error(`物品 ${itemId} 的缓存文件不存在: ${cacheFile}`);
        }
        
        const html = fs.readFileSync(cacheFile, 'utf8');
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
        
        // 查找tooltip元素
        let tooltipElement = $(`#tooltip${itemId}-generic table`).first();
        if (tooltipElement.length === 0) {
            tooltipElement = $(`#tooltip${itemId}-generic`).first();
            if (tooltipElement.length === 0) {
                tooltipElement = $(`.tooltip`).first();
                if (tooltipElement.length === 0) {
                    tooltipElement = $('body');
                }
            }
        }
        
        // 使用正则表达式严格提取名称和品质
        const nameQualityMatch = tooltipElement.html().match(/<b\s+class="(q\d+)"[^>]*>([^<]+)<\/b>/i);
        if (!nameQualityMatch) {
            throw new Error(`物品 ${itemId}: 正则表达式无法匹配到名称和品质信息`);
        }
        
        const qualityClass = nameQualityMatch[1]; // q4
        const itemName = nameQualityMatch[2].trim(); // Tiara of the Oracle
        
        // 验证品质类名
        if (!this.qualityMap.has(qualityClass)) {
            throw new Error(`物品 ${itemId}: 无法识别的品质类名 '${qualityClass}'`);
        }
        
        // 设置基本信息
        item.name = itemName;
        item.quality = this.qualityMap.get(qualityClass);
        
        // 解析装备位置和类型
        this.parseItemSlotAndType(tooltipElement, item, itemId);
        
        // 解析其他属性
        const tooltipText = tooltipElement.text();
        
        // 护甲值
        const armorMatch = tooltipText.match(/(\d+)\s+Armor/i);
        if (armorMatch) {
            item.armor = parseInt(armorMatch[1]);
        }
        
        // 耐久度
        const durabilityMatch = tooltipText.match(/Durability\s+(\d+\s*\/\s*\d+)/i);
        if (durabilityMatch) {
            item.durability = durabilityMatch[1];
        }
        
        // 物品等级
        const levelMatch = tooltipText.match(/Item Level[:\s]+(\d+)/i);
        if (levelMatch) {
            item.level = parseInt(levelMatch[1]);
        }
        
        // 需求等级
        const reqLevelMatch = tooltipText.match(/Requires Level[:\s]+(\d+)/i);
        if (reqLevelMatch) {
            item.requiredLevel = parseInt(reqLevelMatch[1]);
        }
        
        console.log(`✅ 物品 ${itemId} (${item.name}) 解析完成: ${item.quality} ${item.type}/${item.subtype}`);
        return item;
    }

    /**
     * 解析装备位置和类型 (从原工具复制)
     */
    parseItemSlotAndType(tooltipElement, item, itemId) {
        const tooltipText = tooltipElement.text();
        
        // 装备位置映射
        const slotPatterns = [
            { pattern: /Head/i, slot: 'Head', type: 'Armor' },
            { pattern: /Neck/i, slot: 'Neck', type: 'Armor' },
            { pattern: /Shoulder/i, slot: 'Shoulder', type: 'Armor' },
            { pattern: /Back/i, slot: 'Back', type: 'Armor' },
            { pattern: /Chest/i, slot: 'Chest', type: 'Armor' },
            { pattern: /Wrist/i, slot: 'Wrist', type: 'Armor' },
            { pattern: /Hands/i, slot: 'Hands', type: 'Armor' },
            { pattern: /Waist/i, slot: 'Waist', type: 'Armor' },
            { pattern: /Legs/i, slot: 'Legs', type: 'Armor' },
            { pattern: /Feet/i, slot: 'Feet', type: 'Armor' },
            { pattern: /Finger/i, slot: 'Finger', type: 'Armor' },
            { pattern: /Trinket/i, slot: 'Trinket', type: 'Armor' },
            { pattern: /Main Hand/i, slot: 'Main Hand', type: 'Weapon' },
            { pattern: /Off Hand/i, slot: 'Off Hand', type: 'Weapon' },
            { pattern: /Two-Hand/i, slot: 'Two Hand', type: 'Weapon' },
            { pattern: /Ranged/i, slot: 'Ranged', type: 'Weapon' }
        ];
        
        // 匹配装备位置
        for (const { pattern, slot, type } of slotPatterns) {
            if (pattern.test(tooltipText)) {
                item.slot = slot;
                item.type = type;
                break;
            }
        }
        
        // 解析装备子类型
        if (item.type === 'Armor') {
            if (tooltipText.includes('Cloth')) item.subtype = 'Cloth';
            else if (tooltipText.includes('Leather')) item.subtype = 'Leather';
            else if (tooltipText.includes('Mail')) item.subtype = 'Mail';
            else if (tooltipText.includes('Plate')) item.subtype = 'Plate';
            else if (tooltipText.includes('Shield')) item.subtype = 'Shield';
            else item.subtype = 'Miscellaneous';
        } else if (item.type === 'Weapon') {
            // 武器类型解析逻辑
            if (tooltipText.includes('Dagger')) item.subtype = 'Dagger';
            else if (tooltipText.includes('Sword')) item.subtype = 'Sword';
            else if (tooltipText.includes('Axe')) item.subtype = 'Axe';
            else if (tooltipText.includes('Mace')) item.subtype = 'Mace';
            else if (tooltipText.includes('Staff')) item.subtype = 'Staff';
            else if (tooltipText.includes('Bow')) item.subtype = 'Bow';
            else if (tooltipText.includes('Gun')) item.subtype = 'Gun';
            else if (tooltipText.includes('Wand')) item.subtype = 'Wand';
            else item.subtype = 'Miscellaneous';
        }
        
        // 如果没有检测到类型，尝试其他方法
        if (!item.type) {
            // 根据特殊关键词判断
            if (tooltipText.includes('Armor') || item.slot) {
                item.type = 'Armor';
                item.subtype = 'Miscellaneous';
            } else {
                item.type = 'Miscellaneous';
                item.subtype = 'Miscellaneous';
            }
        }
    }

    /**
     * 分析所有缓存的任务
     */
    async analyzeQuests() {
        const questIds = this.getCachedFiles('quest');
        console.log(`📋 开始分析 ${questIds.length} 个缓存的任务...`);
        
        let successCount = 0;
        let failCount = 0;
        
        for (const questId of questIds) {
            try {
                const questData = this.parseQuestHTML(questId);
                
                // 只保存有奖励的任务
                if (questData.rewardItems.length > 0 || questData.choiceItems.length > 0) {
                    this.results.questRewards[questId] = questData;
                    successCount++;
                }
            } catch (error) {
                console.error(`❌ 分析任务 ${questId} 失败:`, error.message);
                failCount++;
            }
        }
        
        console.log(`📊 任务分析完成: 成功 ${successCount}, 失败 ${failCount}`);
    }

    /**
     * 分析所有缓存的物品
     */
    async analyzeItems() {
        const itemIds = this.getCachedFiles('item');
        console.log(`🎒 开始分析 ${itemIds.length} 个缓存的物品...`);
        
        let successCount = 0;
        let failCount = 0;
        
        for (const itemId of itemIds) {
            try {
                const itemData = this.parseItemHTML(itemId);
                this.results.itemDetails[itemId] = itemData;
                successCount++;
            } catch (error) {
                console.error(`❌ 分析物品 ${itemId} 失败:`, error.message);
                failCount++;
                
                // 严格模式：遇到错误立即停止
                throw error;
            }
        }
        
        console.log(`📊 物品分析完成: 成功 ${successCount}, 失败 ${failCount}`);
    }

    /**
     * 保存分析结果
     */
    saveResults() {
        const outputFile = path.join(this.outputDir, 'quest-rewards-from-cache.json');
        
        const output = {
            generatedAt: new Date().toISOString(),
            questCount: Object.keys(this.results.questRewards).length,
            itemCount: Object.keys(this.results.itemDetails).length,
            questRewards: this.results.questRewards,
            itemDetails: this.results.itemDetails
        };
        
        fs.writeFileSync(outputFile, JSON.stringify(output, null, 2));
        console.log(`💾 分析结果已保存: ${outputFile}`);
        
        // 生成统计信息
        console.log('\n📊 分析统计:');
        console.log(`✅ 有奖励的任务: ${output.questCount} 个`);
        console.log(`✅ 物品详情: ${output.itemCount} 个`);
        
        // 品质分布统计
        const qualityStats = {};
        Object.values(this.results.itemDetails).forEach(item => {
            qualityStats[item.quality] = (qualityStats[item.quality] || 0) + 1;
        });
        
        console.log('\n🎨 物品品质分布:');
        Object.entries(qualityStats).forEach(([quality, count]) => {
            console.log(`   ${quality}: ${count} 个`);
        });
    }

    /**
     * 分析特定物品 (调试用)
     */
    analyzeSpecificItem(itemId) {
        console.log(`🔍 分析物品 ${itemId}...`);
        try {
            const itemData = this.parseItemHTML(itemId);
            console.log('✅ 解析结果:', JSON.stringify(itemData, null, 2));
        } catch (error) {
            console.error('❌ 解析失败:', error.message);
            
            // 显示HTML内容用于调试
            const cacheFile = path.join(this.itemCacheDir, `${itemId}.html`);
            if (fs.existsSync(cacheFile)) {
                const html = fs.readFileSync(cacheFile, 'utf8');
                const $ = cheerio.load(html);
                const tooltipHtml = $(`#tooltip${itemId}-generic`).html() || '未找到tooltip';
                console.log('🔍 Tooltip HTML:', tooltipHtml.substring(0, 1000));
            }
        }
    }
}

/**
 * 主函数
 */
async function main() {
    const analyzer = new DataAnalyzer();
    
    try {
        // 检查命令行参数
        const args = process.argv.slice(2);
        if (args.length > 0 && args[0] === 'item') {
            // 调试模式：分析特定物品
            const itemId = parseInt(args[1]);
            if (itemId) {
                analyzer.analyzeSpecificItem(itemId);
                return;
            }
        }
        
        // 正常模式：分析所有缓存数据
        console.log('🚀 开始从缓存分析数据...');
        
        await analyzer.analyzeQuests();
        await analyzer.analyzeItems();
        analyzer.saveResults();
        
        console.log('🎉 数据分析完成！');
        
    } catch (error) {
        console.error('❌ 分析过程发生错误:', error.message);
        process.exit(1);
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    main().catch(error => {
        console.error('❌ 程序异常退出:', error);
        process.exit(1);
    });
}

module.exports = DataAnalyzer;