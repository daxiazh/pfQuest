local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som
<< Alliance
#name 1-6 寒脊山谷
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Dwarf/Gnome
#next 6-10 丹莫罗
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +你已选择适合侏儒和矮人的升级指南，请选择适合自己起始区域的升级指南。
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯登·粗臂|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> 接受 矮人的交易
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>击杀|cRXP_ENEMY_蓬毛幼狼|r直到你有10c+ 价值的垃圾
    >>|cRXP_WARN_你将会学习|r|T132333:0|t[战斗怒吼]|cRXP_WARN_这将加快前期的升级速度|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛兰德尔·哈金|r
    .vendor >> |cRXP_WARN_清理背包|r
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯兰·库尔曼|r
    .train 6673 >> 学习 |T132333:0|t[战斗怒吼]
    .goto Dun Morogh,28.832,67.242
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
    .target Grundel Harkin
    .target Thran Khorman
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> 前往 安威玛尔
    >>|cRXP_WARN_沿途脱下你的胸甲,衬衣,裤子及鞋子,一会卖掉.|r
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德南·弗卡特|r
    .vendor >> |cRXP_WARN_卖掉刚脱下来的装备和吃喝, 总共需要10c|r
    .target Durnan Furcutter
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .train 348 >> 学习 |T135817:0|t[献祭]
    .accept 1599 >> 接受 开端
    .target Alamar Grimm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>击杀|cRXP_ENEMY_蓬毛幼狼|r 和 |cRXP_ENEMY_蓬毛森林狼|r. 拾取 |cRXP_LOOT_硬狼肉|r
    >>|cRXP_WARN_捡到的布甲都穿上|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .xp 2 >> Farm到等级 2
step << Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >> 提交 矮人的交易
    .accept 3115 >> 接受 被污染的备忘录 << Gnome Warlock
    .accept 233 >> 接受 寒脊山谷的送信任务
    .target Sten Stoutarm
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尔林·霜锤|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> 接受 新的威胁
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >> |cRXP_WARN_清理背包|r
    >>|cRXP_BUY_购买15个|r |T132794:0|t[清凉的泉水]|cRXP_BUY_. 钱不够就Farm更多 |cRXP_ENEMY_蓬毛幼狼|r|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Warlock
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> 前往 霜鬃洞穴
step << Warlock
    >>在洞内击杀|cRXP_ENEMY_霜鬃巨魔新兵|r. 拾取 |cRXP_LOOT_羽毛咒符|r
    >>|cRXP_BUY_捡到的布甲都穿上|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #hardcore
    #completewith next
    .hs >> 炉石回 寒脊山谷
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> 提交 开端
    .turnin 3115 >> 提交 被污染的备忘录 << Gnome Warlock
    .target Alamar Grimm
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >> |cRXP_WARN_清理背包|r
    >>|cRXP_BUY_购买 15|r |T132794:0|t[清凉的泉水]|cRXP_BUY_. 钱不够就Farm更多 |cRXP_ENEMY_蓬毛幼狼|r|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >> |cRXP_WARN_清理背包|r
    .target Adlin Pridedrift
step << !Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >> 提交 矮人的交易
    .accept 233 >> 接受 寒脊山谷的送信任务
    .accept 3106 >> 接受 简易符文 << Dwarf Warrior
    .accept 3107 >> 接受 神圣符文 << Paladin
    .accept 3109 >> 接受 密文符文 << Dwarf Rogue
    .accept 3110 >> 接受 神圣符文 << Priest
    .accept 3112 >> 接受 简易备忘录 << Gnome Warrior
    .accept 3113 >> 接受 密文备忘录 << Gnome Rogue
    .accept 3114 >> 接受 雕文备忘录 << Mage
    .accept 3108 >> 提交 风蚀符文 << Dwarf Hunter
    .target Sten Stoutarm
step << !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尔林·霜锤|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> 接受 新的威胁
    .target Balir Frosthammer
step
    #era
    #completewith Rockjaw
    >>击杀|cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭怪|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔林·锐眼|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> 提交 寒脊山谷的送信任务
    .accept 183 >> 接受 猎杀野猪
    .accept 234 >> 接受 寒脊山谷的送信任务
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>击杀|cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔林·锐眼|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> 提交 猎杀野猪
step << Paladin/Mage/Warlock/Hunter
    #era
    .xp 3+1130 >> Farm到3级多1130经验 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞林·白须|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> 提交 寒脊山谷的送信任务
    .accept 182 >> 接受 巨魔洞穴
step << Paladin/Mage/Warlock/Hunter
    .xp 4
step << Paladin/Mage/Warlock/Hunter
    #era
    .goto Dun Morogh,31.37,75.63
    >>击杀|cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭怪|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺里·激流|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> 接受 热酒快递
step << Paladin/Mage/Warlock/Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> 前往 安威玛尔
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >> 提交 热酒快递
    .accept 3365 >> 接受 归还酒杯
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索加斯·格瑞姆森|r
    .turnin 3108 >> 提交 风蚀符文
    .train 1978 >> 学习 毒蛇钉刺
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r
    .target Bromos Grummner
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >> 提交 神圣符文
    .trainer >> 学习职业技能
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .target Marryk Nurribit
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >> 提交 雕文备忘录
    .trainer >> 学习职业技能
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .target Alamar Grimm
    .goto Dun Morogh,28.650,66.145
    .trainer >> 学习 腐蚀术
step << Paladin/Mage/Warlock/Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尔林·霜锤|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> 提交 新的威胁
step << Hunter
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >> |cRXP_WARN_清理背包|r
    >>|cRXP_WARN_买2组|r |T132384:0|t[轻弹丸]
    .collect 2516,400 -- Light Shot (400)
    .target Adlin Pridedrift
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >> |cRXP_WARN_清理背包|r
    >>|cRXP_BUY_购买10个|r |T132794:0|t[清凉的泉水]|cRXP_BUY_. 钱不够就Farm更多|cRXP_ENEMY_蓬毛幼狼|r|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Mage !Warlock !Hunter
    #era
    #completewith next
    >>击杀|cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭怪|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>击杀|cRXP_ENEMY_霜鬃巨魔幼崽|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3
    >>击杀|cRXP_ENEMY_霜鬃巨魔幼崽|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>击杀|cRXP_ENEMY_石腭穴居人|r 和 |cRXP_ENEMY_壮实的石腭怪|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << !Paladin !Mage !Warlock !Hunter
    .xp 4 >> Farm到等级 4
step << !Paladin !Mage !Warlock !Hunter
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞林·白须|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> 提交 巨魔洞穴
    .accept 218 >> 接受 被窃取的日记
