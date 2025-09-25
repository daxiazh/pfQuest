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