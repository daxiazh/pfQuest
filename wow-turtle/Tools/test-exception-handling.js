#!/usr/bin/env node

/**
 * 测试异常处理机制的脚本
 */

const fs = require('fs');
const path = require('path');
const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

console.log('🧪 异常处理机制测试');
console.log('='.repeat(50));

async function testExceptionHandling() {
    const scraper = new SeleniumQuestRewardScraper();
    
    try {
        console.log('🚀 启动浏览器...');
        const driverReady = await scraper.initDriver();
        if (!driverReady) {
            throw new Error('浏览器启动失败');
        }

        console.log('\n📋 测试1: 不存在的任务ID');
        try {
            const questRewards = await scraper.getQuestRewards(999999);
            console.log('结果:', questRewards ? '成功解析' : '返回null');
        } catch (error) {
            console.log('✅ 捕获到异常:', error.message);
        }

        console.log('\n📋 测试2: 不存在的物品ID');
        try {
            const itemDetails = await scraper.getItemDetails(999999);
            console.log('结果:', itemDetails ? '成功解析' : '返回null');
        } catch (error) {
            console.log('✅ 捕获到异常:', error.message);
        }

        console.log('\n📋 测试3: 正常的任务ID (用于对比)');
        try {
            const questRewards = await scraper.getQuestRewards(6);
            console.log('结果: 成功解析任务:', questRewards?.title || '无标题');
        } catch (error) {
            console.log('❌ 意外异常:', error.message);
        }

        await scraper.cleanup();
        console.log('\n🎉 异常处理测试完成');
        
    } catch (error) {
        console.error('❌ 测试失败:', error.message);
        await scraper.cleanup();
        process.exit(1);
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    testExceptionHandling();
}