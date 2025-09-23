#!/usr/bin/env node

/**
 * 基于 Selenium 的任务奖励抓取工具主程序
 * 使用真实浏览器避免反爬虫检测
 */

const fs = require('fs');
const path = require('path');
const SeleniumQuestRewardScraper = require('./quest-reward-scraper-selenium');

// 默认配置
const DEFAULT_CONFIG = {
    questIdsFile: path.join(__dirname, 'output', 'valid-quest-ids.json'),
    outputFile: path.join(__dirname, 'output', 'quest-rewards-selenium.json'),
    failedFile: path.join(__dirname, 'output', 'failed-items.json'),
    maxQuests: null,
    specificQuests: [],
    delay: 3000, // Selenium 默认3秒间隔
    headless: false, // 默认显示浏览器窗口
    retryFailed: false // 是否重试失败的任务
};

/**
 * 解析命令行参数
 */
function parseArguments() {
    const args = process.argv.slice(2);
    const config = { ...DEFAULT_CONFIG };
    
    for (let i = 0; i < args.length; i++) {
        const arg = args[i];
        
        switch (arg) {
            case '--help':
            case '-h':
                showHelp();
                process.exit(0);
                break;
                
            case '--all':
            case '-a':
                config.maxQuests = null;
                break;
                
            case '--count':
            case '-c':
                if (i + 1 < args.length) {
                    config.maxQuests = parseInt(args[++i]);
                    if (isNaN(config.maxQuests) || config.maxQuests <= 0) {
                        console.error('错误: --count 参数必须是正整数');
                        process.exit(1);
                    }
                } else {
                    console.error('错误: --count 参数需要指定数量');
                    process.exit(1);
                }
                break;
                
            case '--quests':
            case '-q':
                if (i + 1 < args.length) {
                    const questStr = args[++i];
                    const questIds = questStr.split(',').map(id => {
                        const num = parseInt(id.trim());
                        if (isNaN(num)) {
                            console.error(`错误: 无效的任务ID: ${id}`);
                            process.exit(1);
                        }
                        return num;
                    });
                    config.specificQuests = questIds;
                } else {
                    console.error('错误: --quests 参数需要指定任务ID列表');
                    process.exit(1);
                }
                break;
                
            case '--delay':
            case '-d':
                if (i + 1 < args.length) {
                    config.delay = parseInt(args[++i]);
                    if (isNaN(config.delay) || config.delay < 500) {
                        console.error('错误: --delay 参数必须是不小于500的整数（毫秒）');
                        process.exit(1);
                    }
                } else {
                    console.error('错误: --delay 参数需要指定延迟时间');
                    process.exit(1);
                }
                break;
                
            case '--headless':
                config.headless = true;
                break;
                
            case '--show-browser':
                config.headless = false;
                break;
                
            case '--output':
            case '-o':
                if (i + 1 < args.length) {
                    config.outputFile = args[++i];
                } else {
                    console.error('错误: --output 参数需要指定输出文件路径');
                    process.exit(1);
                }
                break;
                
            case '--input':
            case '-i':
                if (i + 1 < args.length) {
                    config.questIdsFile = args[++i];
                } else {
                    console.error('错误: --input 参数需要指定输入文件路径');
                    process.exit(1);
                }
                break;
                
            case '--debug':
                config.debug = true;
                if (i + 1 < args.length && !args[i + 1].startsWith('-')) {
                    const debugQuestId = parseInt(args[++i]);
                    if (!isNaN(debugQuestId)) {
                        config.specificQuests = [debugQuestId];
                    }
                } else {
                    // 默认调试任务
                    config.specificQuests = [41188];
                }
                config.delay = 3000;
                config.headless = false; // 调试模式显示浏览器
                break;
                
            case '--retry-failed':
                config.retryFailed = true;
                break;
                
            default:
                if (arg.startsWith('-')) {
                    console.error(`错误: 未知参数 ${arg}`);
                    console.error('使用 --help 查看帮助信息');
                    process.exit(1);
                }
                break;
        }
    }
    
    return config;
}

