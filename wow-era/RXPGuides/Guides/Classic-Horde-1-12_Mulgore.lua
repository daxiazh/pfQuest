local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
#era/som--h
<< Horde
#name 1-6 莫高雷
#version 11
#group RestedXP 部落 1-22
#defaultfor Tauren
#next 6-12 莫高雷;6-13 莫高雷


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_您选择了一本专为牛头人设计的指南。由于缺少一条只针对牛头人的主要任务线，该区域对您来说不太适用。建议您选择与您开始的相同的起始区域|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .accept 747 >>接任务: |cRXP_LOOT_开始狩猎|r
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .accept 752 >>接任务: |cRXP_LOOT_一件琐事|r
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Plainstriders|r。掠夺他们直到你有价值 10 铜的商贩物品（包括你的盔甲）|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >>供应商垃圾
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 6673 >>训练 |T132333:0|t[战斗呐喊]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .train 8017 >>训练 |T136086:0|t[石化武器]
    .target Meela Dawnstrider
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Plainstriders|r。掠夺他们的 |cRXP_LOOT_Meat|r 和 |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长的母亲|r
    .turnin 752 >>交任务: |cRXP_FRIENDLY_一件琐事|r
    .accept 753 >>接任务: |cRXP_LOOT_一件琐事|r
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>拾取 |cRXP_FRIENDLY_Hawkwind|r 后面井里的 |cRXP_LOOT_Water Pitcher|r
    .complete 753,1 --Water Pitcher (1)
step
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05
    >>杀死 |cRXP_ENEMY_Plainstriders|r。掠夺他们的 |cRXP_LOOT_Meat|r 和 |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>交任务: |cRXP_FRIENDLY_开始狩猎|r << Druid
    .turnin 747 >>交任务: |cRXP_FRIENDLY_开始狩猎|r << !Druid
    .accept 3091 >>接任务: |cRXP_LOOT_简易便笺|r << Warrior
    .accept 3092 >>接任务: |cRXP_LOOT_风化便笺|r << Hunter
    .accept 3093 >>接任务: |cRXP_LOOT_符文便笺|r << Shaman
    .accept 3094 >>接任务: |cRXP_LOOT_绿色便笺|r << Druid
    .accept 750 >>接任务: |cRXP_LOOT_继续狩猎|r
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    >>|cRXP_BUY_从她那里购买|r |T132384:0|t[Light Shots] |cRXP_BUY_|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>供应商垃圾
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .turnin 753 >>交任务: |cRXP_FRIENDLY_一件琐事|r
    .accept 755 >>接任务: |cRXP_LOOT_大地之母仪祭|r
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_交谈。从他那里购买|r |T135139:0|t[Short Staff] |cRXP_BUY_|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak
step << Rogue
    #completewith RitesoftheEarthmother
    +装备 |T135139:0|t[短棍]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Mountain Cougars|r。掠夺它们的 |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_灰舌先知|r
    >>|cRXP_WARN_在路上磨碎怪物|r
    .turnin 755 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 757 >>接任务: |cRXP_LOOT_力量仪祭|r
    .target Seer Graytongue
step
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86
    >>杀死 |cRXP_ENEMY_Mountain Cougars|r。掠夺它们的 |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #xprate <1.5
#loop
	.line Mulgore,45.56,87.95,46.92,87.84,48.67,86.83,50.65,85.87,51.01,83.71,52.06,81.53,51.87,79.58,51.67,77.39,51.95,75.16,50.32,76.33,48.85,75.82,47.41,75.30,46.80,78.21,45.84,80.41,45.03,82.15,44.09,83.89,43.90,86.08,45.56,87.95
	.goto Mulgore,45.56,87.95,25,0
	.goto Mulgore,46.92,87.84,25,0
	.goto Mulgore,48.67,86.83,25,0
	.goto Mulgore,50.65,85.87,25,0
	.goto Mulgore,51.01,83.71,25,0
	.goto Mulgore,52.06,81.53,25,0
	.goto Mulgore,51.87,79.58,25,0
	.goto Mulgore,51.67,77.39,25,0
	.goto Mulgore,51.95,75.16,25,0
	.goto Mulgore,50.32,76.33,25,0
	.goto Mulgore,48.85,75.82,25,0
	.goto Mulgore,47.41,75.30,25,0
	.goto Mulgore,46.80,78.21,25,0
	.goto Mulgore,45.84,80.41,25,0
	.goto Mulgore,45.03,82.15,25,0
	.goto Mulgore,44.09,83.89,25,0
	.goto Mulgore,43.90,86.08,25,0
	.goto Mulgore,45.56,87.95,25,0
    .xp 3+1150 >>升级至 1150+/1400xp
    .mob Plainstrider
step
    #xprate >1.49
#loop
	.line Mulgore,45.56,87.95,46.92,87.84,48.67,86.83,50.65,85.87,51.01,83.71,52.06,81.53,51.87,79.58,51.67,77.39,51.95,75.16,50.32,76.33,48.85,75.82,47.41,75.30,46.80,78.21,45.84,80.41,45.03,82.15,44.09,83.89,43.90,86.08,45.56,87.95
	.goto Mulgore,45.56,87.95,25,0
	.goto Mulgore,46.92,87.84,25,0
	.goto Mulgore,48.67,86.83,25,0
	.goto Mulgore,50.65,85.87,25,0
	.goto Mulgore,51.01,83.71,25,0
	.goto Mulgore,52.06,81.53,25,0
	.goto Mulgore,51.87,79.58,25,0
	.goto Mulgore,51.67,77.39,25,0
	.goto Mulgore,51.95,75.16,25,0
	.goto Mulgore,50.32,76.33,25,0
	.goto Mulgore,48.85,75.82,25,0
	.goto Mulgore,47.41,75.30,25,0
	.goto Mulgore,46.80,78.21,25,0
	.goto Mulgore,45.84,80.41,25,0
	.goto Mulgore,45.03,82.15,25,0
	.goto Mulgore,44.09,83.89,25,0
	.goto Mulgore,43.90,86.08,25,0
	.goto Mulgore,45.56,87.95,25,0
    .xp 3+1025 >>升级至 1025+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_升级 |cRXP_ENEMY_Plainstriders|r。掠夺它们直到你有价值 2 银的供应商物品|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_升级 |cRXP_ENEMY_Plainstriders|r。掠夺它们直到你拥有价值 1 银的供应商物品|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>交任务: |cRXP_FRIENDLY_继续狩猎|r
    .accept 780 >>接任务: |cRXP_LOOT_斗猪|r
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >>供应商垃圾
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>接任务: |cRXP_LOOT_刺鬃酋长|r
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .accept 77651 >>接受进入荆棘丛
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .accept 77651 >>接受进入荆棘丛
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 >>交任务: |cRXP_FRIENDLY_风化便笺|r
    .accept 77649 >>接受猎人的力量
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 >>交任务: |cRXP_FRIENDLY_风化便笺|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>交任务: |cRXP_FRIENDLY_绿色便笺|r
    .accept 77648 >>接受牛头人的圣物
    .train 8921 >>列车 |T136096:0|t[月火术]
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>交任务: |cRXP_FRIENDLY_绿色便笺|r
    .train 8921 >>列车 |T136096:0|t[月火术]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦羽先知|r
    .accept 1519 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 >>交任务: |cRXP_FRIENDLY_符文便笺|r
    .accept 77652 >>接受权力的象征
    .train 8042 >>列车 |T136026:0|t[地震]
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 >>交任务: |cRXP_FRIENDLY_符文便笺|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .target Meela Dawnstrider
step
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46
    >>杀死 |cRXP_ENEMY_Battleboars|r。掠夺它们的 |cRXP_LOOT_Flanks|r 和 |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>穿越洞穴
step << Hunter
    #season 2
    #completewith BristlebackBelts
    >>杀死 |cRXP_ENEMY_Bristleback Battleboars|r。拾取它们以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #completewith DirtyMap
    >>杀死 |cRXP_ENEMY_Bristleback Quilboars|r。掠夺他们的 |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step << Shaman
    #season 2
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们以获得 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1,77652,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
step << Shaman
    #season 2
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>继续击杀 |cRXP_ENEMY_Bristleback Shamans|r 并获得 10 层 |T237556:0|t[建筑灵感]，因为它们会对你造成自然伤害
    .mob Bristleback Shaman
    --User must be level 3 to be able to use item!
step << Shaman
    #season 2
    .use 206381 >>使用 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .complete 77652,1 --Learn Spell: Engrave Chest - Overload
    step << Warrior
    #season 2
    .goto Mulgore,62.61,80.84,30,0
    .goto Mulgore,60.33,75.10,20,0
    .goto Mulgore,61.62,76.04
    >>掠夺 |cRXP_PICK_Bristleback 战利品缓存|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_胜利冲刺符文|r]
    .collect 204806,1,77651,1 --Rune of Victory Rush (1)
step << Warrior
    #season 2
    .use 204806 >>使用 |T134419:0|t[|cRXP_FRIENDLY_胜利冲刺符文|r]
    .complete 77651,1 --Learn Spell: Engrave Gloves - Victory Rush
    .isOnQuest 77651
step << Druid
    #season 2
    .goto Mulgore,62.61,80.84,30,0
    .goto Mulgore,60.33,75.10,20,0
    .goto Mulgore,61.62,76.04
    >>掠夺 |cRXP_PICK_Bristleback 战利品缓存|r 以获得 |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
step << Druid
    #season 2
    #label FuryofStormrageRune
    #completewith DirtyMap
    .use 208414 >>装备 |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .aura 408828 >>|cRXP_WARN_使用|r|T136096:0|t[月火术]|cRXP_WARN_杀死6个怪物以解锁偶像|r
    .isOnQuest 77648
step
    #completewith DirtyMap
    #requires FuryofStormrageRune
    .train 414799 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] |cRXP_WARN_进行训练|r |T237472:0|t[怒风之怒]
    .use 208414 
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>杀死大屋内的 |cRXP_ENEMY_Chief Sharptusk Thornmantle|r。搜刮他的 |cRXP_LOOT_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>进入洞穴
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>拾取地面上的 |T134269:0|t[|cRXP_LOOT_Dirt-stained Map|r]。使用它来开始任务
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>接任务: |cRXP_LOOT_纳拉其营地的危机|r
    .use 4851
step << Shaman
    #completewith next
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>杀死 |cRXP_ENEMY_Bristleback Quilboars|r。掠夺他们的 |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Hunter
    #season 2
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>杀死 |cRXP_ENEMY_Bristleback Battleboars|r。拾取它们以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step << Hunter
    #season 2
    .use 206168 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .complete 77649,1 --Learn Spell: Engrave Gloves - Chimera Shot
    .isOnQuest 77649
step << Shaman
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #xprate <1.5
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03
    .xp 5+880 >>升级至 880+/2800xp << !Shaman
    .xp 5 >>磨练至 5 级 << Shaman
