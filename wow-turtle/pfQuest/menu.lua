-- 奖励筛选功能
RewardFilter = {}

-- 筛选类型常量 - 使用更大的数值范围避免冲突
-- 武器类型
RewardFilter.WEAPON_AXE1H = 1      -- 单手斧
RewardFilter.WEAPON_AXE2H = 2      -- 双手斧
RewardFilter.WEAPON_SWORD1H = 4    -- 单手剑
RewardFilter.WEAPON_SWORD2H = 8    -- 双手剑
RewardFilter.WEAPON_MACE1H = 16    -- 单手锤
RewardFilter.WEAPON_MACE2H = 32    -- 双手锤
RewardFilter.WEAPON_DAGGER = 64    -- 匕首
RewardFilter.WEAPON_STAFF = 128    -- 法杖
RewardFilter.WEAPON_BOW = 256      -- 弓
RewardFilter.WEAPON_CROSSBOW = 512 -- 弩
RewardFilter.WEAPON_GUN = 1024     -- 枪械
RewardFilter.WEAPON_WAND = 2048    -- 魔杖
RewardFilter.WEAPON_FIST = 4096    -- 拳套
RewardFilter.WEAPON_POLEARM = 8192 -- 长柄武器
RewardFilter.WEAPON_THROWN = 16384 -- 投掷武器

-- 护甲类型
RewardFilter.ARMOR_CLOTH = 32768
RewardFilter.ARMOR_LEATHER = 65536
RewardFilter.ARMOR_MAIL = 131072
RewardFilter.ARMOR_PLATE = 262144
RewardFilter.SHIELD = 524288
RewardFilter.ACCESSORY = 1048576
RewardFilter.OTHER = 2097152

-- 初始化筛选配置
function RewardFilter.InitConfig()
  -- 迁移旧的字符串格式配置到新的表格式
  if type(pfQuest_config["rewardfilter"]) == "string" then
    pfQuest_config["rewardfilter"] = {showAll = true}  -- 默认显示全部
  end
  
  if not pfQuest_config["rewardfilter"] or type(pfQuest_config["rewardfilter"]) ~= "table" then
    pfQuest_config["rewardfilter"] = {showAll = true}  -- 默认显示全部
  end
  
  -- 如果配置为空表，设置默认的"显示全部"状态
  local hasAnyConfig = false
  for key, _ in pairs(pfQuest_config["rewardfilter"]) do
    hasAnyConfig = true
    break
  end
  if not hasAnyConfig then
    pfQuest_config["rewardfilter"]["showAll"] = true
  end
end

-- 获取筛选状态
function RewardFilter.GetState(filterType)
  RewardFilter.InitConfig()
  
  if filterType == "all" then
    -- 检查是否明确设置了"显示全部"标志
    return pfQuest_config["rewardfilter"]["showAll"] or false
  else
    return pfQuest_config["rewardfilter"][filterType] or false
  end
end

-- 设置筛选状态
function RewardFilter.SetState(filterType, enabled)
  RewardFilter.InitConfig()
  
  if filterType == "all" then
    -- 清空所有筛选并设置"显示全部"标志
    pfQuest_config["rewardfilter"] = {showAll = true}
  else
    -- 清除"显示全部"标志，设置具体的筛选项
    pfQuest_config["rewardfilter"]["showAll"] = nil
    pfQuest_config["rewardfilter"][filterType] = enabled and true or nil
  end
  
  -- 触发地图更新 - 使用强制重置确保奖励筛选生效
  if pfQuest and pfQuest.ResetAll then
    pfQuest:ResetAll()
  else
    -- 备用方案
    pfMap.queue_update = GetTime()
    if pfQuest then
      if pfQuest.UpdateQuestlog then
        pfQuest:UpdateQuestlog()
      end
      pfQuest.updateQuestGivers = true
    end
  end
end

