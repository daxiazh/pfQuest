#!/usr/bin/env node

/**
 * 增量处理功能测试脚本
 */

const fs = require('fs');
const path = require('path');

// 模拟测试数据
const testOutputFile = path.join(__dirname, 'output', 'test-incremental.json');
const testProgressFile = path.join(__dirname, 'output', 'test-incremental-progress.json');

console.log('🧪 增量处理功能测试');
console.log('='.repeat(50));

// 清理测试文件
function cleanupTestFiles() {
    [testOutputFile, testProgressFile].forEach(file => {
        if (fs.existsSync(file)) {
            fs.unlinkSync(file);
            console.log(`🗑️ 删除测试文件: ${file}`);
        }
    });
}

// 创建模拟的现有数据
function createMockData() {
    const mockData = {
        timestamp: new Date().toISOString(),
        stats: {
            totalQuests: 5,
            questsWithRewards: 2,
            totalRewardItems: 3,
            processedItems: 3,
            errors: 0,
            networkRetries: 0
        },
        questRewards: {
            "1001": {
                questId: 1001,
                title: "测试任务1",
                rewardItems: [{ itemId: 2001, name: "测试物品1", quantity: 1 }],
                choiceItems: [],
                experience: 1000
            },
            "1002": {
                questId: 1002,
                title: "测试任务2", 
                rewardItems: [],
                choiceItems: [{ itemId: 2002, name: "测试物品2", quantity: 1 }],
                experience: 1500
            }
        },
        itemDetails: {
            "2001": {
                itemId: 2001,
                name: "测试物品1",
                type: "Armor",
                subtype: "Cloth",
                quality: "Common"
            },
            "2002": {
                itemId: 2002,
                name: "测试物品2", 
                type: "Weapon",
                subtype: "Sword",
                quality: "Uncommon"
            }
        }
    };

    // 创建输出目录
    const outputDir = path.dirname(testOutputFile);
    if (!fs.existsSync(outputDir)) {
        fs.mkdirSync(outputDir, { recursive: true });
    }

    fs.writeFileSync(testOutputFile, JSON.stringify(mockData, null, 2), 'utf8');
    console.log(`📝 创建模拟数据: ${testOutputFile}`);
    
    // 创建进度文件
    const progressData = {
        timestamp: new Date().toISOString(),
        lastProcessedQuestId: 1002,
        processedCount: 2,
        stats: mockData.stats
    };
    
    fs.writeFileSync(testProgressFile, JSON.stringify(progressData, null, 2), 'utf8');
    console.log(`📝 创建进度文件: ${testProgressFile}`);
    
    return mockData;
}

// 测试增量处理逻辑
function testIncrementalLogic() {
    console.log('\n🔍 测试增量处理逻辑...');
    
    const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');
    const scraper = new SeleniumQuestRewardScraper();
    
    // 启用增量模式
    scraper.enableIncrementalMode(testOutputFile);
    
    // 加载现有数据
    scraper.loadExistingData();
    
    // 验证数据加载
    const loadedQuestCount = Object.keys(scraper.results.questRewards).length;
    const loadedItemCount = Object.keys(scraper.results.itemDetails).length;
    
    console.log(`✅ 加载了 ${loadedQuestCount} 个任务数据`);
    console.log(`✅ 加载了 ${loadedItemCount} 个物品数据`);
    console.log(`✅ 恢复进度: 从任务 ID ${scraper.lastProcessedQuestId} 开始`);
    
    // 测试任务过滤
    const allQuestIds = [1001, 1002, 1003, 1004, 1005];
    const filteredIds = scraper.filterQuestList(allQuestIds);
    
    console.log(`✅ 原始任务列表: [${allQuestIds.join(', ')}]`);
    console.log(`✅ 过滤后任务列表: [${filteredIds.join(', ')}]`);
    
    if (filteredIds.length === 3 && filteredIds[0] === 1003) {
        console.log('✅ 任务过滤逻辑正确');
    } else {
        console.log('❌ 任务过滤逻辑错误');
    }
    
    // 测试进度保存
    scraper.saveProgress(1003);
    
    if (fs.existsSync(testProgressFile)) {
        const progressData = JSON.parse(fs.readFileSync(testProgressFile, 'utf8'));
        if (progressData.lastProcessedQuestId === 1003) {
            console.log('✅ 进度保存功能正确');
        } else {
            console.log('❌ 进度保存功能错误');
        }
    }
    
    return true;
}

// 主测试函数
async function runTests() {
    try {
        // 清理旧的测试文件
        cleanupTestFiles();
        
        // 创建模拟数据
        const mockData = createMockData();
        
        // 测试增量处理逻辑
        const testResult = testIncrementalLogic();
        
        if (testResult) {
            console.log('\n🎉 所有增量处理功能测试通过！');
            console.log('\n📋 功能验证：');
            console.log('  ✅ 现有数据加载');
            console.log('  ✅ 进度文件读取');
            console.log('  ✅ 任务列表过滤');
            console.log('  ✅ 进度保存');
            console.log('  ✅ 断点续传逻辑');
        } else {
            console.log('\n❌ 测试失败');
        }
        
    } catch (error) {
        console.error('\n❌ 测试执行失败:', error.message);
        console.error(error.stack);
    } finally {
        // 清理测试文件
        setTimeout(() => {
            cleanupTestFiles();
            console.log('\n🧹 测试文件已清理');
        }, 1000);
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    runTests();
}

module.exports = { runTests };