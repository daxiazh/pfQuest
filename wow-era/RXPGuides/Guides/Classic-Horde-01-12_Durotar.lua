local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 1-6 杜隆塔尔
#version 11
#group RestedXP 部落 1-22
#defaultfor Troll/Orc
#next 6-10 杜隆塔尔


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_您已选择一本针对兽人和巨魔的指南。您应该选择与您开始的相同的起始区|r
step << !Troll Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在你的种族起始区之外开始游戏，因为你将无法在这里获得你的第一个符文 (|T133816:0|t[雕刻手套 - 冰枪])
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔图克|r
    .accept 4641 >>接任务: |cRXP_LOOT_起点|r
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 35 铜的供应商物品（包括你的盔甲）|r << Warlock
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 10 铜的供应商物品（包括你的盔甲）|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .accept 1485 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 4641 >>交任务: |cRXP_FRIENDLY_起点|r
    .accept 788 >>接任务: |cRXP_LOOT_小试身手|r
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r << Shaman
    .train 6673 >>训练 |T132333:0|t[战斗呐喊] << Warrior
    .train 8017 >>训练 |T136086:0|t[石化武器] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .accept 77586 >>接受偷来的电力
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在前往 Burning Blade Coven 的途中杀死 |cRXP_ENEMY_Mottled Boars|r
    >>|cRXP_WARN_尝试先达到 2 级再到达那里|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >>前往火刃女巫会
    .isOnQuest 1485
step << Warlock
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    >>杀死 |cRXP_ENEMY_Vile Familiars|r。掠夺它们以获得 |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>杀死 |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .accept 790 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r << !Hunter !Warrior
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r 并获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r 并获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .collect 206169,1,790,1 << Hunter --Rune of Explosive Shot (1)
    .collect 204809,1,790,1 << Warrior --Rune of Furious Thunder(1)
    .mob Sarkoth
step << Warrior
    #season 2
    .train 403476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>使用 |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r]
    .use 206169
    .itemcount 206169,1
step
    #season 0
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .turnin 790 >>交任务: |cRXP_FRIENDLY_萨科斯|r
    .accept 804 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.77,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    >>杀死 |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.77,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    .xp 3+325 >>升级至 325+/1400xp << Warlock
    .xp 3+925 >>升级至 925+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.77,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    .xp 3+685 >>升级至 685+/1400xp
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银的供应商物品|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你拥有价值 2 银币的供应商物品|r << Warrior
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银 75 铜的供应商物品|r << Warlock
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银 10 铜的供应商物品|r << Hunter
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银的供应商物品|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .turnin 1485 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 1499 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 1499 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_LOOT_火刃奖章|r
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 788,2 >>交任务: |cRXP_FRIENDLY_小试身手|r << Shaman
    .turnin 788 >>交任务: |cRXP_FRIENDLY_小试身手|r << !Shaman
    .accept 789 >>接任务: |cRXP_LOOT_工蝎的尾巴|r
    .accept 2383 >>接任务: |cRXP_LOOT_简易羊皮纸|r << Orc Warrior
    .accept 3065 >>接任务: |cRXP_LOOT_普通石板|r << Troll Warrior
    .accept 3082 >>接任务: |cRXP_LOOT_风蚀石板|r << Troll Hunter
    .accept 3083 >>接任务: |cRXP_LOOT_密文石板|r << Troll Rogue
    .accept 3084 >>接任务: |cRXP_LOOT_符文石板|r << Troll Shaman
    .accept 3085 >>接任务: |cRXP_LOOT_神圣石板|r << Troll Priest
    .accept 3086 >>接任务: |cRXP_LOOT_雕文石板|r << Troll Mage
    .accept 3087 >>接任务: |cRXP_LOOT_风蚀羊皮纸|r << Orc Hunter
    .accept 3088 >>接任务: |cRXP_LOOT_密文羊皮纸|r << Orc Rogue
    .accept 3089 >>接任务: |cRXP_LOOT_符文羊皮纸|r << Orc Shaman
    .accept 3090 >>接任务: |cRXP_LOOT_被污染的羊皮纸|r << Orc Warlock
    .turnin 804,1 >>交任务: |cRXP_FRIENDLY_萨科斯|r << Shaman
    .turnin 804 >>交任务: |cRXP_FRIENDLY_萨科斯|r << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前往 |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .accept 77592 >>接受悬崖之上 << Troll Rogue
    .accept 77583 >>接受悬崖之上 << Orc Rogue
    .train 53 >>训练 |T132090:0|t[背刺]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .accept 77592 >>接受悬崖之上 << Troll Rogue
    .accept 77583 >>接受悬崖之上 << Orc Rogue
    .target Rwag
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .train 53 >>训练 |T132090:0|t[背刺]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
    .money >0.01
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .accept 77586 >>接受偷来的电力
    .train 172 >>列车 |T136118:0|t[腐败]
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .train 172 >>列车 |T136118:0|t[腐败]
    .target Nartok
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .accept 4402 >>接任务: |cRXP_LOOT_戈加尔的清凉果|r
    .target Galgar
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25多克纳|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽泉水] |cFF0E8312来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312购买|r |T132382:0|t[粗箭] |cFF0E8312从她那里|r << Hunter
    >>|cRXP_WARN_节省 10 铜用于训练|r |T135932:0|t[奥术智慧] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .accept 77587 >>接受权力的象征 << Troll Shaman
    .accept 77585 >>接受权力的象征 << Orc Shaman
    .train 8042 >>列车 |T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .accept 77587 >>接受权力的象征 << Troll Shaman
    .accept 77585 >>接受权力的象征 << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .accept 77643 >>接受法术研究 << Troll Mage
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .accept 792 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .accept 77590 >>接受崎岖地形 << Troll Hunter
    .accept 77584 >>接受寻找符文 << Orc Hunter
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .money <0.01
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .accept 77590 >>接受崎岖地形 << Troll Hunter
    .accept 77584 >>接受寻找符文 << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .accept 77590 >>接受崎岖地形 << Troll Hunter
    .accept 77584 >>接受寻找符文 << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .money <0.01
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .accept 77588 >>接受健身试验 << Troll
    .accept 77582 >>接受健身试验 << Orc
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .accept 77588 >>接受健身试验 << Troll
    .accept 77582 >>接受健身试验 << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .accept 77588 >>接受健身试验 << Troll
    .accept 77582 >>接受健身试验 << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .accept 77642 >>接受洛阿神的智慧
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克赞·荆条|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .accept 5441 >>接任务: |cRXP_LOOT_懒惰的苦工|r
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>前往森金村的 |cRXP_FRIENDLY_Serpent Loa|r 雕像并输入 /kneel
    .use 205951 >>Talk to |cRXP_FRIENDLY_Serpent Loa|r as he appears, then use |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .complete 77642,1 --学习法术：雕刻手套 - 忏悔
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .turnin 77642 >>交出洛阿神灵的智慧
    .target Ken'jai
step << Rogue/Warrior
    #season 2
    .goto Durotar,43.27,69.51
    >>掠夺 |cRXP_PICK_Hidden Cache|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r] << Rogue
    >>掠夺 |cRXP_PICK_Hidden Cache|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] << Warrior
    >>|cRXP_WARN_绕过 |cRXP_ENEMY_Sarkoth|r 并跳下来到达箱子|r
    .collect 204795,1,77592,1 << Troll Rogue --Rune of Shadowstrike (1)
    .collect 204795,1,77583,1 << Orc Rogue --Rune of Shadowstrike (1)
    .collect 204806,1,77588,1 << Troll Warrior--Rune of Victory Rush (1)
    .collect 204806,1,77582,1 << Orc Warrior --Rune of Victory Rush (1)
step << Rogue/Warrior
    #season 2
    .use 204795 >>使用 |T134419:0|t[|cRXP_FRIENDLY_暗影打击符文|r] << Rogue
    .use 204806 >>使用 |T134419:0|t[|cRXP_FRIENDLY_胜利冲刺符文|r] << Warrior
    .complete 77592,1 << Troll Rogue --Learn Spell: Engrave Gloves - Shadowstrike
    .complete 77583,1 << Orc Rogue --Learn Spell: Engrave Gloves - Shadowstrike
    .complete 77588,1 << Troll Warrior --Learn Spell: Engrave Gloves - Victory Rush
    .complete 77582,1 << Orc Warrior --Learn Spell: Engrave Gloves - Victory Rush
    .isOnQuest 77592 << Troll Rogue
    .isOnQuest 77583 << Orc Rogue
    .isOnQuest 77588 << Troll Warrior
    .isOnQuest 77582 << Orc Warrior
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 77592 >>悬崖之上 << Troll Rogue
    .turnin 77583 >>悬崖之上 << Orc Rogue
    .train 1784 >>列车 |T132320:0|t[隐身]
    .train 921 >>列车 |T133644:0|t[扒窃]
    .target Rwag
    .money <0.011
    .xp <4,1
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 77592 >>悬崖之上 << Troll Rogue
    .turnin 77583 >>悬崖之上 << Orc Rogue
    .train 1784 >>列车 |T132320:0|t[隐身]
    .target Rwag
step << Warrior
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 77588 >>提交健身试验 << Troll
    .turnin 77582 >>提交健身试验 << Orc
    .target Frang
step
    #completewith Sting
    >>拾取仙人掌附近的 |cRXP_LOOT_Cactus 苹果|r
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_使用|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |cRXP_LOOT_Scorpid 工人尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << Shaman
    #season 2
    #completewith OverloadRune
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >>|cRXP_WARN_装备|r|T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>继续杀死|cRXP_ENEMY_Scorpid Workers|r 并获得 10 层 |T237556:0|t[建筑灵感]，因为它们会对你造成自然伤害
    .mob Scorpid Worker
    --User must be level 3 to be able to use item!
step << Shaman
    #season 2
    #label OverloadRune
step 
    >>使用 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .use 206381
    .complete 77587,1 << Troll Shaman --Learn Spell: Engrave Chest - Overload
    .complete 77585,1 << Orc Shaman --Learn Spell: Engrave Chest - Overload
step << Hunter
    #season 2
    #completewith ChimeraRune
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Hunter
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死 |cRXP_ENEMY_Scorpid Workers|r。掠夺他们以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1,77590,1 << Troll Hunter --Rune of the Chimera (1)
    .collect 206168,1,77584,1 << Orc Hunter --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step << Hunter
    #season 2
    #label ChimeraRune
    .use 206168 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .complete 77590,1 << Troll Hunter --Learn Spell: Engrave Gloves - Chimera Shot
    .complete 77584,1 << Orc Hunter --Learn Spell: Engrave Gloves - Chimera Shot
    .isOnQuest 77590 << Troll Hunter
    .isOnQuest 77584 << Orc Hunter
    .train 410121,1
step << !Warlock
    #label Imps
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |cRXP_LOOT_Scorpid 工人尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
#loop
	.line Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
	.goto Durotar,44.98,69.13,25,0
    >>|cRXP_WARN_使用|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.77,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    .xp 4 >>磨练至 4 级
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 789,2 >>交任务: |cRXP_FRIENDLY_工蝎的尾巴|r << Shaman
    .turnin 789 >>交任务: |cRXP_FRIENDLY_工蝎的尾巴|r << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .turnin 77587 >>上交权力圣像 << Troll Shaman
    .turnin 77585 >>上交权力圣像 << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业法术
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业法术
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 792 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_LOOT_火刃奖章|r
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .turnin 77590 >>在崎岖地形中转弯 << Troll Hunter
    .turnin 77584 >>交出“寻找符文” << Orc Hunter
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 77590 >>在崎岖地形中转弯 << Troll Hunter
    .turnin 77584 >>交出“寻找符文” << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车 |T132337:0|t[收费]
    .target Frang
    .money <0.01
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 921 >>列车 |T133644:0|t[扒窃]
    .target Rwag
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 5441 >>交任务: |cRXP_FRIENDLY_懒惰的苦工|r
    .accept 6394 >>接任务: |cRXP_LOOT_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >>升级至 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.82,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
#loop
	.line Durotar,44.67,64.92,43.45,62.96,43.82,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
	.goto Durotar,44.67,64.92,25,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>拾取仙人掌附近的 |cRXP_LOOT_Cactus 苹果|r
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #xprate <1.5
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >>升级至 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >>磨练至 5 级
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>前往 |cRXP_LOOT_Thazz'ril 的选择|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>杀死 |cRXP_ENEMY_Felstalkers|r。掠夺他们以获得 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>战利品 |cRXP_LOOT_Thazz'ril 的选择|r 靠墙
    .complete 6394,1 --Thazz'ril's Pick (1)
step << Mage/Warlock
    #season 2
    .goto Durotar,43.004,54.456
    >>打开洞穴内水下的 |cRXP_PICK_Waterlogged Stashbox|r。从中获取 |T134939:0|t|cRXP_LOOT_[法术注释：CALE ENCI]|r << Mage
    >>|cRXP_WARN_注意：你将无法在此处训练|r |T133816:0|t[雕刻手套 - 冰枪] |cRXP_WARN_，因为你只能在你种族的起始区获得|r |T133736:0|t[理解入门] |cRXP_WARN_|r << !Troll Mage
    >>打开洞穴内水下的 |cRXP_PICK_Waterlogged Stashbox|r。从中获取 |T134419:0|t|cRXP_LOOT_[Rune of Haunting]|r << Warlock
    .collect 203751,1,77643,1 << Mage --Spell Notes: CALE ENCI (1)
    .collect 205230,1,77586,1 << Warlock--Rune of Haunting (1)
    .train 401760,1 << Mage
step << Mage
    #season 2
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Warlock
    #season 2
    .use 205230 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .complete 77586,1 --Learn Spell: Engrave Gloves - Haunt
    .isOnQuest 77586
step << Rogue
    #season 2
    .goto Durotar,42.70,52.99
    >>使用 |T133644:0|t[Pick Pocket] 对 |cRXP_ENEMY_Yarrog Baneshadow|r 进行攻击，获取 |T134331:0|t[|cRXP_LOOT_Note from Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
	.mob Yarrog Baneshadow
    .train 400094,1
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>杀死 |cRXP_ENEMY_Yarrog Baneshadow|r。从他身上夺取 |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>杀死 |cRXP_ENEMY_Felstalkers|r。掠夺他们以获得 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << Hunter
    #season 2
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 6 >>磨练至 6 级
    >>|cRXP_WARN_这将允许你获得|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] |cRXP_WARN_early|r
    .mob Felstalker
    .mob Vile Familiar
    .train 410113,1
step
    #optional
    #xprate <1.5
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1635 >>升级至 1635+/2800xp << !Shaman
    .xp 5+645 >>升级至 645+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1255 >>升级至 1255+/2800xp << !Shaman
    .xp 5+265 >>升级至 265+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_通过将你的角色定位在岩石边缘直到看起来像漂浮起来，执行注销跳过，然后注销并重新登录|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>点击此处查看示例
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >>|cRXP_WARN_或者，死亡后在箭头附近的 |cRXP_FRIENDLY_Spirit Healer|r 处重生|r
    .target Spirit Healer
    .subzoneskip 362
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_你可以在堡垒外面或堡垒顶部与他交谈|r
    .accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
    .target Gar'thok
step << Hunter
    #softcore
    #season 2
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    >>|cRXP_WARN_你需要|r |T132212:0|t[猎人印记] |cRXP_WARN_才能获得|r |T134419:0|t[|cRXP_FRIENDLY_射击符文|r]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 410113,1
    .target Thotar
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 30 分钟）
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Hunter
    #softcore
    #season 2
    .goto Durotar,40.61,52.19
    >>|cRXP_WARN_施放|r |T132212:0|t[猎人印记] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #softcore
    #season 2
    .train 410113 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] 训练 |T132177:0|t[Master Marksman]
    .use 206155
    .itemcount 206155,1
step
    #completewith next
    .hs >>试炼之谷
    .use 6948
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 794 >>交任务: |cRXP_FRIENDLY_火刃奖章|r
    .accept 805 >>接任务: |cRXP_LOOT_去森金村报到|r
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
	.accept 5649 >>接任务: |cRXP_LOOT_部族的传统|r
	.train 591 >>列车 |T135924:0|t[重击]
    .train 17 >>训练 |T135940:0|t[真言术：盾]
    .target Ken'jai
step << Mage
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .turnin 77643 >>提交法术研究
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前往 |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>列车 |T136189:0|t[邪恶力量]
    .train 1776 >>列车 |T132155:0|t[凿击]
    .target Rwag
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>列车 |T136189:0|t[邪恶力量]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[血契魔典] |cRXP_BUY_|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾
    .target Hraug
    .money <0.03
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .train 1454 >>列车 |T136126:0|t[生命之流]
    .turnin 77586 >>交出偷来的电力
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .turnin 77586 >>交出偷来的电力
    .target Nartok
step << Warlock
    #season
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .train 1454 >>列车 |T136126:0|t[生命之流]
    .target Nartok
    .money <0.02
