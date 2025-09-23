#!/usr/bin/env node

/**
 * 测试特殊装备位置物品解析的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 特殊装备位置物品解析测试');
console.log('='.repeat(50));

async function testSpecialEquipment() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        // 测试特殊装备位置物品列表
        const testItems = [
            { id: 744, name: "Thunderbrew's Boot Flask", type: "饰品", expectedType: "Miscellaneous" },
            { id: 2575, name: "Red Linen Shirt", type: "衬衫", expectedType: "Armor" },
            { id: 2562, name: "Bouquet of Scarlet Begonias", type: "副手", expectedType: "Miscellaneous" },
            { id: 3604, name: "Bandolier of the Night Watch", type: "背包", expectedType: "Container" },
            { id: 2043, name: "Ring of Forlorn Spirits", type: "戒指", expectedType: "Armor" }
        ];
        
        console.log('\n📋 测试覆盖的特殊装备位置：');
        console.log('- Trinket (饰品) → Miscellaneous');
        console.log('- Shirt (衬衫) → Armor'); 
        console.log('- Held In Off-Hand (副手) → Miscellaneous');
        console.log('- Container (容器) → Container');
        console.log('- Finger (戒指) → Armor');
        
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
                    
                    // 验证类型是否正确
                    if (itemDetails.type === testItem.expectedType) {
                        console.log(`   ✅ 类型识别正确: ${itemDetails.type}`);
                    } else {
                        console.log(`   ❌ 类型识别错误，期望: ${testItem.expectedType}，实际: ${itemDetails.type}`);
                    }
                } else {
                    console.log(`⚠️ 解析结果为null`);
                }
            } catch (error) {
                console.log(`❌ 解析失败: ${error.message}`);
            }
        }
        
        console.log('\n🔍 检查特殊装备位置映射完整性：');
        const specialSlots = ['Trinket', 'Held In Off-Hand', 'Off Hand', 'Ranged', 'Shirt', 'Tabard', 'Finger', 'Neck', 'Back'];
        specialSlots.forEach(slot => {
            const mapped = scraper.specialSlotTypeMap.get(slot);
            console.log(`   ${slot} → ${mapped || '未映射'}`);
        });

    } finally {
        await scraper.cleanup();
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    testSpecialEquipment().then(() => {
        console.log('\n🎯 特殊装备位置测试完成');
    }).catch(error => {
        console.log(`\n❌ 测试失败: ${error.message}`);
        process.exit(1);
    });
}