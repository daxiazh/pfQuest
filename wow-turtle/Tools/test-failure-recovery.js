#!/usr/bin/env node

/**
 * 测试失败恢复的实际场景
 * 模拟任务处理失败，验证重启后是否从失败任务开始重试
 */

const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');
const fs = require('fs');
const path = require('path');

console.log('🧪 失败恢复机制实际测试');
console.log('='.repeat(50));

async function testFailureRecovery() {
    // 创建临时的测试输出路径
    const testOutputPath = './output/test-failure-recovery.json';
    const testProgressPath = './output/test-failure-recovery-progress.json';
    
    // 清理之前的测试文件
    [testOutputPath, testProgressPath].forEach(file => {
        if (fs.existsSync(file)) {
            fs.unlinkSync(file);
        }
    });
    
    console.log('\n📋 阶段1: 设置测试场景');
    const scraper = new SeleniumQuestRewardScraper();
    scraper.enableIncrementalMode(testOutputPath);
    
    console.log(`测试输出文件: ${testOutputPath}`);
    console.log(`测试进度文件: ${testProgressPath}`);
    
    // 手动创建一个进度文件，模拟之前已处理到任务36
    const initialProgress = { lastProcessedQuestId: 36 };
    fs.writeFileSync(testProgressPath, JSON.stringify(initialProgress, null, 2), 'utf8');
    console.log('✅ 创建初始进度文件: 任务36');
    
    try {
        console.log('\n📋 阶段2: 测试恢复和失败处理');
        
        // 修改getItemDetails方法，在特定任务时抛出异常
        const originalGetItemDetails = scraper.getItemDetails.bind(scraper);
        scraper.getItemDetails = async function(itemId) {
            // 如果是任务38中的第4个物品，模拟解析失败
            if (itemId === 2225) {
                throw new Error(`模拟物品 ${itemId} 解析失败 - 测试失败恢复机制`);
            }
            return await originalGetItemDetails(itemId);
        };
        
        // 测试任务列表：包含任务38（有奖励物品，会触发物品解析）
        const testQuests = [37, 38, 39];
        console.log(`准备处理测试任务: [${testQuests.join(', ')}]`);
        
        await scraper.processQuests(testQuests);
        
        console.log('\n⚠️ 意外：程序没有因为失败而中断');
        
    } catch (error) {
        console.log(`\n✅ 期望的失败: ${error.message}`);
        
        // 检查进度文件
        if (fs.existsSync(testProgressPath)) {
            const progress = JSON.parse(fs.readFileSync(testProgressPath, 'utf8'));
            console.log(`📄 当前进度文件内容: lastProcessedQuestId = ${progress.lastProcessedQuestId}`);
            
            if (progress.lastProcessedQuestId === 41) {
                console.log('✅ 正确：只保存了成功任务41的进度，失败任务42未保存');
            } else {
                console.log('❌ 错误：进度保存不正确');
            }
        } else {
            console.log('❌ 进度文件不存在');
        }
    }
    
    // 清理测试文件
    console.log('\n🗑️ 清理测试文件');
    [testOutputPath, testProgressPath].forEach(file => {
        if (fs.existsSync(file)) {
            fs.unlinkSync(file);
            console.log(`删除: ${file}`);
        }
    });
}

if (require.main === module) {
    testFailureRecovery().then(() => {
        console.log('\n🎯 失败恢复测试完成');
    }).catch(error => {
        console.log(`\n❌ 测试失败: ${error.message}`);
    });
}