step << !Paladin !Mage !Warlock !Hunter
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞林·白须|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> 提交 巨魔洞穴
    .accept 218 >> 接受 被窃取的日记
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞林·白须|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> 提交 巨魔洞穴
    .accept 218 >> 接受 被窃取的日记
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺里·激流|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> 提交 归还酒杯
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> 前往 霜鬃洞穴
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>击杀|cRXP_ENEMY_冷酷的格瑞克尼尔|r. 拾取|cRXP_LOOT_格瑞林·白须的日记|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺里·激流|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> 接受 热酒快递
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞林·白须|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> 提交 被窃取的日记
    .accept 282 >> 接受 森内尔的观察站
step << !Paladin !Mage !Warlock !Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> 前往 安威玛尔
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >> 提交 热酒快递
    .accept 3365 >> 接受 归还酒杯
    .target Durnan Furcutter
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索姆·哈格林|r
    .target Solm Hargrin
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> 提交 密文备忘录 << Gnome Rogue
    .turnin 3109 >> 提交 密文符文 << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    .target Branstock Khalder
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >> 提交 神圣符文
    .trainer >> 学习职业技能
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯兰·库尔曼|r
    .target Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >> 提交 简易符文 << Dwarf Warrior
    .turnin 3112 >> 提交 简易备忘录 << Gnome Warrior
    .trainer >> 学习职业技能
step << !Paladin !Mage !Warlock !Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尔林·霜锤|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> 提交 新的威胁
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德林·怒流|r
    .vendor >> |cRXP_WARN_清理背包|r
    >>|cRXP_BUY_购买10个|r |T132794:0|t[清凉的泉水]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞林·白须|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> 提交 被窃取的日记
    .accept 282 >> 接受 森内尔的观察站
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺里·激流|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> 提交 归还酒杯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人泰洛斯|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> 提交 森内尔的观察站
    .accept 420 >> 接受 森内尔的观察站
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉兹·跳链|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> 接受 塔诺克的补给品
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> 穿过 寒脊山小径
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som
#classic
<< Alliance
#name 6-10 丹莫罗
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Dwarf/Gnome
#next 10-11 艾尔文森林 (矮人/侏儒)
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>击杀|cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r. 拾取 |cRXP_LOOT_大块野猪肉|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>击杀|cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r. 拾取 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> 前往 卡拉诺斯. 击杀沿途的|cRXP_ENEMY_峭壁野猪|r Farm到等级 2145/+2800xp << Priest
    .xp 5+2415 >> 前往 卡拉诺斯. 击杀沿途的|cRXP_ENEMY_峭壁野猪|r Farm到等级 2415/+2800xp << !Priest
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> 前往 卡拉诺斯. 击杀沿途的|cRXP_ENEMY_峭壁野猪|r
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >> 提交 森内尔的观察站
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉姆瑞兹·影轮|r
    .trainer >> 学习职业技能
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹尼·血泡|r
    .vendor >> |cRXP_BUY_购买 the|r |T133738:0|t[魔典：血契（等级 1）] |cRXP_BUY_(买得起就买, 买不起就稍后购买)|r
    .target Dannie Fizzwizzle
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Farm到等级 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞夫|r
    .trainer >> 学习职业技能
    .train 3044 >> 学习 奥术射击
    .target Grif Wildheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格纳·雷酒|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> 接受 啤酒烤猪排
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔诺克·霜锤|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> 提交 塔诺克的补给品
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷格·比尔姆|r
    .vendor >> |cRXP_BUY_购买并装备|r |T135426:0|t[破损的小飞刀]
    .target Kreg Bilmn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> 学习职业技能
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛济斯·石衣|r
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> 学习职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿札尔·战锤|r
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> 学习职业技能
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马克萨恩·安沃尔|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >> 接受 圣光之衣
step << Priest
    >>对|cRXP_FRIENDLY_巡山人多尔夫|r使用次级治疗术（等级 2）和真言术：韧
    .target Mountaineer Dolf
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马克萨恩·安沃尔|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >> 提交 圣光之衣
    .trainer >> 学习职业技能
step << Priest
    .xp 6 >> Farm到等级 6
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> 绑定炉石到 雷酒酿制厂
    .vendor >> |cRXP_BUY_购买 尽可能多的|r|T132815:0|t[冰镇牛奶]
step << !Mage !Priest !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> 绑定炉石到 雷酒酿制厂
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格兰尼斯·快斧|r
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> 学习职业技能
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >> 前往 铁匠
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托格努斯·燧火|r
    .target Tognus Flintfire
    .goto Dun Morogh,45.3,51.9
    .trainer >> 学习 |T136241:0|t[锻造]
    >>|cRXP_WARN_可以制造近战伤害+2的 |T135248:0|t[劣质磨刀石], 在早期十分强力.|r << Warrior/Rogue
    >>|cRXP_WARN_可以制造近战伤害+2的 |T135255:0|t[劣质平衡石], 在早期十分强力.|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨雷克·黑石|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> 接受 贝尔丁的工具
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员贝隆费兹|r
    >>|cRXP_WARN_沿途不要击杀任何|cRXP_ENEMY_黑熊幼崽|r|r
    .target Pilot Bellowfiz
    .accept 317 >> 接受 贝尔丁的补给
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> 接受 灰色洞穴
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔丁·钢架|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> 提交 贝尔丁的工具
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗斯洛·鲁治|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> 接受 海格纳的弹药
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗斯洛·鲁治|r
    .goto Dun Morogh,50.084,49.420
    >>|cRXP_BUY_如果学了|r |T136241:0|t[锻造]|cRXP_BUY_就购买|r |T134708:0|t[矿工锄] 
    .collect 2901,1
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚尔·锤石|r
    .trainer >> 学习 |T134708:0|t[采矿]
    .target Yarr Hammerstone
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>击杀|cRXP_ENEMY_黑熊幼崽|r. 拾取 |cRXP_LOOT_厚熊皮|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>击杀|cRXP_ENEMY_黑熊幼崽|r. 拾取 |cRXP_LOOT_厚熊皮|r
    >>击杀|cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r. 拾取 |cRXP_LOOT_大块野猪肉|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Young Black Bear
