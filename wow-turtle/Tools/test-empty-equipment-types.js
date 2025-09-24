#!/usr/bin/env node

/**
 * 测试各种装备位置但类型为空的物品解析
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

async function testEmptyEquipmentTypes() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        // 测试不同装备位置的物品
        const testItems = [
            { id: 21157, name: "Festive Green Dress", expectedSlot: "Chest", expectedType: "Armor" },
            { id: 3604, name: "Bandolier", expectedSlot: "", expectedType: "Container" }, // 已知的容器测试
            { id: 2575, name: "Red Linen Shirt", expectedSlot: "Shirt", expectedType: "Armor" } // 已知的衬衫测试
        ];
        
        console.log('\n📋 测试覆盖的装备位置映射：');
        const allSlots = ['Head', 'Chest', 'Legs', 'Feet', 'Hands', 'Waist', 'Shoulder', 'Wrist', 
                         'Main Hand', 'One-Hand', 'Two-Hand', 'Trinket', 'Finger', 'Neck', 'Back'];
        allSlots.forEach(slot => {
            const mapped = scraper.specialSlotTypeMap.get(slot);
            console.log(`   ${slot} → ${mapped || '未映射'}`);
        });
        
        let successCount = 0;
        let totalCount = testItems.length;
        
        for (const testItem of testItems) {
            console.log(`\n🔍 测试物品: ${testItem.name} (ID: ${testItem.id})`);
            
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
                        successCount++;
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
        
        console.log(`\n📊 测试结果统计：`);
        console.log(`✅ 成功: ${successCount}/${totalCount}`);
        console.log(`❌ 失败: ${totalCount - successCount}/${totalCount}`);
        console.log(`📈 成功率: ${((successCount / totalCount) * 100).toFixed(1)}%`);

    } finally {
        await scraper.cleanup();
    }
}

testEmptyEquipmentTypes().then(() => {
    console.log('\n🎯 空类型装备测试完成');
}).catch(error => {
    console.log(`\n❌ 测试失败: ${error.message}`);
    process.exit(1);
});