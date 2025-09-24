#!/usr/bin/env node

/**
 * HTML下载器工具
 * 从TurtleWoW数据库下载任务和物品的HTML页面并缓存到本地
 */

const { Builder, By, until } = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');
const fs = require('fs');
const path = require('path');

class HTMLDownloader {
    constructor() {
        this.driver = null;
        this.baseUrl = 'https://database.turtle-wow.org';
        this.cacheDir = path.join(__dirname, 'cache');
        this.questCacheDir = path.join(this.cacheDir, 'quests');
        this.itemCacheDir = path.join(this.cacheDir, 'items');
        this.progressFile = path.join(__dirname, 'output', 'html-download-progress.json');
        this.progress = this.loadProgress();
        
        // 初始化缓存目录
        this.initCacheDirectories();
    }

    /**
     * 初始化缓存目录
     */
    initCacheDirectories() {
        [this.cacheDir, this.questCacheDir, this.itemCacheDir].forEach(dir => {
            if (!fs.existsSync(dir)) {
                fs.mkdirSync(dir, { recursive: true });
                console.log(`📁 创建缓存目录: ${dir}`);
            }
        });
    }

    /**
     * 加载下载进度
     */
    loadProgress() {
        if (fs.existsSync(this.progressFile)) {
            try {
                return JSON.parse(fs.readFileSync(this.progressFile, 'utf8'));
            } catch (error) {
                console.warn('⚠️ 无法读取进度文件，将重新开始');
            }
        }
        return {
            lastProcessedQuestId: 0,
            failedQuests: [],
            failedItems: []
        };
    }

    /**
     * 保存下载进度
     */
    saveProgress() {
        const outputDir = path.dirname(this.progressFile);
        if (!fs.existsSync(outputDir)) {
            fs.mkdirSync(outputDir, { recursive: true });
        }
        fs.writeFileSync(this.progressFile, JSON.stringify(this.progress, null, 2));
    }

