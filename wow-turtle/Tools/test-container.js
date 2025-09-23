#!/usr/bin/env node

/**
 * 测试容器类型物品解析的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 容器类型物品解析测试');
console.log('='.repeat(50));

async function testContainerItems() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        // 测试容器类型物品列表
        const testItems = [
            { id: 3604, name: "Bandolier of the Night Watch", type: "12格背包" },
            { id: 4500, name: "Traveler's Backpack", type: "16格背包" },
            { id: 5573, name: "Green Leather Bag", type: "8格背包" },
            { id: 5439, name: "Small Quiver", type: "箭袋" }
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
                    console.log(`   - 容器大小: ${itemDetails.containerSlots || 0}格`);
                    
                    // 验证容器类型识别是否正确
                    if (itemDetails.type === 'Container') {
                        console.log(`   ✅ 正确识别为容器类型`);
                    } else {
                        console.log(`   ❌ 类型识别错误，期望: Container，实际: ${itemDetails.type}`);
                    }
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
    testContainerItems().then(() => {
        console.log('\n🎯 容器类型物品测试完成');
    }).catch(error => {
        console.log(`\n❌ 测试失败: ${error.message}`);
        process.exit(1);
    });
}