-- 获取所有筛选类型
function RewardFilter.GetFilterTypes()
  return {
    -- 武器类型
    axe1h = RewardFilter.WEAPON_AXE1H,
    axe2h = RewardFilter.WEAPON_AXE2H,
    sword1h = RewardFilter.WEAPON_SWORD1H,
    sword2h = RewardFilter.WEAPON_SWORD2H,
    mace1h = RewardFilter.WEAPON_MACE1H,
    mace2h = RewardFilter.WEAPON_MACE2H,
    dagger = RewardFilter.WEAPON_DAGGER,
    staff = RewardFilter.WEAPON_STAFF,
    bow = RewardFilter.WEAPON_BOW,
    crossbow = RewardFilter.WEAPON_CROSSBOW,
    gun = RewardFilter.WEAPON_GUN,
    wand = RewardFilter.WEAPON_WAND,
    fist = RewardFilter.WEAPON_FIST,
    polearm = RewardFilter.WEAPON_POLEARM,
    thrown = RewardFilter.WEAPON_THROWN,
    
    -- 护甲类型
    cloth = RewardFilter.ARMOR_CLOTH,
    leather = RewardFilter.ARMOR_LEATHER,
    mail = RewardFilter.ARMOR_MAIL,
    plate = RewardFilter.ARMOR_PLATE,
    shield = RewardFilter.SHIELD,
    accessory = RewardFilter.ACCESSORY,
    other = RewardFilter.OTHER
  }
end

-- 切换筛选状态
function RewardFilter.Toggle(filterType)
  if filterType == "all" then
    RewardFilter.SetState("all", true)
  else
    local currentState = RewardFilter.GetState(filterType)
    RewardFilter.SetState(filterType, not currentState)
  end
end

-- 检查物品是否匹配筛选条件
function RewardFilter.CheckMask(itemTypeConstant)
  -- 如果设置了"显示全部"，显示所有奖励
  if RewardFilter.GetState("all") then
    return true
  end
  
  -- 检查是否有任何筛选选项被启用
  local hasAnyFilter = false
  for key, _ in pairs(RewardFilter.GetFilterTypes()) do
    if RewardFilter.GetState(key) then
      hasAnyFilter = true
      break
    end
  end
  
  -- 如果没有任何筛选选项被启用，不显示任何奖励
  if not hasAnyFilter then
    return false
  end
  
  -- 检查对应的筛选类型是否启用
  for key, constant in pairs(RewardFilter.GetFilterTypes()) do
    if constant == itemTypeConstant then
      return RewardFilter.GetState(key)
    end
  end
  
  return false
end

-- 设置武器类型（批量操作）
function RewardFilter.ToggleWeaponGroup(enable)
  local weaponTypes = {"sword1h", "sword2h", "axe1h", "axe2h", "mace1h", "mace2h", 
                       "dagger", "staff", "bow", "crossbow", "gun", "wand", 
                       "fist", "polearm", "thrown"}
  
  for _, weaponType in ipairs(weaponTypes) do
    RewardFilter.SetState(weaponType, enable)
  end
end

-- 设置护甲类型（批量操作）
function RewardFilter.ToggleArmorGroup(enable)
  local armorTypes = {"cloth", "leather", "mail", "plate"}
  
  for _, armorType in ipairs(armorTypes) do
    RewardFilter.SetState(armorType, enable)
  end
end