    /**
     * 初始化Selenium WebDriver
     */
    async initDriver() {
        console.log('🚀 初始化浏览器...');
        
        const options = new chrome.Options();
        // options.addArguments('--headless');
        options.addArguments('--no-sandbox');
        options.addArguments('--disable-dev-shm-usage');
        options.addArguments('--disable-gpu');
        options.addArguments('--window-size=1920,1080');
        options.addArguments('--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
        options.addArguments('--disable-blink-features=AutomationControlled');
        options.excludeSwitches('enable-automation');
        options.addArguments('--disable-web-security');
        
        this.driver = await new Builder()
            .forBrowser('chrome')
            .setChromeOptions(options)
            .build();
            
        console.log('✅ 浏览器初始化完成');
    }

    /**
     * 下载任务HTML页面
     */
    async downloadQuestHTML(questId, progressCallback = null) {
        const cacheFile = path.join(this.questCacheDir, `${questId}.html`);
        
        // 检查缓存是否存在
        if (fs.existsSync(cacheFile)) {
            return true;
        }

        let retryCount = 0;
        const maxRetries = 3;
        
        while (retryCount <= maxRetries) {
            try {
                const url = `${this.baseUrl}/?quest=${questId}`;
                
                // 通知当前状态
                if (progressCallback) {
                    progressCallback('quest', questId, retryCount > 0 ? `重试${retryCount}` : '下载中');
                }
                
                await this.driver.get(url);
                await this.driver.sleep(5000); // 等待Cloudflare加载
                
                // 等待页面真正加载完成
                let cloudflareRetries = 10;
                let html;
                while (cloudflareRetries > 0) {
                    html = await this.driver.getPageSource();
                    if (!html.includes('请稍候') && !html.includes('Checking your browser')) {
                        break;
                    }
                    await this.driver.sleep(2000);
                    cloudflareRetries--;
                }
                
                // 验证页面内容
                if (html.includes('Quest not found') || html.length < 1000) {
                    if (!this.progress.failedQuests.includes(questId)) {
                        this.progress.failedQuests.push(questId);
                    }
                    return false;
                }
                
                // 保存HTML到缓存
                fs.writeFileSync(cacheFile, html, 'utf8');
                return true;
                
            } catch (error) {
                retryCount++;
                if (retryCount > maxRetries) {
                    if (!this.progress.failedQuests.includes(questId)) {
                        this.progress.failedQuests.push(questId);
                    }
                    return false;
                }
                // 重试前等待一段时间
                await this.driver.sleep(2000 * retryCount);
            }
        }
        
        return false;
    }

    /**
     * 下载物品HTML页面
     */
    async downloadItemHTML(itemId, progressCallback = null) {
        const cacheFile = path.join(this.itemCacheDir, `${itemId}.html`);
        
        // 检查缓存是否存在
        if (fs.existsSync(cacheFile)) {
            return true;
        }

        let retryCount = 0;
        const maxRetries = 3;
        
        while (retryCount <= maxRetries) {
            try {
                const url = `${this.baseUrl}/?item=${itemId}`;
                
                // 通知当前状态
                if (progressCallback) {
                    progressCallback('item', itemId, retryCount > 0 ? `重试${retryCount}` : '下载中');
                }
                
                await this.driver.get(url);
                await this.driver.sleep(5000); // 等待Cloudflare加载
                
                // 等待页面真正加载完成
                let cloudflareRetries = 10;
                let html;
                while (cloudflareRetries > 0) {
                    html = await this.driver.getPageSource();
                    if (!html.includes('请稍候') && !html.includes('Checking your browser')) {
                        break;
                    }
                    await this.driver.sleep(2000);
                    cloudflareRetries--;
                }
                
                // 验证页面内容
                if (html.includes('Item not found') || html.length < 1000) {
                    if (!this.progress.failedItems.includes(itemId)) {
                        this.progress.failedItems.push(itemId);
                    }
                    return false;
                }
                
                // 保存HTML到缓存
                fs.writeFileSync(cacheFile, html, 'utf8');
                return true;
                
            } catch (error) {
                retryCount++;
                if (retryCount > maxRetries) {
                    if (!this.progress.failedItems.includes(itemId)) {
                        this.progress.failedItems.push(itemId);
                    }
                    return false;
                }
                // 重试前等待一段时间
                await this.driver.sleep(2000 * retryCount);
            }
        }
        
        return false;
    }

    /**
     * 渲染进度条
     */
    renderProgressBar(current, total, success, failed, skipped, currentItem, status, estimatedFinish) {
        const percentage = ((current / total) * 100).toFixed(1);
        const barLength = 30;
        const filledLength = Math.round((current / total) * barLength);
        const bar = '█'.repeat(filledLength) + '░'.repeat(barLength - filledLength);
        
        // 状态图标映射
        const statusIcons = {
            '下载中': '📥',
            '重试1': '🔄',
            '重试2': '🔄',
            '重试3': '🔄',
            '完成': '✅',
            '失败': '❌',
            '跳过': '⏭️'
        };
        
        const icon = statusIcons[status] || '📥';
        
        // 清除当前行并重新输出
        process.stdout.write('\r');
        process.stdout.write(`[${bar}] ${percentage}% (${current}/${total}) ✅${success} ❌${failed} ⏭️${skipped} | ${icon} ${currentItem} ${status} | ⏱️${estimatedFinish}`);
        
        if (current === total) {
            process.stdout.write('\n');
        }
    }

    /**
     * 批量下载任务列表
     */
    async downloadQuests(questIds) {
        console.log(`📋 开始下载 ${questIds.length} 个任务...`);
        
        let successCount = 0;
        let failCount = 0;
        let skippedCount = 0;
        const startTime = Date.now();
        
        for (let i = 0; i < questIds.length; i++) {
            const questId = questIds[i];
            const completed = i + 1;
            
            // 检查是否已缓存（跳过）
            const cacheFile = path.join(this.questCacheDir, `${questId}.html`);
            if (fs.existsSync(cacheFile)) {
                skippedCount++;
                
                // 显示跳过状态
                const elapsedTime = Date.now() - startTime;
                const avgTimePerTask = elapsedTime / completed;
                const remainingTasks = questIds.length - completed;
                const estimatedRemainingTime = remainingTasks * avgTimePerTask;
                const estimatedFinishTime = new Date(Date.now() + estimatedRemainingTime).toLocaleTimeString();
                
                this.renderProgressBar(
                    completed, 
                    questIds.length, 
                    successCount, 
                    failCount, 
                    skippedCount,
                    `任务${questId}`, 
                    '跳过', 
                    estimatedFinishTime
                );
                
                continue;
            }
            
            // 进度回调函数
            const progressCallback = (type, id, status) => {
                const elapsedTime = Date.now() - startTime;
                const avgTimePerTask = elapsedTime / Math.max(1, i); // 防止除零
                const remainingTasks = questIds.length - completed;
                const estimatedRemainingTime = remainingTasks * avgTimePerTask;
                const estimatedFinishTime = new Date(Date.now() + estimatedRemainingTime).toLocaleTimeString();
                
                this.renderProgressBar(
                    i, // 使用当前索引，因为还在处理中
                    questIds.length, 
                    successCount, 
                    failCount, 
                    skippedCount,
                    `任务${id}`, 
                    status, 
                    estimatedFinishTime
                );
            };
            
            const result = await this.downloadQuestHTML(questId, progressCallback);
            
            if (result) {
                successCount++;
            } else {
                failCount++;
            }
            
            // 更新最终状态
            const elapsedTime = Date.now() - startTime;
            const avgTimePerTask = elapsedTime / completed;
            const remainingTasks = questIds.length - completed;
            const estimatedRemainingTime = remainingTasks * avgTimePerTask;
            const estimatedFinishTime = new Date(Date.now() + estimatedRemainingTime).toLocaleTimeString();
            
            this.renderProgressBar(
                completed, 
                questIds.length, 
                successCount, 
                failCount, 
                skippedCount,
                `任务${questId}`, 
                result ? '完成' : '失败', 
                estimatedFinishTime
            );
            
            // 每10个任务保存一次进度
            if (completed % 10 === 0) {
                this.saveProgress();
            }
            
            // 请求间隔，避免被封
            await this.driver.sleep(500);
        }
        
        const totalTime = ((Date.now() - startTime) / 1000 / 60).toFixed(1);
        console.log(`\n📊 任务下载完成: 成功 ${successCount}, 失败 ${failCount}, 跳过 ${skippedCount} | 🕐 总耗时: ${totalTime}分钟`);
        this.saveProgress();
    }

    /**
     * 批量下载物品列表
     */
    async downloadItems(itemIds) {
        console.log(`🎒 开始下载 ${itemIds.length} 个物品...`);
        
        let successCount = 0;
        let failCount = 0;
        let skippedCount = 0;
        const startTime = Date.now();
        
        for (let i = 0; i < itemIds.length; i++) {
            const itemId = itemIds[i];
            const completed = i + 1;
            
            // 检查是否已缓存（跳过）
            const cacheFile = path.join(this.itemCacheDir, `${itemId}.html`);
            if (fs.existsSync(cacheFile)) {
                skippedCount++;
                
                // 显示跳过状态
                const elapsedTime = Date.now() - startTime;
                const avgTimePerItem = elapsedTime / completed;
                const remainingItems = itemIds.length - completed;
                const estimatedRemainingTime = remainingItems * avgTimePerItem;
                const estimatedFinishTime = new Date(Date.now() + estimatedRemainingTime).toLocaleTimeString();
                
                this.renderProgressBar(
                    completed, 
                    itemIds.length, 
                    successCount, 
                    failCount, 
                    skippedCount,
                    `物品${itemId}`, 
                    '跳过', 
                    estimatedFinishTime
                );
                
                continue;
            }
            
            // 进度回调函数
            const progressCallback = (type, id, status) => {
                const elapsedTime = Date.now() - startTime;
                const avgTimePerItem = elapsedTime / Math.max(1, i);
                const remainingItems = itemIds.length - completed;
                const estimatedRemainingTime = remainingItems * avgTimePerItem;
                const estimatedFinishTime = new Date(Date.now() + estimatedRemainingTime).toLocaleTimeString();
                
                this.renderProgressBar(
                    i, 
                    itemIds.length, 
                    successCount, 
                    failCount, 
                    skippedCount,
                    `物品${id}`, 
                    status, 
                    estimatedFinishTime
                );
            };
            
            const result = await this.downloadItemHTML(itemId, progressCallback);
            
            if (result) {
                successCount++;
            } else {
                failCount++;
            }
            
            // 更新最终状态
            const elapsedTime = Date.now() - startTime;
            const avgTimePerItem = elapsedTime / completed;
            const remainingItems = itemIds.length - completed;
            const estimatedRemainingTime = remainingItems * avgTimePerItem;
            const estimatedFinishTime = new Date(Date.now() + estimatedRemainingTime).toLocaleTimeString();
            
            this.renderProgressBar(
                completed, 
                itemIds.length, 
                successCount, 
                failCount, 
                skippedCount,
                `物品${itemId}`, 
                result ? '完成' : '失败', 
                estimatedFinishTime
            );
            
            // 每10个物品保存一次进度
            if (completed % 10 === 0) {
                this.saveProgress();
            }
            
            // 请求间隔，避免被封
            await this.driver.sleep(500);
        }
        
        const totalTime = ((Date.now() - startTime) / 1000 / 60).toFixed(1);
        console.log(`\n📊 物品下载完成: 成功 ${successCount}, 失败 ${failCount}, 跳过 ${skippedCount} | 🕐 总耗时: ${totalTime}分钟`);
        this.saveProgress();
    }

    /**
     * 从有效任务ID文件加载任务列表
     */
    loadValidQuestIds(filePath = null) {
        const defaultPath = path.join(__dirname, 'output', 'valid-quest-ids.json');
        const questIdsFile = filePath || defaultPath;
        
        if (!fs.existsSync(questIdsFile)) {
            throw new Error(`任务ID文件不存在: ${questIdsFile}`);
        }
        
        const data = JSON.parse(fs.readFileSync(questIdsFile, 'utf8'));
        return data.validQuestIds || [];
    }

    /**
     * 从任务页面提取奖励物品ID
     */
    extractItemIdsFromQuestHTML(questId) {
        const cacheFile = path.join(this.questCacheDir, `${questId}.html`);
        if (!fs.existsSync(cacheFile)) {
            console.warn(`⚠️ 警告: 任务 ${questId} 的缓存文件不存在: ${cacheFile}`);
            return [];
        }
        
        const html = fs.readFileSync(cacheFile, 'utf8');
        const itemIds = [];
        
        // 使用正则表达式提取物品链接
        const itemLinkPattern = /href="[^"]*\?item=(\d+)[^"]*"/g;
        let match;
        
        while ((match = itemLinkPattern.exec(html)) !== null) {
            const itemId = parseInt(match[1]);
            if (itemId && !itemIds.includes(itemId)) {
                itemIds.push(itemId);
            }
        }
        
        return itemIds;
    }

    /**
     * 下载所有有效任务和相关物品
     */
    async downloadAllQuestRewards(questIdsFile = null) {
        console.log('🎯 开始下载任务奖励数据...');
        
        // 1. 加载有效任务ID
        const questIds = this.loadValidQuestIds(questIdsFile);
        console.log(`📋 加载了 ${questIds.length} 个有效任务ID`);
        
        // 检查断点续传 - 过滤已下载的任务（基于文件存在性）
        const remainingQuests = questIds.filter(questId => {
            const cacheFile = path.join(this.questCacheDir, `${questId}.html`);
            return !fs.existsSync(cacheFile);
        });
        if (remainingQuests.length < questIds.length) {
            console.log(`📦 断点续传: 已下载 ${questIds.length - remainingQuests.length} 个任务，剩余 ${remainingQuests.length} 个`);
        }
        
        // 2. 下载所有任务页面
        console.log('📥 第一阶段: 下载任务页面...');
        if (remainingQuests.length > 0) {
            await this.downloadQuests(remainingQuests);
        } else {
            console.log('✅ 所有任务已下载完成');
        }
        
        // 3. 从任务页面提取物品ID
        console.log('🔍 第二阶段: 提取物品ID...');
        const allItemIds = new Set();
        let questsWithRewards = 0;
        
        for (const questId of questIds) {
            const itemIds = this.extractItemIdsFromQuestHTML(questId);
            if (itemIds.length > 0) {
                questsWithRewards++;
                itemIds.forEach(id => allItemIds.add(id));
            }
        }
        
        const uniqueItemIds = Array.from(allItemIds);
        console.log(`🎒 发现 ${uniqueItemIds.length} 个独特物品 (来自 ${questsWithRewards} 个有奖励的任务)`);
        
        // 检查断点续传 - 过滤已下载的物品（基于文件存在性）
        const remainingItems = uniqueItemIds.filter(itemId => {
            const cacheFile = path.join(this.itemCacheDir, `${itemId}.html`);
            return !fs.existsSync(cacheFile);
        });
        if (remainingItems.length < uniqueItemIds.length) {
            console.log(`📦 断点续传: 已下载 ${uniqueItemIds.length - remainingItems.length} 个物品，剩余 ${remainingItems.length} 个`);
        }
        
        // 4. 下载所有物品页面
        console.log('📥 第三阶段: 下载物品页面...');
        if (remainingItems.length > 0) {
            await this.downloadItems(remainingItems);
        } else {
            console.log('✅ 所有物品已下载完成');
        }
        
        console.log('🎉 所有任务奖励数据下载完成！');
        
        return {
            questCount: questIds.length,
            itemCount: uniqueItemIds.length,
            questsWithRewards: questsWithRewards
        };
    }

    /**
     * 从任务ID范围下载 (备用方法)
     */
    async downloadQuestRange(startId = 1, endId = 50000) {
        console.log(`📋 下载任务范围: ${startId} - ${endId}`);
        
        const questIds = [];
        for (let id = startId; id <= endId; id++) {
            questIds.push(id);
        }
        
        await this.downloadQuests(questIds);
    }

    /**
     * 清理并关闭
     */
    async cleanup() {
        if (this.driver) {
            await this.driver.quit();
            console.log('🔚 浏览器已关闭');
        }
    }
}

/**
 * 主函数
 */
async function main() {
    const downloader = new HTMLDownloader();
    
    // 检查缓存状态
    let cachedQuests = 0, cachedItems = 0;
    if (fs.existsSync(downloader.questCacheDir)) {
        cachedQuests = fs.readdirSync(downloader.questCacheDir).filter(f => f.endsWith('.html')).length;
    }
    if (fs.existsSync(downloader.itemCacheDir)) {
        cachedItems = fs.readdirSync(downloader.itemCacheDir).filter(f => f.endsWith('.html')).length;
    }
    
    if (cachedQuests > 0 || cachedItems > 0) {
        console.log(`📦 检测到缓存文件: ${cachedQuests} 个任务, ${cachedItems} 个物品`);
    }
    
    if (fs.existsSync(downloader.progressFile)) {
        const progressStats = downloader.progress;
        if (progressStats.failedQuests.length > 0 || progressStats.failedItems.length > 0) {
            console.log(`❌ 之前失败: ${progressStats.failedQuests.length} 个任务, ${progressStats.failedItems.length} 个物品`);
        }
    }
    
    try {
        await downloader.initDriver();
        
        // 使用正确的流程：从 valid-quest-ids.json 下载所有任务奖励
        const stats = await downloader.downloadAllQuestRewards();
        
        console.log('\n📊 下载统计:');
        console.log(`✅ 任务: ${stats.questCount} 个`);
        console.log(`✅ 有奖励的任务: ${stats.questsWithRewards} 个`);
        console.log(`✅ 独特物品: ${stats.itemCount} 个`);
        console.log('🎉 所有下载任务完成！');
        
    } catch (error) {
        console.error('❌ 下载过程发生错误:', error);
    } finally {
        await downloader.cleanup();
    }
}

// 如果直接运行此脚本
if (require.main === module) {
    main().catch(error => {
        console.error('❌ 程序异常退出:', error);
        process.exit(1);
    });
}

module.exports = HTMLDownloader;