/**
 * 显示帮助信息
 */
function showHelp() {
    console.log(`
基于 Selenium 的任务奖励抓取工具

用法:
  node scrape-quest-rewards-selenium.js [选项]

选项:
  -a, --all                     处理所有任务（默认）
  -c, --count <数量>            仅处理指定数量的任务
  -q, --quests <ID列表>         处理指定的任务ID（逗号分隔）
  -d, --delay <毫秒>            请求间隔时间（默认：3000ms）
  -i, --input <文件路径>        输入的任务ID文件
  -o, --output <文件路径>       输出文件路径
  --headless                    无头模式（后台运行，不显示浏览器）
  --show-browser                显示浏览器窗口（默认）
  --debug [任务ID]              调试模式，显示浏览器（默认：41188）
  --retry-failed                重试失败的任务和物品
  -h, --help                    显示此帮助信息

优势:
  ✅ 使用真实浏览器，避免反爬虫检测
  ✅ 支持JavaScript渲染的动态内容
  ✅ 更稳定的页面解析
  ✅ 可视化调试（非无头模式）

示例:
  node scrape-quest-rewards-selenium.js --debug                    # 调试单个任务
  node scrape-quest-rewards-selenium.js -c 10                      # 处理前10个任务
  node scrape-quest-rewards-selenium.js -q 41188,41209             # 处理指定任务
  node scrape-quest-rewards-selenium.js --headless -c 50           # 后台处理50个任务
  node scrape-quest-rewards-selenium.js -d 5000 -c 20              # 5秒间隔处理20个任务
  node scrape-quest-rewards-selenium.js --retry-failed             # 重试失败的任务

安装要求:
  1. 安装 Chrome 浏览器
  2. 安装依赖: npm install
  3. 确保 ChromeDriver 可用（会自动下载）

注意事项:
  • 首次运行可能需要下载 ChromeDriver
  • 建议使用 --show-browser 模式观察抓取过程
  • 无头模式性能更好，但无法观察过程
  • 可以随时按 Ctrl+C 中断并保存进度
    `);
}

/**
 * 加载任务ID列表
 */
function loadQuestIds(filePath) {
    if (!fs.existsSync(filePath)) {
        console.error(`错误: 任务ID文件不存在: ${filePath}`);
        console.error('请先运行任务数据合并工具生成 valid-quest-ids.json 文件');
        process.exit(1);
    }
    
    try {
        const data = JSON.parse(fs.readFileSync(filePath, 'utf8'));
        
        if (data.validQuestIds && Array.isArray(data.validQuestIds)) {
            return data.validQuestIds;
        } else {
            console.error(`错误: 文件格式不正确，未找到 validQuestIds 数组`);
            process.exit(1);
        }
    } catch (error) {
        console.error(`错误: 无法解析任务ID文件: ${error.message}`);
        process.exit(1);
    }
}

/**
 * 加载失败任务列表
 */
function loadFailedQuests(filePath) {
    if (!fs.existsSync(filePath)) {
        return [];
    }
    
    try {
        const data = JSON.parse(fs.readFileSync(filePath, 'utf8'));
        const failedQuests = data.failedQuests || [];
        const failedItems = data.failedItems || [];
        
        console.log(`从失败列表加载了 ${failedQuests.length} 个失败任务, ${failedItems.length} 个失败物品`);
        return [...failedQuests, ...failedItems]; // 合并任务和物品ID
    } catch (error) {
        console.warn(`解析失败列表文件失败: ${error.message}`);
        return [];
    }
}

/**
 * 获取要处理的任务列表
 */
