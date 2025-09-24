#!/usr/bin/env node

/**
 * 任务奖励数据转换工具
 * 将 quest-rewards-selenium.json 转换为 pfQuest-turtle 兼容的 Lua 数据格式
 */

const fs = require('fs');
const path = require('path');

// WoW 品质映射
const qualityToNumber = {
  'Poor': 0,
  'Common': 1,
  'Uncommon': 2,
  'Rare': 3,
  'Epic': 4,
  'Legendary': 5,
  'Artifact': 6
};

// WoW ItemClass 映射 (基于官方API)
const WOW_ITEM_CLASS = {
  'Consumable': 0,
  'Container': 1,
  'Weapon': 2,
  'Gem': 3,
  'Armor': 4,
  'Reagent': 5,
  'Tradeskill': 7,
  'Recipe': 9,
  'Quest': 12,
  'Miscellaneous': 15
};

// WoW Armor SubClass 映射
const WOW_ARMOR_SUBCLASS = {
  'Miscellaneous': 0,  // 饰品、戒指、项链
  'Cloth': 1,
  'Leather': 2,
  'Mail': 3,
  'Plate': 4,
  'Shield': 6
};

// WoW Weapon SubClass 映射
const WOW_WEAPON_SUBCLASS = {
  'Axe': 0,           // 单手斧 (默认)
  'Axe2H': 1,         // 双手斧
  'Bow': 2,
  'Gun': 3,
  'Mace': 4,          // 单手锤 (默认)
  'Mace2H': 5,        // 双手锤
  'Polearm': 6,
  'Sword': 7,         // 单手剑 (默认)
  'Sword2H': 8,       // 双手剑
  'Staff': 10,
  'Fist': 13,         // 拳套
  'Dagger': 15,
  'Thrown': 16,
  'Crossbow': 18,
  'Wand': 19
};

/**
 * 根据物品数据获取 WoW ItemType
 * @param {Object} itemData - 物品数据
 * @returns {Object} {class: number, subclass: number}
 */
function getWoWItemType(itemData) {
  const type = itemData.type;
  const subtype = itemData.subtype;
  const slot = itemData.slot;

  // 护甲类型
  if (type === 'Armor') {
    if (subtype === 'Cloth') return { class: 4, subclass: 1 };
    if (subtype === 'Leather') return { class: 4, subclass: 2 };
    if (subtype === 'Mail') return { class: 4, subclass: 3 };
    if (subtype === 'Plate') return { class: 4, subclass: 4 };
    if (subtype === 'Shield') return { class: 4, subclass: 6 };
    
    // 饰品类：根据装备位置判断
    if (slot === 'Trinket' || slot === 'Finger' || slot === 'Neck' || 
        slot === 'Back' || slot === 'Shirt' || slot === 'Tabard') {
      return { class: 4, subclass: 0 };
    }
    
    return { class: 4, subclass: 0 }; // 默认护甲杂项
  }

  // 武器类型
  if (type === 'Weapon') {
    if (subtype === 'Dagger') return { class: 2, subclass: 15 };
    if (subtype === 'Sword') return { class: 2, subclass: 7 };   // 默认单手剑
    if (subtype === 'Axe') return { class: 2, subclass: 0 };     // 默认单手斧
    if (subtype === 'Bow') return { class: 2, subclass: 2 };
    if (subtype === 'Gun') return { class: 2, subclass: 3 };
    if (subtype === 'Crossbow') return { class: 2, subclass: 18 };
    if (subtype === 'Staff') return { class: 2, subclass: 10 };
    if (subtype === 'Wand') return { class: 2, subclass: 19 };
    if (subtype === 'Mace') return { class: 2, subclass: 4 };    // 默认单手锤
    if (subtype === 'Polearm') return { class: 2, subclass: 6 };
    if (subtype === 'Fist Weapon') return { class: 2, subclass: 13 };
    if (subtype === 'Thrown') return { class: 2, subclass: 16 };
    
    return { class: 2, subclass: 0 }; // 默认单手斧
  }

  // 其他物品类型
  if (type === 'Consumable') return { class: 0, subclass: 0 };
  if (type === 'Container') return { class: 1, subclass: 0 };
  if (type === 'Recipe') return { class: 9, subclass: 0 };
  if (type === 'Quest') return { class: 12, subclass: 0 };
  if (type === 'Trade Goods') return { class: 7, subclass: 0 };
  if (type === 'Gem') return { class: 3, subclass: 0 };

  // 特殊处理：Miscellaneous 类型中的装备
  if (type === 'Miscellaneous') {
    if (slot === 'Trinket' || slot === 'Held In Off-Hand' || slot === 'Off Hand') {
      return { class: 4, subclass: 0 }; // 护甲杂项
    }
    if (slot === 'Ranged') {
      return { class: 2, subclass: 2 }; // 默认为弓
    }
  }

  return { class: 15, subclass: 0 }; // 默认杂项
}