-- 创建奖励筛选配置窗口
function RewardFilter.CreateConfigWindow()
  local frame = CreateFrame("Frame", "pfRewardFilterConfig", UIParent)
  frame:SetWidth(480)  -- 增加宽度以支持多列布局
  frame:SetHeight(420)  -- 减少高度
  frame:SetPoint("CENTER", 0, 0)
  frame:SetFrameStrata("HIGH")
  frame:SetMovable(true)
  frame:EnableMouse(true)
  frame:SetClampedToScreen(true)
  frame:Hide()
  
  -- 背景
  pfUI.api.CreateBackdrop(frame, nil, nil, 1.1)
  
  -- 标题栏
  local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
  title:SetPoint("TOP", 0, -10)
  title:SetText("任务奖励筛选")
  title:SetTextColor(1, 1, 0)
  
  -- 关闭按钮
  local closeBtn = CreateFrame("Button", nil, frame)
  closeBtn:SetWidth(20)
  closeBtn:SetHeight(20)
  closeBtn:SetPoint("TOPRIGHT", -5, -5)
  closeBtn:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up")
  closeBtn:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down")
  closeBtn:SetHighlightTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight")
  closeBtn:SetScript("OnClick", function() frame:Hide() end)
  
  -- 说明文字
  local desc = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  desc:SetPoint("TOP", title, "BOTTOM", 0, -10)
  desc:SetText("选择在地图上使用红色图标来显示的任务奖励类型")
  desc:SetTextColor(1, 1, 1)
  
  local yPos = -70
  frame.checkboxes = {}
  
  -- 武器分组
  local weaponLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
  weaponLabel:SetPoint("TOPLEFT", 20, yPos)
  weaponLabel:SetText("武器")
  weaponLabel:SetTextColor(0.8, 0.8, 1)
  
  -- 武器全选按钮
  local weaponAllBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  weaponAllBtn:SetWidth(60)
  weaponAllBtn:SetHeight(18)
  weaponAllBtn:SetPoint("LEFT", weaponLabel, "RIGHT", 10, 0)
  weaponAllBtn:SetText("全选")
  weaponAllBtn:SetScript("OnClick", function()
    RewardFilter.ToggleWeaponGroup(true)
    RewardFilter.UpdateCheckboxes()
  end)
  
  local weaponNoneBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  weaponNoneBtn:SetWidth(60)
  weaponNoneBtn:SetHeight(18)
  weaponNoneBtn:SetPoint("LEFT", weaponAllBtn, "RIGHT", 5, 0)
  weaponNoneBtn:SetText("取消")
  weaponNoneBtn:SetScript("OnClick", function()
    RewardFilter.ToggleWeaponGroup(false)
    RewardFilter.UpdateCheckboxes()
  end)
  
  yPos = yPos - 25
  
  -- 武器子项 - 使用三列布局
  local weaponTypes = {
    -- 近战武器（左列）
    {
      {filterType = "sword1h", text = "单手剑"},
      {filterType = "sword2h", text = "双手剑"},
      {filterType = "axe1h", text = "单手斧"},
      {filterType = "axe2h", text = "双手斧"},
      {filterType = "mace1h", text = "单手锤"}
    },
    -- 特殊武器（中列）
    {
      {filterType = "mace2h", text = "双手锤"},
      {filterType = "dagger", text = "匕首"},
      {filterType = "staff", text = "法杖"},
      {filterType = "fist", text = "拳套"},
      {filterType = "polearm", text = "长柄武器"}
    },
    -- 远程武器（右列）
    {
      {filterType = "bow", text = "弓"},
      {filterType = "crossbow", text = "弩"},
      {filterType = "gun", text = "枪械"},
      {filterType = "wand", text = "魔杖"},
      {filterType = "thrown", text = "投掷武器"}
    }
  }
  
  local startYPos = yPos
  local columnWidth = 140
  
  for colIndex, column in ipairs(weaponTypes) do
    local currentYPos = startYPos
    local xOffset = 40 + (colIndex - 1) * columnWidth
    
    for _, config in ipairs(column) do
      local checkbox = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
      checkbox:SetPoint("TOPLEFT", xOffset, currentYPos)
      checkbox:SetWidth(20)
      checkbox:SetHeight(20)
      
      local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
      label:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
      label:SetText(config.text)
      label:SetTextColor(1, 1, 1)
      
      checkbox.filterType = config.filterType
      checkbox:SetScript("OnClick", function()
        RewardFilter.Toggle(this.filterType)
        RewardFilter.UpdateCheckboxes()
      end)
      
      table.insert(frame.checkboxes, checkbox)
      currentYPos = currentYPos - 25
    end
  end
  
  yPos = startYPos - 125 - 10  -- 5行 * 25像素 + 10像素间距
  
  -- 护甲分组
  local armorLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
  armorLabel:SetPoint("TOPLEFT", 20, yPos)
  armorLabel:SetText("护甲")
  armorLabel:SetTextColor(0.8, 0.8, 1)
  
  -- 护甲全选按钮
  local armorAllBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  armorAllBtn:SetWidth(60)
  armorAllBtn:SetHeight(18)
  armorAllBtn:SetPoint("LEFT", armorLabel, "RIGHT", 10, 0)
  armorAllBtn:SetText("全选")
  armorAllBtn:SetScript("OnClick", function()
    RewardFilter.ToggleArmorGroup(true)
    RewardFilter.UpdateCheckboxes()
  end)
  
  local armorNoneBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  armorNoneBtn:SetWidth(60)
  armorNoneBtn:SetHeight(18)
  armorNoneBtn:SetPoint("LEFT", armorAllBtn, "RIGHT", 5, 0)
  armorNoneBtn:SetText("取消")
  armorNoneBtn:SetScript("OnClick", function()
    RewardFilter.ToggleArmorGroup(false)
    RewardFilter.UpdateCheckboxes()
  end)
  
  yPos = yPos - 25
  
  -- 护甲子项 - 使用两列布局
  local armorTypes = {
    {filterType = "cloth", text = "布甲"},
    {filterType = "leather", text = "皮甲"},
    {filterType = "mail", text = "锁甲"},
    {filterType = "plate", text = "板甲"}
  }
  
  local armorStartYPos = yPos
  for i, config in ipairs(armorTypes) do
    local col = math.mod(i - 1, 2)  -- 0 或 1
    local row = math.floor((i - 1) / 2)
    local xOffset = 40 + col * 140
    local currentYPos = armorStartYPos - row * 25
    
    local checkbox = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", xOffset, currentYPos)
    checkbox:SetWidth(20)
    checkbox:SetHeight(20)
    
    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
    label:SetText(config.text)
    label:SetTextColor(1, 1, 1)
    
    checkbox.filterType = config.filterType
    checkbox:SetScript("OnClick", function()
      RewardFilter.Toggle(this.filterType)
      RewardFilter.UpdateCheckboxes()
    end)
    
    table.insert(frame.checkboxes, checkbox)
  end
  
  yPos = armorStartYPos - 50  -- 2行 * 25像素
  
  -- 其他分组
  yPos = yPos - 10
  local otherLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
  otherLabel:SetPoint("TOPLEFT", 20, yPos)
  otherLabel:SetText("其他")
  otherLabel:SetTextColor(0.8, 0.8, 1)
  yPos = yPos - 25
  
  local otherTypes = {
    {filterType = "shield", text = "盾牌"},
    {filterType = "accessory", text = "首饰"},
    {filterType = "other", text = "其他"}
  }
  
  -- 其他项目 - 使用三列布局（一行）
  local otherStartYPos = yPos
  for i, config in ipairs(otherTypes) do
    local xOffset = 40 + (i - 1) * 140
    
    local checkbox = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
    checkbox:SetPoint("TOPLEFT", xOffset, otherStartYPos)
    checkbox:SetWidth(20)
    checkbox:SetHeight(20)
    
    local label = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    label:SetPoint("LEFT", checkbox, "RIGHT", 5, 0)
    label:SetText(config.text)
    label:SetTextColor(1, 1, 1)
    
    checkbox.filterType = config.filterType
    checkbox:SetScript("OnClick", function()
      RewardFilter.Toggle(this.filterType)
      RewardFilter.UpdateCheckboxes()
    end)
    
    table.insert(frame.checkboxes, checkbox)
  end
  
  yPos = otherStartYPos - 25
  
  -- 全部/清空按钮
  local allBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  allBtn:SetWidth(80)
  allBtn:SetHeight(22)
  allBtn:SetPoint("BOTTOMLEFT", 20, 20)
  allBtn:SetText("显示全部")
  allBtn:SetScript("OnClick", function()
    RewardFilter.Toggle("all")
    RewardFilter.UpdateCheckboxes()
  end)
  
  local clearBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate") 
  clearBtn:SetWidth(80)
  clearBtn:SetHeight(22)
  clearBtn:SetPoint("BOTTOMRIGHT", -20, 20)
  clearBtn:SetText("全部清空")
  clearBtn:SetScript("OnClick", function()
    -- 启用所有筛选选项（这样会隐藏所有奖励，因为没有奖励能匹配所有类型）
    for filterType, _ in pairs(RewardFilter.GetFilterTypes()) do
      RewardFilter.SetState(filterType, true)
    end
    RewardFilter.UpdateCheckboxes()
  end)
  
  -- 拖拽功能
  frame:SetScript("OnMouseDown", function() this:StartMoving() end)
  frame:SetScript("OnMouseUp", function() this:StopMovingOrSizing() end)
  
  -- 添加到ESC键响应系统
  table.insert(UISpecialFrames, "pfRewardFilterConfig")
  
  return frame
