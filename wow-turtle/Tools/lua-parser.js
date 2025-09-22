/**
 * Lua 数据文件解析器
 * 解析 pfQuest 中的 Lua 数据文件格式
 */

const fs = require('fs');

class LuaParser {
    constructor() {
        this.bracketLevel = 0;
        this.currentKey = null;
        this.result = {};
    }

    /**
     * 解析 Lua 数据文件
     * @param {string} filePath - Lua 文件路径
     * @returns {Object} 解析后的数据对象
     */
    parseFile(filePath) {
        if (!fs.existsSync(filePath)) {
            console.warn(`文件不存在: ${filePath}`);
            return {};
        }

        const content = fs.readFileSync(filePath, 'utf8');
        return this.parseContent(content);
    }

    /**
     * 解析 Lua 内容字符串
     * @param {string} content - Lua 文件内容
     * @returns {Object} 解析后的数据对象
     */
    parseContent(content) {
        // 移除注释
        content = this.removeComments(content);
        
        // 查找主要的数据表定义
        const dataMatch = content.match(/pfDB\[["'](\w+)["']\]\[["']([^"']+)["']\]\s*=\s*\{([\s\S]*)\}/);
        
        if (!dataMatch) {
            console.warn('未找到有效的 pfDB 数据定义');
            return {};
        }

        const [, category, subcategory, dataContent] = dataMatch;
        
        // 解析数据内容
        const parsedData = this.parseDataContent(dataContent);
        
        return {
            category,
            subcategory,
            data: parsedData
        };
    }

    /**
     * 移除 Lua 注释
     * @param {string} content - 原始内容
     * @returns {string} 移除注释后的内容
     */
    removeComments(content) {
        // 移除单行注释 --
        content = content.replace(/--[^\r\n]*/g, '');
        
        // 移除多行注释 --[[ ]]
        content = content.replace(/--\[\[[\s\S]*?\]\]/g, '');
        
        return content;
    }

    /**
     * 解析数据内容部分
     * @param {string} content - 数据内容字符串
     * @returns {Object} 解析后的数据对象
     */
    parseDataContent(content) {
        const result = {};
        
        // 匹配所有的键值对 [id] = { ... } 或 [id] = "value"
        const entryRegex = /\[\s*(\d+)\s*\]\s*=\s*([^,\n]+(?:\{[^}]*\}|"[^"]*"|'[^']*'|[^,\n]*))(?:,|\s*$)/g;
        
        let match;
        while ((match = entryRegex.exec(content)) !== null) {
            const [, id, value] = match;
            const numId = parseInt(id);
            
            if (value.trim() === '"_"' || value.trim() === "'_'") {
                // 标记为删除
                result[numId] = '_';
            } else if (value.startsWith('{')) {
                // 解析对象
                result[numId] = this.parseObject(value);
            } else {
                // 简单值
                result[numId] = this.parseValue(value);
            }
        }
        
        return result;
    }

    /**
     * 解析对象 {...}
     * @param {string} objStr - 对象字符串
     * @returns {Object} 解析后的对象
     */
    parseObject(objStr) {
        const obj = {};
        
        // 移除外层的大括号
        const content = objStr.slice(1, -1).trim();
        
        if (!content) return obj;
        
        // 匹配对象中的键值对
        const kvRegex = /\["([^"]+)"\]\s*=\s*([^,\n]+(?:\{[^}]*\}|"[^"]*"|'[^']*'|[^,\n]*))(?:,|\s*$)/g;
        
        let match;
        while ((match = kvRegex.exec(content)) !== null) {
            const [, key, value] = match;
            
            if (value.startsWith('{')) {
                obj[key] = this.parseArray(value);
            } else {
                obj[key] = this.parseValue(value);
            }
        }
        
        return obj;
    }

    /**
     * 解析数组 {...}
     * @param {string} arrStr - 数组字符串
     * @returns {Array} 解析后的数组
     */
    parseArray(arrStr) {
        const arr = [];
        
        // 移除外层的大括号
        const content = arrStr.slice(1, -1).trim();
        
        if (!content) return arr;
        
        // 简单处理：按逗号分割并解析每个值
        const items = content.split(',').map(item => item.trim());
        
        for (const item of items) {
            if (item) {
                arr.push(this.parseValue(item));
            }
        }
        
        return arr;
    }

    /**
     * 解析单个值
     * @param {string} valueStr - 值字符串
     * @returns {*} 解析后的值
     */
    parseValue(valueStr) {
        valueStr = valueStr.trim();
        
        // 字符串
        if ((valueStr.startsWith('"') && valueStr.endsWith('"')) ||
            (valueStr.startsWith("'") && valueStr.endsWith("'"))) {
            return valueStr.slice(1, -1);
        }
        
        // 数字
        if (/^\d+\.?\d*$/.test(valueStr)) {
            return valueStr.includes('.') ? parseFloat(valueStr) : parseInt(valueStr);
        }
        
        // 布尔值
        if (valueStr === 'true') return true;
        if (valueStr === 'false') return false;
        
        // 其他情况返回原字符串
        return valueStr;
    }
}

module.exports = LuaParser;