step
    #xprate >1.49
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03
    .xp 5 >>磨练至 5 级 << !Shaman
    .xp 4+700 >>升级至 700/2100xp << Shaman
step
    #completewith next
    .hs >>前往纳拉奇营地
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r and |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r and |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>交任务: |cRXP_FRIENDLY_斗猪|r
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>交任务: |cRXP_FRIENDLY_刺鬃酋长|r
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>交任务: |cRXP_FRIENDLY_大地的召唤|r << Shaman
    .accept 1520 >>接任务: |cRXP_LOOT_大地的召唤|r << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>交任务: |cRXP_FRIENDLY_纳拉其营地的危机|r
    .turnin 757 >>交任务: |cRXP_FRIENDLY_力量仪祭|r
    .accept 763 >>接任务: |cRXP_LOOT_大地之母仪祭|r
    .goto Mulgore,44.18,76.07
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Seer Ravenfeather << Shaman
    .target Chief Hawkwind
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>前往岩石
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>使用 |T134743:0|t[地球 Sapta]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1521 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦羽先知|r
    .turnin 1521 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 77652 >>上交权力圣像
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .turnin 77649 >>交出猎人的力量
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .turnin 77649 >>交出猎人的力量
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>列车 |T136104:0|t[荆棘]
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .turnin 77648 >>交出牛头人的圣物
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .turnin 77648 >>交出牛头人的圣物
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>列车 |T136104:0|t[荆棘]
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .turnin 77651 >>交至荆棘丛
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .turnin 77651 >>交至荆棘丛
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安图尔·荒野|r
    .accept 1656 >>接任务: |cRXP_LOOT_未完的任务|r
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#classic
#xprate <1.99
<< Horde
#name 6-12 莫高雷
#version 11
#group RestedXP 部落 1-22
#defaultfor Tauren
#next 12-17 荒地


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_对三块|r |cRXP_ENEMY_Lunar Stones|r|cRXP_WARN_施放|r |T136096:0|t[月火术] |cRXP_WARN_。石头之间会出现一个宝箱|r
    >>打开 |cRXP_PICK_Lunar Chest|r 获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_太阳符文|r] |cRXP_WARN_进行训练|r |T236216:0|t[太阳之火]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >>跑向血蹄村
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .target Maur Raincaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>接任务: |cRXP_LOOT_风怒鹰身人|r
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 745 >>接任务: |cRXP_LOOT_土地之争|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .target Ruul Eagletalon
    .target Baine Bloodhoof
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 >>交任务: |cRXP_FRIENDLY_未完的任务|r
    .home >>将你的炉石设置为血蹄村
    .target Innkeeper Kauth
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (7s 1c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135611:0|t[华丽火枪] (4s 14c)，就卖掉它。如果你的钱还不够，可以稍后再回来
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r |T135611:0|t[华丽火枪] |cRXP_BUY_|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah交谈|r
    >>|cRXP_BUY_从他那里购买|r |T132384:0|t[Light Shots] |cRXP_BUY_|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #completewith Well
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Well
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Well
    +装备 |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Maur, |cRXP_FRIENDLY_扎尔曼-双月|r, |cRXP_FRIENDLY_哈肯·风之图腾|r, Mull
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 771 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .goto Mulgore,47.76,57.53
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .accept 748 >>接任务: |cRXP_LOOT_毒水|r
    .goto Mulgore,48.53,60.40
    .target Maur Raincaller
    .target Zarlman Two-Moons
    .target Harken Windtotem
    .target Mull Thunderhorn
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_在整个区域执行任务时获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith Ambercorns
    >>杀死 |cRXP_ENEMY_Prairie Wolves|r 和 |cRXP_ENEMY_Adult Plainstriders|r。掠夺它们的 |cRXP_LOOT_Paws|r 和 |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>对 |cRXP_ENEMY_Rustling Bush|r 施放 |T132212:0|t[猎人印记]
    >>杀死生成的 |cRXP_ENEMY_Venture Co. Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>使用 |T134419:0|t[|cRXP_FRIENDLY_神射符文|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49
    >>收集 |cRXP_PICK_Ambercorns|r。它们可以在地面上的树下找到
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
#loop
	.line Mulgore,50.82,66.66,51.06,63.63,52.79,62.06,53.98,61.68,55.67,62.77,56.46,64.93,56.02,67.78,55.02,69.65,52.33,70.07,50.40,70.24,48.60,69.43,45.98,69.70,48.58,67.37
	.goto Mulgore,50.82,66.66,25,0
	.goto Mulgore,51.06,63.63,25,0
	.goto Mulgore,52.79,62.06,25,0
	.goto Mulgore,53.98,61.68,25,0
	.goto Mulgore,55.67,62.77,25,0
	.goto Mulgore,56.46,64.93,25,0
	.goto Mulgore,56.02,67.78,25,0
	.goto Mulgore,55.02,69.65,25,0
	.goto Mulgore,52.33,70.07,25,0
	.goto Mulgore,50.40,70.24,25,0
	.goto Mulgore,48.60,69.43,25,0
	.goto Mulgore,45.98,69.70,25,0
	.goto Mulgore,48.58,67.37,25,0
    >>杀死 |cRXP_ENEMY_Prairie Wolves|r 和 |cRXP_ENEMY_Adult Plainstriders|r。掠夺它们的 |cRXP_LOOT_Paws|r 和 |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>交任务: |cRXP_FRIENDLY_毒水|r
    .accept 754 >>接任务: |cRXP_LOOT_净化冰蹄之井|r
    .target Mull Thunderhorn
step
    #completewith next
    >>收集井周围的 |cRXP_PICK_Well 石|r
    .complete 771,1 --Well Stone (2)
step
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_使用|r |T135139:0|t[冬蹄净化图腾]|cRXP_WARN_at the Well|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40
    >>收集井周围的 |cRXP_PICK_Well 石|r
    .complete 771,1 --Well Stone (2)
step
    #completewith Gnolls
    >>|cRXP_WARN_在整个区域执行任务时获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个营地之间来回走动。杀死 |cRXP_ENEMY_Palemane Tanners|r、|cRXP_ENEMY_Palemane Skinners|r 和 |cRXP_ENEMY_Palemane Poachers|r。从他们身上搜刮 |cRXP_LOOT_Severed Gnoll Head|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_（9 级罕见）。他太难杀死了。|r
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #label Gnolls
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个营地之间来回走动。杀死 |cRXP_ENEMY_Palemane Tanners|r、|cRXP_ENEMY_Palemane Skinners|r 和 |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_（9 级罕见）。他太难杀死了。|r
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Shaman/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior
    .vendor >>供应商垃圾
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>交任务: |cRXP_FRIENDLY_净化冰蹄之井|r
    .accept 756 >>接任务: |cRXP_LOOT_雷角图腾|r
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务: |cRXP_FRIENDLY_土地之争|r
    .goto Mulgore,47.51,60.16
    .target Mull Thunderhorn
    .target Baine Bloodhoof
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔拉·幼蹄|r
    .train 3273 >>列车 |T135966:0|t[急救]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (7s 1c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135611:0|t[华丽火枪] (4s 14c)，就卖掉它。如果你的钱还不够，可以稍后再回来
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r |T135611:0|t[华丽火枪] |cRXP_BUY_|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #completewith Clawsx
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Clawsx
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Clawsx
    +装备 |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    >>|cRXP_WARN_不要跟随出现的狼|r
    .turnin 771 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 772 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .target Zarlman Two-Moons
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 5186 >>训练你的职业法术
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业法术
    .target Narm Skychaser
    .xp <8,1
step
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .accept 749 >>接任务: |cRXP_LOOT_不幸的商队|r
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_在整个区域执行任务时获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Clawsx
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Stalkers|r 和 |cRXP_ENEMY_Cougars|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob 草原狼阿尔法
    .mob Flatland Cougar
step
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 751 >>接任务: |cRXP_LOOT_不幸的商队|r
step
	#label Clawsx
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    .goto Mulgore,58.1,48.6
    >>杀死 |cRXP_ENEMY_Stalkers|r 和 |cRXP_ENEMY_Cougars|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob 草原狼阿尔法
    .mob Flatland Cougar
step
    #softcore
	#completewith Thunderhorn
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>返回血蹄村
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,758,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (7s 1c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,758,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135611:0|t[华丽火枪] (4s 14c)，就卖掉它。如果你的钱还不够，可以稍后再回来
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r |T135611:0|t[华丽火枪] |cRXP_BUY_|r
    .collect 2509,1,758,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Loorat交谈|r
    .collect 2516,1000,818,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #completewith ThunderhornCleanse
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith ThunderhornCleanse
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith ThunderhornCleanse
    +装备 |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈兰特·铁枝|r
    .vendor >>供应商垃圾和维修
    .target Harant Ironbrace
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mull, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .accept 758 >>接任务: |cRXP_LOOT_净化雷角之井|r
    .goto Mulgore,48.53,60.40
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #label Thunderhorn
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .accept 758 >>接任务: |cRXP_LOOT_净化雷角之井|r
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业法术
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 5186 >>训练你的职业法术
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Shaman/Druid
    >>|cRXP_BUY_从他那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior
    .vendor >>供应商垃圾 << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #era/som
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_使用|r |T135139:0|t[雷角净化图腾] |cRXP_WARN_at 井|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。从他们身上搜刮 |cRXP_LOOT_Artifact Storage Key|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step
    .goto Mulgore,31.27,49.87
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。掠夺他们的 |cRXP_LOOT_Prospector's Picks|r
    >>|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Bael'dun Appraisers|r 施法|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(远程施法：治疗自己或附近生命值低于 50% 的怪物，治疗量约为 75 点生命值)|r
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
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_杀死至少一次使用|r |T136026:0|t[地震] |cRXP_WARN_造成伤害的敌人。重复此操作 10 次即可获得|r |T136116:0|t[灵感] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验的敌人执行此操作才能获得叠加|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step << Warrior
    #season 2
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
    >>杀死 |cRXP_ENEMY_Windfury 风巫|r 和 |cRXP_ENEMY_Windfury 鹰身女妖|r。掠夺她们的 |cRXP_LOOT_Talons|r 和 |cRXP_LOOT_Severed Harpy Head|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
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
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入位于风怒鹰身女妖正北的洞穴
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 773 >>接任务: |cRXP_LOOT_智慧仪祭|r
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫磺图标]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套：熔火冲击]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >>摧毁: |cRXP_ENEMY_先知之水|r, 它在你的背包中. 不再需要它了
step
    #completewith SacredBurial
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>留意 |cRXP_ENEMY_Ghost Howl|r。搜刮他的 |T134358:0|t[|cRXP_LOOT_Demon Scarred 披风|r]。使用它来开始任务
    >>|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Ghost Howl|r 由于级别 12 而较难|r
    .collect 4854,1,770 --Collect Demon Scarred 披风
    .accept 770 >>接任务: |cRXP_LOOT_恶魔之伤|r
    .use 4854
    .unitscan Ghost Howl
step
	#completewith next
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .accept 833 >>接任务: |cRXP_LOOT_神圣的墓地|r
    .target Lorekeeper Raintotem
step << Warrior
    #season 2
    #completewith RiteofWisdom
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r。掠夺他们以获得 |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 >>交任务: |cRXP_FRIENDLY_智慧仪祭|r
    .accept 775 >>接任务: |cRXP_LOOT_雷霆崖之旅|r
    .target Ancestral Spirit
step << Warrior
    #season 2
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
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r。掠夺他们以获得 |cRXP_LOOT_Severed Quilboar Head|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
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
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .turnin 833 >>交任务: |cRXP_FRIENDLY_神圣的墓地|r
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
	>>杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <1.5
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+3020 >>升级至 3020+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+3720 >>升级至 3720+/6500xp
    .isQuestComplete 761
step
    #xprate <1.5
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+3700 >>升级至 3700+/6500xp
    .isQuestComplete 766
step
    #xprate <1.5
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+4400 >>升级至 4400+/6500xp
step
    #xprate >1.49
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+1280 >>升级至 1280+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate >1.49
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+2330 >>升级至 2330+/6500xp
    .isQuestComplete 761
step
    #xprate >1.49
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+2300 >>升级至 2300+/6500xp
    .isQuestComplete 766
step
    #xprate >1.49
    #optional
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    .xp 9+3350 >>升级至 3350+/6500xp
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>炉火村至血蹄村
    .use 6948
step << Druid
    #sofcore
    #completewith Bloodhoofturnins1
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << Druid
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>返回血蹄村
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .vendor >>供应商垃圾
    .target Innkeeper Kauth
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .turnin 770 >>交任务: |cRXP_FRIENDLY_恶魔之伤|r
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vateya|r in Bloodhoof Village
    >>上交你收集到的 |cRXP_LOOT_Heads|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Baine, Ruul, Mull, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
    .accept 759 >>接任务: |cRXP_LOOT_蛮鬃图腾|r
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, and |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
    .accept 759 >>接任务: |cRXP_LOOT_蛮鬃图腾|r
    .goto Mulgore,48.54,60.38
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
step
    #completewith AlphaTeeth
    .destroy 4702 >>摧毁: |cRXP_ENEMY_勘察员的锄头|r, 它在你的背包中. 不再需要它了
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah交谈|r
    >>|cRXP_BUY_从他那里购买|r |T132384:0|t[重磅镜头] |cRXP_BUY_|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .trainer >>训练你的职业法术
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .trainer >>训练你的职业法术
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6061 >>接任务: |cRXP_LOOT_驯服野兽|r
    .trainer >>训练你的职业法术
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .trainer >>训练你的职业法术
    .accept 5928 >>接任务: |cRXP_LOOT_响应召唤|r
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 8924 >>训练你的职业法术
    .target Gennia Runetotem
step << Hunter
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43
    .use 15914 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on an|r |cRXP_ENEMY_Adult Plainstrider|r |cRXP_WARN_at最大范围|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6061 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6087 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27
    .use 15915 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Prairie Stalker|r |cRXP_WARN_at 最大范围|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6087 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6088 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .goto Mulgore,47.25,41.33
    .use 15916 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Swoop|r |cRXP_WARN_at 最大范围并在他们击倒你时立即重新施放|r
    >>|cRXP_WARN_如果失败并且驯兽棒充能用完，请放弃任务，然后再次拾起并回来|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6088 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6089 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Yaw Sharpmane
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Shaman/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .accept 861 >>接任务: |cRXP_LOOT_猎人之道|r
    .target Skorn Whitecloud
step
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
    .accept 765 >>接任务: |cRXP_LOOT_菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
step
    #completewith AlphaTeeth
    >>杀死 |cRXP_ENEMY_平原徘徊者s|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 861,1 --平原徘徊者 Claw (4)
    .mob 平原徘徊者
step << Hunter
    #completewith next
    .cast 1515 >>驯服一只 |cRXP_ENEMY_草原狼阿尔法|r
    >>|cRXP_WARN_这将允许您训练|r |T132140:0|t[Claw Rank 2]
    .mob 草原狼阿尔法
step
    #label AlphaTeeth
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01
    >>杀死该区域的 |cRXP_ENEMY_草原狼阿尔法s|r。掠夺他们的 |cRXP_LOOT_Teeth|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob 草原狼阿尔法
step
    #softcore
	#completewith Thunderhorn2
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >>返回血蹄村
step
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>交任务: |cRXP_FRIENDLY_蛮鬃图腾|r
    .accept 760 >>接任务: |cRXP_LOOT_净化蛮鬃之井|r
    .target Mull Thunderhorn
step
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step << !Druid
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获取陶拉霍营地飞行路线
	.target Omusa Thunderhorn
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获取陶拉霍营地飞行路线
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Omusa Thunderhorn
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将炉石设置为雷霆崖
    .target Innkeeper Pala
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .accept 886 >>接任务: |cRXP_LOOT_贫瘠之地的绿洲|r
    .target 大德鲁伊哈缪尔·符文图腾
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务: |cRXP_FRIENDLY_响应召唤|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target 大德鲁伊哈缪尔·符文图腾
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target 大德鲁伊哈缪尔·符文图腾
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>施放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5922 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .accept 5930 >>接任务: |cRXP_LOOT_巨熊之灵|r
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5930,1 --Seek out the Great 熊 Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great 熊 Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>施放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5930 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .accept 5932 >>接任务: |cRXP_LOOT_返回雷霆崖|r
    .target Dendrite Starblaze
step << Druid
    #completewith Druid熊Form
    .hs >>炉石到雷霆崖
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label Druid熊Form
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5932 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
    .accept 6002 >>接任务: |cRXP_LOOT_身心之力|r
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>跑到枭兽石处并使用 |T132857:0|t[塞纳里奥月尘]。杀死 |cRXP_ENEMY_Lunaclaw|r
    >>|cRXP_WARN_避开该区域的|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔格·锐角|r
    .accept 854 >>接任务: |cRXP_LOOT_十字路口之旅|r
    .target Kirge Sternhorn
step
    #completewith next
    .goto The Barrens,52.07,31.96,120 >>向北前往十字路口
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>交任务: |cRXP_FRIENDLY_贫瘠之地的绿洲|r << Druid
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
    .target Tonga Runetotem
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .turnin 854 >>交任务: |cRXP_FRIENDLY_十字路口之旅|r
    .target Thork
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .fp The Crossroads >>获取十字路口飞行路线
    .target Devrak
step
    .goto The Barrens,51.1,29.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .accept 6361 >>接任务: |cRXP_LOOT_一捆兽皮|r
    .target Jahan Hawkwing
step
    #completewith next
    >>在被遗忘的池塘周围收集 |cRXP_LOOT_Laden 蘑菇|r
    >>|cRXP_WARN_拾取蘑菇时请与 |cRXP_ENEMY_Kolkar|r |cRXP_WARN_保持最大距离。蘑菇等级为 12-14|r
    >>|cRXP_WARN_此任务的后续任务有强大的 |cRXP_FRIENDLY_Cauldron Stinger|r |cRXP_WARN_作为奖励。如果您不打算使用它，可以暂时跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下至 |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
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
step
    #softcore
	#completewith ZamahPickup
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>回到十字路口
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_WARN_等待 RP 完成|r
    >>|cRXP_WARN_这将开始一个 45 分钟的计时任务|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_WARN_这将开始一个 45 分钟的计时任务|r
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #completewith RideToTB
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 >>交任务: |cRXP_FRIENDLY_一捆兽皮|r
    .accept 6362 >>接任务: |cRXP_LOOT_飞往雷霆崖|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_你正在进行限时任务，不要闲逛。任务将在接取后约 5-10 分钟内完成|r
    .isOnQuest 853
step
    #label RideToTB
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安哈努|r
    .turnin 6362 >>交任务: |cRXP_FRIENDLY_飞往雷霆崖|r
    .accept 6363 >>接任务: |cRXP_LOOT_双足飞龙管理员塔尔|r
    .target Ahanu
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 861 >>交任务: |cRXP_FRIENDLY_猎人之道|r
    .accept 860 >>接任务: |cRXP_LOOT_瑟格拉·黑棘|r
    .target Melor Stonehoof
    .isQuestComplete 861
step << Hunter
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .accept 860 >>接任务: |cRXP_LOOT_瑟格拉·黑棘|r
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_浩特·雷角|r
	.turnin 6089 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
    .train 24547 >>训练你的宠物法术
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith CauldronStirrer
    +|cRXP_WARN_将|r |T132162:0|t[野兽训练] |cRXP_WARN_拖到你的动作栏上。向你的宠物传授技能|r
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 199 >>训练双手锤
    .target Ansekhwas
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车五线谱
    .target Ansekhwa
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .accept 744 >>接任务: |cRXP_LOOT_准备典礼|r
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .accept 76156 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往精神崛起并进入视野之池
step
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .target Apothecary Zamah
    .isOnQuest 853
step
    #completewith ReturntoJahan
    +装备 |T135145:0|t[大锅搅拌器]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r and |cRXP_FRIENDLY_Mooart|r on the Spirit Rise
    +当 |cRXP_FRIENDLY_Mooart|r 变得有敌意时将其杀死
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r
    >>从她那里获得 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .turnin 6363 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员塔尔|r
    .accept 6364 >>接任务: |cRXP_LOOT_向加翰回复|r
    .target Tal
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>交任务: |cRXP_FRIENDLY_雷霆崖之旅|r
    .accept 776 >>接任务: |cRXP_LOOT_大地之母仪祭|r
    .target Cairne Bloodhoof
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 6002 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .target Turak Runetotem
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫兰塔|r
    >>|cRXP_WARN_这将解锁一个简单的任务。如果你已经有 2 个职业，请跳过此步骤|r
    .train 8613 >>列车 |T134366:0|t[剥皮]
    .target Mooranta
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔伦·陆行者|r
    .accept 768 >>接任务: |cRXP_WARN_收集皮革|r
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买十二|r |T134252:0|t[轻皮革] |cRXP_BUY_|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔伦·陆行者|r
    .turnin 768 >>交任务: |cRXP_FRIENDLY_收集皮革|r
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_从她那里购买|r |T133972:0|t[Tough Jerky] |cRXP_BUY_来喂养你的宠物|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #loop
    #completewith VentureCoKills
    >>打开矿井内部和外部的 |cRXP_PICK_Blasting Supplies|r。拾取它们以获得 |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_如果可能的话，留在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
	#era/som
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >>Travel to 接任务: |cRXP_WARN_风险投资公司|r. Mine
step << Shaman
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Venture Co. 工人|r 和 |cRXP_ENEMY_Venture Co. 主管|r
    .complete 764,1 --风险投资公司员工 (14)
    .complete 764,2 --风险投资公司主管 (6)
    .mob 风险投资公司员工
    .mob 风险投资公司主管
step << Shaman
    #season 2
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Run into the mine and hug the right/east side. Kill |cRXP_ENEMY_接任务: |cRXP_WARN_菲兹普罗克主管|r|r. Loot him for his |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 接任务: |cRXP_WARN_菲兹普罗克主管|r
step << Shaman
    #season 2
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
    .complete 764,2 --风险投资公司主管 (6)
    .mob 风险投资公司员工
    .mob 风险投资公司主管
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
step
    #sticky
    #completewith ThunderBluff
    >>留意 |cRXP_ENEMY_Ghost Howl|r。搜刮他的 |T134358:0|t[|cRXP_LOOT_Demon Scarred 披风|r]。使用它来开始任务
    >>如果你找不到他，请跳过此步骤
    .collect 4854,1,770 --Collect Demon Scarred 披风
    .accept 770 >>接任务: |cRXP_LOOT_恶魔之伤|r
    .use 4854
    .unitscan Ghost Howl
step << Druid
    #season 2
    #completewith ProwlerClaws
    >>杀死 |cRXP_ENEMY_平原徘徊者s|r 和 |cRXP_ENEMY_草原狼阿尔法s|r。掠夺他们以获得 |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼阿尔法
    .train 410025,1
step
    #completewith Arrachea
    >>杀死 |cRXP_ENEMY_平原徘徊者s|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 861,1 --平原徘徊者 Claw (4)
    .mob 平原徘徊者
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
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>拾取地面上的 |cRXP_LOOT_Windfury Cones|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step
    .goto Mulgore,31.7,28.2,90,0
    .goto Mulgore,30.2,19.5,90,0
    .goto Mulgore,31.7,28.2
    >>杀死 |cRXP_ENEMY_Windfury Harpies|r。掠夺他们的 |cRXP_LOOT_Feathers|r
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
    .mob 风怒女王
    .mob 风怒女巫
step
    .goto Mulgore,42.5,13.8
    >>|cRXP_WARN_使用|r |T135139:0|t[蛮鬃净化图腾] |cRXP_WARN_at the Well|r
    >>在井中使用蛮鬃净化图腾
    .complete 760,1 --Cleanse the Wildmane Well (1)
step << Warrior/Hunter
    season 2
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>四处寻找 |cRXP_ENEMY_Arra'Chea |r (大黑科多兽)。他顺时针行走。杀死他并搜刮他的 |cRXP_LOOT_Horn|r << !Warrior !Hunter
    >>四处寻找 |cRXP_ENEMY_Arra'Chea|r（大黑科多兽）。他顺时针行走。杀死他并拾取他的 |cRXP_LOOT_Horn|r 和 |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    >>四处寻找 |cRXP_ENEMY_Arra'Chea|r (大黑科多兽)。他顺时针行走。杀死他并搜刮他的 |cRXP_LOOT_Horn|r 和 |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    .complete 776,1 --Horn of Arra'chea (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .unitscan Arra'chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
    --VV .line
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
    #label Arrachea
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>四处寻找 |cRXP_ENEMY_Arra'Chea |r (大黑科多兽)。他顺时针行走。杀死他并搜刮他的 |cRXP_LOOT_Horn|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
    --VV .line
step
    #label ProwlerClaws
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>杀死 |cRXP_ENEMY_平原徘徊者s|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 861,1 --平原徘徊者 Claw (4)
    .mob 平原徘徊者
step << Druid
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>杀死 |cRXP_ENEMY_平原徘徊者s|r 和 |cRXP_ENEMY_草原狼阿尔法s|r。掠夺他们以获得 |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼阿尔法
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_熊之怒偶像|r]
    .use 206954
    .train 410025,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_保持 50+ 怒气至少 60 秒即可学习|r |T132135:0|t[Mangle]
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_熊之怒偶像|r] |cRXP_WARN_训练|r |T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1
step
    #completewith next
    .subzone 1638 >>返回雷霆崖
    .zoneskip Thunder Bluff