end

-- 更新复选框状态
function RewardFilter.UpdateCheckboxes()
  if not pfRewardFilterConfig then return end
  
  for i, checkbox in ipairs(pfRewardFilterConfig.checkboxes) do
    if checkbox and checkbox.filterType then
      checkbox:SetChecked(RewardFilter.GetState(checkbox.filterType))
    end
  end
end

-- 显示配置窗口
function RewardFilter.ShowConfigWindow()
  if not pfRewardFilterConfig then
    pfRewardFilterConfig = RewardFilter.CreateConfigWindow()
  end
  
  RewardFilter.UpdateCheckboxes()
  pfRewardFilterConfig:Show()
end

do -- minimap icon
  pfQuestIcon = CreateFrame('Button', "pfQuestIcon", Minimap)
  pfQuestIcon:SetClampedToScreen(true)
  pfQuestIcon:SetMovable(true)
  pfQuestIcon:EnableMouse(true)
  pfQuestIcon:RegisterForDrag('LeftButton')
  pfQuestIcon:RegisterForClicks('LeftButtonUp', 'RightButtonUp')

  pfQuestIcon:SetWidth(31)
  pfQuestIcon:SetHeight(31)
  pfQuestIcon:SetFrameLevel(9)
  pfQuestIcon:SetHighlightTexture('Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight')
  pfQuestIcon:SetPoint("TOPLEFT", Minimap, "TOPLEFT", 0, 0)

  pfQuestIcon:SetScript("OnDragStart", function()
    if IsShiftKeyDown() then
      this:StartMoving()
    end
  end)

  pfQuestIcon:SetScript("OnDragStop", function()
    this:StopMovingOrSizing()
  end)

  pfQuestIcon:SetScript("OnClick", function()
    if pfQuestMenu:IsShown() then
      pfQuestMenu:Hide()
    else
      pfQuestMenu:Show()
    end
  end)

  pfQuestIcon:SetScript("OnEnter", function()
    GameTooltip:SetOwner(this, ANCHOR_BOTTOMLEFT)
    GameTooltip:SetText("|cff33ffccpf|rQuest", 1, 1, 1, 1)
    GameTooltip:AddDoubleLine(pfQuest_Loc["Left-Click"], pfQuest_Loc["Shortcut Menu"], 1, 1, 1, 1, 1, 1)
    GameTooltip:AddDoubleLine(pfQuest_Loc["Shift-Click"], pfQuest_Loc["Move Button"], 1, 1, 1, 1, 1, 1)
    GameTooltip:Show()
  end)

  pfQuestIcon:SetScript("OnLeave", function()
    GameTooltip:Hide()
  end)

  pfQuestIcon.icon = pfQuestIcon:CreateTexture(nil, 'BACKGROUND')
  pfQuestIcon.icon:SetWidth(20)
  pfQuestIcon.icon:SetHeight(20)
  pfQuestIcon.icon:SetTexture(pfQuestConfig.path..'\\img\\logo')
  pfQuestIcon.icon:SetTexCoord(0.05, 0.95, 0.05, 0.95)
  pfQuestIcon.icon:SetPoint('CENTER',1,1)

  pfQuestIcon.overlay = pfQuestIcon:CreateTexture(nil, 'OVERLAY')
  pfQuestIcon.overlay:SetWidth(53)
  pfQuestIcon.overlay:SetHeight(53)
  pfQuestIcon.overlay:SetTexture('Interface\\Minimap\\MiniMap-TrackingBorder')
  pfQuestIcon.overlay:SetPoint('TOPLEFT', 0,0)