step << Warlock
    #season
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .target Nartok
step << Warlock
    #completewith Leave
    .train 20397 >>使用 |T133738:0|t[血契魔典]
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
    .goto Durotar,44.13,76.36,25 >>前往 |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>使用 |T134743:0|t[地球 Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1518 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>走出试炼之谷
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 6-10 杜隆塔尔
#version 11
#group RestedXP 部落 1-22
#defaultfor Troll/Orc
#next 10-12 杜隆塔尔

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接任务: |cRXP_LOOT_苦工的重担|r
    .target Ukor
step
    #completewith next
    .subzone 367 >>前往森金村
step
    #xprate <1.5
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>接任务: |cRXP_LOOT_科卡尔半人马的进攻|r
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_加德林大师|r
    .accept 817 >>接任务: |cRXP_LOOT_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .accept 818 >>接任务: |cRXP_LOOT_沃纳尔大师|r
    .goto Durotar,55.94,74.40
    .turnin 805 >>交任务: |cRXP_FRIENDLY_去森金村报到|r
    .accept 808 >>接任务: |cRXP_LOOT_明希纳的颅骨|r
    .accept 826 >>接任务: |cRXP_LOOT_扎拉赞恩|r
    .accept 823 >>接任务: |cRXP_LOOT_向奥戈尼尔报告|r
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>进入大屋
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_交谈。从她那里购买|r |T135421:0|t[加重飞斧] |cRXP_BUY_|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (4s 01c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T132401:0|t[大斧] (4s 84c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买一把|r |T132401:0|t[大斧] |cRXP_BUY_|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135421:0|t[战斧] (5s 40c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135421:0|t[战斧] |cRXP_BUY_|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135499:0|t[霍恩伍德反曲弓] (2s 83c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135499:0|t[霍恩伍德反曲弓] |cRXP_BUY_|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith Bonfire
    +装备 |T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Bonfire
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Bonfire
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +装备 |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bonfire
    +装备 |T135499:0|t[霍恩伍德反曲弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .target Un'Thuwa
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_铸造|r |T136025:0|t[寻找矿物] |cRXP_WARN_并开采你找到的任何铜矿脉以获取|r |T135232:0|t|cRXP_LOOT_[原石]|r|cRXP_WARN_。用它们制作|r |T135248:0|t[磨刀石] |cRXP_WARN_|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>跑到海滩上。杀死 |cRXP_ENEMY_Crawlers|r 和 |cRXP_ENEMY_Makruras|r。掠夺他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r。您不必在这里完成此步骤。
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >>到达海滩尽头
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>跑到海滩上。杀死 |cRXP_ENEMY_Crawlers|r 和 |cRXP_ENEMY_Makruras|r。掠夺他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r。您不必在这里完成此步骤。
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >>到达海滩尽头
    .isOnQuest 818
step
    #xprate <1.5
    #completewith Bonfire
    >>杀死 |cRXP_ENEMY_Kolkar Drudges|r 和 |cRXP_ENEMY_Kolkar Outrunners|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
--   >>|cRXP_WARN_不要专注于完成这件事|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>进入科卡尔基地
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_在杜隆塔尔各地执行任务时开始收集 3 叠|r |T132889:0|t[亚麻布] |cRXP_WARN_。稍后将用它们制作魔杖|r
    >>|cRXP_WARN_如果你已经购买了魔杖或者可以从 AH 以便宜的价格买到魔杖，请跳过此步骤。|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_在杜隆塔尔各地执行任务时开始收集 3 叠|r |T132889:0|t[亚麻布] |cRXP_WARN_。稍后将用它们制作魔杖|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +|cRXP_WARN_如果|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_出现，请小心，他是 9 级稀有生物。您可能需要使用 |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_如果您有它|r
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>杀死 |cRXP_ENEMY_Kolkar Drudges|r 和 |cRXP_ENEMY_Kolkar Outrunners|r。掠夺他们以获得 |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>在地面上的帐篷里烧掉 |cRXP_PICK_Attack Plan|r
    .complete 786,1 --Attack Plan: 试炼之谷 destroyed (1)
step
    #xprate <1.5
    >>将 |cRXP_PICK_Attack Plan|r 烧毁在地上
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>将 |cRXP_PICK_Attack Plan|r 烧毁在地上
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step << Warrior
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>杀死 |cRXP_ENEMY_Kolkar Drudges|r 和 |cRXP_ENEMY_Kolkar Outrunners|r。掠夺他们以获得 |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    #completewith next
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >>在篝火旁死去并在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>离开科卡尔基地
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << Shaman
    .turnin 786 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (4s 01c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T132401:0|t[大斧] (4s 84c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买一把|r |T132401:0|t[大斧] |cRXP_BUY_|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135421:0|t[战斧] (5s 40c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135421:0|t[战斧] |cRXP_BUY_|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135499:0|t[霍恩伍德反曲弓] (2s 83c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135499:0|t[霍恩伍德反曲弓] |cRXP_BUY_|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135499:0|t[霍恩伍德反曲弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃纳尔大师|r
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海赞|r
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[一块肉] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << Shaman
    .turnin 786 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'so|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    >>|cRXP_WARN_他已隐身！|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r] |cRXP_WARN_进行训练|r |T132304:0|t[毁伤]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_你可以在堡垒外面或堡垒顶部与他交谈|r
    .accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
    .target Gar'thok
step << Hunter
    #hardcore
    #season 2
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    >>|cRXP_WARN_你需要|r |T132212:0|t[猎人印记] |cRXP_WARN_才能获得|r |T134419:0|t[|cRXP_FRIENDLY_射击符文|r]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 410113,1
    .target Thotar
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 30 分钟）
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Hunter
    #hardcore
    #season 2
    .goto Durotar,40.61,52.19
    >>|cRXP_WARN_施放|r |T132212:0|t[猎人印记] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #hardcore
    #season 2
    .train 410113 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] 训练 |T132177:0|t[Master Marksman]
    .use 206155
    .itemcount 206155,1
step
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .subzone 372 >>前往提拉加德要塞。沿途消灭怪物
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_如果|r |cRXP_ENEMY_Watch Commander Zalaphil|r |cRXP_WARN_出现，请小心，因为他是 9 级稀有。您可能需要使用|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_如果你有一个|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>前往城堡二楼
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>杀死 |cRXP_ENEMY_Sailors|r 和 |cRXP_ENEMY_Marines|r。从他们身上夺取 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --库尔提拉斯水手 (10)
    .mob +库尔提拉斯水手
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .mob +库尔提拉斯海军陆战队
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>杀死 |cRXP_ENEMY_Lieutenant Benedict|r。抢夺他的 |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>上楼去
    >>打开 |cRXP_PICK_Benedict 的宝箱|r。获取 |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>使用 |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] 开始任务
    .collect 4881,1,830,1 --Collect Aged Envelope (1)
    .accept 830 >>接任务: |cRXP_LOOT_将军的命令|r
    .use 4881
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --库尔提拉斯水手 (10)
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯海军陆战队
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r
    .complete 784,1 --库尔提拉斯水手 (10)
    .mob +库尔提拉斯水手
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .mob +库尔提拉斯海军陆战队
step
    #label ScrapsFinished
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯海军陆战队
step << Priest
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Sailors|r 和 |cRXP_ENEMY_Marines|r。从他们身上夺取 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯海军陆战队
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>跪在 |cRXP_PICK_Loa 祭坛|r 前并与 |cRXP_FRIENDLY_Serpent Loa|r 交谈以获得 |T136077:0|t[Meditation on the Loa] 增益
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r] |cRXP_WARN_进行训练|r |T237514:0|t[虚空瘟疫]
step << !Priest !Mage
    #xprate <1.5
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+2200 >>升级至 2200+/4500xp
step << !Priest !Mage
    #xprate >1.49
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1050 >>升级至 1050+/4500xp
step << Priest
    #xprate <1.5
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1750 >>升级至 1750+/4500xp
step << Priest
    #xprate >1.49
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+375 >>升级至 375+/4500xp
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >>死于提拉加德要塞外的北塔，并在 |cRXP_FRIENDLY_Spirit Healer|r 重生
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往剃刀岭
step
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Orgnil|r、|cRXP_FRIENDLY_Gar'Thok|r 和 |cRXP_FRIENDLY_Torka|r 交谈
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .accept 806 >>接任务: |cRXP_LOOT_黑暗风暴|r
    .goto Durotar,52.24,43.15
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 825 >>接任务: |cRXP_LOOT_海底沉船|r
    .accept 831 >>接任务: |cRXP_LOOT_将军的命令|r
    .accept 837 >>接任务: |cRXP_LOOT_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .accept 815 >>接任务: |cRXP_LOOT_恐龙蛋大餐|r
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
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>交任务: |cRXP_FRIENDLY_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575,1 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 30 分钟）
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,818,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (4s 01c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T132401:0|t[大斧] (4s 84c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买一把|r |T132401:0|t[大斧] |cRXP_BUY_|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135421:0|t[战斧] (5s 40c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r |T135421:0|t[Tomahawk] |cRXP_BUY_|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +装备 |T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Toolboxes
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Toolboxes
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +装备 |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳特|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135499:0|t[霍恩伍德反曲弓] (2s 83c)。如果你还没有足够的钱，你以后再回来
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_交谈。从他那里购买|r |T135499:0|t[霍恩伍德反曲弓] |cRXP_BUY_|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #completewith Toolboxes
    +装备 |T135499:0|t[霍恩伍德反曲弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话: |cRXP_FRIENDLY_格劳特|r|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[一块肉] |cRXP_BUY_|r << Rogue/Warrior
    .vendor >>供应商垃圾
    .home >>将炉石设置为剃刀岭
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .collect 1179,10,818,1 << Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 1179,20,818,1 << Mage --Ice Cold Milk (20)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.065 << Rogue/Warrior/Shaman/Warlock --to ensure user still has 4 silver left for class spells
    .money <0.045 << Priest --to ensure user still has 2 silver left for class spells
    .money <0.050 << Mage --Mage not getting class training here
    .isOnQuest 825 --From the Wreckage
step << !Hunter
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .home >>将炉石设置为剃刀岭
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .money >0.065 << Rogue/Warrior/Shaman/Warlock
    .money >0.045 << Priest
    .money >0.050 << Mage
    .isOnQuest 825 --From the Wreckage
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 284 >>训练你的职业法术
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8044 >>训练你的职业法术
    .target Swart
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >>使用 |T133738:0|t[2 级火箭魔法书]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .train 5116 >>训练你的职业法术
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >>训练你的职业法术
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5649 >>接任务: |cRXP_LOOT_部族的传统|r
    .accept 5648 >>接任务: |cRXP_LOOT_灵魂之衣|r
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>对 |cRXP_FRIENDLY_Kor'ja|r 施放 |T135929:0|t[次级治疗术] 和 |T135987:0|t[真言术：坚韧]
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5648 >>交任务: |cRXP_FRIENDLY_灵魂之衣|r
    .trainer >>训练你的职业法术
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>列车 |T135966:0|t[急救]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_购买 a|r |T133634:0|t[小棕色袋] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #label Tools
    >>抢劫船内和周围的 |cRXP_PICK_Gnomish 工具箱|r
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
    .goto Durotar,67.10,69.29,100 >>游到岛上
step
    #completewith MinshinasSkull
    >>杀死 |cRXP_ENEMY_Durotar Tigers|r。掠夺它们的 |cRXP_LOOT_Fur|r
    -->>这不需要现在就完成
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .waypoint Durotar,67.04,71.40,40,0
    .waypoint Durotar,67.66,73.86,40,0
    .waypoint Durotar,68.67,74.47,40,0
    .waypoint Durotar,69.76,74.69,40,0
    .waypoint Durotar,70.29,73.31,40,0
    .waypoint Durotar,70.23,70.84,40,0
    .waypoint Durotar,69.69,70.35,40,0
    .waypoint Durotar,69.21,69.69,40,0
    .waypoint Durotar,67.74,69.86,40,0
    >>拾取地面上的 |cRXP_PICK_Taillasher 蛋|r。它们通常由 |cRXP_ENEMY_Bloodtalon Taillasher|r 守卫
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Crawlers|r 和 |cRXP_ENEMY_Makruras|r。掠夺他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    .goto Durotar,66.94,84.41,150 >>游到主岛
    .isOnQuest 826
step
    #completewith MinshinasSkull
    >>杀死 |cRXP_ENEMY_被诅咒的巨魔s|r 和 |cRXP_ENEMY_巫毒巨魔s|r
    .complete 826,1 --被诅咒的巨魔 (8)
    .mob +被诅咒的巨魔
    .complete 826,2 --巫毒巨魔 (8)
    .mob +巫毒巨魔
step << Priest
    #season 2
    #completewith Fur
    >>杀死 |cRXP_ENEMY_巫毒巨魔s|r。掠夺他们以获得 |T135975:0|t[|cRXP_FRIENDLY_被亵渎的城堡的预言|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob 巫毒巨魔
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>杀死 |cRXP_ENEMY_Zalazane|r。从他身上搜刮 |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell 注释：RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Zalazane|r。夺取他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_保存你的|r |T136026:0|t[地震术] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Shaman
    >>|cRXP_WARN_保存你的|r |T132155:0|t[凿击] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的一个 |cRXP_LOOT_Skulls|r
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>杀死 |cRXP_ENEMY_Zalazane|r。夺取他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_保存你的|r |T136026:0|t[地震术] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Shaman
    >>|cRXP_WARN_保存你的|r |T132155:0|t[凿击] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>杀死 |cRXP_ENEMY_Zalazane|r。从他身上搜刮 |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell 注释：RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>你需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用该物品
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_咒语说明：RING SEFF OSTROF|r] |cRXP_WARN_学习|r |T236227:0|t[冰霜之指]
    .use 203753
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Durotar Tigers|r。掠夺它们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>杀死 |cRXP_ENEMY_被诅咒的巨魔s|r 和 |cRXP_ENEMY_巫毒巨魔s|r
    .complete 826,1 --被诅咒的巨魔 (8)
    .mob +被诅咒的巨魔
    .complete 826,2 --巫毒巨魔 (8)
    .mob +巫毒巨魔
step << Priest
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>杀死 |cRXP_ENEMY_巫毒巨魔s|r。掠夺他们以获得 |T135975:0|t[|cRXP_FRIENDLY_被亵渎的城堡的预言|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob 巫毒巨魔
    .train 402852,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
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
    >>杀死 |cRXP_ENEMY_Durotar Tigers|r。掠夺它们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生，或者跑回去
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往森金村
step
    .goto Durotar,56.48,73.11
    >>跳进小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾和维修
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 118 >>训练你的职业法术
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加德林大师|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_维尔林·长牙|r
    .turnin 808 >>交任务: |cRXP_FRIENDLY_明希纳的颅骨|r
    .turnin 826,2 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << Shaman
    .turnin 826 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << !Shaman
    .goto Durotar,55.95,74.73
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .goto Durotar,55.95,74.39
    .turnin 817 >>交任务: |cRXP_FRIENDLY_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>跪在 |cRXP_PICK_Loa 祭坛|r 前并与 |cRXP_FRIENDLY_Serpent Loa|r 交谈以获得 |T136077:0|t[Meditation on the Loa] 增益
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_现在你必须找到一个拥有 Loa 增益的亡灵牧师。你必须跪在他面前，他必须为你祈祷。|r
    .use 205947
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_被亵渎城堡的预言|r] |cRXP_WARN_训练|r |T237570:0|t[Homunculi]
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_绑定你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_和|r |T134712:0|t[非常粘的胶水]|cRXP_WARN_。保存它们以备紧急情况|r
step << Warrior
    #season 2
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
    >>杀死 |cRXP_ENEMY_钢鬃野猪人s|r 和 |cRXP_ENEMY_钢鬃斥候s|r。从他们身上搜刮 |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --钢鬃野猪人 (4)
    .mob +钢鬃野猪人
    .complete 837,2 --钢鬃斥候 (4)
    .mob +钢鬃斥候
    .train 403475,1
step
    #label QuilboarsScouts
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
    >>杀死 |cRXP_ENEMY_Razormane 野猪人|r 和 |cRXP_ENEMY_Razormane 侦察兵|r
    .complete 837,1 --钢鬃野猪人 (4)
    .mob +钢鬃野猪人
    .complete 837,2 --钢鬃斥候 (4)
    .mob +钢鬃斥候
step
    #xprate <1.5 
#loop
	.line Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
	.goto Durotar,44.45,39.74,25,0
	.goto Durotar,44.49,37.47,25,0
	.goto Durotar,43.30,37.32,25,0
	.goto Durotar,41.70,37.09,25,0
	.goto Durotar,41.64,38.27,25,0
	.goto Durotar,41.94,40.46,25,0
	.goto Durotar,43.30,40.40,25,0
	.goto Durotar,44.45,39.74,25,0
    >>杀死 |cRXP_ENEMY_钢鬃尘行者s|r 和 |cRXP_ENEMY_钢鬃战斗卫士s|r
    .complete 837,3 --钢鬃尘行者 (4)
    .mob +钢鬃尘行者
    .complete 837,4 --钢鬃战斗卫士 (4)
    .mob +钢鬃战斗卫士
step << Hunter
    #xprate <1.5 
#loop
	.line Durotar,47.52,48.67,46.12,45.47,43.65,43.91,41.68,44.69,41.00,46.13,42.47,48.50,44.21,49.68,47.17,49.44,47.52,48.67
	.goto Durotar,47.52,48.67,25,0
	.goto Durotar,46.12,45.47,25,0
	.goto Durotar,43.65,43.91,25,0
	.goto Durotar,41.68,44.69,25,0
	.goto Durotar,41.00,46.13,25,0
	.goto Durotar,42.47,48.50,25,0
	.goto Durotar,44.21,49.68,25,0
	.goto Durotar,47.17,49.44,25,0
	.goto Durotar,47.52,48.67,25,0
    .xp 9+4470 >>升级至 4470+/6500xp
step
    #xprate >1.49
    #loop
    .goto Durotar,49.14,48.89,0
    .waypoint Durotar,49.14,48.89,30,0
    .waypoint Durotar,47.43,49.18,30,0
    .xp 9+4400 >>升级至 4400+/6500xp
step
    #xprate >1.49 << !Hunter
    #softcore
    #completewith RazorTurnins015
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生，或者逃往 Razor Hill
step
    #xprate >1.49 << !Hunter
    #hardcore
    #completewith RazorTurnins015
    .goto Durotar,51.95,43.50,100 >>奔向剃刀岭
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Torka|r 和 |cRXP_FRIENDLY_Gar'Thok|r 交谈
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 825 >>交任务: |cRXP_FRIENDLY_海底沉船|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Torka|r 和 |cRXP_FRIENDLY_Gar'Thok|r 交谈
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 825 >>交任务: |cRXP_FRIENDLY_海底沉船|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .trainer >>训练你的职业法术
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120 >>训练你的职业法术
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #xprate >1.49
    .train 20270 >>使用 |T133738:0|t[2 级火箭魔法书]
    .use 16302
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .accept 5654 >>接任务: |cRXP_WARN_虚弱妖术|r << Troll
    .accept 5660 >>接任务: |cRXP_WARN_虚弱之触|r << Undead
    .trainer >>训练你的职业法术
    .target Tai'jin
step << Rogue
    #xprate >1.49
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 674 >>训练你的职业法术
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .accept 6062 >>接任务: |cRXP_LOOT_驯服野兽|r
    .trainer >>训练你的职业法术
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话: |cRXP_FRIENDLY_格劳特|r, and a|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话: |cRXP_FRIENDLY_格劳特|r|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51
    .use 15917 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Dire Mottled Boar|r |cRXP_WARN_at 最大范围|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .turnin 6062 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6083 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .accept 6083 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_通过右键单击其单位框架并单击“关闭”来关闭你的 |cRXP_ENEMY_Dire Mottled Boar|r，否则你将无法驯服|r |cRXP_ENEMY_冲浪爬行者|r
step << Hunter
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38
    >>|cRXP_WARN_不要杀死|r |cRXP_ENEMY_装甲蝎|r |cRXP_WARN_你看。你稍后会需要它们|r
    .use 15919 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_冲浪爬行者|r |cRXP_WARN_at 最大范围|r
    .complete 6083,1 --Tame a 冲浪爬行者
    .mob 冲浪爬行者
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .turnin 6083 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6082 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_通过右键单击其单位框架并单击“关闭”来关闭你的 |cRXP_ENEMY_冲浪爬行者|r，否则你将无法驯服|r |cRXP_ENEMY_Armored Scorpid|r
step << Hunter
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .goto Durotar,54.84,36.94
    .use 15920 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on 和|r |cRXP_ENEMY_装甲蝎|r |cRXP_WARN_at 最大范围|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .turnin 6082 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6081 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_将|r |T132164:0|t[驯服野兽]|cRXP_WARN_、|r |T136095:0|t[解散宠物]|cRXP_WARN_和|r |T132161:0|t[召唤宠物] |cRXP_WARN_放到你的动作栏上|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞姆塔克|r
    >>|cRXP_BUY_从他那里购买|r |T133972:0|t[坚韧的肉干] |cRXP_BUY_|r。|cRXP_BUY_你稍后会用它喂养你的宠物。|r
    .vendor >>供应商垃圾
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #label ConscriptH
    #xprate >1.49 << !Hunter
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_LOOT_部落的新兵|r
    .target Takrin Pathseeker
step
    #xprate >1.49
#loop
	.line Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
	.goto Durotar,44.45,39.74,25,0
	.goto Durotar,44.49,37.47,25,0
	.goto Durotar,43.30,37.32,25,0
	.goto Durotar,41.70,37.09,25,0
	.goto Durotar,41.64,38.27,25,0
	.goto Durotar,41.94,40.46,25,0
	.goto Durotar,43.30,40.40,25,0
	.goto Durotar,44.45,39.74,25,0
    >>杀死 |cRXP_ENEMY_钢鬃尘行者s|r 和 |cRXP_ENEMY_钢鬃战斗卫士s|r
    .complete 837,3 --钢鬃尘行者 (4)
    .mob +钢鬃尘行者
    .complete 837,4 --钢鬃战斗卫士 (4)
    .mob +钢鬃战斗卫士
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2983 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    .goto Durotar,39.16,58.56,10 >>沿着山上的小路前往 |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_小心不要从山上掉下来，路很窄。如果掉下去，你可能会死|r
step << Shaman
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Hunter/Shaman/Warrior
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .accept 816 >>接任务: |cRXP_LOOT_丢失的孩子|r
    .target Misha Tor'kren 
step << Warrior
    #xprate >1.49
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34
    >>进入雷霆岭并杀死 |cRXP_ENEMY_Lightning Hides|r。掠夺他们的 |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,41.66,25.68,20 >>跳进雷霆岭
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,42.13,26.67
    >>杀死 |cRXP_ENEMY_Fizzle Darkstorm|r 并掠夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_小心。先杀掉巡逻的|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_和|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_，然后再把他拉走|r
    >>|cRXP_WARN_把他拉向|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_你刚刚杀死的那个方向。否则你可能会拉扯到更多的 Burning Blade 怪物|r
    >>|cRXP_WARN_不要害怕为 |cRXP_LOOT_Claw|r 而死，因为你将在 |cRXP_FRIENDLY_Spirit Healer|r 处重生|r
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T132155:0|t[凿击] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T136026:0|t[地震术] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以施放|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_并杀死|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_先杀掉小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_如果你有它和你的|r |T133728:0|t[微弱发光的头骨] |cRXP_WARN_如果需要|r << !Warlock
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_如果你有它并且你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_如果需要|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,42.13,26.67
    >>杀死 |cRXP_ENEMY_Fizzle Darkstorm|r 并掠夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_小心。先杀掉巡逻的|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_和|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_，然后再把他拉走|r
    >>|cRXP_WARN_把他拉向|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_你刚刚杀死的那个方向。否则你可能会拉扯到更多的 Burning Blade 怪物|r
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T132155:0|t[凿击] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T136026:0|t[地震术] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以施放|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_并杀死|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_先杀掉小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_如果你有它和你的|r |T133728:0|t[微弱发光的头骨] |cRXP_WARN_如果需要|r << !Warlock
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_如果你有它并且你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_如果需要|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 806
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >>杀出雷霆岭
    .isQuestComplete 806
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >>前往雷兹拉克
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_LOOT_沙漠之风|r
    .target Rezlak
step << Warrior
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Dustwind Harpies|r。掠夺它们以获得 |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 尘风野蛮人
    .mob 尘风风暴女巫
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
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
    >>从地面上拾取 |cRXP_PICK_Stolen Supply Sacks|r
    .complete 834,1 --Sack of Supplies (5)
step << Warrior
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>杀死 |cRXP_ENEMY_Dustwind Harpies|r。掠夺它们以获得 |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 尘风野蛮人
    .mob 尘风风暴女巫
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
    .accept 835 >>接任务: |cRXP_LOOT_保卫商路|r
    .target Rezlak
step
    #xprate >1.49
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
    .target Rezlak
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>前往尘风洞
    >>|cRXP_WARN_绕着山丘向东走，到达洞穴。按照路标箭头|r
step << Shaman
    #xprate >1.49
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死 |cRXP_ENEMY_Burning Blade Cultists|r。掠夺他们以获得 |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #xprate <1.5 << Shaman/Warrior
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>跳进雷霆岭 << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_通过右键单击其单位框架并单击“关闭”来关闭你的|r |T136218:0|t[Imp] |cRXP_WARN_|r << Warlock
    .cast 2641 |cRXP_WARN_施放|r |T136095:0|t[解散宠物] |cRXP_WARN_然后跳入雷霆岭|r << Hunter
step
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,42.13,26.67
    >>杀死 |cRXP_ENEMY_Fizzle Darkstorm|r 并掠夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_小心。先杀掉巡逻的|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_和|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_，然后再把他拉走|r
    >>|cRXP_WARN_把他拉向|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_你刚刚杀死的那个方向。否则你可能会拉扯到更多的 Burning Blade 怪物|r
    >>|cRXP_WARN_不要害怕为 |cRXP_LOOT_Claw|r 而死，因为你将在 |cRXP_FRIENDLY_Spirit Healer|r 处重生|r
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T132155:0|t[凿击] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T136026:0|t[地震术] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以施放|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_并杀死|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_先杀掉小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_如果你有它和你的|r |T133728:0|t[微弱发光的头骨] |cRXP_WARN_如果需要|r << !Warlock
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_如果你有它并且你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_如果需要|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,42.13,26.67
    >>杀死 |cRXP_ENEMY_Fizzle Darkstorm|r 并掠夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_小心。先杀掉巡逻的|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_和|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_，然后再把他拉走|r
    >>|cRXP_WARN_把他拉向|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_你刚刚杀死的那个方向。否则你可能会拉扯到更多的 Burning Blade 怪物|r
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T132155:0|t[凿击] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T136026:0|t[地震术] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以施放|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_并杀死|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_先杀掉小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_如果你有它和你的|r |T133728:0|t[微弱发光的头骨] |cRXP_WARN_如果需要|r << !Warlock
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_如果你有它并且你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_如果需要|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,39.20,32.02,60 >>杀出雷霆岭
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >>杀出雷霆岭
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将启动任务的 45 分钟计时器。接下来的 5 分钟内请勿离开或退出|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .target Rhinag
step << Warrior/Shaman
    #xprate <1.5
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08
    .xp 9+2930 >>升级至 2930+/6500 进入第 9 级
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    #label EnterOrg
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Nazgrel
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .turnin 6081 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24547 >>训练你的宠物法术
    .target Xao'tsu
step << Hunter
    #completewith FindAntidote
    +|cRXP_WARN_将|r |T132162:0|t[野兽训练]|cRXP_WARN_（在常规选项卡下）、|r |T132163:0|t[复活宠物]|cRXP_WARN_和|r |T132165:0|t[喂养宠物]|cRXP_WARN_放到你的动作栏上|r
    >>|cRXP_WARN_记住，当你的宠物获得训练点数时，要对其进行训练|r |T132162:0|t[野兽训练]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_交谈。从他那里购买一把|r |T135499:0|t[层压反曲弓] |cRXP_BUY_|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +当你达到 11 级时装备 |T135499:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #completewith FindAntidote
    +装备 |T135499:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #label FindAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格汉|r
    .accept 813 >>接任务: |cRXP_LOOT_寻找解毒剂|r
    .target Kor'ghan
    .isOnQuest 812
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_放弃对治愈的需求。这将删除任务上的计时器，但你仍然可以执行此操作|r
    .abandon 812 >>放弃治疗的需要
    .isOnQuest 812
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎姆沙|r, Gru'ark
    +当 |cRXP_ENEMY_Gru'ark|r 变得具有敌意时将其杀死
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎姆沙|r
    >>从她那里获得 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .use 204716
    .itemcount 204716,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #completewith RazorTurnins2
    .hs >>炉石到剃刀岭
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #requires NeedACure
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>供应商垃圾
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[一块肉] |cRXP_BUY_|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahi|r
    >>上交你收集到的 |cRXP_LOOT_Heads|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step << Hunter
    #xprate <1.5
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Orgnil|r交谈
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
    .accept 828 >>接任务: |cRXP_LOOT_玛高兹|r
    .target Orgnil Soulscar
step << !Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r |cRXP_FRIENDLY_Torka|r、|cRXP_FRIENDLY_Orgnil|r 和 |cRXP_FRIENDLY_Gar'Thok|r 交谈
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
    .accept 828 >>接任务: |cRXP_LOOT_玛高兹|r
    .goto Durotar,52.24,43.15
    .turnin 825 >>交任务: |cRXP_FRIENDLY_海底沉船|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Orgnil Soulscar
    .target Gar'Thok
step << Hunter/Shaman/Warrior
    #xprate >1.49
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r |cRXP_FRIENDLY_Orgnil|r 和 |cRXP_FRIENDLY_Gar'Thok|r 交谈
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
    .goto Durotar,52.24,43.15
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
    .target Gar'Thok
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >>训练你的职业法术
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .target Tarshaw Jaggedscar
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .target Swart
step << Warlock
    #xprate <1.5
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120 >>训练你的职业法术
    .target Dhugru Gorelust
step << Warlock
    #xprate <1.5
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #xprate <1.5
    .train 20270 >>使用 |T133738:0|t[2 级火箭魔法书]
    .use 16302
step << Priest
    #xprate <1.5
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .accept 5654 >>接任务: |cRXP_WARN_虚弱妖术|r << Troll
    .accept 5660 >>接任务: |cRXP_WARN_虚弱之触|r << Undead
    .trainer >>训练你的职业法术
    .target Tai'jin
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .train 13549 >>训练你的职业法术
    .target Thotar
step << Rogue
    #xprate <1.5
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 674 >>训练你的职业法术
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 10-12 杜隆塔尔
#version 11
#group RestedXP 部落 1-22
#defaultfor Troll/Orc
#next 10-12 提瑞斯法 << Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-17 荒地 << Troll !Rogue !Mage !Priest/Orc !Rogue !Warlock


step << Warrior/Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_LOOT_部落的新兵|r
    .target Takrin Pathseeker
step << Warrior/Shaman
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step << Warrior/Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior
    #xprate <1.5
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
    .target Uzzek
step << Warrior
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
    .target Uzzek
step << Shaman
    #xprate <1.5
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2983 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Kranal Fiss
step << Warrior/Shaman
    #hardcore
    #completewith PoolsPickup
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>前往十字路口
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << Warrior/Shaman
    #label PoolsPickup
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
    .target Tonga Runetotem
step << Warrior/Shaman
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
step << Warrior/Shaman
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .target Zargh
step << Warrior/Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .target Gazrog
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r 
    .home >>将炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step << Warrior/Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
    .target Thork
step << Warrior/Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    >>|cRXP_WARN_不要飞往奥格瑞玛！|r
    .fp The Crossroads >>获取十字路口飞行路线
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_LOOT_飞往奥格瑞玛|r
    .target Devrak
    .zoneskip Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
    .target Apothecary Helbrim
step << Warrior/Shaman
    #completewith next
    >>在被遗忘的池塘周围收集 |cRXP_LOOT_Laden 蘑菇|r
    >>|cRXP_WARN_拾取蘑菇时请与 |cRXP_ENEMY_Kolkar|r |cRXP_WARN_保持最大距离。蘑菇等级为 12-14|r
    >>|cRXP_WARN_此任务的后续任务有强大的 |cRXP_FRIENDLY_Cauldron Stinger|r |cRXP_WARN_作为奖励。如果您不打算使用它，可以暂时跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    .goto The Barrens,45.06,22.54
    >>潜入水下至 |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4
    >>在被遗忘的池塘周围收集 |cRXP_LOOT_Laden 蘑菇|r
    >>|cRXP_WARN_与该区域内的 |cRXP_ENEMY_Kolkar|r |cRXP_WARN_保持最大距离。他们的等级为 12-14|r
    >>|cRXP_WARN_此任务的后续任务有强大的 |cRXP_FRIENDLY_Cauldron Stinger|r |cRXP_WARN_作为奖励。如果您不打算使用它，可以暂时跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    #hardcore
    #completewith FungalSporesComplete
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>前往十字路口
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << Warrior/Shaman
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_WARN_等待 RP 完成|r
    >>|cRXP_WARN_这将开始一个 45 分钟的计时任务|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
    .target Apothecary Helbrim
step << Warrior/Shaman
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔格|r
    >>|cRXP_BUY_购买一个或多个|r |T133634:0|t[小棕色袋] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Shaman
    #sticky
    #completewith ZamahTurnin2
    +|cRXP_WARN_你正在进行限时任务，不要闲逛。任务将在接取后约 30 分钟内完成|r
    .isOnQuest 853
step << Warrior/Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .target Tonga Runetotem
step << Warrior/Shaman
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>沿路向南行驶，前往陶拉霍营地
step << Warrior/Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获取陶拉霍营地飞行路线
    .target Omusa Thunderhorn
step << Warrior/Shaman
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .accept 749 >>接任务: |cRXP_LOOT_不幸的商队|r
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.715,59.325
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
    .target Harken Windtotem
step << Warrior/Shaman
    .goto Mulgore,47.513,60.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.3,62.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>接任务: |cRXP_LOOT_风怒鹰身人|r
    .target Ruul Eagletalon
step << Warrior/Shaman
    .goto Mulgore,47.8,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    .turnin 767 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 771 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .target Zarlman Two-Moons
step << Warrior/Shaman
    .goto Mulgore,47.0,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .target Maur Raincaller
step << Warrior/Shaman
    #xprate <1.5
    #completewith EnterTB
    >>在整个区域执行任务时杀死 |cRXP_ENEMY_Wolves|r、|cRXP_ENEMY_Cougars|r、|cRXP_ENEMY_Plainstriders|r 和 |cRXP_ENEMY_Swoops|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith EnterTB
    >>在整个区域执行任务时杀死 |cRXP_ENEMY_Wolves|r、|cRXP_ENEMY_Cougars|r、|cRXP_ENEMY_Plainstriders|r 和 |cRXP_ENEMY_Swoops|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith EnterTB
    >>留意 |cRXP_ENEMY_Ghost Howl|r。搜刮他的 |T134358:0|t[|cRXP_LOOT_Demon Scarred 披风|r]。使用它来开始任务
    >>|cRXP_WARN_暂时不要接受任务|r
    .collect 4854,1,770 --Collect Demon Scarred 披风
    .use 4854
    .unitscan Ghost Howl
step << Warrior/Shaman
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49
    >>收集 |cRXP_PICK_Ambercorns|r。它们可以在地面上的树下找到
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40
    >>收集井周围的 |cRXP_PICK_Well 石|r
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    >>|cRXP_WARN_不要跟随出现的狼|r
    .turnin 771 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 772 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .target Zarlman Two-Moons
step << Warrior/Shaman
    #label EnterTB
    #completewith ZamahTurnin2
    .goto Thunder Bluff,32.0,66.9,60,0
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车五线谱
    .train 199 >>训练双手锤
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车五线谱
    .target Ansekhwa
    .money <0.010
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .accept 76156 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >>获取雷霆崖飞行路径 << !Tauren
    .target Tal
step << Warrior/Shaman
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往精神崛起并进入视野之池
step << Warrior/Shaman
    #label ZamahTurnin2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .isOnQuest 853
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    +装备 |T135145:0|t[大锅搅拌器]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40 >>跑出洞穴，然后从桥下某处跳下离开雷霆崖
    .zoneskip Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #completewith SacredBurialTurnIn
    >>在整个区域执行任务时杀死 |cRXP_ENEMY_Wolves|r、|cRXP_ENEMY_Cougars|r、|cRXP_ENEMY_Plainstriders|r 和 |cRXP_ENEMY_Swoops|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith SacredBurialTurnIn
    >>在整个区域执行任务时杀死 |cRXP_ENEMY_Wolves|r、|cRXP_ENEMY_Cougars|r、|cRXP_ENEMY_Plainstriders|r 和 |cRXP_ENEMY_Swoops|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith SacredBurialTurnIn
    >>留意 |cRXP_ENEMY_Ghost Howl|r。搜刮他的 |T134358:0|t[|cRXP_LOOT_Demon Scarred 披风|r]
    >>|cRXP_WARN_暂时不要接受任务|r
    .collect 4854,1,770 --Collect Demon Scarred 披风
    .unitscan Ghost Howl
step << Warrior/Shaman
    #label RiteofWisdomTurnin
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    >>|cRXP_WARN_他位于雷霆崖西南的洞穴中|r
    .turnin 772 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 773 >>接任务: |cRXP_LOOT_智慧仪祭|r
    .target Seer Wiserunner
step << Warrior/Shaman
    #completewith next
    .destroy 4823 >>摧毁: |cRXP_ENEMY_先知之水|r
step << Warrior/Shaman
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>杀死 |cRXP_ENEMY_Windfury 风女巫|r 和 |cRXP_ENEMY_Windfury 鹰身女妖|r。掠夺她们的 |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step << Shaman
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。从他们身上搜刮 |cRXP_LOOT_Artifact Storage Key|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    .goto Mulgore,31.27,49.87
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。掠夺他们的 |cRXP_LOOT_Prospector's Picks|r
    .use 4702 >>砸碎锻造厂的 |T134707:0|t[镐]
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。从他们身上搜刮 |cRXP_LOOT_Artifact Storage Key|r
    >>|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Bael'dun Appraisers|r 施法|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(远程施法：治疗自己或附近生命值低于 50% 的怪物，治疗量约为 75 点生命值)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>打开 |cRXP_PICK_Artifact Storage|r 宝箱。获取 |T134918:0|t|cRXP_LOOT_[硫磺图标]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[硫磺图标]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith SacredBurialTurnIn
    .aura 408828 >>|cRXP_WARN_杀死至少一次使用|r |T136026:0|t[地震] |cRXP_WARN_造成伤害的敌人。重复此操作 10 次即可获得|r |T136116:0|t[灵感] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验的敌人执行此操作才能获得叠加|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior/Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .accept 833 >>接任务: |cRXP_LOOT_神圣的墓地|r
    .target Lorekeeper Raintotem
step << Warrior/Shaman
    #completewith next
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 >>交任务: |cRXP_FRIENDLY_智慧仪祭|r
    .target Ancestral Spirit
step << Warrior/Shaman
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    #label SacredBurialTurnIn
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .turnin 833 >>交任务: |cRXP_FRIENDLY_神圣的墓地|r
    .target Lorekeeper Raintotem
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫磺图标]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套：熔火冲击]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    >>在整个区域执行任务时杀死 |cRXP_ENEMY_Wolves|r、|cRXP_ENEMY_Cougars|r、|cRXP_ENEMY_Plainstriders|r 和 |cRXP_ENEMY_Swoops|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith next
    >>在整个区域执行任务时杀死 |cRXP_ENEMY_Wolves|r、|cRXP_ENEMY_Cougars|r、|cRXP_ENEMY_Plainstriders|r 和 |cRXP_ENEMY_Swoops|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 751 >>接任务: |cRXP_LOOT_不幸的商队|r
step << Warrior/Shaman
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior/Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .accept 770 >>接任务: |cRXP_LOOT_恶魔之伤|r
    .turnin 770 >>交任务: |cRXP_FRIENDLY_恶魔之伤|r
    .target Skorn
    .target Skorn Whitecloud
    .use 4854
    .itemcount 4854,1
step << Warrior/Shaman
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.35,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .target Ruul Eagletalon
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .target Harken Windtotem
    .isQuestComplete 761
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >>训练你的职业法术
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 7384 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <12,1
step << Warrior/Shaman
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 764 >>接任务: |cRXP_WARN_风险投资公司|r
    .accept 765 >>接任务: |cRXP_WARN_菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Travel to 接任务: |cRXP_WARN_风险投资公司|r. Mine
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>打开矿井内部和外部的 |cRXP_PICK_Blasting Supplies|r。拾取它们以获得 |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_如果可能的话，留在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #completewith next
    >>杀死 |cRXP_ENEMY_Venture Co. 工人|r 和 |cRXP_ENEMY_Venture Co. 主管|r
    .complete 764,1 --风险投资公司员工 (14)
    .mob +风险投资公司员工
    .complete 764,2 --风险投资公司主管 (6)
    .mob +风险投资公司主管
step << Warrior/Shaman
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Run into the mine and hug the right/east side. Kill |cRXP_ENEMY_接任务: |cRXP_WARN_菲兹普罗克主管|r|r. Loot him for his |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 接任务: |cRXP_WARN_菲兹普罗克主管|r
step << Warrior/Shaman
    #label VentureCoKills
#loop
	.line Mulgore,61.35,47.55,60.10,47.84,59.50,48.21,59.68,48.85,60.14,49.14,62.01,48.74,61.89,47.84,61.35,47.55
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
	.goto Mulgore,61.35,47.55,25,0
    >>杀死 |cRXP_ENEMY_Venture Co. 工人|r 和 |cRXP_ENEMY_Venture Co. 主管|r
    .complete 764,1 --风险投资公司员工 (14)
    .mob +风险投资公司员工
    .complete 764,2 --风险投资公司主管 (6)
    .mob +风险投资公司主管
step << Shaman
    #season 2
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>打开矿井内部和外部的 |cRXP_PICK_Blasting Supplies|r。拾取它们以获得 |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_如果可能的话，留在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    #xprate <1.5
#loop
	.line Mulgore,61.35,47.55,60.10,47.84,59.50,48.21,59.68,48.85,60.14,49.14,62.01,48.74,61.89,47.84,61.35,47.55
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
	.goto Mulgore,61.35,47.55,25,0
    .xp 11+7150 >>升级至 7150+/8700xp
step << Warrior/Shaman
    #optional
    #xprate >1.49
#loop
	.line Mulgore,61.35,47.55,60.10,47.84,59.50,48.21,59.68,48.85,60.14,49.14,62.01,48.74,61.89,47.84,61.35,47.55
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
	.goto Mulgore,61.35,47.55,25,0
    .xp 11+6375 >>升级至 6375+/8700xp
step << Warrior/Shaman
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .turnin 764 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
    .turnin 765 >>交任务: |cRXP_FRIENDLY_菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
step << Warrior
    #xprate >1.49
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 7384 >>训练你的职业法术
    .target Krang Stonehoof
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 76156 >>向地母交出追踪任务
    .accept 76160 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .accept 744 >>接任务: |cRXP_LOOT_准备典礼|r
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    #completewith next
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Windfury Harpies|r。掠夺他们的 |cRXP_LOOT_Feathers|r
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女王
    .mob 风怒女巫
    .train 410104,1
step << Shaman
    #season 2
    #loop
    #loop
    .goto Mulgore,30.89,22.41,0
    .goto Mulgore,30.89,22.41,20,0
    .goto Mulgore,29.57,23.43,20,0
    .goto Mulgore,29.63,26.32,20,0
    >>拾取地面上的 |cRXP_LOOT_Windfury Cones|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Mulgore,31.7,28.2,90,0
    .goto Mulgore,30.2,19.5,90,0
    .goto Mulgore,31.7,28.2
    >>杀死 |cRXP_ENEMY_Windfury Harpies|r。掠夺他们的 |cRXP_LOOT_Feathers|r
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女王
    .mob 风怒女巫
    .train 410104,1
step << Shaman
    #season 2
    >>使用 |T133748:0|t[研钵和研杵] 制作 |T133213:0|t[松树药膏]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .turnin 744 >>交任务: |cRXP_FRIENDLY_准备典礼|r
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 76160 >>向地母交出追踪任务
    .accept 76240 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买 a|r |T133894:0|t[生鲜鲜美小鱼] |cRXP_BUY_|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>前往 |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔·迷雾行者|r
    .train 7734 >>火车 |T136245:0|t[钓鱼]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏瓦·迷雾行者|r
    >>|cRXP_BUY_从她那里购买|r |T132932:0|t[钓鱼竿] |cRXP_BUY_和|r |T134335:0|t[闪亮小饰品] |cRXP_BUY_|r
    .collect 6256,1 --钓鱼 Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_装备|r |T132932:0|t[钓鱼竿]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_将|r |T134335:0|t[闪亮小饰品] |cRXP_WARN_连接到你的|r |T132932:0|t[钓鱼竿]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼直到你得到 |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>使用 |T132147:0|t[刀具套装] 制作 |T134007:0|t[鱼块]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 76240 >>向地母交出追踪任务
-- .train 410104 >>|cRXP_WARN_你将训练|r |T236289:0|t[熔岩猛击] |cRXP_WARN_和|r |T132147:0|t[双持] |cRXP_WARN_在交出时|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    .abandon 766 >>抛弃马兹拉纳什
step << Warrior/Shaman
    #xprate >1.49
    .hs >>从炉边到十字路口
    .use 6948
step << Warrior/Shaman
    #xprate <1.5
    #completewith MargozTurnIn
    .hs >>炉石到剃刀岭
    .use 6948
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >>训练你的职业法术
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .target Swart
    .xp <12,1
step << Shaman
    #xprate <1.5
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
    .goto Durotar,39.16,58.56,10 >>沿着山上的小路前往 |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_小心不要从山上掉下来，路很窄。如果掉下去，你可能会死|r
step << Shaman
    #xprate <1.5
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Warrior
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔克|r
    .vendor >>|cRXP_BUY_购买|r |T133634:0|t[小棕色袋] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .target Jark
step << Hunter
    #completewith MargozTurnIn
    +驯服一只 |cRXP_ENEMY_Venomtail Scorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate <1.5
    #completewith next
    .subzone 371 >>前往尘风洞
step << Shaman
    #xprate <1.5
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死 |cRXP_ENEMY_Burning Blade Cultists|r。掠夺他们以获得 |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #xprate <1.5 << !Hunter
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>前往 |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #xprate <1.5 << !Hunter
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛高兹|r
    .turnin 828 >>交任务: |cRXP_FRIENDLY_玛高兹|r
    .accept 827 >>接任务: |cRXP_LOOT_骷髅石|r
    .target Margoz
    .isQuestTurnedIn 806
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >>前往尘风洞
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    #completewith next
    >>杀死骷髅岩洞穴内的 |cRXP_ENEMY_Burning Blade Orcs|r。从他们身上搜刮物品，获得 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .train 401768,1
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>杀死 |cRXP_ENEMY_Burning Blade Orcs|r。掠夺他们的 |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>杀死骷髅岩洞穴内的 |cRXP_ENEMY_Burning Blade Orcs|r。从他们身上搜刮物品，获得 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate <1.5
    #season 2
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell 注释：MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
    .itemcount 203752,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,55.12,10.10,60 >>前往骷髅岩
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    >>杀死 |cRXP_ENEMY_Venomtail Scorpids|r。掠夺它们的 |cRXP_LOOT_Poison Sas|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>杀死 |cRXP_ENEMY_Burning Blade Orcs|r。掠夺他们的 |cRXP_LOOT_Collars|r 和 |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>杀死 |cRXP_ENEMY_Gazz'uz|r。搜刮他的 |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_使用 |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r] 开始任务|r
    >>|cRXP_WARN_使用你的|r |T134712:0|t[超粘胶水] |cRXP_WARN_对|r |cRXP_ENEMY_Voidwalker|r |cRXP_WARN_避免被击中，并|r |T134829:0|t[治疗药水] |cRXP_WARN_恢复健康。使用 LoS（视线）来避免|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_他的暗影箭|r
    >>|cRXP_WARN_你可以跑到洞穴内的水体来躲避|r |cRXP_ENEMY_Voidwalker|r |cRXP_WARN_杀死后|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_小心，因为他非常难对付。如果需要，你可以跳过这个任务|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cRXP_LOOT_燃影之眼|r
    .use 4903
	.unitscan Gazz'uz
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>杀死 |cRXP_ENEMY_Burning Blade Orcs|r。掠夺他们的 |cRXP_LOOT_Collars|r 和 |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_跳过|r |cRXP_LOOT_中尉徽章|r |cRXP_WARN_如果你运气不好掉落|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Ravine
    >>杀死 |cRXP_ENEMY_Venomtail Scorpids|r。掠夺它们的 |cRXP_LOOT_Poison Sas|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << !Hunter
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛高兹|r
    .turnin 827 >>交任务: |cRXP_FRIENDLY_骷髅石|r
    .accept 829 >>接任务: |cRXP_LOOT_尼尔鲁·火刃|r
    .target Margoz
    .isQuestTurnedIn 806
step
    #xprate <1.5
    #label Ravine
    #completewith next
    .subzone 370 >>下降到 Drygulch Ravine
step
    #xprate <1.5
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>杀死 |cRXP_ENEMY_尘风野蛮人s|r 和 |cRXP_ENEMY_尘风风暴女巫es|r
    .complete 835,1 --尘风野蛮人 (12)
    .mob +尘风野蛮人
    .complete 835,2 --尘风风暴女巫 (8)
    .mob +尘风风暴女巫
step
    #xprate <1.5
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 813
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>穿过洞穴前往 |cRXP_FRIENDLY_Rezlak|r
step
    #xprate <1.5
    #label SecuringLinesTurnIn
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务: |cRXP_FRIENDLY_保卫商路|r
    .target Rezlak
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,42.64,20.45,60,0
    .goto Durotar,40.43,19.72,60,0
    .goto Durotar,40.59,16.41,60,0
    .goto Durotar,38.79,17.00,60,0
    .goto Durotar,38.73,22.04
    >>杀死 |cRXP_ENEMY_Venomtail Scorpids|r。掠夺它们的 |cRXP_LOOT_Poison Sas|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << Warrior/Shaman/Hunter
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    #xprate <1.5 << Shaman/Warrior
    .goto Orgrimmar,47.21,70.27,15,0
    .goto Orgrimmar,47.55,68.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Urtharo|r交谈
    .vendor >>供应商和维修
    .target Urtharo
step << Shaman/Warrior
    #xprate <1.5
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_LOOT_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
step << Shaman/Warrior
    #xprate <1.5
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_LOOT_返回十字路口|r
    .target Doras
step << Shaman
    #xprate <1.5
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8050 >>训练你的职业法术
    .target Kardris Dreamseeker
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_交谈。从他处购买|r |T135419:0|t[锋利飞斧] |cRXP_BUY_|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >>出售垃圾
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith ZeptoUC1
    +当你达到 11 级时装备 |T135421:0|t[锋利飞斧]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5654 >>交任务: |cRXP_FRIENDLY_虚弱妖术|r
    .trainer >>训练你的职业法术
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5652 >>交任务: |cRXP_FRIENDLY_虚弱妖术|r
    .trainer >>训练你的职业法术
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮菲瑞多|r
    .train 122 >>训练你的职业法术
    .target Pephredo
step << Warrior
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Warrior
    #xprate <1.5
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6546 >>训练你的职业法术
    .target Grezz Ragefist
step << !Warrior !Shaman !Hunter
    #label Admiralorders1
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
	.accept 1963 >>接任务: |cRXP_LOOT_碎手氏族|r << Orc Rogue/Troll Rogue
    .target Therzok
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Kor'ghan交谈|r
    .turnin 813 >>交任务: |cRXP_FRIENDLY_寻找解毒剂|r
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
    .train 1120 >>训练你的职业法术
    .target Mirket
step
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 >>交任务: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 832 >>交任务: |cRXP_FRIENDLY_燃影之眼|r
    .accept 809 >>接任务: |cRXP_LOOT_雅克塞罗斯|r
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #xprate <1.5 << !Hunter
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 >>交任务: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 809 >>接任务: |cRXP_LOOT_雅克塞罗斯|r
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>掠夺 |cRXP_PICK_Dusty Chest|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_它位于 The Drag 的上层|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_精准符文|r] |cRXP_WARN_进行训练|r |T135610:0|t[双眼之间]
    .use 204174
    .itemcount 204174,1
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Durotar,47.05,17.58
    .deathskip >>在 |cRXP_FRIENDLY_Spirit Healer|r 处死亡并重生
step << !Warrior !Shaman !Hunter
    #hardcore
    #completewith ZeptoUC1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >>在 |cRXP_FRIENDLY_Spirit Healer|r 处死亡并重生
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .turnin 812 >>交任务: |cRXP_FRIENDLY_救命如救火|r
    .target Rhinag
step << Warrior
    #xprate <1.5 << !Hunter
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>跳进雷霆岭并杀死 |cRXP_ENEMY_Lightning Hides|r。掠夺他们的 |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,34.80,32.84,50,0 << !Warrior
    .goto Durotar,34.81,37.02,50,0 << !Warrior
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>沿河向南行驶至远方哨所
    >>杀死路上的 |cRXP_ENEMY_Dreadmaw Crocolisks|r。掠夺它们以获得 |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_如果任务没有掉落，请跳过并放弃该任务|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莎|r
    .turnin 816 >>交任务: |cRXP_FRIENDLY_丢失的孩子|r
    .target Misha Tor'kren
    .isQuestComplete 816
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务: |cRXP_FRIENDLY_雅克塞罗斯|r
    .accept 924 >>接任务: |cRXP_LOOT_恶魔之种|r
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_掠夺|r |T134095:0|t[有瑕疵的能量石] |cRXP_WARN_next to|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_。此物品有 30 分钟的计时器，所以一定要快点|r
    .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
    .isOnQuest 924
step << Warrior
    #xprate <1.5 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
    .target Uzzek
step << Mage
    #xprate >1.49
    #season 2
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01
    >>杀死骷髅岩洞穴内的 |cRXP_ENEMY_Burning Blade Orcs|r。从他们身上搜刮物品，获得 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate >1.49
    #season 2
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用该物品。
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell 注释：MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
    .itemcount 203752,1
step << Rogue/Mage/Priest/Warlock
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>登上齐柏林飞艇塔
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    >>等待时召唤水 << Mage
    .zoneskip Tirisfal Glades
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate <1.99
#name 10-12 提瑞斯法
#version 11
#group RestedXP 部落 1-22
#defaultfor Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 11-14 银松森林 << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >>获取幽暗城飞行路径
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与战争区的|r |cRXP_FRIENDLY_Archibald|r 交谈
    .train 201 >>训练 1h 剑
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 Rogue's Quarter 的|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_交谈。从他那里购买|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    .collect 851,1,398,1 --Collect Cutlass (1)
    .money <0.2023
    .skill Swords,<1,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Orc Rogue/Troll Rogue
    #completewith KillDevlin
    +装备 |T135346:0|t[弯刀]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
	.collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六|r|T134339:0|t[变色的狼灵之心]|cRXP_BUY_|r
	.target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_在魔法区执行登出跳过操作，将你的角色定位在最低楼梯的最高处，直到看起来像是飘浮起来，然后登出并重新登录|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_点击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常跑出幽暗城|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >>到布里尔的交通
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r, Gretchen
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_在二楼|r
    .accept 354 >>接任务: |cRXP_LOOT_阿加曼德家族|r
    .accept 362 >>接任务: |cRXP_LOOT_闹鬼的磨坊|r
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>接任务: |cRXP_LOOT_死亡之寒|r
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 >>接任务: |cRXP_LOOT_迪林格尔|r
    .target Austil de Mon << Warrior
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃格隆·卡加尔|r
    .accept 1478 >>接任务: |cRXP_LOOT_哈加尔的召唤|r
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .accept 1885 >>接任务: |cRXP_LOOT_米奈特·卡加德|r
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >>接任务: |cRXP_LOOT_安娜斯塔西娅|r
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_购买|r |T134532:0|t[红斑蘑菇] |cRXP_BUY_来自她|r <<Warrior/Rogue
    >>|cRXP_BUY_购买|r |T132815:0|t[冰牛奶] |cRXP_BUY_和|r |T134532:0|t[红斑蘑菇] |cRXP_BUY_从她那里|r << Warlock
    .vendor >>供应商垃圾
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温特斯夫人|r
    >>|cRXP_BUY_购买一个或多个|r |T133634:0|t[小棕色袋] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #season 0,1
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .accept 427 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #season 2
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .accept 427 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .maxlevel 10 << !Warlock !Rogue
    .maxlevel 11 << Warlock
    .train 400095,1 << Rogue
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .accept 427 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .maxlevel 10
step
    #season 0,1
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>接任务: |cRXP_LOOT_悬赏：蛆眼|r
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    #season 2
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>接任务: |cRXP_LOOT_悬赏：蛆眼|r
    .maxlevel 11 << !Warrior !Warlock !Rogue
    .maxlevel 12 << Warlock/Rogue
    .maxlevel 13 << Warrior
    .train 400095,1 << Rogue
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 358 >>接任务: |cRXP_LOOT_盗墓贼|r
    .target Magistrate Sevren
    .maxlevel 10
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 445 >>接任务: |cRXP_LOOT_给银松森林送信|r
    .accept 367 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaanstep
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 445 >>接任务: |cRXP_LOOT_给银松森林送信|r
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .accept 404 >>接任务: |cRXP_LOOT_腐烂的爪子|r
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 >>交任务: |cRXP_FRIENDLY_迪林格尔|r
    .accept 1819 >>接任务: |cRXP_LOOT_切割者奥拉格|r
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地面上的|r |cRXP_WARN_陵墓触发器|r |cRXP_WARN_。这将召唤|r |cRXP_ENEMY_Ulag。|r |cRXP_WARN_杀死他|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 >>交任务: |cRXP_FRIENDLY_切割者奥拉格|r
    .accept 1820 >>接任务: |cRXP_LOOT_库勒曼|r
    .target Deathguard Dillinger
step
    #optional
    #completewith Pumpkins
    >>杀死你看到的任何 |cRXP_ENEMY_Darkhound|r。掠夺他们的 |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_您将收到|r |T133849:0|t[沉睡之沙] |cRXP_WARN_来自此任务的后续内容|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
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
    >>杀死 |cRXP_ENEMY_Rotting Dead|r 和 |cRXP_ENEMY_Ravaged Corpses|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>杀死你看到的任何 |cRXP_ENEMY_Duskbat|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西米尔|r
    .accept 365 >>接任务: |cRXP_LOOT_悲伤之地|r
    .target Deathguard Simmer
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西米尔|r
    .accept 365 >>接任务: |cRXP_LOOT_悲伤之地|r
    .target Deathguard Simmer
    .maxlevel 10
step << Rogue
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Tirisfal 农民|r 和 |cRXP_ENEMY_Tirisfal 农场工人|r，或使用 |T133644:0|t[偷窃]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_左上角地图碎片|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Mage
    #season 2
    #completewith next
    .goto Tirisfal Glades,36.72,50.94,0
    .goto Tirisfal Glades,34.78,51.24,0
    >>对 |cRXP_ENEMY_Odd Melons|r 施放 |T136071:0|t[变形术]
    >>拾取地面上的 |T134332:0|t|cRXP_LOOT_[药剂师笔记]|r
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>掠夺在田野中发现的 |cRXP_LOOT_Pumpkins|r。
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step << Rogue
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>杀死 |cRXP_ENEMY_Tirisfal 农民|r 和 |cRXP_ENEMY_Tirisfal 农场工人|r，或使用 |T133644:0|t[偷窃]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_左上角地图碎片|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step << Rogue
    #season 2
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Scarlet Warriors|r 或使用 |T133644:0|t[Pick Pocket]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece|r]
    >>|cRXP_WARN_提瑞斯法的任何一个血色人形生物都可以掉落地图碎片|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .train 400095,1
step
    #optional
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r。
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step << Rogue
    #season 2
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>杀死 |cRXP_ENEMY_Scarlet Warriors|r 或使用 |T133644:0|t[Pick Pocket]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece|r]
    >>|cRXP_WARN_提瑞斯法的任何一个血色人形生物都可以掉落地图碎片|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step << Mage
    #season 2
    #optional
    #completewith next
    >>杀死你看到的任何 |cRXP_ENEMY_Duskbat|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Darkhounds1
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51
    >>杀死你看到的任何 |cRXP_ENEMY_Darkhound|r。掠夺他们的 |cRXP_LOOT_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 427
step
    #optional
    #hardcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >>返回布里尔
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 404 >>交任务: |cRXP_FRIENDLY_腐烂的爪子|r
    .accept 426 >>接任务: |cRXP_LOOT_磨坊告急|r
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .accept 426 >>接任务: |cRXP_LOOT_磨坊告急|r
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .isQuestComplete 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 368 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 365 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .accept 407 >>接任务: |cRXP_LOOT_悲伤之地|r
    .isQuestComplete 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 407 >>接任务: |cRXP_LOOT_悲伤之地|r
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 427 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 370 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .accept 370 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    #label ProofofDemiseTurnin
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .accept 374 >>接任务: |cRXP_LOOT_死亡证明|r
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路径
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六|r|T134339:0|t[变色的狼灵之心]|cRXP_BUY_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1478 >>交任务: |cRXP_FRIENDLY_哈加尔的召唤|r
    .accept 1473 >>接任务: |cRXP_LOOT_虚空中的生物|r
step << Mage
    #optional
    .abandon 1883 >>放弃与 Un'thuwa 交谈，否则你将无法接受接下来的任务
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1881 >>交任务: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .accept 1882 >>接任务: |cRXP_LOOT_巴尼尔农场|r
    .target Anastasia Hartwell
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六|r|T134339:0|t[变色的狼灵之心]|cRXP_BUY_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5660 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
    .accept 5658 >>接任务: |cRXP_WARN_虚弱之触|r
    .turnin 5658 >>交任务: |cRXP_FRIENDLY_虚弱之触|r
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >>获取幽暗城飞行路径
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 >>交任务: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1886 >>接任务: |cRXP_LOOT_亡灵哨兵|r
    .target Mennet Carkad
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与战争区的|r |cRXP_FRIENDLY_Archibald|r 交谈
    .train 201 >>训练 1h 剑
    .target Archibald
    .money <0.3023
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 Rogue's Quarter 的|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_交谈。从他那里购买|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    .collect 851,1,398,1 --Collect Cutlass (1)
    .money <0.2023
    .skill Swords,<1,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #completewith KillDevlin
    +装备 |T135346:0|t[弯刀]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六|r|T134339:0|t[变色的狼灵之心]|cRXP_BUY_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>收集 |cRXP_LOOT_Scarlet Insignia 戒指s|r。你不必现在完成此步骤
    .complete 374,1 --Scarlet Insignia 戒指 (10)
    .isOnQuest 374
step << Rogue
    #season 2
    #optional
    #completewith ScarletCrusade1
    >>对 |cRXP_ENEMY_Captain Perrine|r 使用 |T133644:0|t[Pick Pocket] 以获得 |T133385:0|t[|cRXP_LOOT_Scarlet Lieutenant Signet 戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet 戒指 (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>掠夺 |cRXP_PICK_Perrine 的宝箱|r 以获得 |T133733:0|t[Egalin 的魔法书]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #optional
    #label ScarletCrusade1
#loop
	.line Tirisfal Glades,50.07,68.87,50.23,66.94,51.16,65.73,51.75,66.04,52.93,67.62,52.72,69.33,51.96,69.57,51.03,69.55
	.goto Tirisfal Glades,50.07,68.87,25,0
	.goto Tirisfal Glades,50.23,66.94,25,0
	.goto Tirisfal Glades,51.16,65.73,25,0
	.goto Tirisfal Glades,51.75,66.04,25,0
	.goto Tirisfal Glades,52.93,67.62,25,0
	.goto Tirisfal Glades,52.72,69.33,25,0
	.goto Tirisfal Glades,51.96,69.57,25,0
	.goto Tirisfal Glades,51.03,69.55,25,0
    >>杀死 |cRXP_ENEMY_Captain Perrine|r、|cRXP_ENEMY_Zealots|r 和 |cRXP_ENEMY_Missionaries|r。
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
    .isOnQuest 370
step << Rogue
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>对 |cRXP_ENEMY_Captain Perrine|r 使用 |T133644:0|t[Pick Pocket] 以获得 |T133385:0|t[|cRXP_LOOT_Scarlet Lieutenant Signet 戒指|r]
    .collect 208085,1 --Scarlet Lieutenant Signet 戒指 (1)
    .mob Captain Perrine
    .train 400094,1
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>搜刮地面上的 |cRXP_PICK_Perrine 的宝箱|r，获得 |T133733:0|t[Egalin 的魔法书]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1473 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
    .accept 1471 >>接任务: |cRXP_LOOT_誓缚|r
    .target Carendin Halgar
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>在召唤圈使用 |T134416:0|t[召唤符文]
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>杀死|cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1471 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Carendin Halgar
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_通过将你的角色定位在最低楼梯的最高处，直到看起来像是漂浮起来，然后注销并重新登录，来执行注销跳过|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_点击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常跑出幽暗城|r
    .zoneskip Undercity,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>杀死你看到的任何 |cRXP_ENEMY_Duskbat|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >>向西北行驶至阿加曼德磨坊
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_瑟曼的信|r] |cRXP_WARN_可能从这些怪物身上掉落。如果确实如此，请接受任务|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>接任务: |cRXP_LOOT_未寄出的信件|r
    .use 2839
step
    #optional
    #sticky
    #label MillsOverun
    >>杀死 |cRXP_ENEMY_Soldiers|r 和 |cRXP_ENEMY_Bonecasters|r。掠夺他们的 |cRXP_LOOT_Ribs|r 和 |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
    .mob 破烂士兵
    .mob 暗眼骨法师
    .mob 破裂头骨的士兵
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>杀死 |cRXP_ENEMY_Devlin|r。掠夺他的 |cRXP_LOOT_Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>杀死 |cRXP_ENEMY_Nissa|r。掠夺她的物品 |cRXP_LOOT_Remains|r。她可以在建筑物内
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
    >>杀死 |cRXP_ENEMY_Thurman|r 和 |cRXP_ENEMY_Gregor|r。掠夺他们的 |cRXP_LOOT_Remains|r。他们可以四处巡逻
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
    .goto Tirisfal Glades,57.77,31.69,50 >>下山。
    >>|cRXP_WARN_小心。不要受到太多坠落伤害。为了安全，请遵循路标|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>杀死 |cRXP_ENEMY_Gnolls|r 和 |cRXP_ENEMY_Mongrels|r。掠夺他们的 |cRXP_LOOT_Ichor|r
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
    >>杀死 |cRXP_ENEMY_Maggot Eye|r。抢夺他的 |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step << Rogue
    #season 2
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Murlocs|r 或使用 |T133644:0|t[Pick Pocket]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .train 400095,1
step
    #optional
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>杀死 |cRXP_ENEMY_Murlocs|r。掠夺他们的 |cRXP_LOOT_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step << Rogue
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>杀死 |cRXP_ENEMY_Murlocs|r 或使用 |T133644:0|t[Pick Pocket]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #optional
    #completewith RotHideGnolls
    >>杀死你看到的任何 |cRXP_ENEMY_Duskbat|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #season 2
    #optional
    #completewith RotHideGnolls
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>对 |cRXP_ENEMY_Odd Melons|r 施放 |T136071:0|t[变形术]
    >>拾取地面上的 |T134332:0|t|cRXP_LOOT_[药剂师笔记]|r
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Rogue
    #season 2
    #optional
    #completewith RotHideGnolls
    >>杀死 |cRXP_ENEMY_Rot Hide Gnolls|r 或使用 |T133644:0|t[Pick Pocket]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .train 400095,1
step
    #optional
    #label RotHideGnolls
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>杀死 |cRXP_ENEMY_Mongrels|r 和 |cRXP_ENEMY_Graverobbers|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step << Rogue
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>杀死 |cRXP_ENEMY_Rot Hide Gnolls|r 或使用 |T133644:0|t[Pick Pocket]。掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step << Rogue
    #season 2
    .use 208036 >>使用 |T134327:0|t[|cRXP_LOOT_Map Pieces|r] 创建 |T134269:0|t[|cRXP_LOOT_Tirisfal Treasure Map|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #optional
    #softcore
    #completewith MillsTurnin
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
    #optional
    #hardcore
    #completewith MillsTurnin
    .subzone 159 >>到布里尔的交通
step << Rogue
    #season 2
    .goto Tirisfal Glades,52.89,54.06
    .use 208034 >>使用桥下的|T134269:0|t[|cRXP_LOOT_Tirisfal Treasure Map|r]
    >>拾取生成的 |cRXP_PICK_Buried Treasure|r 宝箱，获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_快速绘制符文|r] |cRXP_WARN_进行训练|r |T134536:0|t[快速绘制]
    .use 203991
    .itemcount 203991,1
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 426 >>交任务: |cRXP_FRIENDLY_磨坊告急|r
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 368 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 369 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .turnin 370 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .accept 371 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestComplete 370
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>使用 |T133385:0|t[|cRXP_LOOT_猩红中尉印章戒指|r] 来制作 |T134328:0|t[|cRXP_LOOT_伪造的猩红备忘录|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加米尔·诺瑞|r, Rune of Mutilation
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r] |cRXP_WARN_进行训练|r |T132304:0|t[毁伤]
    .use 203990
    .itemcount 203990,1
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .accept 371 >>接任务: |cRXP_LOOT_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 >>交任务: |cRXP_FRIENDLY_悬赏：蛆眼|r
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 358 >>交任务: |cRXP_FRIENDLY_盗墓贼|r
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 359 >>接任务: |cRXP_LOOT_亡灵卫兵的职责|r
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_购买 a|r |T132891:0|t[粗线] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,61.58,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊维特·法席恩|r
    .turnin 361 >>交任务: |cRXP_FRIENDLY_未寄出的信件|r
    .target Yvette Farthing
    .isOnQuest 361
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .accept 355 >>接任务: |cRXP_LOOT_与塞弗伦交谈|r
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 354 >>交任务: |cRXP_FRIENDLY_阿加曼德家族|r
    .turnin 362 >>交任务: |cRXP_FRIENDLY_闹鬼的磨坊|r
    .accept 355 >>接任务: |cRXP_LOOT_与塞弗伦交谈|r
    .target Coleman Farthing
    .isQuestComplete 362
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .accept 355 >>接任务: |cRXP_LOOT_与塞弗伦交谈|r
    .target Coleman Farthing
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1820 >>交任务: |cRXP_FRIENDLY_库勒曼|r << Warrior
    .accept 1821 >>接任务: |cRXP_WARN_阿加曼德家传武器|r << Warrior
    .accept 355 >>接任务: |cRXP_LOOT_与塞弗伦交谈|r
    .target Coleman Farthing
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r on the second floor of the inn
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588 >>列车 |T135926:0|t[内心之火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145 >>训练 |T135812:0|t[火球等级 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >>列车 |T132223:0|t[超强]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >>列车 |T132219:0|t[踢]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >>训练 |T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Mage/Priest/Shaman
    >>|cRXP_BUY_购买|r |T134532:0|t[红斑蘑菇] |cRXP_BUY_来自她|r <<Warrior/Rogue
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰牛奶] |cRXP_BUY_和|r |T134532:0|t[红斑蘑菇] |cRXP_BUY_|r << Warlock/Hunter
    .vendor >>供应商垃圾
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 359 >>交任务: |cRXP_FRIENDLY_亡灵卫兵的职责|r
    .accept 360 >>接任务: |cRXP_LOOT_向塞弗伦回报|r
    .accept 356 >>接任务: |cRXP_LOOT_巡查后方|r
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .accept 356 >>接任务: |cRXP_LOOT_巡查后方|r
    .target Deathguard Linnea
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    #completewith HorrorsandSpirits
    >>杀死你看到的任何 |cRXP_ENEMY_Duskbat|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Bleeding Horrors|r 和 |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>对 |cRXP_ENEMY_Odd Melons|r 施放 |T136071:0|t[变形术]
    >>拾取地面上的 |T134332:0|t|cRXP_LOOT_[药剂师笔记]|r
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>掠夺地面上的任意植物以获得 |cRXP_PICK_Balnir Snapdragon|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
#loop
	.line Tirisfal Glades,74.31,60.98,74.45,59.64,75.08,58.56,76.45,58.67,77.41,58.66,78.55,60.43,77.45,61.46,76.79,62.60,74.99,61.98,74.31,60.98
	.goto Tirisfal Glades,74.31,60.98,25,0
	.goto Tirisfal Glades,74.45,59.64,25,0
	.goto Tirisfal Glades,75.08,58.56,25,0
	.goto Tirisfal Glades,76.45,58.67,25,0
	.goto Tirisfal Glades,77.41,58.66,25,0
	.goto Tirisfal Glades,78.55,60.43,25,0
	.goto Tirisfal Glades,77.45,61.46,25,0
	.goto Tirisfal Glades,76.79,62.60,25,0
	.goto Tirisfal Glades,74.99,61.98,25,0
	.goto Tirisfal Glades,74.31,60.98,25,0
    >>杀死 |cRXP_ENEMY_Bleeding Horrors|r 和 |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>对 |cRXP_ENEMY_Odd Melons|r 施放 |T136071:0|t[变形术]
    >>拾取地面上的 |T134332:0|t|cRXP_LOOT_[药剂师笔记]|r
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>使用 |T134332:0|t|cRXP_LOOT_[药剂师笔记]|r 创建 |T134332:0|t|cRXP_LOOT_[法术笔记：启蒙]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_使用|r |T134332:0|t|cRXP_LOOT_[法术说明：启蒙]|r |cRXP_WARN_学习|r |T133815:0|t[雕刻宝箱 - 启蒙]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Priest
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_收集 3 叠 |r |T132889:0|t[亚麻布] |cRXP_WARN_作为你的次级魔杖。这是在进入银松森林之前获得足够多亚麻布的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>收集 |cRXP_LOOT_猩红徽章戒指|r
    .complete 374,1 --Scarlet Insignia 戒指 (10)
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
    >>杀死 |cRXP_ENEMY_Captain Vachon|r 和 |cRXP_ENEMY_Scarlet Friars|r
    >>|cRXP_WARN_小心！|r |cRXP_ENEMY_Scarlet Friars|r |cRXP_WARN_可以施放|r |T135929:0|t[次级治疗术]
    .complete 371,1 --Captain Vachon (1)
    .complete 371,2 --Scarlet Friar (5)
    .mob Captain Vachon
    .mob Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label Scarlet戒指s
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>收集 |cRXP_LOOT_猩红徽章戒指|r
    .complete 374,1 --Scarlet Insignia 戒指 (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>|cRXP_WARN_收集 3 叠 |r |T132889:0|t[亚麻布] |cRXP_WARN_作为你的次级魔杖。这是在进入银松森林之前获得足够多亚麻布的最后机会|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>杀死你看到的任何 |cRXP_ENEMY_Duskbat|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>杀死 |cRXP_ENEMY_Vicious Night Web Spiders|r。掠夺它们的 |cRXP_LOOT_Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >>返回林尼亚
step
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Duskbats|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_如果你的 rng 不好，你可以跳过这个任务|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 356 >>交任务: |cRXP_FRIENDLY_巡查后方|r
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_购买 a|r |T132891:0|t[粗线] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵伯吉斯|r
    .turnin 374 >>交任务: |cRXP_FRIENDLY_死亡证明|r
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 371 >>交任务: |cRXP_FRIENDLY_与血色十字军的战争|r
    .target Executor Zygand
    .isQuestComplete 371
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 360 >>交任务: |cRXP_FRIENDLY_向塞弗伦回报|r
    .target Magistrate Sevren
    .isQuestTurnedIn 359
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 355 >>交任务: |cRXP_FRIENDLY_与塞弗伦交谈|r
    .accept 408 >>接任务: |cRXP_WARN_家族墓穴|r
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step
    #optional
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 369 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .accept 492 >>接任务: |cRXP_LOOT_新的瘟疫|r
    .accept 445 >>接任务: |cRXP_LOOT_给银松森林送信|r
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师乔汉|r
    .accept 445 >>接任务: |cRXP_LOOT_给银松森林送信|r
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r upstairs
    .turnin 375 >>交任务: |cRXP_FRIENDLY_死亡之寒|r
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>列车 |T135926:0|t[内心之火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >>训练 |T135812:0|t[火球等级 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >>列车 |T132223:0|t[超强]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766,1 >>列车 |T132219:0|t[踢]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >>训练 |T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>前往阿加曼德磨坊的墓穴
    .isOnQuest 1821
step << Warrior
    #completewith CaptainDargol
    >>拾取地面上的 |cRXP_PICK_Agamand 武器架|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #completewith next
    >>杀死 |cRXP_ENEMY_Wailing Ancestors|r 和 |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_小心！此墓穴中的怪物会动态重生！|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>杀死 |cRXP_ENEMY_Captain Dargol|r。搜刮他的 |cRXP_LOOT_Skull|r。他在墓穴底部
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step << Warrior
    #completewith next
    >>拾取地面上的 |cRXP_PICK_Agamand 武器架|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>杀死 |cRXP_ENEMY_Wailing Ancestors|r 和 |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_小心！此墓穴中的怪物会动态重生！|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
step << Warrior
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87
    >>拾取地面上的 |cRXP_PICK_Agamand 武器架|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << skip --Warrior
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_跳到其中一个武器架上。通过登出并重新登录来跳过登出|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >>|cRXP_WARN_点击此处查看示例|r
    .isQuestComplete 408
step << Warrior
    #softcore
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << Warrior
    #hardcore
    #completewith next
    .subzone 159 >>到布里尔的交通
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 408 >>交任务: |cRXP_FRIENDLY_家族墓穴|r
    .target Magistrate Sevren
    .isQuestComplete 408
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1821 >>交任务: |cRXP_FRIENDLY_阿加曼德家传武器|r
    .target Coleman Farthing
    .isQuestComplete 1821
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1822 >>交任务: |cRXP_FRIENDLY_祖传武器|r
    .target Coleman Farthing
    .isQuestTurnedIn 1821
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的血色狂热者|r
    .turnin 407 >>交任务: |cRXP_FRIENDLY_悲伤之地|r
    .target 捕获血色狂热者
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的巡山人|r
    .turnin 492 >>交任务: |cRXP_FRIENDLY_新的瘟疫|r
    .target 被俘的登山者
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>列车 |T135926:0|t[内心之火]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 6074 >>训练你的职业法术
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >>训练 |T135812:0|t[火球等级 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 2137 >>训练你的职业法术
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >>列车 |T132223:0|t[超强]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 1160 >>训练你的职业法术
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766,1 >>列车 |T132219:0|t[踢]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1758 >>训练你的职业法术
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >>训练 |T136168:0|t[健康漏斗]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 6222 >>训练你的职业法术
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
    .turnin 1882 >>交任务: |cRXP_FRIENDLY_巴尼尔农场|r
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
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
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .zoneskip Undercity
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路径
    >>|cRXP_WARN_如果您已经选择了飞行路径，请跳过此步骤！|r
    .target Michael Garrett
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 >>交任务: |cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1886 >>接任务: |cRXP_LOOT_亡灵哨兵|r
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Archibald|r 在战争区
    .train 201 >>训练 1h 剑
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与 Rogue's Quarter 的|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_交谈。从他那里购买|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
    .money <0.2023
step << Rogue
    #completewith Entersilverpine
    +装备 |T135346:0|t[弯刀]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
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
    .goto Undercity,65.53,43.62,15 >>乘电梯前往幽暗城
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_交谈。从他那里购买|r |T135154:0|t[Quarter Staff] |cRXP_BUY_|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #completewith Entersilverpine
    +装备 |T135154:0|t[长棍]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
    .collect 3164,6,429,1 >>|cRXP_BUY_从拍卖行购买六|r|T134339:0|t[变色的狼灵之心]|cRXP_BUY_|r
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉文尼亚·克洛文|r
    .train 7411 >>火车 |T136244:0|t[附魔]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.77,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔瑟夫·格里高利|r
    .train 3908 >>训练 |T136249:0|t[裁缝]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_将你所有的|r |T132889:0|t[亚麻布] |cRXP_WARN_变成|r |T132890:0|t[亚麻布卷]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔瑟夫·格里高利|r
    .train 7623 >>火车 |T132662:0|t[棕色亚麻长袍]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_从她那里购买|r |T132891:0|t[粗线] |cRXP_BUY_|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_创造尽可能多的|r |T132662:0|t[棕色亚麻长袍] |cRXP_WARN_|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_交谈。从他那里购买|r |T133942:0|t[铜棒] |cRXP_BUY_和|r |T135435:0|t[简易木材] |cRXP_BUY_|r
    >>|cRXP_WARN_分解你制作的所有|r |T132662:0|t[棕色亚麻长袍] |cRXP_WARN_并创造|r |T135225:0|t[符文铜棒]
    >>|cRXP_WARN_如果你没有得到|r |T132867:0|t[次级魔法精华] |cRXP_WARN_那么从|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_那里购买一个（如果有的话）。否则稍后完成此步骤|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛考布·维恩|r
    .train 14293 >>火车 |T135139:0|t[小型魔杖]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Create a|r |T135139:0|t[小型魔杖]
    >>|cRXP_WARN_如果你没有得到|r |T132867:0|t[次级魔法精华] |cRXP_WARN_那么从|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_那里购买一个（如果有的话）。否则稍后完成此步骤|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #completewith Entersilverpine
    +装备 |T135139:0|t[小型魔杖]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <1.5
    #optional
    .abandon 806 >>抛弃黑暗风暴
    .isOnQuest 806
step
    #optional
    .abandon 408 >>放弃家族墓穴
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >>抛弃阿加曼德传家宝
    .isOnQuest 1821
step 
    #optional
    #xprate >1.49
    .abandon 830 >>放弃上将的命令
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
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .zoneskip Silverpine Forest
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#xprate >1.99
<< Horde
#name 1-7 杜隆塔尔
#version 1
#group RestedXP 部落 1-22
#defaultfor Troll/Orc
#next 7-13 杜隆塔尔


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_您已选择一本针对兽人和巨魔的指南。您应该选择与您开始的相同的起始区|r
step << !Troll Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在你的种族起始区之外开始游戏，因为你将无法在这里获得你的第一个符文 (|T133816:0|t[雕刻手套 - 冰枪])
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔图克|r
    .accept 4641 >>接任务: |cRXP_LOOT_起点|r
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 35 铜的供应商物品（包括你的盔甲）|r << Warlock
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 10 铜的供应商物品（包括你的盔甲）|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .accept 1485 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 4641 >>交任务: |cRXP_FRIENDLY_起点|r
    .accept 788 >>接任务: |cRXP_LOOT_小试身手|r
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r << Shaman
    .train 6673 >>训练 |T132333:0|t[战斗呐喊] << Warrior
    .train 8017 >>训练 |T136086:0|t[石化武器] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .accept 77586 >>接受偷来的电力
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在前往 Burning Blade Coven 的途中杀死 |cRXP_ENEMY_Mottled Boars|r
    >>|cRXP_WARN_尝试先达到 2 级再到达那里|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >>前往火刃女巫会
    .isOnQuest 1485
step << Warlock
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    >>杀死 |cRXP_ENEMY_Vile Familiars|r。掠夺它们以获得 |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>杀死 |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .accept 790 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r << !Hunter !Warrior
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r 并获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r 并获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .collect 206169,1,790,1 << Hunter --Rune of Explosive Shot (1)
    .collect 204809,1,790,1 << Warrior --Rune of Furious Thunder(1)
    .mob Sarkoth
step << Warrior
    #season 2
    .train 403476 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>使用 |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r]
    .use 206169
    .itemcount 206169,1
step
    #season 0
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .turnin 790 >>交任务: |cRXP_FRIENDLY_萨科斯|r
    .accept 804 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,25,0
	.goto Durotar,41.92,64.74,25,0
	.goto Durotar,42.66,64.92,25,0
	.goto Durotar,43.31,65.02,25,0
	.goto Durotar,43.90,65.96,25,0
	.goto Durotar,44.54,65.96,25,0
	.goto Durotar,45.16,65.77,25,0
	.goto Durotar,45.72,65.93,25,0
	.goto Durotar,45.72,65.04,25,0
	.goto Durotar,45.21,63.95,25,0
	.goto Durotar,45.83,63.01,25,0
	.goto Durotar,45.81,62.17,25,0
	.goto Durotar,45.78,61.14,25,0
	.goto Durotar,45.15,60.20,25,0
	.goto Durotar,44.50,59.45,25,0
	.goto Durotar,43.86,60.43,25,0
	.goto Durotar,43.07,60.24,25,0
	.goto Durotar,42.58,60.09,25,0
	.goto Durotar,42.02,61.19,25,0
	.goto Durotar,42.02,62.15,25,0
	.goto Durotar,42.00,62.92,25,0
	.goto Durotar,41.99,64.03,25,0
	.goto Durotar,41.30,65.03,25,0
    >>杀死 |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银的供应商物品|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你拥有价值 2 银币的供应商物品|r << Warrior
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银 75 铜的供应商物品|r << Warlock
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银 10 铜的供应商物品|r << Hunter
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 1 银的供应商物品|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .turnin 1485 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 1499 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 1499 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_LOOT_火刃奖章|r
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 788,2 >>交任务: |cRXP_FRIENDLY_小试身手|r << Shaman
    .turnin 788 >>交任务: |cRXP_FRIENDLY_小试身手|r << !Shaman
    .accept 789 >>接任务: |cRXP_LOOT_工蝎的尾巴|r
    .accept 2383 >>接任务: |cRXP_LOOT_简易羊皮纸|r << Orc Warrior
    .accept 3065 >>接任务: |cRXP_LOOT_普通石板|r << Troll Warrior
    .accept 3082 >>接任务: |cRXP_LOOT_风蚀石板|r << Troll Hunter
    .accept 3083 >>接任务: |cRXP_LOOT_密文石板|r << Troll Rogue
    .accept 3084 >>接任务: |cRXP_LOOT_符文石板|r << Troll Shaman
    .accept 3085 >>接任务: |cRXP_LOOT_神圣石板|r << Troll Priest
    .accept 3086 >>接任务: |cRXP_LOOT_雕文石板|r << Troll Mage
    .accept 3087 >>接任务: |cRXP_LOOT_风蚀羊皮纸|r << Orc Hunter
    .accept 3088 >>接任务: |cRXP_LOOT_密文羊皮纸|r << Orc Rogue
    .accept 3089 >>接任务: |cRXP_LOOT_符文羊皮纸|r << Orc Shaman
    .accept 3090 >>接任务: |cRXP_LOOT_被污染的羊皮纸|r << Orc Warlock
    .turnin 804,1 >>交任务: |cRXP_FRIENDLY_萨科斯|r << Shaman
    .turnin 804 >>交任务: |cRXP_FRIENDLY_萨科斯|r << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前往 |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .accept 77592 >>接受悬崖之上 << Troll Rogue
    .accept 77583 >>接受悬崖之上 << Orc Rogue
    .train 53 >>训练 |T132090:0|t[背刺]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .accept 77592 >>接受悬崖之上 << Troll Rogue
    .accept 77583 >>接受悬崖之上 << Orc Rogue
    .target Rwag
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .train 53 >>训练 |T132090:0|t[背刺]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
    .money >0.01
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .accept 77586 >>接受偷来的电力
    .train 172 >>列车 |T136118:0|t[腐败]
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .train 172 >>列车 |T136118:0|t[腐败]
    .target Nartok
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .accept 4402 >>接任务: |cRXP_LOOT_戈加尔的清凉果|r
    .target Galgar
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25多克纳|r
    >>|cFF0E8312购买|r |T132794:0|t[清爽泉水] |cFF0E8312来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312购买|r |T132382:0|t[粗箭] |cFF0E8312从她那里|r << Hunter
    >>|cRXP_WARN_节省 10 铜用于训练|r |T135932:0|t[奥术智慧] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .accept 77587 >>接受权力的象征 << Troll Shaman
    .accept 77585 >>接受权力的象征 << Orc Shaman
    .train 8042 >>列车 |T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .accept 77587 >>接受权力的象征 << Troll Shaman
    .accept 77585 >>接受权力的象征 << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .accept 77643 >>接受法术研究 << Troll Mage
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .accept 792 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .accept 77590 >>接受崎岖地形 << Troll Hunter
    .accept 77584 >>接受寻找符文 << Orc Hunter
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .accept 77590 >>接受崎岖地形 << Troll Hunter
    .accept 77584 >>接受寻找符文 << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .accept 77590 >>接受崎岖地形 << Troll Hunter
    .accept 77584 >>接受寻找符文 << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .target Jen'sha
step << Warrior
    #xprate >1.49
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.02
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .accept 77588 >>接受健身试验 << Troll
    .accept 77582 >>接受健身试验 << Orc
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .accept 77588 >>接受健身试验 << Troll
    .accept 77582 >>接受健身试验 << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .accept 77588 >>接受健身试验 << Troll
    .accept 77582 >>接受健身试验 << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .accept 77642 >>接受洛阿神的智慧
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克赞·荆条|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .accept 5441 >>接任务: |cRXP_LOOT_懒惰的苦工|r
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>前往森金村的 |cRXP_FRIENDLY_Serpent Loa|r 雕像并输入 /kneel
    .use 205951 >>Talk to |cRXP_FRIENDLY_Serpent Loa|r as he appears, then use |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .complete 77642,1 --学习法术：雕刻手套 - 忏悔
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .turnin 77642 >>交出洛阿神灵的智慧
    .target Ken'jai
step << Rogue/Warrior
    #season 2
    .goto Durotar,43.27,69.51
    >>掠夺 |cRXP_PICK_Hidden Cache|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r] << Rogue
    >>掠夺 |cRXP_PICK_Hidden Cache|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] << Warrior
    >>|cRXP_WARN_绕过 |cRXP_ENEMY_Sarkoth|r 并跳下来到达箱子|r
    .collect 204795,1,77592,1 << Troll Rogue --Rune of Shadowstrike (1)
    .collect 204795,1,77583,1 << Orc Rogue --Rune of Shadowstrike (1)
    .collect 204806,1,77588,1 << Troll Warrior--Rune of Victory Rush (1)
    .collect 204806,1,77582,1 << Orc Warrior --Rune of Victory Rush (1)
step << Rogue/Warrior
    #season 2
    .use 204795 >>使用 |T134419:0|t[|cRXP_FRIENDLY_暗影打击符文|r] << Rogue
    .use 204806 >>使用 |T134419:0|t[|cRXP_FRIENDLY_胜利冲刺符文|r] << Warrior
    .complete 77592,1 << Troll Rogue --Learn Spell: Engrave Gloves - Shadowstrike
    .complete 77583,1 << Orc Rogue --Learn Spell: Engrave Gloves - Shadowstrike
    .complete 77588,1 << Troll Warrior --Learn Spell: Engrave Gloves - Victory Rush
    .complete 77582,1 << Orc Warrior --Learn Spell: Engrave Gloves - Victory Rush
    .isOnQuest 77592 << Troll Rogue
    .isOnQuest 77583 << Orc Rogue
    .isOnQuest 77588 << Troll Warrior
    .isOnQuest 77582 << Orc Warrior
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 77592 >>悬崖之上 << Troll Rogue
    .turnin 77583 >>悬崖之上 << Orc Rogue
    .train 1784 >>列车 |T132320:0|t[隐身]
    .train 921 >>列车 |T133644:0|t[扒窃]
    .target Rwag
    .money <0.011
    .xp <4,1
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 77592 >>悬崖之上 << Troll Rogue
    .turnin 77583 >>悬崖之上 << Orc Rogue
    .train 1784 >>列车 |T132320:0|t[隐身]
    .target Rwag
step << Warrior
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 77588 >>提交健身试验 << Troll
    .turnin 77582 >>提交健身试验 << Orc
    .target Frang
step
    #completewith Sting
    >>拾取仙人掌附近的 |cRXP_LOOT_Cactus 苹果|r
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_使用|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |cRXP_LOOT_Scorpid 工人尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << Shaman
    #season 2
    #completewith OverloadRune
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >>|cRXP_WARN_装备|r|T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>继续杀死|cRXP_ENEMY_Scorpid Workers|r 并获得 10 层 |T237556:0|t[建筑灵感]，因为它们会对你造成自然伤害
    .mob Scorpid Worker
    --User must be level 3 to be able to use item!
step << Shaman
    #season 2
    #label OverloadRune
step 
    >>使用 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .use 206381
    .complete 77587,1 << Troll Shaman --Learn Spell: Engrave Chest - Overload
    .complete 77585,1 << Orc Shaman --Learn Spell: Engrave Chest - Overload
step << Hunter
    #season 2
    #completewith ChimeraRune
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Hunter
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死 |cRXP_ENEMY_Scorpid Workers|r。掠夺他们以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1,77590,1 << Troll Hunter --Rune of the Chimera (1)
    .collect 206168,1,77584,1 << Orc Hunter --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step << Hunter
    #season 2
    #label ChimeraRune
    .use 206168 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .complete 77590,1 << Troll Hunter --Learn Spell: Engrave Gloves - Chimera Shot
    .complete 77584,1 << Orc Hunter --Learn Spell: Engrave Gloves - Chimera Shot
    .isOnQuest 77590 << Troll Hunter
    .isOnQuest 77584 << Orc Hunter
    .train 410121,1
step << !Warlock
    #label Imps
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,25,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |cRXP_LOOT_Scorpid 工人尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
#loop
	.line Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
	.goto Durotar,44.98,69.13,25,0
    >>|cRXP_WARN_使用|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 789,2 >>交任务: |cRXP_FRIENDLY_工蝎的尾巴|r << Shaman
    .turnin 789 >>交任务: |cRXP_FRIENDLY_工蝎的尾巴|r << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .turnin 77587 >>上交权力圣像 << Troll Shaman
    .turnin 77585 >>上交权力圣像 << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业法术
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业法术
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.01
    .target Ken'jai
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 921 >>列车 |T133644:0|t[扒窃]
    .target Rwag
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 792 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_LOOT_火刃奖章|r
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .turnin 77590 >>在崎岖地形中转弯 << Troll Hunter
    .turnin 77584 >>交出“寻找符文” << Orc Hunter
    .target Jen'shan
    .xp <4,1
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 77590 >>在崎岖地形中转弯 << Troll Hunter
    .turnin 77584 >>交出“寻找符文” << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车 |T132337:0|t[收费]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 5441 >>交任务: |cRXP_FRIENDLY_懒惰的苦工|r
    .accept 6394 >>接任务: |cRXP_LOOT_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.82,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
#loop
	.line Durotar,44.67,64.92,43.45,62.96,43.82,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
	.goto Durotar,44.67,64.92,25,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>拾取仙人掌附近的 |cRXP_LOOT_Cactus 苹果|r
    .complete 4402,1 --Cactus Apple (10)
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>前往 |cRXP_LOOT_Thazz'ril 的选择|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>杀死 |cRXP_ENEMY_Felstalkers|r。掠夺他们以获得 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>战利品 |cRXP_LOOT_Thazz'ril 的选择|r 靠墙
    .complete 6394,1 --Thazz'ril's Pick (1)
step << Mage/Warlock
    #season 2
    .goto Durotar,43.004,54.456
    >>打开洞穴内水下的 |cRXP_PICK_Waterlogged Stashbox|r。从中获取 |T134939:0|t|cRXP_LOOT_[法术注释：CALE ENCI]|r << Mage
    >>|cRXP_WARN_注意：你将无法在此处训练|r |T133816:0|t[雕刻手套 - 冰枪] |cRXP_WARN_，因为你只能在你种族的起始区获得|r |T133736:0|t[理解入门] |cRXP_WARN_|r << !Troll Mage
    >>打开洞穴内水下的 |cRXP_PICK_Waterlogged Stashbox|r。从中获取 |T134419:0|t|cRXP_LOOT_[Rune of Haunting]|r << Warlock
    .collect 203751,1,77643,1 << Mage --Spell Notes: CALE ENCI (1)
    .collect 205230,1,77586,1 << Warlock--Rune of Haunting (1)
    .train 401760,1 << Mage
step << Mage
    #season 2
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Warlock
    #season 2
    .use 205230 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]
    .complete 77586,1 --Learn Spell: Engrave Gloves - Haunt
    .isOnQuest 77586
step << Rogue
    #season 2
    .goto Durotar,42.70,52.99
    >>使用 |T133644:0|t[Pick Pocket] 对 |cRXP_ENEMY_Yarrog Baneshadow|r 进行攻击，获取 |T134331:0|t[|cRXP_LOOT_Note from Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
	.mob Yarrog Baneshadow
    .train 400094,1
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>杀死 |cRXP_ENEMY_Yarrog Baneshadow|r。从他身上夺取 |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>杀死 |cRXP_ENEMY_Felstalkers|r。掠夺他们以获得 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << Hunter
    #season 2
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 6 >>磨练至 6 级
    >>|cRXP_WARN_这将允许你获得|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] |cRXP_WARN_early|r
    .mob Felstalker
    .mob Vile Familiar
    .train 410113,1
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_通过将你的角色定位在岩石边缘直到看起来像漂浮起来，执行注销跳过，然后注销并重新登录|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>点击此处查看示例
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >>|cRXP_WARN_或者，死亡后在箭头附近的 |cRXP_FRIENDLY_Spirit Healer|r 处重生|r
    .target Spirit Healer
    .subzoneskip 362
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_你可以在堡垒外面或堡垒顶部与他交谈|r
    .accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
    .target Gar'thok
step << Hunter
    #softcore
    #season 2
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    >>|cRXP_WARN_你需要|r |T132212:0|t[猎人印记] |cRXP_WARN_才能获得|r |T134419:0|t[|cRXP_FRIENDLY_射击符文|r]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 410113,1
    .target Thotar
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 30 分钟）
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Hunter
    #softcore
    #season 2
    .goto Durotar,40.61,52.19
    >>|cRXP_WARN_施放|r |T132212:0|t[猎人印记] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #softcore
    #season 2
    .train 410113 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] 训练 |T132177:0|t[Master Marksman]
    .use 206155
    .itemcount 206155,1
step
    #completewith BurningBladeTurnin
    .hs >>试炼之谷
    .use 6948
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.03
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 794 >>交任务: |cRXP_FRIENDLY_火刃奖章|r
    .accept 805 >>接任务: |cRXP_LOOT_去森金村报到|r
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
	.accept 5649 >>接任务: |cRXP_LOOT_部族的传统|r
	.train 591 >>列车 |T135924:0|t[重击]
    .train 17 >>训练 |T135940:0|t[真言术：盾]
    .target Ken'jai
step << Mage
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .turnin 77643 >>提交法术研究
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前往 |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>列车 |T136189:0|t[邪恶力量]
    .train 1776 >>列车 |T132155:0|t[凿击]
    .target Rwag
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>列车 |T136189:0|t[邪恶力量]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[血契魔典] |cRXP_BUY_|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾
    .target Hraug
    .money <0.03
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .train 1454 >>列车 |T136126:0|t[生命之流]
    .turnin 77586 >>交出偷来的电力
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .turnin 77586 >>交出偷来的电力
    .target Nartok
step << Warlock
    #season
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .train 1454 >>列车 |T136126:0|t[生命之流]
    .target Nartok
    .money <0.02
step << Warlock
    #season
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .target Nartok
step << Warlock
    #completewith Leave
    .train 20397 >>使用 |T133738:0|t[血契魔典]
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
    .goto Durotar,44.13,76.36,25 >>前往 |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>使用 |T134743:0|t[地球 Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1518 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>走出试炼之谷
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#classic
#xprate >1.99
<< Horde
#name 7-13 杜隆塔尔
#version 1
#group RestedXP 部落 1-22
#defaultfor Troll/Orc
#next 13-20 贫瘠之地

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接任务: |cRXP_LOOT_苦工的重担|r
    .target Ukor
step
    #completewith next
    .subzone 367 >>前往森金村
step
    #xprate <1.5
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>接任务: |cRXP_LOOT_科卡尔半人马的进攻|r
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_加德林大师|r
    .accept 817 >>接任务: |cRXP_LOOT_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .accept 818 >>接任务: |cRXP_LOOT_沃纳尔大师|r
    .goto Durotar,55.94,74.40
    .turnin 805 >>交任务: |cRXP_FRIENDLY_去森金村报到|r
    .accept 808 >>接任务: |cRXP_LOOT_明希纳的颅骨|r
    .accept 826 >>接任务: |cRXP_LOOT_扎拉赞恩|r
    .accept 823 >>接任务: |cRXP_LOOT_向奥戈尼尔报告|r
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>进入大屋
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_交谈。从她那里购买|r |T135421:0|t[加重飞斧] |cRXP_BUY_|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (10)
    .collect 159,10,786,1
    .target K'waii
    .money >0.001
    .money <0.005
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (4s 01c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T132401:0|t[大斧] (4s 84c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买一把|r |T132401:0|t[大斧] |cRXP_BUY_|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135421:0|t[战斧] (5s 40c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135421:0|t[战斧] |cRXP_BUY_|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135499:0|t[霍恩伍德反曲弓] (2s 83c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135499:0|t[霍恩伍德反曲弓] |cRXP_BUY_|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #completewith Bonfire
    +装备 |T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Bonfire
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Bonfire
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +装备 |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bonfire
    +装备 |T135499:0|t[霍恩伍德反曲弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .target Un'Thuwa
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_铸造|r |T136025:0|t[寻找矿物] |cRXP_WARN_并开采你找到的任何铜矿脉以获取|r |T135232:0|t|cRXP_LOOT_[原石]|r|cRXP_WARN_。用它们制作|r |T135248:0|t[磨刀石] |cRXP_WARN_|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>跑到海滩上。杀死 |cRXP_ENEMY_Crawlers|r 和 |cRXP_ENEMY_Makruras|r。掠夺他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r。您不必在这里完成此步骤。
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >>到达海滩尽头
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>跑到海滩上。杀死 |cRXP_ENEMY_Crawlers|r 和 |cRXP_ENEMY_Makruras|r。掠夺他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r。您不必在这里完成此步骤。
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >>到达海滩尽头
    .isOnQuest 818
step
    #xprate <1.5
    #completewith Bonfire
    >>杀死 |cRXP_ENEMY_Kolkar Drudges|r 和 |cRXP_ENEMY_Kolkar Outrunners|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
--   >>|cRXP_WARN_不要专注于完成这件事|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>进入科卡尔基地
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_在杜隆塔尔各地执行任务时开始收集 3 叠|r |T132889:0|t[亚麻布] |cRXP_WARN_。稍后将用它们制作魔杖|r
    >>|cRXP_WARN_如果你已经购买了魔杖或者可以从 AH 以便宜的价格买到魔杖，请跳过此步骤。|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_在杜隆塔尔各地执行任务时开始收集 3 叠|r |T132889:0|t[亚麻布] |cRXP_WARN_。稍后将用它们制作魔杖|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +|cRXP_WARN_如果|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_出现，请小心，他是 9 级稀有生物。您可能需要使用 |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_如果您有它|r
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>杀死 |cRXP_ENEMY_Kolkar Drudges|r 和 |cRXP_ENEMY_Kolkar Outrunners|r。掠夺他们以获得 |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>在地面上的帐篷里烧掉 |cRXP_PICK_Attack Plan|r
    .complete 786,1 --Attack Plan: 试炼之谷 destroyed (1)
step
    #xprate <1.5
    >>将 |cRXP_PICK_Attack Plan|r 烧毁在地上
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>将 |cRXP_PICK_Attack Plan|r 烧毁在地上
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>杀死 |cRXP_ENEMY_Kolkar Drudges|r 和 |cRXP_ENEMY_Kolkar Outrunners|r。掠夺他们以获得 |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    #completewith next
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >>在篝火旁死去并在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>离开科卡尔基地
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << Shaman
    .turnin 786 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (4s 01c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T132401:0|t[大斧] (4s 84c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买一把|r |T132401:0|t[大斧] |cRXP_BUY_|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135421:0|t[战斧] (5s 40c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135421:0|t[战斧] |cRXP_BUY_|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135499:0|t[霍恩伍德反曲弓] (2s 83c)。如果你还没有足够的钱，你以后再回来
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_交谈。从他那里购买|r |T135499:0|t[霍恩伍德反曲弓] |cRXP_BUY_|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #completewith TravelToTiragarde
    +装备 |T135499:0|t[霍恩伍德反曲弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃纳尔大师|r
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海赞|r
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[一块肉] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_K'waii交谈|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[清凉泉水] |cRXP_BUY_from her|r --清凉泉水 (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << Shaman
    .turnin 786 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'so|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    >>|cRXP_WARN_他已隐身！|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁伤符文|r] |cRXP_WARN_进行训练|r |T132304:0|t[毁伤]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >>|cRXP_WARN_或者，死亡后在箭头附近的 |cRXP_FRIENDLY_Spirit Healer|r 处重生|r
    .target Spirit Healer
    .subzoneskip 362
step
    #hardcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_你可以在堡垒外面或堡垒顶部与他交谈|r
    .accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
    .target Gar'thok
step << Hunter
    #hardcore
    #season 2
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r
    >>|cRXP_WARN_你需要|r |T132212:0|t[猎人印记] |cRXP_WARN_才能获得|r |T134419:0|t[|cRXP_FRIENDLY_射击符文|r]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 410113,1
    .target Thotar
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 30 分钟）
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Hunter
    #hardcore
    #season 2
    .goto Durotar,40.61,52.19
    >>|cRXP_WARN_施放|r |T132212:0|t[猎人印记] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #hardcore
    #season 2
    .train 410113 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r] 训练 |T132177:0|t[Master Marksman]
    .use 206155
    .itemcount 206155,1
step
    #xprate <1.5
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >>前往提拉加德要塞。沿途消灭怪物
    .isOnQuest 784
step
    #xprate >1.49
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >>前往提拉加德要塞
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_如果|r |cRXP_ENEMY_Watch Commander Zalaphil|r |cRXP_WARN_出现，请小心，因为他是 9 级稀有。您可能需要使用|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_如果你有一个|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>前往城堡二楼
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>杀死 |cRXP_ENEMY_Sailors|r 和 |cRXP_ENEMY_Marines|r。从他们身上夺取 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --库尔提拉斯水手 (10)
    .mob +库尔提拉斯水手
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .mob +库尔提拉斯海军陆战队
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>杀死 |cRXP_ENEMY_Lieutenant Benedict|r。抢夺他的 |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>上楼去
    >>打开 |cRXP_PICK_Benedict 的宝箱|r。获取 |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>使用 |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] 开始任务
    .collect 4881,1,830,1 --Collect Aged Envelope (1)
    .accept 830 >>接任务: |cRXP_LOOT_将军的命令|r
    .use 4881
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --库尔提拉斯水手 (10)
    .mob 库尔提拉斯水手
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .mob 库尔提拉斯海军陆战队
    .complete 791,1 --Canvas Scraps (8)
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r
    .complete 784,1 --库尔提拉斯水手 (10)
    .mob +库尔提拉斯水手
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .mob +库尔提拉斯海军陆战队
step
    #label ScrapsFinished
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Kul Tiras 水手|r 和 |cRXP_ENEMY_Kul Tiras 海军陆战队|r。掠夺他们的 |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯海军陆战队
step << Priest
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>杀死 |cRXP_ENEMY_Sailors|r 和 |cRXP_ENEMY_Marines|r。从他们身上夺取 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob 库尔提拉斯水手
    .mob 库尔提拉斯海军陆战队
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>跪在 |cRXP_PICK_Loa 祭坛|r 前并与 |cRXP_FRIENDLY_Serpent Loa|r 交谈以获得 |T136077:0|t[Meditation on the Loa] 增益
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r] |cRXP_WARN_进行训练|r |T237514:0|t[虚空瘟疫]
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >>死于提拉加德要塞外的北塔，并在 |cRXP_FRIENDLY_Spirit Healer|r 重生
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往剃刀岭
step
    #xprate <2.1
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Orgnil|r、|cRXP_FRIENDLY_Gar'Thok|r 和 |cRXP_FRIENDLY_Torka|r 交谈
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .accept 806 >>接任务: |cRXP_LOOT_黑暗风暴|r
    .goto Durotar,52.24,43.15
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 825 >>接任务: |cRXP_LOOT_海底沉船|r
    .accept 831 >>接任务: |cRXP_LOOT_将军的命令|r << !Mage !Shaman
    .accept 837 >>接任务: |cRXP_LOOT_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .accept 815 >>接任务: |cRXP_LOOT_恐龙蛋大餐|r
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
step
    #xprate >2.09
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Orgnil|r、|cRXP_FRIENDLY_Gar'Thok|r 和 |cRXP_FRIENDLY_Torka|r 交谈
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
    .goto Durotar,52.24,43.15
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 825 >>接任务: |cRXP_LOOT_海底沉船|r
    .accept 831 >>接任务: |cRXP_LOOT_将军的命令|r << !Mage !Shaman
    .goto Durotar,51.95,43.50
    .accept 815 >>接任务: |cRXP_LOOT_恐龙蛋大餐|r
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
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>交任务: |cRXP_FRIENDLY_新的背包|r
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁恩|r
    .train 2575,1 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 30 分钟）
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜克|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,818,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (4s 01c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T132401:0|t[大斧] (4s 84c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买一把|r |T132401:0|t[大斧] |cRXP_BUY_|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤加尔|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135421:0|t[战斧] (5s 40c)。如果你还没有足够的钱，你以后再回来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_交谈。从他那里购买|r |T135421:0|t[Tomahawk] |cRXP_BUY_|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +装备 |T135421:0|t[加重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #completewith Toolboxes
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #completewith Toolboxes
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +装备 |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +装备|T135421:0|t[战斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳特|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135499:0|t[霍恩伍德反曲弓] (2s 83c)。如果你还没有足够的钱，你以后再回来
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_交谈。从他那里购买|r |T135499:0|t[霍恩伍德反曲弓] |cRXP_BUY_|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #completewith Toolboxes
    +装备 |T135499:0|t[霍恩伍德反曲弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话: |cRXP_FRIENDLY_格劳特|r|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[一块肉] |cRXP_BUY_|r << Rogue/Warrior
    .vendor >>供应商垃圾
    .home >>将炉石设置为剃刀岭
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .collect 1179,10,818,1 << Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 1179,20,818,1 << Mage --Ice Cold Milk (20)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.065 << Rogue/Warrior/Shaman/Warlock --to ensure user still has 4 silver left for class spells
    .money <0.045 << Priest --to ensure user still has 2 silver left for class spells
    .money <0.050 << Mage --Mage not getting class training here
    .isOnQuest 825 --From the Wreckage
step << !Hunter
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .home >>将炉石设置为剃刀岭
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .money >0.065 << Rogue/Warrior/Shaman/Warlock
    .money >0.045 << Priest
    .money >0.050 << Mage
    .isOnQuest 825 --From the Wreckage
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 284 >>训练你的职业法术
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8044 >>训练你的职业法术
    .target Swart
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >>使用 |T133738:0|t[2 级火箭魔法书]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .train 5116 >>训练你的职业法术
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >>训练你的职业法术
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5649 >>接任务: |cRXP_LOOT_部族的传统|r
    .accept 5648 >>接任务: |cRXP_LOOT_灵魂之衣|r
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>对 |cRXP_FRIENDLY_Kor'ja|r 施放 |T135929:0|t[次级治疗术] 和 |T135987:0|t[真言术：坚韧]
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5648 >>交任务: |cRXP_FRIENDLY_灵魂之衣|r
    .trainer >>训练你的职业法术
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌克|r
    .train 3273 >>列车 |T135966:0|t[急救]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_购买 a|r |T133634:0|t[小棕色袋] |cRXP_BUY_from|r |cRXP_FRIENDLY_him|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #label Tools
    >>抢劫船内和周围的 |cRXP_PICK_Gnomish 工具箱|r
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
    .goto Durotar,67.10,69.29,100 >>游到岛上
step
    #completewith MinshinasSkull
    >>杀死 |cRXP_ENEMY_Durotar Tigers|r。掠夺它们的 |cRXP_LOOT_Fur|r
    -->>这不需要现在就完成
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .waypoint Durotar,67.04,71.40,40,0
    .waypoint Durotar,67.66,73.86,40,0
    .waypoint Durotar,68.67,74.47,40,0
    .waypoint Durotar,69.76,74.69,40,0
    .waypoint Durotar,70.29,73.31,40,0
    .waypoint Durotar,70.23,70.84,40,0
    .waypoint Durotar,69.69,70.35,40,0
    .waypoint Durotar,69.21,69.69,40,0
    .waypoint Durotar,67.74,69.86,40,0
    >>拾取地面上的 |cRXP_PICK_Taillasher 蛋|r。它们通常由 |cRXP_ENEMY_Bloodtalon Taillasher|r 守卫
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Crawlers|r 和 |cRXP_ENEMY_Makruras|r。掠夺他们的 |cRXP_LOOT_Mucus|r 和 |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    .goto Durotar,66.94,84.41,150 >>游到主岛
    .isOnQuest 826
step
    #completewith MinshinasSkull
    >>杀死 |cRXP_ENEMY_被诅咒的巨魔s|r 和 |cRXP_ENEMY_巫毒巨魔s|r
    .complete 826,1 --被诅咒的巨魔 (8)
    .mob +被诅咒的巨魔
    .complete 826,2 --巫毒巨魔 (8)
    .mob +巫毒巨魔
step << Priest
    #season 2
    #completewith Fur
    >>杀死 |cRXP_ENEMY_巫毒巨魔s|r。掠夺他们以获得 |T135975:0|t[|cRXP_FRIENDLY_被亵渎的城堡的预言|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob 巫毒巨魔
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>杀死 |cRXP_ENEMY_Zalazane|r。从他身上搜刮 |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell 注释：RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Zalazane|r。夺取他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_保存你的|r |T136026:0|t[地震术] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Shaman
    >>|cRXP_WARN_保存你的|r |T132155:0|t[凿击] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>拾取地上的一个 |cRXP_LOOT_Skulls|r
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>杀死 |cRXP_ENEMY_Zalazane|r。夺取他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_保存你的|r |T136026:0|t[地震术] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Shaman
    >>|cRXP_WARN_保存你的|r |T132155:0|t[凿击] |cRXP_WARN_当他施放|r |T136052:0|t[治疗波]时 << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>杀死 |cRXP_ENEMY_Zalazane|r。从他身上搜刮 |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell 注释：RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>你需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用该物品
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_咒语说明：RING SEFF OSTROF|r] |cRXP_WARN_学习|r |T236227:0|t[冰霜之指]
    .use 203753
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Durotar Tigers|r。掠夺它们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>杀死 |cRXP_ENEMY_被诅咒的巨魔s|r 和 |cRXP_ENEMY_巫毒巨魔s|r
    .complete 826,1 --被诅咒的巨魔 (8)
    .mob +被诅咒的巨魔
    .complete 826,2 --巫毒巨魔 (8)
    .mob +巫毒巨魔
step << Priest
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>杀死 |cRXP_ENEMY_巫毒巨魔s|r。掠夺他们以获得 |T135975:0|t[|cRXP_FRIENDLY_被亵渎的城堡的预言|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob 巫毒巨魔
    .train 402852,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
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
    >>杀死 |cRXP_ENEMY_Durotar Tigers|r。掠夺它们的 |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >>杀死 |cRXP_ENEMY_侏儒冲浪爬行者s|r 和 |cRXP_ENEMY_冲浪爬行者s|r。掠夺他们的 |cRXP_LOOT_Mucus|r
    >>杀死 |cRXP_ENEMY_Makrura Spellhides|r 和 |cRXP_ENEMY_龙虾s|r。掠夺他们的 |cRXP_LOOT_Eyes|r
    -->>这不需要现在就完成
    .complete 818,2 --Crawler Mucus (8)
    .mob +侏儒冲浪爬行者
    .mob +冲浪爬行者
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +龙虾壳皮
    .mob +龙虾
step
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生，或者跑回去
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往森金村
step
    .goto Durotar,56.48,73.11
    >>跳进小屋
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特莱耶克|r
    .vendor >>供应商垃圾和维修
    .target Trayexir
    .isOnQuest 808
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加德林大师|r, |cRXP_FRIENDLY_沃纳尔大师|r, |cRXP_FRIENDLY_维尔林·长牙|r
    .turnin 808 >>交任务: |cRXP_FRIENDLY_明希纳的颅骨|r
    .turnin 826,2 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << Shaman
    .turnin 826 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << !Shaman
    .goto Durotar,55.95,74.73
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .goto Durotar,55.95,74.39
    .turnin 817 >>交任务: |cRXP_FRIENDLY_生活所需的虎皮|r
    .goto Durotar,55.95,73.93
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 118 >>训练你的职业法术
    .target Un'Thuwa
    .xp <8,1
    .xp >10,1
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安苏瓦|r
    .train 122 >>训练你的职业法术
    .target Un'Thuwa
    .xp <10,1
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>跪在 |cRXP_PICK_Loa 祭坛|r 前并与 |cRXP_FRIENDLY_Serpent Loa|r 交谈以获得 |T136077:0|t[Meditation on the Loa] 增益
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_现在你必须找到一个拥有 Loa 增益的亡灵牧师。你必须跪在他面前，他必须为你祈祷。|r
    .use 205947
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_被亵渎城堡的预言|r] |cRXP_WARN_训练|r |T237570:0|t[Homunculi]
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_绑定你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_和|r |T134712:0|t[非常粘的胶水]|cRXP_WARN_。保存它们以备紧急情况|r
step << Warrior
    #xprate <2.1
    #season 2
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
    >>杀死 |cRXP_ENEMY_钢鬃野猪人s|r 和 |cRXP_ENEMY_钢鬃斥候s|r。从他们身上搜刮 |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --钢鬃野猪人 (4)
    .mob +钢鬃野猪人
    .complete 837,2 --钢鬃斥候 (4)
    .mob +钢鬃斥候
    .train 403475,1
step
    #xprate <2.1
    #label QuilboarsScouts
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
    >>杀死 |cRXP_ENEMY_Razormane 野猪人|r 和 |cRXP_ENEMY_Razormane 侦察兵|r
    .complete 837,1 --钢鬃野猪人 (4)
    .mob +钢鬃野猪人
    .complete 837,2 --钢鬃斥候 (4)
    .mob +钢鬃斥候
step
    #optional
    #loop
    .goto Durotar,49.14,48.89,0
    .waypoint Durotar,49.14,48.89,30,0
    .waypoint Durotar,47.43,49.18,30,0
    .xp 9+3350 >>升级至 3350+/6500xp
step
    #xprate <2.1
    #softcore
    #completewith RazorTurnins015
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生，或者逃往 Razor Hill
step
    #xprate <2.1
    #hardcore
    #completewith RazorTurnins015
    .subzone 362 >>前往剃刀岭
step
    #xprate >2.09
    #completewith RazorTurnins015
    .subzone 362 >>前往剃刀岭
    .cooldown item,6948,<0
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Swart
    .isNotOnQuest 1522
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Torka|r 和 |cRXP_FRIENDLY_Gar'Thok|r 交谈
    .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
    .goto Durotar,51.12,42.46
    .turnin 825 >>交任务: |cRXP_FRIENDLY_海底沉船|r
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .trainer >>训练你的职业法术
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜格鲁·血怒|r
    .accept 1506 >>接任务: |cRXP_WARN_甘鲁尔的召唤|r
    .trainer >>训练你的职业法术
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基萨|r
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #xprate >1.49
    .train 20270 >>使用 |T133738:0|t[2 级火箭魔法书]
    .use 16302
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰金|r
    .accept 5654 >>接任务: |cRXP_WARN_虚弱妖术|r << Troll
    .accept 5660 >>接任务: |cRXP_WARN_虚弱之触|r << Undead
    .trainer >>训练你的职业法术
    .target Tai'jin
step << Rogue
    #xprate >1.49
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡普拉克|r
    .train 674 >>训练你的职业法术
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .accept 6062 >>接任务: |cRXP_LOOT_驯服野兽|r
    .trainer >>训练你的职业法术
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话: |cRXP_FRIENDLY_格劳特|r, and a|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话: |cRXP_FRIENDLY_格劳特|r|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51
    .use 15917 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Dire Mottled Boar|r |cRXP_WARN_at 最大范围|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .turnin 6062 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6083 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Thotar
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .accept 6083 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_通过右键单击其单位框架并单击“关闭”来关闭你的 |cRXP_ENEMY_Dire Mottled Boar|r，否则你将无法驯服|r |cRXP_ENEMY_冲浪爬行者|r
step << Hunter
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38
    >>|cRXP_WARN_不要杀死|r |cRXP_ENEMY_装甲蝎|r |cRXP_WARN_你看。你稍后会需要它们|r
    .use 15919 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_冲浪爬行者|r |cRXP_WARN_at 最大范围|r
    .complete 6083,1 --Tame a 冲浪爬行者
    .mob 冲浪爬行者
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .turnin 6083 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6082 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_通过右键单击其单位框架并单击“关闭”来关闭你的 |cRXP_ENEMY_冲浪爬行者|r，否则你将无法驯服|r |cRXP_ENEMY_Armored Scorpid|r
step << Hunter
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .goto Durotar,54.84,36.94
    .use 15920 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on 和|r |cRXP_ENEMY_装甲蝎|r |cRXP_WARN_at 最大范围|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>进入掩体
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索塔尔|r, 他在里面
    .turnin 6082 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6081 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Thotar
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_将|r |T132164:0|t[驯服野兽]|cRXP_WARN_、|r |T136095:0|t[解散宠物]|cRXP_WARN_和|r |T132161:0|t[召唤宠物] |cRXP_WARN_放到你的动作栏上|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞姆塔克|r
    >>|cRXP_BUY_从他那里购买|r |T133972:0|t[坚韧的肉干] |cRXP_BUY_|r。|cRXP_BUY_你稍后会用它喂养你的宠物。|r
    .vendor >>供应商垃圾
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞姆塔克|r
	.vendor >>|cRXP_BUY_卖掉垃圾，然后根据需要补充食物和水|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_卖掉垃圾，然后在必要时补充食物|r << Rogue/Warrior
    .target Grimtak
step
    #label ConscriptH
    #xprate >1.49
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_LOOT_部落的新兵|r
    .target Takrin Pathseeker
step
    #xprate <2.1
#loop
	.line Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
	.goto Durotar,44.45,39.74,25,0
	.goto Durotar,44.49,37.47,25,0
	.goto Durotar,43.30,37.32,25,0
	.goto Durotar,41.70,37.09,25,0
	.goto Durotar,41.64,38.27,25,0
	.goto Durotar,41.94,40.46,25,0
	.goto Durotar,43.30,40.40,25,0
	.goto Durotar,44.45,39.74,25,0
    >>杀死 |cRXP_ENEMY_钢鬃尘行者s|r 和 |cRXP_ENEMY_钢鬃战斗卫士s|r
    .complete 837,3 --钢鬃尘行者 (4)
    .mob +钢鬃尘行者
    .complete 837,4 --钢鬃战斗卫士 (4)
    .mob +钢鬃战斗卫士
step << Warrior/Shaman
    #xprate <2.1
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step
    #xprate >2.09
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2983 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    .goto Durotar,39.16,58.56,10 >>沿着山上的小路前往 |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_小心不要从山上掉下来，路很窄。如果掉下去，你可能会死|r
step << Shaman
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Warrior
    #xprate >1.49
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34
    >>进入雷霆岭并杀死 |cRXP_ENEMY_Lightning Hides|r。掠夺他们的 |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << !Warrior
    #xprate <2.1
    #completewith next
    .goto Durotar,41.66,25.68,20 >>跳进雷霆岭 << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_通过右键单击其单位框架并单击“关闭”来关闭你的|r |T136218:0|t[Imp] |cRXP_WARN_|r << Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_施放|r |T136095:0|t[解散宠物] |cRXP_WARN_然后跳入雷霆岭|r << Hunter
step
    #xprate <2.1
    #softcore
    .goto Durotar,42.13,26.67
    >>杀死 |cRXP_ENEMY_Fizzle Darkstorm|r 并掠夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_小心。先杀掉巡逻的|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_和|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_，然后再把他拉走|r
    >>|cRXP_WARN_把他拉向|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_你刚刚杀死的那个方向。否则你可能会拉扯到更多的 Burning Blade 怪物|r
    >>|cRXP_WARN_不要害怕为 |cRXP_LOOT_Claw|r 而死，因为你将在 |cRXP_FRIENDLY_Spirit Healer|r 处重生|r
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T132155:0|t[凿击] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T136026:0|t[地震术] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以施放|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_并杀死|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_先杀掉小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_如果你有它和你的|r |T133728:0|t[微弱发光的头骨] |cRXP_WARN_如果需要|r << !Warlock
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_如果你有它并且你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_如果需要|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <2.1
    #hardcore
    .goto Durotar,42.13,26.67
    >>杀死 |cRXP_ENEMY_Fizzle Darkstorm|r 并掠夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_小心。先杀掉巡逻的|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_和|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_，然后再把他拉走|r
    >>|cRXP_WARN_把他拉向|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_你刚刚杀死的那个方向。否则你可能会拉扯到更多的 Burning Blade 怪物|r
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T132155:0|t[凿击] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_先杀掉小鬼。当他施放|r |T136026:0|t[地震术] |cRXP_WARN_时使用|r |T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以施放|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_并杀死|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_先杀掉小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水] |cRXP_WARN_如果你有它和你的|r |T133728:0|t[微弱发光的头骨] |cRXP_WARN_如果需要|r << !Warlock
    >>|cRXP_WARN_使用|r |T134829:0|t[初级治疗药水]、|T133728:0|t[初级治疗石] |cRXP_WARN_如果你有它并且你的|r |T133728:0|t[微弱发光的骷髅] |cRXP_WARN_如果需要|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <2.1
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .isQuestComplete 806
step
    #xprate <2.1
    #hardcore
    .goto Durotar,39.20,32.02,60 >>杀出雷霆岭
    .isQuestComplete 806
step
    #xprate <2.1
    #completewith next
    .goto Durotar,46.37,22.94,50 >>前往雷兹拉克
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_LOOT_沙漠之风|r
    .target Rezlak
step << Warrior
    #xprate <2.1
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Dustwind Harpies|r。掠夺它们以获得 |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 尘风野蛮人
    .mob 尘风风暴女巫
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
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
    >>从地面上拾取 |cRXP_PICK_Stolen Supply Sacks|r
    .complete 834,1 --Sack of Supplies (5)
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>杀死 |cRXP_ENEMY_Dustwind Harpies|r。掠夺它们以获得 |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob 尘风野蛮人
    .mob 尘风风暴女巫
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
    .target Rezlak
step << Shaman
    #xprate <2.1
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>前往尘风洞
    >>|cRXP_WARN_绕着山丘向东走，到达洞穴。按照路标箭头|r
step << Shaman
    #xprate <2.1
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死 |cRXP_ENEMY_Burning Blade Cultists|r。掠夺他们以获得 |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Mage
    #xprate <2.1
    #season 2
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01
    >>杀死骷髅岩洞穴内的 |cRXP_ENEMY_Burning Blade Orcs|r。从他们身上搜刮物品，获得 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step << Warrior/Shaman
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step << Warrior
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
    .target Uzzek
step
    #xprate >2.09
    #softcore
    #completewith
    .goto The Barrens,50.72,32.61
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .subzoneskip 380
step
    #xprate >2.09
    #hardcore
    #completewith
    .goto The Barrens,52.34,29.27,150 >>前往十字路口
step
    #xprate >2.09
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
    .target Thork
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
    .target Zargh
step
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fp The Crossroads >>获取十字路口飞行路线
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
    .accept 6384 >>接任务: |cRXP_LOOT_飞往奥格瑞玛|r
    .target Devrak
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Devrak

    --Mage/Shaman dont need to go ORG 100% route
step
    #xprate >2.09
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Gryshka|r交谈
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
    .accept 6385 >>接任务: |cRXP_LOOT_双足飞龙管理员多拉斯|r
    .target Innkeeper Gryshka
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_交谈。从他处购买|r |T135419:0|t[锋利飞斧] |cRXP_BUY_|r
    .collect 3135,200 --Sharp Throwing Axe (200)
    .vendor >>出售垃圾
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith AdmiralTurnin
    +装备 |T135421:0|t[锋利飞斧]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #xprate >2.09
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Doras|r交谈
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
    .accept 6386 >>接任务: |cRXP_LOOT_返回十字路口|r
    .target Doras
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #completewith AdmiralTurnin
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5654 >>交任务: |cRXP_FRIENDLY_虚弱妖术|r
    .trainer >>训练你的职业法术
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
    .turnin 5652 >>交任务: |cRXP_FRIENDLY_虚弱妖术|r
    .trainer >>训练你的职业法术
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟祖克|r
	.accept 1963 >>接任务: |cRXP_LOOT_碎手氏族|r << Orc Rogue/Troll Rogue
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_交谈。从他那里购买一到两件|r |T135640:0|t[Jambiya] |cRXP_BUY_|r
    .collect 2207,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Kareth
step << Rogue
    #completewith RazorTurnins2
    +装备|T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>掠夺 |cRXP_PICK_Dusty Chest|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_它位于 The Drag 的上层|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_精准符文|r] |cRXP_WARN_进行训练|r |T135610:0|t[双眼之间]
    .use 204174
    .itemcount 204174,1
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step
    #xprate >2.09
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .target Nazgrel
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Nazgrel
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎姆沙|r, Gru'ark
    +当 |cRXP_ENEMY_Gru'ark|r 变得具有敌意时将其杀死
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎姆沙|r
    >>从她那里获得 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .use 204716
    .itemcount 204716,1
step << Troll Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
    .train 227 >>火车五线谱
    .target Hanashi
    .money <0.100
step << Troll Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_交谈。从他那里购买|r |T135154:0|t[Quarter Staff] |cRXP_BUY_|r
    .collect 854,1,1502,1 --Collect Quarter Staff (1)
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Zendo'jian
    .train 227,3
step << Troll Warrior
    #optional
    #completewith RazorTurnins2
    +装备 |T135154:0|t[长棍]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 227,3
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
    .turnin 6081 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
    .train 24547 >>训练你的宠物法术
    .target Xao'tsu
step << Hunter
    #completewith RazorTurnins2
    +|cRXP_WARN_将|r |T132162:0|t[野兽训练]|cRXP_WARN_（在常规选项卡下）、|r |T132163:0|t[复活宠物]|cRXP_WARN_和|r |T132165:0|t[喂养宠物]|cRXP_WARN_放到你的动作栏上|r
    >>|cRXP_WARN_记住，当你的宠物获得训练点数时，要对其进行训练|r |T132162:0|t[野兽训练]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_交谈。从他那里购买一把|r |T135499:0|t[层压反曲弓] |cRXP_BUY_|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith RazorTurnins2
    +当你达到 11 级时装备 |T135499:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #completewith RazorTurnins2
    +装备 |T135499:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Gan'rul Bloodeye交谈|r
    .turnin 1506 >>交任务: |cRXP_FRIENDLY_甘鲁尔的召唤|r
    .accept 1501 >>接任务: |cRXP_LOOT_虚空中的生物|r
    .target Gan'rul Bloodeye
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >>在 |cRXP_FRIENDLY_Spirit Healer|r 处死亡并重生
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>前往骷髅岩
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>如果他醒了，就杀死 |cRXP_ENEMY_Gazz'uz|r。从他身上搜刮 |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]。使用它来开始任务
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cRXP_LOOT_燃影之眼|r
    .unitscan Gazz'uz
step << Warlock
    #completewith next
    >>杀死 |cRXP_ENEMY_Burning Blade Orcs|r。掠夺他们以获得 |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_如果你运气不好，可以跳过这一步|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>掠夺洞穴深处的 |cRXP_PICK_Burning Blade Stash|r 以获得 |cRXP_LOOT_Tablet of Verga|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >>在 |cRXP_FRIENDLY_Spirit Healer|r 处死亡并重生
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Nazgrel
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
    .target Nazgrel
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Gan'rul Bloodeye交谈|r
    .turnin 1501 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
    .accept 1504 >>接任务: |cRXP_LOOT_誓缚|r
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 832 >>接任务: |cRXP_LOOT_燃影之眼|r
    .turnin 832 >>交任务: |cRXP_FRIENDLY_燃影之眼|r
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>在召唤圈中使用 |T134416:0|t[召唤雕文]
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>杀死|cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Gan'rul Bloodeye交谈|r
    .turnin 1504 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
    .target Nazgrel
    .isQuestTurnedIn 5726
step << Shaman/Mage/Hunter
    #xprate >2.09
    #completewith next
    .goto Durotar,45.54,12.14
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Hunter
    #xprate >2.09
    #completewith next
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>驯服一只 |cRXP_ENEMY_Venomtail Scorpid|r
    >>|cRXP_WARN_这将允许您训练|r |T132140:0|t[Claw Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate >2.09
    #completewith next
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>前往尘风洞
    >>|cRXP_WARN_绕着山丘向东走，到达洞穴。按照路标箭头|r
step << Shaman
    #xprate >2.09
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死 |cRXP_ENEMY_Burning Blade Cultists|r。掠夺他们以获得 |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Mage
    #xprate >2.09
    #season 2
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01
    >>杀死骷髅岩洞穴内的 |cRXP_ENEMY_Burning Blade Orcs|r。从他们身上搜刮物品，获得 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step
    #xprate >2.09
    .hs >>炉边到十字路口
    .use 6948
    .subzoneskip 380
    .cooldown item,6948,>0
step
    #xprate >2.09
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
    .fly Crossroads >>飞往十字路口
    .target Doras
    .subzoneskip 380
    .cooldown item,6948,<0
step
    #xprate <2.1
    #completewith RazorTurnins2
    .hs >>炉石到剃刀岭
    .use 6948
    .subzoneskip 362
step
    #xprate <2.1
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >>供应商垃圾
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_从他那里购买|r |T133974:0|t[一块肉] |cRXP_BUY_|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahi|r
    >>上交你收集到的 |cRXP_LOOT_Heads|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>使用 |T134455:0|t[符文碎片] 来制作 |T134419:0|t[|cRXP_FRIENDLY_毁灭符文|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step
    #xprate <2.1
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与 |r |cRXP_FRIENDLY_Orgnil|r 和 |cRXP_FRIENDLY_Gar'Thok|r 交谈
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
    .goto Durotar,52.24,43.15
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
    .goto Durotar,51.95,43.50
    .target Orgnil Soulscar
    .target Gar'Thok
step << Warrior
    #xprate <2.1
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >>训练你的职业法术
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <2.1
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>训练你的职业法术
    .target Swart
    .xp <12,1
step << Hunter
    #xprate <2.1
    #completewith next
    .goto Durotar,36.29,47.38,0
    .goto Durotar,36.29,52.09,0
    .waypoint Durotar,36.29,47.38,40,0
    +驯服一只 |cRXP_ENEMY_Venomtail Scorpid|r
    >>|cRXP_WARN_这将允许您训练|r |T132140:0|t[Claw Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step
    #xprate <2.1
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>前往远方哨所
    .zoneskip The Barrens
step
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
    .target Uzzek

]])