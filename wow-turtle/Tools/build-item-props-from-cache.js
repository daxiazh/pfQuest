#!/usr/bin/env node

/**
 * 从本地缓存的 items HTML 解析生成 pfQuest/db/item-props.lua
 * 仅输出 {quality, class, subclass} 三元组
 *
 * 质量: 0=Poor, 1=Common, 2=Uncommon, 3=Rare, 4=Epic, 5=Legendary, 6=Artifact
 * class: 0=Consumable, 1=Container, 2=Weapon, 4=Armor, 7=TradeGoods, 9=Recipe, 12=Quest, 15=Misc
 * subclass: 按 pfQuest 现有编号体系
 */

const fs = require('fs');
const path = require('path');
const cheerio = require('cheerio');

const TOOLS_DIR = __dirname;
const CACHE_ITEMS_DIR = path.join(TOOLS_DIR, 'cache', 'items');
const OUTPUT_LUA = path.join(TOOLS_DIR, '..', 'pfQuest', 'db', 'item-props.lua');

function readHtml(filePath) {
  try {
    return fs.readFileSync(filePath, 'utf8');
  } catch (e) {
    return null;
  }
}

function getTooltipElement($, itemId) {
  // 优先 #tooltip{itemId}-generic table，再退化
  let el = $(`#tooltip${itemId}-generic table`).first();
  if (el.length === 0) el = $(`#tooltip${itemId}-generic`).first();
  if (el.length === 0) el = $(`.tooltip`).first();
  if (el.length === 0) el = $('body');
  return el;
}

function extractNameAndQuality(tooltipElementHtml) {
  // <b class="q1">Name</b>
  const m = tooltipElementHtml && tooltipElementHtml.match(/<b\s+class="q(\d+)"[^>]*>([^<]+)<\/b>/i);
  if (!m) return { name: '', quality: null };
  const quality = parseInt(m[1], 10);
  const name = (m[2] || '').trim();
  return { name, quality: isNaN(quality) ? null : quality };
}

const ARMOR_SUBCLASS = {
  // class = 4
  Cloth: 1,
  Leather: 2,
  Mail: 3,
  Plate: 4,
  Shield: 6,
  Miscellaneous: 0,
};

const SPECIAL_ARMOR_SLOTS = new Set([
  'Trinket',
  'Held In Off-Hand',
  'Off Hand', // 非盾副手法器按 Armor/Misc 处理
  'Ranged',   // 披风/戒指/项链/衬衫/战袍等也统一 Armor/0
  'Shirt',
  'Tabard',
  'Finger',
  'Neck',
  'Back',
]);

// Weapon 子类编号（pfQuest 现用）
const WEAPON_SUBCLASS_ONEHAND = {
  // class = 2
  Axe: 0,
  Sword: 7,
  Mace: 4,
  Dagger: 15,
  Fist: 13, // Fist Weapon
};

const WEAPON_SUBCLASS_TWOHAND = {
  Axe: 1,
  Sword: 8,
  Mace: 5,
  Polearm: 6,
  Staff: 10,
};

const WEAPON_SUBCLASS_RANGED = {
  Bow: 2,
  Gun: 3,
  Crossbow: 18,
  Wand: 19,
  Thrown: 16,
  'Fishing Pole': 20,
};

function normalizeSubtypeText(text) {
  return (text || '').trim();
}

function isTwoHand(slotText) {
  return /Two[-\s]?Hand/i.test(slotText || '');
}

function isOneHand(slotText) {
  // 包含 One-Hand 或 Main Hand / Off Hand 可视为单手
  return /One[-\s]?Hand/i.test(slotText || '') || /Main Hand|Off Hand/i.test(slotText || '');
}

