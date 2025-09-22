local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som
<< Horde
#name 1-6 牛头人
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#defaultfor Tauren
#next 6-13 牛头人

step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_你已选择适用于牛头人的升级指南. 由于缺少只适用于牛头人的某条主线任务,此区域可能不太适合你. 建议选择与你种族相适应的起始区域来开始旅程|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卢尔·鹰风|r
    .accept 747 ,a 开始狩猎
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鹰风酋长|r
    .accept 752 ,a 一件琐事
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取到总价10铜的东西(包括你身上的装备)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >> 卖垃圾清包
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 6673 >>学习|T132333:0|t[战斗怒吼]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米拉·晨行者|r
    .train 8017 >>学习|T136086:0|t[石化武器]
    .target Meela Dawnstrider
step
    #completewith next
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_肉|r和|cRXP_LOOT_羽毛|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_主母鹰风|r
    .turnin 752 ,t 一件琐事
    .accept 753 ,a 一件琐事
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>|cRXP_WARN_拾取|cRXP_FRIENDLY_主母鹰风|r身后水井上的水罐|r
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
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_肉|r和|cRXP_LOOT_羽毛|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卢尔·鹰风|r
    .turnin 747,1 ,t 开始狩猎 << Druid
    .turnin 747 ,t 开始狩猎 << !Druid
    .accept 3091 ,a 简易便笺 << Warrior
    .accept 3092 ,a 风化便笺 << Hunterd
    .accept 3093 ,a 符文便笺 << Shaman
    .accept 3094 ,a 绿色便笺 << Druid
    .accept 750 ,a 继续狩猎
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡文尼·柔风|r
    >>|cRXP_BUY_在她这购买|r|T132384:0|t[轻弹丸] << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> 卖垃圾清包
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鹰风酋长|r
    .turnin 753 ,t 一件琐事
    .accept 755 ,a 大地之母仪祭
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_马沙克·利刃|r|cRXP_BUY_. 从他那购买一柄|r|T135139:0|t[学徒法杖]
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak
step << Rogue
    #completewith RitesoftheEarthmother
    +Equip the |T135139:0|t[学徒法杖]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>击杀|cRXP_ENEMY_山狮|r. 拾取它们掉落的|cRXP_LOOT_皮|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_灰舌先知|r
    >>|cRXP_WARN_沿途击杀小怪蹭经验|r
    .turnin 755 ,t 大地之母仪祭
    .accept 757 ,a 力量仪祭
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
    >>击杀|cRXP_ENEMY_山狮|r. 拾取它们掉落的|cRXP_LOOT_皮|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    .loop 25,Mulgore,45.56,87.95,46.92,87.84,48.67,86.83,50.65,85.87,51.01,83.71,52.06,81.53,51.87,79.58,51.67,77.39,51.95,75.16,50.32,76.33,48.85,75.82,47.41,75.30,46.80,78.21,45.84,80.41,45.03,82.15,44.09,83.89,43.90,86.08,45.56,87.95
    .xp 3+1150 >> 刷怪到3级多1150经验值
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_刷|cRXP_ENEMY_平原陆行鸟|r. 直到你拾取了价值2银的物品|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_刷|cRXP_ENEMY_平原陆行鸟|r. 直到你拾取了价值1银的物品|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卢尔·鹰风|r
    .turnin 750 ,t 继续狩猎
    .accept 780 ,a 斗猪
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡文尼·柔风|r
    .vendor >> 卖垃圾清包
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勇者风羽|r
    .accept 3376 ,a 刺鬃酋长
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 ,t 简易便笺
    .train 100 >> 学习 |T132337:0|t[冲锋]
    .train 772 >> 学习 |T132155:0|t[撕裂]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 ,t 简易便笺
    .train 772 >> 学习 |T132155:0|t[撕裂]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 ,t 风化便笺
    .train 1978 >> 学习 |T132204:0|t[毒蛇钉刺]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加尔特·迷雾行者|r
    .turnin 3094 ,t 绿色便笺
    .train 8921 >> 学习 |T136096:0|t[月火术]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知鸦羽|r
    .accept 1519 ,a 大地的召唤
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 ,t 符文便笺
    .train 8042 >>学习|T136026:0|t[地震术]
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
    >>击杀|cRXP_ENEMY_斗猪|r. 拾取它们掉落的|cRXP_LOOT_肋排|r和|cRXP_LOOT_头|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith next
    .goto Mulgore,59.67,83.33,30 >> 穿过洞穴
step
    #completewith DirtyMap
    >>击杀|cRXP_ENEMY_刺背野猪人|r. 拾取它们掉落的|cRXP_LOOT_腰带|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>击杀|cRXP_ENEMY_刺背萨满|r. 拾取它们掉落的|cRXP_LOOT_仪式药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>击杀大帐篷内的|cRXP_ENEMY_刺鬃酋长|r. 拾取他的|cRXP_LOOT_头|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >> 进入洞穴. 拾取地上的|T134269:0|t[|cRXP_PICK_沾满泥土的地图|r], 右键点击接受任务.
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 ,a 纳拉其营地的危机
    .use 4851
step << Shaman
    #completewith next
    >>击杀|cRXP_ENEMY_刺背萨满|r. 拾取它们掉落的|cRXP_LOOT_仪式药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>击杀|cRXP_ENEMY_刺背野猪人|r. 拾取它们掉落的|cRXP_LOOT_腰带|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14
    >>击杀|cRXP_ENEMY_刺背萨满|r. 拾取它们掉落的|cRXP_LOOT_仪式药膏|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
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
    .xp 5+880 >> 刷怪到5级多880经验值 << !Shaman
    .xp 5 >> 刷怪到5级 << Shaman
step
    #completewith next
    .hs >> 炉石回纳拉其营地
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卢尔·鹰风|r, |cRXP_FRIENDLY_勇者风羽|r和|cRXP_FRIENDLY_鹰风酋长|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卢尔·鹰风|r, |cRXP_FRIENDLY_勇者风羽|r, |cRXP_FRIENDLY_先知鸦羽|r和|cRXP_FRIENDLY_鹰风酋长|r << Shaman
    .turnin 780 ,t 斗猪
    .goto Mulgore,44.92,77.12
    .turnin 3376 ,t 刺鬃酋长
    .goto Mulgore,44.67,76.68
    .turnin 1519 ,t 大地的召唤 << Shaman
    .accept 1520 ,a 大地的召唤 << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 ,t 纳拉其营地的危机
    .turnin 757 ,t 力量仪祭
    .accept 763 ,a 大地之母仪祭
    .goto Mulgore,44.18,76.07
    .target Grull Hawkwind
    .target Brave Windfeather
    .target Seer Ravenfeather << Shaman
    .target Chief Hawkwind
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >> 前往灵魂石地
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >> 使用|T134743:0|t[大地灵契]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小型大地之灵体|r
    .turnin 1520 ,t 大地的召唤
    .accept 1521 ,a 大地的召唤
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知鸦羽|r
    .turnin 1521 ,t 大地的召唤
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米拉·晨行者|r
    .train 332 >>学习|T136052:0|t[治疗波]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰卡·远箭|r
    .train 1130 >>学习|T132212:0|t[猎人标记]
    .train 3044 >>学习|T132218:0|t[奥术射击]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰卡·远箭|r
    .train 3044 >>学习|T132218:0|t[奥术射击]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加尔特·迷雾行者|r
    .train 467 >>学习|T136104:0|t[荆棘术]
    .train 5177 >>学习|T136006:0|t[愤怒]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加尔特·迷雾行者|r
    .train 5177 >>学习|T136006:0|t[愤怒]
    .target Gart Mistrunner
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>学习|T132269:0|t[招架]
    .train 6343 >>学习|T136105:0|t[雷霆一击]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈鲁特·雷角|r
    .train 3127 >>学习|T132269:0|t[招架]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安图尔·荒野|r
    .accept 1656 ,a 未完的任务
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som
<< Horde
#name 6-13 牛头人
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#defaultfor Tauren
#next 13-15 银松森林