function getQuestList(config) {
    // 如果是重试失败模式
    if (config.retryFailed) {
        const failedIds = loadFailedQuests(config.failedFile);
        if (failedIds.length === 0) {
            console.log('没有找到失败的任务或物品需要重试');
            return [];
        }
        
        // 去重并排序
        const uniqueIds = [...new Set(failedIds)].sort((a, b) => a - b);
        console.log(`重试模式：找到 ${uniqueIds.length} 个需要重试的ID`);
        return uniqueIds;
    }
    
    // 如果指定了特定任务，直接返回
    if (config.specificQuests.length > 0) {
        console.log(`使用指定的任务列表: [${config.specificQuests.join(', ')}]`);
        return config.specificQuests;
    }
    
    // 从文件加载任务ID
    const allQuestIds = loadQuestIds(config.questIdsFile);
    console.log(`从文件加载了 ${allQuestIds.length} 个任务ID`);
    
    // 根据数量限制返回
    if (config.maxQuests !== null && config.maxQuests < allQuestIds.length) {
        console.log(`限制处理数量为 ${config.maxQuests} 个任务`);
        return allQuestIds.slice(0, config.maxQuests);
    }
    
    return allQuestIds;
}

/**
 * 主执行函数
 */
async function main() {
    let scraper = null;
    
    try {
        console.log('🤖 Selenium 任务奖励抓取工具');
        console.log('='.repeat(50));
        
        // 解析命令行参数
        const config = parseArguments();
        
        // 显示配置信息
        console.log('配置信息:');
        console.log(`  输入文件: ${config.questIdsFile}`);
        console.log(`  输出文件: ${config.outputFile}`);
        console.log(`  请求间隔: ${config.delay}ms`);
        console.log(`  浏览器模式: ${config.headless ? '无头模式' : '显示窗口'}`);
        
        // 创建输出目录
        const outputDir = path.dirname(config.outputFile);
        if (!fs.existsSync(outputDir)) {
            fs.mkdirSync(outputDir, { recursive: true });
            console.log(`创建输出目录: ${outputDir}`);
        }
        
        // 获取要处理的任务列表
        const questIds = getQuestList(config);
        
        if (questIds.length === 0) {
            console.log('没有找到要处理的任务');
            return;
        }
        
        console.log(`准备处理 ${questIds.length} 个任务`);
        console.log('');
        
        // 创建爬虫实例
        scraper = new SeleniumQuestRewardScraper();
        scraper.delay = config.delay;
        
        // 如果是无头模式，需要修改浏览器选项
        if (config.headless) {
            console.log('🔇 启用无头模式');
        }
        
        // 开始处理
        await scraper.processQuests(questIds);
        
        // 保存最终结果
        scraper.saveResults(config.outputFile);
        
        console.log('');
        console.log('🎉 任务奖励抓取完成！');
        
        // 显示结果摘要
        const stats = scraper.results.stats;
        console.log('');
        console.log('📈 结果摘要:');
        console.log('-'.repeat(30));
        console.log(`📋 处理任务总数: ${stats.totalQuests}`);
        console.log(`🎁 有奖励的任务: ${stats.questsWithRewards}`);
        console.log(`💎 奖励物品总数: ${stats.totalRewardItems}`);
        console.log(`🔍 已获取物品详情: ${stats.processedItems}`);
        console.log(`❌ 错误数量: ${stats.errors}`);
        console.log(`✅ 成功率: ${((stats.totalQuests - stats.errors) / stats.totalQuests * 100).toFixed(1)}%`);
        
    } catch (error) {
        console.error('❌ 执行失败:', error.message);
        console.error(error.stack);
        process.exit(1);
    } finally {
        // 确保清理资源
        if (scraper) {
            await scraper.cleanup();
        }
    }
}

// 处理优雅退出
process.on('SIGINT', async () => {
    console.log('\\n🛑 收到中断信号，正在保存进度并关闭浏览器...');
    process.exit(0);
});

// 处理未捕获的异常
process.on('uncaughtException', async (error) => {
    console.error('❌ 未捕获的异常:', error);
    process.exit(1);
});

// 如果直接运行此脚本
if (require.main === module) {
    main();
}