step
    #label RFCPickups1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
    .target Rahauro
    .dungeon RFC
step
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .target Cairne Bloodhoof
    .isQuestComplete 776
step
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .turnin 744 >>交任务: |cRXP_FRIENDLY_准备典礼|r
    .target Eyahn Eagletalon
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
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 861 >>交任务: |cRXP_FRIENDLY_猎人之道|r
    .accept 860 >>接任务: |cRXP_LOOT_瑟格拉·黑棘|r
    .target Melor Stonehoof
step
    #completewith WildManeTurnIn
    .subzone 222 >>前往血蹄村
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .turnin 770 >>交任务: |cRXP_FRIENDLY_恶魔之伤|r
    .target Skorn Whitecloud
    .isOnQuest 770
step
    #label WildManeTurnIn
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>交任务: |cRXP_FRIENDLY_净化蛮鬃之井|r
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >>训练你的职业法术
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 8936 >>训练你的职业法术
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 7384 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 14281 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <12,1
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Travel to 接任务: |cRXP_WARN_风险投资公司|r. Mine
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Venture Co. 工人|r 和 |cRXP_ENEMY_Venture Co. 主管|r
    .complete 764,1 --风险投资公司员工 (14)
    .complete 764,2 --风险投资公司主管 (6)
    .mob 风险投资公司员工
    .mob 风险投资公司主管
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Run into the mine and hug the right/east side. Kill |cRXP_ENEMY_接任务: |cRXP_WARN_菲兹普罗克主管|r|r. Loot him for his |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 接任务: |cRXP_WARN_菲兹普罗克主管|r
step
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
    .complete 764,2 --风险投资公司主管 (6)
    .mob 风险投资公司员工
    .mob 风险投资公司主管