end

do -- tracking menu
  local function MenuButtonEnter()
    this.title:SetTextColor(1,.8,0)
    this.highlight:Show()
  end

  local function MenuButtonLeave()
    this.title:SetTextColor(1,1,1)
    this.highlight:Hide()
  end

  local function MenuButtonClick()
    this.state = this.check and not this.check:GetChecked()

    if this.check then
      this.check:SetChecked(this.state)
    else
      this:GetParent():Hide()
    end

    if this.onclick then
      this.onclick(nil, this.name, this.state)
    end
  end

  local function CreateMenu(data, name)
    local top, width = 4, 0
    local frame = CreateFrame("Frame", name, UIParent)
    frame:SetFrameStrata("DIALOG")
    frame:SetClampedToScreen(true)
    frame:Hide()

    pfUI.api.CreateBackdrop(frame, nil, nil, .75)

    for id, tracking in pairs(data) do
      -- data shortcuts
      local name = tracking[1]
      local title = tracking[2]
      local onclick = tracking[3]
      local checkbox = tracking[4]

      if not title then
        -- draw separator line
        local line = frame:CreateTexture()
        line:SetTexture(.25 ,.25, .25, .25)
        line:SetPoint("TOPLEFT", 4, -top-2)
        line:SetPoint("TOPRIGHT", -4, -top-2)
        line:SetHeight(2)
      else
        -- create menu button
        frame[name] = CreateFrame("Button", nil, frame)
        frame[name]:SetPoint("TOPLEFT", 0, -top)
        frame[name]:SetPoint("TOPRIGHT", 0, -top)
        frame[name]:SetHeight(16)
        frame[name]:SetScript("OnEnter", MenuButtonEnter)
        frame[name]:SetScript("OnLeave", MenuButtonLeave)
        frame[name]:SetScript("OnClick", MenuButtonClick)
        frame[name].onclick = onclick
        frame[name].name = name

        -- title
        frame[name].title = frame[name]:CreateFontString(nil, "NORMAL", "GameFontWhite")
        frame[name].title:SetFont(pfUI.font_default, pfUI_config.global.font_size, "OUTLINE")
        frame[name].title:SetPoint("LEFT", 22, 0)
        frame[name].title:SetJustifyH("LEFT")
        frame[name].title:SetText(title)

        -- icon
        frame[name].icon = frame[name]:CreateTexture(nil, "OVERLAY")
        frame[name].icon:SetWidth(14)
        frame[name].icon:SetHeight(14)
        frame[name].icon:SetPoint("RIGHT", -8, 0)
        frame[name].icon:SetTexture(pfQuestConfig.path.."\\img\\tracking\\"..name)

        -- hover
        frame[name].highlight = frame[name]:CreateTexture(nil, "OVERLAY")
        frame[name].highlight:SetPoint("TOPLEFT", 4, 0)
        frame[name].highlight:SetPoint("BOTTOMRIGHT", -4, 0)
        frame[name].highlight:SetTexture(1,1,1,.1)
        frame[name].highlight:Hide()

        -- checkbox (optional)
        if checkbox then
          frame[name].check = CreateFrame("CheckButton", nil, frame[name], "UICheckButtonTemplate")
          frame[name].check:SetNormalTexture("")
          frame[name].check:SetPushedTexture("")
          frame[name].check:SetHighlightTexture("")
          frame[name].check:SetPoint("LEFT", 10, 0)
          frame[name].check:SetWidth(20)
          frame[name].check:SetHeight(20)
          frame[name].check:SetScale(.6)
          frame[name].check:EnableMouse(false)
          pfUI.api.CreateBackdrop(frame[name].check, nil, true)
        end

        -- save maximum menu width
        width = math.max(width, frame[name].title:GetStringWidth() + 60)
      end

      -- set next entry position
      top = top + (title and 16 or 6)
    end

    -- update frame size
    frame:SetWidth(width)
    frame:SetHeight(top + 4)

    -- the usual menu hide events
    table.insert(UIMenus, name)
    frame:RegisterEvent("CURSOR_UPDATE")
    frame:SetScript("OnEvent", function() this:Hide() end)

    return frame
  end

  local function ToggleFrame(frame)
    if frame:IsShown() then frame:Hide() else frame:Show() end
  end

  local menu = {
    {"database", pfQuest_Loc["Database"], function(list, state) ToggleFrame(pfBrowser) end },
    {"rewards", "奖励筛选", function() RewardFilter.ShowConfigWindow() end},
    {"-"},
    {"chests", pfQuest_Loc["Chests & Treasures"], pfDatabase.TrackMeta, true},
    {"herbs", pfQuest_Loc["Herbs & Flowers"], pfDatabase.TrackMeta, true},
    {"mines", pfQuest_Loc["Mines & Ores"], pfDatabase.TrackMeta, true},
    {"fish", pfQuest_Loc["Fishing Pools"], pfDatabase.TrackMeta, true},
    {"rares", pfQuest_Loc["Rare Mobs"], pfDatabase.TrackMeta, true},
    {"-"},
    {"auctioneer", pfQuest_Loc["Auctioneer"], pfDatabase.TrackMeta, true},
    {"banker", pfQuest_Loc["Banker"], pfDatabase.TrackMeta, true},
    {"battlemaster", pfQuest_Loc["Battlemaster"], pfDatabase.TrackMeta, true},
    {"flight", pfQuest_Loc["Flight Master"], pfDatabase.TrackMeta, true},
    {"innkeeper", pfQuest_Loc["Innkeeper"], pfDatabase.TrackMeta, true},
    {"mailbox", pfQuest_Loc["Mailbox"], pfDatabase.TrackMeta, true},
    {"meetingstone", pfQuest_Loc["Meeting Stones"], pfDatabase.TrackMeta, true},
    {"repair", pfQuest_Loc["Repair"], pfDatabase.TrackMeta, true},
    {"spirithealer", pfQuest_Loc["Spirit Healer"], pfDatabase.TrackMeta, true},
    {"stablemaster", pfQuest_Loc["Stable Master"], pfDatabase.TrackMeta, true},
    {"vendor", pfQuest_Loc["Vendor"], pfDatabase.TrackMeta, true},    
    {"journal", pfQuest_Loc["Quest Journal"], function(list, state) ToggleFrame(pfJournal) end},
    {"welcome", pfQuest_Loc["Welcome Screen"], function(list, state) ToggleFrame(pfQuestInit) end},
    {"settings", pfQuest_Loc["Settings"], function(list, state) ToggleFrame(pfQuestConfig) end }
  }

  pfQuestMenu = CreateMenu(menu, "pfQuestMenu")
  pfQuestMenu:SetScript("OnShow", function()
    -- create shortcuts
    local anchor = this.anchor or pfQuestIcon
    local config = pfQuest_track
    local frame = this

    -- read virtual anchor position
    local x, y = anchor:GetCenter()
    x = x * anchor:GetEffectiveScale() / UIParent:GetScale()
    y = y * anchor:GetEffectiveScale() / UIParent:GetScale()

    -- read virtual screen resolution
    local width = UIParent:GetWidth() / UIParent:GetScale()
    local height = UIParent:GetHeight() / UIParent:GetScale()

    -- calculate menu position on screen
    local h = y > height / 2 and "TOP" or "BOTTOM"
    local hp = y > height / 2 and -8 or 8
    local w = x > width / 2 and "RIGHT" or "LEFT"
    local wp = x > width / 2 and -8 or 8

    -- set frame position
    frame:ClearAllPoints()
    frame:SetPoint(h..w, anchor, "CENTER", wp, hp)

    -- align menu entries to config state
    for id, data in pairs(menu) do
      if frame[data[1]] and frame[data[1]].check then
        frame[data[1]].check:SetChecked(config[data[1]] and true or false)
      end
    end
  end)
end