step << !Paladin !Warrior !Rogue
    #completewith Ribs
    >>击杀|cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r. 拾取 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员贝隆费兹|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> 提交 贝尔丁的补给
    .accept 318 >> 接受 艾沃沙酒
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .vendor >> |cRXP_BUY_购买尽可能多的|r |T133968:0|t[刚出炉的面包]
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .vendor >> |cRXP_BUY_购买尽可能多的|r |T132815:0|t[冰镇牛奶]
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >> 前往 灰色洞穴
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>击杀|cRXP_ENEMY_雪怪|r 和 |cRXP_ENEMY_雪怪幼崽|r. 拾取 |cRXP_LOOT_雪怪的鬃毛|r
    >>|cRXP_WARN_记得留意|r |T134566:0|t[铜矿] |cRXP_WARN_, 它能产出|r |T135232:0|t[劣质的石头] |cRXP_WARN_, 用来制造|r |T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_记得留意|r |T134566:0|t[铜矿] |cRXP_WARN_, 它能产出|r |T135232:0|t[劣质的石头] |cRXP_WARN_, 用来制造|r |T135255:0|t[劣质平衡石] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>打开|cRXP_PICK_弹药箱|r. 拾取|cRXP_LOOT_海格纳的弹药|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海格纳·重枪|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> 提交 海格纳的弹药
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海格纳·重枪|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_购买并装备|r |T135611:0|t[精制短枪]|cRXP_BUY_. 买不起就跳过这步|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
step << !Paladin !Warrior !Rogue
    .xp 7 >> Farm到等级 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>击杀|cRXP_ENEMY_黑熊幼崽|r. 拾取 |cRXP_LOOT_厚熊皮|r
    >>击杀|cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r. 拾取 |cRXP_LOOT_大块野猪肉|r 和 |cRXP_LOOT_峭壁野猪肋排|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob Young Black Bear
    .mob Crag Boar
    .mob Large Crag Boar
