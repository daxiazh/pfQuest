#!/usr/bin/env node

/**
 * 测试物品解析异常是否能正确停止程序的脚本
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 物品解析异常停止测试');
console.log('='.repeat(50));

async function testItemException() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        console.log('📋 测试物品解析异常是否能停止程序');
        console.log('准备处理一个带有多个奖励物品的任务，其中包含不存在的物品ID');
        
        try {
            // 首先获取一个有奖励的任务
            const questRewards = await scraper.getQuestRewards(38);
            console.log(`✅ 获取任务奖励成功: ${questRewards.title}`);
            console.log(`   发现 ${questRewards.rewardItems.length} 个固定奖励物品`);
            
            // 手动添加一个不存在的物品ID到列表中
            questRewards.rewardItems.push({
                itemId: 999999,
                name: "Non-existent Item",
                quantity: 1
            });
            
            console.log('\n开始获取物品详情，包含不存在的物品ID 999999...');
            
            // 处理所有物品，包括不存在的物品
            for (let i = 0; i < questRewards.rewardItems.length; i++) {
                const rewardItem = questRewards.rewardItems[i];
                console.log(`\n📦 处理物品 ${i + 1}/${questRewards.rewardItems.length}: ${rewardItem.itemId} (${rewardItem.name})`);
                
                try {
                    const itemDetails = await scraper.getItemDetails(rewardItem.itemId);
                    if (itemDetails) {
                        console.log(`   ✅ 物品 ${rewardItem.itemId} 解析成功`);
                    } else {
                        console.log(`   ⚠️ 物品 ${rewardItem.itemId} 返回null`);
                    }
                } catch (error) {
                    console.log(`   ❌ 物品 ${rewardItem.itemId} 解析异常: ${error.message}`);
                    console.log('🛑 检测到异常，程序应该在此停止！');
                    throw error; // 重新抛出异常确保程序停止
                }
            }
            
            console.log('\n⚠️ 警告：程序继续执行了，异常处理可能有问题！');
            
        } catch (error) {
            console.log(`\n✅ 异常正确捕获: ${error.message}`);
            console.log('程序将停止执行，这是期望的行为。');
            throw error;
        }

    } finally {
        await scraper.cleanup();
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    testItemException().catch(error => {
        console.log(`\n🎯 测试结果: 异常处理机制正常工作`);
        console.log(`   异常信息: ${error.message}`);
        process.exit(1);
    });
}