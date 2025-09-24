#!/usr/bin/env node

/**
 * HTML工具链集成测试
 * 测试html-downloader.js和data-analyzer.js的完整流程
 */

const fs = require('fs');
const path = require('path');
const HTMLDownloader = require('./html-downloader');
const DataAnalyzer = require('./data-analyzer');

class HTMLToolsTest {
    constructor() {
        this.testDir = path.join(__dirname, 'cache/test');
        this.questTestDir = path.join(this.testDir, 'quests');
        this.itemTestDir = path.join(this.testDir, 'items');
        
        // 测试数据 - 从valid-quest-ids.json中选择前几个
        this.testQuests = [2, 3, 4]; // 使用valid-quest-ids.json中的真实任务ID
        this.testItems = [
            21348, // Epic: Tiara of the Oracle
            58038, // Uncommon: Steeltooth
            6916   // Common: 测试常见物品
        ];
        
        this.results = {
            downloadTests: {},
            parseTests: {},
            errors: []
        };
    }

    /**
     * 初始化测试环境
     */
    async setup() {
        console.log('🔧 初始化测试环境...');
        
        // 创建测试缓存目录
        [this.testDir, this.questTestDir, this.itemTestDir].forEach(dir => {
            if (!fs.existsSync(dir)) {
                fs.mkdirSync(dir, { recursive: true });
            }
        });
        
        console.log('✅ 测试环境初始化完成');
    }

    /**
     * 清理测试环境
     */
    cleanup() {
        console.log('🧹 清理测试环境...');
        if (fs.existsSync(this.testDir)) {
            fs.rmSync(this.testDir, { recursive: true, force: true });
        }
        console.log('✅ 测试环境清理完成');
    }

    /**
     * 测试HTML下载器
     */
    async testDownloader() {
        console.log('\n📥 测试HTML下载器...');
        
        const downloader = new HTMLDownloader();
        // 临时修改缓存目录到测试目录
        downloader.questCacheDir = this.questTestDir;
        downloader.itemCacheDir = this.itemTestDir;
        
        try {
            await downloader.initDriver();
            
            // 测试任务下载
            console.log('测试任务下载...');
            for (const questId of this.testQuests) {
                const success = await downloader.downloadQuestHTML(questId);
                this.results.downloadTests[`quest_${questId}`] = success;
                
                if (success) {
                    const cacheFile = path.join(this.questTestDir, `${questId}.html`);
                    const exists = fs.existsSync(cacheFile);
                    console.log(`  任务 ${questId}: ${success ? '✅' : '❌'} 下载, ${exists ? '✅' : '❌'} 缓存`);
                } else {
                    console.log(`  任务 ${questId}: ❌ 下载失败`);
                }
            }
            
            // 测试物品下载
            console.log('测试物品下载...');
            for (const itemId of this.testItems) {
                const success = await downloader.downloadItemHTML(itemId);
                this.results.downloadTests[`item_${itemId}`] = success;
                
                if (success) {
                    const cacheFile = path.join(this.itemTestDir, `${itemId}.html`);
                    const exists = fs.existsSync(cacheFile);
                    const size = exists ? fs.statSync(cacheFile).size : 0;
                    console.log(`  物品 ${itemId}: ✅ 下载, ✅ 缓存 (${size} bytes)`);
                } else {
                    console.log(`  物品 ${itemId}: ❌ 下载失败`);
                }
            }
            
            await downloader.cleanup();
            console.log('✅ 下载器测试完成');
            
        } catch (error) {
            this.results.errors.push(`下载器测试失败: ${error.message}`);
            console.error('❌ 下载器测试失败:', error.message);
            if (downloader.driver) {
                await downloader.cleanup();
            }
        }
    }

    /**
     * 测试数据分析器
     */
    async testAnalyzer() {
        console.log('\n🔍 测试数据分析器...');
        
        const analyzer = new DataAnalyzer();
        // 临时修改缓存目录到测试目录
        analyzer.questCacheDir = this.questTestDir;
        analyzer.itemCacheDir = this.itemTestDir;
        
        try {
            // 测试物品解析
            console.log('测试物品解析...');
            for (const itemId of this.testItems) {
                const cacheFile = path.join(this.itemTestDir, `${itemId}.html`);
                if (!fs.existsSync(cacheFile)) {
                    console.log(`  物品 ${itemId}: ⚠️ 缓存文件不存在，跳过测试`);
                    continue;
                }
                
                try {
                    const itemData = analyzer.parseItemHTML(itemId);
                    this.results.parseTests[`item_${itemId}`] = {
                        success: true,
                        data: {
                            name: itemData.name,
                            quality: itemData.quality,
                            type: itemData.type,
                            subtype: itemData.subtype
                        }
                    };
                    
                    console.log(`  物品 ${itemId}: ✅ ${itemData.quality} ${itemData.name} (${itemData.type}/${itemData.subtype})`);
                    
                    // 验证必要字段
                    if (!itemData.name || !itemData.quality) {
                        throw new Error(`缺少必要字段: name=${itemData.name}, quality=${itemData.quality}`);
                    }
                    
                } catch (error) {
                    this.results.parseTests[`item_${itemId}`] = {
                        success: false,
                        error: error.message
                    };
                    console.log(`  物品 ${itemId}: ❌ 解析失败 - ${error.message}`);
                }
            }
            
            // 测试任务解析
            console.log('测试任务解析...');
            for (const questId of this.testQuests) {
                const cacheFile = path.join(this.questTestDir, `${questId}.html`);
                if (!fs.existsSync(cacheFile)) {
                    console.log(`  任务 ${questId}: ⚠️ 缓存文件不存在，跳过测试`);
                    continue;
                }
                
                try {
                    const questData = analyzer.parseQuestHTML(questId);
                    const rewardCount = questData.rewardItems.length + questData.choiceItems.length;
                    
                    this.results.parseTests[`quest_${questId}`] = {
                        success: true,
                        rewardCount: rewardCount
                    };
                    
                    console.log(`  任务 ${questId}: ✅ 解析成功 (${rewardCount} 个奖励)`);
                    
                } catch (error) {
                    this.results.parseTests[`quest_${questId}`] = {
                        success: false,
                        error: error.message
                    };
                    console.log(`  任务 ${questId}: ❌ 解析失败 - ${error.message}`);
                }
            }
            
            console.log('✅ 分析器测试完成');
            
        } catch (error) {
            this.results.errors.push(`分析器测试失败: ${error.message}`);
            console.error('❌ 分析器测试失败:', error.message);
        }
    }

