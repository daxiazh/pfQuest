#!/usr/bin/env node

/**
 * pfQuest 数据合并工具主程序
 * 合并基础任务数据和乌龟服数据，生成有效任务ID的JSON文件
 */

const fs = require('fs');
const path = require('path');
const QuestDataMerger = require('./quest-merger');

// 配置选项
const CONFIG = {
    // 输出文件配置
    output: {
        // 基础输出文件（仅包含任务ID列表）
        questIds: path.join(__dirname, 'output', 'valid-quest-ids.json'),
        
        // 详细输出文件（包含完整统计信息）
        detailed: path.join(__dirname, 'output', 'quest-data-detailed.json'),
        
        // 完整数据输出文件（包含所有合并后的任务数据）
        fullData: path.join(__dirname, 'output', 'merged-quest-data.json')
    }
};

/**
 * 主执行函数
 */
async function main() {
    try {
        console.log('pfQuest 数据合并工具');
        console.log('='.repeat(50));
        console.log('');

        // 创建输出目录
        const outputDir = path.dirname(CONFIG.output.questIds);
        if (!fs.existsSync(outputDir)) {
            fs.mkdirSync(outputDir, { recursive: true });
            console.log(`创建输出目录: ${outputDir}`);
        }

        // 创建合并器实例并执行合并
        const merger = new QuestDataMerger();
        const result = await merger.mergeQuestData();

        console.log('');
        console.log('导出文件...');
        console.log('-'.repeat(30));

        // 1. 导出基础任务ID列表
        merger.exportToJson(CONFIG.output.questIds, {
            includeFullData: false,
            includeStats: true,
            includeDetailedInfo: false
        });

        // 2. 导出详细信息
        merger.exportToJson(CONFIG.output.detailed, {
            includeFullData: false,
            includeStats: true,
            includeDetailedInfo: true
        });

        // 3. 导出完整数据（可选，数据量较大）
        if (process.argv.includes('--full')) {
            console.log('导出完整数据...');
            merger.exportToJson(CONFIG.output.fullData, {
                includeFullData: true,
                includeStats: true,
                includeDetailedInfo: true
            });
        }

        // 显示结果摘要
        console.log('');
        console.log('合并结果摘要:');
        console.log('-'.repeat(30));
        console.log(`✅ 有效任务总数: ${result.stats.validCount}`);
        console.log(`📊 基础任务数量: ${result.stats.baseCount}`);
        console.log(`🐢 乌龟服数据项: ${result.stats.turtleCount}`);
        console.log(`➕ 新增任务数量: ${result.stats.addedCount}`);
        console.log(`🗑️  删除任务数量: ${result.stats.deletedCount}`);

        console.log('');
        console.log('输出文件:');
        console.log('-'.repeat(30));
        console.log(`📄 任务ID列表: ${CONFIG.output.questIds}`);
        console.log(`📊 详细信息: ${CONFIG.output.detailed}`);
        if (process.argv.includes('--full')) {
            console.log(`💾 完整数据: ${CONFIG.output.fullData}`);
        }

        // 显示一些示例任务ID
        const questIds = merger.getValidQuestIds();
        console.log('');
        console.log('任务ID范围示例:');
        console.log('-'.repeat(30));
        console.log(`最小ID: ${Math.min(...questIds)}`);
        console.log(`最大ID: ${Math.max(...questIds)}`);
        console.log(`前10个ID: [${questIds.slice(0, 10).join(', ')}]`);
        if (questIds.length > 10) {
            console.log(`后10个ID: [${questIds.slice(-10).join(', ')}]`);
        }

        console.log('');
        console.log('✅ 任务数据合并完成！');

    } catch (error) {
        console.error('❌ 执行失败:', error.message);
        console.error(error.stack);
        process.exit(1);
    }
}

/**
 * 显示帮助信息
 */
function showHelp() {
    console.log(`
pfQuest 数据合并工具

用法:
  node index.js [选项]

选项:
  --full          导出完整的合并数据（包含所有任务详细信息）
  --help, -h      显示此帮助信息

功能:
  1. 解析 pfQuest 基础任务数据 (pfQuest/db/quests.lua)
  2. 解析乌龟服任务数据 (pfQuest-turtle/db/quests-turtle.lua)
  3. 执行数据合并（模拟 patchtable 函数逻辑）
  4. 生成有效任务ID的JSON文件

输出文件:
  • valid-quest-ids.json     - 有效任务ID列表和基础统计
  • quest-data-detailed.json - 详细的任务信息和统计
  • merged-quest-data.json   - 完整的合并数据（使用 --full 选项）

示例:
  node index.js              # 基础合并和导出
  node index.js --full       # 包含完整数据的导出
    `);
}

// 处理命令行参数
if (process.argv.includes('--help') || process.argv.includes('-h')) {
    showHelp();
    process.exit(0);
}

// 执行主程序
if (require.main === module) {
    main();
}