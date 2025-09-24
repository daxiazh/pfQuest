#!/usr/bin/env node

/**
 * 测试物品 21157 (Festive Green Dress) 的解析
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

async function testItem21157() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        console.log('\n👗 测试物品 21157 (Festive Green Dress)');
        console.log('预期：装备位置为 Chest，类型为空，应该推断为 Armor');
        
        const itemDetails = await scraper.getItemDetails(21157);
        if (itemDetails) {
            console.log(`✅ 解析成功: `);
            console.log(`   - 名称: ${itemDetails.name}`);
            console.log(`   - 类型: ${itemDetails.type}/${itemDetails.subtype}`);
            console.log(`   - 装备位置: ${itemDetails.slot || '无'}`);
            console.log(`   - 品质: ${itemDetails.quality}`);
            console.log(`   - 等级: ${itemDetails.level}`);
            console.log(`   - 护甲: ${itemDetails.armor || 0}`);
            
            // 验证解析结果
            if (itemDetails.slot === 'Chest' && itemDetails.type === 'Armor') {
                console.log(`\n✅ 验证成功: 正确识别为胸部护甲`);
            } else {
                console.log(`\n❌ 验证失败: 期望 slot='Chest', type='Armor'`);
                console.log(`   实际: slot='${itemDetails.slot}', type='${itemDetails.type}'`);
            }
        } else {
            console.log(`❌ 解析失败`);
        }

    } finally {
        await scraper.cleanup();
    }
}

testItem21157().then(() => {
    console.log('\n🎯 测试完成');
}).catch(error => {
    console.log(`\n❌ 测试失败: ${error.message}`);
    process.exit(1);
});