    /**
     * 测试品质识别准确性
     */
    testQualityRecognition() {
        console.log('\n🎨 测试品质识别准确性...');
        
        const expectedQualities = {
            21348: 'Epic',    // Tiara of the Oracle
            58038: 'Uncommon', // Steeltooth
            6916: 'Common'    // 普通物品
        };
        
        let correctCount = 0;
        let totalCount = 0;
        
        for (const [itemId, expectedQuality] of Object.entries(expectedQualities)) {
            const testKey = `item_${itemId}`;
            if (this.results.parseTests[testKey] && this.results.parseTests[testKey].success) {
                const actualQuality = this.results.parseTests[testKey].data.quality;
                const isCorrect = actualQuality === expectedQuality;
                
                console.log(`  物品 ${itemId}: ${isCorrect ? '✅' : '❌'} 期望 ${expectedQuality}, 实际 ${actualQuality}`);
                
                if (isCorrect) correctCount++;
                totalCount++;
            } else {
                console.log(`  物品 ${itemId}: ⚠️ 无解析数据`);
            }
        }
        
        const accuracy = totalCount > 0 ? (correctCount / totalCount * 100).toFixed(1) : 0;
        console.log(`🎯 品质识别准确率: ${correctCount}/${totalCount} (${accuracy}%)`);
        
        return accuracy >= 100; // 要求100%准确率
    }

    /**
     * 生成测试报告
     */
    generateReport() {
        console.log('\n📊 测试报告');
        console.log('=' * 50);
        
        // 下载测试统计
        const downloadResults = Object.values(this.results.downloadTests);
        const downloadSuccess = downloadResults.filter(r => r === true).length;
        const downloadTotal = downloadResults.length;
        
        console.log(`📥 下载测试: ${downloadSuccess}/${downloadTotal} 成功`);
        
        // 解析测试统计
        const parseResults = Object.values(this.results.parseTests);
        const parseSuccess = parseResults.filter(r => r.success === true).length;
        const parseTotal = parseResults.length;
        
        console.log(`🔍 解析测试: ${parseSuccess}/${parseTotal} 成功`);
        
        // 品质识别测试
        const qualityAccurate = this.testQualityRecognition();
        console.log(`🎨 品质识别: ${qualityAccurate ? '✅ 通过' : '❌ 失败'}`);
        
        // 错误统计
        if (this.results.errors.length > 0) {
            console.log(`\n❌ 错误 (${this.results.errors.length}):`);
            this.results.errors.forEach(error => {
                console.log(`  - ${error}`);
            });
        }
        
        // 总体结果
        const allTestsPassed = (
            downloadSuccess === downloadTotal &&
            parseSuccess === parseTotal &&
            qualityAccurate &&
            this.results.errors.length === 0
        );
        
        console.log(`\n🎯 总体结果: ${allTestsPassed ? '✅ 全部通过' : '❌ 存在失败'}`);
        
        return allTestsPassed;
    }

    /**
     * 运行完整测试套件
     */
    async run() {
        console.log('🧪 开始HTML工具链集成测试');
        console.log(`测试物品: ${this.testItems.join(', ')}`);
        console.log(`测试任务: ${this.testQuests.join(', ')}\n`);
        
        try {
            await this.setup();
            await this.testDownloader();
            await this.testAnalyzer();
            
            const success = this.generateReport();
            
            if (success) {
                console.log('\n🎉 所有测试通过！工具链运行正常');
                return 0;
            } else {
                console.log('\n💥 测试失败，请检查错误信息');
                return 1;
            }
            
        } catch (error) {
            console.error('\n💥 测试过程异常:', error.message);
            return 1;
        } finally {
            this.cleanup();
        }
    }
}

/**
 * 主函数
 */
async function main() {
    const test = new HTMLToolsTest();
    const exitCode = await test.run();
    process.exit(exitCode);
}

// 如果直接运行此脚本
if (require.main === module) {
    main().catch(error => {
        console.error('💥 测试程序异常退出:', error);
        process.exit(1);
    });
}

module.exports = HTMLToolsTest;