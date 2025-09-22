/**
 * 任务数据合并器
 * 模拟 pfQuest 的 patchtable 函数逻辑，合并基础任务数据和乌龟服数据
 */

const fs = require('fs');
const path = require('path');
const LuaParser = require('./lua-parser');

class QuestDataMerger {
    constructor() {
        this.parser = new LuaParser();
        this.baseData = {};
        this.turtleData = {};
        this.mergedData = {};
    }

    /**
     * 执行数据合并流程
     * @returns {Object} 合并结果统计
     */
    async mergeQuestData() {
        console.log('开始合并任务数据...');
        
        // 1. 加载基础任务数据
        await this.loadBaseData();
        
        // 2. 加载乌龟服任务数据
        await this.loadTurtleData();
        
        // 3. 执行合并操作
        this.performMerge();
        
        // 4. 生成统计信息
        const stats = this.generateStats();
        
        console.log('任务数据合并完成！');
        console.log(`基础任务数量: ${stats.baseCount}`);
        console.log(`乌龟服任务数量: ${stats.turtleCount}`);
        console.log(`合并后有效任务数量: ${stats.validCount}`);
        console.log(`删除的任务数量: ${stats.deletedCount}`);
        
        return {
            mergedData: this.mergedData,
            stats: stats
        };
    }

    /**
     * 加载基础任务数据
     */
    async loadBaseData() {
        const questsPath = '../pfQuest/db/quests.lua';
        console.log(`加载基础任务数据: ${questsPath}`);
        
        const parsed = this.parser.parseFile(questsPath);
        if (parsed.data) {
            this.baseData = parsed.data;
            console.log(`成功加载 ${Object.keys(this.baseData).length} 个基础任务`);
        } else {
            console.warn('基础任务数据加载失败');
        }
    }

    /**
     * 加载乌龟服任务数据
     */
    async loadTurtleData() {
        const turtleQuestsPath = '../pfQuest-turtle/db/quests-turtle.lua';
        console.log(`加载乌龟服任务数据: ${turtleQuestsPath}`);
        
        const parsed = this.parser.parseFile(turtleQuestsPath);
        if (parsed.data) {
            this.turtleData = parsed.data;
            console.log(`成功加载 ${Object.keys(this.turtleData).length} 个乌龟服任务数据项`);
        } else {
            console.warn('乌龟服任务数据加载失败');
        }
    }

    /**
     * 执行数据合并操作（模拟 patchtable 函数）
     */
    performMerge() {
        console.log('执行数据合并...');
        
        // 1. 复制基础数据作为起点
        this.mergedData = JSON.parse(JSON.stringify(this.baseData));
        
        // 2. 应用乌龟服数据补丁
        this.applyPatch(this.mergedData, this.turtleData);
        
        console.log('数据合并完成');
    }

    /**
     * 应用数据补丁（模拟 patchtable 函数逻辑）
     * @param {Object} base - 基础数据对象
     * @param {Object} diff - 补丁数据对象
     */
    applyPatch(base, diff) {
        for (const [key, value] of Object.entries(diff)) {
            if (typeof value === 'string' && value === '_') {
                // 删除操作：值为 "_" 时删除对应项
                delete base[key];
                console.log(`删除任务: ${key}`);
            } else {
                // 覆盖/新增操作
                if (base[key]) {
                    console.log(`覆盖任务: ${key}`);
                } else {
                    console.log(`新增任务: ${key}`);
                }
                base[key] = value;
            }
        }
    }

    /**
     * 生成合并统计信息
     * @returns {Object} 统计信息对象
     */
    generateStats() {
        const baseCount = Object.keys(this.baseData).length;
        const turtleCount = Object.keys(this.turtleData).length;
        const validCount = Object.keys(this.mergedData).length;
        
        // 计算删除的任务数量
        const deletedCount = Object.values(this.turtleData)
            .filter(value => typeof value === 'string' && value === '_').length;
        
        return {
            baseCount,
            turtleCount,
            validCount,
            deletedCount,
            addedCount: turtleCount - deletedCount
        };
    }

    /**
     * 获取所有有效的任务ID列表
     * @returns {Array<number>} 有效任务ID数组
     */
    getValidQuestIds() {
        return Object.keys(this.mergedData)
            .map(id => parseInt(id))
            .sort((a, b) => a - b);
    }

    /**
     * 获取详细的任务信息
     * @returns {Object} 详细任务信息
     */
    getDetailedQuestInfo() {
        const questIds = this.getValidQuestIds();
        const questInfo = {};
        
        for (const id of questIds) {
            const quest = this.mergedData[id];
            questInfo[id] = {
                level: quest.lvl || null,
                minLevel: quest.min || null,
                race: quest.race || null,
                hasStart: !!(quest.start),
                hasEnd: !!(quest.end),
                hasObjectives: !!(quest.obj),
                hasPrerequisites: !!(quest.pre),
                source: this.baseData[id] ? 
                    (this.turtleData[id] ? 'merged' : 'base') : 'turtle'
            };
        }
        
        return questInfo;
    }

    /**
     * 导出合并后的数据到 JSON 文件
     * @param {string} outputPath - 输出文件路径
     * @param {Object} options - 导出选项
     */
    exportToJson(outputPath, options = {}) {
        const {
            includeFullData = false,
            includeStats = true,
            includeDetailedInfo = false
        } = options;
        
        const exportData = {
            timestamp: new Date().toISOString(),
            validQuestIds: this.getValidQuestIds()
        };
        
        if (includeStats) {
            exportData.stats = this.generateStats();
        }
        
        if (includeDetailedInfo) {
            exportData.questInfo = this.getDetailedQuestInfo();
        }
        
        if (includeFullData) {
            exportData.fullData = this.mergedData;
        }
        
        fs.writeFileSync(outputPath, JSON.stringify(exportData, null, 2), 'utf8');
        console.log(`数据已导出到: ${outputPath}`);
        
        return exportData;
    }
}

module.exports = QuestDataMerger;