step
	#completewith next
    .goto Mulgore,47.35,60.70,120 >> 前往血蹄村
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢尔·鹰爪|r和|cRXP_FRIENDLY_贝恩·血蹄|r
    .accept 743 ,a 风怒鹰身人
    .goto Mulgore,47.36,62.01
    .turnin 763 ,t 大地之母仪祭
    .accept 745 ,a 土地之争
    .accept 767 ,a 幻象仪祭
    .accept 746 ,a 矮人的挖掘场
    .goto Mulgore,47.51,60.16
    .target Ruul Eagletalon
    .target Baine Bloodhoof
step
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 ,t 未完的任务
    .home >> 将炉石绑定到血蹄村
    .target Innkeeper Kauth
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T135145:0|t[学徒短杖] (5s 04c). 如果现在钱不够就晚点再来买
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_玛诺特·深痕|r|cRXP_BUY_. 从他那买一把|r|T135145:0|t[学徒短杖]
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T133053:0|t[木槌棒] (7s 1c). 如果现在钱不够就晚点再来买
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_玛诺特·深痕|r|cRXP_BUY_. 从他那买一把|r|T133053:0|t[木槌棒]
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T135611:0|t[精制短枪] (4s 14c). 如果现在钱不够就晚点再来买
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_肯纳·鹰眼|r|cRXP_BUY_. 从他那买一只|r|T135611:0|t[精制短枪]
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_肯纳·鹰眼|r
    >>|cRXP_BUY_从他那购买|r|T132384:0|t[轻弹丸] << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #completewith Well
    +Equip the |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Well
    +Equip the |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Well
    +Equip the |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_茂尔·祈雨|r, |cRXP_FRIENDLY_札尔曼·双月|r, |cRXP_FRIENDLY_哈肯·风之图腾|r和|cRXP_FRIENDLY_莫尔·雷角|r
    .accept 766 ,a Mazzranache
    .goto Mulgore,46.97,57.07
    .turnin 767 ,t 幻象仪祭
    .accept 771 ,a 幻象仪祭
    .goto Mulgore,47.76,57.53
    .accept 761 ,a Swoop Hunting
    .goto Mulgore,48.71,59.32
    .accept 748 ,a Poison Water
    .goto Mulgore,48.53,60.40
    .target Maur Raincaller
    .target Zarlman Two-Moons
    .target Harken Windtotem
    .target Mull Thunderhorn
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_在整个区域获取马兹拉纳其任务物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith next
    >>击杀|cRXP_ENEMY_草原狼|r和|cRXP_ENEMY_成年平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_爪子|r和|cRXP_LOOT_爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49
    >> 收集|cRXP_PICK_琥珀颗粒|r. 你能在树下找到它们
    .complete 771,2 --Ambercorn (2)
step
    .loop 25,Mulgore,50.82,66.66,51.06,63.63,52.79,62.06,53.98,61.68,55.67,62.77,56.46,64.93,56.02,67.78,55.02,69.65,52.33,70.07,50.40,70.24,48.60,69.43,45.98,69.70,48.58,67.37
    >>击杀|cRXP_ENEMY_草原狼|r和|cRXP_ENEMY_成年平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_爪子|r和|cRXP_LOOT_爪子|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫尔·雷角|r
    .turnin 748 ,t Poison Water
    .accept 754 ,a Winterhoof Cleansing
    .target Mull Thunderhorn
step
    #completewith next
    >> 收集水井边的|cRXP_PICK_水井石|r
    .complete 771,1 --Well Stone (2)
step
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_在水井旁|r|cRXP_WARN_使用|r|T135139:0|t[冰蹄之井净化图腾]
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40
    >> 收集水井边的|cRXP_PICK_水井石|r
    .complete 771,1 --Well Stone (2)
step
    #completewith next
    >>|cRXP_WARN_在整个区域获取马兹拉纳其任务物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #label Gnolls
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个营地间来回. 击杀|cRXP_ENEMY_白鬃制革工|r, |cRXP_ENEMY_白鬃剥皮工|r和|cRXP_ENEMY_白鬃偷猎者|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_断矛|r|cRXP_WARN_(9级稀有). 他非常难杀.|r
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加纳·麦风|r
    >>|cRXP_BUY_从她那购买|r|T132815:0|t[冰镇牛奶] << Shaman/Druid
    >>|cRXP_BUY_从她那购买|r|T133968:0|t[刚出炉的面包] << Warrior
    .vendor >> 卖垃圾清包
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫尔·雷角|r和|cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 754 ,t Winterhoof Cleansing
    .accept 756 ,a Thunderhorn Totem
    .goto Mulgore,48.53,60.40
    .turnin 745 ,t 土地之争
    .goto Mulgore,47.51,60.16
    .target Mull Thunderhorn
    .target Baine Bloodhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔拉·幼蹄|r
    .goto Mulgore,46.80,60.85
    .train 3273 >>学习|T135966:0|t[急救]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T135145:0|t[学徒短杖] (5s 04c). 如果现在钱不够就晚点再来买
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_玛诺特·深痕|r|cRXP_BUY_. 从他那买一把|r|T135145:0|t[学徒短杖]
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T133053:0|t[木槌棒] (7s 1c). 如果现在钱不够就晚点再来买
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_玛诺特·深痕|r|cRXP_BUY_. 从他那买一把|r|T133053:0|t[木槌棒]
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T135611:0|t[精制短枪] (4s 14c). 如果现在钱不够就晚点再来买
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_肯纳·鹰眼|r|cRXP_BUY_. 从他那买一只|r|T135611:0|t[精制短枪]
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #completewith Clawsx
    +Equip the |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith Clawsx
    +Equip the |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith Clawsx
    +Equip the |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔曼·双月|r
    >>|cRXP_WARN_不要跟随刷出来的狼|r
    .turnin 771 ,t 幻象仪祭
    .target Zarlman Two-Moons
    .accept 772 ,a 幻象仪祭
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >> 学习职业技能
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洁妮亚·符文图腾|r
    .train 5186 >>学习职业技能
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >> 学习职业技能
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳姆·逐星|r
    .train 8044 >> 学习职业技能
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东边的路巡逻|r
    .accept 749 ,a The Ravaged Caravan
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_在整个区域获取马兹拉纳其任务物品|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith next
    >>击杀|cRXP_ENEMY_草原狼|r和|cRXP_ENEMY_平原狮|r. 拾取它们掉落的|cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob Prairie Wolf Alpha
    .mob Flatland Cougar