step
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
step
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
step
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
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .trainer >>训练你的职业法术
    .target Narm Skychaser
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .trainer >>训练你的职业法术
    .target Gennia Runetotem
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .trainer >>训练你的职业法术
    .target Krang Stonehoof
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .trainer >>训练你的职业法术
    .target Yaw Sharpmane
step
    #completewith HidesTurnIn
    .hs >>炉边到十字路口
    .cooldown item,6948,>0
    .use 6948
step
    #completewith next
    .subzone 378 >>前往陶拉霍营地
step
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>飞向十字路口
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
step
    #label HidesTurnIn
    .goto The Barrens,51.1,29.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
    .target Jahan Hawkwing
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 860 >>交任务: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .target Gazrog
step << Shaman
    #completewith next
    >>检查 |cRXP_FRIENDLY_Kranal|r 旁边的陈的空酒桶。拾取它并开始任务，否则你会在稍后得到它
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2984 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Kranal Fiss
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
    .goto Durotar,39.16,58.56,10 >>沿着山上的小路前往 |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_小心不要从山上掉下来，路很窄。如果掉下去，你可能会死|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek||r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
    .target Uzzek
step << Warrior
    .goto Durotar,39.11,30.76,40,0
    .goto Durotar,39.34,28.25,40,0
    .goto Durotar,39.11,26.46,40,0
    .goto Durotar,39.39,25.05,40,0
    .goto Durotar,40.00,24.06,40,0
    .goto Durotar,42.51,24.29,40,0
    .goto Durotar,39.34,28.25
    >>杀死 |cRXP_ENEMY_Lightning Hides|r。掠夺他们的 |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek||r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
    .target Uzzek

]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate >1.99
#version 1
#group RestedXP 部落 1-22
#name 1-7 莫高雷
#next 7-13 莫高雷
#defaultfor Tauren


step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_您选择了一本专为牛头人设计的指南。由于缺少一条只针对牛头人的主要任务线，该区域对您来说不太适用。建议您选择与您开始的相同的起始区域|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .accept 747 >>接任务: |cRXP_LOOT_开始狩猎|r
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .accept 752 >>接任务: |cRXP_LOOT_一件琐事|r
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Plainstriders|r。掠夺他们直到你有价值 10 铜的商贩物品（包括你的盔甲）|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >>供应商垃圾
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 6673 >>训练 |T132333:0|t[战斗呐喊]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .train 8017 >>训练 |T136086:0|t[石化武器]
    .target Meela Dawnstrider
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Plainstriders|r。掠夺他们的 |cRXP_LOOT_Meat|r 和 |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长的母亲|r
    .turnin 752 >>交任务: |cRXP_FRIENDLY_一件琐事|r
    .accept 753 >>接任务: |cRXP_LOOT_一件琐事|r
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>拾取 |cRXP_FRIENDLY_Hawkwind|r 后面井里的 |cRXP_LOOT_Water Pitcher|r
    .complete 753,1 --Water Pitcher (1)
step
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05
    >>杀死 |cRXP_ENEMY_Plainstriders|r。掠夺他们的 |cRXP_LOOT_Meat|r 和 |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>交任务: |cRXP_FRIENDLY_开始狩猎|r << Druid
    .turnin 747 >>交任务: |cRXP_FRIENDLY_开始狩猎|r << !Druid
    .accept 3091 >>接任务: |cRXP_LOOT_简易便笺|r << Warrior
    .accept 3092 >>接任务: |cRXP_LOOT_风化便笺|r << Hunter
    .accept 3093 >>接任务: |cRXP_LOOT_符文便笺|r << Shaman
    .accept 3094 >>接任务: |cRXP_LOOT_绿色便笺|r << Druid
    .accept 750 >>接任务: |cRXP_LOOT_继续狩猎|r
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    >>|cRXP_BUY_从她那里购买|r |T132384:0|t[Light Shots] |cRXP_BUY_|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >>供应商垃圾
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .turnin 753 >>交任务: |cRXP_FRIENDLY_一件琐事|r
    .accept 755 >>接任务: |cRXP_LOOT_大地之母仪祭|r
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_交谈。从他那里购买|r |T135139:0|t[Short Staff] |cRXP_BUY_|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak
step << Rogue
    #completewith RitesoftheEarthmother
    +装备 |T135139:0|t[短棍]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Mountain Cougars|r。掠夺它们的 |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_灰舌先知|r
    -->>|cRXP_WARN_在路上磨碎怪物|r
    .turnin 755 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 757 >>接任务: |cRXP_LOOT_力量仪祭|r
    .target Seer Graytongue
step
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86
    >>杀死 |cRXP_ENEMY_Mountain Cougars|r。掠夺它们的 |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #optional
