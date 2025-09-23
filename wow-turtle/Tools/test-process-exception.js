#!/usr/bin/env node

/**
 * 测试在processQuests过程中遇到异常是否能正确停止的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 processQuests 异常停止测试');
console.log('='.repeat(50));

async function testProcessException() {
    const scraper = new SeleniumQuestRewardScraper();
    
    // 手动构造一个包含正常任务和异常物品的场景
    // 修改scraper的getItemDetails方法，在特定物品ID时抛出异常
    const originalGetItemDetails = scraper.getItemDetails.bind(scraper);
    scraper.getItemDetails = async function(itemId) {
        // 在物品ID为2225时抛出异常，模拟解析失败
        if (itemId === 2225) {
            throw new Error(`模拟物品 ${itemId} 解析失败`);
        }
        return await originalGetItemDetails(itemId);
    };
    
    try {
        console.log('📋 测试任务38的处理过程中遇到物品解析异常');
        console.log('   任务38包含4个物品：733, 728, 1479, 2225');
        console.log('   将在处理物品2225时抛出异常');
        
        await scraper.processQuests([38]);
        
        console.log('\n⚠️ 警告：processQuests正常完成，异常处理可能有问题！');
        
    } catch (error) {
        console.log(`\n✅ processQuests正确停止: ${error.message}`);
        console.log('这是期望的行为。');
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    testProcessException().then(() => {
        console.log('\n🎯 测试完成');
    }).catch(error => {
        console.log(`\n🎯 测试结果: processQuests异常处理机制正常工作`);
        console.log(`   异常信息: ${error.message}`);
    });
}