step << Paladin/Warrior/Rogue
    #completewith Ribs
    >>击杀|cRXP_ENEMY_峭壁野猪|r 和 |cRXP_ENEMY_大峭壁野猪|r. 拾取 |cRXP_LOOT_峭壁野猪肋排|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员贝隆费兹|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> 提交 贝尔丁的补给
    .accept 318 >> 接受 艾沃沙酒
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> 提交 灰色洞穴
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> 买一把矿工锄
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Farm到等级 7
step << Warrior/Rogue
    #som
    .xp 8 >> 在附近刷怪到8级
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> 学习职业技能
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿札尔·战锤|r
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> 学习职业技能
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格兰尼斯·快斧|r
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> 学习职业技能
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .vendor >> |cRXP_BUY_购买最多20个|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >> |cRXP_BUY_购买最多10个|r |T133968:0|t[刚出炉的面包] << Paladin
    .target Innkeeper Belm
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >> 前往ward |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    >>沿途击杀|cRXP_ENEMY_野猪|r, |cRXP_ENEMY_熊|r 和 |cRXP_ENEMY_狼|r
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> 接受 马克格拉恩的干肉
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >> 走向|cRXP_FRIENDLY_图德拉·马克格拉恩|r
    >>沿途击杀|cRXP_ENEMY_野猪|r, |cRXP_ENEMY_熊|r 和 |cRXP_ENEMY_狼|r
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> 接受 马克格拉恩的干肉
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >> 前往 烈酒村
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基格·吉布恩 |r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_WARN_清理背包|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基格·吉布恩 |r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_BUY_购买最多20个|r |T132815:0|t[冰镇牛奶]
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷杰德·麦酒|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> 提交 艾沃沙酒
    .accept 319 >> 接受 艾沃沙酒
    .accept 315 >> 接受 完美烈酒
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马莱斯·麦酒|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> 接受 针锋相对
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>击杀|cRXP_ENEMY_冰爪熊|r, |cRXP_ENEMY_老峭壁野猪|r 和 |cRXP_ENEMY_雪豹|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Snow Leopard
step
    >>击杀|cRXP_ENEMY_老峭壁野猪|r. 拾取 |cRXP_LOOT_峭壁野猪肋排|r
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    .complete 384,1 --Collect Crag Boar Rib (x6)
    .mob Elder Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷杰德·麦酒|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> 提交 艾沃沙酒
    .accept 320 >> 接受 艾沃沙酒
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>如果你已经提交了 啤酒烤猪排, 刷怪到 4360+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    .xp 7+3735 >>刷怪到 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> 前往这里.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>爬上山峰北坡
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>到这里来
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>一直向北走, 到湿地就跳下来自杀并在米奈希尔港复活
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> 游到岸边
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> 开启 米奈希尔港 鸟点
step
	#completewith next
    .hs >> 炉石回 卡拉诺斯
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    >>|cRXP_BUY_购买1件|r |T132800:0|t[狂想麦酒] |cRXP_BUY_和1件|r |T132800:0|t[雷霆麦酒]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与|cRXP_FRIENDLY_加文·雷酒|r对话
    .turnin 308 >> 提交 加文的爱好
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>点击 the |cRXP_PICK_无人守卫的雷酒桶|r
    .turnin 310 >> 提交 针锋相对
    .accept 311 >> 接受 向马莱斯回报
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格纳·雷酒|r outside
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> 提交 啤酒烤猪排
step << !Paladin !Rogue !Warrior
    .xp 8 >> Farm到等级 8
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞夫|r
    .trainer >> 学习职业技能
    .train 5116>> 学习 震荡射击
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉姆瑞兹·影轮|r
    .target Gimrizz Shadowcog
    .trainer >> 学习职业技能
    .train 5782 >> 学习 |T136183:0|t[恐惧]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉姆瑞兹·影轮|r
    .vendor >> |cRXP_BUY_购买|r |T133738:0|t[魔典：火焰箭（等级 2）] |cRXP_BUY_买得起就买, 买不起就稍后购买|r
    .target Gimrizz Shadowcog
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> 学习职业技能
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿札尔·战锤|r
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> 学习职业技能
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格兰尼斯·快斧|r
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> 学习职业技能
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛济斯·石衣|r
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> 学习职业技能
    .train 118 >> 学习 |T136071:0|t[变形术]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马克萨恩·安沃尔|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .trainer >> 学习职业技能
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨姆诺·普尔|r
    .train 3273 >> 学习 |T135966:0|t[急救]
    .target Thamner Pol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T135321:0|t[步兵剑]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T132401:0|t[双刃战斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T135641:0|t[卷刃的剑]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备|r |T133053:0|t[木槌棒]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_购买最多30个|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >> |cRXP_BUY_购买最多15个|r |T133968:0|t[刚出炉的面包] << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板贝尔姆|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_购买最多30个|r |T132815:0|t[冰镇牛奶]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森内尔·白须|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> 接受 霜鬃巨魔要塞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> 提交 灰色洞穴
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员贝隆费兹|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    >>|cRXP_WARN_任务奖励选择|r |T135637:0|t[露营小刀] |cRXP_WARN_之后会用到|r << Rogue
    .turnin 320 >> 提交 艾沃沙酒
step
    #era << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉索·滑链|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> 接受 自动净化装置
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> 前往 闪光岭. 跟随箭头爬上山
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>击杀|cRXP_ENEMY_霜鬃先知|r. 拾取 |cRXP_LOOT_微光草|r
    >>|cRXP_LOOT_微光草|r 也能从地上的 |cRXP_PICK_微光草篮|r中开出
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_马克格拉恩的储肉柜|r. 拾取|cRXP_LOOT_马克格拉恩的干肉|r
    >>|cRXP_WARN_等待|cRXP_ENEMY_老冰须|r走出洞穴. 一旦他走出来就进入洞穴并拾取|r |cRXP_PICK_马克格拉恩的储肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_对|r |cRXP_ENEMY_老冰须|r|cRXP_WARN_施放|r |T136071:0|t[变形术] << Mage
    >>|cRXP_WARN_对|r |cRXP_ENEMY_老冰须|r|cRXP_WARN_施放|r |T136183:0|t[恐惧] << Warlock
    >>打开|cRXP_PICK_马克格拉恩的储肉柜|r. 拾取|cRXP_LOOT_马克格拉恩的干肉|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> 提交 马克格拉恩的干肉
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基格·吉布恩 |r
    .vendor >> |cRXP_BUY_购买最多10个|r |T132815:0|t[冰镇牛奶]
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基格·吉布恩 |r
    .vendor >> |cRXP_WARN_清理背包|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷杰德·麦酒|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> 提交 完美烈酒
    .accept 413 >> 接受 微光酒
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马莱斯·麦酒|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> 提交 向马莱斯回报
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>击杀|cRXP_ENEMY_麻疯地精|r. 拾取|cRXP_LOOT_多档齿轮|r和|cRXP_LOOT_自适应齿轮|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #era
    .xp 9 >> Farm到等级 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> 前往 霜鬃巨魔要塞
step
    #completewith next
    >>击杀|cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #hardcore
    >>|cRXP_WARN_从这里跳下以侦查霜鬃巨魔要塞. 如果底下有怪, 就正常清怪下去|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step << Hunter
    #completewith next
    .xp 10-2325
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>击杀|cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Hunter
    .xp 10-1400
step
    #hardcore
	#completewith next
	.hs >> 炉石回 卡拉诺斯
	.cooldown item,6948,>0,1
step
    #hardcore
    #completewith next
   .goto Dun Morogh,46.726,53.826,150 >> 前往 卡拉诺斯
step << Hunter
   .goto Dun Morogh,46.005,48.637,8,0
   .goto Dun Morogh,45.846,49.365
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉索·滑链|r
   .target Razzle Sprysprocket
   .turnin 412 >> 提交 自动净化装置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森内尔·白须|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> 提交 霜鬃巨魔要塞
    .accept 291 >> 接受 森内尔的报告
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >> 接受 救赎之路
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨姆诺·普尔|r
    .train 3273 >> 学习 |T135966:0|t[急救]
    .target Thamner Pol
step << !Hunter
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉索·滑链|r
    .target Razzle Sprysprocket
    .turnin 412 >> 提交 自动净化装置
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞夫|r
    .accept 6064 >> 接受 驯服野兽
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_对|r|cRXP_ENEMY_大峭壁野猪|r|cRXP_WARN_使用|r |T132164:0|t[驯兽棒]
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >> 提交 驯服野兽
    .target Grif Wildheart
    .accept 6084 >> 接受 驯服野兽
step << Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_对|r |cRXP_ENEMY_雪豹|r|cRXP_WARN_使用|r |T132164:0|t[驯兽棒]
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >> 提交 驯服野兽
    .target Grif Wildheart
    .accept 6085 >> 接受 驯服野兽
step << Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_对|r|cRXP_ENEMY_冰爪熊|r|cRXP_WARN_使用|r |T132164:0|t[驯兽棒]
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >> 提交 驯服野兽
    .target Grif Wildheart
    .accept 6086 >> 接受 训练野兽
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +|cRXP_WARN_刷怪直到你有10s30c, 然后跑进 铁炉堡|r
step << Warrior/Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> 前往 铁炉堡
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝莉亚·雷岩|r
    .turnin 6086 >> 提交 训练野兽
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比克斯|r
    .trainer >> 学习 投掷武器
    .target Bixi Wobblebonk
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与|cRXP_FRIENDLY_布雷文·寒钢|r对话
    >>|cRXP_BUY_购买并装备|r |T135641:0|t[破损的平衡飞刀]|r
    .target Brenwyn Wintersteel
step << Warrior/Hunter
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
    .zone Dun Morogh >> 离开 铁炉堡
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> 接受 保护牲畜
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>从这边爬上山
step
    .goto Dun Morogh,62.6,46.1
    >>击杀|cRXP_ENEMY_瓦加什|r. 拾取|cRXP_LOOT_瓦加什的牙齿|r
    >>|cRXP_WARN_这个任务比较难. 如果需要的话可以组队击杀. 如果你组不到队伍或者不能Solo他就跳过这步|r
    >>|cRXP_WARN_在你击杀|cRXP_ENEMY_瓦加什|r之前查看以下视频. 它能被所有职业Solo|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁德拉·冻石|r
    >>|cRXP_WARN_任务奖励选择|r|T133052:0|t[|cRXP_FRIENDLY_寒脊之锤|r]|cRXP_WARN_. 你目前不能装备,不过不用担心一会就会学习双手锤技能.|r << Warrior
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> 提交 保护牲畜
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> 前往 古博拉采掘场
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >> 学习 |T133971:0|t[烹饪]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >> |cRXP_BUY_如果需要就购买|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >> |cRXP_BUY_如果需要就购买|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_参议员梅尔·圣石|r 和 |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >> 接受 公众之仆
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> 接受 该死的石腭怪！
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>击杀|cRXP_ENEMY_石腭击颅者|r 和 |cRXP_ENEMY_石腭断骨者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头乔尼·石眉|r 和 |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >> 提交 该死的石腭怪！
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> 提交 公众之仆
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> 刷到等级 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >> 接受 失踪的驾驶员
step
    >>点击 the |cRXP_PICK_矮人的尸体|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> 提交 失踪的驾驶员
    .accept 417 >> 接受 驾驶员的复仇
step
    >>击杀|cRXP_ENEMY_癞爪|r. 拾取|cRXP_LOOT_肮脏的爪子|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> 提交 驾驶员的复仇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> 提交 微光酒
    .accept 414 >> 接受 卡德雷尔的酒
step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> 前往 洛克莫丹
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人库伯弗林特|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> 接受 保卫国王的领土
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在堡垒中与|cRXP_FRIENDLY_拉格弗斯上尉|r对话
    .target Captain Rugelfuss
    .accept 267 >> 接受 穴居人的威胁
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_在一条穿越塞尔萨玛的路上巡逻|r
    .turnin 414 >> 提交 卡德雷尔的酒
    .accept 416 >> 接受 狗头人的耳朵
    .accept 1339 >> 接受 巡山人卡尔·雷矛的任务
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >> 接受 荣誉学员
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维德拉·壁炉|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> 接受 塞尔萨玛血肠
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅尼·铁心|r
    .vendor >> |cRXP_BUY_如果需要就购买1个|r |T133634:0|t[棕色小包]
    .target Yanni Stoutheart
step << !Paladin
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .home >> 绑定炉石到 塞尔萨玛
    .target Innkeeper Hearthstove
step << skip
    #sticky
    #completewith next
    +刷怪直到你有至少 33s 价值的垃圾和G
--N rogue money gate for cutlass+1h swords
step
    #completewith Thelsamar1
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取 |cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取 |cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_保存所有的|r |T133970:0|t[大块野猪肉] |cRXP_WARN_之后会用来提升 |T133971:0|t[烹饪] |cRXP_WARN_技能|r
    >>|cRXP_WARN_不要绕路去完成这个任务, 你很快就会回到这边|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> 向北前往 奥加兹岗哨
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >> 提交 巡山人卡尔·雷矛的任务
    .accept 1338 >> 接受 卡尔·雷矛的订单
    .accept 307 >> 接受 肮脏的爪子
    .target Mountaineer Stormpike
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >> 提交 巡山人卡尔·雷矛的任务
    .accept 1338 >> 接受 卡尔·雷矛的订单
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> 自杀并在塞尔萨玛复活
step
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维德拉·壁炉|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> 提交 塞尔萨玛血肠
step
    #label Thelsamar1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> 提交 荣誉学员
    .accept 6391 >> 接受 飞往铁炉堡
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >> 飞去铁炉堡
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高尼尔·石趾|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> 提交 飞往铁炉堡
    .accept 6388 >> 接受 格莱斯·瑟登
step << Hunter
    >>|cRXP_WARN_哪都不要飞！！！|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> 提交 格莱斯·瑟登
    .accept 6392 >> 接受 向布洛克回复
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_参议员巴林·红石|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> 提交 森内尔的报告
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布里维夫·石拳|r
    >>|cRXP_WARN_装备|r |T133052:0|t[|cRXP_FRIENDLY_寒脊之锤|r]
    .target Buliwyf Stonehand
    .goto Ironforge,61.181,89.514
    .trainer >> 学习 双手锤
step << !Hunter
    >>|cRXP_WARN_哪都不要飞！！！|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> 提交 格莱斯·瑟登
    .accept 6392 >> 接受 向布洛克回复
step << !Hunter
    #completewith next
    +你可以通过在狮鹫头上登出并再次登入来快速移动到矿道地铁处
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_点击此处查看视频参考|r
    .zoneskip Ironforge,1
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_前往 矿道地铁|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在中间月台与|cRXP_FRIENDLY_蒙提|r对话
    .target Monty
    .accept 6661 >> 接受 捕捉矿道老鼠
step
    .use 17117 >>|cRXP_WARN_对|r |cRXP_ENEMY_矿道老鼠|r|cRXP_WARN_使用|r|T133942:0|t[捕鼠者之笛]
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒙提|r
    .target Monty
    .turnin 6661 >> 提交 捕捉矿道老鼠
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> 接受 我的兄弟，尼普希
step
    #completewith next
    .zone Stormwind City >> 乘坐地铁前往 暴风城
    >>|cRXP_WARN_你可以在等地铁时|r|cRXP_WARN_提升|r |T135966:0|t[急救] |cRXP_WARN_和|r |T133971:0|t[烹饪]
    >>|cRXP_WARN_之后有个24级的任务需要|T135966:0|t[急救]达到80|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t一下地铁就与|cRXP_FRIENDLY_尼普希|r对话
    >>|cRXP_FRIENDLY_尼普希|r |cRXP_WARN_在中间月台上|r
    .turnin 6662 >> 提交 我的兄弟，尼普希
    .target Nipsy
step
    .zone Stormwind City >> 前往 暴风城
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> 接受 雷矛的包裹
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗伦·长须|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> 提交 卡尔·雷矛的订单
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> 前往 暴风城大教堂
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> 学习职业技能
    .turnin 5634 >> 提交 绝望祷言
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .train 13908 >> 学习 绝望祷言
    .target High Priestess Laurena
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊尔莎·考宾|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >> 学习职业技能
    .accept 1638 >> 接受 战士的训练
    .target Ilsa Corbin
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> 前往 旅店
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈里·伯加德|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> 提交 战士的训练
    .accept 1639 >> 接受 醉鬼巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴特莱比|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> 提交 醉鬼巴特莱比
    .accept 1640 >> 接受 击败巴特莱比
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击 |cRXP_ENEMY_巴特莱比|r. 他会在1%时投降
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴特莱比|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> 提交 击败巴特莱比
    .accept 1665 >> 接受 巴特莱比的酒杯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈里·伯加德|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> 提交 巴特莱比的酒杯
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往 已宰的羔羊 然后下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >> 学习职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .accept 1688 >> 接受 苏伦娜·凯尔东
    .target Gakin the Darkbinder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吴平|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >> 学习 单手剑 << Rogue/Mage
    .trainer >> 学习 法杖 << Priest
    .trainer >> 学习 单手剑 和 法杖 << Warlock
    .trainer >> 学习 双手剑 << Warrior/Paladin
step << Dwarf Paladin
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板奥里森|r
    .home >> 绑定炉石到 暴风城
    .target Innkeeper Allison
step << Rogue
    .money <0.2000
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_冈瑟尔·维勒|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_购买一把|r |T135346:0|t[斗士短剑] |cRXP_WARN_然后装备到主手上. 装备之前得到的|r |T135641:0|t[|cRXP_FRIENDLY_工匠匕首|r] |cRXP_WARN_到副手上|r
step << Rogue
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔曼·穆比|r
    .vendor >> |cRXP_BUY_购买|r |T135425:0|t[破损的锋利飞刀]|cRXP_BUY_. 当你11级时装备上|r
    .target Thurman Mullby
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som
#classic
<< Alliance
#name 10-11 艾尔文森林 (矮人/侏儒)
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Gnome/Dwarf
#next 11-13 洛克莫丹 (矮人/侏儒)

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >> 开启 暴风城 鸟点
    .target Dungar Longdrink
step
    #completewith next
    .goto Elwynn Forest,42.107,65.930,100 >> 前往 闪金镇
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .accept 62 >> 接受 法戈第矿洞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·匹斯特|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> 接受 狗头人的蜡烛
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> 前往旅店二楼
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔迪玛·维夫希尔特|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> 学习职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> 学习职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷米|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> 接受 鱼人的威胁
    .accept 47 >> 接受 金砂交易
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯通菲尔德妈妈|r 和 |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .target Ma Stonefield
    .target "Auntie" Bernice Stonefield
    .accept 88 >> 接受 公主必须死!
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> 接受 丢失的项链
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比利·马科伦|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> 提交 丢失的项链
    .accept 86 >> 接受 比利的馅饼
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝尔·马科伦|r
    .accept 106 >> 接受 年轻的恋人
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汤米·乔·斯通菲尔德|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> 提交 年轻的恋人
    .accept 111 >> 接受 托米的祖母
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,34.486,84.252
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    >>|cRXP_WARN_如果你没有足够的 [大块野猪肉] 就暂时跳过|r
    .turnin 86 >> 提交 比利的馅饼
    .isQuestComplete 86
    .target "Auntie" Bernice Stonefield
step
    .goto Elwynn Forest,34.943,83.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯通菲尔德老奶奶|r
    .turnin 111 >> 提交 托米的祖母
    .accept 107 >> 接受 给威廉·匹斯特的信
    .target Gramma Stonefield
step
    #completewith next
    >>击杀|cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r. 拾取 |cRXP_LOOT_大蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_5级的怪可能已经变灰了. 但你还是需要完成这个任务以接到后续任务|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_前往并侦查法戈第矿洞|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>击杀|cRXP_ENEMY_狗头人隧道工|r 和 |cRXP_ENEMY_狗头人矿工|r. 拾取 |cRXP_LOOT_大蜡烛|r 和 |cRXP_LOOT_金砂|r
    >>|cRXP_WARN_5级的怪可能已经变灰了. 但你还是需要完成这个任务以接到后续任务|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> 前往 闪金镇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷米|r
    >>|cRXP_WARN_不要卖掉|r |T133581:0|t[弹子球] |cRXP_WARN_. 此物品在整个升级过程中都十分有价值|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> 提交 金砂交易
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> 提交 法戈第矿洞
    .accept 76 >> 接受 玉石矿洞
    .turnin 40 >> 提交 鱼人的威胁
    .accept 35 >> 接受 卫兵托马斯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·匹斯特|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> 提交 狗头人的蜡烛
    .accept 61 >> 接受 送往暴风城的货物
    .turnin 107 >> 提交 给威廉·匹斯特的信
    .accept 112 >> 接受 收集海藻
step
    >>击杀|cRXP_ENEMY_鱼人|r 和 |cRXP_ENEMY_鱼人士兵|r. 拾取 |cRXP_LOOT_水晶藻叶|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> 前往 玉石矿洞
step
    >>|cRXP_WARN_走中间的路以侦查 玉石矿洞|r
    >>|cRXP_WARN_一旦完成任务目标就离开 玉石矿洞|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵托马斯|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> 提交 卫兵托马斯
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵托马斯|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> 接受 失踪的卫兵
    .accept 52 >> 接受 保卫边境
step
    #era
    #completewith Prowlers
    >>击杀|cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀你看到的 |cRXP_ENEMY_森林熊幼崽|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #era
    >>点击地上的 |cRXP_PICK_被吃掉一半的尸体|r
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> 提交 失踪的卫兵
    .accept 45 >> 接受 罗尔夫的下落
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员莱琳|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> 接受 木材危机
step
    #era
    #completewith Bundles
    >>拾取地上的 |cRXP_LOOT_一捆木材|r. |cRXP_WARN_通常你能在树下找到它们|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地上的 |cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_WARN_注意这里！！！一旦你点击|r |cRXP_PICK_罗尔夫的尸体|r附近的 |cRXP_ENEMY_鱼人|r 可能会被引到
    >>|cRXP_ENEMY_鱼人强夺者|r |cRXP_WARN_会施放|r |T135915:0|t[喝下初级药水] |cRXP_WARN_, 治疗61-68点生命值|r
    .turnin 45 >> 提交 罗尔夫的下落
    .accept 71 >> 接受 回复托马斯
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>击杀|cRXP_ENEMY_觅食的灰狼|r 和 |cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>拾取 |cRXP_LOOT_一捆木材|r on the ground. |cRXP_WARN_通常你能在树下找到它们|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员莱琳|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> 提交 木材危机
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> 接受 红色亚麻布
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵托马斯|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> 提交 保卫边境
    .turnin 71 >> 提交 回复托马斯
    .accept 39 >> 接受 托马斯的报告
    .accept 109 >> 接受 向格里安·斯托曼报到
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>击杀|cRXP_ENEMY_苏伦娜·凯尔东|r. 拾取 |cRXP_LOOT_苏伦娜的项圈|r
    >>|cRXP_WARN_迅速集火杀掉 |cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_对 |cRXP_ENEMY_收货人摩根|r|cRXP_WARN_持续施放|r |T136183:0|t[恐惧]|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>击杀|cRXP_ENEMY_迪菲亚强盗|r. 拾取 |cRXP_LOOT_红色亚麻面罩|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>击杀|cRXP_ENEMY_公主|r. 拾取 |cRXP_LOOT_黄铜项圈|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_和两个|r |cRXP_ENEMY_Porcine Entourage|r |cRXP_WARN_随从联动|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_还会施放|r |T132368:0|t[急速冲锋] |cRXP_WARN_造成大量伤害|r
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>击杀|cRXP_ENEMY_迪菲亚强盗|r. 拾取 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 并接受任务|r
    >>|T134939:0|t[|cRXP_LOOT_西部荒野地契|r] |cRXP_WARN_是非常稀有的掉落, 如果打不到就跳过|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> 接受 法布隆的地契
step
    #era
    >>击杀|cRXP_ENEMY_迪菲亚强盗|r. 拾取 |cRXP_LOOT_红色亚麻面罩|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    #era
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>如果你没血了就自杀并在灵魂医者处复活, 否则就直接跑回去叫任务
step
    #era
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> 提交 红色亚麻布
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> 前往 赤脊山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵帕克|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> 接受 豺狼人的入侵
step
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_STICK TO THE MAIN ROAD AND AVOID ANY CLOSE MOBS EN-ROUTE|r
    .turnin 244 >> 提交 豺狼人的入侵
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> 开启 赤脊山 鸟点
    .fly Stormwind >> 飞去 暴风城
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >> 提交 送往暴风城的货物
    >>|cRXP_WARN_任务奖励选择|r |T132383:0|t[爆破火箭] |cRXP_WARN_. 它能造成可观的伤害, 还能用来仇恨分离, 相当的好用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_点击此处查看关于如何仇恨分离的视频参考. 这个短视频非常值得学习|r
    .target Morgan Pestle
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往 已宰的羔羊 然后下楼
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .trainer >> 学习职业技能
    .turnin 1688 >> 提交 苏伦娜·凯尔东
    .accept 1689 >> 接受 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往 已宰的羔羊 底层|r
    .cast 7728 >> |cRXP_WARN_使用|r |T133292:0|t[血石颈环] |cRXP_WARN_召唤|r |cRXP_ENEMY_召唤的虚无行者|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> 击杀 |cRXP_ENEMY_召唤的虚无行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
     #softcore
    >>在回去找|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r的路上使用生命分流
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> 提交 誓缚
step << Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> 提交 誓缚
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> 用生命分流或者站在火上自杀并在灵魂医者处复活
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> 前往 闪金镇
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .target Lyria Du Lac
    .trainer >> 学习职业技能
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >> 提交 托马斯的报告
    .turnin 76 >> 提交 玉石矿洞
    .accept 239 >> 接受 西泉要塞
    .target Marshal Dughan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·匹斯特|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> 提交 收集海藻
    .accept 114 >> 接受 梅贝尔的隐形水
    .target William Pestle
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> 前往旅店二楼
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔迪玛·维夫希尔特|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> 学习职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> 学习职业技能
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女牧师洁塞塔|r
    .target Priestess Josetta
    .trainer >> 学习职业技能
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> 前往 马科伦农场
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >> 提交 梅贝尔的隐形水
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .target Ma Stonefield
    .turnin 88 >> 提交 公主必须死!
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    >>|cRXP_WARN_如果你没有足够的 [大块野猪肉] 就暂时跳过|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> 提交 比利的馅饼
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> 放弃 比利的馅饼
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> 前往 西泉要塞
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >> 提交 西泉要塞
    .accept 11 >> 接受 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450
    >>点击 the |cRXP_PICK_通缉告示|r
    .accept 176 >> 接受 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >> 提交 西泉要塞
    .accept 11 >> 接受 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450
    >>点击 the |cRXP_PICK_通缉告示|r
    .accept 176 >> 接受 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >> 提交 西泉要塞
    .accept 11 >> 接受 悬赏河爪豺狼人
    .target Deputy Rainer
step
    #completewith GnollEnd
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人士兵|r. 拾取|T134939:0|t[|cRXP_LOOT_采金日程表|r]
    .use 1307 >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_采金日程表|r] 并接受任务|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_采金日程表|r] |cRXP_WARN_是非常稀有的掉落, 如果打不到就跳过|r
    >>|cRXP_WARN_稀有精英|r|cRXP_ENEMY_格拉夫·疾齿|r|cRXP_WARN_能100%掉落！|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> 接受 收货人
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    #completewith next
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人士兵|r. 拾取 |cRXP_LOOT_彩色豺狼人臂章|r
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_之后圣骑士职业任务会用到|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    #completewith next
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人士兵|r. 拾取 |cRXP_LOOT_彩色豺狼人臂章|r
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_之后圣骑士职业任务会用到|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>击杀|cRXP_ENEMY_霍格|r. 拾取|cRXP_LOOT_巨大的豺狼人爪|r
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_有多个刷新点|r
    >>|cRXP_WARN_对 |cRXP_ENEMY_霍格|r|cRXP_WARN_持续施放|r |T136183:0|t[恐惧]并用你的常规DoTs击杀他|r
    >>|cRXP_WARN_这个任务比较难. 如果需要的话可以组队击杀. 如果你组不到队伍或者不能Solo他就跳过这步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .group
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>击杀|cRXP_ENEMY_霍格|r. 拾取|cRXP_LOOT_巨大的豺狼人爪|r
    >>|cRXP_ENEMY_霍格|r |cRXP_WARN_有多个刷新点|r
    >>|cRXP_WARN_这个任务比较难. 如果需要的话可以组队击杀. 如果你组不到队伍或者不能Solo他就跳过这步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r 和 |cRXP_ENEMY_河爪豺狼人士兵|r. 拾取 |cRXP_LOOT_彩色豺狼人臂章|r
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_之后圣骑士职业任务会用到|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> 提交 通缉：霍格
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> 提交 收货人
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 11 >> 提交 悬赏河爪豺狼人
    .target Deputy Rainer
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> 前往 西部荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> 提交 法布隆的地契
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r 和 |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 64 >> 接受 遗失的怀表
    .goto Westfall,59.95,19.35
    .accept 151 >> 接受 老马布兰契
    .accept 36 >> 接受 杂味炖肉
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫萨丁|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> 接受 清理荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔玛·萨丁|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> 提交 杂味炖肉
    .accept 38 >> 接受 杂味炖肉
    .accept 22 >> 接受 猪肝馅饼
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> 自杀并在灵魂医者处复活, 或者跑去 哨兵岭
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> 提交 向格里安·斯托曼报到
    .accept 12 >> 接受 西部荒野人民军
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹努文队长|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> 接受 西部荒野的豺狼人
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斥候加里安|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> 接受 红色皮质面罩
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔|r
    .fp Sentinel Hill >> 开启 哨兵岭 鸟点
    .fly Stormwind >> 飞去 暴风城 << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> 炉石回 洛克莫丹
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> 前往 矿道地铁. 乘坐地铁前往 铁炉堡
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_矿道地铁可以直接到达. 点击此处查看视频参考|r
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som
#classic
<< Alliance
#name 11-13 洛克莫丹 (矮人/侏儒)
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Gnome/Dwarf
#next 13-15 西部荒野

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >> 提交 圣洁之书
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> 上楼找|cRXP_FRIENDLY_蒂萨·热炉|r
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 2999 >> 提交 圣洁之书
    .accept 1645 >> 提交 圣洁之书
    .turnin 1645 >> 提交 圣洁之书
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_使用 |T133464:0|t[|cRXP_LOOT_圣洁之书|r] 并接受任务|r
    .accept 1646 >> 提交 圣洁之书
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1646 >> 提交 圣洁之书
    .accept 1647 >> 提交 圣洁之书
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_约翰·特纳|r
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_在铁炉堡外环拍卖行附近巡逻|r
    .turnin 1647 >> 提交 圣洁之书
    .accept 1648 >> 提交 圣洁之书
    .turnin 1648 >> 提交 圣洁之书
    .accept 1778 >> 提交 圣洁之书
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_蒂萨·热炉|r对话
    .target Tiza Battleforge
    .turnin 1778 >> 提交 圣洁之书
    .accept 1779 >> 提交 圣洁之书
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆里顿·热炉|r
    .target Muiredon Battleforge
    .turnin 1779 >> 提交 圣洁之书
    .accept 1783 >> 提交 圣洁之书
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> 飞去 洛克莫丹
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅尼·铁心|r
    .vendor >> |cRXP_BUY_如果需要就|r|cRXP_BUY_购买|r |T133634:0|t[棕色小包] 
    .target Yanni Stoutheart
