local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 1-6 兽人/巨魔
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#defaultfor Troll/Orc
#next 6-13 兽人/巨魔

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_你已选择专门为兽人和巨魔准备的指南.你应该选择对应的其实区域|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔图克|r
    .accept 4641
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_击杀 |cRXP_ENEMY_杂斑野猪|r. 打到35铜的垃圾为止(包括你的装备)|r << Warlock
    +|cRXP_WARN_击杀 |cRXP_ENEMY_杂斑野猪|r. 打到10铜的垃圾为止(包括你的装备)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,50,0 << Warlock
    .goto Durotar,44.19,65.34,50,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁赞|r
    .accept 1485 >>接受 邪灵劣魔
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,43.49,67.35,30,0
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    .vendor >> 清理背包
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高内克|r
    .turnin 4641
    .accept 788
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.4 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史克里克|r << Shaman
    .train 6673 >>学习|T132333:0|t[战吼] << Warrior
    .train 8017 >>学习|T136086:0|t[石化武器] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>找到|cRXP_FRIENDLY_赫劳格|r
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫劳格|r
    .vendor >>清理背包
    .target Hraug
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳托克|r
    .train 348 >>学习|T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] << !Hunter
    >>|cRXP_BUY_购买|r|T132382:0|t[劣质箭] << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --清凉的泉水 (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水]
    .collect 159,5,6394,1 --清凉的泉水 (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在去火刃集会所的路上击杀|cRXP_ENEMY_杂斑野猪|r 
    >>|cRXP_WARN_最好在到那前达到2级|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> 前往火刃集会所
    .isOnQuest 1485
step << Warlock
    .loop 25,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>击杀|cRXP_ENEMY_邪灵劣魔|r. 拾取|cRXP_LOOT_邪灵劣魔的头颅|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>击杀|cRXP_ENEMY_杂斑野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳祖|r
    .accept 790 >>接受 萨科斯
    .target Hana'zua
step
    #label Sarkoth
	.goto Durotar,40.88,66.41,40,0
	.goto Durotar,40.41,66.64,40,0
	.goto Durotar,40.43,67.36,40,0
	.goto Durotar,40.72,67.39,40,0
	.loop 20,Durotar,40.88,66.41,40.41,66.64,40.43,67.36,40.72,67.39,40.88,66.41
    >>击杀|cRXP_ENEMY_萨科斯|r. 拾取|cRXP_LOOT_萨科斯的爪子|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳祖|r
    .turnin 790 >>提交 萨科斯
    .accept 804 >>接受 萨科斯
    .target Hana'zua
step
    .loop 25,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    >>击杀|cRXP_ENEMY_杂斑野猪|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << !Warlock !Rogue !Mage
    .loop 50,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+1120 >> 刷到3级多1120经验 1120+/1400xp
    .mob Mottled Boar
step << Warlock
    .loop 25,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 3+760 >> 刷到3级多760经验 760+/1400xp
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_刷|cRXP_ENEMY_杂斑野猪|r. 捡垃圾直到你有1银价值的可售卖物品|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #completewith Ruzan2
	>>|cRXP_WARN_刷|cRXP_ENEMY_杂斑野猪|r. 捡垃圾直到你有2银价值的可售卖物品|r << Warrior
	>>|cRXP_WARN_刷|cRXP_ENEMY_杂斑野猪|r. 捡垃圾直到你有1银 75铜价值的可售卖物品|r << Warlock
	>>|cRXP_WARN_刷|cRXP_ENEMY_杂斑野猪|r. 捡垃圾直到你有1银 10铜价值的可售卖物品|r << Hunter
	>>|cRXP_WARN_刷|cRXP_ENEMY_杂斑野猪|r. 捡垃圾直到你有1银价值的可售卖物品|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    .vendor >> 清理背包
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁赞|r
    .turnin 1485 >>提交 邪灵劣魔
    .accept 1499 >>接受 邪灵劣魔
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_施放|r|T136218:0|t[召唤小鬼]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖雷萨|r
    .turnin 1499 >>提交 邪灵劣魔
    .accept 794 >>接受 火刃奖章
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高内克|r
    .turnin 788,2 >>提交 小试身手 << Shaman
    .turnin 788 >>提交 小试身手 << !Shaman
    .turnin 804,1 >>提交 萨科斯 << Shaman
    .turnin 804 >>提交 萨科斯 << !Shaman
    .accept 2383 >>接受 简易羊皮纸 << Orc Warrior
    .accept 3065 >>接受 普通石板 << Troll Warrior
    .accept 3082 >>接受 风蚀石板 << Troll Hunter
    .accept 3083 >>接受 密文石板 << Troll Rogue
    .accept 3084 >>接受 符文石板 << Troll Shaman
    .accept 3085 >>接受 神圣石板 << Troll Priest
    .accept 3086 >>接受 雕文石板 << Troll Mage
    .accept 3087 >>接受 风蚀羊皮纸 << Orc Hunter
    .accept 3088 >>接受 密文羊皮纸 << Orc Rogue
    .accept 3089 >>接受 符文羊皮纸 << Orc Shaman
    .accept 3090 >>接受 被污染的羊皮纸 << Orc Warlock
    .accept 789 >>接受 工蝎的尾巴
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>进入洞穴找到|cRXP_FRIENDLY_鲁瓦格|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>提交 密文石板 << Troll Rogue
    .turnin 3088 >>提交 密文羊皮纸 << Orc Rogue
    .train 53 >>学习|T132090:0|t[背刺]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>提交 密文石板 << Troll Rogue
    .turnin 3088 >>提交 密文羊皮纸 << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>找到|cRXP_FRIENDLY_纳托克|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>找到|cRXP_FRIENDLY_赫劳格|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫劳格|r
    .vendor >>清理背包
    .target Hraug
    .money >0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>提交 被污染的羊皮纸
    .train 172 >>学习|T136118:0|t[腐蚀术]
    .target Nartok
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈加尔|r
    .accept 4402 >>接受 戈加尔的清凉果
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] << !Warrior !Hunter
    >>|cRXP_BUY_购买|r|T132382:0|t[劣质箭] << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter --清凉的泉水 (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> 清理背包
    .target Duokna
    .money >0.1 << Warrior
    .itemcount 159,<15 << !Warrior !Hunter
step << Shaman
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史克里克|r和|cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 3084 >>提交 符文石板 << Troll
    .turnin 3089 >>提交 符文羊皮纸 << Orc
    .train 8042 >>学习|T136026:0|t[地震术]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接受 大地的召唤
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <4,1
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>提交 符文石板 << Troll
    .turnin 3089 >>提交 符文羊皮纸 << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>提交 雕文石板 << Troll
    .train 1459 >>学习|T135932:0|t[奥术智慧]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖雷萨|r
    .accept 792 >>接受 邪灵劣魔
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>提交 风蚀石板 << Troll
    .turnin 3087 >>提交 风蚀羊皮纸 << Orc
    .train 1978 >>学习|T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .xp <4,1
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>提交 风蚀石板 << Troll
    .turnin 3087 >>提交 风蚀羊皮纸 << Orc
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>提交 简易羊皮纸 << Orc
    .turnin 3065 >>提交 普通石板 << Troll
    .train 100 >>学习|T132337:0|t[冲锋]
    .train 772 >>学习|T132155:0|t[撕裂]
    .target Frang
    .money <0.02
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>提交 简易羊皮纸 << Orc
    .turnin 3065 >>提交 普通石板 << Troll
    .train 772 >>学习|T132155:0|t[撕裂]
    .target Frang
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>提交 简易羊皮纸 << Orc
    .turnin 3065 >>提交 普通石板 << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头塔兹利尔|r
    .accept 5441 >>接受 懒惰的苦工
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>在仙人掌附近拾取|cRXP_LOOT_仙人掌果|r
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>对睡觉的|cRXP_FRIENDLY_懒惰的苦工|r使用|T133486:0|t[工头的木棒]
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>击杀|cRXP_ENEMY_蝎子|r. 拾取|cRXP_LOOT_工蝎的尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    .loop 25,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    >>击杀|cRXP_ENEMY_邪灵劣魔|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    .loop 25,Durotar,43.26,58.2,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.2,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.2
    >>击杀|cRXP_ENEMY_蝎子|r. 拾取|cRXP_LOOT_工蝎的尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    .loop 25,Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
    >>对睡着的|cRXP_FRIENDLY_懒惰的苦工|r使用|T133486:0|t[工头的木棒]
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    .loop 25,Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.7,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
    .xp 4 >> 刷到4级
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>提交 戈加尔的清凉果
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] << !Rogue !Warrior !Hunter
    >>|cRXP_BUY_购买|r|T132382:0|t[劣质箭] << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --清凉的泉水 (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> 清理背包
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高内克|r
    .turnin 789,2 >>提交 工蝎的尾巴 << Shaman
    .turnin 789 >>提交 工蝎的尾巴 << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史克里克|r和|cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>学习|T136026:0|t[地震术]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接受 大地的召唤
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈安|r
    .train 116,1 >>学习|T135846:0|t[寒冰箭]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯杰|r
    .train 589 >>学习职业技能
    .money <0.021
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯杰|r
    .train 1243 >>学习|T135987:0|t[真言术：韧]
    .train 589 >>学习|T136207:0|t[暗言术：痛]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯杰|r
    .train 589,1 >>学习|T136207:0|t[暗言术：痛]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖雷萨|r
    .turnin 792 >>提交 邪灵劣魔
    .accept 794 >>接受 火刃奖章
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沙|r
    .train 1978,1 >>学习|T132204:0|t[毒蛇钉刺]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>学习|T132337:0|t[冲锋]
    .train 772 >>学习|T132155:0|t[撕裂]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .train 772 >>学习|T132155:0|t[撕裂]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>学习|T132337:0|t[冲锋]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 5441 >>提交 懒惰的苦工
    .accept 6394 >>接受 塔兹利尔的镐
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >> 刷到4级多1720经验 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.8,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
    .loop 25,Durotar,44.67,64.92,43.45,62.96,43.8,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
    >>在仙人掌附近拾取|cRXP_LOOT_仙人掌果|r
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    .loop 25,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    .xp 4+1720 >> 刷到4级多1720经验1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    .loop 25,Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.3,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
    .xp 5 >> 刷到5级
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>击杀|cRXP_ENEMY_恶魔捕猎者|r. 拾取|cRXP_LOOT_地狱捕猎者的蹄子|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>拾取|cRXP_PICK_塔兹利尔的镐|r
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.3,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>找到|cRXP_ENEMY_亚罗格·刺影|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>击杀|cRXP_ENEMY_亚罗格·刺影|r. 拾取|cRXP_LOOT_火刃奖章|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.3,54.22,42.53,53.48,43.27,53.8,42.70,52.99
    >>击杀|cRXP_ENEMY_恶魔捕猎者|r. 拾取|cRXP_LOOT_地狱捕猎者的蹄子|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.3,54.22,42.53,53.48,43.27,53.8,42.70,52.99
    .xp 6 >> 刷到6级<< !Shaman
    .xp 5+1810 >> 刷到5级多1810经验 1810+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    .loop 25,Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.3,54.22,42.53,53.48,43.27,53.8,42.70,52.99
    .xp 6 >> 刷到6级<< !Shaman
    .xp 5+1430 >> 刷到5级多1430经验 1430+/2800xp << Shaman
    .isQuestComplete 4402
step
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_卡悬浮Bug出洞到剃刀岭墓地. 走到岩石边缘直到看起来悬浮在空中, 然后登出再登入|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> |cRXP_WARN_点击这里查看演示|r
step
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_你能在碉堡外面或者顶上与他对话|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .accept 784 >>接受 背信弃义的人类
    .target Gar'thok
step << Hunter
    #completewith next
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞姆塔克|r
    .vendor >> 清理背包
    .target Grimtak
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往哨塔
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔顶找弗恩·凝眉
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗恩·凝眉|r
    .accept 791 >>接受 新的背包
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>学习|T136248:0|t[采矿]. 这可以让你用|T135232:0|t[劣质的石头]制作|T135248:0|t[磨刀石] (30分钟+2武器伤害)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_他|r|cRXP_BUY_那购买|r|T134708:0|t[矿工锄]
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜克|r
    .train 2018 >>学习|T136241:0|t[锻造]
    .target Dwukk
step
    #completewith next
    .hs >>炉石回试炼谷
    .use 6948
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖雷萨|r
    .turnin 794 >>提交 火刃奖章
    .accept 805 >>接受 去森金村报到
    .target Zureetha Fargaze
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>提交 戈加尔的清凉果
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多克纳|r
    .vendor >> 清理背包
    .target Duokna
    .money >0.03
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯杰|r
	.accept 5649 >>接受 部族的传统 << Troll Priest
	.train 591 >>学习|T135924:0|t[惩击]
    .train 17 >>学习|T135940:0|t[真言术：盾]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈安|r
    .train 143 >>学习|T135812:0|t[火球术]
    .train 2136 >>学习|T135807:0|t[火焰冲击]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史克里克|r和|cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 332 >>学习|T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>提交 大地的召唤
    .accept 1517 >>接受 大地的召唤
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 1516 >>提交 大地的召唤
    .accept 1517 >>接受 大地的召唤
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沙|r
    .train 1130 >>学习|T132212:0|t[猎人标记]
    .train 3044 >>学习|T132218:0|t[奥术射击]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沙|r
    .train 3044 >>学习|T132218:0|t[奥术射击]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>学习|T132269:0|t[招架]
    .train 6343 >>学习|T136105:0|t[雷霆一击]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>学习|T132269:0|t[招架]
    .target Frang
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>找到|cRXP_FRIENDLY_鲁瓦格|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>学习|T136189:0|t[邪恶攻击]
    .train 1776 >>学习|T132155:0|t[凿击]
    .target Rwag
    .money <0.02
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>学习|T136189:0|t[邪恶攻击]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>找到|cRXP_FRIENDLY_赫劳格|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫劳格|r
    >>|cRXP_BUY_从他那|r|cRXP_BUY_购买|r|T133738:0|t[魔典：血契（等级 1）]
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>清理背包
    .target Hraug
    .money <0.03
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳托克|r
    .train 695 >>学习|T136197:0|t[暗影箭]
    .train 1454 >>学习|T136126:0|t[生命分流]
    .target Nartok
    .money <0.02
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳托克|r
    .train 695 >>学习|T136197:0|t[暗影箭]
    .target Nartok
step << Warlock
    #completewith Leave
    .train 20397 >> 使用|T133738:0|t[魔典：血契（等级 1）]
    .itemcount 16321,1
    .use 16321
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>找到|cRXP_PICK_萨满圣地e|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>使用|T134743:0|t[大地灵契]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小型大地之灵体|r
    .turnin 1517 >>提交 大地的召唤
    .accept 1518 >>接受 大地的召唤
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_坎纳甘·地鸣|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>提交 大地的召唤
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史克里克|r
    .train 332 >>学习|T136052:0|t[治疗波]
    .target Shikrik
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>提交 塔兹利尔的镐
    .target Foreman Thazz'ril
step
    #label Leave
    #completewith next
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>离开试炼谷
    .isOnQuest 805
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接受 苦工的重担
    .target Ukor
    ]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 6-13 兽人/巨魔
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#defaultfor Troll/Orc
#next 13-15 银松森林

