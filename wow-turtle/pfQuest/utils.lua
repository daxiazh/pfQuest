-- 共享工具函数
-- 用于在 browser.lua 和 map.lua 之间共享通用的格式化函数

-- 格式化任务名称（带颜色）
-- @param questTitle 任务标题
-- @return 带有黄色颜色代码的任务标题字符串
function FormatQuestTitle(questTitle)
    return "|cffffcc00" .. questTitle .. "|r"
end

-- 格式化单个道具名称（带颜色和方括号）
-- @param itemId 物品ID
-- @param itemQuality 物品品质等级
-- @return 带有品质颜色的物品名称字符串，格式为 [物品名]
function FormatItemName(itemId, itemQuality)
    local itemName = pfDB["items"] and pfDB["items"]["loc"] and pfDB["items"]["loc"][itemId] or "未知物品"
    local itemColor = "|c" ..
                      string.format("%02x%02x%02x%02x", 255,
        ITEM_QUALITY_COLORS[itemQuality].r * 255,
        ITEM_QUALITY_COLORS[itemQuality].g * 255,
        ITEM_QUALITY_COLORS[itemQuality].b * 255)
    return itemColor .. "[" .. itemName .. "]|r"
end

-- ============================================================================
-- 奖励筛选相关函数 (Reward Filter Functions)
-- ============================================================================

-- ItemType constants for WoW 1.12
local ITEM_CLASS_WEAPON = 2
local ITEM_CLASS_ARMOR = 4

-- Weapon subclass constants for WoW 1.12
local ITEM_SUBCLASS_WEAPON_AXE1H = 0    -- 单手斧
local ITEM_SUBCLASS_WEAPON_AXE2H = 1    -- 双手斧
local ITEM_SUBCLASS_WEAPON_BOW = 2      -- 弓
local ITEM_SUBCLASS_WEAPON_GUN = 3      -- 枪械
local ITEM_SUBCLASS_WEAPON_MACE1H = 4   -- 单手锤
local ITEM_SUBCLASS_WEAPON_MACE2H = 5   -- 双手锤
local ITEM_SUBCLASS_WEAPON_POLEARM = 6  -- 长柄武器
local ITEM_SUBCLASS_WEAPON_SWORD1H = 7  -- 单手剑
local ITEM_SUBCLASS_WEAPON_SWORD2H = 8  -- 双手剑
local ITEM_SUBCLASS_WEAPON_STAFF = 10   -- 法杖
local ITEM_SUBCLASS_WEAPON_FIST = 13    -- 拳套
local ITEM_SUBCLASS_WEAPON_DAGGER = 15  -- 匕首
local ITEM_SUBCLASS_WEAPON_THROWN = 16  -- 投掷武器
local ITEM_SUBCLASS_WEAPON_CROSSBOW = 18 -- 弩
local ITEM_SUBCLASS_WEAPON_WAND = 19    -- 魔杖

-- Armor subclass constants
local ITEM_SUBCLASS_ARMOR_MISC = 0
local ITEM_SUBCLASS_ARMOR_CLOTH = 1
local ITEM_SUBCLASS_ARMOR_LEATHER = 2
local ITEM_SUBCLASS_ARMOR_MAIL = 3
local ITEM_SUBCLASS_ARMOR_PLATE = 4
local ITEM_SUBCLASS_ARMOR_SHIELD = 6

-- 物品类型判断函数
-- @param itemId 物品ID
-- @return 物品类型对应的位掩码值
function GetItemRewardType(itemId)
    -- 如果 RewardFilter 还未加载，返回默认值
    if not RewardFilter then return 128 end -- 128 = OTHER
    
    local itemProps = pfDB["item-props"] and pfDB["item-props"]["data"] and pfDB["item-props"]["data"][itemId]
    local itemClass, itemSubClass
    
    if itemProps then
        -- 使用数据库中的信息 [quality, class, subclass, ...]
        itemClass = itemProps[2] or 0
        itemSubClass = itemProps[3] or 0
    else
        -- 回退到 GetItemInfo
        local _, _, _, _, _, _, _, _, itemClass, itemSubClass = GetItemInfo(itemId)
        if not itemClass then return 128 end -- 128 = OTHER
    end
    
    -- 武器类型 (class = 2) - 根据子类型细分
    if itemClass == ITEM_CLASS_WEAPON then
        if itemSubClass == ITEM_SUBCLASS_WEAPON_AXE1H then
            return RewardFilter.WEAPON_AXE1H
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_AXE2H then
            return RewardFilter.WEAPON_AXE2H
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_SWORD1H then
            return RewardFilter.WEAPON_SWORD1H
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_SWORD2H then
            return RewardFilter.WEAPON_SWORD2H
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_MACE1H then
            return RewardFilter.WEAPON_MACE1H
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_MACE2H then
            return RewardFilter.WEAPON_MACE2H
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_DAGGER then
            return RewardFilter.WEAPON_DAGGER
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_STAFF then
            return RewardFilter.WEAPON_STAFF
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_BOW then
            return RewardFilter.WEAPON_BOW
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_CROSSBOW then
            return RewardFilter.WEAPON_CROSSBOW
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_GUN then
            return RewardFilter.WEAPON_GUN
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_WAND then
            return RewardFilter.WEAPON_WAND
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_FIST then
            return RewardFilter.WEAPON_FIST
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_POLEARM then
            return RewardFilter.WEAPON_POLEARM
        elseif itemSubClass == ITEM_SUBCLASS_WEAPON_THROWN then
            return RewardFilter.WEAPON_THROWN
        else
            return RewardFilter.OTHER  -- 未知武器类型
        end
    
    -- 护甲类型 (class = 4)
    elseif itemClass == ITEM_CLASS_ARMOR then
        if itemSubClass == ITEM_SUBCLASS_ARMOR_MISC then
            -- subclass 0 = 杂项护甲，包括戒指、项链、饰品等
            return RewardFilter.ACCESSORY
        elseif itemSubClass == ITEM_SUBCLASS_ARMOR_CLOTH then
            return RewardFilter.ARMOR_CLOTH
        elseif itemSubClass == ITEM_SUBCLASS_ARMOR_LEATHER then
            return RewardFilter.ARMOR_LEATHER
        elseif itemSubClass == ITEM_SUBCLASS_ARMOR_MAIL then
            return RewardFilter.ARMOR_MAIL
        elseif itemSubClass == ITEM_SUBCLASS_ARMOR_PLATE then
            return RewardFilter.ARMOR_PLATE
        elseif itemSubClass == ITEM_SUBCLASS_ARMOR_SHIELD then
            return RewardFilter.SHIELD
        else
            return RewardFilter.OTHER
        end
    
    -- 其他类型 (消耗品、容器、贸易物品、食谱、任务物品、杂项等)
    else
        return RewardFilter.OTHER
    end
end

-- 检查奖励是否匹配筛选条件
-- @param itemId 物品ID
-- @param itemQuality 物品品质
-- @return boolean 是否匹配当前筛选条件
function RewardMatchesFilter(itemId, itemQuality)
    -- 如果 RewardFilter 还未加载，默认显示所有奖励
    if not RewardFilter then return true end
    
    local itemType = GetItemRewardType(itemId)
    return RewardFilter.CheckMask(itemType)
end