#loop
	.line Mulgore,45.56,87.95,46.92,87.84,48.67,86.83,50.65,85.87,51.01,83.71,52.06,81.53,51.87,79.58,51.67,77.39,51.95,75.16,50.32,76.33,48.85,75.82,47.41,75.30,46.80,78.21,45.84,80.41,45.03,82.15,44.09,83.89,43.90,86.08,45.56,87.95
	.goto Mulgore,45.56,87.95,25,0
	.goto Mulgore,46.92,87.84,25,0
	.goto Mulgore,48.67,86.83,25,0
	.goto Mulgore,50.65,85.87,25,0
	.goto Mulgore,51.01,83.71,25,0
	.goto Mulgore,52.06,81.53,25,0
	.goto Mulgore,51.87,79.58,25,0
	.goto Mulgore,51.67,77.39,25,0
	.goto Mulgore,51.95,75.16,25,0
	.goto Mulgore,50.32,76.33,25,0
	.goto Mulgore,48.85,75.82,25,0
	.goto Mulgore,47.41,75.30,25,0
	.goto Mulgore,46.80,78.21,25,0
	.goto Mulgore,45.84,80.41,25,0
	.goto Mulgore,45.03,82.15,25,0
	.goto Mulgore,44.09,83.89,25,0
	.goto Mulgore,43.90,86.08,25,0
	.goto Mulgore,45.56,87.95,25,0
    .xp 3+850 >>升级至 850+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_升级 |cRXP_ENEMY_Plainstriders|r。掠夺它们直到你有价值 2 银的供应商物品|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_升级 |cRXP_ENEMY_Plainstriders|r。掠夺它们直到你拥有价值 1 银的供应商物品|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>交任务: |cRXP_FRIENDLY_继续狩猎|r
    .accept 780 >>接任务: |cRXP_LOOT_斗猪|r
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >>供应商垃圾
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>接任务: |cRXP_LOOT_刺鬃酋长|r
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .accept 77651 >>接受进入荆棘丛
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .accept 77651 >>接受进入荆棘丛
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 >>交任务: |cRXP_FRIENDLY_风化便笺|r
    .accept 77649 >>接受猎人的力量
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 >>交任务: |cRXP_FRIENDLY_风化便笺|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>交任务: |cRXP_FRIENDLY_绿色便笺|r
    .accept 77648 >>接受牛头人的圣物
    .train 8921 >>列车 |T136096:0|t[月火术]
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>交任务: |cRXP_FRIENDLY_绿色便笺|r
    .train 8921 >>列车 |T136096:0|t[月火术]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦羽先知|r
    .accept 1519 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 >>交任务: |cRXP_FRIENDLY_符文便笺|r
    .accept 77652 >>接受权力的象征
    .train 8042 >>列车 |T136026:0|t[地震]
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 >>交任务: |cRXP_FRIENDLY_符文便笺|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .target Meela Dawnstrider
step
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46
    >>杀死 |cRXP_ENEMY_Battleboars|r。掠夺它们的 |cRXP_LOOT_Flanks|r 和 |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto Mulgore,59.67,83.33,30 >>穿越洞穴
step << Hunter
    #season 2
    #completewith BristlebackBelts
    >>杀死 |cRXP_ENEMY_Bristleback Battleboars|r。拾取它们以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #completewith DirtyMap
    >>杀死 |cRXP_ENEMY_Bristleback Quilboars|r。掠夺他们的 |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step << Shaman
    #season 2
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们以获得 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1,77652,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
step << Shaman
    #season 2
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>继续击杀 |cRXP_ENEMY_Bristleback Shamans|r 并获得 10 层 |T237556:0|t[建筑灵感]，因为它们会对你造成自然伤害
    .mob Bristleback Shaman
    --User must be level 3 to be able to use item!
step << Shaman
    #season 2
    .use 206381 >>使用 |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .complete 77652,1 --Learn Spell: Engrave Chest - Overload
step << Warrior
    #season 2
    .goto Mulgore,62.61,80.84,30,0
    .goto Mulgore,60.33,75.10,20,0
    .goto Mulgore,61.62,76.04
    >>掠夺 |cRXP_PICK_Bristleback 战利品缓存|r 以获得 |T134419:0|t[|cRXP_FRIENDLY_胜利冲刺符文|r]
    .collect 204806,1,77651,1 --Rune of Victory Rush (1)
step << Warrior
    #season 2
    .use 204806 >>使用 |T134419:0|t[|cRXP_FRIENDLY_胜利冲刺符文|r]
    .complete 77651,1 --Learn Spell: Engrave Gloves - Victory Rush
    .isOnQuest 77651
step << Druid
    #season 2
    .goto Mulgore,62.61,80.84,30,0
    .goto Mulgore,60.33,75.10,20,0
    .goto Mulgore,61.62,76.04
    >>掠夺 |cRXP_PICK_Bristleback 战利品缓存|r 以获得 |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
step << Druid
    #season 2
    #label FuryofStormrageRune
    #completewith DirtyMap
    .use 208414 >>装备 |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .aura 408828 >>|cRXP_WARN_使用|r|T136096:0|t[月火术]|cRXP_WARN_杀死6个怪物以解锁偶像|r
    .isOnQuest 77648
step
    #completewith DirtyMap
    #requires FuryofStormrageRune
    .train 414799 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] |cRXP_WARN_进行训练|r |T237472:0|t[怒风之怒]
    .use 208414 
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>杀死大屋内的 |cRXP_ENEMY_Chief Sharptusk Thornmantle|r。搜刮他的 |cRXP_LOOT_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto Mulgore,63.24,82.70,40 >>进入洞穴
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>拾取地面上的 |T134269:0|t[|cRXP_LOOT_Dirt-stained Map|r]。使用它来开始任务
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>接任务: |cRXP_LOOT_纳拉其营地的危机|r
    .use 4851
step << Shaman
    #completewith next
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>杀死 |cRXP_ENEMY_Bristleback Quilboars|r。掠夺他们的 |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Hunter
    #season 2
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>杀死 |cRXP_ENEMY_Bristleback Battleboars|r。拾取它们以获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step << Hunter
    #season 2
    .use 206168 >>使用 |T134419:0|t[|cRXP_FRIENDLY_Rune of The Chimera|r]
    .complete 77649,1 --Learn Spell: Engrave Gloves - Chimera Shot
    .isOnQuest 77649
step << Shaman
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>杀死 |cRXP_ENEMY_Bristleback Shamans|r。掠夺他们的 |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #completewith next
    .hs >>前往纳拉奇营地
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r and |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r and |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>交任务: |cRXP_FRIENDLY_斗猪|r
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>交任务: |cRXP_FRIENDLY_刺鬃酋长|r
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>交任务: |cRXP_FRIENDLY_大地的召唤|r << Shaman
    .accept 1520 >>接任务: |cRXP_LOOT_大地的召唤|r << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>交任务: |cRXP_FRIENDLY_纳拉其营地的危机|r
    .turnin 757 >>交任务: |cRXP_FRIENDLY_力量仪祭|r
    .accept 763 >>接任务: |cRXP_LOOT_大地之母仪祭|r
    .goto Mulgore,44.18,76.07
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Seer Ravenfeather << Shaman
    .target Chief Hawkwind
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >>前往岩石
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>使用 |T134743:0|t[地球 Sapta]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1521 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦羽先知|r
    .turnin 1521 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 77652 >>上交权力圣像
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .turnin 77649 >>交出猎人的力量
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .turnin 77649 >>交出猎人的力量
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>列车 |T136104:0|t[荆棘]
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .turnin 77648 >>交出牛头人的圣物
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .turnin 77648 >>交出牛头人的圣物
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>列车 |T136104:0|t[荆棘]
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>训练 |T136006:0|t[愤怒]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .turnin 77651 >>交至荆棘丛
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .turnin 77651 >>交至荆棘丛
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>列车 |T132269:0|t[格挡]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安图尔·荒野|r
    .accept 1656 >>接任务: |cRXP_LOOT_未完的任务|r
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate >1.99
#version 1
#group RestedXP 部落 1-22
#name 7-13 莫高雷
#next 13-20 贫瘠之地
#defaultfor Tauren


step << Druid
    #season 2
    .goto Mulgore,35.72,69.57
    >>|cRXP_WARN_对三块|r |cRXP_ENEMY_Lunar Stones|r|cRXP_WARN_施放|r |T136096:0|t[月火术] |cRXP_WARN_。石头之间会出现一个宝箱|r
    >>打开 |cRXP_PICK_Lunar Chest|r 获得 |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_太阳符文|r] |cRXP_WARN_进行训练|r |T236216:0|t[太阳之火]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
	#hardcore
	#completewith BloodhoofHome
    .goto Mulgore,47.35,60.70,120 >>跑向血蹄村
step
    #softcore
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .target Maur Raincaller
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>接任务: |cRXP_LOOT_风怒鹰身人|r
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 745 >>接任务: |cRXP_LOOT_土地之争|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .target Ruul Eagletalon
    .target Baine Bloodhoof
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>接任务: |cRXP_LOOT_风怒鹰身人|r
    .goto Mulgore,47.36,62.01
    .turnin 763 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .target Ruul Eagletalon
    .target Baine Bloodhoof
