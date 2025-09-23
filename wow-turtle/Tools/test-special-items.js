#!/usr/bin/env node

/**
 * 测试特殊物品类型解析的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 特殊物品类型解析测试');
console.log('='.repeat(50));

async function testSpecialItems() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        // 测试特殊物品类型列表
        const testItems = [
            { id: 5177, name: "Water Totem", type: "图腾", expectedType: "Miscellaneous", expectedSubtype: "Totem" },
            { id: 744, name: "Thunderbrew's Boot Flask", type: "饰品", expectedType: "Miscellaneous", expectedSubtype: "Trinket" },
            { id: 2575, name: "Red Linen Shirt", type: "衬衫", expectedType: "Armor", expectedSubtype: "Shirt" },
            { id: 3604, name: "Bandolier", type: "背包", expectedType: "Container", expectedSubtype: "Bag" },
            { id: 728, name: "Recipe: Westfall Stew", type: "配方", expectedType: "Recipe", expectedSubtype: "" }
        ];
        
        console.log('\n📋 测试覆盖的物品类型：');
        console.log('- 图腾 (Totem) → Miscellaneous/Totem');
        console.log('- 饰品 (Trinket) → Miscellaneous/Trinket');
        console.log('- 衬衫 (Shirt) → Armor/Shirt');
        console.log('- 容器 (Container) → Container/Bag');
        console.log('- 配方 (Recipe) → Recipe');
        
        let successCount = 0;
        let totalCount = testItems.length;
        
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
                    
                    // 验证类型和子类型是否正确
                    const typeCorrect = itemDetails.type === testItem.expectedType;
                    const subtypeCorrect = itemDetails.subtype === testItem.expectedSubtype;
                    
                    if (typeCorrect && subtypeCorrect) {
                        console.log(`   ✅ 类型识别完全正确: ${itemDetails.type}/${itemDetails.subtype}`);
                        successCount++;
                    } else {
                        console.log(`   ❌ 类型识别错误:`);
                        if (!typeCorrect) {
                            console.log(`      类型 - 期望: ${testItem.expectedType}, 实际: ${itemDetails.type}`);
                        }
                        if (!subtypeCorrect) {
                            console.log(`      子类型 - 期望: ${testItem.expectedSubtype}, 实际: ${itemDetails.subtype}`);
                        }
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
    testSpecialItems().then(() => {
        console.log('\n🎯 特殊物品类型测试完成');
    }).catch(error => {
        console.log(`\n❌ 测试失败: ${error.message}`);
        process.exit(1);
    });
}