/**
 * 加载现有的物品名称数据
 * @param {Array<string>} filePaths - 物品数据文件路径列表
 * @returns {Set<number>} 已存在的物品ID集合
 */
function loadExistingItemNames(filePaths) {
  const existingItems = new Set();
  
  filePaths.forEach(filePath => {
    if (fs.existsSync(filePath)) {
      try {
        const content = fs.readFileSync(filePath, 'utf8');
        
        // 简单解析 Lua 数组格式: [itemId] = "name"
        const matches = content.match(/\[(\d+)\]\s*=\s*"[^"]*"/g);
        if (matches) {
          matches.forEach(match => {
            const idMatch = match.match(/\[(\d+)\]/);
            if (idMatch) {
              existingItems.add(parseInt(idMatch[1]));
            }
          });
        }
      } catch (error) {
        console.warn(`警告: 读取文件 ${filePath} 失败: ${error.message}`);
      }
    }
  });
  
  return existingItems;
}

/**
 * 生成 Lua 数组格式的字符串
 * @param {Object} data - 数据对象
 * @param {boolean} isStringValue - 值是否为字符串类型
 * @returns {string} Lua 格式的数据
 */
function generateLuaArray(data, isStringValue = false) {
  const entries = Object.entries(data).map(([key, value]) => {
    if (isStringValue) {
      // 转义引号
      const escapedValue = value.replace(/"/g, '\\"');
      return `    [${key}] = "${escapedValue}",`;
    } else if (Array.isArray(value)) {
      return `    [${key}] = {${value.join(', ')}},`;
    } else {
      return `    [${key}] = ${value},`;
    }
  });
  
  return entries.join('\n');
}

/**
 * 主转换函数
 */
async function convertQuestRewardsToLua() {
  console.log('🚀 开始转换任务奖励数据...');
  
  // 1. 读取源数据
  const inputFile = path.join(__dirname, 'output', 'quest-rewards-selenium.json');
  if (!fs.existsSync(inputFile)) {
    throw new Error(`输入文件不存在: ${inputFile}`);
  }
  
  console.log('📂 读取源数据文件...');
  const jsonData = JSON.parse(fs.readFileSync(inputFile, 'utf8'));
  
  // 2. 加载现有物品名称
  console.log('🔍 加载现有物品数据...');
  const existingItemFiles = [
    path.join(__dirname, '../pfQuest/db/zhCN/items.lua'),
    path.join(__dirname, '../pfQuest-turtle/db/zhCN/items-turtle.lua')
  ];
  const existingItems = loadExistingItemNames(existingItemFiles);
  console.log(`   已加载 ${existingItems.size} 个现有物品`);
  
  // 3. 处理任务奖励数据
  console.log('⚙️ 处理任务奖励数据...');
  const questRewards = {};
  let questCount = 0;
  
  for (const [questId, questData] of Object.entries(jsonData.questRewards)) {
    const allItems = [
      ...questData.rewardItems.map(item => item.itemId),
      ...questData.choiceItems.map(item => item.itemId)
    ];
    
    if (allItems.length > 0) {
      questRewards[questId] = allItems;
      questCount++;
    }
  }
  
  console.log(`   处理了 ${questCount} 个有奖励的任务`);
  
  // 4. 处理物品属性数据
  console.log('⚙️ 处理物品属性数据...');
  const itemProps = {};
  const newItemNames = {};
  let newItemCount = 0;
  
  for (const [itemId, itemData] of Object.entries(jsonData.itemDetails)) {
    // 获取物品属性
    const quality = qualityToNumber[itemData.quality] || 1;
    const { class: itemClass, subclass } = getWoWItemType(itemData);
    
    itemProps[itemId] = [quality, itemClass, subclass];
    
    // 检查是否需要添加物品名称
    if (!existingItems.has(parseInt(itemId))) {
      newItemNames[itemId] = itemData.name;
      newItemCount++;
    }
  }
  
  console.log(`   处理了 ${Object.keys(itemProps).length} 个物品属性`);
  console.log(`   发现 ${newItemCount} 个新物品需要添加名称`);
  
  // 5. 生成输出目录
  const outputDir = path.join(__dirname, '../pfQuest-turtle/db');
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
  }
  
  // 6. 生成任务奖励文件
  console.log('📝 生成任务奖励数据文件...');
  const questRewardsLua = `-- 任务奖励数据 (自动生成)
-- 格式: [questId] = { itemId1, itemId2, ... }

pfDB["quest-rewards-turtle"] = {
  ["data"] = {
${generateLuaArray(questRewards)}
  }
}`;
  
  fs.writeFileSync(path.join(outputDir, 'quest-rewards-turtle.lua'), questRewardsLua, 'utf8');
  
  // 7. 生成物品属性文件
  console.log('📝 生成物品属性数据文件...');
  const itemPropsLua = `-- 物品属性数据 (自动生成)
-- 格式: [itemId] = {quality, class, subclass}
-- quality: 0=Poor, 1=Common, 2=Uncommon, 3=Rare, 4=Epic, 5=Legendary, 6=Artifact
-- class: 0=Consumable, 1=Container, 2=Weapon, 4=Armor, 7=TradeGoods, 9=Recipe, 12=Quest, 15=Misc
-- subclass: 参考 WoW ItemType API

pfDB["item-props-turtle"] = {
  ["data"] = {
${generateLuaArray(itemProps)}
  }
}`;
  
  fs.writeFileSync(path.join(outputDir, 'item-props-turtle.lua'), itemPropsLua, 'utf8');
  
  // 8. 生成新增物品名称文件
  if (newItemCount > 0) {
    console.log('📝 生成新增物品名称文件...');
    const zhCNDir = path.join(outputDir, 'zhCN');
    if (!fs.existsSync(zhCNDir)) {
      fs.mkdirSync(zhCNDir, { recursive: true });
    }
    
    const questItemsLua = `-- 任务奖励物品名称 (自动生成)
-- 仅包含原 pfQuest 数据中不存在的物品

pfDB["quest-items-turtle"] = {
  ["zhCN"] = {
${generateLuaArray(newItemNames, true)}
  }
}`;
    
    fs.writeFileSync(path.join(zhCNDir, 'quest-items-turtle.lua'), questItemsLua, 'utf8');
  }
  
  // 9. 生成统计报告
  console.log('\n📊 转换完成统计:');
  console.log(`✅ 任务奖励: ${questCount} 个任务`);
  console.log(`✅ 物品属性: ${Object.keys(itemProps).length} 个物品`);
  console.log(`✅ 新增物品名称: ${newItemCount} 个物品`);
  console.log(`\n📁 生成的文件:`);
  console.log(`   - pfQuest-turtle/db/quest-rewards-turtle.lua`);
  console.log(`   - pfQuest-turtle/db/item-props-turtle.lua`);
  if (newItemCount > 0) {
    console.log(`   - pfQuest-turtle/db/zhCN/quest-items-turtle.lua`);
  }
  
  console.log('\n🎉 数据转换完成！');
}

// 如果直接运行此脚本
if (require.main === module) {
  convertQuestRewardsToLua().catch(error => {
    console.error('❌ 转换失败:', error.message);
    process.exit(1);
  });
}

module.exports = { convertQuestRewardsToLua, getWoWItemType };