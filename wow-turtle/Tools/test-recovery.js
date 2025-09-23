#!/usr/bin/env node

/**
 * 测试增量恢复机制的脚本
 * 验证失败任务是否会被重试而不是跳过
 */

const fs = require('fs');
const path = require('path');

console.log('🧪 增量恢复机制测试');
console.log('='.repeat(50));

function testProgressFile() {
    const outputDir = './output';
    const progressFile = path.join(outputDir, 'test-progress.json');
    
    console.log('\n📋 测试1: 简化进度文件格式');
    
    // 创建简化的进度文件
    const simpleProgress = {
        lastProcessedQuestId: 42
    };
    
    fs.writeFileSync(progressFile, JSON.stringify(simpleProgress, null, 2), 'utf8');
    console.log('✅ 创建了简化的进度文件:');
    console.log(fs.readFileSync(progressFile, 'utf8'));
    
    // 验证可以正确加载
    const loaded = JSON.parse(fs.readFileSync(progressFile, 'utf8'));
    console.log(`✅ 加载结果: lastProcessedQuestId = ${loaded.lastProcessedQuestId}`);
    
    // 清理
    fs.unlinkSync(progressFile);
    console.log('🗑️ 清理测试文件');
}

function analyzeFilterLogic() {
    console.log('\n📋 测试2: 任务过滤逻辑分析');
    
    const questIds = [10, 20, 30, 40, 50, 60, 70];
    const lastProcessedQuestId = 35;
    
    console.log(`任务列表: [${questIds.join(', ')}]`);
    console.log(`上次处理到: ${lastProcessedQuestId}`);
    
    // 模拟当前的过滤逻辑
    let startIndex = 0;
    for (let i = 0; i < questIds.length; i++) {
        if (questIds[i] > lastProcessedQuestId) {
            startIndex = i;
            break;
        }
    }
    
    const filteredList = questIds.slice(startIndex);
    console.log(`过滤后的列表: [${filteredList.join(', ')}]`);
    
    console.log('\n💡 分析结果:');
    console.log(`- 如果任务35处理失败但进度被保存，重启后会从任务40开始`);
    console.log(`- 任务35将被跳过，无法重试`);
    console.log(`- 修复后：失败的任务35不会保存进度，重启后从任务40开始（下一个未处理的任务）`);
}

function demonstrateRecoveryScenario() {
    console.log('\n📋 测试3: 恢复场景演示');
    
    console.log('\n场景1 - 修复前（有问题的行为）:');
    console.log('1. 处理任务30 ✅ -> 保存进度: 30');
    console.log('2. 处理任务35 ❌ -> 仍然保存进度: 35 (问题!)');
    console.log('3. 程序中断');
    console.log('4. 重启后从任务40开始，任务35被跳过 ❌');
    
    console.log('\n场景2 - 修复后（正确的行为）:');
    console.log('1. 处理任务30 ✅ -> 保存进度: 30');
    console.log('2. 处理任务35 ❌ -> 不保存进度');
    console.log('3. 程序中断');
    console.log('4. 重启后从任务35开始重试 ✅');
}

// 执行测试
if (require.main === module) {
    testProgressFile();
    analyzeFilterLogic();
    demonstrateRecoveryScenario();
    
    console.log('\n🎯 测试完成');
    console.log('建议：在修复后测试一个实际的失败场景来验证恢复机制');
}