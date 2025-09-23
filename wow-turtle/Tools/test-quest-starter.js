#!/usr/bin/env node

/**
 * 测试任务起始物品解析的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 任务起始物品解析测试');
console.log('='.repeat(50));

async function testQuestStarterItems() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        // 测试任务起始物品列表
        const testItems = [
            { id: 6916, name: "Tome of Divinity", type: "任务起始物品" },
            { id: 2839, name: "A Letter to Delgren", type: "任务起始物品" },
            { id: 3710, name: "An Unsent Letter", type: "任务起始物品" },
            { id: 4056, name: "A Crumpled Note", type: "任务起始物品" }
        ];
        
        console.log('\n📋 测试任务起始物品检测：');
        console.log('- "This Item Begins a Quest" 文本检测');
        console.log('- "Right Click to begin a quest" 文本检测');
        console.log('- "Starts a quest" 文本检测');
        console.log('- "Begin Quest" 文本检测');
        
        let successCount = 0;
        let totalCount = testItems.length;
        
        for (const testItem of testItems) {
            console.log(`\n📜 测试${testItem.type}: ${testItem.name} (ID: ${testItem.id})`);
            
            try {
                const itemDetails = await scraper.getItemDetails(testItem.id);
                if (itemDetails) {
                    console.log(`✅ 成功解析: `);
                    console.log(`   - 名称: ${itemDetails.name}`);
                    console.log(`   - 类型: ${itemDetails.type}/${itemDetails.subtype}`);
                    console.log(`   - 装备位置: ${itemDetails.slot || '无'}`);
                    console.log(`   - 品质: ${itemDetails.quality}`);
                    
                    // 验证是否正确识别为任务物品
                    if (itemDetails.type === 'Quest' && 
                        (itemDetails.subtype === 'Quest Starter' || itemDetails.subtype === 'Quest Item')) {
                        console.log(`   ✅ 正确识别为任务物品: ${itemDetails.subtype}`);
                        successCount++;
                    } else {
                        console.log(`   ❌ 类型识别错误，期望: Quest/Quest Starter，实际: ${itemDetails.type}/${itemDetails.subtype}`);
                    }
                } else {
                    console.log(`⚠️ 解析结果为null`);
                }
            } catch (error) {
                console.log(`❌ 解析失败: ${error.message}`);
            }
        }
        
        console.log(`\n📊 测试结果统计：`);
        console.log(`✅ 成功: ${successCount}/${totalCount}`);
        console.log(`❌ 失败: ${totalCount - successCount}/${totalCount}`);
        console.log(`📈 成功率: ${((successCount / totalCount) * 100).toFixed(1)}%`);

    } finally {
        await scraper.cleanup();
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    testQuestStarterItems().then(() => {
        console.log('\n🎯 任务起始物品测试完成');
    }).catch(error => {
        console.log(`\n❌ 测试失败: ${error.message}`);
        process.exit(1);
    });
}