step
    #completewith next
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .vendor >> |cRXP_BUY_如果需要就购买一些|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >> |cRXP_BUY_如果需要就购买一些|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布洛克·寻石者|r
    .turnin 6392 >> 提交 向布洛克回复
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维罗克·乱枪|r
    >>|cRXP_BUY_买得起就|r|cRXP_BUY_购买|r |T135613:0|t[猎人火枪] 
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
step
    .group
    #completewith BraveSoul
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取 |cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取 |cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .solo
    #completewith StormpikeStop
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取 |cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取 |cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .group
    #completewith MinerGear
    >>击杀|cRXP_ENEMY_坑道鼠|r. 拾取 |cRXP_LOOT_坑道鼠的耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> 前往 银泉矿洞
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_矿工联盟的储物箱|r. 拾取|cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r在矿洞内到处能找到|r
    >>|cRXP_WARN_你可以选择暂时跳过这个任务, 之后还有机会过来|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取 |cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取 |cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔伦·安德玛|r
    .vendor >>|cRXP_FRIENDLY_尼尔伦·安德玛|r |cRXP_WARN_出售限量物品|r |T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r]
    >>|cRXP_WARN_如果物品刷新了, 就买下. 钱不够的话, 就刷附近的 |cRXP_ENEMY_坑道鼠|r直到你有足够的钱|r
    >>|cRXP_WARN_抓紧时间购买, 其他玩家可能在你之前把它买了|r
    .target Nillen Andemar
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>击杀|cRXP_ENEMY_坑道鼠|r. 拾取 |cRXP_LOOT_坑道鼠的耳朵|r
    >>|cRXP_ENEMY_坑道鼠|r |cRXP_WARN_在整个 洛克莫丹 都有刷新. 查看世界地图确认它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_如果需要就清理背包并修理装备|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >> 提交 肮脏的爪子
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >> 提交 雷矛的包裹
    .target Mountaineer Stormpike
