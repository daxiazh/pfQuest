#!/usr/bin/env node

/**
 * 测试饰品物品解析的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 饰品和副手装备解析测试');
console.log('='.repeat(50));

async function testSpecialItems() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        // 测试物品列表
        const testItems = [
            { id: 744, name: "Thunderbrew's Boot Flask", type: "饰品" },
            { id: 5079, name: "Cold Basilisk Eye", type: "副手装备测试" }
        ];
        
        for (const testItem of testItems) {
            console.log(`\n📦 测试${testItem.type}: ${testItem.name} (ID: ${testItem.id})`);
            
            try {
                const itemDetails = await scraper.getItemDetails(testItem.id);
                if (itemDetails) {
                    console.log(`✅ 成功解析: `);
                    console.log(`   - 名称: ${itemDetails.name}`);
                    console.log(`   - 类型: ${itemDetails.type}/${itemDetails.subtype}`);
                    console.log(`   - 装备位置: ${itemDetails.slot || '无'}`);
                    console.log(`   - 品质: ${itemDetails.quality}`);
                } else {
                    console.log(`⚠️ 解析结果为null`);
                }
            } catch (error) {
                console.log(`❌ 解析失败: ${error.message}`);
            }
        }

    } finally {
        await scraper.cleanup();
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    testSpecialItems().then(() => {
        console.log('\n🎯 饰品和副手装备测试完成');
    }).catch(error => {
        console.log(`\n❌ 测试失败: ${error.message}`);
        process.exit(1);
    });
}