step
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔·猎齿|r. 他在附近巡逻
    .accept 786 >>接受 科卡尔半人马的进攻
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r和|cRXP_FRIENDLY_加德林大师|r
    .accept 817 >>接受 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .accept 818 >>接受 沃纳尔大师
    .goto Durotar,55.94,74.40
    .turnin 805 >>提交 去森金村报到
    .accept 808 >>接受 明希纳的颅骨
    .accept 826 >>接受 扎拉赞恩
    .accept 823 >>接受 向奥戈尼尔报告
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> 进入大棚屋
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_克瓦埃|r|cRXP_BUY_. 购买|r|T135421:0|t[增重飞斧]
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_克瓦埃|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] --清凉的泉水 (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_克瓦埃|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] --清凉的泉水 (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135145:0|t[学徒短杖] (5s 04c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135145:0|t[学徒短杖]
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135641:0|t[卷刃的剑] (4s 01c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑]
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T132401:0|t[双刃战斧] (4s 84c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T132401:0|t[双刃战斧]
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135421:0|t[小手斧] (5s 40c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135421:0|t[小手斧]
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135499:0|t[角木弯弓] (2s 83c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135499:0|t[角木弯弓]
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith Bonfire
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Bonfire
    +装备|T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Bonfire
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +装备|T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +装备|T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bonfire
    +装备|T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安苏瓦|r
    .train 143 >>学习|T135812:0|t[火球术]
    .train 2136 >>学习|T135807:0|t[火焰冲击]
    .target Un'Thuwa
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_施放|r|T136025:0|t[寻找矿物] |cRXP_WARN_并挖你见到的所有铜矿收集|r|T135232:0|t[劣质的石头]|cRXP_WARN_. 用来制造|r|T135248:0|t[磨刀石]
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .skill mining,<1,1
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>沿着海岸往南跑. 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r. 你不需要现在就完成这步.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >>赶到海滩尽头
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>进入科卡尔营地
    .isOnQuest 786
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_开始收集3组|r|T132889:0|t[亚麻布], 之后的任务会用到.|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_注意! 如果9级稀有精英|r|cRXP_ENEMY_督军科卡尼斯|r|cRXP_WARN_刷新了, 你可能必须使用|r|T134829:0|t[初级治疗药水] |cRXP_WARN_来击杀他|r
    .unitscan Warlord Kolkanis
step
    >>烧毁帐篷内地上的|cRXP_PICK_进攻计划:试炼谷|r
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>烧毁帐篷内地上的|cRXP_PICK_进攻计划:森金村|r
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: 森金村 destroyed (1)
step
    #label Bonfire
    >>烧毁帐篷内地上的|cRXP_PICK_进攻计划:奥格瑞玛|r
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>离开科卡尔营地
    .isQuestComplete 786
step
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔·猎齿|r. 他在附近巡逻
    .turnin 786,1 >>提交 科卡尔半人马的进攻 << Shaman
    .turnin 786 >>提交 科卡尔半人马的进攻 << !Shaman
    .target Lar Prowltusk
step
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃纳尔大师|r
    .turnin 818 >>提交 沃纳尔大师
    .target Master Vornal
    .isQuestComplete 818
step
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海赞|r
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排] << Warrior/Rogue/Shaman
    .vendor >> 清理背包
    .collect 2287,10,823,1 --Haunch of Meat (10) << Warrior/Rogue/Shaman
    .money <0.025 << Warrior/Rogue/Shaman
    .target Hai'zan
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135145:0|t[学徒短杖] (5s 04c), 就卖掉现有武器并购买, 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135145:0|t[学徒短杖]
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135641:0|t[卷刃的剑] (4s 01c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑]
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T132401:0|t[双刃战斧] (4s 84c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T132401:0|t[双刃战斧]
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135421:0|t[小手斧] (5s 40c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135421:0|t[小手斧]
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135499:0|t[角木弯弓] (2s 83c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135499:0|t[角木弯弓]
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith TravelToTiragarde
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith TravelToTiragarde
    +装备|T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith TravelToTiragarde
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith TravelToTiragarde
    +装备|T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith TravelToTiragarde
    +装备|T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith TravelToTiragarde
    +装备|T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> 前往提拉加德城堡. 顺路刷怪
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_注意! 如果9级精英|r|cRXP_ENEMY_指挥官萨拉菲尔|r|cRXP_WARN_刷新了, 你可能必须使用|r|T134829:0|t[初级治疗药水]|cRXP_WARN_来击杀他|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> 前往城堡二楼
step
    #completewith AgedEnvelope
    >>击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>击杀|cRXP_ENEMY_本尼迪克上尉|r. 拾取|cRXP_LOOT_本尼迪克的钥匙|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>前往楼上并打开|cRXP_PICK_本尼迪克的箱子|r拾取|T133471:0|t[|cFF00BCD4旧信封|r]并接受任务
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>接受 将军的命令
    .use 4881
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r并拾取|cRXP_LOOT_帆布脚料|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+2180 >> 刷到7级多2180经验 2180+/4500xp
step << Priest
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1730 >> 刷到7级多1730经验 1750+/4500xp
step
    #completewith next
    .goto Durotar,52.38,43.77,120 >> 前往剃刀岭
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r和|cRXP_FRIENDLY_厨师托尔卡|r
    .turnin 823 >>提交 向奥戈尼尔报告
    .accept 806 >>接受 黑暗风暴
    .goto Durotar,52.25,43.18
    .turnin 784 >>提交 背信弃义的人类
    .turnin 830 >>提交 将军的命令
    .accept 825 >>接受 海底沉船
    .accept 831 >>接受 将军的命令
    .accept 837 >>接受 野猪人的进犯
    .goto Durotar,51.95,43.50
    .accept 815 >>接受 恐龙蛋大餐
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r和|cRXP_FRIENDLY_厨师托尔卡|r
    .turnin 823 >>提交 向奥戈尼尔报告
    .goto Durotar,52.25,43.18
    .turnin 784 >>提交 背信弃义的人类
    .turnin 830 >>提交 将军的命令
    .accept 825 >>接受 海底沉船
    .accept 831 >>接受 将军的命令
    .accept 837 >>接受 野猪人的进犯
    .goto Durotar,51.95,43.50
    .accept 815 >>接受 恐龙蛋大餐
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往哨塔
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔顶找弗恩·凝眉
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗恩·凝眉|r
    .turnin 791 >>提交 新的背包
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁恩|r
    .train 2575,1 >>学习|T136248:0|t[采矿]. 这样就能在矿脉里找到|T135232:0|t[劣质的石头]以制作|T135248:0|t[磨刀石] (30分钟+2武器伤害)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买|r|T134708:0|t[矿工锄] |cRXP_BUY_from|r|cRXP_FRIENDLY_沃克|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜克|r
    .train 2018,1 >>学习|T136241:0|t[锻造]
    .target Dwukk
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135145:0|t[学徒短杖] (5s 04c), 就卖掉现有武器并购买, 就卖掉现有武器并购买., 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T135145:0|t[学徒短杖]
    .collect 2495,1,818,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135641:0|t[卷刃的剑] (4s 01c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑]
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T132401:0|t[双刃战斧] (4s 84c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T132401:0|t[双刃战斧]
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135421:0|t[小手斧] (5s 40c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T135421:0|t[小手斧]
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Toolboxes
    +装备|T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Toolboxes
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +装备|T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +装备|T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳特|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135499:0|t[角木弯弓] (2s 83c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格劳特|r|cRXP_BUY_. 购买|r|T135499:0|t[角木弯弓]
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #completewith Toolboxes
    +装备|T135499:0|t[角木弯弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格劳特. 购买|r|T132382:0|t[劣质箭]
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 284 >>学习职业技能
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯瓦特|r
    .train 8044 >>学习职业技能
    .target Swart
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基萨|r并购买|T133738:0|t[魔典：火焰箭（等级 2）]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >> 使用|T133738:0|t[魔典：火焰箭（等级 2）]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .train 5116 >>学习职业技能
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >>学习职业技能
    .target Kaplak
step << Troll Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .turnin 5649 >>提交 部族的传统
    .accept 5648 >> 接受 灵魂之衣
    .target Tai'jin
step << Troll Priest
    .goto Durotar,53.10,46.46
    >>对|cRXP_FRIENDLY_蛮兵科雅|r施放|T135929:0|t[次级治疗术]和|T135987:0|t[真言术：韧]
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .turnin 5648 >>提交 灵魂之衣 << Troll Priest
    .trainer >>学习职业技能
    .target Tai'jin
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>学习|T135966:0|t[急救]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_购买|r|T133634:0|t[棕色小包]
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排] << Rogue/Warrior
    .vendor >> 清理背包
    .home >> 绑定炉石到剃刀岭
    .turnin 2161 >>提交 苦工的重担
    .collect 1179,10,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.025
step
    #completewith next
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r. 你不用现在就完成这个任务
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label Tools
    >>在沉船里外拾取|cRXP_PICK_侏儒的工具|r
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> 游往小岛
step
    #completewith Fur
    >>击杀|cRXP_ENEMY_杜隆塔尔猛虎|r. 拾取|cRXP_LOOT_杜隆塔尔虎皮|r. 你不用现在就完成这个任务
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label TaillasherEggs
    .loop 25,Durotar,67.74,69.86,67.04,71.40,67.66,73.86,68.67,74.47,69.76,74.69,70.29,73.31,70.23,70.84,69.69,70.35,69.21,69.69,67.74,69.86
    >>拾取地上的|cRXP_PICK_鞭尾龙的蛋|r. 通常会有|cRXP_ENEMY_血爪鞭尾龙|r守在边上
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>游往主岛
step
    #completewith MinshinasSkull
    >>击杀|cRXP_ENEMY_妖术巨魔|r和|cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_巫毒巨魔|r|cRXP_WARN_会|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>击杀|cRXP_ENEMY_扎拉赞恩|r. 拾取|cRXP_LOOT_扎拉赞恩的头颅|r
    >>|cRXP_WARN_注意留|T136026:0|t[地震术] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_注意留|T132155:0|t[凿击] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_小心! 他会|r|T136052:0|t[治疗波]|cRXP_WARN_. 如果有必要就使用|r|T134829:0|t[治疗药水]|r << !Shaman !Rogue
    .complete 826,3 --扎拉赞恩的头颅 (1)
    .mob 扎拉赞恩
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的|cRXP_LOOT_颅骨|r
    .complete 808,1 --明希纳的颅骨 (1)
step
    .goto Durotar,67.4,87.8
    >>击杀|cRXP_ENEMY_扎拉赞恩|r. 拾取|cRXP_LOOT_扎拉赞恩的头颅|r
    >>|cRXP_WARN_注意留|T136026:0|t[地震术] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_注意留|T132155:0|t[凿击] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_小心! 他会|r|T136052:0|t[治疗波]|cRXP_WARN_. 如果有必要就使用|r|T134829:0|t[治疗药水]|r << !Shaman !Rogue
    .complete 826,3 --扎拉赞恩的头颅 (1)
    .mob 扎拉赞恩
step
    #completewith next
    >>击杀|cRXP_ENEMY_杜隆塔尔猛虎|r. 拾取|cRXP_LOOT_杜隆塔尔虎皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    .loop 25,Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
    >>击杀|cRXP_ENEMY_妖术巨魔|r和|cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_巫毒巨魔|r|cRXP_WARN_会|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44
    >>击杀|cRXP_ENEMY_杜隆塔尔猛虎|r. 拾取|cRXP_LOOT_杜隆塔尔虎皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> 前往森金村
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包并修理装备. 你能在棚屋外与他对话
    .target Trayexir
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安苏瓦|r
    .train 118 >>学习职业技能
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加德林大师|r, |cRXP_FRIENDLY_沃纳尔大师|r和|cRXP_FRIENDLY_维尔林·长牙'rin|r
    .turnin 808 >>提交 明希纳的颅骨
    .turnin 826,2 >>提交 扎拉赞恩 << Shaman
    .turnin 826 >>提交 扎拉赞恩 << !Shaman
    .goto Durotar,55.95,74.73
    .turnin 818 >>提交 沃纳尔大师
    .goto Durotar,55.95,74.39
    .turnin 817 >>提交 生活所需的虎皮
    .goto Durotar,55.95,73.93
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step
    #completewith Stolensupplies
    +|cRXP_WARN_绑定|r|T133728:0|t[微光颅骨] |cRXP_WARN_和|r|T134712:0|t[强力胶水]|cRXP_WARN_. 以应对紧急情况|r
step
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>击杀|cRXP_ENEMY_钢鬃野猪人|r和|cRXP_ENEMY_钢鬃斥候|r
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
    .mob Razormane Quilboar
    .mob Razormane Scout
step << Shaman/Hunter
    .loop 25,Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
    >>击杀|cRXP_ENEMY_钢鬃传令兵|r和|cRXP_ENEMY_钢鬃卫兵|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_钢鬃传令兵|r|cRXP_WARN_施放回春术而|r|cRXP_ENEMY_钢鬃卫兵|r|cRXP_WARN_非常肉|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step << Shaman/Hunter
    .loop 25,Durotar,47.52,48.67,46.12,45.47,43.65,43.91,41.68,44.69,41.00,46.13,42.47,48.50,44.21,49.68,47.17,49.44,47.52,48.67
    .xp 9+4470 >> 刷到9级多4470经验 4470+/6500xp
step
    #completewith next
    .goto Durotar,51.12,42.46,150 >> 前往剃刀岭
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_厨师托尔卡|r和|cRXP_FRIENDLY_加索克|r
    .turnin 815 >>提交 恐龙蛋大餐
    .goto Durotar,51.12,42.46
    .turnin 825 >>提交 海底沉船
    .turnin 837 >>提交 野猪人的进犯
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
    .isQuestComplete 837
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_厨师托尔卡|r和|cRXP_FRIENDLY_加索克|r
    .turnin 815 >>提交 恐龙蛋大餐
    .goto Durotar,51.12,42.46
    .turnin 825 >>提交 海底沉船
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .accept 6062 >>接受 驯服野兽
    .trainer >>学习职业技能
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格劳特|r
    .collect 2515,1200,837,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>学习|T135966:0|t[急救]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >>学习职业技能
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯瓦特|r
    .accept 2983 >>接受 火焰的召唤
    .trainer >>学习职业技能
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120 >>学习职业技能
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基萨|r并购买|T133738:0|t[魔典：火焰箭（等级 2）]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    .train 20270 >> 使用|T133738:0|t[魔典：火焰箭（等级 2）]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 674 >>学习职业技能
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .accept 5654 >>接受 虚弱妖术 << Troll
    .accept 5660 >>接受 虚弱之触 << Undead
    .trainer >>学习职业技能
    .target Tai'jin
    .xp <10,1
step << Hunter
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51
    .use 15917 >> |cRXP_WARN_在最远距离|r|cRXP_WARN_对一只|r|cRXP_ENEMY_可怕的杂斑野猪|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒]
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .turnin 6062 >>提交 驯服野兽
    .accept 6083 >>接受 驯服野兽
    .target Thotar
step << Hunter
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38
    >>|cRXP_WARN_不要杀|r|cRXP_ENEMY_硬甲蝎|r|cRXP_WARN_. 你之后就会需要它们|r
    .use 15919 >> |cRXP_WARN_在最远距离|r|cRXP_WARN_对一只|r|cRXP_ENEMY_海浪蟹|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒]
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .turnin 6083 >>提交 驯服野兽
    .accept 6082 >>接受 驯服野兽
    .target Thotar
step << Hunter
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .goto Durotar,54.84,36.94
    .use 15920 >> |cRXP_WARN_在最远距离|r|cRXP_WARN_对一只|r|cRXP_ENEMY_硬甲蝎|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒]
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .turnin 6082 >>提交 驯服野兽
    .accept 6081 >>接受 训练野兽
    .target Thotar
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞姆塔克|r
    >>|cRXP_BUY_购买|r|T133972:0|t[硬肉干]. |cRXP_BUY_你需要用它来喂食宠物|r
    .vendor >> 清理背包
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接受 部落的新兵
    .target Takrin Pathseeker
    .xp <10,1
step
    .loop 25,Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
    >>击杀|cRXP_ENEMY_钢鬃传令兵|r和|cRXP_ENEMY_钢鬃卫兵|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_钢鬃传令兵|r|cRXP_WARN_施放回春术而|r|cRXP_ENEMY_钢鬃卫兵|r|cRXP_WARN_非常肉|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step << Shaman
    #completewith next
    .zone The Barrens >> 前往贫瘠之地
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡加尔·战痕|r
    .turnin 840 >>提交 部落的新兵
    .accept 842 >>接受 十字路口征兵
    .target Kargal Battlescar
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2983 >>提交 火焰的召唤
    .accept 1524 >>接受 火焰的召唤
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> 返回杜隆塔尔
    .zoneskip Durotar
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> 沿着这条路上山找|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    >>|cRXP_WARN_注意不要掉下去了, 这条路非常窄. 掉下去很有可能摔死|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>提交 火焰的召唤
    .accept 1525 >>接受 火焰的召唤
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> 沿着路下山
    >>|cRXP_WARN_注意不要掉下去了, 这条路非常窄. 掉下去很有可能摔死|r
step << Shaman
    #completewith next
    .zone The Barrens >> 返回贫瘠之地
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>击杀1只|cRXP_ENEMY_钢鬃寻水者|r或者|cRXP_ENEMY_钢鬃织棘者|r. 拾取|cRXP_LOOT_火焰焦油|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> 前往十字路口
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r和|cRXP_FRIENDLY_加兹罗格|r
    .accept 6365 >>接受 送往奥格瑞玛的肉
    .goto The Barrens,52.62,29.84
    .turnin 842 >>提交 十字路口征兵
    .accept 844 >>接受 平原陆行鸟的威胁
    .goto The Barrens,52.23,31.00
    .accept 871 >>接受 野猪人的袭击
    .accept 5041 >>接受 十字路口的补给品
    .goto The Barrens,51.50,30.87
    .accept 869 >>接受 偷钱的迅猛龙
    .goto The Barrens,51.93,30.32
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .target Gazrog
step << Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>提交 送往奥格瑞玛的肉
    .accept 6384 >>接受 飞往奥格瑞玛
    .target Devrak
step << Shaman
    #completewith NeedforaCureAccept
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .target Devrak
step << Shaman
    #completewith Gryhskaturnin1
    .zone Orgrimmar >> 进入奥格瑞玛
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith NeedforaCureAccept
    +到达11级就装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_旅店老板格雷什卡|r
    .turnin 6384 >>提交 飞往奥格瑞玛
    .accept 6385 >>接受 双足飞龙管理员多拉斯
    .target Innkeeper Gryshka
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_朵拉斯|r
    .turnin 6385 >>提交 双足飞龙管理员多拉斯
    .accept 6386 >>接受 返回十字路口
    .target Doras
step << Shaman
    #label LeaveOrg
    #completewith next
    .zone Durotar >>离开奥格瑞玛
    .zoneskip Durotar
step << Shaman
    #label NeedforaCureAccept
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接受 救命如救火
    .target Rhinag
step << Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·托克伦|r
    .accept 816 >>接受 丢失的孩子
    .target Misha Tor'kren
step
    #label Stolensupplies
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    .goto Durotar,47.92,33.10
    >>从地上拾取|cRXP_PICK_被偷走的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step << !Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >> 前往雷兹拉克处
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接受 沙漠之风
    .target Rezlak
step << !Hunter
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >>从地上拾取|cRXP_PICK_被偷走的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>提交 沙漠之风
    .accept 835 >>接受 保卫商路
    .target Rezlak
step << Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接受 救命如救火
    .target Rhinag
step << Hunter
    #completewith BeastTraining
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> 进入奥格瑞玛
    .zoneskip Orgrimmar
step << Hunter
    .goto Orgrimmar,34.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>提交 将军的命令
    .target Nazgrel
step << Hunter
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_考格汉|r
    .accept 813 >>接受 寻找解毒剂
    .target Kor'ghan
    .isOnQuest 812
step << Hunter
    #completewith BeastTraining
    >>|cRXP_WARN_放弃 救命如救火. 这将移除任务时限但你仍能完成这个任务|r
    .abandon 812 >>放弃 救命如救火
    .isOnQuest 812
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> 前往荣誉谷
step << Hunter
    #label BeastTraining
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .turnin 6081 >>提交 训练野兽
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
    .train 24547 >>学习宠物技能
    .target Xao'tsu
step << Hunter
    #completewith Rezlak
    +|cRXP_WARN_把|r|T132162:0|t[训练野兽]|cRXP_WARN_拖到技能栏上. 训练宠物技能|r
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 购买|r|T135499:0|t[多层弯弓]
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #completewith Rezlak
    +到达11级就装备|T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HuntLeaveOrg
    #completewith next
    .zone Durotar >>离开奥格瑞玛
    .zoneskip Durotar
step << Hunter
    #completewith Rezlak
    .goto Durotar,43.8,17.20,40,0
    .goto Durotar,43.53,18.35,40,0
    .goto Durotar,42.19,19.70,40,0
    .goto Durotar,41.08,20.42,40,0
    .goto Durotar,42.76,21.08,40,0
    .goto Durotar,40.44,17.51,40,0
    +抓一只宠物. |cRXP_ENEMY_毒尾蝎|r或者|cRXP_ENEMY_血爪锐齿龙|r输出最高
    .mob Venomtail Scorpid
    .mob Bloodtalon Scythemaw
step << Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >> 前往雷兹拉克处
step << Hunter
    #label Rezlak
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接受 沙漠之风
    .target Rezlak
step << Hunter
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >>从地上拾取|cRXP_PICK_被偷走的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
step << Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>提交 沙漠之风
    .accept 835 >>接受 保卫商路
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> 穿过洞穴
    .solo
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>击杀|cRXP_ENEMY_尘风暴徒|r和|cRXP_ENEMY_尘风雷巫|r
    >>|cRXP_WARN_这里的怪会逃跑. 小心不要ADD|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_任务奖励选择|r|T135158:0|t[斑纹木杖] |cRXP_WARN_. 你将在奥格瑞玛学习法杖技能|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>提交 保卫商路
    .target Rezlak
    .solo
step << Shaman
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·托克伦|r
    .accept 816 >>接受 丢失的孩子
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>从此处跳入雷霆山 << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_施放|r|T136095:0|t[解散野兽] |cRXP_WARN_再跳入雷霆山|r << Hunter
    >>|cRXP_WARN_解散小鬼再跳入雷霆山|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>击杀|cRXP_ENEMY_费索·暗雷|r并拾取|cRXP_LOOT_费索的爪子|r
    >>|cRXP_WARN_请万分小心. 在击杀他之前杀死身后巡逻的|r|cRXP_ENEMY_火刃狂热者|r|cRXP_WARN_和|r|cRXP_ENEMY_闪电蜥蜴|r
    >>|cRXP_WARN_把他拉到你刚杀死的|r|cRXP_ENEMY_闪电蜥蜴|r|cRXP_WARN_处. 否则你可能会引到不必要的怪|r
    >>|cRXP_WARN_优先击杀小鬼. 使用|r|T132155:0|t[凿击] |cRXP_WARN_打断|r|T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_优先击杀小鬼. 使用|r|T136026:0|t[地震术] |cRXP_WARN_打断|r|T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以先|r|T136071:0|t[羊] |cRXP_WARN_掉|r|cRXP_ENEMY_费索·暗雷|r|cRXP_WARN_再击杀|r|cRXP_ENEMY_小鬼|r << Mage
    >>|cRXP_WARN_优先击杀小鬼.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_如果需要, 使用|r|T134829:0|t[初级治疗药水]和|r|T133728:0|t[微光颅骨]|cRXP_WARN_来击杀他 << !Warlock
    >>|cRXP_WARN_如果需要, 使用|r|T134829:0|t[初级治疗药水], |T133728:0|t[初级治疗石]和|r|T133728:0|t[微光颅骨]|cRXP_WARN_来击杀他 << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >> 炉石回剃刀岭
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .group
step << Shaman
    .hs >> 炉石回剃刀岭
    .use 6948
    .subzoneskip 362
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >> 清理背包
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排] << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step << Shaman
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >> 清理背包
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排] << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 806 >>提交 黑暗风暴
    .accept 828 >>接受 玛高兹
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .accept 828 >>接受 玛高兹
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .turnin 837 >>提交 野猪人的进犯
    .target Gar'Thok
    .group
step << Shaman
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .turnin 837 >>提交 野猪人的进犯
    .target Gar'Thok
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546,1 >>学习职业技能
    .target Tarshaw Jaggedscar
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯瓦特|r
    .train 8050,1 >>学习职业技能
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120,1 >>学习职业技能
    .target Dhugru Gorelust
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .train 13549,1 >>学习职业技能
    .target Thotar
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 674,1 >>学习职业技能
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .train 8092,1 >>学习职业技能
    .target Tai'jin
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格劳特|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135489:0|t[多层弯弓] (17s 51c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格劳特|r|cRXP_BUY_. 购买|r|T135499:0|t[多层弯弓]
    .collect 2507,1,828,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格劳特|r
    .collect 2515,1200,828,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
    .group
step << Hunter
    #completewith MargozTurnIn
    +装备|T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> 前往|cRXP_FRIENDLY_玛高兹|r处
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛高兹|r
    .turnin 828 >>提交 玛高兹
    .accept 827 >>接受 骷髅石
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >> 前往尘风洞穴
    .solo
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> 前往尘风洞穴
    .isQuestTurnedIn 806
    .group
step
    #label Collars1
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>击杀|cRXP_ENEMY_火刃暴徒|r, |cRXP_ENEMY_火刃新兵|r和|cRXP_ENEMY_火刃祭司|r. 拾取|cRXP_LOOT_灼热项圈|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>击杀|cRXP_ENEMY_火刃暴徒|r和|cRXP_ENEMY_火刃新兵|r. 拾取|cRXP_LOOT_灼热项圈|r
    >>击杀|cRXP_ENEMY_火刃祭司|r. 拾取a |cRXP_LOOT_试剂袋|r
    .complete 827,1 --Searing Collar (6)
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>击杀|cRXP_ENEMY_火刃祭司|r. 拾取a |cRXP_LOOT_试剂袋|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
    .solo
step << Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_快速出洞: 跳到石头上直到你的角色看起来像悬浮在空中, 然后登出再登入|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_点击这里查看演示|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> 前往|cRXP_FRIENDLY_玛高兹|r处
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛高兹|r
    .turnin 827 >>提交 骷髅石
    .accept 829 >>接受 尼尔鲁·火刃
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> 穿过洞穴
    .group
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>击杀|cRXP_ENEMY_尘风暴徒|r和|cRXP_ENEMY_尘风雷巫|r
    >>|cRXP_WARN_这里的怪会逃跑. 小心不要ADD|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_任务奖励选择|r|T135158:0|t[斑纹木杖] |cRXP_WARN_. 你将在奥格瑞玛学习法杖技能|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>提交 保卫商路
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >> 刷到10级
    --VV Enter loop coords
step << Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> 进入奥格瑞玛
    .zoneskip Orgrimmar
    .isOnQuest 829
    .group
step << !Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> 进入奥格瑞玛
    .zoneskip Orgrimmar
step << !Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_特拉克根|r
    .vendor >> 清理背包
    .target K'waii
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特拉克根|r|cRXP_BUY_. 购买|r|T135419:0|t[锋利的飞斧]
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >> 清理背包
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith ZeptoUC1
    +到达11级就装备|T135421:0|t[锋利的飞斧]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_朵拉斯|r
    .turnin 6385 >>提交 双足飞龙管理员多拉斯
    .accept 6386 >>接受 返回十字路口
    .target Doras
    .isOnQuest 6385
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .turnin 5654 >>提交 虚弱妖术
    .trainer >>学习职业技能
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .turnin 5652 >>提交 虚弱妖术
    .trainer >>学习职业技能
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮菲瑞多|r
    .train 122 >>学习职业技能
    .target Pephredo
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>提交 将军的命令
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟祖克|r
	.accept 1963 >>接受 碎手氏族 << Orc Rogue/Troll Rogue
    .trainer >>学习职业技能
    .target Therzok
step << Shaman
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_考格汉|r
    .accept 813 >>接受 寻找解毒剂
    .target Kor'ghan
    .isOnQuest 812
step << Shaman
    #completewith CallofFire3
    >>|cRXP_WARN_放弃 救命如救火. 这将移除任务时限但你仍能完成这个任务|r
    .abandon 812 >>放弃 救命如救火
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 >>提交 尼尔鲁·火刃
    .accept 809 >>接受 雅克塞罗斯
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
    .train 1120 >>学习职业技能
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >> 前往荣誉谷
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 6546 >>学习职业技能
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳什|r
    .train 227 >>学习法杖
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #completewith ZeptoUC1
    +到达11级就装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌萨罗|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T132395:0|t[大板斧] (22s 14c), 就卖掉现有武器并购买. 如果不够就一会再来买
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 购买|r|T132395:0|t[大板斧]
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #completewith ZeptoUC1
    +装备|T132395:0|t[大板斧]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith ZeptoUC1
    +到达11级就装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << !Hunter !Shaman
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >>离开奥格瑞玛
    .zoneskip Durotar
step << Hunter
    #completewith HunterCrossRoadsVisit1
    .zone Durotar >>离开奥格瑞玛
    .zoneskip Durotar
    .group
step << Shaman/Hunter
    #label VenomPoisonSacs
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    .goto Durotar,38.89,16.91
    >>击杀|cRXP_ENEMY_毒尾蝎|r. 拾取|cRXP_LOOT_毒尾蝎的毒囊|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << Hunter
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>沿着河往南前往瞭望塔
    >>顺路击杀|cRXP_ENEMY_巨齿鳄鱼|r. 拾取|cRXP_LOOT_克鲁恩的护身符|r
    >>|cRXP_WARN_如果一直不出就放弃这个任务|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>沿着河往南. 顺路击杀|cRXP_ENEMY_巨齿鳄鱼|r. 拾取|cRXP_LOOT_克鲁恩的护身符|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> 沿路上山找|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    >>|cRXP_WARN_注意不要掉下去了, 这条路非常窄. 掉下去很有可能摔死|r
step << Shaman
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 >>提交 火焰的召唤
    .accept 1526 >>接受 火焰的召唤
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>使用|T134732:0|t[Fire Sapta]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>击杀the |cRXP_ENEMY_小型火焰之灵体|r. 拾取a |cRXP_LOOT_余烬|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>点击地上的|cRXP_PICK_火盆|r
    .turnin 1526 >>提交 火焰的召唤
    .accept 1527 >>接受 火焰的召唤
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> 沿着路下山
    >>|cRXP_WARN_注意不要掉下去了, 这条路非常窄. 掉下去很有可能摔死|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>击杀|cRXP_ENEMY_巨齿鳄鱼|r. 拾取|cRXP_LOOT_克鲁恩的护身符|r.
    >>|cRXP_WARN_如果一直不出就放弃这个任务|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·托克伦|r
    .turnin 816 >>提交 丢失的孩子
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> 前往瞭望塔
    .zoneskip The Barrens
step << Shaman/Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡加尔·战痕|r
    .turnin 840 >>提交 部落的新兵
    .accept 842 >>接受 十字路口征兵
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>提交 雅克塞罗斯
    .accept 924 >>接受 恶魔之种
    .target Ak'Zeloth
    .isQuestTurnedIn 829
    .group
step << Shaman/Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_拾取|r|cRXP_FRIENDLY_雅克塞罗斯|r|cRXP_WARN_边上的|r|T134095:0|t[有瑕疵的能量石]|cRXP_WARN_. 这个物品有30分钟的有效期, 所以尽快完成|r
    .turnin 926 >>提交 有瑕疵的能量石
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>提交 火焰的召唤
    .target Kranal Fiss
step << Hunter
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> 前往十字路口
step << Hunter
    #label HunterCrossRoadsVisit1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_索克|r和|cRXP_FRIENDLY_加兹罗格|r
    .accept 6365 >>接受 送往奥格瑞玛的肉
    .goto The Barrens,52.62,29.84
    .turnin 842 >>提交 十字路口征兵
    .accept 844 >>接受 平原陆行鸟的威胁
    .goto The Barrens,52.23,31.00
    .accept 871 >>接受 野猪人的袭击
    .accept 5041 >>接受 十字路口的补给品
    .goto The Barrens,51.50,30.87
    .accept 869 >>接受 偷钱的迅猛龙
    .goto The Barrens,51.93,30.32
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .target Gazrog
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_亚瑟罗克|r|cRXP_BUY_. 购买|r|T135499:0|t[多层弯弓]
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Hunter
    #completewith DisruptTheAttacks
    +装备|T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> 从地上拾取|cRXP_PICK_老陈的空酒桶|r并接受任务. 如果没刷就一会再来
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受 老陈的空酒桶
step << Shaman/Hunter
    #completewith DemonSeed
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman/Hunter
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> 前往山顶
    .isOnQuest 924
step << Shaman/Hunter
    #completewith next
    +|cRXP_WARN_注意! 如果15级稀有精英|r|cRXP_ENEMY_拉索利安|r|cRXP_WARN_刷新了. 做好使用|r|T133728:0|t[微光颅骨] |cRXP_WARN_和|r|T134712:0|t[强力胶水] |cRXP_WARN_的准备|r
    .unitscan Rathorian
step << Shaman/Hunter
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>右键点击祭坛. 确保你有|T134095:0|t[有瑕疵的能量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >> 原路下山
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #completewith next
    >>击杀|cRXP_ENEMY_钢鬃寻水者|r, |cRXP_ENEMY_钢鬃织棘者|r和|cRXP_ENEMY_钢鬃猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step << Hunter
    .goto The Barrens,55.70,27.30
    .use 4926 >> 从地上拾取|cRXP_PICK_老陈的空酒桶|r并接受任务. 如果没刷就一会再来
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接受 老陈的空酒桶
step << Shaman/Hunter
    #label DisruptTheAttacks
    .loop 25,The Barrens,53.63,24.50,54.26,24.64,54.81,25.19,55.50,25.61,55.86,26.3,55.83,27.15,55.41,27.41,54.50,26.97,54.05,26.11,53.51,25.24,53.63,24.50
    >>击杀|cRXP_ENEMY_钢鬃寻水者|r, |cRXP_ENEMY_钢鬃织棘者|r和|cRXP_ENEMY_钢鬃猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step << Shaman/Hunter
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    .loop 25,The Barrens,53.12,28.72,53.97,28.10,54.64,27.09,55.47,26.94,55.44,25.70,55.51,24.54,54.75,23.51,53.74,23.66,53.35,25.16,52.99,26.88,53.12,28.72
    .xp 11+ >> 刷到11级多6980经验 6980/8800xp
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_索克|r
    .turnin 6386 >>提交 返回十字路口
    .goto The Barrens,51.50,30.87
    .turnin 844 >>提交 平原陆行鸟的威胁
    .accept 845 >>接受 斑马的威胁
    .goto The Barrens,52.23,31.00
    .turnin 871 >>提交 野猪人的头目
    .accept 872 >>接受 野猪人的袭击
    .goto The Barrens,51.50,30.87
    .target Zargh
    .target Sergra Darkthorn
    .target Thork
    .isOnQuest 6386
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_索克|r
    .turnin 844 >>提交 平原陆行鸟的威胁
    .accept 845 >>接受 斑马的威胁
    .goto The Barrens,52.23,31.00
    .turnin 871 >>提交 野猪人的头目
    .accept 872 >>接受 野猪人的袭击
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step << Shaman/Hunter
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>绑定炉石到十字路口
    .target Innkeeper Boorand Plainswind
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_巴尔格|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Hunter
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>提交 送往奥格瑞玛的肉
    .accept 6384 >>接受 飞往奥格瑞玛
    .fly Orgrimmar >> 飞往奥格瑞玛
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .target Devrak
    .zoneskip Orgrimmar
step << Hunter
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_旅店老板格雷什卡|r
    .turnin 6384 >>提交 飞往奥格瑞玛
    .accept 6385 >>接受 双足飞龙管理员多拉斯
    .target Innkeeper Gryshka
step << Hunter
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_朵拉斯|r
    .turnin 6385 >>提交 双足飞龙管理员多拉斯
    .accept 6386 >>接受 返回十字路口
    .target Doras
step << Shaman/Hunter
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_考格汉|r
    .turnin 813 >>提交 寻找解毒剂
    .target Kor'ghan
    .isQuestComplete 813
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 547 >>学习职业技能
    .target Kardris Dreamseeker
    .xp <12,1
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌萨罗|r
    .vendor >> 清理背包. 如果卖掉武器能买得起|T135154:0|t[短杖] (30s 22c). 钱不够就稍后再买
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #completewith ZeptoUC1
    +装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> 前往荣誉谷
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .train 14281 >>学习职业技能
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
    .train 24556 >>学习宠物技能
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 购买|r|T135499:0|t[多层弯弓]
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #completewith ZeptoUC1
    +装备|T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman/Hunter
    #label Leaveorg2
    #completewith next
    .zone Durotar >>离开奥格瑞玛
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接受 救命如救火
    .turnin 812 >>提交 救命如救火
    .target Rhinag
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>爬上飞艇塔
    .zone Tirisfal Glades >>乘坐飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,63.25,48.56
    .fp Undercity >> 开启幽暗城飞行点
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与战士区的|r|cRXP_FRIENDLY_阿基巴德|r对话
    .train 201 >>学习单手剑
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_查理斯·希顿|r对话|cRXP_BUY_. 购买|r|T135346:0|t[斗士短剑]
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +装备|T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_快速离开幽暗城: 在法师区把你的角色停在最下面楼梯的最高处直到他看起来像悬浮在空中, 然后登出再登入.|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_点击这里查看演示|r
    >>|cRXP_WARN_如果不会就直接跑出幽暗城|r
    .zoneskip Tirisfal Glades
step
    #completewith next
    .goto Tirisfal Glades,61.52,53.20,80 >> 前往布瑞尔
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆中的|cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .accept 354 >>接受 阿加曼德家族
    .accept 362 >>接受 闹鬼的磨坊
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>接受 死亡之寒
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .maxlevel 12
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 >>接受 迪林格尔
    .target Austil de Mon << Warrior
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_埃格隆·卡加尔|r对话
    .accept 1478 >>接受 哈加尔的召唤
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_马里恩·考尔|r对话
    .accept 1885 >>接受 米奈特·卡加德
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r, |cRXP_FRIENDLY_格莉丝·戴玛|r和|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r对话
    .accept 1881 >>接受 安娜斯塔西娅
    .target Anastasia Hartwell
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Priest/Shaman
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇] <<Warrior/Rogue
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] |cRXP_BUY_和|r|T134532:0|t[红斑蘑菇] << Warlock
    .vendor >> 清理背包
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温特斯夫人|r
    >>|cRXP_BUY_购买几个|r|T133634:0|t[棕色小包]
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官塞加德|r
    .accept 427 >>接受 与血色十字军的战争
    .target Executor Zygand
    .maxlevel 11
step
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_悬赏告示|r
    .accept 398 >>接受 悬赏：蛆眼
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在市政厅内与|cRXP_FRIENDLY_执政官塞弗伦|r对话
    .accept 358 >>接受 盗墓贼
    .target Magistrate Sevren
    .maxlevel 12
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .accept 445 >>接受 给银松森林送信
    .accept 367 >>接受 新的瘟疫
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .accept 404 >>接受 腐烂的爪子
    .target Deathguard Dillinger
    .maxlevel 11
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>提交 迪林格尔
    .accept 1819 >>接受 ‘斩击者’奥拉格
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地上的|r|cRXP_WARN_墓碑|r|cRXP_WARN_召唤并击杀|r|cRXP_ENEMY_‘斩击者’奥拉格.|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 >>提交 ‘斩击者’奥拉格
    .accept 1820 >>接受 库勒曼
    .target Deathguard Dillinger
step
    #completewith Pumpkins
    >>击杀所以你遇到的|cRXP_ENEMY_黑暗犬|r. 拾取|cRXP_LOOT_黑暗犬的血液|r
    >>|cRXP_WARN_后续任务将奖励|r|T133849:0|t[沉睡之砂]
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step
    #optional
    #label Claws
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98
    >>击杀|cRXP_ENEMY_腐烂的死者|r和|cRXP_ENEMY_破碎的尸体|r. 拾取|cRXP_LOOT_腐烂的爪子|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>击杀遇见的所以|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵希米尔|r
    .accept 365 >>接受 悲伤之地
    .target Deathguard Simmer
    .maxlevel 11
step
    #optional
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>拾取田里的|cRXP_LOOT_南瓜|r.
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    .loop 25,Tirisfal Glades,33.73,49.34,33.65,51.07,31.78,51.36,30.02,50.48,29.91,49.24,30.62,47.53,31.01,46.50,32.15,44.83,33.73,45.29,34.10,47.88,33.73,49.34
    >>击杀|cRXP_ENEMY_血色战士|r
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #label Darkhounds1
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51
    >>击杀所以你遇到的|cRXP_ENEMY_黑暗犬|r. 拾取|cRXP_LOOT_黑暗犬的血液|r
    >>|cRXP_WARN_后续任务将奖励|r|T133849:0|t[沉睡之砂]
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
step
    #completewith Brillturnins2
    .goto Tirisfal Glades,58.20,51.43,120 >> 返回布瑞尔
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 404 >>提交 腐烂的爪子
    .accept 426 >>接受 磨坊告急
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>提交 新的瘟疫
    .turnin 365 >>提交 悲伤之地
    .accept 368 >>接受 新的瘟疫
    .accept 407 >>接受 悲伤之地
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>提交 与血色十字军的战争
    .accept 370 >>接受 与血色十字军的战争
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接受 死亡证明
    .goto Tirisfal Glades,60.93,52.01
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 365
    .isQuestComplete 427
    .isQuestComplete 404
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 404 >>提交 腐烂的爪子
    .accept 426 >>接受 磨坊告急
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>提交 新的瘟疫
    .accept 368 >>接受 新的瘟疫
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>提交 与血色十字军的战争
    .accept 370 >>接受 与血色十字军的战争
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接受 死亡证明
    .goto Tirisfal Glades,60.93,52.01
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 427
    .isQuestComplete 404
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 404 >>提交 腐烂的爪子
    .accept 426 >>接受 磨坊告急
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>提交 新的瘟疫
    .turnin 365 >>提交 悲伤之地
    .accept 368 >>接受 新的瘟疫
    .accept 407 >>接受 悲伤之地
    .goto Tirisfal Glades,59.45,52.40
    .target Deathguard Dillinger
    .target Apothecary Johaan
    .isQuestComplete 404
    .isQuestComplete 365
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 367 >>提交 新的瘟疫
    .turnin 365 >>提交 悲伤之地
    .accept 368 >>接受 新的瘟疫
    .accept 407 >>接受 悲伤之地
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>提交 与血色十字军的战争
    .accept 370 >>接受 与血色十字军的战争
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接受 死亡证明
    .goto Tirisfal Glades,60.93,52.01
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 427
    .isQuestComplete 365
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 367 >>提交 新的瘟疫
    .accept 368 >>接受 新的瘟疫
    .goto Tirisfal Glades,59.45,52.40
    .turnin 427 >>提交 与血色十字军的战争
    .accept 370 >>接受 与血色十字军的战争
    .goto Tirisfal Glades,60.58,51.77
    .accept 374 >>接受 死亡证明
    .goto Tirisfal Glades,60.93,52.01
    .target Executor Zygand
    .target Apothecary Johaan
    .target Deathguard Burgess
    .isQuestComplete 427
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 404 >>提交 腐烂的爪子
    .accept 426 >>接受 磨坊告急
    .goto Tirisfal Glades,58.20,51.43
    .turnin 367 >>提交 新的瘟疫
    .accept 368 >>接受 新的瘟疫
    .goto Tirisfal Glades,59.45,52.40
    .target Deathguard Dillinger
    .target Apothecary Johaan
    .isQuestComplete 404
step
    #label Brillturnins2
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 >>提交 新的瘟疫
    .accept 368 >>接受 新的瘟疫
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|cRXP_WARN_从旅馆厨房下到地下室|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血色十字军俘虏|r
    .turnin 407 >>提交 悲伤之地
    .target Captured Scarlet Zealot
    .isOnQuest 407
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦可·加勒特|r
    .fp Undercity >> 开启幽暗城飞行点
    .target Michael Garrett
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_凯伦丁·哈加尔|r对话
    .turnin 1478 >>提交 哈加尔的召唤
    .accept 1473 >>接受 虚空中的生物
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r对话
    .turnin 1881 >>提交 安娜斯塔西娅
    .accept 1882 >>接受 巴尼尔农场
    .target Anastasia Hartwell
step << Undead Priest
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
step << Undead Priest
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5660 >>提交 虚弱之触
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾萨莱斯特|r
    .accept 5658 >>接受 虚弱之触
    .turnin 5658 >>提交 虚弱之触
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,63.25,48.56
    .fp Undercity >> 开启幽暗城飞行点
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 >>提交 米奈特·卡加德
    .accept 1886 >>接受 亡灵哨兵
    .target Mennet Carkad
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与战士区的|r|cRXP_FRIENDLY_阿基巴德|r对话
    .train 201 >>学习单手剑
    .target Archibald
    .money <0.3023
step << Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_查理斯·希顿|r|cRXP_BUY_对话. 购买|r|T135346:0|t[斗士短剑]
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith KillDevlin
    +装备|T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warlock/Mage/Rogue
    #optional
    #completewith KillDevlin
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>从下水道离开幽暗城
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    #completewith KillDevlin
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>从下水道离开幽暗城
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>收集|cRXP_LOOT_血色十字军徽记之戒|r. 你不必现在就完成这个任务
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>点击|cRXP_PICK_派瑞恩的箱子|r拾取|T133733:0|t[埃加林的魔典]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #optional
    #label ScarletCrusade1
    .loop 25,Tirisfal Glades,50.07,68.87,50.23,66.94,51.16,65.73,51.75,66.04,52.93,67.62,52.72,69.33,51.96,69.57,51.03,69.55
    >>击杀|cRXP_ENEMY_派瑞恩队长|r, |cRXP_ENEMY_血色狂热者|r和|cRXP_ENEMY_血色传教士|r.
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>点击地上的|cRXP_PICK_派瑞恩的箱子|r拾取|T133733:0|t[埃加林的魔典]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.07,71.51,50,0
    .zone Undercity >> 从下水道回到幽暗城
step << Warlock
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_凯伦丁·哈加尔|r对话
    .turnin 1473 >>提交 虚空中的生物
    .accept 1471 >>接受 誓缚
    .target Carendin Halgar
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>在召唤圈内使用|T134416:0|t[召唤符文]
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>击杀|cRXP_ENEMY_召唤的虚无行者|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1471 >>提交 誓缚
    .target Carendin Halgar
step << Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_快速离开幽暗城: 在法师区把你的角色停在最下面楼梯的最高处直到他看起来像悬浮在空中, 然后登出再登入.|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_点击这里查看演示|r
    >>|cRXP_WARN_如果不会就直接跑出幽暗城|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> 离开幽暗城
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>击杀遇见的所以|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >> 前往西北方的阿加曼德磨坊
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cFF00BCD4萨尔曼的信件|r] |cRXP_WARN_可能会出. 如果出了就接受任务|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接受 未寄出的信件
    .use 2839
    .isOnQuest 362
step
    #optional
    #sticky
    #label MillsOverun
    >>击杀|cRXP_ENEMY_骷髅兵|r和|cRXP_ENEMY_暗眼骸骨法师|r. 拾取|cRXP_LOOT_锯齿肋骨|r和|cRXP_LOOT_焦黑的颅骨|r
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>击杀|cRXP_ENEMY_代弗林·阿加曼德|r. 拾取|cRXP_LOOT_代弗林的遗骸|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>击杀|cRXP_ENEMY_妮萨·阿加曼德|r. 拾取|cRXP_LOOT_妮萨的遗骸|r. 她可能刷在建筑内
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
    #label ThurmanGregor
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >>击杀|cRXP_ENEMY_萨尔曼·阿加曼德|r和|cRXP_ENEMY_格里高·阿加曼德|r. 拾取|cRXP_LOOT_他们的遗骸|r. 他们在附近巡逻
    .complete 354,3 --Thurman's Remains (1)
    .complete 354,1 --Gregor's Remains (1)
    .unitscan Thurman Agamand
    .unitscan Gregor Agamand
    .isOnQuest 354
step
    #optional
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> 从这下山
    >>|cRXP_WARN_小心! 不要承受太多的坠落伤害. 跟随指示以保证安全|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>击杀|cRXP_ENEMY_腐皮豺狼人|r和|cRXP_ENEMY_混血腐皮豺狼人|r. 拾取|cRXP_LOOT_防腐剂|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>击杀|cRXP_ENEMY_蛆眼|r. 拾取|cRXP_LOOT_蛆眼的爪子|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>击杀|cRXP_ENEMY_鱼人|r. 拾取|cRXP_LOOT_邪鳍鱼人的鳞片|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #optional
    #completewith RotHideGnolls
    >>击杀你遇见的所有|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label RotHideGnolls
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>击杀|cRXP_ENEMY_混血腐皮豺狼人|r和|cRXP_ENEMY_盗墓贼|r. 拾取|cRXP_LOOT_防腐剂|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 426 >>提交 磨坊告急
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 368 >>提交 新的瘟疫
    .accept 369 >>接受 新的瘟疫
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .accept 369 >>接受 新的瘟疫
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>提交 悬赏：蛆眼
    .turnin 370 >>提交 与血色十字军的战争
    .accept 371 >>接受 与血色十字军的战争
    .target Executor Zygand
    .isQuestComplete 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>提交 悬赏：蛆眼
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官塞加德|r
    .accept 371 >>接受 与血色十字军的战争
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 358 >>提交 盗墓贼
    .accept 359 >>接受 亡灵卫兵的职责
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 359 >>接受 亡灵卫兵的职责
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_绑定|r|T133849:0|t[沉睡之砂]|cRXP_WARN_. 以应对紧急情况|r
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿比盖尔·沙伊尔|r
    >>|cRXP_BUY_购买|r|T132891:0|t[粗线]
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 >>提交 未寄出的信件
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 1821 >>接受 阿加曼德家传武器 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>提交 死亡之寒
    .goto Tirisfal Glades,61.89,52.73
    .target Yvette Farthing
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r在旅馆内与
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 1821 >>接受 阿加曼德家传武器 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>提交 死亡之寒
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r和|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 >>提交 未寄出的信件
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 1821 >>接受 阿加曼德家传武器 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 1821 >>接受 阿加曼德家传武器 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
    .isQuestComplete 354
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 >>提交 未寄出的信件
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>提交 死亡之寒
    .goto Tirisfal Glades,61.89,52.73
    .target Yvette Farthing
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>提交 死亡之寒
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r和|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 >>提交 未寄出的信件
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 354 >>提交 阿加曼德家族
    .turnin 362 >>提交 闹鬼的磨坊
    .turnin 1820 >>提交 库勒曼 << Warrior
    .accept 355 >>接受 与塞弗伦交谈
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .isQuestComplete 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 1820 >>提交 库勒曼 << Warrior
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_黑暗教士贝里尔|r对话
	.train 588 >>学习|T135926:0|t[心灵之火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_凯恩·火歌|r对话
    .train 145 >>学习|T135812:0|t[火球术 等级3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >>学习|T132223:0|t[压制]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_鲁瓦格|r对话
    .train 1766 >>学习|T132219:0|t[脚踢]
    .target Rwag
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 755 >>学习|T136168:0|t[生命通道]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Priest/Shaman
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇] <<Warrior/Rogue
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] |cRXP_BUY_和|r|T134532:0|t[红斑蘑菇] << Warlock/Hunter
    .vendor >> 清理背包
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 359 >>提交 亡灵卫兵的职责
    .accept 360 >>接受 向塞弗伦回报
    .accept 356 >>接受 巡查后方
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵林奈|r
    .accept 356 >>接受 巡查后方
    .target Deathguard Linnea
    .maxlevel 13
step
    #optional
    #completewith HorrorsandSpirits
    >>击杀你遇见的所有|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
#optional
    #completewith next
    >>击杀|cRXP_ENEMY_可怕的血僵尸|r和|cRXP_ENEMY_游荡的幽灵|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
    .isOnQuest 356
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>拾取地上的|cRXP_PICK_巴尼尔金鱼草|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
    .loop 25,Tirisfal Glades,74.31,60.98,74.45,59.64,75.08,58.56,76.45,58.67,77.41,58.66,78.55,60.43,77.45,61.46,76.79,62.60,74.99,61.98,74.31,60.98
    >>击杀|cRXP_ENEMY_可怕的血僵尸|r和|cRXP_ENEMY_游荡的幽灵|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
    .isOnQuest 356
step << Priest/Warlock
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_收集3组|r|T132889:0|t[亚麻布] |cRXP_WARN_以获得次级魔杖. 这是你去银松森林前最后的机会了.|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 371
step
    #optional
    #completewith next
    >>收集|cRXP_LOOT_血色十字军徽记之戒|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>击杀|cRXP_ENEMY_瓦松队长|r和|cRXP_ENEMY_血色苦行修士|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_血色苦行修士|r|cRXP_WARN_会|r|T135929:0|t[次级治疗术]
    .complete 371,1 --Captain Vachon (1)
    .complete 371,2 --Scarlet Friar (5)
    .mob Captain Vachon
    .mob Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>收集|cRXP_LOOT_血色十字军徽记之戒|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>|cRXP_WARN_收集3组|r|T132889:0|t[亚麻布] |cRXP_WARN_以获得次级魔杖. 这是你去银松森林前最后的机会了.|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>击杀你遇见的所有|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .loop 25,Tirisfal Glades,83.50,55.56,85.03,54.72,86.56,54.51,88.06,54.99,88.94,53.56,89.70,51.88,90.92,50.56,90.87,48.33,89.87,46.65,85.04,46.68,84.52,49.29,83.46,52.09
    >>击杀|cRXP_ENEMY_邪恶的夜行蜘蛛|r. 拾取|cRXP_LOOT_邪恶的夜行蜘蛛的毒液|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> 返回亡灵卫兵林奈处
    .isQuestComplete 356
step
    #optional
    #completewith next
    >> 完成击杀|cRXP_ENEMY_夜行蝙蝠s|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    >>|cRXP_WARN_实在打不到就跳过|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 356 >>提交 巡查后方
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿比盖尔·沙伊尔|r
    >>|cRXP_BUY_购买|r|T132891:0|t[粗线]
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 374 >>提交 死亡证明
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>提交 与血色十字军的战争
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>提交 向塞弗伦回报
    .turnin 355 >>提交 与塞弗伦交谈
    .accept 408 >>接受 家族墓穴
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>提交 新的瘟疫
    .accept 492 >>接受 新的瘟疫
    .accept 445 >>接受 给银松森林送信
    .goto Tirisfal Glades,59.45,52.39
    .target Deathguard Burgess
    .target Executor Zygand
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isQuestComplete 371
    .isQuestComplete 374
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 374 >>提交 死亡证明
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>提交 与血色十字军的战争
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>提交 向塞弗伦回报
    .turnin 355 >>提交 与塞弗伦交谈
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>提交 新的瘟疫
    .accept 492 >>接受 新的瘟疫
    .accept 445 >>接受 给银松森林送信
    .goto Tirisfal Glades,59.45,52.39
    .target Deathguard Burgess
    .target Executor Zygand
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isQuestComplete 371
    .isQuestComplete 374
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执政官塞弗伦|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 360 >>提交 向塞弗伦回报
    .turnin 355 >>提交 与塞弗伦交谈
    .accept 408 >>接受 家族墓穴
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>提交 新的瘟疫
    .accept 492 >>接受 新的瘟疫
    .accept 445 >>接受 给银松森林送信
    .goto Tirisfal Glades,59.45,52.39
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isOnQuest 360
    .isQuestComplete 369
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执政官塞弗伦|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 360 >>提交 向塞弗伦回报
    .turnin 355 >>提交 与塞弗伦交谈
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>提交 新的瘟疫
    .accept 492 >>接受 新的瘟疫
    .accept 445 >>接受 给银松森林送信
    .goto Tirisfal Glades,59.45,52.39
    .target Magistrate Sevren
    .target Apothecary Johaan
    .isOnQuest 360
    .isQuestComplete 369
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>提交 新的瘟疫
    .accept 492 >>接受 新的瘟疫
    .accept 445 >>接受 给银松森林送信
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    .turnin 375 >>提交 死亡之寒
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_黑暗教士贝里尔|r对话
	.train 588,1 >>学习|T135926:0|t[心灵之火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_凯恩·火歌|r对话
    .train 145,1 >>学习|T135812:0|t[火球术 等级3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >>学习|T132223:0|t[压制]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_鲁瓦格|r对话
    .train 1766,1 >>学习|T132219:0|t[脚踢]
    .target Rwag
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 755,1 >>学习|T136168:0|t[生命通道]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> 前往阿加曼德磨坊的墓穴
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>拾取地上的|cRXP_PICK_阿加曼德家族武器|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>击杀|cRXP_ENEMY_哀嚎的鬼魂|r和|cRXP_ENEMY_腐烂的古尸|r
    >>|cRXP_WARN_小心! 墓穴里的怪物动态刷新!|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>击杀|cRXP_ENEMY_达高尔队长|r. 拾取|cRXP_LOOT_达高尔的颅骨|r. 他在墓穴的底部
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>拾取地上的|cRXP_PICK_阿加曼德家族武器|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    .loop 15,Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
    >>击杀|cRXP_ENEMY_哀嚎的鬼魂|r和|cRXP_ENEMY_腐烂的古尸|r
    >>|cRXP_WARN_小心! 墓穴里的怪物动态刷新!|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
    .group 2
step << Warrior
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87
    >>拾取地上的|cRXP_PICK_阿加曼德家族武器|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_跳到武器架上, 直到看起来悬空然后登出再登入.|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_点击这里查看演示|r
    .isQuestComplete 408
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 408 >>提交 家族墓穴
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 1821 >>提交 阿加曼德家传武器
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 1822 >> 提交 祖传武器
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆地下室的|cRXP_FRIENDLY_被俘虏的巡山人|r对话
    .turnin 492 >>提交 新的瘟疫
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_黑暗教士贝里尔|r对话
	.train 588,1 >>学习|T135926:0|t[心灵之火]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_黑暗教士贝里尔|r对话
	.train 6074 >>学习职业技能
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_凯恩·火歌|r对话
    .train 145,1 >>学习|T135812:0|t[火球术 等级3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_凯恩·火歌|r对话
    .train 2137 >>学习职业技能
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >>学习|T132223:0|t[压制]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 1160 >>学习职业技能
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_鲁瓦格|r对话
    .train 1766,1 >>学习|T132219:0|t[脚踢]
    .target Rwag
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_鲁瓦格|r对话
    .train 1758 >>学习职业技能
    .target Rwag
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 755,1 >>学习|T136168:0|t[生命通道]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 6222 >>学习职业技能
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r对话
    .turnin 1882 >>提交 巴尼尔农场
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦可·加勒特|r
    .fp Undercity >> 开启幽暗城飞行点
    >>|cRXP_WARN_如果已经开启了飞行点就跳过这步|r
    .target Michael Garrett
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与战士区的|r|cRXP_FRIENDLY_阿基巴德|r对话
    .train 201 >>学习单手剑
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_查理斯·希顿|r|cRXP_BUY_对话. 购买|r|T135346:0|t[斗士短剑]
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #completewith Entersilverpine
    +装备|T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_本尼亚·芬奈尔|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #completewith Entersilverpine
    +装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉玟妮雅·克洛威|r
    .train 7411 >>学习|T136244:0|t[附魔]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克多·瓦德|r
    .train 3908 >>学习|T136249:0|t[裁缝]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_把所有|r|T132889:0|t[亚麻布] |cRXP_WARN_做成|r|T132890:0|t[亚麻布卷]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克多·瓦德|r
    .train 7623 >>学习|T132662:0|t[棕色亚麻长袍]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米利尔·格里高利|r
    >>|cRXP_BUY_购买|r|T132891:0|t[粗线]
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_尽可能多的做|r|T132662:0|t[棕色亚麻长袍]
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_萨德乌斯·韦伯|r|cRXP_BUY_. 购买|r|T133942:0|t[铜棒] |cRXP_BUY_和|r|T135435:0|t[普通木柴]
    >>|cRXP_WARN_分解所以刚刚做的|r|T132662:0|t[棕色亚麻长袍] |cRXP_WARN_并制作一根|r|T135225:0|t[Runed 铜棒]
    >>|cRXP_WARN_如果你没得到|r|T132867:0|t[次级魔法精华] |cRXP_WARN_就从|r|cRXP_FRIENDLY_萨德乌斯·韦伯|r|cRXP_WARN_那买, 他那没有存货就稍后再完成这步.|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛考布·威恩|r
    .train 14293 >>学习|T135139:0|t[次级魔法杖]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_制作一根|r|T135139:0|t[次级魔法杖]
    >>|cRXP_WARN_如果你没得到|r|T132867:0|t[次级魔法精华] |cRXP_WARN_就从|r|cRXP_FRIENDLY_萨德乌斯·韦伯|r|cRXP_WARN_那买, 他那没有存货就稍后再完成这步.|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #completewith Entersilverpine
    +装备|T135139:0|t[次级魔法杖]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    .abandon 806 >> 放弃 黑暗风暴
    .isOnQuest 806
step
    .abandon 408 >> 放弃 家族墓穴
    .isOnQuest 408
step << Warrior
    .abandon 1821 >> 放弃 阿加曼德家传武器
    .isOnQuest 1821
step
    #label LeaveUndercity3
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>从下水道离开幽暗城
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >> 前往银松森林
    .zoneskip Silverpine Forest
]])