step
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取 |cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取 |cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取 |cRXP_LOOT_蜘蛛的毒液|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_在一条穿越塞尔萨玛的路上巡逻|r
    .target Mountaineer Kadrell
    .turnin 416 >> 提交 狗头人的耳朵
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维德拉·壁炉|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> 提交 塞尔萨玛血肠
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅尼·铁心|r
    >>|cRXP_BUY_购买|r |T135237:0|t[燧石和火绒] |cRXP_BUY_及2根|r |T135435:0|t[普通木柴]|cRXP_BUY_. 有需要就购买|r|T133634:0|t[棕色小包]|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>击杀|cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r. 拾取 |cRXP_LOOT_穴居人的石牙|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #era
    .goto Loch Modan,27.4,48.4
    .xp 13+9600 >> 刷怪到 9600+/11400xp
step
    #som
    .goto Loch Modan,27.4,48.4
    .xp 14-2300 >> 刷怪到 14级少2300经验 (9100/11400)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人库伯弗林特|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> 提交 保卫国王的领土
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格弗斯上尉|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> 提交 穴居人的威胁
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge>> 飞去铁炉堡
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,86.09,51.15
    .zone Dun Morogh >> 前往 丹莫罗
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_对|r|cRXP_FRIENDLY_纳姆·法奥克|r|cRXP_WARN_使用|r|T133439:0|t[生命符记]
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳姆·法奥克|r
    .use 6866
    .turnin 1783 >> 提交 圣洁之书
    .accept 1784 >> 提交 圣洁之书
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>击杀|cRXP_ENEMY_黑铁间谍|r. 拾取 the |cRXP_LOOT_黑铁手稿|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith next
    .hs >> 炉石回 暴风城
step << Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> 前往 暴风城大教堂
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >> 学习职业技能
    .target Arthur the Faithful
step << Hunter
    .goto Ironforge,69.872,82.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r
    .trainer >> 学习职业技能
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >> 学习职业技能
    .target Bilban Tosslespanner
step << Mage
    .goto Ironforge,26.295,6.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r
    .trainer >> 学习职业技能
    .target Juli Stormkettle

step << Mage/Priest/Warlock
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁炉堡拍卖师|r
    >>|cRXP_BUY_售价低于33s 40c就购买|r |T135144:0|t[强效魔法杖]
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Mage/Priest/Warlock
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与|cRXP_FRIENDLY_哈瑞克·石鼓|r对话
    >>|cRXP_WARN_如果你得不到|r |T135144:0|t[强效魔法杖] |cRXP_WARN_就购买并装备|r |T135468:0|t[烟尘魔杖]
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> 前往 这栋建筑
    .goto Ironforge,50.4,6.3
    .trainer >> 学习职业技能
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >> 学习职业技能
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
    .vendor >> |cRXP_BUY_购买|r |T133738:0|t[魔典：吞噬暗影（等级 1）] |cRXP_BUY_和|r |T133738:0|t[魔典：牺牲（等级 1）]
    .target Jubahl Corpseseeker
step << Rogue
    .goto Ironforge,51.919,14.490,10,0
    .goto Ironforge,50.727,16.380,8,0
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与|cRXP_FRIENDLY_霍夫丹·黑须|r对话
    .turnin -2218 >> 提交 救赎之路
    .trainer >> 学习职业技能
    .target Hulfdan Blackbeard
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r
    .trainer >> 学习职业技能
    .target Toldren Deepiron
step << !Paladin !Warrior !Hunter !Warlock
    #completewith next
    +你可以通过在狮鹫头上登出并再次登入来快速移动到矿道地铁处
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_点击此处查看视频参考|r
    .zoneskip Ironforge,1
step << !Paladin
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> 前往 矿道地铁. 乘坐地铁前往 暴风城
    >>|cRXP_WARN_如果需要可以在等地铁时|r|cRXP_WARN_提升|r |T135966:0|t[急救] |cRXP_WARN_和|r |T133971:0|t[烹饪] 
    >>|cRXP_WARN_之后有个24级的任务需要|T135966:0|t[急救]达到80|r << Rogue !Dwarf
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >> 飞去 西部荒野
    .target Dungar Longdrink
]])
