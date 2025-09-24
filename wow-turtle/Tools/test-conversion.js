#!/usr/bin/env node

/**
 * 测试数据转换结果
 */

const fs = require('fs');
const path = require('path');

function testConversion() {
  console.log('🧪 测试数据转换结果...\n');
  
  // 1. 检查生成的文件
  const files = [
    '../pfQuest-turtle/db/quest-rewards-turtle.lua',
    '../pfQuest-turtle/db/item-props-turtle.lua'
  ];
  
  files.forEach(file => {
    const filePath = path.join(__dirname, file);
    if (fs.existsSync(filePath)) {
      const stats = fs.statSync(filePath);
      console.log(`✅ ${file}`);
      console.log(`   文件大小: ${(stats.size / 1024).toFixed(1)} KB`);
    } else {
      console.log(`❌ ${file} - 文件不存在`);
    }
  });
  
  // 2. 解析任务奖励数据
  const questRewardsPath = path.join(__dirname, '../pfQuest-turtle/db/quest-rewards-turtle.lua');
  if (fs.existsSync(questRewardsPath)) {
    const content = fs.readFileSync(questRewardsPath, 'utf8');
    
    // 计算任务数量
    const questMatches = content.match(/\[\d+\]\s*=\s*\{[^}]+\}/g);
    const questCount = questMatches ? questMatches.length : 0;
    
    console.log(`\n📊 任务奖励数据统计:`);
    console.log(`   任务数量: ${questCount}`);
    
    // 显示几个示例
    if (questMatches && questMatches.length > 0) {
      console.log(`\n📝 示例数据:`);
      questMatches.slice(0, 5).forEach(match => {
        console.log(`   ${match}`);
      });
    }
  }
  
  // 3. 解析物品属性数据
  const itemPropsPath = path.join(__dirname, '../pfQuest-turtle/db/item-props-turtle.lua');
  if (fs.existsSync(itemPropsPath)) {
    const content = fs.readFileSync(itemPropsPath, 'utf8');
    
    // 计算物品数量
    const itemMatches = content.match(/\[\d+\]\s*=\s*\{[^}]+\}/g);
    const itemCount = itemMatches ? itemMatches.length : 0;
    
    console.log(`\n📊 物品属性数据统计:`);
    console.log(`   物品数量: ${itemCount}`);
    
    // 分析品质分布
    const qualityCount = { 0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0 };
    const classCount = {};
    
    if (itemMatches) {
      itemMatches.forEach(match => {
        const valuesMatch = match.match(/\{(\d+),\s*(\d+),\s*(\d+)\}/);
        if (valuesMatch) {
          const quality = parseInt(valuesMatch[1]);
          const itemClass = parseInt(valuesMatch[2]);
          
          qualityCount[quality] = (qualityCount[quality] || 0) + 1;
          classCount[itemClass] = (classCount[itemClass] || 0) + 1;
        }
      });
    }
    
    console.log(`\n🎨 品质分布:`);
    const qualityNames = ['劣质', '普通', '优秀', '精良', '史诗', '传说', '神器'];
    Object.entries(qualityCount).forEach(([quality, count]) => {
      if (count > 0) {
        console.log(`   ${qualityNames[quality]} (${quality}): ${count} 个`);
      }
    });
    
    console.log(`\n📦 类型分布:`);
    const classNames = {
      0: '消耗品', 1: '容器', 2: '武器', 4: '护甲', 
      7: '商品', 9: '配方', 12: '任务物品', 15: '杂项'
    };
    Object.entries(classCount).forEach(([itemClass, count]) => {
      const name = classNames[itemClass] || `未知(${itemClass})`;
      console.log(`   ${name}: ${count} 个`);
    });
    
    // 显示几个示例
    console.log(`\n📝 示例数据:`);
    if (itemMatches && itemMatches.length > 0) {
      itemMatches.slice(0, 5).forEach(match => {
        console.log(`   ${match}`);
      });
    }
  }
  
  console.log(`\n🎉 测试完成！`);
}

// 运行测试
if (require.main === module) {
  testConversion();
}