function parseEquip(tooltipElement, tooltipText) {
  // 查找第一张结构表: <table width="100%"><tr><td>slot</td><th>subtype</th></tr>
  const table = tooltipElement.find('table[width="100%"]').first();
  const slotText = table.find('td').first().text().trim();
  const subtypeText = table.find('th').first().text().trim();

  if (!slotText && !subtypeText) {
    return null; // 非装备
  }

  // 盾牌特判（副手盾）
  if (/Off Hand/i.test(slotText) && /Shield/i.test(tooltipText)) {
    return { classId: 4, subId: ARMOR_SUBCLASS['Shield'] };
  }

  // Armor 子类
  if (ARMOR_SUBCLASS.hasOwnProperty(subtypeText)) {
    return { classId: 4, subId: ARMOR_SUBCLASS[subtypeText] };
  }

  // Weapon 子类
  // 根据 slotText 判断单/双手
  if (subtypeText) {
    const subtype = normalizeSubtypeText(subtypeText);

    // Ranged 类
    if (WEAPON_SUBCLASS_RANGED.hasOwnProperty(subtype)) {
      return { classId: 2, subId: WEAPON_SUBCLASS_RANGED[subtype] };
    }

    // 单手
    if (isOneHand(slotText)) {
      // Fist Weapon 显式匹配
      if (/Fist/i.test(subtype)) {
        return { classId: 2, subId: WEAPON_SUBCLASS_ONEHAND['Fist'] };
      }
      if (WEAPON_SUBCLASS_ONEHAND.hasOwnProperty(subtype)) {
        return { classId: 2, subId: WEAPON_SUBCLASS_ONEHAND[subtype] };
      }
    }

    // 双手
    if (isTwoHand(slotText)) {
      if (WEAPON_SUBCLASS_TWOHAND.hasOwnProperty(subtype)) {
        return { classId: 2, subId: WEAPON_SUBCLASS_TWOHAND[subtype] };
      }
    }

    // 未能明确单/双手，但 subtype 是武器类时，尝试合理回退
    if (WEAPON_SUBCLASS_ONEHAND.hasOwnProperty(subtype)) {
      return { classId: 2, subId: WEAPON_SUBCLASS_ONEHAND[subtype] };
    }
    if (WEAPON_SUBCLASS_TWOHAND.hasOwnProperty(subtype)) {
      return { classId: 2, subId: WEAPON_SUBCLASS_TWOHAND[subtype] };
    }
  }

  // 仅有 slot，无 subtype: 特殊槽位 → Armor/Misc
  if (slotText && !subtypeText) {
    if (SPECIAL_ARMOR_SLOTS.has(slotText)) {
      return { classId: 4, subId: 0 };
    }
    // 未知槽位，按 Armor/Misc 兜底
    return { classId: 4, subId: 0 };
  }

  // 仍未识别到明确装备子类，按 Armor/Misc 兜底（避免错误归为武器）
  return { classId: 4, subId: 0 };
}

function parseNonEquip(name, tooltipText) {
  const text = `${name || ''} ${tooltipText || ''}`;

  // Container: "12 Slot Bag|Quiver|Ammo Pouch"
  const bagMatch = tooltipText && tooltipText.match(/(\d+)\s+Slot\s+(Bag|Quiver|Ammo Pouch)/i);
  if (bagMatch) {
    return { classId: 1, subId: 0 };
  }

  // Quest
  if (/Quest Item/i.test(tooltipText) ||
      /This Item Begins a Quest/i.test(tooltipText) ||
      /Starts a quest/i.test(tooltipText) ||
      /Right Click to begin a quest/i.test(tooltipText)) {
    return { classId: 12, subId: 0 };
  }

  // Recipe: 有 "Use:" 且同时含 "Requires "（职业），避免把一般消耗品/装备误判为配方
  if (/Use:/i.test(tooltipText) && /Requires\s+[A-Z]/i.test(tooltipText) && !/Requires Level/i.test(tooltipText)) {
    return { classId: 9, subId: 0 };
  }

  // Consumable: 有 "Use:" 但不是 Recipe/Quest
  if (/Use:/i.test(tooltipText)) {
    return { classId: 0, subId: 0 };
  }

  // Trade Goods（材料）
  const tradeKeywords = [
    'Bar','Ore','Ingot','Leather','Cloth','Thread','Oil','Essence','Dust','Shard','Crystal','Gem','Stone',
    'Herb','Root','Petal','Seed','Moss','Scale','Hide','Bone','Fang','Claw','Feather','Silk','Wool','Cotton','Linen'
  ];
  if (tradeKeywords.some(k => text.includes(k))) {
    return { classId: 7, subId: 0 };
  }

  // 其他 → 杂项
  return { classId: 15, subId: 0 };
}