step
    #label BloodhoofHome
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 >>交任务: |cRXP_FRIENDLY_未完的任务|r
    .home >>将你的炉石设置为血蹄村
    .target Innkeeper Kauth
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (7s 1c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135611:0|t[华丽火枪] (4s 14c)，就卖掉它。如果你的钱还不够，可以稍后再回来
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r |T135611:0|t[华丽火枪] |cRXP_BUY_|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah交谈|r
    >>|cRXP_BUY_从他那里购买|r |T132384:0|t[Light Shots] |cRXP_BUY_|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #completewith Well
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Well
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Well
    +装备 |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Maur, |cRXP_FRIENDLY_扎尔曼-双月|r, |cRXP_FRIENDLY_哈肯·风之图腾|r, Mull
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .goto Mulgore,46.97,57.07
    .turnin 767 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 771 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .goto Mulgore,47.76,57.53
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .accept 748 >>接任务: |cRXP_LOOT_毒水|r
    .goto Mulgore,48.53,60.40
    .target Maur Raincaller
    .target Zarlman Two-Moons
    .target Harken Windtotem
    .target Mull Thunderhorn
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_在整个区域执行任务时获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith Ambercorns
    >>杀死 |cRXP_ENEMY_Prairie Wolves|r 和 |cRXP_ENEMY_Adult Plainstriders|r。掠夺它们的 |cRXP_LOOT_Paws|r 和 |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step << Hunter
    #season 2
    .goto Mulgore,59.02,54.36
    >>对 |cRXP_ENEMY_Rustling Bush|r 施放 |T132212:0|t[猎人印记]
    >>杀死生成的 |cRXP_ENEMY_Venture Co. Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>使用 |T134419:0|t[|cRXP_FRIENDLY_神射符文|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49
    >>收集 |cRXP_PICK_Ambercorns|r。它们可以在地面上的树下找到
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
#loop
	.line Mulgore,50.82,66.66,51.06,63.63,52.79,62.06,53.98,61.68,55.67,62.77,56.46,64.93,56.02,67.78,55.02,69.65,52.33,70.07,50.40,70.24,48.60,69.43,45.98,69.70,48.58,67.37
	.goto Mulgore,50.82,66.66,25,0
	.goto Mulgore,51.06,63.63,25,0
	.goto Mulgore,52.79,62.06,25,0
	.goto Mulgore,53.98,61.68,25,0
	.goto Mulgore,55.67,62.77,25,0
	.goto Mulgore,56.46,64.93,25,0
	.goto Mulgore,56.02,67.78,25,0
	.goto Mulgore,55.02,69.65,25,0
	.goto Mulgore,52.33,70.07,25,0
	.goto Mulgore,50.40,70.24,25,0
	.goto Mulgore,48.60,69.43,25,0
	.goto Mulgore,45.98,69.70,25,0
	.goto Mulgore,48.58,67.37,25,0
    >>杀死 |cRXP_ENEMY_Prairie Wolves|r 和 |cRXP_ENEMY_Adult Plainstriders|r。掠夺它们的 |cRXP_LOOT_Paws|r 和 |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>交任务: |cRXP_FRIENDLY_毒水|r
    .accept 754 >>接任务: |cRXP_LOOT_净化冰蹄之井|r
    .target Mull Thunderhorn
step
    #completewith next
    >>收集井周围的 |cRXP_PICK_Well 石|r
    .complete 771,1 --Well Stone (2)
step
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_使用|r |T135139:0|t[冬蹄净化图腾]|cRXP_WARN_at the Well|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40
    >>收集井周围的 |cRXP_PICK_Well 石|r
    .complete 771,1 --Well Stone (2)
step
    #xprate <2.1
    #completewith Gnolls
    >>|cRXP_WARN_在整个区域执行任务时获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #xprate <2.1
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个营地之间来回走动。杀死 |cRXP_ENEMY_Palemane Tanners|r、|cRXP_ENEMY_Palemane Skinners|r 和 |cRXP_ENEMY_Palemane Poachers|r。从他们身上搜刮 |cRXP_LOOT_Severed Gnoll Head|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_（9 级罕见）。他太难杀死了。|r
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #xprate <2.1
    #label Gnolls
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个营地之间来回走动。杀死 |cRXP_ENEMY_Palemane Tanners|r、|cRXP_ENEMY_Palemane Skinners|r 和 |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_（9 级罕见）。他太难杀死了。|r
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Shaman/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior
    .vendor >>供应商垃圾
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>交任务: |cRXP_FRIENDLY_净化冰蹄之井|r
    .accept 756 >>接任务: |cRXP_LOOT_雷角图腾|r
    .goto Mulgore,48.53,60.40
    .turnin 745 >>交任务: |cRXP_FRIENDLY_土地之争|r
    .goto Mulgore,47.51,60.16
    .target Mull Thunderhorn
    .target Baine Bloodhoof
step << Tauren
    #xprate >2.09
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>交任务: |cRXP_FRIENDLY_净化冰蹄之井|r
    .target Mull Thunderhorn
step << Warrior
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔拉·幼蹄|r
    .train 3273 >>列车 |T135966:0|t[急救]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (7s 1c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135611:0|t[华丽火枪] (4s 14c)，就卖掉它。如果你的钱还不够，可以稍后再回来
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r |T135611:0|t[华丽火枪] |cRXP_BUY_|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #completewith Clawsx
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Clawsx
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Clawsx
    +装备 |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    >>|cRXP_WARN_不要跟随出现的狼|r
    .turnin 771 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 772 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .target Zarlman Two-Moons
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    #xprate <2.1
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 5186 >>训练你的职业法术
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <2.1
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    #xprate <2.1
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业法术
    .target Narm Skychaser
    .xp <8,1
step
    #xprate <2.1
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .accept 749 >>接任务: |cRXP_LOOT_不幸的商队|r
	.unitscan Morin Cloudstalker
step
    #xprate <2.1
    #completewith Clawsx
    >>|cRXP_WARN_在整个区域执行任务时获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
	#completewith Clawsx
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #xprate <2.1
    #completewith next
    >>杀死 |cRXP_ENEMY_Stalkers|r 和 |cRXP_ENEMY_Cougars|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob 草原狼阿尔法
    .mob Flatland Cougar
step
    #xprate <2.1
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 751 >>接任务: |cRXP_LOOT_不幸的商队|r
step
    #xprate <2.1
	#label Clawsx
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    .goto Mulgore,58.1,48.6
    >>杀死 |cRXP_ENEMY_Stalkers|r 和 |cRXP_ENEMY_Cougars|r。掠夺他们的 |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob 草原狼阿尔法
    .mob Flatland Cougar
step
    #xprate <2.1
    #softcore
	#completewith Thunderhorn
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
    #xprate <2.1
    #hardcore
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >>返回血蹄村
step << Hunter
    #xprate <2.1
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <2.1
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买 |T135145:0|t[手杖] (5s 04c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T135145:0|t[手杖] |cRXP_BUY_|r
    .collect 2495,1,758,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (7s 1c)。如果你还没有足够的钱，你以后再回来
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <2.1
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_交谈。从他那里购买|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,758,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135611:0|t[华丽火枪] (4s 14c)，就卖掉它。如果你的钱还不够，可以稍后再回来
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_交谈。从他那里购买|r |T135611:0|t[华丽火枪] |cRXP_BUY_|r
    .collect 2509,1,758,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Loorat交谈|r
    .collect 2516,1000,818,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <2.1
    #completewith ThunderhornCleanse
    +装备 |T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    #completewith ThunderhornCleanse
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    #completewith ThunderhornCleanse
    +装备 |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <2.1
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈兰特·铁枝|r
    .vendor >>供应商垃圾和维修
    .target Harant Ironbrace
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mull, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .accept 758 >>接任务: |cRXP_LOOT_净化雷角之井|r
    .goto Mulgore,48.53,60.40
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #xprate <2.1
    #label Thunderhorn
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .accept 758 >>接任务: |cRXP_LOOT_净化雷角之井|r
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >>训练你的职业法术
    .target Narm Skychaser
    .xp <8,1
    .xp >10,1
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .trainer >>训练你的职业法术
    .target Narm Skychaser
    .xp <10,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 5186 >>训练你的职业法术
    .target Gennia Runetotem
    .xp <8,1
    .xp >10,1
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .trainer >>训练你的职业法术
    .accept 5928 >>接任务: |cRXP_LOOT_响应召唤|r
    .target Gennia Runetotem
    .isQuestAvailable 5928
    .xp <10,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .trainer >>训练你的职业法术
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .target Krang Stonehoof
    .xp <10,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <8,1
    .xp >10,1
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6061 >>接任务: |cRXP_LOOT_驯服野兽|r
    .trainer >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <10,1
step << Hunter
    #optional
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43
    .use 15914 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on an|r |cRXP_ENEMY_Adult Plainstrider|r |cRXP_WARN_at最大范围|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
    .isOnQuest 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6061 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6087 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
    .isQuestComplete 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6087 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27
    .use 15915 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Prairie Stalker|r |cRXP_WARN_at 最大范围|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6087 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6088 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .goto Mulgore,47.25,41.33
    .use 15916 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Swoop|r |cRXP_WARN_at 最大范围并在他们击倒你时立即重新施放|r
    >>|cRXP_WARN_如果失败并且驯兽棒充能用完，请放弃任务，然后再次拾起并回来|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6088 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6089 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Shaman/Druid
    >>|cRXP_BUY_从他那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior
    .vendor >>供应商垃圾 << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_使用|r |T135139:0|t[雷角净化图腾] |cRXP_WARN_at 井|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。从他们身上搜刮 |cRXP_LOOT_Artifact Storage Key|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step
    .goto Mulgore,31.27,49.87
    >>杀死 |cRXP_ENEMY_Bael'dun Diggers|r 和 |cRXP_ENEMY_Bael'dun Appraisers|r。掠夺他们的 |cRXP_LOOT_Prospector's Picks|r
    >>|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Bael'dun Appraisers|r 施法|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(远程施法：治疗自己或附近生命值低于 50% 的怪物，治疗量约为 75 点生命值)|r
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
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>打开 |cRXP_PICK_Artifact Storage|r 宝箱。获取 |T134918:0|t|cRXP_LOOT_[硫磺图标]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_装备|r |T134918:0|t|cRXP_LOOT_[硫磺图标]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_杀死至少一次使用|r |T136026:0|t[地震] |cRXP_WARN_造成伤害的敌人。重复此操作 10 次即可获得|r |T136116:0|t[灵感] |cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验的敌人执行此操作才能获得叠加|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior
    #xprate <2.1
    #season 2
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
    >>杀死 |cRXP_ENEMY_Windfury 风巫|r 和 |cRXP_ENEMY_Windfury 鹰身女妖|r。掠夺她们的 |cRXP_LOOT_Talons|r 和 |cRXP_LOOT_Severed Harpy Head|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
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
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >>进入位于风怒鹰身女妖正北的洞穴
step
    #xprate <2.1
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .accept 773 >>接任务: |cRXP_LOOT_智慧仪祭|r
    .target Seer Wiserunner
step
    #xprate >2.09
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_使用|r |T134918:0|t|cRXP_LOOT_[硫磺图标]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套：熔火冲击]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >>摧毁: |cRXP_ENEMY_先知之水|r, 它在你的背包中. 不再需要它了
step << Druid/Hunter/Shaman
    #completewith next
    .goto Thunder Bluff,32.00,66.69
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .isOnQuest 6089 << Hunter
    .xp <10,1 << Druid
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .accept 76156 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将炉石设置为雷霆崖
    .target Innkeeper Pala
    .xp <10,1
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .accept 886 >>接任务: |cRXP_LOOT_贫瘠之地的绿洲|r
    .target 大德鲁伊哈缪尔·符文图腾
    .xp <10,1
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务: |cRXP_FRIENDLY_响应召唤|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target 大德鲁伊哈缪尔·符文图腾
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target 大德鲁伊哈缪尔·符文图腾
    .target Turak Runetotem
    .xp <10,1
step << Druid
    #completewith Great熊S
    .cast 18960 >>施放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5922 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .accept 5930 >>接任务: |cRXP_LOOT_巨熊之灵|r
    .target Dendrite Starblaze
    .isOnQuest 5922
step << Druid
    #label Great熊S
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .accept 5930 >>接任务: |cRXP_LOOT_巨熊之灵|r
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5930,1 --Seek out the Great 熊 Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great 熊 Spirit
    .skipgossip
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .cast 18960 >>施放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5930 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .accept 5932 >>接任务: |cRXP_LOOT_返回雷霆崖|r
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    #completewith Druid熊Form
    .hs >>炉石到雷霆崖
    .cooldown item,6948,>0
    .use 6948
    .zoneskip Thunder Bluff
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label Druid熊Form
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5932 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
    .accept 6002 >>接任务: |cRXP_LOOT_身心之力|r
    .target Turak Runetotem
    .isQuestTurnedIn 5922
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_浩特·雷角|r
	.turnin 6089 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Holt Thunderhorn
    .isOnQuest 6089
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
    .train 24547 >>训练你的宠物法术
    .target Hesuwa Thunderhorn
    .isQuestTurnedIn 6089
step << Hunter
    #completewith SacredBurial
    +|cRXP_WARN_将|r |T132162:0|t[野兽训练] |cRXP_WARN_拖到你的动作栏上。向你的宠物传授技能|r
    .isQuestTurnedIn 6089
step << Druid/Hunter/Shaman
    #xprate <2.1
    .goto Thunder Bluff,53.81,27.82,30,0
    .goto Mulgore,59.85,25.62
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
    .zoneskip Thunder Bluff,1
    .isQuestTurnedIn 6089 << Hunter
    .isQuestTurnedIn 5932 << Druid
step << Hunter
    #xprate <2.1
    #completewith SacredBurial
    .cast 1515 >>驯服一只 |cRXP_ENEMY_草原狼阿尔法|r
    >>|cRXP_WARN_这将允许您训练|r |T132140:0|t[Claw Rank 2]
    .mob 草原狼阿尔法
step
    #xprate <2.1
    #completewith SacredBurial
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #completewith SacredBurial
    >>留意 |cRXP_ENEMY_Ghost Howl|r。搜刮他的 |T134358:0|t[|cRXP_LOOT_Demon Scarred 披风|r]。使用它来开始任务
    >>|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Ghost Howl|r 由于级别 12 而较难|r
    .collect 4854,1,770 --Collect Demon Scarred 披风
    .accept 770 >>接任务: |cRXP_LOOT_恶魔之伤|r
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <2.1
	#completewith next
	>>在莫高雷各地杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .accept 833 >>接任务: |cRXP_LOOT_神圣的墓地|r
    .target Lorekeeper Raintotem
step
    #optional
    #label SacredBurial
step << Warrior
    #xprate <2.1
    #season 2
    #completewith RiteofWisdom
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r。掠夺他们以获得 |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    #label RiteofWisdom
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 >>交任务: |cRXP_FRIENDLY_智慧仪祭|r
    .accept 775 >>接任务: |cRXP_LOOT_雷霆崖之旅|r
    .target Ancestral Spirit
step << Warrior
    #xprate <2.1
    #season 2
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
    >>杀死 |cRXP_ENEMY_Bristleback Interlopers|r。掠夺他们以获得 |cRXP_LOOT_Severed Quilboar Head|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
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
step
    #xprate <2.1
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .turnin 833 >>交任务: |cRXP_FRIENDLY_神圣的墓地|r
    .target Lorekeeper Raintotem
step
    #xprate <2.1
    #completewith next
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
	>>杀死 |cRXP_ENEMY_Swoops|r。掠夺他们的 |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
#loop
	.line Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	.goto Mulgore,59.52,23.36,25,0
	.goto Mulgore,57.51,19.08,25,0
	.goto Mulgore,55.21,18.67,25,0
	.goto Mulgore,52.99,17.34,25,0
	.goto Mulgore,51.00,18.40,25,0
	.goto Mulgore,49.84,20.74,25,0
	.goto Mulgore,49.82,23.69,25,0
	.goto Mulgore,49.52,26.10,25,0
	.goto Mulgore,49.72,28.14,25,0
	.goto Mulgore,50.79,29.37,25,0
	.goto Mulgore,52.24,30.07,25,0
	.goto Mulgore,54.21,30.43,25,0
	.goto Mulgore,56.15,30.35,25,0
	.goto Mulgore,57.77,30.48,25,0
	.goto Mulgore,58.79,28.52,25,0
	.goto Mulgore,60.56,25.88,25,0
	.goto Mulgore,59.52,23.36,25,0
    >>|cRXP_WARN_完成获取 Mazzranache 的物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #softcore
    #completewith Bloodhoofturnins1
    .goto Thunder Bluff,41.17,67.66
    +点击|cRXP_PICK_Ultra Cannon|r 将自己炸回血蹄村
    >>|cRXP_WARN_抵达后您将死亡，但可以立即重生|r
    >>|cRXP_WARN_当它还有 2 秒的时间尝试降落在河中以避免死亡时，移除你的|r |T135992:0|t[魔法之翼] |cRXP_WARN_buff
    .zoneskip Thunder Bluff,1,1
step
    #softcore
    #completewith Bloodhoofturnins1
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .zoneskip Thunder Bluff
step
    #hardcore
    #completewith Bloodhoofturnins1
    .goto Mulgore,47.33,57.17,120 >>返回血蹄村
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .vendor >>供应商垃圾
    .target Innkeeper Kauth
step
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .turnin 770 >>交任务: |cRXP_FRIENDLY_恶魔之伤|r
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #xprate <2.1
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vateya|r in Bloodhoof Village
    >>上交你收集到的 |cRXP_LOOT_Heads|r 以换取 |T134455:0|t[符文碎片]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Baine, Ruul, Mull, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
    --.accept 759 >>接任务: |cRXP_LOOT_蛮鬃图腾|r
    .goto Mulgore,48.54,60.38
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, and |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
    --.accept 759 >>接任务: |cRXP_LOOT_蛮鬃图腾|r
    .goto Mulgore,48.54,60.38
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Baine, Ruul, |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .goto Mulgore,48.71,59.32
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Harken Windtotem
    .isQuestComplete 761
step
    #xprate >2.09
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r and |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
    .goto Mulgore,47.51,60.16
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .goto Mulgore,47.35,62.02
    .target Baine Bloodhoof
    .target Ruul Eagletalon
step
    #completewith AlphaTeeth
    .destroy 4702 >>摧毁: |cRXP_ENEMY_勘察员的锄头|r, 它在你的背包中. 不再需要它了
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Kennah交谈|r
    >>|cRXP_BUY_从他那里购买|r |T132384:0|t[重磅镜头] |cRXP_BUY_|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 2687 >>训练你的职业法术
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .target Krang Stonehoof
step << Warrior
    #optional
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克朗·石蹄|r
    .train 7384 >>训练你的职业法术
    .target Krang Stonehoof
    .xp <12,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8050 >>训练你的职业法术
    .accept 2984 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Narm Skychaser
step << Shaman
    #optional
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >>训练你的职业法术
    .target Narm Skychaser
    .xp <12,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6061 >>接任务: |cRXP_LOOT_驯服野兽|r
    .train 13165 >>训练你的职业法术
    .target Yaw Sharpmane
    .isQuestAvailable 6061
step << Hunter
    #optional
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .train 14281 >>训练你的职业法术
    .target Yaw Sharpmane
    .xp <12,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 8924 >>训练你的职业法术
    .accept 5928 >>接任务: |cRXP_LOOT_响应召唤|r
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_根妮亚·符文图腾|r
    .train 8936 >>训练你的职业法术
    .target Gennia Runetotem
    .xp <12,1
step << Hunter
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43
    .use 15914 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on an|r |cRXP_ENEMY_Adult Plainstrider|r |cRXP_WARN_at最大范围|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6061 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6087 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27
    .use 15915 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Prairie Stalker|r |cRXP_WARN_at 最大范围|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6087 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6088 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .goto Mulgore,47.25,41.33
    .use 15916 >>|cRXP_WARN_使用你的|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Swoop|r |cRXP_WARN_at 最大范围并在他们击倒你时立即重新施放|r
    >>|cRXP_WARN_如果失败并且驯兽棒充能用完，请放弃任务，然后再次拾起并回来|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6088 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6089 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Yaw Sharpmane
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhwana|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Shaman/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step << skip
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .accept 861 >>接任务: |cRXP_LOOT_猎人之道|r
    .target Skorn Whitecloud
step
    #xprate >2.09
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东路巡逻|r
    .accept 749 >>接任务: |cRXP_LOOT_不幸的商队|r
	.unitscan Morin Cloudstalker
step << Hunter
    #xprate >2.09
    #loop
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01,50,0
    .cast 1515 >>驯服一只 |cRXP_ENEMY_草原狼阿尔法|r
    >>|cRXP_WARN_这将允许您训练|r |T132140:0|t[Claw Rank 2]
    .mob 草原狼阿尔法
step
    #xprate >2.09
    .goto Mulgore,53.74,48.17
    >>点击 |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 751 >>接任务: |cRXP_LOOT_不幸的商队|r
step
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
    .accept 765 >>接任务: |cRXP_LOOT_菲兹普罗克主管|r
	.unitscan Morin Cloudstalker
step
    #season 2
    #completewith Fizsprocket1
    .goto Mulgore,61.51,47.29,20 >>Travel to 接任务: |cRXP_WARN_风险投资公司|r. Mine
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>打开矿井内部和外部的 |cRXP_PICK_Blasting Supplies|r。拾取它们以获得 |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_如果可能的话，留在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Venture Co. 工人|r 和 |cRXP_ENEMY_Venture Co. 主管|r
    .complete 764,1 --风险投资公司员工 (14)
    .complete 764,2 --风险投资公司主管 (6)
    .mob 风险投资公司员工
    .mob 风险投资公司主管
step
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Run into the mine and hug the right/east side. Kill |cRXP_ENEMY_接任务: |cRXP_WARN_菲兹普罗克主管|r|r. Loot him for his |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob 接任务: |cRXP_WARN_菲兹普罗克主管|r
step
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
    .complete 764,2 --风险投资公司主管 (6)
    .mob 风险投资公司员工
    .mob 风险投资公司主管
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
step
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
step << Druid
    #season 2
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01
    >>杀死 |cRXP_ENEMY_平原徘徊者s|r 和 |cRXP_ENEMY_草原狼阿尔法s|r。掠夺他们以获得 |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob 平原徘徊者
    .mob 草原狼阿尔法
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_装备|r |T134903:0|t[|cRXP_FRIENDLY_熊之怒偶像|r]
    .use 206954
    .train 410025,1
    .itemcount 206954,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_保持 50+ 怒气至少 60 秒即可学习|r |T132135:0|t[Mangle]
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_使用|r |T134903:0|t[|cRXP_FRIENDLY_熊之怒偶像|r] |cRXP_WARN_训练|r |T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1
step << skip
    #label AlphaTeeth
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01
    >>杀死该区域的 |cRXP_ENEMY_草原狼阿尔法s|r。掠夺他们的 |cRXP_LOOT_Teeth|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob 草原狼阿尔法
step << skip
    #softcore
	#completewith Thunderhorn2
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << skip
    #hardcore
    #completewith Thunderhorn2
    .goto Mulgore,46.5,55.5,150 >>返回血蹄村
step << skip
    #label Thunderhorn2
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>交任务: |cRXP_FRIENDLY_蛮鬃图腾|r
    .accept 760 >>接任务: |cRXP_LOOT_净化蛮鬃之井|r
    .target Mull Thunderhorn
step
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step << Druid
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获取陶拉霍营地飞行路线
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
    .home >>将炉石设置为雷霆崖
    .target Innkeeper Pala
    .isQuestAvailable 5922
step << Druid
    .goto Thunder Bluff,78.1,28.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .accept 886 >>接任务: |cRXP_LOOT_贫瘠之地的绿洲|r
    .target 大德鲁伊哈缪尔·符文图腾
    .isQuestAvailable 5922
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>交任务: |cRXP_FRIENDLY_响应召唤|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target 大德鲁伊哈缪尔·符文图腾
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
    .target 大德鲁伊哈缪尔·符文图腾
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>施放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5922 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .accept 5930 >>接任务: |cRXP_LOOT_巨熊之灵|r
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5930,1 --Seek out the Great 熊 Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great 熊 Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>施放 |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5930 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .accept 5932 >>接任务: |cRXP_LOOT_返回雷霆崖|r
    .target Dendrite Starblaze
step << Druid
    #completewith Druid熊Form
    .hs >>炉石到雷霆崖
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label Druid熊Form
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5932 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
    .accept 6002 >>接任务: |cRXP_LOOT_身心之力|r
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >>飞往陶拉霍营地
    .target Tal
    .zoneskip Thunder Bluff,1
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>跑到枭兽石处并使用 |T132857:0|t[塞纳里奥月尘]。杀死 |cRXP_ENEMY_Lunaclaw|r
    >>|cRXP_WARN_避开该区域的|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step
    .goto The Barrens,44.45,59.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>获取陶拉霍营地飞行路线
	.target Omusa Thunderhorn
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔格·锐角|r
    .accept 854 >>接任务: |cRXP_LOOT_十字路口之旅|r
    .target Kirge Sternhorn
step
    #completewith next
    .goto The Barrens,52.07,31.96,120 >>向北前往十字路口
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>交任务: |cRXP_FRIENDLY_贫瘠之地的绿洲|r << Druid
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
    .target Tonga Runetotem
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >>将炉石设置为十字路口
    .target Innkeeper Boorand Plainswind
step << Tauren
    .goto The Barrens,51.5,30.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .turnin 854 >>交任务: |cRXP_FRIENDLY_十字路口之旅|r
    .target Thork
step
    .goto The Barrens,51.1,29.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .accept 6361 >>接任务: |cRXP_LOOT_一捆兽皮|r
    .target Jahan Hawkwing
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
    .target Apothecary Helbrim
step
    #xprate <2.1
    #completewith next
    >>在被遗忘的池塘周围收集 |cRXP_LOOT_Laden 蘑菇|r
    >>|cRXP_WARN_拾取蘑菇时请与 |cRXP_ENEMY_Kolkar|r |cRXP_WARN_保持最大距离。蘑菇等级为 12-14|r
    >>|cRXP_WARN_此任务的后续任务有强大的 |cRXP_FRIENDLY_Cauldron Stinger|r |cRXP_WARN_作为奖励。如果您不打算使用它，可以暂时跳过此任务|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    .goto The Barrens,45.06,22.54
    >>潜入水下至 |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #xprate <2.1
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
step
    #xprate <2.1
    #softcore
	#completewith ZamahPickup
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step
    #xprate <2.1
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >>回到十字路口
step
    #xprate <2.1
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #xprate <2.1
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    #xprate <2.1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_WARN_等待 RP 完成|r
    >>|cRXP_WARN_这将开始一个 45 分钟的计时任务|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    #optional
    #label ZamahPickup
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    >>|cRXP_WARN_这将开始一个 45 分钟的计时任务|r
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #xprate <2.1
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_你正在进行限时任务，不要闲逛。任务将在接取后约 5-10 分钟内完成|r
    .isOnQuest 853
step
    #completewith CauldronStirrer
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 >>交任务: |cRXP_FRIENDLY_一捆兽皮|r
    .accept 6362 >>接任务: |cRXP_LOOT_飞往雷霆崖|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Devrak
step
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安哈努|r
    .turnin 6362 >>交任务: |cRXP_FRIENDLY_飞往雷霆崖|r
    .accept 6363 >>接任务: |cRXP_LOOT_双足飞龙管理员塔尔|r
    .target Ahanu
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 861 >>交任务: |cRXP_FRIENDLY_猎人之道|r
    .accept 860 >>接任务: |cRXP_LOOT_瑟格拉·黑棘|r
    .target Melor Stonehoof
    .isQuestComplete 861
step
    .goto Thunder Bluff,61.3,80.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .accept 860 >>接任务: |cRXP_LOOT_瑟格拉·黑棘|r
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_浩特·雷角|r
	.turnin 6089 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Holt Thunderhorn
step << Hunter
    #optional
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_浩特·雷角|r
    .train 14281 >>训练你的职业法术
    .target Holt Thunderhorn
    .xp <12,1
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
    >>|cRXP_WARN_将|r |T132162:0|t[野兽训练] |cRXP_WARN_拖到你的动作栏上。向你的宠物传授技能|r
    .train 24547 >>训练你的宠物法术
    .target Hesuwa Thunderhorn
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
    .train 7384 >>训练你的职业法术
    .target Ker Ragetotem
    .xp <12,1
step << Druid
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 199 >>训练双手锤
    .target Ansekhwas
    .money <0.1154
step << Warrior/Hunter
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塞瓦|r
    .train 227 >>火车五线谱
    .target Ansekhwa
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .accept 744 >>接任务: |cRXP_LOOT_准备典礼|r
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 76156 >>向地母交出追踪任务
    .accept 76160 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
step
    #xprate <2.1
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>前往精神崛起并进入视野之池
step
    #xprate <2.1
    #label CauldronStirrer
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <2.1
    #completewith ReturntoJahan
    +装备 |T135145:0|t[大锅搅拌器]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
    .train 547 >>训练你的职业法术
    .target Tigor Skychaser
    .xp <12,1
step << Warrior
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r and |cRXP_FRIENDLY_Mooart|r on the Spirit Rise
    +当 |cRXP_FRIENDLY_Mooart|r 变得有敌意时将其杀死
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r
    >>从她那里获得 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>使用 |T134419:0|t[|cRXP_FRIENDLY_狂暴突袭符文|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .turnin 6363 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员塔尔|r
    .accept 6364 >>接任务: |cRXP_LOOT_向加翰回复|r
    .target Tal
step
    #xprate <2.1
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>交任务: |cRXP_FRIENDLY_雷霆崖之旅|r
    --.accept 776 >>接任务: |cRXP_LOOT_大地之母仪祭|r
    .target Cairne Bloodhoof
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 6002 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .target Turak Runetotem
step << Druid
    #optional
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .train 8936 >>训练你的职业法术
    .target Turak Runetotem
    .xp <12,1
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉哈罗|r
    .accept 5722 >>接任务: |cRXP_WARN_寻找背包|r
    .accept 5723 >>接任务: |cRXP_WARN_试探敌人|r
    .target Rahauro
    .dungeon RFC
step
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫兰塔|r
    >>|cRXP_WARN_这将解锁一个简单的任务。如果你已经有 2 个职业，请跳过此步骤|r
    .train 8613 >>列车 |T134366:0|t[剥皮]
    .target Mooranta
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔伦·陆行者|r
    .accept 768 >>接任务: |cRXP_WARN_收集皮革|r
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买十二|r |T134252:0|t[轻皮革] |cRXP_BUY_|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维尔伦·陆行者|r
    .turnin 768 >>交任务: |cRXP_FRIENDLY_收集皮革|r
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto Thunder Bluff,52.32,47.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_从她那里购买|r |T133972:0|t[Tough Jerky] |cRXP_BUY_来喂养你的宠物|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
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
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>拾取地面上的 |cRXP_LOOT_Windfury Cones|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
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
step << Shaman
    #season 2
    #completewith next
    .subzone 1638 >>返回雷霆崖
    .zoneskip Thunder Bluff
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .turnin 744 >>交任务: |cRXP_FRIENDLY_准备典礼|r
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 76160 >>向地母交出追踪任务
    .accept 76240 >>接受“跟踪大地母亲”任务
    .target Boarton Shadetotem
    .train 410104,1
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
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_装备|r |T132932:0|t[钓鱼竿]
    .use 6256
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_将|r |T134335:0|t[闪亮小饰品] |cRXP_WARN_连接到你的|r |T132932:0|t[钓鱼竿]
    .use 6529
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼直到你得到 |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
step << Shaman
    #season 2
    >>使用 |T132147:0|t[刀具套装] 制作 |T134007:0|t[鱼块]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 76240 >>向地母交出追踪任务
-- .train 410104 >>|cRXP_WARN_你将训练|r |T236289:0|t[熔岩猛击] |cRXP_WARN_和|r |T132147:0|t[双持] |cRXP_WARN_在交出时|r
    .target Boarton Shadetotem
    .train 410104,1
step
    #completewith HidesTurnIn
    .hs >>炉边到十字路口
    .cooldown item,6948,>0
    .use 6948
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞往十字路口
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
step
    #label HidesTurnIn
    .goto The Barrens,51.1,29.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
    .target Jahan Hawkwing
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
    .target Thork
step
    #xprate <2.1
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
    .target Darsok Swiftdagger
step
    #optional
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 860 >>交任务: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
    .isOnQuest 6860
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 860 >>交任务: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
    .target Sergra Darkthorn
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
    .target Gazrog
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_交谈。从他那里购买|r |T135613:0|t[猎人的火枪] |cRXP_BUY_|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #completewith DisruptTheAttacks
    +装备 |T135613:0|t[猎人火枪]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Shaman
    #completewith next
    >>检查 |cRXP_FRIENDLY_Kranal|r 旁边的陈的空酒桶。拾取它并开始任务，否则你会在稍后得到它
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2984 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Kranal Fiss
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
    .goto Durotar,39.16,58.56,10 >>沿着山上的小路前往 |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_小心不要从山上掉下来，路很窄。如果掉下去，你可能会死|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .target Telf Joolam
step << Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_LOOT_部落的新兵|r
    .target Takrin Pathseeker
step << Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >>进入尘风洞穴
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>杀死 |cRXP_ENEMY_Cultists|r。掠夺他们以获得 |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
    .target Kargal Battlescar
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
    .target Uzzek
step << Warrior
    .goto Durotar,39.11,30.76,40,0
    .goto Durotar,39.34,28.25,40,0
    .goto Durotar,39.11,26.46,40,0
    .goto Durotar,39.39,25.05,40,0
    .goto Durotar,40.00,24.06,40,0
    .goto Durotar,42.51,24.29,40,0
    .goto Durotar,39.34,28.25
    >>杀死 |cRXP_ENEMY_Lightning Hides|r。掠夺他们的 |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
    .target Uzzek
step
    #optional
    .abandon 761 >>放弃猛扑狩猎
step
    #optional
    .abandon 766 >>抛弃马兹拉纳什
]])
