#!/usr/bin/env node

/**
 * 测试物品 6916 (Tome of Divinity) 的解析
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

async function testItem6916() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        console.log('\n📜 测试物品 6916 (Tome of Divinity)');
        
        const itemDetails = await scraper.getItemDetails(6916);
        if (itemDetails) {
            console.log(`✅ 解析成功: `);
            console.log(`   - 名称: ${itemDetails.name}`);
            console.log(`   - 类型: ${itemDetails.type}/${itemDetails.subtype}`);
            console.log(`   - 装备位置: ${itemDetails.slot || '无'}`);
            console.log(`   - 品质: ${itemDetails.quality}`);
            console.log(`   - 等级: ${itemDetails.level}`);
        } else {
            console.log(`❌ 解析失败`);
        }

    } finally {
        await scraper.cleanup();
    }
}

testItem6916().then(() => {
    console.log('\n🎯 测试完成');
}).catch(error => {
    console.log(`\n❌ 测试失败: ${error.message}`);
    process.exit(1);
});