function parseItemTriplet(html, itemId) {
  const $ = cheerio.load(html);
  const tooltipEl = getTooltipElement($, itemId);
  const tooltipHtml = tooltipEl.html() || '';
  const tooltipText = tooltipEl.text() || '';

  // 名称和品质
  const { name, quality } = extractNameAndQuality(tooltipHtml);
  if (quality == null) {
    throw new Error(`Item ${itemId}: 无法解析品质`);
  }

  // 装备优先
  let classId = null;
  let subId = null;

  const equip = parseEquip(tooltipEl, tooltipText);
  if (equip) {
    classId = equip.classId;
    subId = equip.subId;
  } else {
    const nonEquip = parseNonEquip(name, tooltipText);
    classId = nonEquip.classId;
    subId = nonEquip.subId;
  }

  return { quality, classId, subId };
}

function writeLua(outputMap) {
  const ids = Object.keys(outputMap).map(n => parseInt(n, 10)).sort((a, b) => a - b);
  const lines = [];

  lines.push('-- 物品属性数据 (自动生成)');
  lines.push('-- 格式: [itemId] = {quality, class, subclass}');
  lines.push('-- quality: 0=Poor, 1=Common, 2=Uncommon, 3=Rare, 4=Epic, 5=Legendary, 6=Artifact');
  lines.push('-- class: 0=Consumable, 1=Container, 2=Weapon, 4=Armor, 7=TradeGoods, 9=Recipe, 12=Quest, 15=Misc');
  lines.push('-- subclass: 参考 WoW ItemType API');
	lines.push('');
	lines.push('pfDB["item-props"] = {}');	
  lines.push('pfDB["item-props"]["data"] = {');

  for (const id of ids) {
    const { quality, classId, subId } = outputMap[id];
    lines.push(`    [${id}] = {${quality}, ${classId}, ${subId}},`);
  }

  lines.push('}');
  lines.push('');

  fs.writeFileSync(OUTPUT_LUA, lines.join('\n'), 'utf8');
}

async function main() {
  if (!fs.existsSync(CACHE_ITEMS_DIR)) {
    console.error(`目录不存在: ${CACHE_ITEMS_DIR}`);
    process.exit(1);
  }

  const files = fs.readdirSync(CACHE_ITEMS_DIR).filter(f => f.endsWith('.html'));
  let ok = 0;
  let fail = 0;

  const result = {};
  const warnings = [];

  for (const f of files) {
    const idStr = path.basename(f, '.html');
    const itemId = parseInt(idStr, 10);
    if (isNaN(itemId)) continue;

    const html = readHtml(path.join(CACHE_ITEMS_DIR, f));
    if (!html) {
      fail++;
      warnings.push(`读取失败: ${f}`);
      continue;
    }

    try {
      const triplet = parseItemTriplet(html, itemId);
      result[itemId] = { quality: triplet.quality, classId: triplet.classId, subId: triplet.subId };
      ok++;
    } catch (e) {
      fail++;
      warnings.push(`解析失败 #${itemId}: ${e.message}`);
    }
  }

  writeLua(result);

  console.log('✅ 生成完成:', OUTPUT_LUA);
  console.log(`📦 解析成功: ${ok}, 失败: ${fail}, 总计: ${files.length}`);
  if (warnings.length) {
    console.log('⚠️ 警告/失败条目:');
    for (const w of warnings.slice(0, 50)) console.log(' -', w);
    if (warnings.length > 50) console.log(`... 还有 ${warnings.length - 50} 条略`);
  }

  // 样例打印（若存在）
  [1008].forEach(sampleId => {
    if (result[sampleId]) {
      const t = result[sampleId];
      console.log(`🧪 示例 [${sampleId}]: {${t.quality}, ${t.classId}, ${t.subId}}`);
    }
  });
}

if (require.main === module) {
  main().catch(err => {
    console.error('程序异常:', err);
    process.exit(1);
  });
}

module.exports = { parseItemTriplet };