step
    .goto Mulgore,53.74,48.17
    >> 点击|cRXP_PICK_密封的补给箱|r
    .turnin 749 ,t The Ravaged Caravan
    .accept 751 ,a The Ravaged Caravan
step
	#completewith Clawsx
	>>击杀散布在莫高雷的|cRXP_ENEMY_猛鹫|r. 拾取它们掉落的|cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
	#label Clawsx
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    .goto Mulgore,58.1,48.6
    >>击杀|cRXP_ENEMY_草原狼|r和|cRXP_ENEMY_平原狮|r. 拾取它们掉落的|cRXP_LOOT_爪子|r
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
    .mob Prairie Wolf
    .mob Prairie Wolf Alpha
    .mob Flatland Cougar
step
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >> 回到血蹄村
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >> 学习职业技能
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_茂尔·祈雨|r
    .turnin 766 ,t Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T135145:0|t[学徒短杖] (5s 04c). 如果现在钱不够就晚点再来买
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_玛诺特·深痕|r|cRXP_BUY_. 从他那买一把|r|T135145:0|t[学徒短杖]
    .collect 2495,1,758,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛诺特·深痕|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T133053:0|t[木槌棒] (7s 1c). 如果现在钱不够就晚点再来买
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_玛诺特·深痕|r|cRXP_BUY_. 从他那买一把|r|T133053:0|t[木槌棒]
    .collect 2493,1,758,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯纳·鹰眼|r
    .vendor >> 卖垃圾清包. 钱够就买一把|T135611:0|t[精制短枪] (4s 14c). 如果现在钱不够就晚点再来买
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_肯纳·鹰眼|r|cRXP_BUY_. 从他那买一只|r|T135611:0|t[精制短枪]
    .collect 2509,1,758,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_姆拉特·远行|r
    .collect 2516,1000,818,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #completewith ThunderhornCleanse
    +Equip the |T135145:0|t[学徒短杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #completewith ThunderhornCleanse
    +Equip the |T133053:0|t[木槌棒]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith ThunderhornCleanse
    +Equip the |T135611:0|t[精制短枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith next
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈兰特·铁枝|r
    .vendor >> 卖垃圾清包并修理装备
    .target Harant Ironbrace
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫尔·雷角|r和|cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 756 ,t Thunderhorn Totem
    .accept 758 ,a Thunderhorn Cleansing
    .goto Mulgore,48.53,60.40
    .turnin 761 ,t Swoop Hunting
    .goto Mulgore,48.71,59.32
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #label Thunderhorn
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫尔·雷角|r
    .turnin 756 ,t Thunderhorn Totem
    .accept 758 ,a Thunderhorn Cleansing
    .target Mull Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳姆·逐星|r
    .train 8044 >> 学习职业技能
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洁妮亚·符文图腾|r
    .train 5186 >>学习职业技能
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克朗·石蹄|r
    .train 284 >> 学习职业技能
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .train 5116 >> 学习职业技能
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板考乌斯|r
    >>|cRXP_BUY_从他那购买|r|T132815:0|t[冰镇牛奶] << Shaman/Druid
    >>|cRXP_BUY_从他那购买|r|T133968:0|t[刚出炉的面包] << Warrior
    .vendor >> 卖垃圾清包
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_完成马兹拉纳其任务物品的收集|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>击杀散布在莫高雷的|cRXP_ENEMY_猛鹫|r. 拾取它们掉落的|cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_在水井旁使用|r|T135139:0|t[雷角之井净化图腾]
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>击杀|cRXP_ENEMY_巴尔丹掘地工|r和|cRXP_ENEMY_巴尔丹鉴定官|r. 拾取它们掉落的|cRXP_LOOT_勘察员的锄头|r
    .use 4702 >> 在熔炉上砸碎|T134707:0|t[锄头]
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    .loop 25,Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
    >>击杀|cRXP_ENEMY_风怒风巫|r和|cRXP_ENEMY_Windfury Harpies|r. 拾取它们掉落的|cRXP_LOOT_爪子|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >> 进入洞穴到达风怒鹰身人的北部
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知智慧行者|r
    .accept 773 ,a Rite of Wisdom
    .turnin 772 ,t 幻象仪祭
    .target Seer Wiserunner
step
    #completewith SacredBurial
    >>|cRXP_WARN_完成马兹拉纳其任务物品的收集|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith next
	>>击杀散布在莫高雷的|cRXP_ENEMY_猛鹫|r. 拾取它们掉落的|cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .accept 833 ,a A Sacred Burial
    .target Lorekeeper Raintotem
step
    #completewith next
    >>击杀|cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 ,t Rite of Wisdom
    .accept 775 ,a Journey into Thunder Bluff
    .target Ancestral Spirit
step
    .loop 25,Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
    >>击杀|cRXP_ENEMY_刺背干涉者|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .turnin 833 ,t A Sacred Burial
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_完成马兹拉纳其任务物品的收集|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .loop 25,Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
	>>击杀|cRXP_ENEMY_猛鹫|r. 拾取它们掉落的|cRXP_LOOT_羽毛|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    .loop 25,Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
    >>|cRXP_WARN_完成马兹拉纳其任务物品的收集|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .loop 25,Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
    .xp 9+4400 >> 刷怪到9级多4400经验值
    .isQuestComplete 761
    .isQuestComplete 766
step
    .loop 25,Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
    .xp 9+4400 >> 刷怪到9级多3720经验值
    .isQuestComplete 761
step
    .loop 25,Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
    .xp 9+4400 >> 刷怪到9级多3700经验值
    .isQuestComplete 766
step
    .loop 25,Mulgore,59.52,23.36,57.51,19.08,55.21,18.67,52.99,17.34,51.00,18.40,49.84,20.74,49.82,23.69,49.52,26.10,49.72,28.14,50.79,29.37,52.24,30.07,54.21,30.43,56.15,30.35,57.77,30.48,58.79,28.52,60.56,25.88,59.52,23.36
    .xp 9+4400 >> 刷怪到9级多4400经验值
step << !Druid
    #completewith Bloodhooffinalturnins
    .hs >> 炉石回血蹄村
    .use 6948
step << Druid
    #completewith Bloodhooffinalturnins
    .goto Mulgore,47.33,57.17,120 >> 回到血蹄村
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板考乌斯|r
    .vendor >> 卖垃圾清包
    .target Innkeeper Kauth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝恩·血蹄|r, |cRXP_FRIENDLY_卢尔·鹰爪|r, |cRXP_FRIENDLY_莫尔·雷角|r和|cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 746 ,t 矮人的挖掘场
    .goto Mulgore,47.51,60.16
    .turnin 743 ,t 风怒鹰身人
    .goto Mulgore,47.35,62.02
    .turnin 758 ,t Thunderhorn Cleansing
    .goto Mulgore,48.54,60.38
    .turnin 761 ,t Swoop Hunting
    .goto Mulgore,48.71,59.32
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
    .target Harken Windtotem
    .isQuestComplete 761
step
    #label Bloodhooffinalturnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝恩·血蹄|r, |cRXP_FRIENDLY_卢尔·鹰爪|r和|cRXP_FRIENDLY_莫尔·雷角|r
    .turnin 746 ,t 矮人的挖掘场
    .goto Mulgore,47.51,60.16
    .turnin 743 ,t 风怒鹰身人
    .goto Mulgore,47.35,62.02
    .turnin 758 ,t Thunderhorn Cleansing
    .goto Mulgore,48.54,60.38
    .target Baine Bloodhoof
    .target Ruul Eagletalon
    .target Mull Thunderhorn
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_肯纳·鹰眼|r
    >>|cRXP_BUY_从他那购买|r|T132384:0|t[重弹丸] << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .vendor >> 卖垃圾清包
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_茂尔·祈雨|r
    .turnin 766 ,t Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克朗·石蹄|r
    .train 6546 >> 学习职业技能
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳姆·逐星|r
    .accept 2984 ,a Call of Fire
    .trainer >> 学习职业技能
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6061 ,a Taming the Beast
    .trainer >> 学习职业技能
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洁妮亚·符文图腾|r
    .trainer >> 学习职业技能
    .accept 5928 ,a Heeding the Call
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洁妮亚·符文图腾|r
    .train 8924 >> 学习职业技能
    .target Gennia Runetotem
step << Hunter
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43
    .use 15914 >> |cRXP_WARN_在最远距离对1只|cRXP_ENEMY_成年平原陆行鸟|r使用|r|T132164:0|t[驯兽棒]
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6061 ,t Taming the Beast
    .accept 6087 ,a Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27
    .use 15915 >> |cRXP_WARN_在最远距离对1只|cRXP_ENEMY_草原捕食者|r使用r|T132164:0|t[驯兽棒]
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6087 ,t Taming the Beast
    .accept 6088 ,a Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .goto Mulgore,47.25,41.33
    .use 15916 >> |cRXP_WARN_在最远距离对1只|cRXP_ENEMY_猛鹫|r使用r|T132164:0|t[驯兽棒]|cRXP_WARN_如果它把你击倒了就立马重新施放|r
    >>|cRXP_WARN_如果你失败了并且用完了驯兽棒的充能次数就放弃并重新接取任务再来.|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6088 ,t Taming the Beast
    .target Yaw Sharpmane
    .accept 6089 ,a Training the Beast
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加纳·麦风|r
    >>|cRXP_BUY_从她那购买|r|T132815:0|t[冰镇牛奶] << Shaman/Druid
    >>|cRXP_BUY_从她那购买|r|T133968:0|t[刚出炉的面包] << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东边的路巡逻|r
    .turnin 751 ,t The Ravaged Caravan
    .accept 764 >> The Venture Co
    .accept 765 >> Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
    .group
step
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东边的路巡逻|r
    .turnin 751 ,t The Ravaged Caravan
	.unitscan Morin Cloudstalker
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> 前往风险投资公司矿洞
    .group
step
    #completewith next
    >>击杀|cRXP_ENEMY_风险投资公司工人|r和|cRXP_ENEMY_风险投资公司监工|r
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .group 2
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>进入矿洞并向右/东侧行进. 击杀|cRXP_ENEMY_菲兹普罗克主管|r. 拾取他的|cRXP_LOOT_笔记板|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
    .group 2
step
    .loop 25,Mulgore,61.35,47.55,60.10,47.84,59.50,48.21,59.68,48.85,60.14,49.14,62.01,48.74,61.89,47.84,61.35,47.55
    >>击杀|cRXP_ENEMY_风险投资公司工人|r和|cRXP_ENEMY_风险投资公司监工|r
    .complete 764,1 --Venture Co. Worker (14)
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .group 2
step
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩林·云行者|r
    >>|cRXP_WARN_他沿着东边的路巡逻|r
    .turnin 764 ,t The Venture Co.
    .turnin 765 ,t Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
    .group
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> 进入贫瘠之地
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
    .fp Camp Taurajo >> 开启陶拉祖营地鸟点
    .target Omusa Thunderhorn
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔格·锐角|r
    .accept 854 ,a Journey to the Crossroads
    .target Kirge Sternhorn
step
    .goto The Barrens,47.34,57.55,40,0
    .goto The Barrens,51.04,49.07,40,0
    .goto The Barrens,52.07,31.96,120 >> 向北前往十字路口
    >>|cRXP_WARN_确保你沿着大路走, 否则你很可能会引到高等级的怪.|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图加·符文图腾|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_加兹罗格|r|cRXP_FRIENDLY_索克|r和|cRXP_FRIENDLY_加翰·鹰翼|r
    .accept 870 ,a The Forgotten Pools
    .goto The Barrens,52.26,31.93
    .accept 844 ,a Plainstrider Menace
    .goto The Barrens,52.24,31.00
    .accept 869 ,a Raptor Thieves
    .goto The Barrens,51.93,30.32
    .turnin 854 ,t Journey to the Crossroads << Tauren
    .accept 871 ,a Disrupt the Attacks
    .accept 5041 ,a Supplies for the Crossroads
    .goto The Barrens,51.50,30.87
    .accept 6361 ,a A Bundle of Hides
    .goto The Barrens,51.21,29.05
    .target Tonga Runetotem
    .target Sergra Darkthorn
    .target Gazrog
    .target Thork
    .target Jahan Hawkwing
step << !Hunter !Druid
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 ,t A Bundle of Hides
    .accept 6362 ,a Ride to Thunder Bluff
    .target Devrak
step << Hunter/Druid
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 ,t A Bundle of Hides
    .accept 6362 ,a Ride to Thunder Bluff
    .fly Thunder Bluff >> 飞往雷霆崖
    .target Devrak
step << Hunter/Druid
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安哈努|r
    .turnin 6362 ,t Ride to Thunder Bluff
    .accept 6363 ,a Tal the Wind Rider Master
    .target Ahanu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
    .home >> 将炉石绑定到雷霆崖
    .target Innkeeper Pala
step << Hunter/Druid
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·血蹄|r
    .turnin 775 ,t Journey into Thunder Bluff
    .target Cairne Bloodhoof
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_浩特·雷角|r
	.turnin 6089 ,t Training the Beast
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
    .train 24547 >>学习宠物技能
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_把|r|T132162:0|t[训练野兽]|cRXP_WARN_拖到技能栏上并训练你的宠物|r
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 ,t Heeding the Call
    .accept 5922 ,a Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
    .accept 5922 ,a Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5922 ,t Moonglade
    .accept 5930 ,a Great Bear Spirit
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巨熊之灵|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5930 ,t Great Bear Spirit
    .accept 5932 ,a Back to Thunder Bluff
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >> 炉石回雷霆崖
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >> 飞往雷霆崖
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5932 ,t Back to Thunder Bluff
    .accept 6002 ,a Body and Heart
    .target Turak Runetotem
step << Druid/Hunter
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .turnin 6363 ,t Tal the Wind Rider Master
    .accept 6364 ,a Return to Jahan
    .target Tal
step << Hunter
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >> 飞往十字路口
    .target Tal
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fly Camp Taurajo >> 飞往陶拉祖营地
    .target Tal
step << Druid
    .goto The Barrens,42.00,60.86
    .cast 19138 >> 前往月夜枭兽之石处使用|T132857:0|t[赛纳里奥银尘]. 击杀|cRXP_ENEMY_月爪枭兽|r
    >>|cRXP_WARN_避开此区域的|r|cRXP_ENEMY_雷首蜥蜴|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
    .fly Thunder Bluff >> 飞往雷霆崖
    .target Omusa Thunderhorn
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 6002 ,t Body and Heart
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >> 飞往十字路口
    .target Tal
step << Hunter/Druid
    #label ReturntoJahan
    .goto The Barrens,51.2,29.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 ,t Return to Jahan
    .target Jahan Hawkwing
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_纳加尔·死眼|r|cRXP_BUY_. 从他那买一把|r|T135154:0|t[短杖]
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #completewith FurlScornbrow
    +Equip the |T135154:0|t[短杖] when you are level 11
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_纳加尔·死眼|r|cRXP_BUY_. 从他那买一把|r|T133477:0|t[巨棒]
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith FurlScornbrow
    +Equip the |T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_亚瑟罗克|r
    >>|cRXP_BUY_从他那购买大量|r|T132384:0|t[重弹丸]|cRXP_BUY_. 你会很长一段时间都无法得到补给!|r << Hunter
    .collect 2519,1600,6061,1 << Hunter --Heavy Shot (1600)
    .vendor >> 卖垃圾清包
    .target Uthrok
    --Tauren Hunter gun not worth? Making them train 弓 in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2984 ,t Call of Fire
    .accept 1524 ,a Call of Fire
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> 前往杜隆塔尔
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
    .goto Durotar,39.16,58.56,10 >> 沿路上山去找|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    >>|cRXP_WARN_小心不要掉下山去, 这条路非常窄. 如果掉下去你很可能会死.|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 ,t Call of Fire
    .accept 1525 ,a Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> 沿路下山返回
    >>|cRXP_WARN_小心不要掉下山去, 这条路非常窄. 如果掉下去你很可能会死.|r
step << Shaman
    #completewith next
    .zone The Barrens >> 回到贫瘠之地
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>击杀一只|cRXP_ENEMY_钢鬃寻水者|r或者|cRXP_ENEMY_钢鬃织棘者|r. 拾取他们掉落的|cRXP_LOOT_火焰焦油|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith FurlScornbrow
    .zone Durotar >> 回到杜隆塔尔
    .zoneskip Durotar
step << !Shaman
    #completewith FurlScornbrow
    .zone Durotar >> 前往杜隆塔尔
    .zoneskip Durotar
step
    .abandon 764 ,ab, The Venture Co.
    .abandon 765 ,ab, Supervisor Fizsprocket
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >> 爬上塔找弗恩·凝眉
step
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗恩·凝眉|r
    .accept 791 ,a Carry Your Weight
    .target Furl Scornbrow
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >> 卖垃圾清包
    .home >> 绑定炉石到剃刀岭
    .group
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师托尔卡|r
    .accept 815 ,a Break a Few Eggs
    .target Cook Torka
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_你能在地堡外或者上面跟他对话|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .accept 784 ,a Vanquish the Betrayers
    .accept 837 ,a Encroachment
    .target Gar'thok
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >> 前往提拉加德城堡
 step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> 前往城堡2楼
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
    >>击杀|cRXP_ENEMY_本尼迪克上尉|r. 拾取他的|cRXP_LOOT_钥匙|r
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
    >> 上楼并拾取|cRXP_PICK_本尼迪克的箱子|r以获取|T133471:0|t[|cFF00BCD4旧信封|r]并接受任务
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 ,a The Admiral's Orders
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
    >>击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r并拾取它们掉落的|cRXP_LOOT_帆布脚料|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >> 前往森金村
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌克尔|r
    .accept 2161 ,a A Peon's Burden
    .target Ukor
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r和|cRXP_FRIENDLY_加德林大师|r
    .accept 817 ,a Practical Prey
    .goto Durotar,55.95,73.93
    .accept 818 ,a A Solvent Spirit
    .goto Durotar,55.94,74.40
    .accept 808 ,a Minshina's Skull
    .accept 826 ,a Zalazane
    .accept 823 ,a Report to Orgnil
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step
    #completewith TaillasherEggs
    >>击杀看到的所有|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取它们掉落的|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith next
    >>击杀|cRXP_ENEMY_老虎|r. 拾取它们掉落的|cRXP_LOOT_毛皮|r. 这步不需要现在就完成
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,60.28,80.02,60,0
    .goto Durotar,60.28,82.74,60,0
    .goto Durotar,59.62,84.76,60,0
    .goto Durotar,60.02,87.94,60,0
    .goto Durotar,59.06,90.71,60,0
    .goto Durotar,61.50,91.55,60,0
    .goto Durotar,61.88,95.43,60,0
    .goto Durotar,62.69,97.21,60,0
    .goto Durotar,63.00,94.40,60,0
    .goto Durotar,59.85,89.56,60,0
    .goto Durotar,59.49,83.77
    #label TaillasherEggs
    >>拾取地上的|cRXP_PICK_鞭尾龙的蛋|r. 它们通常会由|cRXP_ENEMY_血爪鞭尾龙|r守护
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >> 游往主岛
step
    #completewith MinshinasSkull
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取它们掉落的|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith MinshinasSkull
    >>击杀|cRXP_ENEMY_妖术巨魔|r和|cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_注意!|r|cRXP_ENEMY_巫毒巨魔|r|cRXP_WARN_会施放|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>击杀|cRXP_ENEMY_札拉赞恩|r. 拾取他的|cRXP_LOOT_头|r
    >>|cRXP_WARN_不要用掉|r|T136026:0|t[地震术]|cRXP_WARN_以便在他施放|T136052:0|t[治疗波]时打断他|r << Shaman
    >>|cRXP_WARN_不要用掉|r|T132155:0|t[凿击]|cRXP_WARN_以便在他施放|T136052:0|t[治疗波]时打断他|r << Rogue
    >>|cRXP_WARN_小心. 他能施放|r|T136052:0|t[治疗波]|cRXP_WARN_. 如果有必要就使用你的|r|T134829:0|t[药水] << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >> 拾取地上的|cRXP_LOOT_头骨|r
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>击杀|cRXP_ENEMY_札拉赞恩|r. 拾取他的|cRXP_LOOT_头|r
    >>|cRXP_WARN_不要用掉|r|T136026:0|t[地震术]|cRXP_WARN_以便在他施放|T136052:0|t[治疗波]时打断他|r << Shaman
    >>|cRXP_WARN_不要用掉|r|T132155:0|t[凿击]|cRXP_WARN_以便在他施放|T136052:0|t[治疗波]时打断他|r << Rogue
    >>|cRXP_WARN_小心. 他能施放|r|T136052:0|t[治疗波]|cRXP_WARN_. 如果有必要就使用你的|r|T134829:0|t[药水] << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>击杀|cRXP_ENEMY_老虎|r. 拾取它们掉落的|cRXP_LOOT_毛皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    .loop 25,Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88.76
    >>击杀|cRXP_ENEMY_妖术巨魔|r和|cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_注意!|r|cRXP_ENEMY_巫毒巨魔|r|cRXP_WARN_会施放|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取它们掉落的|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_眼球|r
    >>|cRXP_WARN_如果此时你不是快完成此任务了就去南边的小岛. 你能在那找到大量的|r|cRXP_ENEMY_螃蟹|r|cRXP_WARN_和|r|cRXP_ENEMY_龙虾人|r
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
    >>击杀|cRXP_ENEMY_老虎|r. 拾取它们掉落的|cRXP_LOOT_毛皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >>击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取它们掉落的|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> 前往森金村
step
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 卖垃圾清包并修理装备. 你可以在帐篷外和他对话
    .target Trayexir
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加德林大师|r, |cRXP_FRIENDLY_沃纳尔大师|r和|cRXP_FRIENDLY_维尔林·长牙|r
    .turnin 808 ,t Minshina's Skull
    .turnin 826,2 ,t Zalazane << Shaman
    .turnin 826 ,t Zalazane << !Shaman
    .goto Durotar,55.95,74.73
    .turnin 818 ,t A Solvent Spirit
    .goto Durotar,55.95,74.39
    .turnin 817 ,t Practical Prey
    .goto Durotar,55.95,73.93
    .goto Durotar,54.1,76.6
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step
    #completewith Stolensupplies
    +|cRXP_WARN_为|T133728:0|t[微光颅骨]|cRXP_WARN_和|r|T134712:0|t[强力胶水]设置快捷键, 以在紧急情况下方便使用|r
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
step
    #label Encroachment
    .loop 25,Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
    >>击杀|cRXP_ENEMY_钢鬃传令兵|r和|cRXP_ENEMY_钢鬃卫兵|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_厨师托尔卡|r, |cRXP_FRIENDLY_奥戈尼尔·魂痕|r和|cRXP_FRIENDLY_加索克|r
    .turnin 815 ,t Break a Few Eggs
    .goto Durotar,51.12,42.46
    .turnin 823 ,t Report to Orgnil
    .accept 806 ,a Dark Storms
    .goto Durotar,52.25,43.18
    .turnin 784 ,t Vanquish the Betrayers
    .turnin 837 ,t Encroachment
    .turnin 830 ,t The Admiral's Orders
    .accept 831 ,a The Admiral's Orders
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Orgnil Soulscar
    .target Gar'Thok
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_厨师托尔卡|r, |cRXP_FRIENDLY_奥戈尼尔·魂痕|r和|cRXP_FRIENDLY_加索克|r
    .turnin 815 ,t Break a Few Eggs
    .goto Durotar,51.12,42.46
    .turnin 823 ,t Report to Orgnil
    .goto Durotar,52.25,43.18
    .turnin 784 ,t Vanquish the Betrayers
    .turnin 837 ,t Encroachment
    .turnin 830 ,t The Admiral's Orders
    .accept 831 ,a The Admiral's Orders
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Orgnil Soulscar
    .target Gar'Thok
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_旅店老板格罗斯克|r
    .turnin 2161 ,t A Peon's Burden
    .target Innkeeper Grosk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_他那|r|cRXP_BUY_购买一个或更多|r|T133634:0|t[棕色小包]
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 7384 >> 学习职业技能
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯瓦特|r
    .train 1535 >> 学习职业技能
    .target Swart
    .xp <12,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 ,a Conscript of the Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >> 前往塔楼
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >> 爬上塔找弗恩·凝眉
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗恩·凝眉|r
    .turnin 791 ,t Carry Your Weight
    .target Furl Scornbrow
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·托克伦|r
    .accept 816 ,a Lost But Not Forgotten
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> 前往雷兹拉克处
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 ,a Winds in the Desert
    .target Rezlak
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
    >>拾取地上的|cRXP_PICK_被偷走的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 ,t Winds in the Desert
    .accept 835 ,a Securing the Lines
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> 穿过洞穴
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>击杀|cRXP_ENEMY_尘风暴徒|r和|cRXP_ENEMY_尘风雷巫|r
    >>|cRXP_WARN_这些怪会逃跑.注意不要拉多了|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
step << Tauren Hunter
    #completewith next
    +|cFFFCDC任务奖励选择|r|T135493:0|t[桃木短弓]|cFFFCDC并保留它. 你可以在奥格瑞玛学会使用弓|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 ,t Securing the Lines
    .target Rezlak
step
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林纳格|r
    .accept 812 ,a Need for a Cure
    .target Rhinag
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >> 跳进雷霆山 << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_施放|r|T136095:0|t[解散宠物]|cRXP_WARN_再跳入雷霆山|r << Hunter
    >>|cRXP_WARN_解散你的小鬼再跳入雷霆山|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>击杀|cRXP_ENEMY_费索·暗雷|r并拾取他的|cRXP_LOOT_爪子|r
    >>|cRXP_WARN_在你杀他前你应十分小心地处理掉身后巡逻的|r|cRXP_ENEMY_火刃狂热者|r|cRXP_WARN_和|r|cRXP_ENEMY_闪电蜥蜴|r
    >>|cRXP_WARN_将他拉向你刚刚击杀的|r|cRXP_ENEMY_闪电蜥蜴|r|cRXP_WARN_处. 否则你很可能会拉到其他燃刃氏族的小怪|r
    >>|cRXP_WARN_优先击杀小鬼 使用|r|T132155:0|t[凿击]|cRXP_WARN_打断|r|T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_优先击杀小鬼 使用|r|T136026:0|t[地震术]|cRXP_WARN_打断|r|T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以先对|cRXP_ENEMY_费索·暗雷|r施放|r|T136071:0|t[变形术]|cRXP_WARN_再击杀|r|cRXP_ENEMY_小鬼|r << Mage
    >>|cRXP_WARN_优先击杀小鬼|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_如果有的话就用一瓶|r|T134829:0|t[初级治疗药水]|cRXP_WARN_有必要就用|r|T133728:0|t[微光颅骨] << !Warlock
    >>|cRXP_WARN_如果有的话就用一瓶|r|T134829:0|t[初级治疗药水], |T133728:0|t[初级治疗石]|cRXP_WARN_有必要就用|r|T133728:0|t[微光颅骨] << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step << Druid
    #completewith next
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
    .xp <12,1
    .isQuestComplete 806
    .group
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .train 8050 >> 学习职业技能
    .target Loganaar
    .xp <12,1
    .isQuestComplete 806
    .group
step
    #completewith next
    .hs >> 炉石回剃刀岭
    .cooldown item,6948,>0
    .isQuestComplete 806
    .use 6948
    .group
step << Shaman
    #completewith next
    .hs >> 炉石回剃刀岭
    .cooldown item,6948,>0
    .use 6948
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    .vendor >> 卖垃圾清包
    >>|cRXP_BUY_从他那购买|r|T132815:0|t[冰镇牛奶] << Shaman/Druid
    >>|cRXP_BUY_从他那购买|r|T133974:0|t[肉排] << Warrior
    .collect 1179,20,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (20)
    .collect 2287,20,818,1 << Rogue/Warrior --Haunch of Meat (20)
    .target Innkeeper Grosk
    .money <0.05
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 806 ,t Dark Storms
    .accept 828 ,a Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .accept 828 ,a Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .turnin 837 ,t Encroachment
    .target Gar'Thok
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索塔尔|r
    .train 14281 >> 学习职业技能
    .target Thotar
    .xp <12,1
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 7384 >> 学习职业技能
    .target Tarshaw Jaggedscar
    .xp <12,1
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯瓦特|r
    .train 1535 >> 学习职业技能
    .target Swart
    .xp <12,1
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> 前往玛高兹处
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛高兹|r
    .turnin 828 ,t Margoz
    .accept 827 ,a Skull Rock
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
step << Shaman
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70
    >>击杀|cRXP_ENEMY_火刃暴徒|r和|cRXP_ENEMY_火刃新兵|r. 拾取它们掉落的|cRXP_LOOT_灼热项圈|r
    >>击杀|cRXP_ENEMY_火刃祭司|r. 拾取他们掉落的|cRXP_LOOT_试剂袋|r
    .complete 827,1 --Searing Collar (6)
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
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
    >>击杀|cRXP_ENEMY_火刃暴徒|r, |cRXP_ENEMY_火刃新兵|r和|cRXP_ENEMY_火刃祭司|r. 拾取它们掉落的|cRXP_LOOT_灼热项圈|r
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
    >>击杀|cRXP_ENEMY_火刃祭司|r. 拾取他们掉落的|cRXP_LOOT_试剂袋|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
    .solo
step << Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_跳到石块上. 当你的角色看起来像漂浮在空中时登出游戏, 然后再登入|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_点击此处查看示范|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> 前往玛高兹处
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛高兹|r
    .turnin 827 ,t Skull Rock
    .accept 829 ,a Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> 进入奥格瑞玛
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,45.13,63.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朵拉斯|r
    .fp Orgrimmar >> 开启奥格瑞玛鸟点
    .target Doras
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 ,t The Admiral's Orders
    .target Nazgrel
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 547 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <12,1
step
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_考格汉|r
    .accept 813 ,a Finding the Antidote
    .target Kor'ghan
    .isOnQuest 812
step
    #completewith FindingAntitode
    >>|cRXP_WARN_放弃寻找解药任务. 这会移除任务计时器但你还是可以做它|r
    .abandon 812 ,ab, Need for a Cure
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 ,t Neeru Fireblade
    .accept 809 ,a Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> 前往荣誉谷
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
    .train 24556 >>学习宠物技能
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .train 14281 >> 学习职业技能
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳什|r
    .train 227 >>学习弓
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 从他那买一把|r|T135499:0|t[多层弯弓]
    .collect 2507,1,813,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r
    .collect 2515,1600,828,1 << Hunter --Sharp Arrow (1600)
    .collect 5439,1,813,1 << Hunter --Small Quiver (1)
    .target Ghrawt
step << Hunter
    #completewith FindingAntitode
    +Equip the |T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 从他那买一把|r|T133477:0|t[巨棒]
    .collect 1197,1,813,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #completewith FindingAntitode
    +Equip the |T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 从他那买一把|r|T135154:0|t[短杖]
    .collect 854,1,813,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #completewith FindingAntitode
    +Equip the |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #label LeaveOrg2
    #completewith Conscript
    .zone Durotar >> 离开奥格瑞玛
    .zoneskip Durotar
step
    #label FindingAntitode
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
    >>击杀|cRXP_ENEMY_毒尾蝎|r. 拾取它们掉落的|cRXP_LOOT_毒尾蝎的毒囊|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << !Shaman
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >> 沿着河向南前往前沿哨所
    >>沿途击杀|cRXP_ENEMY_巨齿鳄鱼|r. 拾取|cRXP_LOOT_克鲁恩的护身符|r
    >>|cRXP_WARN_如果没出就放弃此任务|r
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
    >> 顺着河向南走并击杀沿途的|cRXP_ENEMY_巨齿鳄鱼|r. 拾取|cRXP_LOOT_克鲁恩的护身符|r
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
    >>|cRXP_WARN_小心不要掉下山去, 这条路非常窄. 如果掉下去你很可能会死.|r
step << Shaman
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 ,t Call of Fire
    .accept 1526 ,a Call of Fire
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >> 使用|T134732:0|t[火焰灵契]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>击杀|cRXP_ENEMY_小型火焰之灵体|r. 拾取|cRXP_LOOT_余烬|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >> 点击地上的|cRXP_PICK_火盆|r
    .turnin 1526 ,t Call of Fire
    .accept 1527 ,a Call of Fire
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> 沿路下山返回
    >>|cRXP_WARN_小心不要掉下山去, 这条路非常窄. 如果掉下去你很可能会死.|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>击杀|cRXP_ENEMY_巨齿鳄鱼|r. 拾取|cRXP_LOOT_克鲁恩的护身符|r.
    >>|cRXP_WARN_如果没出就放弃此任务|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·托克伦|r
    .turnin 816 ,t Lost But Not Forgotten
    .target Misha Tor'kren
    .isQuestComplete 816
step
    #Label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> 前往前沿哨所
step
    #label Conscript
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡加尔·战痕|r
    .turnin 840 ,t Conscript of the Horde
    .accept 842 ,a Crossroads Conscription
    .target Kargal Battlescar
step
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 ,t Ak'Zeloth
    .accept 924 ,a The Demon Seed
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_拾取|cRXP_FRIENDLY_雅克塞罗斯|r边上的|r|T134095:0|t[有瑕疵的能量石]|cRXP_WARN_. 此物品有30分钟有效期, 所以请确保你及时完成此任务|r
    .turnin 926 ,t Flawed Power Stone
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 ,t Call of Fire
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> 拾取地上的|cRXP_PICK_老陈的空酒桶|r并开启任务. 如果没刷就晚点再拿
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 ,a Chen's Empty Keg
step
    #completewith DemonSeed
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> 前往山顶
    .isOnQuest 924
step
    #completewith next
    +|cRXP_WARN_注意看|r|cRXP_ENEMY_拉索利安|r|cRXP_WARN_是否刷新, 他是一只15级稀有精英. 随时准备在必要时使用你的|r|T133728:0|t[微光颅骨]|cRXP_WARN_和|r|T134712:0|t[强力胶水]
    .unitscan Rathorian
step
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >> 右键点击祭坛. 确保你身上有|T134095:0|t[有瑕疵的能量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >> 沿原路下山
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>击杀|cRXP_ENEMY_钢鬃寻水者|r, |cRXP_ENEMY_钢鬃织棘者|r和|cRXP_ENEMY_钢鬃猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> 拾取地上的|cRXP_PICK_老陈的空酒桶|r并开启任务. 如果没刷就晚点再拿
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 ,a Chen's Empty Keg
step
    #label DisruptTheAttacks
    .loop 25,The Barrens,53.63,24.50,54.26,24.64,54.81,25.19,55.50,25.61,55.86,26.3,55.83,27.15,55.41,27.41,54.50,26.97,54.05,26.11,53.51,25.24,53.63,24.50
    >>击杀|cRXP_ENEMY_钢鬃寻水者|r, |cRXP_ENEMY_钢鬃织棘者|r和|cRXP_ENEMY_钢鬃猎人|r
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,3 --Razormane Hunter (3)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
    .mob Razormane Hunter
step
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
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取它们掉落的|cRXP_LOOT_喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_索克|r
    .turnin 844 ,t Plainstrider Menace
    .turnin 842 ,t Crossroads Conscription
    .accept 845 ,a The Zhevra
    .goto The Barrens,52.23,31.00
    .turnin 871 ,t The Disruption Ends
    .accept 872 ,a Disrupt the Attacks
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >> 将炉石绑定到十字路口
    .target Innkeeper Boorand Plainswind
step << Druid
    #completewith next
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .train 8050 >> 学习职业技能
    .target Loganaar
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    #completewith FlytoOrg
    .hs >> 炉石回十字路口
    .cooldown item,6948,>0
    .xp <12,1
    .use 6948
    .solo
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_巴尔格|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Shaman/Warrior
    #completewith next
    .fly Thunder Bluff >> 飞往雷霆崖
step << Shaman/Warrior
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安哈努|r
    .turnin 6362 ,t Ride to Thunder Bluff
    .accept 6363 ,a Tal the Wind Rider Master
    .target Ahanu
step << Shaman/Warrior
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·血蹄|r
    .turnin 775 ,t Journey into Thunder Bluff
    .target Cairne Bloodhoof
step << Shaman/Warrior
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .turnin 6363 ,t Tal the Wind Rider Master
    .accept 6364 ,a Return to Jahan
    .target Tal
step << Shaman/Warrior
    #completewith ReturntoJahan2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >> 飞往十字路口
    .target Tal
    .cooldown item,6948,<0
step << Shaman/Warrior
    #completewith next
    .hs >> 炉石回The Crossroads
    .use 6948
    .cooldown item,6948,>0
step << Shaman/Warrior
    #label ReturntoJahan2
    .goto The Barrens,51.2,29.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 ,t Return to Jahan
    .target Jahan Hawkwing
step
    #label FlytoOrg
    #completewith SlumberSandPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .target Devrak
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 8045 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <14,1
step
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_考格汉|r
    .turnin 813 ,t Finding the Antidote
    .target Kor'ghan
    .isQuestComplete 813
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 从他那买一把|r|T135499:0|t[多层弯弓]
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #completewith SlumberSandPickup
    +Equip the |T135499:0|t[多层弯弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 从他那买一把|r|T133477:0|t[巨棒]
    .collect 1197,1,398,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #completewith SlumberSandPickup
    +Equip the |T133477:0|t[巨棒]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 从他那买一把|r|T135154:0|t[短杖]
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #completewith SlumberSandPickup
    +Equip the |T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #completewith SlumberSandPickup
    #label LeaveOrg3
    .zone Durotar >> 离开 Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林纳格|r
    .accept 812 ,a Need for a Cure
    .turnin 812 ,t Need for a Cure
    .target Rhinag
step
    .goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
    .zone Tirisfal Glades >> 乘坐飞艇前往提瑞斯法林地
    .zoneskip Tirisfal Glades
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 ,a Speak with Dillinger
    .target Austil de Mon
step
    #label SlumberSandPickup
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .accept 367 ,a A New Plague
    .accept 445 ,a Delivery to Silverpine Forest
    .target Apothecary Johaan
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 ,t Speak with Dillinger
    .accept 1819 ,a Ulag the Cleaver
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地上的颅骨, 召唤并击杀|r|cRXP_ENEMY_‘斩击者’奥拉格|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 ,t Ulag the Cleaver
    .accept 1820 ,a Speak with Coleman
    .target Deathguard Dillinger
step
    .goto Tirisfal Glades,56.77,59.83,60,0
    .goto Tirisfal Glades,57.41,61.92,60,0
    .goto Tirisfal Glades,55.03,63.17,60,0
    .goto Tirisfal Glades,54.24,65.34,60,0
    .goto Tirisfal Glades,50.74,62.38,60,0
    .goto Tirisfal Glades,49.92,61.17,60,0
    .goto Tirisfal Glades,47.92,60.42,60,0
    .goto Tirisfal Glades,46.61,59.75,60,0
    .goto Tirisfal Glades,44.02,60.11,60,0
    .goto Tirisfal Glades,43.58,61.39
    >>击杀|cRXP_ENEMY_黑暗犬|r. 拾取它们掉落的|cRXP_LOOT_血液|r
    >>|cRXP_WARN_你可以从此任务的后续中获取|r|T133849:0|t[沉睡之砂]|cRXP_WARN_, 如果愿意可以跳过|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
step
    .goto Tirisfal Glades,60.59,51.77
    >>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_通缉告示|r
    .accept 398 ,a Wanted: Maggot Eye
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 367 ,t A New Plague
    .accept 368 ,a A New Plague
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestComplete 367
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .accept 368 ,a A New Plague
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestTurnedIn 367
step
    #completewith next
    .goto Tirisfal Glades,58.66,30.77
    >>在去海滩的路上击杀|cRXP_ENEMY_蛆眼|r. 拾取他的|cRXP_LOOT_爪子|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
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
    >>在海滩击杀|cRXP_ENEMY_鱼人|r. 拾取它们掉落的|cRXP_LOOT_鳞片|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    .goto Tirisfal Glades,58.66,30.77
    >>击杀|cRXP_ENEMY_蛆眼|r. 拾取他的|cRXP_LOOT_爪子|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #completewith MaggetEyeTurnIn
    .goto Tirisfal Glades,59.88,51.58,150 >> 回到布瑞尔
    .subzoneskip 159
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 368 ,t A New Plague
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #label MaggetEyeTurnIn
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官塞加德|r
    .turnin 398 ,t Wanted: Maggot Eye
    .target Executor Zygand
step
    #completewith UCflightpath2
    +|cRXP_WARN_将|r|T133849:0|t[沉睡之砂]|cRXP_WARN_绑定快捷键. 以便在紧急情况时使用|r
    .isQuestComplete 368
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库勒曼·法席恩|r
    .turnin 1820 ,t Speak with Coleman
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 1160 >> 学习职业技能
    .target Austil de Mon
    .xp <14,1
step
    #completewith UCflightpath2
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯到幽暗城
step
    #label UCflightpath2
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦可·加勒特|r
    .fp Undercity >> 开启幽暗城鸟点
    >>|cRXP_WARN_如果你已经开了幽暗城鸟点就跳过此步!|r
    .target Michael Garrett
step
    .abandon 806 ,ab, Dark Storms
    .isOnQuest 806
step
    .abandon 408 ,ab, The Family Crypt
    .isOnQuest 408
step << Warrior
    .abandon 1821 ,ab, Agamand Heirlooms
    .isOnQuest 1821
step
    #label LeaveUndercity3
    #completewith EscortErland
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >> 从下水道离开幽暗城
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >> 前往银松森林
    .zoneskip Silverpine Forest


    ]])

