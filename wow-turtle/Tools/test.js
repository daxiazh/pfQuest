/**
 * 测试脚本
 * 验证数据合并工具的功能
 */

const fs = require('fs');
const path = require('path');
const LuaParser = require('./lua-parser');
const QuestDataMerger = require('./quest-merger');

/**
 * 测试 Lua 解析器
 */
async function testLuaParser() {
    console.log('测试 Lua 解析器...');
    console.log('-'.repeat(30));
    
    const parser = new LuaParser();
    const projectRoot = path.resolve(__dirname, '..');
    
    // 测试解析基础任务文件
    const questsPath = path.join(projectRoot, 'pfQuest/db/quests.lua');
    if (fs.existsSync(questsPath)) {
        const result = parser.parseFile(questsPath);
        console.log(`✅ 基础任务文件解析成功`);
        console.log(`   - 类别: ${result.category}`);
        console.log(`   - 子类别: ${result.subcategory}`);
        console.log(`   - 任务数量: ${Object.keys(result.data || {}).length}`);
        
        // 显示前几个任务示例
        const firstFewQuests = Object.entries(result.data || {}).slice(0, 3);
        if (firstFewQuests.length > 0) {
            console.log(`   - 示例任务:`);
            firstFewQuests.forEach(([id, quest]) => {
                console.log(`     [${id}] 等级:${quest.lvl || '?'} 最低:${quest.min || '?'}`);
            });
        }
    } else {
        console.log('❌ 基础任务文件不存在');
    }
    
    // 测试解析乌龟服任务文件
    const turtleQuestsPath = path.join(projectRoot, 'pfQuest-turtle/db/quests-turtle.lua');
    if (fs.existsSync(turtleQuestsPath)) {
        const result = parser.parseFile(turtleQuestsPath);
        console.log(`✅ 乌龟服任务文件解析成功`);
        console.log(`   - 类别: ${result.category}`);
        console.log(`   - 子类别: ${result.subcategory}`);
        console.log(`   - 数据项数量: ${Object.keys(result.data || {}).length}`);
        
        // 统计删除和修改操作
        const data = result.data || {};
        const deleteCount = Object.values(data).filter(v => v === '_').length;
        const modifyCount = Object.keys(data).length - deleteCount;
        
        console.log(`   - 删除操作: ${deleteCount}`);
        console.log(`   - 修改/新增: ${modifyCount}`);
    } else {
        console.log('❌ 乌龟服任务文件不存在');
    }
    
    console.log('');
}

/**
 * 测试数据合并器
 */
async function testQuestMerger() {
    console.log('测试数据合并器...');
    console.log('-'.repeat(30));
    
    const merger = new QuestDataMerger();
    
    try {
        const result = await merger.mergeQuestData();
        
        console.log('✅ 数据合并测试成功');
        console.log(`   - 基础任务: ${result.stats.baseCount}`);
        console.log(`   - 乌龟服数据: ${result.stats.turtleCount}`);
        console.log(`   - 合并后有效: ${result.stats.validCount}`);
        console.log(`   - 删除任务: ${result.stats.deletedCount}`);
        console.log(`   - 新增任务: ${result.stats.addedCount}`);
        
        // 测试获取任务ID列表
        const questIds = merger.getValidQuestIds();
        console.log(`   - ID范围: ${Math.min(...questIds)} ~ ${Math.max(...questIds)}`);
        
        // 测试导出功能
        const testOutputPath = path.join(__dirname, 'test-output.json');
        merger.exportToJson(testOutputPath, {
            includeStats: true,
            includeDetailedInfo: false
        });
        
        if (fs.existsSync(testOutputPath)) {
            console.log(`✅ 导出测试成功: ${testOutputPath}`);
            
            // 清理测试文件
            fs.unlinkSync(testOutputPath);
            console.log(`   - 测试文件已清理`);
        } else {
            console.log('❌ 导出测试失败');
        }
        
    } catch (error) {
        console.log(`❌ 数据合并测试失败: ${error.message}`);
    }
    
    console.log('');
}

/**
 * 测试特定功能
 */
async function testSpecificFeatures() {
    console.log('测试特定功能...');
    console.log('-'.repeat(30));
    
    // 测试删除操作
    const merger = new QuestDataMerger();
    const testBase = { 1: { lvl: 5 }, 2: { lvl: 10 } };
    const testPatch = { 1: '_', 3: { lvl: 15 } };
    
    merger.applyPatch(testBase, testPatch);
    
    if (!testBase[1] && testBase[2] && testBase[3]) {
        console.log('✅ 删除操作测试通过');
        console.log('   - 任务1被正确删除');
        console.log('   - 任务2保持不变');
        console.log('   - 任务3被正确添加');
    } else {
        console.log('❌ 删除操作测试失败');
    }
    
    console.log('');
}

/**
 * 运行所有测试
 */
async function runAllTests() {
    console.log('pfQuest 数据合并工具 - 测试套件');
    console.log('='.repeat(50));
    console.log('');
    
    await testLuaParser();
    await testSpecificFeatures();
    await testQuestMerger();
    
    console.log('测试完成！');
}

// 如果直接运行此脚本，执行所有测试
if (require.main === module) {
    runAllTests().catch(error => {
        console.error('测试执行失败:', error);
        process.exit(1);
    });
}

module.exports = {
    testLuaParser,
    testQuestMerger,
    testSpecificFeatures,
    runAllTests
};