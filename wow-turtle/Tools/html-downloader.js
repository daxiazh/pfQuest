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
            downloadedQuests: [],
            downloadedItems: [],
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
        options.addArguments('--headless');
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
    async downloadQuestHTML(questId) {
        const cacheFile = path.join(this.questCacheDir, `${questId}.html`);
        
        // 检查缓存是否存在
        if (fs.existsSync(cacheFile)) {
            console.log(`📋 任务 ${questId} 已缓存，跳过`);
            return true;
        }

        try {
            const url = `${this.baseUrl}/?quest=${questId}`;
            console.log(`🌐 下载任务 ${questId}: ${url}`);
            
            await this.driver.get(url);
            await this.driver.sleep(5000); // 等待Cloudflare加载
            
            // 等待页面真正加载完成
            let retries = 10;
            let html;
            while (retries > 0) {
                html = await this.driver.getPageSource();
                if (!html.includes('请稍候') && !html.includes('Checking your browser')) {
                    break;
                }
                console.log(`  等待任务页面加载... (${11 - retries}/10)`);
                await this.driver.sleep(2000);
                retries--;
            }
            
            // 验证页面内容
            if (html.includes('Quest not found') || html.length < 1000) {
                console.log(`❌ 任务 ${questId} 不存在或页面异常`);
                this.progress.failedQuests.push(questId);
                return false;
            }
            
            // 保存HTML到缓存
            fs.writeFileSync(cacheFile, html, 'utf8');
            this.progress.downloadedQuests.push(questId);
            console.log(`✅ 任务 ${questId} 下载完成`);
            
            return true;
        } catch (error) {
            console.error(`❌ 下载任务 ${questId} 失败:`, error.message);
            this.progress.failedQuests.push(questId);
            return false;
        }
    }

    /**
     * 下载物品HTML页面
     */
    async downloadItemHTML(itemId) {
        const cacheFile = path.join(this.itemCacheDir, `${itemId}.html`);
        
        // 检查缓存是否存在
        if (fs.existsSync(cacheFile)) {
            console.log(`🎒 物品 ${itemId} 已缓存，跳过`);
            return true;
        }

        try {
            const url = `${this.baseUrl}/?item=${itemId}`;
            console.log(`🌐 下载物品 ${itemId}: ${url}`);
            
            await this.driver.get(url);
            await this.driver.sleep(5000); // 等待Cloudflare加载
            
            // 等待页面真正加载完成
            let retries = 10;
            let html;
            while (retries > 0) {
                html = await this.driver.getPageSource();
                if (!html.includes('请稍候') && !html.includes('Checking your browser')) {
                    break;
                }
                console.log(`  等待物品页面加载... (${11 - retries}/10)`);
                await this.driver.sleep(2000);
                retries--;
            }
            
            // 验证页面内容
            if (html.includes('Item not found') || html.length < 1000) {
                console.log(`❌ 物品 ${itemId} 不存在或页面异常`);
                this.progress.failedItems.push(itemId);
                return false;
            }
            
            // 保存HTML到缓存
            fs.writeFileSync(cacheFile, html, 'utf8');
            this.progress.downloadedItems.push(itemId);
            console.log(`✅ 物品 ${itemId} 下载完成`);
            
            return true;
        } catch (error) {
            console.error(`❌ 下载物品 ${itemId} 失败:`, error.message);
            this.progress.failedItems.push(itemId);
            return false;
        }
    }

    /**
     * 批量下载任务列表
     */
    async downloadQuests(questIds) {
        console.log(`📋 开始下载 ${questIds.length} 个任务...`);
        
        let successCount = 0;
        let failCount = 0;
        
        for (const questId of questIds) {
            if (await this.downloadQuestHTML(questId)) {
                successCount++;
            } else {
                failCount++;
            }
            
            // 每10个任务保存一次进度
            if ((successCount + failCount) % 10 === 0) {
                this.saveProgress();
            }
            
            // 请求间隔，避免被封
            await this.driver.sleep(500);
        }
        
        console.log(`📊 任务下载完成: 成功 ${successCount}, 失败 ${failCount}`);
        this.saveProgress();
    }

    /**
     * 批量下载物品列表
     */
    async downloadItems(itemIds) {
        console.log(`🎒 开始下载 ${itemIds.length} 个物品...`);
        
        let successCount = 0;
        let failCount = 0;
        
        for (const itemId of itemIds) {
            if (await this.downloadItemHTML(itemId)) {
                successCount++;
            } else {
                failCount++;
            }
            
            // 每10个物品保存一次进度
            if ((successCount + failCount) % 10 === 0) {
                this.saveProgress();
            }
            
            // 请求间隔，避免被封
            await this.driver.sleep(500);
        }
        
        console.log(`📊 物品下载完成: 成功 ${successCount}, 失败 ${failCount}`);
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
        
        // 检查断点续传 - 过滤已下载的任务
        const remainingQuests = questIds.filter(questId => !this.progress.downloadedQuests.includes(questId));
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
        
        // 检查断点续传 - 过滤已下载的物品
        const remainingItems = uniqueItemIds.filter(itemId => !this.progress.downloadedItems.includes(itemId));
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
    
    // 检查进度文件是否存在
    if (fs.existsSync(downloader.progressFile)) {
        const progressStats = downloader.progress;
        console.log(`📦 检测到进度文件: 已下载 ${progressStats.downloadedQuests.length} 个任务, ${progressStats.downloadedItems.length} 个物品`);
        console.log(`❌ 失败: ${progressStats.failedQuests.length} 个任务, ${progressStats.failedItems.length} 个物品`);
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