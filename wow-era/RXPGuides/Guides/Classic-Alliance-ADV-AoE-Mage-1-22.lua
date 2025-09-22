local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Human Mage
#name 1-10 冒险 艾尔文森林 人类法师 范围
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage
#next 10-11 冒险 丹莫罗人类 法师 AoE


step << !Human Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在你的种族起始区之外开始游戏，因为你将无法在这里获得你的第一个符文 (|T133816:0|t[雕刻手套 - 冰枪])
step
    #completewith next
    +您已选择高级指南。这是游戏中速度最快的职业（联盟法师）的最快指南。因此，将使用许多小众机制以及高难度的 AoE 拉动。在学习过程中坚持不懈！祝你好运！
step
    #completewith next
    .goto Elwynn Forest,48.45,45.80,50,0
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Young Wolves|r。掠夺他们，直到你拥有价值 10 铜的供应商物品|r
    .mob Young Wolf
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 783 >>接任务: |cRXP_LOOT_身边的危机|r
    .target Deputy Willem
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    .vendor >>供应商垃圾直到你有 10+ 铜
    .target Brother Danil
step
    .goto Elwynn Forest,48.26,41.93,15,0
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r, 他在里面
    .turnin 783 >>交任务: |cRXP_FRIENDLY_身边的危机|r
    .accept 7 >>接任务: |cRXP_LOOT_剿灭狗头人|r
    .target 麦克布莱德元帅
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>从楼梯跳到栏杆上
    .goto Elwynn Forest,49.66,39.41,10 >>前往楼上的 |cRXP_FRIENDLY_Khelden|r
step
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>前往 |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 5261 >>接任务: |cRXP_LOOT_伊根·派特斯金纳|r
    .target Deputy Willem
step
    #completewith next
    .goto Elwynn Forest,46.10,42.57,70,0
    .goto Elwynn Forest,46.59,39.35
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Young Wolves|r。掠夺他们直到你有价值 50 铜的供应商物品（包括你的盔甲）|r
    .mob Young Wolf
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    >>|cRXP_BUY_从他那里购买 10|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 5261 >>交任务: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .accept 33 >>接任务: |cRXP_LOOT_林中的群狼|r
    .target Eagan Peltskinner
step
    #completewith next
    >>杀死 |cRXP_LOOT_Young Wolves|r 和 |cRXP_LOOT_Timber Wolves|r。掠夺他们的 |cRXP_LOOT_Tough Wolf Meat|r
    >>关注|cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto Elwynn Forest,47.01,35.68,35,0
	.goto Elwynn Forest,47.70,35.04,35,0
	.goto Elwynn Forest,49.81,35.14,35,0
	.goto Elwynn Forest,49.82,36.23,35,0
	.goto Elwynn Forest,49.18,37.16,35,0
	.goto Elwynn Forest,47.01,35.68,35,0
    >>杀死 |cRXP_ENEMY_Kobold Vermin|r
    >>|cRXP_WARN_如果可能的话，杀死等级 1 |cRXP_ENEMY_Kobold Vermin|r|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    >>杀死 |cRXP_LOOT_Young Wolves|r 和 |cRXP_LOOT_Timber Wolves|r。掠夺他们的 |cRXP_LOOT_Tough Wolf Meat|r
    >>关注|cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 33,1 >>交任务: |cRXP_FRIENDLY_林中的群狼|r
    .target Eagan Peltskinner
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    |cRXP_BUY_从他那里购买 10|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r, 他在里面
    .turnin 7 >>交任务: |cRXP_FRIENDLY_剿灭狗头人|r
    .accept 15 >>接任务: |cRXP_LOOT_回音山调查行动|r
    .accept 3104 >>接任务: |cRXP_LOOT_雕文信件|r
    .target 麦克布莱德元帅
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto Elwynn Forest,47.25,36.41,35,0
	.goto Elwynn Forest,47.39,35.77,35,0
	.goto Elwynn Forest,47.35,34.06,35,0
	.goto Elwynn Forest,46.29,32.42,35,0
	.goto Elwynn Forest,47.75,32.77,35,0
	.goto Elwynn Forest,50.11,34.98,35,0
	.goto Elwynn Forest,47.25,36.41,35,0
    >>杀死 |cRXP_ENEMY_Kobold 工人|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    .xp 3+1110 >>升级至 1110+/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    >>|cRXP_BUY_从他那里购买 10|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBridge|r inside
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
    .accept 21 >>接任务: |cRXP_LOOT_回音山清剿行动|r
    .target 麦克布莱德元帅
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>从楼梯跳到栏杆上
    .goto Elwynn Forest,49.66,39.41,10 >>前往楼上的 |cRXP_FRIENDLY_Khelden|r
step
    #season 0
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Khelden Bremen
step
    #season 2
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r
    .accept 77620 >>接受法术研究 << Human
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>前往 |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 18 >>接任务: |cRXP_LOOT_潜行者兄弟会|r
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    >>杀死 |cRXP_ENEMY_Defias Thugs|r。掠夺他们以获得 |T134939:0|t|cRXP_LOOT_[法术注释：CALE ENCI]|r
    >>|cRXP_WARN_注意：你将无法在此处训练|r |T133816:0|t[雕刻手套 - 冰枪] |cRXP_WARN_，因为你只能在你种族的起始区获得|r |T133736:0|t[理解入门] |cRXP_WARN_|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto Elwynn Forest,51.14,49.29,35,0
	.goto Elwynn Forest,52.55,48.75,35,0
	.goto Elwynn Forest,53.81,48.09,35,0
	.goto Elwynn Forest,54.58,49.02,35,0
	.goto Elwynn Forest,55.15,47.86,35,0
	.goto Elwynn Forest,54.76,45.96,35,0
	.goto Elwynn Forest,53.81,44.79,35,0
	.goto Elwynn Forest,51.14,49.29,35,0
    >>杀死 |cRXP_ENEMY_Defias Thugs|r。掠夺他们以获得 |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>杀死 |cRXP_ENEMY_Defias Thugs|r。掠夺他们以获得 |T134939:0|t|cRXP_LOOT_[法术注释：CALE ENCI]|r
    >>|cRXP_WARN_注意：你将无法在此处训练|r |T133816:0|t[雕刻手套 - 冰枪] |cRXP_WARN_，因为你只能在你种族的起始区获得|r |T133736:0|t[理解入门] |cRXP_WARN_|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 18,5 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r
    .accept 6 >>接任务: |cRXP_LOOT_加瑞克·帕德弗特的赏金|r
    .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
    .target Deputy Willem
step
    #completewith Laborer
    +装备 |T135145:0|t[民兵长棍]
    .use 1159
    .itemcount 1159,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.7
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼尔修士|r
    >>|cRXP_BUY_从他那里购买 10|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto Elwynn Forest,47.76,31.62,40 >>进入矿井
step
    #label Laborer
    .goto Elwynn Forest,47.99,30.66,40,0
    .goto Elwynn Forest,48.32,28.84,40,0
    .goto Elwynn Forest,48.58,26.57,40,0
    .goto Elwynn Forest,49.95,25.74,40,0
    .goto Elwynn Forest,50.27,26.83
    >>杀死 |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .accept 3904 >>接任务: |cRXP_LOOT_米莉的葡萄|r
    .target 米莉·奥斯沃斯
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >>升级至 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>拾取地面上的 |cRXP_PICK_葡萄桶|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.52,48.25
    >>杀死 |cRXP_ENEMY_Garrick Padfoot|r。掠夺他以获取 |cRXP_LOOT_Garrick's Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>拾取地面上的 |cRXP_PICK_葡萄桶|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >>升级至 1175+/2800xp
    .mob Defias Thug
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>交任务: |cRXP_FRIENDLY_米莉的葡萄|r
    .accept 3905 >>接任务: |cRXP_LOOT_葡萄出货单|r
    .target 米莉·奥斯沃斯
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 6,1 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r
    .target Deputy Willem
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官玛克布莱德|r, 他在里面
    .turnin 21,3 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r
    .accept 54 >>接任务: |cRXP_LOOT_去闪金镇报到|r
    .target 麦克布莱德元帅
step
    #completewith next
    .goto Elwynn Forest,49.18,41.84,10,0
    .goto Elwynn Forest,49.55,41.56,10,0
    .goto Elwynn Forest,49.39,40.98,10,0
    .goto Elwynn Forest,48.98,41.17,10,0
    .goto Elwynn Forest,49.20,41.81,10,0
    .goto Elwynn Forest,49.57,41.46,10,0
    .goto Elwynn Forest,49.33,40.93,10,0
    >>上楼去
    .goto Elwynn Forest,49.471,41.586,10 >>前往 |cRXP_FRIENDLY_Neals|r
step
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔斯修士|r
    .turnin 3905,1 >>交任务: |cRXP_FRIENDLY_葡萄出货单|r
    .target Brother Neals
step << Human
    #season 2
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>下楼，然后前往|cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔登·布雷门|r, 他在里面
    .turnin 77620 >>提交法术研究
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto Elwynn Forest,45.56,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r
    .accept 2158 >>接任务: |cRXP_LOOT_休息和放松|r
    .target Falkhaan Isenstrider
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
    .accept 62 >>接任务: |cRXP_LOOT_法戈第矿洞|r
    .target 杜汉元帅
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉|r
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
    .target William Pestle
step
    #completewith next
    .home >>将你的炉石设置为闪金郡
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .turnin 2158,2 >>交任务: |cRXP_FRIENDLY_休息和放松|r
    .vendor 295 >>供应商垃圾。|cRXP_BUY_Buy|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_降至 2 银|r
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.25,66.25
    >>跳到楼下的吊灯上
    >>对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .trainer >>训练你的职业法术（火球 R2、火焰冲击）
	.target Zaldimar Wefhellt
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    .accept 47 >>接任务: |cRXP_LOOT_金砂交易|r
    .target 雷米“两次”
step
    #completewith BoarMeat1
    >>杀死 |cRXP_ENEMY_Stonetusk Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernice|r and |cRXP_FRIENDLY_Ma|r
    .accept 85 >>接任务: |cRXP_LOOT_丢失的项链|r
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >>接任务: |cRXP_LOOT_公主必须死！|r
	.goto Elwynn Forest,34.660,84.482
    .target “阿姨”伯妮丝·斯通菲尔德
    .target 马斯通菲尔德
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Kobold Tunnelers|r。掠夺他们以获得 |cRXP_LOOT_Gold Dust|r 和 |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利|r
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
    .target Billy Maclure
step
    #label BoarMeat1
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r, 他在里面
    .accept 106 >>接任务: |cRXP_LOOT_年轻的恋人|r
    .target Maybell Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买尽可能多的|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_你能负担得起的|r
    .vendor 258 >>供应商垃圾
    .target Joshua Maclure
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Stonetusk Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r
    .turnin 106 >>交任务: |cRXP_FRIENDLY_年轻的恋人|r
    .accept 111 >>接任务: |cRXP_LOOT_托米的祖母|r
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    >>杀死 |cRXP_ENEMY_Stonetusk Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bernice|r and then |cRXP_FRIENDLY_Gramma, 他在里面
    .turnin 86 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .accept 84 >>接任务: |cRXP_LOOT_比利的馅饼|r
    .goto Elwynn Forest,34.486,84.253
    .turnin 111 >>交任务: |cRXP_FRIENDLY_托米的祖母|r
    .accept 107 >>接任务: |cRXP_LOOT_给威廉·匹斯特的信|r
    .goto Elwynn Forest,34.94,83.86
    .target “阿姨”伯妮丝·斯通菲尔德
    .target Gramma Stonefield
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Kobold Tunnelers|r。掠夺他们以获得 |cRXP_LOOT_Gold Dust|r 和 |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利|r
    .turnin 84 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .accept 87 >>接任务: |cRXP_LOOT_金牙|r
    .target Billy Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买尽可能多的|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_你能负担得起的|r
    .vendor 258 >>供应商垃圾
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto Elwynn Forest,39.00,82.27,15 >>进入法戈迪普矿井
step
    #completewith Goldtooth
    >>杀死 |cRXP_ENEMY_Kobold Tunnelers|r 和 |cRXP_ENEMY_Kobold Miners|r。掠夺他们以获得 |cRXP_LOOT_Gold Dust|r 和 |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto Elwynn Forest,39.07,80.87,12,0
    .goto Elwynn Forest,39.71,79.92
    >>进入法戈迪普矿井的一处较大的开放空间
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto Elwynn Forest,39.95,78.81,12,0
    .goto Elwynn Forest,40.43,78.33,12,0
    .goto Elwynn Forest,41.73,78.03,40 >>前往 |cRXP_ENEMY_Goldtooth|r
step
    #label Goldtooth
    .goto Elwynn Forest,41.73,78.03
    >>杀死 |cRXP_ENEMY_Goldtooth|r。掠夺他以获取 |cRXP_LOOT_Bernice 的项链|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto Elwynn Forest,39.14,82.87,35,0
	.goto Elwynn Forest,39.16,84.79,35,0
	.goto Elwynn Forest,37.81,85.40,35,0
	.goto Elwynn Forest,36.76,83.19,35,0
	.goto Elwynn Forest,38.02,81.70,35,0
	.goto Elwynn Forest,39.14,82.87,35,0
    >>杀死 |cRXP_ENEMY_Kobold Tunnelers|r 和 |cRXP_ENEMY_Kobold Miners|r。掠夺他们以获得 |cRXP_LOOT_Gold Dust|r 和 |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_在洞穴内执行登出跳过，方法是跳到锯木机、漂浮的木头、板条箱或洞穴内的矿车灯上，然后登出并重新进入|r
    >>|cRXP_WARN_或者跑回金郡|r
    >>|cRXP_WARN_注意：Itemrack 目前可能会在退出后导致游戏内 UI 冻结时出现问题。请确保禁用插件或制作一个 /reload 宏，当发生这种情况时您可以单击该宏|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_点击此处了解如何退出 跳过|r
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
    .target 雷米“两次”
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .accept 76 >>接任务: |cRXP_LOOT_玉石矿洞|r
    .target 杜汉元帅
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉|r
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
    .accept 61 >>接任务: |cRXP_LOOT_送往暴风城的货物|r
    .turnin 107 >>交任务: |cRXP_FRIENDLY_给威廉·匹斯特的信|r
    .accept 112 >>接任务: |cRXP_LOOT_收集海藻|r
    .target William Pestle
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
    >>|cRXP_BUY_从他那里购买 35|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_从他那里购买 a|r |T133634:0|t[小棕色袋] |cRXP_BUY_|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto Elwynn Forest,43.24,65.96,10,0
    .goto Elwynn Forest,42.88,65.52,12 >>退出旅馆
step
    .goto Elwynn Forest,50.45,62.69,50,0
    .goto Elwynn Forest,51.09,64.75,50,0
    .goto Elwynn Forest,52.66,64.95,50,0
    .goto Elwynn Forest,54.10,62.74,50,0
    .goto Elwynn Forest,57.48,63.21,50,0
    .goto Elwynn Forest,56.37,66.50
    >>杀死 |cRXP_ENEMY_Murloc Steamrunners|r 和 |cRXP_ENEMY_Murlocs|r。掠夺他们以获得 |cRXP_LOOT_Crystal Kelp Frond|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Murloc Steamrunners|r 有|r |T132307:0|t[增加移动速度]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto Elwynn Forest,61.66,53.96,12 >>进入 Jasperlode 矿井
step
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,60.40,50.16
    >>沿着洞穴中间的路走
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Kobold Geomancers|r 施法|r |T135812:0|t[火球术] |cRXP_WARN_(远程施法：造成约 30 点伤害)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,61.81,53.89,15 >>离开贾斯珀洛德矿井
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托马斯|r
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
    .accept 37 >>接任务: |cRXP_LOOT_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_LOOT_保卫边境|r
    .target 后卫托马斯
step
    #completewith next
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,72.59,65.60,45,0
    .goto Elwynn Forest,71.61,60.82,50,0
    >>杀死所有你看到的|cRXP_ENEMY_年轻的森林熊s|r 和 |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill 年轻的森林熊 (x5)
    .complete 52,1 --Kill Prowler (x8)
	.unitscan 年轻的森林熊
	.mob Prowler
step
    .goto Elwynn Forest,72.65,60.33
	>>点击地面上的 |cRXP_PICK_half-eaten body|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_LOOT_罗尔夫的下落|r
step
    #completewith 熊s
    .goto Elwynn Forest,78.78,60.94,70,0
    >>杀死所有你看到的|cRXP_ENEMY_年轻的森林熊s|r 和 |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill 年轻的森林熊 (x5)
    .complete 52,1 --Kill Prowler (x8)
	.unitscan 年轻的森林熊
	.mob Prowler
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
    .accept 5545 >>接任务: |cRXP_LOOT_木材危机|r
    .target Supervisor Raelen
step
    #completewith next
    >>拾取树根处的 |cRXP_PICK_Bundles Of Wood|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,79.79,55.51,45 >>前往|cRXP_PICK_Rolf 的尸体|r
    .isOnQuest 45
step
    .goto Elwynn Forest,79.79,55.51
    >>杀死守卫 |cRXP_PICK_Rolf 尸体|r 的 |cRXP_ENEMY_Murloc Lurkers|r 和 |cRXP_ENEMY_Murloc Foragers|r
    >>|cRXP_WARN_你可能必须杀死一个然后重置|r
    >>要小心 |cRXP_ENEMY_Murloc Lurkers|r 施放 |T132090:0|t[背刺] |cRXP_WARN_(近战瞬发：从背后造成双倍伤害) 和 |cRXP_ENEMY_Murloc Foragers|r 施放|r |T135915:0|t[饮用初级药水] |cRXP_WARN_(对自己施放：治疗约 65 点伤害)|r
	>>点击地面上的 |cRXP_PICK_Rolf's Corpse|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,79.68,52.31,35,0
	.goto Elwynn Forest,80.86,52.17,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,79.76,56.70,35,0
	.goto Elwynn Forest,80.15,60.03,35,0
	.goto Elwynn Forest,80.24,61.46,35,0
	.goto Elwynn Forest,81.27,61.59,35,0
	.goto Elwynn Forest,81.58,62.64,35,0
	.goto Elwynn Forest,82.79,60.12,35,0
	.goto Elwynn Forest,83.25,61.12,35,0
	.goto Elwynn Forest,83.48,59.19,35,0
	.goto Elwynn Forest,81.77,59.17,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
    >>拾取树根处的 |cRXP_PICK_Bundles Of Wood|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
    .target Supervisor Raelen
step
    #label 熊s
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
    .target Sara Timberlain
step
    .goto Elwynn Forest,75.05,72.54,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85,45,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85
    >>杀死所有你看到的|cRXP_ENEMY_年轻的森林熊s|r 和 |cRXP_ENEMY_Prowlers|r
    >>|cRXP_WARN_对 |cRXP_ENEMY_年轻的森林熊s|r 和 |cRXP_ENEMY_Prowlers|r 造成 51% 以上的伤害，然后将它们拉到 |cRXP_FRIENDLY_Stormwind Guard|r 处以更有效地杀死它们|r
    .complete 52,2 --Kill 年轻的森林熊 (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan 年轻的森林熊
    .mob Prowler
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托马斯|r
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
    .accept 39 >>接任务: |cRXP_LOOT_托马斯的报告|r
    .accept 109 >>接任务: |cRXP_LOOT_向格里安·斯托曼报到|r
    .target 后卫托马斯
    .xp <9,1
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托马斯|r
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
    .accept 39 >>接任务: |cRXP_LOOT_托马斯的报告|r
    .target 后卫托马斯
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto Elwynn Forest,70.45,76.94,40,0
	.goto Elwynn Forest,68.68,76.69,40,0
	.goto Elwynn Forest,68.23,77.78,40,0
	.goto Elwynn Forest,67.80,80.76,40,0
	.goto Elwynn Forest,68.49,82.68,40,0
	.goto Elwynn Forest,70.71,81.48,40,0
	.goto Elwynn Forest,70.63,80.66,40,0
	.goto Elwynn Forest,71.51,78.96,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,71.38,76.77,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,70.45,76.94,40,0
    >>杀死 |cRXP_ENEMY_Defias Bandits|r。掠夺他们以获得 |cRXP_LOOT_Red Linen Bandanas|r 和 |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] 开始任务|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] 开始任务|r
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
    .itemcount 1972,1
step
    .goto Elwynn Forest,69.89,79.52
    >>杀死 |cRXP_ENEMY_Princess|r。掠夺她的 |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_记得用栅栏放风筝|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto Redridge Mountains,9.62,71.36
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_小心地沿着通往 |cRXP_FRIENDLY_Ariena|r 的道路前行。避开途中的 |cRXP_ENEMY_狼蛛s|r 和 |cRXP_ENEMY_黑龙幼崽s|r|r
    .mob 黑龙幼崽
    .mob 狼蛛
step << skip
    .goto Redridge Mountains,30.59,59.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山飞行路线
    .target Ariena Stormfeather
step
    #completewith next
    .hs >>炉石到闪金镇
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉|r
    .turnin 112 >>交任务: |cRXP_FRIENDLY_收集海藻|r
    .accept 114 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r, Argus
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
    .turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
    .accept 239 >>接任务: |cRXP_LOOT_西泉要塞|r
    .accept 109 >>接任务: |cRXP_LOOT_向格里安·斯托曼报到|r
    .goto Elwynn Forest,42.105,65.927
    .accept 1097 >>接任务: |cRXP_LOOT_艾尔默的任务|r
    .goto Elwynn Forest,41.706,65.544
    .target 杜汉元帅
    .target Smith Argus
step
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r, 他在里面
    .turnin 114 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma|r and |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >>交任务: |cRXP_FRIENDLY_公主必须死！|r
    .goto Elwynn Forest,34.660,84.482
    .turnin 87 >>交任务: |cRXP_FRIENDLY_金牙|r
    .goto Elwynn Forest,34.486,84.253
    .target 马斯通菲尔德
    .target “阿姨”伯妮丝·斯通菲尔德
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >>升级至 4225+/6500xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >>升级至 4825+/6500xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto Elwynn Forest,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
    .target 副总统雷纳
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, Verna
    .accept 64 >>接任务: |cRXP_LOOT_遗失的怀表|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
    .goto Westfall,59.95,19.35
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 151 >>接任务: |cRXP_LOOT_老马布兰契|r
    .goto Westfall,59.91,19.41
    .target 农夫法布罗
    .target 维尔纳·法布罗
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, Verna
    .accept 64 >>接任务: |cRXP_LOOT_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 151 >>接任务: |cRXP_LOOT_老马布兰契|r
    .goto Westfall,59.91,19.41
    .target 农夫法布罗
    .target 维尔纳·法布罗
step
    #completewith next
    >>打开地面上的 |cRXP_PICK_Sacks of Oats|r。拾取它们可获得 |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Farmer Saldean|r and then |cRXP_FRIENDLY_Salma, 他在里面
    .accept 9 >>接任务: |cRXP_LOOT_清理荒野|r
    .goto Westfall,56.04,31.23
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .accept 38 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 22 >>接任务: |cRXP_LOOT_猪肝馅饼|r
    .goto Westfall,56.42,30.52
    .target Farmer Saldean
    .target Salma Saldean
step
    #completewith next
    >>|cRXP_WARN_途中要格外小心 |cRXP_ENEMY_Harvest Watchers|r 和 |cRXP_ENEMY_Harvest Golems|r|r
    .goto Westfall,56.33,47.52,20 >>前往 |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Gryan|r, |cRXP_FRIENDLY_Danuvin|r, and then |cRXP_FRIENDLY_Lewis, 他在里面
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
    .accept 12 >>接任务: |cRXP_LOOT_西部荒野人民军|r
    .goto Westfall,56.33,47.52
    .accept 102 >>接任务: |cRXP_LOOT_西部荒野的豺狼人|r
    .goto Westfall,56.42,47.62
    .accept 6181 >>接任务: |cRXP_LOOT_快递消息|r
    .goto Westfall,57.002,47.169
	.target 格里安·斯托曼托
	.target 丹努文船长
    .target Quartermaster Lewis
step
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .turnin 6181 >>交任务: |cRXP_FRIENDLY_快递消息|r
    .accept 6281 >>接任务: |cRXP_LOOT_赶赴暴风城|r
    .target Thor
step
    #completewith next
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
	.target Thor
step
    #completewith next
    .goto StormwindClassic,63.10,65.18,20,0
    .goto StormwindClassic,58.13,59.40,20,0
    .goto StormwindClassic,57.06,61.83,20,0
    .goto StormwindClassic,56.55,64.79,12,0
    .goto StormwindClassic,56.20,64.60,12 >>前往 |cRXP_FRIENDLY_Morgan|r
step
    .goto StormwindClassic,56.20,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
    .target Morgan Pestle
step
    .goto StormwindClassic,52.62,65.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿莉森|r
    .home >>将你的炉石设置为暴风城
    .target Innkeeper Allison
step << skip
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_跳到火炬上，然后跳下来，躲到暴风城下面|r
    >>|cRXP_WARN_将阴影设置为“良好”或“低”，在蓝色虚空前，站在恐龙德里克脚的中间（泥土较浅的部分），然后径直向前走|r
    .goto Stormwind City,38.61,79.39,10 >>前往 |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto Stormwind City,38.61,79.39
    >>对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
    .trainer >>训练你的职业法术（冰霜护甲 r2、冰霜新星、变形术、召唤水系 r1 r2）
    >>总花费：15秒
    >>请记住，你可能需要钱来购买治疗药水（每瓶 3​​ 先令）、青铜管（每瓶 8 先令）和 5 级食物（每 5 瓶 20 美分）
    .target Jennea Cannon
step << skip
    #completewith next
    .goto Stormwind City,36.30,82.90,6 >>通过绿色门户
step << skip
    #completewith next
    .goto Stormwind City,42.07,79.44,30,0
    .goto Stormwind City,45.12,75.37,30,0
    .goto Stormwind City,44.33,70.20,30,0
    .goto Stormwind City,46.20,67.09,30,0
    .goto Stormwind City,49.44,63.25,30,0
    .goto Stormwind City,52.20,61.49,30,0
    .goto Stormwind City,55.46,65.26,10 >>前往 |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    >>|cRXP_WARN_注意：要执行此操作，请在“选项”菜单中的“游戏玩法”->“控制”下绑定“与目标互动”|r
    .vendor 1257 >>|cRXP_BUY_从他那里购买|r |T134830:0|t[次级治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Keldric Boucher
step
    #completewith next
    .goto StormwindClassic,57.32,59.15,10,0
    .goto StormwindClassic,58.17,57.90,12,0
    .goto StormwindClassic,57.81,54.73,12,0
    .goto StormwindClassic,60.05,51.60,12,0
    .goto StormwindClassic,67.54,46.88,12,0
    .goto StormwindClassic,71.01,48.62,12,0
    .goto StormwindClassic,74.31,47.22,12 >>前往 |cRXP_FRIENDLY_Osric|r
step
    .goto StormwindClassic,74.31,47.22
    >>对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
    .accept 6261 >>接任务: |cRXP_LOOT_杜加尔·朗德瑞克|r
    .target Osric Strang
step
    #completewith next
    .goto StormwindClassic,69.20,40.75,15,0
    .goto StormwindClassic,67.03,40.27,15,0
    .goto StormwindClassic,64.49,36.75,15,0
    .goto StormwindClassic,64.97,29.32,15,0
    .goto StormwindClassic,51.89,13.19,12,0
    .goto StormwindClassic,51.76,12.08,12 >>前往 |cRXP_FRIENDLY_Grimand|r
step
    .goto StormwindClassic,51.76,12.08
    >>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >>交任务: |cRXP_FRIENDLY_艾尔默的任务|r
    .accept 353 >>接任务: |cRXP_LOOT_雷矛的包裹|r
    .target Grimand Elmore
step
    .goto Stormwind City,55.25,7.07
    >>对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >>前往 Deeprun 缆车
step
    #completewith next
    +|cRXP_WARN_乘坐深泉电车并进行垃圾邮件发送|r |T132794:0|t[召唤水 r2]
step
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
    >>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
    .target Monty
step
    >>使用 |T133942:0|t[捕鼠者长笛] 对深泉有轨电车上的 |cRXP_FRIENDLY_深泉老鼠|r 进行攻击
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>对话: |cRXP_FRIENDLY_蒙提|r
--  >>|cRXP_WARN_等待 RP|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .isQuestAvailable 314
step
    .goto Ironforge,67.83,42.47
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Ironforge,69.93,34.13,30,0
    .goto Ironforge,63.03,30.09,30,0
    .goto Ironforge,57.78,35.11,30,0
    .goto Ironforge,55.49,47.74,10 >>前往 |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获取铁炉堡飞行路线
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>前往 |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业法术（冰霜护甲 r2、冰霜新星、变形术、召唤水系 r1 r2）
    >>总花费：15秒
    >>请记住，你可能需要钱来购买治疗药水（每瓶 3​​ 先令）、青铜管（每瓶 8 先令）和 5 级食物（每 5 瓶 20 美分）
    .target Dink
step
    #completewith next
    .goto Ironforge,27.25,12.79,20,0
    .goto Ironforge,22.59,38.13,20,0
    .goto Ironforge,20.40,53.19,20,0
    >>进入大楼
    .goto Ironforge,18.14,51.45,10 >>前往 |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Talk to |cRXP_FRIENDLY_Firebrew|r
    .home >>将你的炉石设置为铁炉堡
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto Ironforge,33.05,63.11,20,0
    .goto Ironforge,35.93,60.13,30 >>进入铁炉堡银行
step
    .goto Ironforge,35.93,60.13
    >>对话: |cRXP_FRIENDLY_拜雷|r
    .bankdeposit 4371,16115 >>将以下物品存入银行：
    >>|T133024:0|t[青铜管]
    >>|T132763:0|t[奥斯瑞克的板条箱]
    .target Bailey Stonemantle
step
    .goto Ironforge,36.35,57.88
    .goto Dun Morogh,53.03,35.71,10 >>|cRXP_WARN_跳到金库的顶部。退出并跳到丹莫洛|r
    .isQuestAvailable 314
]])

RXPGuides.RegisterGuide([[
#classic
<< Human Mage
#name 10-11 冒险 丹莫罗人类 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage
#next 10-12 冒险 黑海岸 1 法师 AoE

step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>沿着泥路向上走
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_风筝 |cRXP_ENEMY_Vagash|r 向下至|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>杀死 |cRXP_ENEMY_Vagash|r。从他身上搜刮 |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_将 |cRXP_ENEMY_Vagash|r 放风筝到牧场南边的 |cRXP_FRIENDLY_Dun Morogh Mountaineer|r。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_如果方便的话，记得获取 Tundrid Hills 的探索经验并将 |cRXP_ENEMY_雪豹|r 拉到 |cRXP_FRIENDLY_Dun Morogh Mountaineer|r|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314,3 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_记得保存|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_你升级后得到的|r |T133971:0|t[烹饪] |cRXP_WARN_到 50 后|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_将 |cRXP_ENEMY_冰爪熊|r 放风筝到 |cRXP_FRIENDLY_Ironforge Mountaineer|r 处（确保造成 51% 以上的伤害才能获得奖励）|r
    >>|cRXP_WARN_小心他们施放|r |T135853:0|t[冰爪] |cRXP_WARN_(近战瞬发：造成额外的 4 点近战伤害)|r
    .mob 冰爪熊
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>对话: |cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >>训练 |T133971:0|t[烹饪]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    >>|cRXP_BUY_从他那里购买 15|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    >>|cRXP_BUY_从他那里购买 10|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    >>|cRXP_BUY_从他那里购买 5|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Talk to |cRXP_FRIENDLY_Mehr|r and |cRXP_FRIENDLY_Stonebrow|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
    .goto Dun Morogh,68.67,55.97
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target 参议员梅尔·斯通哈洛
    .target 工头石眉
step
    #completewith Bonesnappers
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_不要特意去杀他们|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>进入洞穴
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>杀死洞穴内的 |cRXP_ENEMY_岩颚骨撕咬者s|r
    >>|cRXP_WARN_小心他们施放|r |T132154:0|t[击倒] |cRXP_WARN_(近战瞬间：眩晕 2 秒)|r
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
    .mob 岩颚骨撕咬者
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>对话: |cRXP_FRIENDLY_弗拉斯特·多克南|r
    .vendor >>供应商垃圾
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Talk to |cRXP_FRIENDLY_Stonebrow|r and |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .goto Dun Morogh,68.67,55.97
    .target 工头石眉
    .target 参议员梅尔·斯通哈洛
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Talk to |cRXP_FRIENDLY_Dank|r
    .train 2575 >>列车 |T136248:0|t[采矿]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .goto Dun Morogh,70.52,54.75,12 >>走 |cRXP_FRIENDLY_Dank|r 后面的捷径
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_将附近的 |cRXP_ENEMY_Rockjaw Ambushers|r 放风筝到可以在路上巡逻的 |cRXP_FRIENDLY_Ironforge Mountaineers|r 上（确保造成 51% 以上的伤害才能获得奖励）|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>放风筝 |cRXP_ENEMY_Scarred Crag Boar|r 通过隧道
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放）|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>点击地面上的 |cRXP_PICK_Dwarven Corpse|r
    >>|cRXP_WARN_确保您有一个空闲的库存槽。|cRXP_ENEMY_Mangeclaw|如果您不接受下一个任务，r 将不会下来|r
    >>|cRXP_WARN_记住你正在放风筝|cRXP_ENEMY_Mangeclaw|r回到|cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。从他身上搜刮 |cRXP_LOOT_Mangy Claw|r
    >>|cRXP_WARN_将他一路放风筝到 |cRXP_FRIENDLY_Hammerfoot|r （确保造成 51% 以上的伤害才能获得奖励）|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417,1 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>穿过隧道跑回去
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>放风筝 |cRXP_ENEMY_Scarred Crag Boar|r 在途中
    .goto Dun Morogh,84.26,48.93,20 >>跳山。记得小心地跳下去
    .mob Scarred Crag Boar
step
    .goto Loch Modan,19.01,61.88
    >>放风筝 |cRXP_ENEMY_Scarred Crag Boar|r 通过隧道
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放）|r
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_尝试将附近的 |cRXP_ENEMY_黑熊长老|r 或 |cRXP_ENEMY_森林潜伏者|r 放风筝到地堡中（记得造成 51% 以上的伤害才能获得奖励）|r
    >>|cRXP_WARN_抢劫 |cRXP_ENEMY_老黑熊|r 以获取他们的|r |T134027:0|t[|cRXP_LOOT_熊肉|r]
    >>|cRXP_WARN_Loot |cRXP_ENEMY_森林潜伏者s|r 以获取他们的|r |T134437：0|吨[|cRXP_LOOT_Spider Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_、|cRXP_FRIENDLY_Gravelgaw|r 和 |cRXP_FRIENDLY_Wallbang|r 不会帮助你|r
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob 黑熊长老
    .mob 森林潜伏者
step
    #label Cobbleflint
    .goto Loch Modan,22.071,73.127
    >>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
    .target 登山者科布尔弗林特
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。前往顶楼
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
    .target 鲁格尔福斯上尉
step
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>回到隧道
step
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_从通往塞尔萨玛的隧道内的火盆中跳跃退出|r
    .isOnQuest 267
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛主干道|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
    .target Mountaineer Kadrell
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >>获取塞尔萨玛飞行路线
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .isOnQuest 416
step
    #completewith next
    .goto Ironforge,43.83,59.58,20,0
    .goto Ironforge,38.27,71.43,20,0
    .goto Ironforge,33.70,76.24,10 >>|cRXP_WARN_前往退出跳过点|r
step
    .goto Ironforge,33.70,76.24
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 调整角色的位置，直到他们看起来像是漂浮在金属栏杆的边缘。退出跳转到丹莫罗|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
<< Gnome Mage
#name 1-10 冒险 丹莫罗侏儒 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Gnome Mage
#next 10-12 冒险 黑海岸 1 法师 AoE


step << !Gnome Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在你的种族起始区之外开始游戏，因为你将无法在这里获得你的第一个符文 (|T133816:0|t[雕刻手套 - 冰枪])
step
    #completewith next
    +您已选择高级指南。这是游戏中速度最快的职业（联盟法师）的最快指南。因此，将使用许多小众机制以及高难度的 AoE 拉动。在学习过程中坚持不懈！祝你好运！
step
    #completewith Adlin
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .accept 179 >>接任务: |cRXP_LOOT_矮人的交易|r
    .target Sten Stoutarm
step
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>杀死 |cRXP_ENEMY_Ragged Young Wolves|r。掠夺他们的 |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾
    >>|cRXP_BUY_从他那里购买 15|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你没有足够的钱，可以额外升级|cRXP_ENEMY_Ragged Young Wolves|r|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾
    >>|cRXP_BUY_从他那里购买 15|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你没有足够的钱，可以额外升级|cRXP_ENEMY_Ragged Young Wolves|r|r
    >>|cRXP_WARN_确保你节省了 10c 以备后用|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯登·粗臂|r, |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 179,3 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3114 >>接任务: |cRXP_LOOT_雕文备忘录|r
    .goto Dun Morogh,29.927,71.201
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
    .goto Dun Morogh,29.71,71.25
    .target Sten Stoutarm
    .target Balir Frosthammer
step
    #xprate >1.09
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179,3 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3114 >>接任务: |cRXP_LOOT_雕文备忘录|r
    .target Sten Stoutarm
step 
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r 和 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
    .isOnQuest 170
step
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的 |cRXP_PICK_Rockjaw 储物柜|r。拾取其中的 |T134939:0|t|cRXP_LOOT_[法术注释：CALE ENCI]|r
    >>|cRXP_WARN_注意：你将无法在此处训练|r |T133816:0|t[雕刻手套 - 冰枪] |cRXP_WARN_，因为你只能在你种族的起始区获得|r |T133736:0|t[理解入门] |cRXP_WARN_|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome
    #season 2
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >>进入安威玛尔
step
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r << Gnome
    .accept 77667 >>接受法术研究 << Gnome
    .turnin 77667 >>提交法术研究 << Gnome
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target 马里克·努里比特
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equip the|r |T132961:0|t[破烂的布手套]
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_将你的|r |T132961:0|t[破烂布手套] 雕刻成|r |T133816:0|t[雕刻手套 - 冰枪]
    .train 401760,1
step
    #season 2
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >>离开安威玛尔
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r 和 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg 
    .isOnQuest 170
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
    .accept 183 >>接任务: |cRXP_LOOT_猎杀野猪|r
    .accept 234 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>杀死 |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 183 >>交任务: |cRXP_FRIENDLY_猎杀野猪|r
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
    .target 格雷林·白胡子
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Frostmane 巨魔幼龙|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,26.73,79.72,30 >>进入洞穴
    .isOnQuest 182
step
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85
    >>杀死洞穴内的 |cRXP_ENEMY_Frostmane Troll Whelps|r
    >>|cRXP_WARN_清理一条通往冰冻湖房间前的道路|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,28.29,79.85,50,0
    .goto Dun Morogh,27.30,80.85,40,0
    .goto Dun Morogh,25.78,78.31,40,0
    .goto Dun Morogh,27.12,78.68,40,0
    .goto Dun Morogh,25.95,80.39,40,0
    .goto Dun Morogh,25.78,78.31
    >>在返回 |cRXP_FRIENDLY_格雷林·白胡子|r 的途中杀死 |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #completewith next
    +|cRXP_WARN_如果你不知道如何退出，请先观看此视频|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_点击此处了解如何退出 跳过|r
step
    >>对话: |cRXP_FRIENDLY_格瑞林·白须|r, |cRXP_FRIENDLY_诺里斯·激流|r
    >>|cRXP_WARN_请注意，“Scalding Mornbrew Delivery”有 5 分钟的计时器|r
    >>|cRXP_WARN_确保你有 3 个库存槽用于这些上交/接受|r
    .turnin 182,4 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
    .accept 218 >>接任务: |cRXP_LOOT_被窃取的日记|r
    .goto Dun Morogh,25.076,75.713,-1
    .target +格雷林·白胡子
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .goto Dun Morogh,24.98,75.96,-1
    .target +诺里·普里德瑞夫特
step
    .goto Dun Morogh,26.73,79.72,40,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,29.67,79.68,10 >>|cRXP_WARN_进入洞穴。沿着清理出来的路径跑（尽量不要战斗）到达里面的冰冻湖|r
    .isOnQuest 218
step
    .goto Dun Morogh,30.48,80.16
    >>|cRXP_WARN_杀死你面前的 |cRXP_ENEMY_Frostmane Troll Whelp|r|r
    >>杀死 |cRXP_ENEMY_Grik'nir the Cold|r。搜刮他以获取 |cRXP_LOOT_格雷林·白胡子 的日记|r
    >>|cRXP_WARN_当他施放时要小心|r |T135849:0|t[冰霜冲击] |cRXP_WARN_（范围瞬发：造成 10 点冰霜伤害并使移动速度降低 50% 持续 8 秒）|r
    .complete 218,1 --Collect 格雷林·白胡子's Journal (x1)
    .mob Grik'nir the Cold
step
    #completewith Rybrad
    #label LogoutSkip1
    .goto Dun Morogh,29.63,79.50
    .goto Dun Morogh,29.76,69.66,30 >>|cRXP_WARN_调整你的角色位置，直到他们看起来像是漂浮在冰冻湖上方的悬崖边缘，然后退出并跳回安威玛尔|r
    .isOnQuest 218
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto Dun Morogh,28.79,69.04,20,0
    .goto Dun Morogh,28.63,68.43,10 >>进入安威玛尔
    .isOnQuest 218
step
    #label Rybrad
    .goto Dun Morogh,28.66,67.74
    >>对话: |cRXP_FRIENDLY_雷布莱德·寒椅|r
    .vendor >>供应商垃圾
    .target Rybrad Coldbank
    .isOnQuest 218
step
    >>对话: |cRXP_FRIENDLY_德南·弗卡特|r, |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .goto Dun Morogh,28.77,66.37
    .target +杜南·弗卡特
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r
    .trainer >>训练你的职业法术（奥术智慧、冰霜箭）
    .goto Dun Morogh,28.709,66.366
    .target +马里克·努里比特
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto Dun Morogh,29.71,71.25
    >>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170,3 >>交任务: |cRXP_FRIENDLY_新的威胁|r
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .waypoint 1426,27.858,76.482,50,0
    .waypoint 1426,28.946,77.153,50,0
    .waypoint 1426,29.716,77.605,50,0
    .waypoint 1426,30.727,76.831,50,0
    .waypoint 1426,32.814,75.221,50,0
    .waypoint 1426,31.138,74.048,50,0
    .waypoint 1426,30.077,74.479,50,0
    .waypoint 1426,29.280,75.500,50,0
    >>|cRXP_WARN_杀死所有 |cRXP_ENEMY_Rockjaw Troggs|r 你看到的和|r |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label StolenJ
    >>对话: |cRXP_FRIENDLY_格瑞林·白须|r, |cRXP_FRIENDLY_诺里斯·激流|r
    .turnin 218,2 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
    .goto Dun Morogh,25.076,75.713
    .target +格雷林·白胡子
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
    .goto Dun Morogh,24.98,75.96
    .target +诺里·普里德瑞夫特
step
    #xprate <1.1
    #requires TroggEnd
    .goto Dun Morogh,29.71,71.25
    >>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170,3 >>交任务: |cRXP_FRIENDLY_新的威胁|r
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #requires TroggEnd
    #label Observations
    >>对话: |cRXP_FRIENDLY_巡山人萨鲁斯|r, |cRXP_FRIENDLY_汉兹·跳链|r
    .turnin 282 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
    .accept 420 >>接任务: |cRXP_LOOT_森内尔的观察站|r
    .goto Dun Morogh,33.484,71.841
    .target +登山者泰洛斯
    .accept 2160 >>接任务: |cRXP_LOOT_塔诺克的补给品|r
    .goto Dun Morogh,33.85,72.24
    .target +指针 弹簧链轮
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >>放弃新的威胁
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>穿越寒脊山口
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto Dun Morogh,36.51,62.94,40,0
    >>杀死 |cRXP_ENEMY_Crag Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放）|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto Dun Morogh,37.97,61.87,30,0
    .goto Dun Morogh,39.89,59.26,45 >>|cRXP_WARN_对附近的 |cRXP_ENEMY_Juvenile 雪豹s|r 和 |cRXP_ENEMY_年轻的黑熊s|r 造成 51%+ 的伤害，然后将它们拉到 |cRXP_FRIENDLY_Ironforge Mountaineer|r 处以更有效地杀死它们|r
    .mob Juvenile 雪豹
    .mob 年轻的黑熊
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto Dun Morogh,43.44,55.64,50,0
    .goto Dun Morogh,44.14,52.64,50,0
    .goto Dun Morogh,46.021,51.676,20 >>前往 |cRXP_FRIENDLY_Tharek|r
step
    .goto Dun Morogh,46.021,51.676
    >>对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
    .target Tharek Blackstone
step
    #label StockingJ
    .goto Dun Morogh,49.426,48.410
    >>风筝 |cRXP_ENEMY_年轻的黑熊s|r 途中 |cRXP_WARN_(确保造成 51% 以上的伤害才能获得奖励)|r
    >>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
    .mob 年轻的黑熊
    .target 飞行员 Bellowfiz
step
    >>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r, |cRXP_FRIENDLY_贝尔丁·钢架|r, |cRXP_FRIENDLY_罗斯洛·鲁治|r
    >>|cRXP_WARN_放风筝 |cRXP_ENEMY_年轻的黑熊s|r 给 |cRXP_FRIENDLY_Ironforge Mountaineer|r 如果你拉到任何（确保造成 51% 以上的伤害以获得信用）|r
    .accept 313 >>接任务: |cRXP_LOOT_灰色洞穴|r
    .goto Dun Morogh,49.622,48.612
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
    .goto Dun Morogh,50.45,49.09
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
    .vendor >>供应商垃圾
    .goto Dun Morogh,50.084,49.420
    .target 飞行员石甲
    .target Beldin 钢烤架
    .target 洛斯洛·拉奇
    .isQuestAvailable 312
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放）|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38
    >>杀死 |cRXP_ENEMY_幼年黑熊|r 和 |cRXP_ENEMY_冰爪熊|r。掠夺它们的 |cRXP_LOOT_厚熊皮|r
    >>|cRXP_WARN_将 |cRXP_ENEMY_年轻的黑熊s|r 和 |cRXP_ENEMY_冰爪熊s|r 放风筝到附近的 |cRXP_FRIENDLY_Ironforge Mountaineers|r （确保造成 51% 以上的伤害才能获得奖励）|r
    >>|cRXP_WARN_小心他们施放|r |T135853:0|t[冰爪] |cRXP_WARN_(近战瞬发：造成额外的 4 点近战伤害)|r
    .complete 317,2 --Collect Thick 熊 Fur (x2)
    .mob 年轻的黑熊
    .mob 冰爪熊
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放）|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .target 飞行员 Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    .xp 5+2690 >>升级至 2690+/2800xp
    .mob 年轻的黑熊
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_记住旅馆登出跳过。解除你当前的装备|r |T135148:0|t[工作人员]
    >>|cRXP_WARN_注意：Itemrack 目前可能会在退出后导致游戏内 UI 冻结的问题。请确保禁用插件或创建 /reload 命令，当发生这种情况时您可以单击该命令|r
step
    #completewith Tannok
    .cast 1459 >>反击 |T135932:0|t[奥术智慧]
    .cast 168 >>反击 |T135843:0|t[冰霜护甲]
step
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>进去
step
    .goto Dun Morogh,47.217,52.195
    >>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160,2 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>进去
step
    #sticky
    #label Tannok
    .goto Dun Morogh,47.217,52.195,0,0
    >>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160,2 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.50,52.08
    >>Talk to |cRXP_FRIENDLY_Magis|r upstairs
    .trainer >>训练你的职业法术（火球 R2、火焰冲击）
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    .home >>将你的炉石设置为雷酒酿酒厂
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 20|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 15|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 10|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 5|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 20|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 15|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 10|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 5|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step
    #completewith SenirO
    .goto Dun Morogh,47.46,52.60,-1
    .goto Dun Morogh,47.13,54.91,35 >>|cRXP_WARN_跳到 |cRXP_FRIENDLY_Belm|r 后面墙上的桶顶上。退出 跳到 Kharanos|r
step
    #sticky
    #label Golorn
    .goto Dun Morogh,46.77,53.72,-1
    >>对话: |cRXP_FRIENDLY_戈隆·霜须|r
    >>|cRXP_BUY_从他那里购买一把|r |T135637:0|t[剥皮刀] |cRXP_BUY_|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto Dun Morogh,46.726,53.826,-1
    >>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +装备|T135637:0|t[剥皮刀]
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>杀死 |cRXP_ENEMY_Young Wendigos|r 和 |cRXP_ENEMY_Wendigos|r。掠夺他们的 |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_施放时请小心|r |T135848:0|t[冰霜吐息] |cRXP_WARN_（近战施法：造成 6-10 点冰霜伤害）并且增加了|r |T135849:0|t[冰霜抗性]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>打开地面上的 |cRXP_PICK_Ammo Crate|r。从中获取 |cRXP_LOOT_Rumbleshot's Ammo|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>途中杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Juvenile 雪豹s|r
    >>掠夺 |cRXP_ENEMY_Crag Boars|r 以获取其 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Crag Boars|r 施放|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto Dun Morogh,40.682,65.130,20 >>前往 |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile 雪豹
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>途中杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Juvenile 雪豹s|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Crag Boars|r 施放|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放)|r
    .goto Dun Morogh,40.682,65.130,20 >>前往 |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile 雪豹
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto Dun Morogh,40.60,62.24,45,0
    .goto Dun Morogh,40.682,65.130,20 >>前往 |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto Dun Morogh,40.682,65.130
    >>Talk to |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
    .vendor >>供应商垃圾
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
    >>|cRXP_WARN_对附近的 |cRXP_ENEMY_Juvenile 雪豹s|r 和 |cRXP_ENEMY_年轻的黑熊s|r 造成 51%+ 的伤害，然后将它们拉到 |cRXP_FRIENDLY_Ironforge Mountaineer|r 处以更有效地杀死它们|r
    >>途中杀死 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_Crag Boars|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_当 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_Crag Boars|r 施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_(Self Instant: 增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >>在前往 |cRXP_FRIENDLY_Tundra|r 的途中磨练至 7 级，然后与他交谈
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile 雪豹
    .isQuestAvailable 384
step
    #completewith next
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
    >>|cRXP_WARN_对附近的 |cRXP_ENEMY_Juvenile 雪豹s|r 和 |cRXP_ENEMY_年轻的黑熊s|r 造成 51%+ 的伤害，然后将它们拉到 |cRXP_FRIENDLY_Ironforge Mountaineer|r 处以更有效地杀死它们|r
    >>途中杀死 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_Crag Boars|r
    >>|cRXP_WARN_当 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_Crag Boars|r 施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_(Self Instant: 增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放)|r
    .xp 7 >>在前往 |cRXP_FRIENDLY_Tundra|r 的途中磨练至 7 级，然后与他交谈
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile 雪豹
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto Dun Morogh,34.57,51.66
    >>Talk to |cRXP_FRIENDLY_Tundra|r
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_放风筝一只 |cRXP_ENEMY_冰爪熊|r 朝向|r |cRXP_FRIENDLY_Rejold|r
    >>|cRXP_WARN_尝试在 |cRXP_ENEMY_冰爪熊|r 死亡之前接受任务以获得任务奖励|r
    >>|cRXP_WARN_小心他们施放|r |T135853:0|t[冰爪] |cRXP_WARN_(近战瞬发：造成额外的 4 点近战伤害)|r
    >>|cRXP_WARN_确保造成 51% 以上的伤害才能获得积分|r
    .mob 冰爪熊
step
    >>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r, |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 318 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .accept 319 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .accept 315 >>接任务: |cRXP_LOOT_完美烈酒|r
    .goto Dun Morogh,30.19,45.73
    .accept 310 >>接任务: |cRXP_LOOT_针锋相对|r
    .goto Dun Morogh,30.186,45.531
    .target Rejold 大麦啤酒
    .target 马莱斯大麦啤酒
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_再购买最多 10 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .vendor >>供应商垃圾
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_再购买最多 5 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .vendor >>供应商垃圾
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
    >>在前往洞穴的路上杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r。从 |cRXP_ENEMY_老峭壁野猪s|r 中拾取 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_重点关注|r |cRXP_ENEMY_雪豹s|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_冰爪熊s|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(近战瞬发：造成额外 4 点近战伤害) 和 |cRXP_ENEMY_老峭壁野猪s|r cast|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放)|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .complete 384,1 --Crag Boar Rib (6)
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
    .isQuestAvailable 384
step
    #completewith CaveLS
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
    >>在前往洞穴的途中杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r
    >>|cRXP_WARN_重点关注|r |cRXP_ENEMY_雪豹s|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_冰爪熊s|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(近战瞬发：造成额外 4 点近战伤害) 和 |cRXP_ENEMY_老峭壁野猪s|r cast|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 25-70 点近战伤害。仅可远距离施放)|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
    .isQuestTurnedIn 384
step
    #completewith next
    .goto Dun Morogh,38.00,42.77,30 >>进入洞穴
    .isOnQuest 319
step
    #label CaveLS
    .goto Dun Morogh,38.32,43.36
    .goto Dun Morogh,47.13,54.91,30 >>|cRXP_WARN_在洞穴内执行注销跳过以传送回卡拉诺斯|r
    .isOnQuest 319
step
    .goto Dun Morogh,46.726,53.826
    >>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.19,52.02,12 >>进去
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_并|r |T132800:0|t[Thunder Ale] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto Dun Morogh,47.50,52.40,8,0
    .goto Dun Morogh,47.72,52.43,8 >>下楼
step
    #completewith next
    .goto Dun Morogh,47.65,52.66
    >>对话: |cRXP_FRIENDLY_加文·雷酒|r, 他在楼下
    .turnin 308 >>交任务: |cRXP_FRIENDLY_加文的爱好|r
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.72,52.70
    >>继续将鼠标悬停在楼下的 |cRXP_PICK_Guarded Thunder Ale Barrel|r 上。等待 |cRXP_PICK_Guarded Thunder Ale Barrel|r 变为无人看守
    >>点击 |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >>交任务: |cRXP_FRIENDLY_针锋相对|r
    .accept 311 >>接任务: |cRXP_LOOT_向马莱斯回报|r
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_再购买最多 10 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_再购买最多 5 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto Dun Morogh,47.19,52.02,12,0
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,46.83,52.36,20 >>退出旅馆
    .isOnQuest 287
step
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto Dun Morogh,46.65,47.42,40,0
    +|cRXP_WARN_对附近的 |cRXP_ENEMY_雪地追踪狼|r、|cRXP_ENEMY_冬狼|r 和 |cRXP_ENEMY_幼年黑熊|r 造成 51% 以上的伤害。将它们拉到 |cRXP_FRIENDLY_铁炉堡登山者|r 处，以更有效地杀死它们|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Snow Tracker Wolves|r 有|r |T132150:0|t[增加了攻击范围] |cRXP_WARN_(攻击范围增加了约 8 码)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob 年轻的黑熊
    .target Ironforge Mountaineer
step
    .goto Dun Morogh,42.91,45.17,25,0
    .goto Dun Morogh,42.32,45.27,45 >>跑上斜坡，朝着 |cRXP_ENEMY_霜鬃先知s|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>杀死 |cRXP_ENEMY_Frostmane Headhunter|r 巡逻队
    >>|cRXP_WARN_要小心，因为他会在所有静止的|r |cRXP_ENEMY_霜鬃先知s 之间巡逻|r
    >>|cRXP_WARN_小心他们施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 8-15 点伤害)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto Dun Morogh,42.07,45.48,40,0
    .goto Dun Morogh,42.11,44.63,40,0
    .goto Dun Morogh,41.67,43.53,40,0
    .goto Dun Morogh,41.27,44.37,20,0
    .goto Dun Morogh,41.48,45.01,30,0
    .goto Dun Morogh,41.08,44.86,30,0
    .goto Dun Morogh,41.14,45.54,40,0
    .goto Dun Morogh,40.34,42.84,40,0
    .goto Dun Morogh,39.67,39.87,20,0
    .goto Dun Morogh,39.94,37.70,20,0
    .goto Dun Morogh,41.84,35.63
    >>杀死 |cRXP_ENEMY_霜鬃先知s|r。掠夺他们的 |cRXP_LOOT_Shimmerweed|r
    >>打开地面上的 |cRXP_PICK_Shimmerweed Baskets|r。拾取其中的 |cRXP_LOOT_Shimmerweed|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    >>|cRXP_WARN_施放时要小心|r |T136048:0|t[闪电] |cRXP_WARN_(远程施法：造成 15-30 自然伤害)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob 霜鬃先知
step
    #completewith IBCave
    >>杀死 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_老峭壁野猪s|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob 老峭壁野猪
step
    #completewith next
    .goto Dun Morogh,40.45,47.23,40,0
    .goto Dun Morogh,37.72,51.88,40,0
    >>杀死前往洞穴途中的两只 |cRXP_ENEMY_老峭壁野猪s|r （如果它们在的话）
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 25-85 点近战伤害。仅可远距离施放）|r
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .mob 老峭壁野猪
step
    #label IBCave
    .goto Dun Morogh,37.85,53.71,50 >>前往洞穴
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_抢劫后，记得跳跃转身以避开 Daze 的攻击，并跳到木头上暂时躲避他|r
step
    .goto Dun Morogh,38.51,53.93
    >>|cRXP_WARN_如果 |cRXP_ENEMY_Old Icebeard|r 在洞穴中，将他放风筝到洞穴的一侧，然后一直到洞穴上方。等他靠近，然后跳回洞穴，然后朝洞穴后面走去|r
    >>打开地面上的 |cRXP_PICK_MacGrann 的肉柜|r。拾取 |cRXP_LOOT_Macgrann 的干肉|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto Dun Morogh,34.57,51.66
    >>Talk to |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
    .target Tundra MacGrann
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r。掠夺 |cRXP_ENEMY_老峭壁野猪s|r 以获得 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_如果可能的话，记得将 |cRXP_ENEMY_冰爪熊|r 或 |cRXP_ENEMY_雪豹s|r 放回给任务给予者|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_冰爪熊s|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(近战瞬发：造成额外 4 点近战伤害) 和 |cRXP_ENEMY_老峭壁野猪s|r cast|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 35-85 点近战伤害。仅可远距离施放)|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
    .isQuestAvailable 384
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r
    >>|cRXP_WARN_如果可能的话，记得将 |cRXP_ENEMY_冰爪熊|r 或 |cRXP_ENEMY_雪豹s|r 放回给任务给予者|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_冰爪熊s|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(近战瞬发：造成额外 4 点近战伤害) 和 |cRXP_ENEMY_老峭壁野猪s|r cast|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 35-85 点近战伤害。仅可远距离施放)|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
    .isQuestTurnedIn 384
step
    >>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r, |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 315,1 >>交任务: |cRXP_FRIENDLY_完美烈酒|r
    .accept 413 >>接任务: |cRXP_LOOT_微光酒|r
    .turnin 319 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .accept 320 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .goto Dun Morogh,30.189,45.725
    .turnin 311 >>交任务: |cRXP_FRIENDLY_向马莱斯回报|r
    .goto Dun Morogh,30.186,45.531
    .target Rejold 大麦啤酒
step
    .goto Dun Morogh,30.45,46.01
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_再购买最多 10 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto Dun Morogh,30.45,46.01
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_再购买最多 5 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>杀死 |cRXP_ENEMY_老峭壁野猪s|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 35-85 点近战伤害。仅可远距离施放）|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob 老峭壁野猪
step
    #completewith Explore
    .goto Dun Morogh,25.12,49.54,35,0
    .goto Dun Morogh,24.94,50.61,12 >>从北侧进入洞穴
step
    .goto Dun Morogh,24.29,50.80,40,0
    .goto Dun Morogh,23.31,51.36
    >>杀死洞穴内的 |cRXP_ENEMY_Frostmane Headhunters|r
    >>|cRXP_WARN_小心他们施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 8-15 点伤害)|r
    >>|cRXP_WARN_小心里面巡逻的|cRXP_ENEMY_Frostmane Headhunter|r|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto Dun Morogh,23.01,52.04,8,0
    .goto Dun Morogh,22.90,52.09
    >>|cRXP_WARN_小心地走到下面的角落（不要摔倒）。小心地走到角落，直到获得积分|r
    >>|cRXP_WARN_小心下面的 |cRXP_ENEMY_Frostmane Hideskinner|r，因为如果他靠近角落，他可能会攻击你|r
    >>|cRXP_WARN_准备施法|r |T134414:0|t[炉石]
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_记住旅馆登出后立即跳过！|r
step
    #completewith Senir2
    .hs >>炉石到卡拉诺斯
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.50,52.08
    >>Talk to |cRXP_FRIENDLY_Magis|r upstairs
    .trainer >>训练你的职业法术（冰箭 r2、变形术）
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_记得保存|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_你升级后得到的|r |T133971:0|t[烹饪] |cRXP_WARN_到 50 后|r
step
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto Dun Morogh,46.726,53.826
    >>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287,2 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >>反击 |T135932:0|t[奥术智慧]
    .cast 168 >>反击 |T135843:0|t[冰霜护甲]
step
    >>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r, |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 320,2 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .goto Dun Morogh,49.426,48.410
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
    .goto Dun Morogh,49.622,48.612
    .target 飞行员 Bellowfiz
    .target 飞行员石甲
step
    #completewith next
    +|cRXP_WARN_对附近的 |cRXP_ENEMY_Winter Wolves|r 造成 51% 以上的伤害，然后将它们拉到可以在路上巡逻的 |cRXP_FRIENDLY_Ironforge Mountaineers|r 处，以更有效地杀死它们|r
    >>|cRXP_WARN_如果你没有看到 |cRXP_FRIENDLY_Ironforge Mountaineers|r，请跳过此步骤|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>沿着泥路向上走
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    +|cRXP_WARN_风筝 |cRXP_ENEMY_Vagash|r 向下至|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>杀死 |cRXP_ENEMY_Vagash|r。从他身上搜刮 |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_将 |cRXP_ENEMY_Vagash|r 放风筝到牧场南边的 |cRXP_FRIENDLY_Dun Morogh Mountaineer|r。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_如果方便的话，记得获取 Tundrid Hills 的探索经验并将 |cRXP_ENEMY_雪豹|r 拉到 |cRXP_FRIENDLY_Dun Morogh Mountaineer|r|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314,3 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_记得保存|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_你升级后得到的|r |T133971:0|t[烹饪] |cRXP_WARN_到 50 后|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_将 |cRXP_ENEMY_冰爪熊|r 放风筝到 |cRXP_FRIENDLY_Ironforge Mountaineer|r 处（确保造成 51% 以上的伤害才能获得奖励）|r
    >>|cRXP_WARN_小心他们施放|r |T135853:0|t[冰爪] |cRXP_WARN_(近战瞬发：造成额外的 4 点近战伤害)|r
    .mob 冰爪熊
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>对话: |cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >>训练 |T133971:0|t[烹饪]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    >>|cRXP_BUY_从他那里购买 15|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    >>|cRXP_BUY_从他那里购买 10|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    >>|cRXP_BUY_从他那里购买 5|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Talk to |cRXP_FRIENDLY_Mehr|r and |cRXP_FRIENDLY_Stonebrow|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
    .goto Dun Morogh,68.67,55.97
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target 参议员梅尔·斯通哈洛
    .target 工头石眉
step
    #completewith Bonesnappers
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_不要特意去杀他们|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>进入洞穴
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>杀死洞穴内的 |cRXP_ENEMY_岩颚骨撕咬者s|r
    >>|cRXP_WARN_小心他们施放|r |T132154:0|t[击倒] |cRXP_WARN_(近战瞬间：眩晕 2 秒)|r
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
    .mob 岩颚骨撕咬者
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>对话: |cRXP_FRIENDLY_弗拉斯特·多克南|r
    .vendor >>供应商垃圾
    .target Frast Dokner
step
    >>Talk to |cRXP_FRIENDLY_Stonebrow|r and |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .goto Dun Morogh,68.67,55.97
    .target 工头石眉
    .target 参议员梅尔·斯通哈洛
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Talk to |cRXP_FRIENDLY_Dank|r
    .train 2575 >>列车 |T136248:0|t[采矿]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .goto Dun Morogh,70.52,54.75,12 >>走 |cRXP_FRIENDLY_Dank|r 后面的捷径
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_将附近的 |cRXP_ENEMY_Rockjaw Ambushers|r 放风筝到可以在路上巡逻的 |cRXP_FRIENDLY_Ironforge Mountaineers|r 上（确保造成 51% 以上的伤害才能获得奖励）|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>放风筝 |cRXP_ENEMY_Scarred Crag Boar|r 通过隧道
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放）|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>点击地面上的 |cRXP_PICK_Dwarven Corpse|r
    >>|cRXP_WARN_确保你有一个免费的库存位置用于此上交|r
    >>|cRXP_WARN_记住你要放风筝 |cRXP_ENEMY_Mangeclaw|r 回到 |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。从他身上搜刮 |cRXP_LOOT_Mangy Claw|r
    >>|cRXP_WARN_将他一路放风筝到 |cRXP_FRIENDLY_Hammerfoot|r （确保造成 51% 以上的伤害才能获得奖励）|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417,1 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>穿过隧道跑回去
step
    .goto Dun Morogh,78.73,49.77
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Scarred Crag Boars|r 和 |cRXP_ENEMY_老峭壁野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。只能在远距离施放），以及 |cRXP_ENEMY_冰爪熊s|r 施放|r |T135853:0|t[冰爪] |cRXP_WARN_（近战瞬发：造成额外的 4 点近战伤害）|r
    .xp 9+5450 >>升级至 5450+/6500xp
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>放风筝 |cRXP_ENEMY_Scarred Crag Boar|r 在途中
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放）|r
    .goto Dun Morogh,84.26,48.93,20 >>跳山。记得小心地跳下去
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Scarred Crag Boars|r 施放|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .xp 9+5990 >>升级至 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto Dun Morogh,86.278,48.812
    >>Talk to |cRXP_FRIENDLY_Barleybrew|r
    .turnin 413 >>交任务: |cRXP_FRIENDLY_微光酒|r
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
    .target Mountaineer Barleybrew
step
    .goto Dun Morogh,86.74,49.58,40,0
    .goto Dun Morogh,86.36,47.36
    .xp 9+6320 >>升级至 6320+/6500xp
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Scarred Crag Boars|r 施放|r |T132337:0|t[充电] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto Loch Modan,16.45,58.54,20,0
    .goto Loch Modan,19.59,62.76,30 >>放风筝 |cRXP_ENEMY_Scarred Crag Boar|r 通过隧道
    >>|cRXP_WARN_施放时要小心|r |T132337:0|t[充电] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放）|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto Loch Modan,21.14,71.62,35,0
	.goto Loch Modan,19.06,75.46,35,0
	.goto Loch Modan,20.91,77.67,35,0
	.goto Loch Modan,21.14,71.62,35,0
    .xp 10 >>升级至 10 级
    .mob 黑熊长老
    .mob 森林潜伏者
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_尝试将附近的 |cRXP_ENEMY_黑熊长老|r 或 |cRXP_ENEMY_森林潜伏者|r 放风筝到地堡中（记得造成 51% 以上的伤害才能获得奖励）|r
    >>|cRXP_WARN_抢劫 |cRXP_ENEMY_老黑熊|r 以获取他们的|r |T134027:0|t[|cRXP_LOOT_熊肉|r]
    >>|cRXP_WARN_Loot |cRXP_ENEMY_森林潜伏者s|r 以获取他们的|r |T134437：0|吨[|cRXP_LOOT_Spider Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_、|cRXP_FRIENDLY_Gravelgaw|r 和 |cRXP_FRIENDLY_Wallbang|r 不会帮助你|r
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob 黑熊长老
    .mob 森林潜伏者
step
    #label Cobbleflint
    .goto Loch Modan,22.071,73.127
    >>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
    .target 登山者科布尔弗林特
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。前往顶楼
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
    .target 鲁格尔福斯上尉
step
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>回到隧道
step
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_如果你遇到困难，请点击此处|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_从通往塞尔萨玛的隧道内的火盆中跳跃退出|r
    .isOnQuest 414
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛主干道|r
    .turnin 414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Talk to |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_他可以在建筑物内或建筑物外|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
    .target Brock Stoneseeker
step
    .goto Loch Modan,33.94,50.96
    >>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >>获取塞尔萨玛飞行路线
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r
    .accept 6391 >>接任务: |cRXP_LOOT_飞往铁炉堡|r
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .isOnQuest 6391
step
    #completewith next
    .goto Ironforge,55.81,38.35,30,0
    .goto Ironforge,51.83,29.77,15,0
    .goto Ironforge,49.67,28.23,12,0
    >>进入大楼
    .goto Ironforge,51.54,26.30,10 >>前往 |cRXP_FRIENDLY_Golnir|r
step
    .goto Ironforge,51.54,26.30
    >>对话: |cRXP_FRIENDLY_高尼尔·石趾|r
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
    .vendor >>供应商垃圾
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto Ironforge,49.67,28.23,12,0
    .goto Ironforge,55.81,38.35,30,0
    >>离开大楼
    .goto Ironforge,55.49,47.74,10 >>前往 |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
--   .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
-- .fly Thelsamar >>飞往塞尔萨玛
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,55.07,51.36,30,0
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,46.67,50.56,20,0
    .goto Ironforge,44.12,50.37,20,0
    .goto Ironforge,39.55,57.49,10 >>前往 |cRXP_FRIENDLY_Barin|r
step
    .goto Ironforge,39.55,57.49
    >>Talk to |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
    .target Senator Barin Redstone
step
    #completewith next
    .goto Ironforge,44.43,49.08,20,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>前往 |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业法术（冰霜护甲 r2、冰霜新星、变形术、召唤水系 r1 r2）
    >>总花费：15秒
    >>请记住，你可能需要钱来购买治疗药水（每瓶 3​​ 先令）、青铜管（每瓶 8 先令）和 5 级食物（每 5 瓶 20 美分）
    .target Dink
step
    #completewith IFHS
    +|cRXP_WARN_设置完蜡烛后记得退出|r |T134414:0|t[炉石]
step
    #completewith next
    .goto Ironforge,27.25,12.79,20,0
    .goto Ironforge,22.59,38.13,20,0
    .goto Ironforge,20.40,53.19,20,0
    >>进入大楼
    .goto Ironforge,18.14,51.45,10 >>前往 |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Talk to |cRXP_FRIENDLY_Firebrew|r
    .home >>将你的炉石设置为铁炉堡
    .target Innkeeper Firebrew
step
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 10-12 冒险 黑海岸 1 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 12-14 冒险 洛克莫丹法师 AoE

step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >>前往跳跃点。沿途沿着山的左侧行走
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_做不死丹莫洛->湿地跳过|r
    >>|cRXP_WARN_如果你没有信心，每次跌倒后都要吃饱|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>|cRXP_WARN_点击此处查看参考（强烈建议您这样做）|r
    .goto Dun Morogh,60.65,11.38,20 >>小心地从山边掉下来
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_做不死丹莫洛->湿地跳过|r
    >>|cRXP_WARN_在你降落到海岸之前（如果他在上面的话），请小心 |cRXP_ENEMY_Sludginn|r（罕见）|r
    >>|cRXP_WARN_到达海边时要小心西边的|cRXP_ENEMY_Bluegill Raiders|r|r
    >>|cRXP_WARN_穿越海洋时避开 |cRXP_ENEMY_Young Wetlands Crocolisks|r。等待它们巡逻离开|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>|cRXP_WARN_点击此处查看参考（强烈建议您这样做）|r
    .goto Wetlands,12.69,60.97,15 >>前往: |cRXP_PICK_湿地|r
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>进入旅馆
step
    .goto Wetlands,10.50,60.20
    >>跳到楼下的吊灯上
    >>对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r
    >>|cRXP_WARN_注意：要执行此操作，请在“选项”菜单中的“游戏玩法”->“控制”下绑定“与目标互动”|r
    >>|cRXP_WARN_如果船刚刚抵达，请跳过此步骤|r
    .vendor 1457 >>|cRXP_BUY_从他那里购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>前往: |cRXP_PICK_暴风城|r
    .fp Menethil Harbor >>获取米奈希尔港飞行路线
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_如果船刚刚抵达，请跳过此步骤|r
    +|cRXP_WARN_烹饪任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_你从外面得到的（里面有篝火）|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>对话: |cRXP_FRIENDLY_德温·晨光|r
    >>|cRXP_WARN_如果船刚刚抵达，请跳过此步骤|r
    .vendor 1453 >>|cRXP_BUY_从他那里购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>前往黑海岸船
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_召唤尽可能多的水|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>当你距离岸边最近时跳下船
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_风筝 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r 朝向 |cRXP_FRIENDLY_Wizbang|r （记得使用|r |T135848:0|t[Frost Nova]|cRXP_WARN_）当你接受任务时杀死他们|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>上楼到顶楼
    .goto Darkshore,36.98,44.14,8 >>前往 |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Talk to |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
    .target Wizbang Cranktoggle
step
    #completewith next
    >>杀死你放风筝的 |cRXP_ENEMY_Pygmy Tide Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>前往 |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor 4182 >>|cRXP_BUY_根据需要购买|r |T133634:0|t[小棕色袋] |cRXP_BUY_/can|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .accept 958 >>接任务: |cRXP_LOOT_上层精灵的工具|r
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>对话: Thundris, |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .accept 958 >>接任务: |cRXP_LOOT_上层精灵的工具|r
    .goto Darkshore,37.39,40.13
    .accept 2178 >>接任务: |cRXP_LOOT_炖陆行鸟|r
    .goto Darkshore,37.69,40.66
    .target Thundris Windweaver
    .target Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>前往 |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>对话: |cRXP_FRIENDLY_特伦希斯|r, |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 984 >>接任务: |cRXP_LOOT_熊怪的威胁|r
    .goto Darkshore,39.37,43.49
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
    .goto Darkshore,38.84,43.41
    .target Terenthis
    .target 萨纳利恩护树人
 step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>杀死 |cRXP_ENEMY_Pygmy Tide Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,38.23,52.84,75,0
    >>|cRXP_WARN_使用|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on |cRXP_ENEMY_Rabid Thistle 熊|r。它有 50 码范围|r
    >>|cRXP_WARN_施放时要小心|r |T135914:0|t[狂犬病] |cRXP_WARN_（即时近战：在 10 分钟内使所有生命值恢复降低 50%）|r
    .complete 2118,1 --Rabid Thistle 熊 Captured (1)
    .use 7586
    .unitscan Rabid Thistle 熊
step
    .goto Darkshore,38.90,53.59
    >>跑向熊怪营地
    >>|cRXP_WARN_不要试图与|r |cRXP_ENEMY_黑木风语者 战斗|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,38.63,56.34,60,0
    .goto Darkshore,38.80,58.29,60,0
    .goto Darkshore,38.38,60.75,60,0
    .goto Darkshore,38.57,66.39
    >>|cRXP_WARN_使用|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on |cRXP_ENEMY_Rabid Thistle 熊|r。它有 50 码范围|r
    >>|cRXP_WARN_施放时要小心|r |T135914:0|t[狂犬病] |cRXP_WARN_（即时近战：在 10 分钟内使所有生命值恢复降低 50%）|r
    .complete 2118,1 --Rabid Thistle 熊 Captured (1)
    .use 7586
    .unitscan Rabid Thistle 熊
step
    .goto Darkshore,40.30,59.73
    >>对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接任务: |cRXP_LOOT_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_如果她站起来，避免拉 |cRXP_ENEMY_Lady Moongazer|r （罕见）|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>杀死 |cRXP_ENEMY_被诅咒的上层精灵s|r 和 |cRXP_ENEMY_痛苦挣扎的上层精灵s|r。掠夺他们以获得 |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_仅当他们挡住你的路时才杀死 |cRXP_ENEMY_Wailing Highborne|r|r
    .complete 958,1 --Highborne Relic (7)
    .mob 被诅咒的上层精灵
    .mob 痛苦挣扎的上层精灵
step
    .goto Darkshore,42.65,63.15
    >>点击地面上的 |cRXP_PICK_The Fall of Ameth'Aran|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>点击地面上的 |cRXP_PICK_The Lay of Ameth'Aran|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务: |cRXP_FRIENDLY_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>杀死 |cRXP_ENEMY_被诅咒的上层精灵s|r 和 |cRXP_ENEMY_痛苦挣扎的上层精灵s|r
    >>|cRXP_WARN_仅当他们挡住你的路时才杀死 |cRXP_ENEMY_Wailing Highborne|r|r
    .complete 958,1 --Highborne Relic (7)
    .mob 被诅咒的上层精灵
    .mob 痛苦挣扎的上层精灵
step
    #completewith next
    .goto Darkshore,45.25,53.44,30 >>进入洞穴
    >>|cRXP_WARN_避开途中的 |cRXP_ENEMY_Thistle 熊s|r、|cRXP_ENEMY_Moonkins|r、和 |cRXP_ENEMY_Raging Moonkins|r （如果可能）|r
    .isOnQuest 958
step
    .goto Darkshore,45.75,53.08
    .goto Darkshore,41.70,36.51,30 >>|cRXP_WARN_Kill the |cRXP_ENEMY_Moonkin Oracle|r inside the cave, then drink 前往: |cRXP_PICK_荒芜之地|r, 通过在洞穴后面的蘑菇顶部登出来跳过|r
    >>|cRXP_WARN_施放时要小心|r |T136006:0|t[愤怒] |cRXP_WARN_（远程施法：造成 30-45 点自然伤害），|r |T136096:0|t[月火术] |cRXP_WARN_（远程瞬发：造成 20-30 点自然伤害，然后在 12 秒内造成 44 点自然伤害），以及|r |T136085:0|t[再生] |cRXP_WARN_（自我施法：治疗约 150 点伤害。罕见，但如果发生这种情况，请逃跑）|r
    >>|cRXP_WARN_你可以在洞口的岩石后面看到他|r |T136006:0|t[Wrath] |cRXP_WARN_|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    #completewith next
    +|cRXP_WARN_放风筝 2-3 |cRXP_ENEMY_Vile Sprites|r 朝向 |cRXP_FRIENDLY_Asterion|r （记得使用|r |T135848:0|t[Frost Nova]|cRXP_WARN_）当你接受任务时杀死他们|r
    .mob Vile Sprite
step
    .goto Darkshore,44.17,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Licillin|r（罕见）可能出现|r
    >>|cRXP_WARN_他施放|r |T136197:0|t[暗影箭] |cRXP_WARN_(远程施法：造成 55-70 点暗影伤害)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>杀死 |cRXP_ENEMY_Vile Sprites|r 和 |cRXP_ENEMY_Wild Grells|r。掠夺他们的 |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_要小心 |cRXP_ENEMY_Vile Sprites|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(Melee Instant: 15 秒内每 3 秒造成 3 点伤害) 和 |cRXP_ENEMY_Wild Grells|r cast|r |T136215:0|t[Crazed] |cRXP_WARN_(Self Instant: 生命值低于 20% 时攻击速度提高 20%)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>杀死 |cRXP_ENEMY_Deth'ryll Satyrs|r。掠夺他们以获得 |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_小心他们施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 15-25 点伤害)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    .xp 11+1100 >>升级至 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (从 巴沙尔印章 上交开始的上交数)
--675+975 = 1650 (乌龟翻转)
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor >>供应商垃圾
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>交任务: |cRXP_FRIENDLY_上层精灵的工具|r
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    >>对话: |cRXP_FRIENDLY_特伦希斯|r, |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 985 >>接任务: |cRXP_LOOT_熊怪的威胁|r
    .accept 4761 >>接任务: |cRXP_LOOT_桑迪斯·织风|r
    .goto Darkshore,39.37,43.49
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
    .accept 2138 >>接任务: |cRXP_LOOT_清除疫病|r
    .goto Darkshore,38.84,43.41
    .target Terenthis
    .target 萨纳利恩护树人
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Talk to |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >>获取奥伯丁飞行路线
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>杀死 |cRXP_ENEMY_Pygmy Tide Crawlers|r 和 |cRXP_ENEMY_Young Reef Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_保存|r |T133884:0|t[鱼人之眼] |cRXP_WARN_你从|cRXP_ENEMY_Greymist Coastrunners|r 和|r |cRXP_ENEMY_Greymist Raiders 手中抢来的物品|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto Darkshore,36.38,50.88
    >>掠夺 |cRXP_LOOT_搁浅的海洋生物|r
    >>|cRXP_WARN_小心附近的 |cRXP_ENEMY_Greymist Coastrunners|r 有|r |T132307:0|t[增加移动速度]
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>杀死 |cRXP_ENEMY_Pygmy Tide Crawlers|r 和 |cRXP_ENEMY_Young Reef Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto Darkshore,36.64,46.26
    >>点击 |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .accept 4681 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 40|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接任务: |cRXP_LOOT_永志不渝|r
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>杀死 |cRXP_ENEMY_黑海岸长尾蜥蜴|r
    >>|cRXP_WARN_不要特意去买这些东西|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >>沿着码头跑向|cRXP_LOOT_海龟遗骸|r
step
    .goto Darkshore,31.86,46.33
    >>水下游泳
    >>掠夺 |cRXP_LOOT_海龟遗骸|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >>升级至 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681,1 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +装备你的新 creps (装备 |T132537:0|t[Sandcomber Boots])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===注意===|r
    >>|cRXP_WARN_与|r |cRXP_FRIENDLY_Shaussiy交谈|r
    >>|cRXP_WARN_如果这是你第一次进行炉石批次，请观看下面的指南|r
    >>|cRXP_WARN_打开“设置炉石”菜单，然后施放|r |T134414:0|t[炉石]
    .hs >>|cRXP_WARN_从 奥伯丁 炉石到 铁炉堡|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >>|cRXP_WARN_单击此处（强烈建议您这样做）。请确保您已设置并测试了批处理窗口大小，以降低失败风险|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业法术（火球 r3、抑制魔法）
    >>总花费：12 秒
    >>记住你可能需要钱来购买 |T133024:0|t[青铜管]（每个 8 秒）和 Thelsamar 飞行器（1 秒 10 美分）
    .target Dink
step
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >>如果您愿意，请退出并跳过 |cRXP_FRIENDLY_Dink|r 上方的柱子，检查 |cRXP_FRIENDLY_Cogspinner|r 是否有 |T133024:0|t[青铜管]
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_在飞行前召唤尽可能多的水|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Thelsamar >>飞往塞尔萨玛
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 10-12 冒险 黑海岸 1 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor none
#next 12-14 冒险 洛克莫丹法师 AoE

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_注意：启动路线包含非常难以单独完成的任务。这专门针对那些人满为患的服务器，你可以组队完成更困难的任务，或者有群体标记的玩家|r
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >>前往跳跃点。沿途沿着山的左侧行走
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_做不死丹莫洛->湿地跳过|r
    >>|cRXP_WARN_如果你没有信心，每次跌倒后都要吃饱|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>|cRXP_WARN_点击此处查看参考（强烈建议您这样做）|r
    .goto Dun Morogh,60.65,11.38,20 >>小心地从山边掉下来
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_做不死丹莫洛->湿地跳过|r
    >>|cRXP_WARN_在你降落到海岸之前（如果他在上面的话），请小心 |cRXP_ENEMY_Sludginn|r（罕见）|r
    >>|cRXP_WARN_到达海边时要小心西边的|cRXP_ENEMY_Bluegill Raiders|r|r
    >>|cRXP_WARN_穿越海洋时避开 |cRXP_ENEMY_Young Wetlands Crocolisks|r。等待它们巡逻离开|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>|cRXP_WARN_点击此处查看参考（强烈建议您这样做）|r
    .goto Wetlands,12.69,60.97,15 >>前往: |cRXP_PICK_湿地|r
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>进入旅馆
step
    .goto Wetlands,10.50,60.20
    >>跳到楼下的吊灯上
    >>对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r
    >>|cRXP_WARN_注意：要执行此操作，请在“选项”菜单中的“游戏玩法”->“控制”下绑定“与目标互动”|r
    >>|cRXP_WARN_如果船刚刚抵达，请跳过此步骤|r
    .vendor 1457 >>|cRXP_BUY_从他那里购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>前往: |cRXP_PICK_暴风城|r
    .fp Menethil Harbor >>获取米奈希尔港飞行路线
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_如果船刚刚抵达，请跳过此步骤|r
    +|cRXP_WARN_烹饪任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_你从外面得到的（里面有篝火）|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>对话: |cRXP_FRIENDLY_德温·晨光|r
    >>|cRXP_WARN_如果船刚刚抵达，请跳过此步骤|r
    .vendor 1453 >>|cRXP_BUY_从他那里购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>前往黑海岸船
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_召唤尽可能多的水|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>当你距离岸边最近时跳下船
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_风筝 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r 朝向 |cRXP_FRIENDLY_Wizbang|r （记得使用|r |T135848:0|t[Frost Nova]|cRXP_WARN_）当你接受任务时杀死他们|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>上楼到顶楼
    .goto Darkshore,36.98,44.14,8 >>前往 |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Talk to |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>杀死你放风筝的 |cRXP_ENEMY_Pygmy Tide Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>前往 |cRXP_FRIENDLY_Terenthis|r
step
    >>对话: |cRXP_FRIENDLY_特伦希斯|r, |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 984 >>接任务: |cRXP_LOOT_熊怪的威胁|r
    .goto Darkshore,39.37,43.49,-1
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
    .goto Darkshore,38.84,43.41,-1
    .target Terenthis
    .target 萨纳利恩护树人
step << skip
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>前往 |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor 4182 >>|cRXP_BUY_根据需要购买|r |T133634:0|t[小棕色袋] |cRXP_BUY_/can|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .accept 958 >>接任务: |cRXP_LOOT_上层精灵的工具|r
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>对话: Thundris, |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .accept 958 >>接任务: |cRXP_LOOT_上层精灵的工具|r
    .goto Darkshore,37.39,40.13,-1
    .accept 2178 >>接任务: |cRXP_LOOT_炖陆行鸟|r
    .goto Darkshore,37.69,40.66,-1
    .target Thundris Windweaver
    .target Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto Darkshore,46.71,34.64
    >>|cRXP_WARN_如果你发现 |cRXP_ENEMY_Rabid Thistle 熊|r，使用|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_then 攻击它|r
    >>|cRXP_WARN_施放时要小心|r |T135914:0|t[狂犬病] |cRXP_WARN_（即时近战：在 10 分钟内使所有生命值恢复降低 50%）|r
    .complete 2118,1 --Rabid Thistle 熊 Captured (1)
    .use 7586
    .unitscan Rabid Thistle 熊
step
    #completewith next
    +|cRXP_WARN_放风筝 2-3 |cRXP_ENEMY_Vile Sprites|r 朝向 |cRXP_FRIENDLY_Asterion|r （记得使用|r |T135848:0|t[Frost Nova]|cRXP_WARN_）当你接受任务时杀死他们|r
    .mob Vile Sprite
step
    #label Bash1
    .goto Darkshore,44.17,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_请小心，因为 |cRXP_ENEMY_Licillin|r（罕见）可能出现|r
    >>|cRXP_WARN_他施放|r |T136197:0|t[暗影箭] |cRXP_WARN_(远程施法：造成 55-70 点暗影伤害)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>杀死 |cRXP_ENEMY_Vile Sprites|r 和 |cRXP_ENEMY_Wild Grells|r。掠夺他们的 |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_要小心 |cRXP_ENEMY_Vile Sprites|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(Melee Instant: 15 秒内每 3 秒造成 3 点伤害) 和 |cRXP_ENEMY_Wild Grells|r cast|r |T136215:0|t[Crazed] |cRXP_WARN_(Self Instant: 生命值低于 20% 时攻击速度提高 20%)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>杀死 |cRXP_ENEMY_Deth'ryll Satyrs|r。掠夺他们以获得 |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_小心他们施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 15-25 点伤害)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,38.84,43.41
    .xp 10+6625 >>在返回 |cRXP_FRIENDLY_Tharnariun|r 的途中升级至 6625+/7600xp
step
    .goto Darkshore,38.84,43.41
    >>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
    .accept 2138 >>接任务: |cRXP_LOOT_清除疫病|r
    .target 萨纳利恩护树人
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接任务: |cRXP_LOOT_永志不渝|r
    .target Cerellean Whiteclaw
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Pygmy Tide Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Talk to |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >>获取奥伯丁飞行路线
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>杀死 |cRXP_ENEMY_Pygmy Tide Crawlers|r 和 |cRXP_ENEMY_Young Reef Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_保存|r |T133884:0|t[鱼人之眼] |cRXP_WARN_你从|cRXP_ENEMY_Greymist Coastrunners|r 和|r |cRXP_ENEMY_Greymist Raiders 手中抢来的物品|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto Darkshore,36.38,50.88
    >>掠夺 |cRXP_LOOT_搁浅的海洋生物|r
    >>|cRXP_WARN_小心附近的 |cRXP_ENEMY_Greymist Coastrunners|r 有|r |T132307:0|t[增加移动速度]
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>杀死 |cRXP_ENEMY_Pygmy Tide Crawlers|r 和 |cRXP_ENEMY_Young Reef Crawlers|r。掠夺他们的 |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto Darkshore,38.90,53.59
    >>跑向熊怪营地
    >>|cRXP_WARN_不要试图与|r |cRXP_ENEMY_黑木风语者 战斗|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,40.30,59.73
    >>对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接任务: |cRXP_LOOT_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_如果她站起来，避免拉 |cRXP_ENEMY_Lady Moongazer|r （罕见）|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto Darkshore,42.45,60.66,0
    >>杀死 |cRXP_ENEMY_Anaya Dawnrunner|r。掠夺她以获得 |cRXP_LOOT_Anaya 的吊坠|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>杀死 |cRXP_ENEMY_被诅咒的上层精灵s|r 和 |cRXP_ENEMY_痛苦挣扎的上层精灵s|r。掠夺他们以获得 |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_仅当他们挡住你的路时才杀死 |cRXP_ENEMY_Wailing Highborne|r|r
    .complete 958,1 --Highborne Relic (7)
    .mob 被诅咒的上层精灵
    .mob 痛苦挣扎的上层精灵
step
    .goto Darkshore,42.37,61.82
    >>点击|cRXP_PICK_Ancient Flame|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.65,63.15
    >>点击地面上的 |cRXP_PICK_The Fall of Ameth'Aran|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>点击地面上的 |cRXP_PICK_The Lay of Ameth'Aran|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务: |cRXP_FRIENDLY_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>杀死 |cRXP_ENEMY_被诅咒的上层精灵s|r 和 |cRXP_ENEMY_痛苦挣扎的上层精灵s|r
    >>|cRXP_WARN_仅当他们挡住你的路时才杀死 |cRXP_ENEMY_Wailing Highborne|r|r
    .complete 958,1 --Highborne Relic (7)
    .mob 被诅咒的上层精灵
    .mob 痛苦挣扎的上层精灵
step
    #label Anaya
    .goto Darkshore,42.45,60.66
    >>杀死 |cRXP_ENEMY_Anaya Dawnrunner|r。掠夺她以获得 |cRXP_LOOT_Anaya 的吊坠|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto Darkshore,45.25,53.44,30 >>进入洞穴
    >>|cRXP_WARN_避开途中的 |cRXP_ENEMY_Thistle 熊s|r、|cRXP_ENEMY_Moonkins|r、和 |cRXP_ENEMY_Raging Moonkins|r （如果可能）|r
    .isOnQuest 958
step
    .goto Darkshore,45.75,53.08
    .goto Darkshore,41.70,36.51,30 >>|cRXP_WARN_Kill the |cRXP_ENEMY_Moonkin Oracle|r inside the cave, then drink 前往: |cRXP_PICK_荒芜之地|r, 通过在洞穴后面的蘑菇顶部登出来跳过|r
    >>|cRXP_WARN_施放时要小心|r |T136006:0|t[愤怒] |cRXP_WARN_（远程施法：造成 30-45 点自然伤害），|r |T136096:0|t[月火术] |cRXP_WARN_（远程瞬发：造成 20-30 点自然伤害，然后在 12 秒内造成 44 点自然伤害），以及|r |T136085:0|t[再生] |cRXP_WARN_（自我施法：治疗约 150 点伤害。罕见，但如果发生这种情况，请逃跑）|r
    >>|cRXP_WARN_你可以在洞口的岩石后面看到他|r |T136006:0|t[Wrath] |cRXP_WARN_|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto Darkshore,44.18,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957,3 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor >>供应商垃圾
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>交任务: |cRXP_FRIENDLY_上层精灵的工具|r
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto Darkshore,39.37,43.49
    >>对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 985 >>接任务: |cRXP_LOOT_熊怪的威胁|r
    .accept 4761 >>接任务: |cRXP_LOOT_桑迪斯·织风|r
    .target Terenthis
step
    .goto Darkshore,36.64,46.26
    >>点击 |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .accept 4681 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 40|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>杀死 |cRXP_ENEMY_黑海岸长尾蜥蜴|r
    >>|cRXP_WARN_不要特意去买这些东西|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >>沿着码头跑向|cRXP_LOOT_海龟遗骸|r
step
    .goto Darkshore,31.86,46.33
    >>水下游泳
    >>掠夺 |cRXP_LOOT_海龟遗骸|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >>升级至 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681,1 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +装备你的新 creps (装备 |T132537:0|t[Sandcomber Boots])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===注意===|r
    >>|cRXP_WARN_与|r |cRXP_FRIENDLY_Shaussiy交谈|r
    >>|cRXP_WARN_如果这是你第一次进行炉石批次，请观看下面的指南|r
    >>|cRXP_WARN_打开“设置炉石”菜单，然后施放|r |T134414:0|t[炉石]
    .hs >>|cRXP_WARN_从 奥伯丁 炉石到 铁炉堡|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >>|cRXP_WARN_单击此处（强烈建议您这样做）。请确保您已设置并测试了批处理窗口大小，以降低失败风险|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业法术（火球 r3、抑制魔法）
    >>总花费：12 秒
    >>记住你可能需要钱来购买 |T133024:0|t[青铜管]（每个 8 秒）和 Thelsamar 飞行器（1 秒 10 美分）
    .target Dink
step
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >>如果您愿意，请退出并跳过 |cRXP_FRIENDLY_Dink|r 上方的柱子，检查 |cRXP_FRIENDLY_Cogspinner|r 是否有 |T133024:0|t[青铜管]
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_在飞行前召唤尽可能多的水|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Thelsamar >>飞往塞尔萨玛
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 12-14 冒险 洛克莫丹法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 14-16 冒险 黑海岸 2 法师 AoE
step
    #completewith next
    +|cRXP_WARN_当你在洛克莫丹进行任务时，请保存你拾取的所有 |T133970:0|t[|cRXP_LOOT_Chunks of Boar Meat]|r 以供日后使用|r
step
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .isOnQuest 6392 << Gnome
step
    .goto Loch Modan,22.071,73.127
    >>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
    .target 登山者科布尔弗林特
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。前往顶楼
step
    .goto Loch Modan,23.233,73.675
    >>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
    .target 鲁格尔福斯上尉
step
    #completewith Rugel2
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 山野猪
    .mob 黑熊长老
    .mob 森林潜伏者
step
    .goto Loch Modan,26.67,56.94
    >>杀死 |cRXP_ENEMY_Stonesplinter Troggs|r 和 |cRXP_ENEMY_Stonesplinter Scouts|r。掠夺他们的 |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Stonesplinter Scouts|r 施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 14-20 点伤害)|r
    >>|cRXP_WARN_这是一个超级生成区域。你不需要从这里移动|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    .goto Loch Modan,22.071,73.127
    >>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
    .target 登山者科布尔弗林特
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。前往顶楼
step
    #label Rugel2
    .goto Loch Modan,23.233,73.675
    >>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
    .target 鲁格尔福斯上尉
step
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>回到隧道
step
    .goto Loch Modan,18.84,61.48
    .goto Loch Modan,32.19,46.95,30 >>从通往塞尔萨玛的隧道内的火盆中跳跃退出
    .isOnQuest 1339
step
    #completewith next
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 山野猪
    .mob 黑熊长老
    .mob 森林潜伏者
step
    .goto Loch Modan,23.57,17.93,30 >>前往阿尔加兹站
    .isOnQuest 1339
step
    .goto Loch Modan,24.13,18.20
    >>对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>供应商垃圾
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto Loch Modan,24.764,18.397
    >>上楼
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r << Human
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
step
    #completewith Entrance
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 山野猪
    .mob 黑熊长老
    .mob 森林潜伏者
step
    #completewith Exit
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Tunnel Rat Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto Loch Modan,35.47,18.95,40 >>前往矿井入口
    .isOnQuest 307
step
    #label Gear
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89,12,0
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89
    >>掠夺地面上的 |cRXP_LOOT_矿工装备|r。|cRXP_WARN_他们共享出生点|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_隧道鼠风水师s|r 施放|r |T135824:0|t[快速火焰防护] |cRXP_WARN_(自我施放：提供 10 秒的火焰免疫) 和|r |T135824:0|t[火焰冲击] |cRXP_WARN_(远程瞬发：造成 20-30 点火焰伤害)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto Loch Modan,35.47,18.95,40 >>退出矿井
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto Loch Modan,34.38,17.67,40,0
	.goto Loch Modan,35.44,15.34,40,0
	.goto Loch Modan,37.15,10.53,40,0
	.goto Loch Modan,39.38,10.92,40,0
	.goto Loch Modan,38.46,14.43,40,0
	.goto Loch Modan,39.67,18.12,40,0
	.goto Loch Modan,39.84,24.83,40,0
	.goto Loch Modan,37.34,26.82,40,0
	.goto Loch Modan,37.15,24.53,40,0
	.goto Loch Modan,38.85,21.25,40,0
	.goto Loch Modan,37.89,18.88,40,0
	.goto Loch Modan,34.38,17.67,40,0
    >>杀死 |cRXP_ENEMY_Tunnel Rat Scouts|r、|cRXP_ENEMY_Tunnel Rat Vermin|r、|cRXP_ENEMY_Tunnel Rat Kobolds|r 和 |cRXP_ENEMY_隧道鼠觅食器s|r。掠夺他们的 |cRXP_LOOT_Tunnel Rat Ears|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Tunnel Rat Kobolds|r 施法|r |T132152:0|t[Thrash] |cRXP_WARN_(每 10 秒发动 2 次额外攻击)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob 隧道鼠觅食器
step
    #completewith next
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 山野猪
    .mob 黑熊长老
    .mob 森林潜伏者
step
    .goto Loch Modan,23.57,17.93,30 >>前往阿尔加兹站
    .isOnQuest 307
step
    .goto Loch Modan,24.13,18.20
    >>对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>供应商垃圾
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto Loch Modan,24.764,18.397
    >>上楼
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .target 巡山人雷矛
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,35,0
	.goto Loch Modan,32.69,28.67,35,0
	.goto Loch Modan,34.93,31.55,35,0
	.goto Loch Modan,36.78,33.19,35,0
	.goto Loch Modan,39.65,32.82,35,0
	.goto Loch Modan,38.15,38.16,35,0
	.goto Loch Modan,33.53,40.53,35,0
	.goto Loch Modan,29.87,53.51,35,0
	.goto Loch Modan,29.58,46.54,35,0
	.goto Loch Modan,29.95,39.84,35,0
	.goto Loch Modan,27.09,40.10,35,0
	.goto Loch Modan,29.03,33.44,35,0
	.goto Loch Modan,27.19,29.01,35,0
	.goto Loch Modan,25.77,25.60,35,0
	.goto Loch Modan,23.64,22.20,35,0
	.goto Loch Modan,31.01,24.84,35,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 山野猪
    .mob 黑熊长老
    .mob 森林潜伏者
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>杀死 |cRXP_ENEMY_Mangy 山野猪s|r 和 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_Grizzled Black 熊s|r 和 |cRXP_ENEMY_黑熊长老s|r。掠夺它们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_Cliff Lurkers|r 和 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Mangy 山野猪
    .mob 山野猪
    .mob Grizzled Black 熊
    .mob 黑熊长老
    .mob Cliff Lurker
    .mob 森林潜伏者
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.18,47.13,10,0
    >>对话: Brock, |cRXP_FRIENDLY_吉恩·角盔|r
    >>|cRXP_WARN_它们可以位于建筑物内部或外部|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r << Gnome
    .goto Loch Modan,37.02,47.80
    .accept 436 >>接任务: |cRXP_WARN_铁环挖掘场|r
    .goto Loch Modan,37.23,47.37
    .target Brock Stoneseeker
    .target Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.23,47.37
    >>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    >>|cRXP_WARN_他可以在建筑物内或建筑物外|r
    .accept 436 >>接任务: |cRXP_WARN_铁环挖掘场|r
    .target Brock Stoneseeker
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+8675 >>升级至 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6545 >>升级至 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto Loch Modan,46.14,63.53,50,0
    .goto Loch Modan,49.35,67.36,50,0
    .goto Loch Modan,51.91,68.00,50,0
    .goto Loch Modan,64.83,66.05,20 >>前往 |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto Loch Modan,64.83,66.05
    >>对话: |cRXP_FRIENDLY_奥德伦·科尔东|r
    .vendor 1214 >>|cRXP_BUY_从他那里购买 |r |T132491:0|t[智者腰带] |cRXP_BUY_ （如果它涨价了）|r
    .isQuestAvailable 298
step << Gnome
    >>对话: Ironband, |cRXP_FRIENDLY_麦格玛尔·落斧|r
    .accept 298 >>接任务: |cRXP_LOOT_挖掘进度报告|r
    .goto Loch Modan,65.94,65.62
    .turnin 436 >>交任务: |cRXP_FRIENDLY_铁环挖掘场|r
    .goto Loch Modan,64.89,66.66
    .target Prospector Ironband
    .target Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto Loch Modan,65.94,65.62
    >>Talk to |cRXP_FRIENDLY_Ironband|r
    .accept 298 >>接任务: |cRXP_LOOT_挖掘进度报告|r
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto Loch Modan,66.07,70.60,30,0
    .goto Loch Modan,73.23,70.89,40,0
    .goto Loch Modan,77.25,68.20,40,0
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>前往 |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto Loch Modan,83.48,65.62
    >>Talk to |cRXP_FRIENDLY_Daryl|r
    .accept 257 >>接任务: |cRXP_LOOT_自豪的猎人|r
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto Loch Modan,79.89,65.91,45,0
	.goto Loch Modan,76.70,74.44,45,0
	.goto Loch Modan,74.74,69.21,45,0
	.goto Loch Modan,77.03,60.55,45,0
	.goto Loch Modan,76.09,57.94,45,0
	.goto Loch Modan,77.39,55.98,45,0
	.goto Loch Modan,79.63,59.85,45,0
	.goto Loch Modan,79.89,65.91,45,0
    >>杀死 |cRXP_ENEMY_Mountain Buzzards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>前往 |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto Loch Modan,83.48,65.62
    >>Talk to |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >>交任务: |cRXP_FRIENDLY_自豪的猎人|r
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    >>杀死 |cRXP_ENEMY_Mangy 山野猪s|r 和 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_Grizzled Black 熊s|r 和 |cRXP_ENEMY_黑熊长老s|r。掠夺它们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_Cliff Lurkers|r 和 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_如果需要的话记得把他们放风筝到|cRXP_FRIENDLY_Mountaineers|r|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_山野猪s|r 施放|r |T132337:0|t[冲锋] |cRXP_WARN_(自身瞬发：增加移动速度 3 秒，击中时造成 40-100 点近战伤害。仅可远距离施放)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Mangy 山野猪
    .mob 山野猪
    .mob Grizzled Black 熊
    .mob 黑熊长老
    .mob Cliff Lurker
    .mob 森林潜伏者
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6780 >>升级至 6780+/11400xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛主干道|r
    .turnin 416,2 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
    .target Mountaineer Kadrell
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>对话: Brock, |cRXP_FRIENDLY_吉恩·角盔|r
    >>|cRXP_WARN_它们可以位于建筑物内部或外部|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
    .goto Loch Modan,37.02,47.80
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
    .accept 301 >>接任务: |cRXP_LOOT_向铁炉堡报告|r
    .goto Loch Modan,37.23,47.37
    .target Brock Stoneseeker
    .target Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>对话: Brock, |cRXP_FRIENDLY_吉恩·角盔|r
    >>|cRXP_WARN_它们可以位于建筑物内部或外部|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
    .goto Loch Modan,37.02,47.80
    .accept 301 >>接任务: |cRXP_LOOT_向铁炉堡报告|r
    .goto Loch Modan,37.23,47.37
    .target Brock Stoneseeker
    .target Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Talk to |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_他可以在建筑物内或建筑物外|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
    .target Brock Stoneseeker
step
    #completewith next
    .goto Loch Modan,35.25,47.74,12,0
    .goto Loch Modan,35.39,48.36,12,0
    >>进入旅馆
    .goto Loch Modan,34.828,49.283,10 >>前往 |cRXP_FRIENDLY_Vidra|r
step
    .goto Loch Modan,34.828,49.283
    >>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
    .target 维德拉炉灶
step
    .goto Loch Modan,34.76,48.62
    >>|cRXP_WARN_不要丢掉任何多余的|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .skill cooking,10 >>将 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 烹制成 |T133974:0|t[烤野猪肉]，直到你的 |T133971:0|t[烹饪] 技能达到 10
step
    .goto Loch Modan,34.76,48.62
    >>对话: |cRXP_FRIENDLY_亚尼|r
    >>|cRXP_BUY_根据需要购买|r |T133634:0|t[小棕色袋] |cRXP_BUY_/can|r
    >>|cRXP_WARN_银牌不得低于 45|r
    .vendor >>供应商垃圾
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_在飞行前召唤尽可能多的水|r
step
    #requires Kadrell
    .goto Loch Modan,33.94,50.96
    >>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto Ironforge,74.64,11.72
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >>交任务: |cRXP_FRIENDLY_向铁炉堡报告|r
    .target Prospector Stormpike
    .isOnQuest 301
step
    #completewith Monty
    .goto Ironforge,74.82,8.69,-1
    .goto Ironforge,56.21,46.86,-1
    .goto Ironforge,76.41,51.22,30 >>退出 跳至 Deeprun Tram 外部
step
    .goto Ironforge,67.83,42.47
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
    >>进入 Deeprun 缆车
    >>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
    .target Monty
step << Gnome
    >>使用 |T133942:0|t[捕鼠者长笛] 对深泉有轨电车上的 |cRXP_FRIENDLY_深泉老鼠|r 进行攻击
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>对话: |cRXP_FRIENDLY_蒙提|r
    >>|cRXP_WARN_等待 RP|r << Gnome
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r << Gnome
    .timer 13,Deeprun Rat Roundup RP << Gnome
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_乘坐深泉电车并进行垃圾邮件发送|r |T132794:0|t[召唤水 r2]
    >>对话: |cRXP_FRIENDLY_尼普希|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .isOnQuest 1338
step
    #completewith next
    .goto Stormwind City,59.96,12.21,20,0
    .goto Stormwind City,57.03,11.37,20,0
    .goto Stormwind City,55.25,7.07,15 >>前往|cRXP_FRIENDLY_Billibub|r
step
    .goto Stormwind City,55.25,7.07
    >>对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto Stormwind City,58.09,16.55
    >>对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .target Furen Longbeard
step
    #completewith next
    .goto Stormwind City,53.34,19.29,20,0
    .goto Stormwind City,51.64,21.69,20,0
    .goto Stormwind City,52.23,31.66,20,0
    .goto Stormwind City,49.82,34.42,20,0
    .goto Stormwind City,47.86,31.13,12,0
    .goto Stormwind City,49.18,30.29,12 >>前往 |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .accept 399 >>接任务: |cRXP_WARN_童年的记忆|r
    .target Baros Alexston
step
    #completewith next
    .goto Stormwind City,47.72,42.71,15,0
    .goto Stormwind City,49.12,46.88,15,0
    .goto Stormwind City,48.55,49.00,15,0
    .goto Stormwind City,50.72,51.88,15,0
    .goto Stormwind City,52.57,55.44,15,0
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_跳到火炬上，然后跳下来，躲到暴风城下面|r
    >>|cRXP_WARN_将阴影设置为“良好”或“低”，在蓝色虚空前，站在恐龙德里克脚的中间（泥土较浅的部分），然后径直向前走|r
    .link https://clips.twitch.tv/WonderfulObservantPigeonTwitchRPG-VGEqzHObhqqsv8Ae >>点击此处查看指南
    .goto Stormwind City,38.61,79.39,10 >>前往 |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
    .accept 1861 >>接任务: |cRXP_WARN_明镜湖|r << Gnome
    .trainer >>训练你的职业法术（火焰冲击 r2、奥术智慧 r2、奥术爆炸）
    >>总花费：27 秒
    >>记住你可能需要钱来购买药水（每瓶 1-3 先令）和卷轴（每瓶 50 先令）
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>退出法师塔
    .goto Stormwind City,32.16,79.84,10 >>前往 |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    .vendor 1307 >>|cRXP_BUY_从她那里购买|r |T134851:0|t[低级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>前往 |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto Stormwind City,41.57,65.46
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_艾代尔·吉尔罗|r
    .vendor 1316 >>|cRXP_BUY_从他那里购买非智力|r |T134943:0|t[卷轴] |cRXP_BUY_（如果它们涨价了）|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>前往 |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_罗伯特·奥布斯|r
    >>|cRXP_BUY_从他那里购买一|r |T132620:0|t[一桶梅洛] |cRXP_BUY_|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>前往 |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto Stormwind City,55.46,65.26
    >>对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor 1257 >>|cRXP_BUY_从他那里购买|r |T134830:0|t[次级治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>进入暴风城银行
step
    .goto Stormwind City,57.03,72.97
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >>将以下物品存入银行：
    >>|T133970:0|t[大块野猪肉]
    >>|T133024:0|t[青铜管]
    >>|T133884:0|t[鱼人之眼]
    >>|T132788:0|t[詹妮娅的烧瓶]
    >>|T132620:0|t[一桶梅洛]
    >>|T134943:0|t[卷轴]
    >>|T132832:0|t[小鸡蛋]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,4371,7207 >>将以下物品存入银行：
    >>|T133970:0|t[大块野猪肉]
    >>|T133024:0|t[青铜管]
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,730,7207 >>将以下物品存入银行：
    >>|T133970:0|t[大块野猪肉]
    >>|T133884:0|t[鱼人之眼]
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,730,7207 >>将以下物品存入银行：
    >>|T133024:0|t[青铜管]
    >>|T133884:0|t[鱼人之眼]
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,7207 >>将以下物品存入银行：
    >>|T133970:0|t[大块野猪肉]
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,7207 >>将以下物品存入银行：
    >>|T133024:0|t[青铜管]
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 730,7207 >>将以下物品存入银行：
    >>|T133884:0|t[鱼人之眼]
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 7207 >>将以下物品存入银行：
    >>|T132788:0|t[詹妮娅的烧瓶]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>进入旅馆
    .goto Stormwind City,52.61,65.72,10 >>前往 |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===注意===|r
    >>|cRXP_WARN_与|r |cRXP_FRIENDLY_Allison 交谈|r
    >>|cRXP_WARN_打开“设置炉石”菜单，然后施放|r |T134414:0|t[炉石]
    .hs >>|cRXP_WARN_从 暴风城 炉石到 奥伯丁|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 14-16 冒险 黑海岸 2 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 16-18 冒险 西部荒野法师 AoE


step
    #completewith DeepO
    +|cRXP_WARN_保存你获得的任何 |T132917:0|t[轻羽毛] 以供日后使用|r
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r, Glynda
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
    .goto Darkshore,37.32,43.64
    .accept 4811 >>接任务: |cRXP_LOOT_红色水晶|r
    .goto Darkshore,37.68,43.38
    .target Barithras Moonshade
    .target Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接任务: |cRXP_LOOT_深不可测的海洋|r
    .target Gorbold Steelhand
step
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 4762 >>接任务: |cRXP_LOOT_壁泉河|r
    .target Thundris Windweaver
step
    #completewith MistV
    .goto Darkshore,35.87,38.18,50,0
    .goto Darkshore,36.28,32.23,50,0
    .goto Darkshore,37.61,30.86,50,0
    >>在水中杀死 |cRXP_ENEMY_Darkshore Threshers|r。掠夺它们的 |cRXP_LOOT_Thresher Eyes|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto Darkshore,38.21,28.76
--  .goto Darkshore,38.23,28.79
    >>通过船壁抢劫 |cRXP_LOOT_Silver Dawning Lockbox|r
    >>|cRXP_WARN_在箭头位置附近的水下使用“与目标互动”键|r
    >>|cRXP_WARN_施法时间为 5 秒|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto Darkshore,39.58,27.47
--  .goto Darkshore,39.63,27.45
   >>通过船壁抢劫 |cRXP_LOOT_Mist Veil Lockbox|r
   >>|cRXP_WARN_在箭头位置附近的水下使用“与目标互动”键|r
   >>|cRXP_WARN_施法时间为 5 秒|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86,50,0
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86
   >>在水中杀死 |cRXP_ENEMY_Darkshore Threshers|r。掠夺它们的 |cRXP_LOOT_Thresher Eyes|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_拯救|r |T133884:0|t[鱼人之眼] |cRXP_WARN_你从|r |cRXP_ENEMY_Greymist Coastrunners|r |cRXP_WARN_和|r |cRXP_ENEMY_Greymist Seers 手中夺取的|r
step
   .goto Darkshore,41.91,31.48
   >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
   >>|cRXP_WARN_施法时间为 5 秒|r
   .accept 4723 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
   .goto Darkshore,41.96,28.61
   >>点击|cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >>交任务: |cRXP_FRIENDLY_传声盒411号|r
   .accept 1002 >>接任务: |cRXP_LOOT_传声盒323号|r
step
    #completewith SeaTurtle1
    .goto Darkshore,43.67,27.81,50,0
    >>AoE |cRXP_ENEMY_Foreststrider Fledgelings|r。掠夺他们的 |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r 和 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
    .mob 月夜猎者
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Rabid Thistle 熊s|r
    >>|cRXP_WARN_施放时要小心|r |T135914:0|t[狂犬病] |cRXP_WARN_（即时近战：在 10 分钟内使所有生命值恢复降低 50%）|r
    .complete 2138,1 --Rabid Thistle 熊 (20)
    .mob Rabid Thistle 熊
step
    #label SeaTurtle1
    .goto Darkshore,44.20,20.60,80 >>前往|cRXP_LOOT_搁浅的海龟|r
    .isQuestAvailable 4725
step
    #completewith next
    +保存你从 |cRXP_ENEMY_Greymist Warriors|r 和 |cRXP_ENEMY_Greymist Netters|r 手中夺取的 |T133884:0|t[鱼人之眼]
step
    .goto Darkshore,44.20,20.60
    >>拾取地面上的 |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4725 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    #completewith River
    >>杀死 |cRXP_ENEMY_Foreststrider Fledgelings|r。掠夺它们的 |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r 和 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
    .mob 月夜猎者
step
    #completewith RedC
    >>杀死 |cRXP_ENEMY_Rabid Thistle 熊s|r
    >>|cRXP_WARN_施放时要小心|r |T135914:0|t[狂犬病] |cRXP_WARN_（即时近战：在 10 分钟内使所有生命值恢复降低 50%）|r
    .complete 2138,1 --Rabid Thistle 熊 (20)
    .mob Rabid Thistle 熊
step
    #label River
    .goto Darkshore,50.77,25.43
    >>在水中使用 |T134865:0|t[空取样管]
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>杀死 |cRXP_ENEMY_Foreststriders|r。掠夺他们的 |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r 和 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
    .mob 月夜猎者
step
    #label RedC
    .goto Darkshore,47.11,48.63,400 >>前往|cRXP_PICK_红色水晶|r
    .isOnQuest 4811
step
    #completewith Bash
    >>杀死 |cRXP_ENEMY_Foreststrider Fledglings|r。掠夺它们的 |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
step
    .goto Darkshore,47.11,48.63
    >>跑到 |cRXP_PICK_红色水晶|r
    >>|cRXP_WARN_记得拉动被拴在一起的 |cRXP_ENEMY_Raging Moonkins|r|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto Darkshore,42.37,61.82,175 >>前往 |cRXP_PICK_Ancient Flame|r
    .isOnQuest 957
step
    #completewith next
    .goto Darkshore,42.45,60.66,0
    >>杀死 |cRXP_ENEMY_Anaya Dawnrunner|r。掠夺她以获得 |cRXP_LOOT_Anaya 的吊坠|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,42.37,61.82
    >>点击|cRXP_PICK_Ancient Flame|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41
    >>杀死 |cRXP_ENEMY_Anaya Dawnrunner|r。掠夺她以获得 |cRXP_LOOT_Anaya 的吊坠|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith R熊s
    >>杀死 |cRXP_ENEMY_Foreststrider Fledglings|r。掠夺它们的 |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith R熊s
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r 和 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
    .mob 月夜猎者
step
    #completewith next
    +保存你从 |cRXP_ENEMY_Greymist Coastrunners|r 和 |cRXP_ENEMY_Greymist Seers|r 处抢来的 |T133884:0|t[鱼人之眼]
step
    #label BeachedST
    .goto Darkshore,37.10,62.17
    >>点击 |cRXP_PICK_Beached Sea Turtle|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4722 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto Darkshore,38.74,58.10,45,0
	.goto Darkshore,39.91,58.50,45,0
	.goto Darkshore,39.23,63.60,45,0
	.goto Darkshore,39.87,66.31,45,0
	.goto Darkshore,39.98,70.55,45,0
	.goto Darkshore,37.40,70.05,45,0
	.goto Darkshore,38.63,67.72,45,0
	.goto Darkshore,38.50,63.73,45,0
	.goto Darkshore,38.74,58.10,45,0
    >>杀死 |cRXP_ENEMY_Rabid Thistle 熊s|r
    >>|cRXP_WARN_施放时要小心|r |T135914:0|t[狂犬病] |cRXP_WARN_（即时近战：在 10 分钟内使所有生命值恢复降低 50%）|r
    .complete 2138,1 --Rabid Thistle 熊 (20)
    .mob Rabid Thistle 熊
step
    #label R熊s
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto Darkshore,39.26,56.72,50,0
	.goto Darkshore,40.21,56.23,50,0
	.goto Darkshore,39.96,55.22,50,0
	.goto Darkshore,39.90,54.38,50,0
	.goto Darkshore,40.24,53.47,50,0
	.goto Darkshore,39.21,53.01,50,0
	.goto Darkshore,39.90,54.38,50,0
    >>杀死 |cRXP_ENEMY_黑木探路者s|r 和 |cRXP_ENEMY_黑木风语者s|r
    >>|cRXP_WARN_要小心 |cRXP_ENEMY_黑木探路者s|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(每 10 秒发动 2 次额外攻击) 和 |cRXP_ENEMY_黑木风语者s|r cast|r |T136022:0|t[Gust of Wind] |cRXP_WARN_(近战范围 aoe 眩晕)|r
    .complete 985,1 --黑木探路者 (8)
    .complete 985,2 --黑木风语者 (5)
    .mob 黑木探路者
    .mob 黑木风语者
step
    #completewith Auberdine
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r 掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto Darkshore,38.63,51.25,50,0
	.goto Darkshore,38.33,50.00,50,0
	.goto Darkshore,38.18,48.42,50,0
	.goto Darkshore,38.73,47.62,50,0
	.goto Darkshore,39.49,47.65,50,0
	.goto Darkshore,41.40,47.13,50,0
	.goto Darkshore,41.67,49.47,50,0
	.goto Darkshore,41.45,50.84,50,0
	.goto Darkshore,38.63,51.25,50,0
    >>杀死 |cRXP_ENEMY_Foreststrider Fledglings|r。掠夺它们的 |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto Darkshore,36.62,45.59,150 >>前往 |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4723 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4725 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +装备 |T134797:0|t[悲伤之泪]
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_奥琳迪雅|r
    >>|cRXP_BUY_从她那里购买 15|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_奥琳迪雅|r
    >>|cRXP_BUY_从她那里购买 10|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_奥琳迪雅|r
    >>|cRXP_BUY_从她那里购买 5|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto Darkshore,37.45,43.10,20,0
    .goto Darkshore,37.47,42.40,20,0
    .goto Darkshore,37.44,41.84,15 >>前往 |cRXP_FRIENDLY_Hollee|r
step
    .goto Darkshore,37.44,41.84
    >>对话: |cRXP_FRIENDLY_霍莉|r
    .accept 729 >>接任务: |cRXP_LOOT_健忘的勘察员|r
    .target Archaeologist Hollee
step
    .goto Darkshore,37.45,40.50
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor 4182 >>|cRXP_BUY_根据需要购买|r |T133634:0|t[小棕色袋] |cRXP_BUY_/can|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto Darkshore,37.45,40.50
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor 4182 >>|cRXP_BUY_从他那里购买 a|r |T133634:0|t[棕色皮革挎包] |cRXP_BUY_|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
    .accept 4763 >>接任务: |cRXP_LOOT_黑木熊怪的堕落|r
    .target Thundris Windweaver
step
    .goto Darkshore,37.69,40.66
    >>对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_LOOT_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982,2 >>交任务: |cRXP_FRIENDLY_深不可测的海洋|r
    .target Gorbold Steelhand
step
    #completewith next
    .goto Darkshore,37.64,42.46,15,0
    .goto Darkshore,37.61,43.21,15,0
    .goto Darkshore,37.68,43.38,20 >>前往格林达
step
    .goto Darkshore,37.68,43.38
    >>Talk to |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r
    .accept 4812 >>接任务: |cRXP_LOOT_清洗水晶|r
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.81,43.89
    >>在月亮井处使用 |T133748:0|t[空的清洁碗] 和 |T134865:0|t[空的水管]
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>对话: Tharnariun|r, |cRXP_FRIENDLY_Terenthis|r, and then |cRXP_FRIENDLY_Elissa, 他在楼上
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
    .goto Darkshore,38.84,43.42
    .turnin 985 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 986 >>接任务: |cRXP_LOOT_丢失的主人|r
    .goto Darkshore,39.37,43.49
    .accept 965 >>接任务: |cRXP_LOOT_奥萨拉克斯之塔|r
    .goto Darkshore,39.27,43.13,8,0
    .goto Darkshore,39.04,43.55
    .target 萨纳利恩护树人
    .target Terenthis
    .target Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +装备|T132491:0|t[贤者腰带]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto Darkshore,47.32,48.70
    >>点击 |cRXP_PICK_红色水晶|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    >>|cRXP_WARN_记得拉动被拴在一起的 |cRXP_ENEMY_Raging Moonkins|r|r
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_LOOT_水晶中的碎骨|r
step
    #completewith next
    >>杀死 |cRXP_ENEMY_月夜猎者 Runts|r 和 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者 Runt
    .mob 月夜猎者
step
    .goto Darkshore,50.66,34.98
    >>打开 |cRXP_PICK_黑木谷物商店|r。获取 |cRXP_LOOT_黑木谷物样本|r
    >>|cRXP_WARN_激怒保护它的怪物，施放|r |T135848:0|t[冰霜新星]|cRXP_WARN_，拾取 |cRXP_LOOT_黑木谷物样本|r，然后逃离生成的怪物，朝 |cRXP_ENEMY_Den Mother|r 的方向逃窜|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>杀死 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者
step
    #completewith DenM
    .goto Darkshore,52.33,35.94,20,0
    .goto Darkshore,52.39,36.85,20,0
    .goto Darkshore,51.58,37.52,30 >>前往 |cRXP_ENEMY_Den Mother|r
step
    .goto Darkshore,51.51,38.22
    >>杀死 |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Den Mother|r 和她的 |cRXP_ENEMY_Thistle Cubs|r 施放|r |T132141:0|t[Ravage] |cRXP_WARN_(2 秒眩晕)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto Darkshore,51.51,38.22
    >>杀死 |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Den Mother|r 和她的 |cRXP_ENEMY_Thistle Cubs|r 施放|r |T132141:0|t[Ravage] |cRXP_WARN_(2 秒眩晕)|r
    >>|cRXP_WARN_Split Pull |cRXP_ENEMY_Den Mother|r 与你的|r |T133714:0|t[Rough Dynamite]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>杀死 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者
step
    .goto Darkshore,51.80,33.51
    >>打开 |cRXP_PICK_黑木坚果商店|r。获取 |cRXP_LOOT_黑木坚果样本|r :3
    >>|cRXP_WARN_激怒保护它的怪物，施放|r |T135848:0|t[冰霜新星]|cRXP_WARN_，掠夺|cRXP_LOOT_黑木坚果样本|r，然后向北跑|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto Darkshore,52.85,33.42
    >>打开 |cRXP_PICK_Blackwood 水果店|r。获取 |cRXP_LOOT_Blackwood 水果样本|r
    >>杀死 |cRXP_ENEMY_Blackwood Warriors|r 攻击
    >>|cRXP_WARN_施法时间为 5 秒|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.51,33.11
    .cast 16072 >>在营火附近使用 |T134712:0|t[装满的清洁碗] 召唤 |cRXP_ENEMY_Xabraxxis|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .timer 20,The Blackwood Corrupted RP
    .use 12347
step
    #label Talisman
    .goto Darkshore,52.24,33.08
    >>|cRXP_WARN_等待 RP|r
    >>杀死 |cRXP_ENEMY_Xabraxxis|r
    >>拾取掉落在地上的 |cRXP_PICK_Xabraxxis 的恶魔包|r。拾取它以获得 |cRXP_LOOT_腐化护身符|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,51.29,24.53
    >>点击|cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
    .isQuestComplete 1002
step
    .goto Darkshore,51.29,24.53
    >>点击|cRXP_PICK_Buzzbox 323|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    >>杀死 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者
step
    .goto Darkshore,53.11,18.10
    >>掠夺 |cRXP_LOOT_搁浅的海龟|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4727 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03
    >>杀死 |cRXP_ENEMY_月夜猎者s|r。掠夺他们的 |cRXP_LOOT_月夜猎者 Fangs|r
    .complete 1002,1 --月夜猎者 Fang (6)
    .mob 月夜猎者
step
    .goto Darkshore,51.29,24.53
    >>点击|cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
step
    .goto Darkshore,54.97,24.89
    >>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 966 >>接任务: |cRXP_LOOT_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01,50,0
    .goto Darkshore,58.27,25.30,50,0
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01
    >>杀死 |cRXP_ENEMY_Dark Strand Fanatics|r。掠夺他们以获得 |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.97,24.89
    >>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .accept 967 >>接任务: |cRXP_LOOT_奥萨拉克斯之塔|r
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto Darkshore,55.00,33.42,30 >>进入洞穴
step
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_记住洞穴 退出 尽快跳过|r
step
    #completewith next
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    >>拾取地面上的蓝色 |cRXP_LOOT_Scaber Stalks|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>留在洞穴的上层。如果上层没有 |cRXP_LOOT_Death Cap|r，则跳下去
    >>拾取洞穴上方小路尽头地面上的橙色 |cRXP_LOOT_Death Cap|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58
    >>在拾取 |cRXP_LOOT_Death Cap|r 后，拾取洞口的第一个 |cRXP_LOOT_Scaber Stalks|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 947,1 --Scaber Stalk (5)
step
    .goto Darkshore,54.96,34.52
    .goto Darkshore,41.70,36.51,30 >>|cRXP_WARN_在洞穴内执行退出跳过|r
    .isOnQuest 4763
step
    .goto Darkshore,44.18,36.29
    >>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957,3 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
    .target Thundris Windweaver
step
    .goto Darkshore,37.45,40.50
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor 4182 >>|cRXP_BUY_从他那里购买 a|r |T133634:0|t[棕色皮革挎包] |cRXP_BUY_|r
    >>|cRXP_WARN_银币不要低于 30|r
    .target Dalmond
step
    .goto Darkshore,38.84,43.42
    >>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139,1 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
step
    >>对话: Glynda, |cRXP_FRIENDLY_巴瑞萨斯·月影|r, Wanted Poster
    .turnin 4813,2 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r
    .goto Darkshore,37.68,43.38
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
    .goto Darkshore,37.32,43.64
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
    .goto Darkshore,37.22,44.22
    .target Sentinel Glynda Nal'Shea
    .target Barithras Moonshade
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 40|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.62,45.59
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4727 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===注意===|r
    >>|cRXP_WARN_与|r |cRXP_FRIENDLY_Shaussiy交谈|r
    >>|cRXP_WARN_打开“设置炉石”菜单，然后施放|r |T134414:0|t[炉石]
    .hs >>|cRXP_WARN_炉石 BATCH 从 奥伯丁 到 暴风城|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 16-18 冒险 西部荒野法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 18-20 冒险 黑海岸 3 法师 AoE

step
    #completewith JenneaT
    +|cRXP_WARN_注意：您需要每种布料 12 叠（|r|T132911:0|t[羊毛布]|cRXP_WARN_、|r |T132905:0|t[丝绸布]|cRXP_WARN_、|r |T132892:0|t[魔纹布]|cRXP_WARN_、|r 和 |T132903:0|t[符文布]|cRXP_WARN_）以便稍后上交布料。随着等级的提高，您会自然获得这些布料|r
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>前往 |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_罗伯特·奥布斯|r
    >>|cRXP_BUY_从他那里购买一|r |T132620:0|t[一桶梅洛] |cRXP_BUY_|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #sticky
    #label Bank2
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .bankdeposit 17056,5354,2592,6889 >>将以下物品存入银行：
    >>|T132917:0|t[轻羽]
    >>|T133469:0|t[致德尔格伦的信]
    >>|T132911:0|t[羊毛布]
    >>|T132832:0|t[小鸡蛋]
    .target Newton Burnside
step
    .goto Stormwind City,57.03,72.97
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .bankwithdraw 730,7207 >>从您的银行提取以下物品： << Gnome
    .bankwithdraw 730,16115 >>从您的银行提取以下物品： << Human
    >>|T133884:0|t[鱼人之眼]
    >>|T132788:0|t[詹妮娅的烧瓶] << Gnome
    >>|T132763:0|t[奥斯瑞克的板条箱] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_跳到火炬上，然后跳下来，躲到暴风城下面|r
    >>|cRXP_WARN_将阴影设置为“良好”或“低”，在蓝色虚空前，站在恐龙德里克脚的中间（泥土较浅的部分），然后径直向前走|r
    .link https://clips.twitch.tv/WonderfulObservantPigeonTwitchRPG-VGEqzHObhqqsv8Ae >>点击此处查看指南
    .goto Stormwind City,38.61,79.39,10 >>前往 |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto Stormwind City,38.61,79.39
    >>对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
    .trainer >>训练你的职业法术（烈焰冲击）
    >>总花费：15秒
    .target Jennea Cannon
step
    .goto Stormwind City,55.46,65.26
    >>对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor 1257 >>|cRXP_BUY_从他那里购买|r |T134830:0|t[次级治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto Stormwind City,56.69,57.76,12,0
    .goto Stormwind City,57.13,57.69,10 >>前往|cRXP_FRIENDLY_Woo Ping|r
step
    .goto Stormwind City,57.13,57.69
    >>对话: |cRXP_FRIENDLY_吴平|r
    .train 1180 >>火车 |T132321:0|t[匕首]
    .target Woo Ping
step
    #completewith next
    .goto Stormwind City,57.17,58.83,12,0
    .goto Stormwind City,63.42,63.75,20,0
    .goto Stormwind City,63.14,65.25,15,0
    .goto Stormwind City,66.27,62.12,10 >>前往 |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto Stormwind City,66.27,62.12
    >>对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .turnin 6261 >>交任务: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .accept 6285 >>接任务: |cRXP_LOOT_返回西部荒野|r
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto Stormwind City,66.27,62.12
    >>对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind City >>获取暴风城飞行路线 << Gnome
    .fly Westfall >>飞往西部荒野 << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>掉到下面的壁架上 |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto Elwynn Forest,32.10,50.32,40 >>前往: |cRXP_PICK_艾尔文森林|r
step << skip
    #completewith next
    #requires Stormwind1
    .goto Elwynn Forest,42.96,65.62,30 >>前往金郡旅店
step << skip
    #label GoldshireTrain
    .goto Elwynn Forest,43.25,66.25
    >>如果没有火车，就跳到楼下的吊灯上，否则就从椅子上跳上来
    >>对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .accept 1919 >>接任务: |cRXP_WARN_向詹妮亚报告|r
    .trainer >>训练你的职业法术（烈焰冲击）
    >>总花费：15秒
step << skip
    .goto Elwynn Forest,44.00,65.69
    >>对话: |cRXP_FRIENDLY_酒吧老板杜宾斯|r
    >>|cRXP_BUY_从他那里购买 a|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto Elwynn Forest,43.77,65.80
    >>对话: |cRXP_FRIENDLY_旅店老板法雷|r
    >>|cRXP_BUY_从他那里购买 45|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto Elwynn Forest,28.98,61.50
    >>在瀑布处使用 |T132788:0|t[詹妮娅的烧瓶]
    >>|cRXP_WARN_施法时间为 5 秒|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>对话: |cRXP_FRIENDLY_农夫法布隆|r, Verna
    .accept 64 >>接任务: |cRXP_LOOT_遗失的怀表|r
    .accept 109 >>接任务: |cRXP_LOOT_向格里安·斯托曼报到|r
    .goto Westfall,59.95,19.35
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 151 >>接任务: |cRXP_LOOT_老马布兰契|r
    .goto Westfall,59.91,19.41
    .target 农夫法布罗
    .target 维尔纳·法布罗
step << Gnome
    #completewith Gryan
    >>打开地面上的 |cRXP_PICK_Sacks of Oats|r。拾取它们可获得 |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 151,1 --Handful of Oats (8)
step
    >>对话: Farmer Saldean|r and then |cRXP_FRIENDLY_Salma, 他在里面
    .accept 9 >>接任务: |cRXP_LOOT_清理荒野|r
    .goto Westfall,56.04,31.23
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .accept 38 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 22 >>接任务: |cRXP_LOOT_猪肝馅饼|r
    .goto Westfall,56.42,30.52
    .target Farmer Saldean
    .target Salma Saldean
step << Gnome
    #completewith Gryan
    .goto Westfall,53.54,31.72,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r 和 |cRXP_ENEMY_Harvest Golems|r。掠夺他们的 |cRXP_LOOT_Flasks of Oil|r 和 |cRXP_LOOT_Hops|r
    >>|cRXP_WARN_现在请记住|r|T135826:0|t[Flamestrike]|cRXP_WARN_/|r|T136116:0|t[Arcane Explosion] |cRXP_WARN_AoE|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>AoE |cRXP_ENEMY_Young Goretusks|r。掠夺他们的 |cRXP_LOOT_Goretusk 肝脏|r 和 |cRXP_LOOT_Goretusk 鼻子|r
    >>AoE |cRXP_ENEMY_Young Fleshrippers|r. 掠夺他们的 |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob Young Goretusk
    .mob Young Fleshripper
step
    #label Gryan << Gnome
	>>对话: Gryan, |cRXP_FRIENDLY_达努温上尉|r << Gnome
	>>对话: Gryan|r and then |cRXP_FRIENDLY_Lewis, 他在里面 << Human
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r << Gnome
    .accept 65 >>接任务: |cRXP_LOOT_迪菲亚兄弟会|r
    .accept 12 >>接任务: |cRXP_LOOT_西部荒野人民军|r << Gnome
    .goto Westfall,56.33,47.52
    .turnin 6285 >>交任务: |cRXP_FRIENDLY_返回西部荒野|r << Human
    .goto Westfall,57.002,47.169 << Human
    .accept 102 >>接任务: |cRXP_LOOT_西部荒野的豺狼人|r << Gnome
    .goto Westfall,56.42,47.62 << Gnome
	.target 格里安·斯托曼托
	.target 丹努文船长 << Gnome
    .target Quartermaster Lewis << Human
step
    .goto Westfall,53.98,52.99
	>>对话: |cRXP_FRIENDLY_哨兵加里安|r
    .accept 153 >>接任务: |cRXP_LOOT_红色皮质面罩|r
	.target Scout Galiaan
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 45|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 40|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 35|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 30|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 25|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 20|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 15|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 10|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto Westfall,52.86,53.72
	>>对话: |cRXP_FRIENDLY_旅店老板希瑟尔|r
    >>|cRXP_BUY_从她那里购买 5|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>打开地面上的 |cRXP_PICK_Sacks of Oats|r。拾取它们可获得 |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>AoE |cRXP_ENEMY_Goretusks|r。掠夺他们的 |cRXP_LOOT_Goretusk 肝脏|r 和 |cRXP_LOOT_Goretusk 鼻子|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r. 掠夺他们的 |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob Goretusk
    .mob Fleshripper
step
    #completewith Compass
    .goto Westfall,39.45,52.34,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r。掠夺他们的 |cRXP_LOOT_Flasks of Oil|r 和 |cRXP_LOOT_Hops|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>对 |cRXP_ENEMY_Defias|r 进行范围攻击。掠夺他们的 |cRXP_LOOT_红色皮革头巾|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto Westfall,36.24,54.52
    >>打开 |cRXP_PICK_Alexston 的宝箱|r。拾取 |cRXP_LOOT_简易指南针|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34,60,0
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34
    >>AoE |cRXP_ENEMY_Harvest Watchers|r 和 |cRXP_ENEMY_Harvest Golems|r。掠夺他们的 |cRXP_LOOT_Flasks of Oil|r 和 |cRXP_LOOT_Hops|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_留意 |cRXP_ENEMY_Old Murk-Eye|r。尽量靠近山脊边缘，以免错过他|r
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.40,57.93,60,0
    .goto Westfall,29.29,65.46,60,0
    .goto Westfall,32.62,68.40,60,0
    .goto Westfall,31.07,69.42,60,0
    .goto Westfall,31.40,72.29,30 >>范围攻击豺狼人营地
    >>AoE |cRXP_ENEMY_Riverpaw Herbalists|r、|cRXP_ENEMY_Riverpaw Mongrels|r 和 |cRXP_ENEMY_Riverpaw Brutes|r。掠夺他们的 |cRXP_LOOT_Gnoll Paws|r
    >>如果你找到 |cRXP_ENEMY_Old Murk-Eye|r, 跳过此步骤
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_找到 |cRXP_ENEMY_Old Murk-Eye|r。将他放风筝至|r |cRXP_FRIENDLY_Grayson|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto Westfall,30.02,86.02
    >>Talk to |cRXP_FRIENDLY_Grayson|r
    .accept 104 >>接任务: |cRXP_WARN_海岸上的威胁|r
    .target Captain Grayson
step
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76
    >>AoE |cRXP_ENEMY_Old Murk-Eye|r。搜刮他以获取 |cRXP_LOOT_Scale of Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.02,86.02
    >>Talk to |cRXP_FRIENDLY_Grayson|r
    .accept 103 >>接任务: |cRXP_WARN_长明的灯塔|r
    .turnin 103,1 >>交任务: |cRXP_FRIENDLY_长明的灯塔|r
    .turnin 104,3 >>交任务: |cRXP_FRIENDLY_海岸上的威胁|r
    .target Captain Grayson
step
    #completewith next
    >>AoE |cRXP_ENEMY_Defias Knuckledasters|r 和 |cRXP_ENEMY_Defias Highwaymen|r。搜刮他们的 |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Defias Highwaymen|r 施放|r |T132090:0|t[背刺] |cRXP_WARN_（从背后造成双倍伤害）|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,44.62,80.26
    >>Talk to |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >>接任务: |cRXP_WARN_雷霆啤酒|r
    .turnin 117 >>交任务: |cRXP_FRIENDLY_雷霆啤酒|r
    .target 恐怖酒酿
step
    #completewith next
    .goto Westfall,48.77,77.70,60,0
    .goto Westfall,51.73,74.67,60,0
    .goto Westfall,52.56,72.87,60,0
    >>AoE |cRXP_ENEMY_Defias Knuckledasters|r 和 |cRXP_ENEMY_Defias Highwaymen|r。搜刮他们的 |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Defias Highwaymen|r 施放|r |T132090:0|t[背刺] |cRXP_WARN_（从背后造成双倍伤害）|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,52.08,71.94,60 >>前往匕首山的尽头
    .isOnQuest 153
step
    #completewith Footpads
    >>打开地面上的 |cRXP_PICK_Sacks of Oats|r。拾取它们可获得 |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>AoE |cRXP_ENEMY_Goretusks|r。掠夺他们的 |cRXP_LOOT_Goretusk 肝脏|r 和 |cRXP_LOOT_Goretusk 鼻子|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r. 掠夺他们的 |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob 大血牙
    .mob Goretusk
    .mob Young Goretusk
    .mob Fleshripper
step
    #completewith next
    >>AoE |cRXP_ENEMY_Defias Trappers|r 和 |cRXP_ENEMY_Defias Smugglers|r。掠夺他们的 |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Defias Trappers|r 施放|r |T132090:0|t[背刺] |cRXP_WARN_（从背后造成双倍伤害）和|r |T132149:0|t[捕网] |cRXP_WARN_（使人无法动弹 9 秒）|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto Westfall,46.65,52.99,60,0
    .goto Westfall,48.22,45.21,60,0
    .goto Westfall,45.77,39.19,60,0
    .goto Westfall,46.49,37.30,60,0
    .goto Westfall,44.54,34.71,150 >>前往莫尔森农场
    .isOnQuest 153
step
    #completewith Watch
    .goto Westfall,44.54,34.71,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>AoE |cRXP_ENEMY_Young Goretusks|r。掠夺他们的 |cRXP_LOOT_Goretusk 肝脏|r 和 |cRXP_LOOT_Goretusk 鼻子|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r 和 |cRXP_ENEMY_Young Fleshrippers|r。掠夺他们的 |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob Young Goretusk
    .mob Fleshripper
    .mob Young Fleshripper
step
    .goto Westfall,44.14,26.66,60,0
    .goto Westfall,46.13,26.52,60,0
    .goto Westfall,48.74,20.79
    >>AoE |cRXP_ENEMY_Defias Trappers|r 和 |cRXP_ENEMY_Defias Smugglers|r。掠夺他们的 |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Defias Trappers|r 施法|r |T132090:0|t[背刺] |cRXP_WARN_and|r |T132149:0|t[捕网]
    >>|cRXP_WARN_如果你在 |cRXP_ENEMY_Defias Trappers|r 和|r |cRXP_ENEMY_Defias Smugglers 上的等级未达到 10/15，请跳过此步骤|r
    .complete 153,1,1 --Red Leather Bandana (15)
    .complete 12,1 --Defias Trapper (15)
    .complete 12,2 --Defias Smuggler (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #completewith next
    .goto Westfall,48.74,20.79,60,0
    >>AoE |cRXP_ENEMY_Defias Trappers|r 和 |cRXP_ENEMY_Defias Smugglers|r。掠夺他们的 |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Defias Trappers|r 施法|r |T132090:0|t[背刺] |cRXP_WARN_and|r |T132149:0|t[捕网]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto Westfall,49.33,19.26
    >>打开 |cRXP_PICK_Furlbrow 的衣柜|r。从中获取 |cRXP_LOOT_Furlbrow 的怀表|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto Westfall,50.50,21.38,60,0
    .goto Westfall,51.70,23.16,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,52.02,15.00,60,0
    .goto Westfall,56.93,12.75
    >>AoE |cRXP_ENEMY_Riverpaw Scouts|r 和 |cRXP_ENEMY_Riverpaw Gnolls|r。掠夺他们的 |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto Westfall,52.36,9.59,60,0
    .goto Westfall,53.80,10.69,60,0
    .goto Westfall,55.96,8.22
    >>AoE |cRXP_ENEMY_Murloc Coastrunners|r 和 |cRXP_ENEMY_Murloc Raiders|r。掠夺他们的 |cRXP_LOOT_Murloc Eyes|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto Westfall,56.56,19.25
    >>AoE |cRXP_ENEMY_迪菲亚护足|r 掠夺他们的 |cRXP_LOOT_红色皮革头巾|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_迪菲亚之足|r 施法|r |T132090:0|t[背刺]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto Westfall,56.56,19.25
    >>打开地面上的 |cRXP_PICK_Sacks of Oats|r。拾取它们可获得 |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>对话: |cRXP_FRIENDLY_农夫法布隆|r, Verna
    .turnin 64 >>交任务: |cRXP_FRIENDLY_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .turnin 151 >>交任务: |cRXP_FRIENDLY_老马布兰契|r
    .goto Westfall,59.91,19.41
    .target 农夫法布罗
    .target 维尔纳·法布罗
step
    .goto Westfall,59.72,34.62,80,0
    .goto Westfall,60.24,47.40
    >>AoE |cRXP_ENEMY_Goretusks|r 和 |cRXP_ENEMY_Young Goretusks|r。掠夺它们的 |cRXP_LOOT_Goretusk 肝脏|r 和 |cRXP_LOOT_Goretusk 鼻子|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r |cRXP_ENEMY_Young Fleshrippers|r. 掠夺他们的 |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob Goretusk
    .mob Young Goretusk
    .mob Fleshripper
    .mob Young Fleshripper
step
    .goto Westfall,52.84,30.46,60,0
    .goto Westfall,51.70,23.16
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,51.70,23.16
    .xp 17+11890 >>升级至 11890+/17700xp
    .isQuestComplete 12
step
    .goto Westfall,51.70,23.16
    >>|cRXP_WARN_如果你已经完成了人民民兵的目标，请跳过此步骤|r
    .xp 17+12800 >>升级至 12800+/17700xp
step
    >>对话: Farmer Saldean|r and then |cRXP_FRIENDLY_Salma, 他在里面
    .turnin 9,1 >>交任务: |cRXP_FRIENDLY_清理荒野|r
    .vendor >>供应商垃圾
    .goto Westfall,56.04,31.23
    .turnin 22 >>交任务: |cRXP_FRIENDLY_猪肝馅饼|r
    .turnin 38 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .goto Westfall,56.42,30.52
    .target Farmer Saldean
    .target Salma Saldean
step
	>>对话: Gryan, |cRXP_FRIENDLY_达努温上尉|r
    .turnin 12 >>交任务: |cRXP_FRIENDLY_西部荒野人民军|r
    .goto Westfall,56.33,47.52
    .turnin 102,1 >>交任务: |cRXP_FRIENDLY_西部荒野的豺狼人|r
    .goto Westfall,56.42,47.62
	.target 格里安·斯托曼托
	.target 丹努文船长
    .isQuestComplete 12
step
    .goto Westfall,56.42,47.62
	>>对话: |cRXP_FRIENDLY_达努温上尉|r
    .turnin 102,1 >>交任务: |cRXP_FRIENDLY_西部荒野的豺狼人|r
	.target 丹努文船长
step
    .goto Westfall,53.98,52.99
	>>对话: |cRXP_FRIENDLY_哨兵加里安|r
    .turnin 153,2 >>交任务: |cRXP_FRIENDLY_红色皮质面罩|r
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_在飞行前召唤尽可能多的水|r
step
    #completewith next
    .goto Westfall,56.56,52.64
	>>对话: |cRXP_FRIENDLY_索尔|r
    .fly Stormwind >>飞往暴风城
	.target Thor
step
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_跳到火炬上，然后跳下来，躲到暴风城下面|r
    >>|cRXP_WARN_将阴影设置为“良好”或“低”，在蓝色虚空前，站在恐龙德里克脚的中间（泥土较浅的部分），然后径直向前走|r
    .link https://clips.twitch.tv/WonderfulObservantPigeonTwitchRPG-VGEqzHObhqqsv8Ae >>点击此处查看指南
    .goto Stormwind City,38.61,79.39,10 >>前往 |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
    .turnin 1861,1 >>交任务: |cRXP_FRIENDLY_明镜湖|r
--   .turnin 1919 >>交任务: |cRXP_FRIENDLY_向詹妮亚报告|r
    .trainer >>训练你的职业法术（火球 r4）
    >>总成本：18 秒
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>退出法师塔
    .goto Stormwind City,32.16,79.84,10 >>前往 |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    .vendor 1307 >>|cRXP_BUY_从她那里购买|r |T134851:0|t[低级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,31.41,79.10,20,0
    .goto Stormwind City,32.67,71.36,20,0
    .goto Stormwind City,34.53,68.40,20,0
    .goto Stormwind City,32.16,59.96,20,0
    .goto Stormwind City,32.31,58.51,20,0
    .goto Stormwind City,30.53,55.10,20,0
    .goto Stormwind City,26.04,52.25,20,0
    .goto Stormwind City,24.67,52.60,20,0
    .goto Stormwind City,21.41,55.80,10 >>前往 |cRXP_FRIENDLY_Argos|r
step
    .goto Stormwind City,21.41,55.80
    >>对话: |cRXP_FRIENDLY_阿古斯·夜语|r
    .accept 3765 >>接任务: |cRXP_LOOT_遥远的旅途|r
    .target Argos Nightwhisper
step
    .goto Stormwind City,41.57,65.46
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_艾代尔·吉尔罗|r
    .vendor 1316 >>|cRXP_BUY_从他那里购买非智力|r |T134943:0|t[卷轴] |cRXP_BUY_（如果它们涨价了）|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>前往 |cRXP_FRIENDLY_Roberto|r
step
    .goto Stormwind City,52.05,67.96
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_罗伯特·奥布斯|r
    >>|cRXP_BUY_从他那里购买一|r |T132620:0|t[一桶梅洛] |cRXP_BUY_|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>前往 |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor 1257 >>|cRXP_BUY_从他那里购买|r |T134830:0|t[次级治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto Stormwind City,55.30,68.16,10 >>进入暴风城银行
step
    #sticky
    #label Bank4
    .goto Stormwind City,57.03,72.97
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .bankwithdraw 769,5354,6889 >>从您的银行提取以下物品：
    >>|T133970:0|t[大块野猪肉]
    >>|T133469:0|t[致德尔格伦的信]
    >>|T132832:0|t[小鸡蛋]
step
    #label Bank3
    .goto Stormwind City,57.03,72.97
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    >>|cRXP_WARN_注意：您需要每种布料 12 叠（|r|T132911:0|t[羊毛布]|cRXP_WARN_、|r |T132905:0|t[丝绸布]|cRXP_WARN_、|r |T132892:0|t[魔纹布]|cRXP_WARN_、|r 和 |T132903:0|t[符文布]|cRXP_WARN_）以便稍后上交布料。随着等级的提高，您会自然获得这些布料|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >>将以下物品存入银行：
    >>|T133024:0|t[青铜管]
    >>|T134943:0|t[卷轴]
    >>|T132917:0|t[轻羽]
    >>|T132911:0|t[羊毛布]
    >>|T134377:0|t[简易指南针]
    >>|T132620:0|t[一桶梅洛]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>进入旅馆
    .goto Stormwind City,52.61,65.72,10 >>前往 |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===注意===|r
    >>|cRXP_WARN_与|r |cRXP_FRIENDLY_Allison 交谈|r
    >>|cRXP_WARN_打开“设置炉石”菜单，然后施放|r |T134414:0|t[炉石]
    .hs >>|cRXP_WARN_从 暴风城 炉石到 奥伯丁|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 18-20 冒险 黑海岸 3 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 20-22 冒险 赤脊山 1 法师 AoE

step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 45|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 40|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 35|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 30|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 25|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 20|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 15|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 10|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto Darkshore,36.83,43.91
    >>对话: |cRXP_FRIENDLY_塔尔丹|r
    >>|cRXP_BUY_从他那里购买 5|r |T132796:0|t[瓜汁] |cRXP_BUY_|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto Darkshore,36.77,44.28
    >>对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_从他那里购买最多 40|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>稍后删除此步骤
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.09,44.93
    >>对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_LOOT_海中的水果|r
    .target Gubber Blump
step
    .goto Darkshore,43.55,76.29
    >>对话: |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
    .accept 944 >>接任务: |cRXP_LOOT_主宰之剑|r
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_Kerlonian|r不存在，则跳过此步骤|r
    .accept 5321 >>接任务: |cRXP_LOOT_昏昏欲睡|r
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
    >>打开 |cRXP_PICK_Kerlonian 的宝箱|r。拾取其中的 |cRXP_LOOT_觉醒之号角|r
    >>|cRXP_WARN_当他睡着时使用|r |T134229:0|t[|cRXP_LOOT_觉醒号角|r] |cRXP_WARN_on |cRXP_FRIENDLY_Kerlonian|r|r
    >>|cRXP_WARN_这两个都有 5 秒的施法时间|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
   .complete 986,1 --Fine 月夜猎者 Pelt (5)
   .mob 月夜猎者 Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob 灰蓟熊
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto Darkshore,38.65,87.34
    >>前往主宰者之刃
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>AoE |cRXP_ENEMY_Twilight Disciples|r 和 |cRXP_ENEMY_Twilight Thugs|r。从他们身上搜刮 |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] 开始任务|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >>接任务: |cRXP_LOOT_深渊之神|r
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto Darkshore,38.65,87.34
    >>将 |T134715:0|t[占卜之瓶] 放在地上
    >>|cRXP_WARN_施法时间为 5 秒|r
    >>点击地面上的 |cRXP_PICK_Phial of Scrying|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto Darkshore,38.65,87.34
    >>对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    >>|cRXP_WARN_如果 |cRXP_FRIENDLY_Therylune|r 不在，则对 |cRXP_ENEMY_Twilight Disciples|r 和 |cRXP_ENEMY_Twilight Thugs|r 进行 AoE，持续 |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]，直到她醒来|r
   .accept 945 >>接任务: |cRXP_LOOT_护送瑟瑞露尼|r
   .target Therylune
   .use 13536
   .isOnQuest 5321
step
    #completewith Tome1
    >>护送 |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --护卫 Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
    .isOnQuest 5321
step
   .goto Darkshore,38.55,86.03
   >>将 |T134715:0|t[占卜之瓶] 放在地上
   >>|cRXP_WARN_施法时间为 5 秒|r
   >>点击地面上的 |cRXP_PICK_Phial of Scrying|r
   .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
   .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto Darkshore,38.55,86.03
    >>点击|cRXP_PICK_Twilight Tome|r
   .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
   .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>护送 |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_确保 |cRXP_FRIENDLY_Therylune|r 保持在渲染范围内，否则你将失败任务|r
   .complete 945,1 --护卫 Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto Darkshore,35.72,83.69
    >>Talk to |cRXP_FRIENDLY_Remtravel|r to start the escort
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 731 >>接任务: |cRXP_LOOT_健忘的勘察员|r
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,31.28,87.39
    >>护送 |cRXP_FRIENDLY_Remtravel|r
    >>当 |cRXP_ENEMY_Gravelflint Bonesnapper|r 和 |cRXP_ENEMY_Gravelflint Geomancer|r 出现时，让 |cRXP_ENEMY_Gravelflint Geomancer|r 对 |cRXP_FRIENDLY_Remtravel|r 施放 |T135812:0|t[Fireball]，然后对其施放 |T136071:0|t[Polymorph]。杀死 |cRXP_ENEMY_Gravelflint Bonesnapper|r，然后杀死 |cRXP_ENEMY_Gravelflint Geomancer|r
    .complete 731,1 --护送勘探者 Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +从现在起不要重新唤醒 |cRXP_FRIENDLY_Kerlonian|r
    >>留意 |cRXP_ENEMY_Strider Clutchmother|r
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto Darkshore,31.28,87.39
    >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_抢夺脖子上的钱|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4733 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >>抛弃沉睡者已苏醒
    .isOnQuest 950
step
    .goto Darkshore,31.22,85.56
    >>拾取地面上的 |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_龟壳有视线|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4732 >>接任务: |cRXP_LOOT_搁浅的海龟|r
    .isOnQuest 950
step
    #completewith SeaCreature
    >>AoE |cRXP_ENEMY_Encrusted Tide Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto Darkshore,31.70,83.72
    >>拾取地面上的 |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_龟壳有视线|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4731 >>接任务: |cRXP_LOOT_搁浅的海龟|r
    .isOnQuest 950
step
    #label SeaCreature
    .goto Darkshore,32.70,80.73
    >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4730 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
    .isOnQuest 950
step
    #completewith next
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto Darkshore,36.52,76.55
   >>无需移动到营地中心即可清理鱼人营地
   >>清除所有敌人后，移至营地中心召唤 3 波敌人（3 个 Coastrunners、2 个 Warriors、Murkdeep 和 1 个 Hunter）
   >>|cRXP_WARN_如果你够幸运的话，|cRXP_ENEMY_Murkdeep|r 可能已经到达西边海岸 30 码处了（如果之前有人死了的话）|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,35.42,71.52,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto Darkshore,35.97,70.90
    >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4728 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
    .isOnQuest 950
step
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
    .use 13536
step
    #label Onu2
    .goto Darkshore,43.55,76.29
    >>对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto Darkshore,35.97,70.90
    >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4728 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    #completewith next
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,36.52,76.55
    >>无需移动到营地中心即可清理鱼人营地
    >>清除所有敌人后，移至营地中心召唤 3 波敌人（3 个 Coastrunners、2 个 Warriors、Murkdeep 和 1 个 Hunter）
    >>|cRXP_WARN_如果你够幸运的话，|cRXP_ENEMY_Murkdeep|r 可能已经到达西边海岸 30 码处了（如果之前有人死了的话）|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,32.70,80.73
    >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4730 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    .goto Darkshore,32.80,81.72,60,0
    .goto Darkshore,32.08,83.28
    >>AoE |cRXP_ENEMY_Encrusted Tide Crawlers|r. 掠夺他们的 |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,31.70,83.72
    >>拾取地面上的 |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_龟壳有视线|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4731 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    .goto Darkshore,31.22,85.56
    >>拾取地面上的 |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_龟壳有视线|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4732 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    .goto Darkshore,31.28,87.39
    >>掠夺地面上的 |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_抢夺脖子上的钱|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .accept 4733 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    #completewith Remtravel3
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
    .use 13536
step
    #completewith Remtravel3
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
    .use 13536
step
    #completewith next
    +从现在起不要重新唤醒 |cRXP_FRIENDLY_Kerlonian|r
    >>留意 |cRXP_ENEMY_Strider Clutchmother|r
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto Darkshore,35.72,83.69
    >>Talk to |cRXP_FRIENDLY_Remtravel|r to start the escort
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 731 >>接任务: |cRXP_LOOT_健忘的勘察员|r
    .target Prospector Remtravel
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,38.65,87.34
    >>护送 |cRXP_FRIENDLY_Remtravel|r
    >>当 |cRXP_ENEMY_Gravelflint Bonesnapper|r 和 |cRXP_ENEMY_Gravelflint Geomancer|r 出现时，让 |cRXP_ENEMY_Gravelflint Geomancer|r 对 |cRXP_FRIENDLY_Remtravel|r 施放 |T135812:0|t[Fireball]，然后对其施放 |T136071:0|t[Polymorph]。杀死 |cRXP_ENEMY_Gravelflint Bonesnapper|r，然后杀死 |cRXP_ENEMY_Gravelflint Geomancer|r
    .complete 731,1 --护送勘探者 Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
step
    #completewith next
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
step
    #label Glaive2
   .goto Darkshore,38.65,87.34
    >>前往主宰者之刃
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>AoE |cRXP_ENEMY_Twilight Disciples|r 和 |cRXP_ENEMY_Twilight Thugs|r。从他们身上搜刮 |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>|cRXP_WARN_使用 |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] 开始任务|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >>接任务: |cRXP_LOOT_深渊之神|r
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto Darkshore,38.65,87.34
    >>将 |T134715:0|t[占卜之瓶] 放在地上
    >>|cRXP_WARN_施法时间为 5 秒|r
    >>点击地面上的 |cRXP_PICK_Phial of Scrying|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .use 5251
step
    .goto Darkshore,38.65,87.34
    >>对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    >>|cRXP_WARN_如果 |cRXP_FRIENDLY_Therylune|r 不在，则对 |cRXP_ENEMY_Twilight Disciples|r 和 |cRXP_ENEMY_Twilight Thugs|r 进行 AoE，持续 |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]，直到她醒来|r
    .accept 945 >>接任务: |cRXP_LOOT_护送瑟瑞露尼|r
    .target Therylune
step
    #completewith Tome2
    >>护送 |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --护卫 Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto Darkshore,38.55,86.03
    >>将 |T134715:0|t[占卜之瓶] 放在地上
    >>|cRXP_WARN_施法时间为 5 秒|r
    >>点击地面上的 |cRXP_PICK_Phial of Scrying|r
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .use 5251
step
    #label Tome2
    .goto Darkshore,38.55,86.03
    >>点击|cRXP_PICK_Twilight Tome|r
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
    .use 13536
step
    #label Therylune2
    >>护送 |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_确保 |cRXP_FRIENDLY_Therylune|r 保持在渲染范围内，否则你将失败任务|r
    .complete 945,1 --护卫 Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
step
    #completewith Onu3
    #label Scalps2
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
step
    #requires Scalps2
    #completewith next
    .goto Darkshore,41.40,80.56,-1
    >>点击|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
step
    #label Onu3
    .goto Darkshore,43.55,76.29,-1
    >>对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_Kerlonian|r不存在，则跳过此步骤|r
    .accept 5321 >>接任务: |cRXP_LOOT_昏昏欲睡|r
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
    >>打开 |cRXP_PICK_Kerlonian 的宝箱|r。拾取其中的 |cRXP_LOOT_觉醒之号角|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>AoE |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .mob 月夜猎者 Sire
step
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57,60,0
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57
    >>AoE |cRXP_ENEMY_灰蓟熊s|r。掠夺他们的 |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_灰蓟熊|r 与 |cRXP_ENEMY_月夜猎者 Sires|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob 灰蓟熊
step
    #label 525
    .goto Darkshore,41.40,80.56
    >>点击|cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
step
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03,70,0
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03
    >>范围 |cRXP_ENEMY_月夜猎者 Matriarchs|r 和 |cRXP_ENEMY_月夜猎者 Sires|r。掠夺他们的 |cRXP_LOOT_Fine 月夜猎者 Pelts|r
    >>|cRXP_ENEMY_月夜猎者 Sires|r 与 |cRXP_ENEMY_灰蓟熊s|r 和 |cRXP_ENEMY_Giant Foreststriders 共享产卵|r
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .unitscan 月夜猎者 Sire
    .unitscan 月夜猎者 Matriarch
step
    #completewith Sleeper
    .xp 19+4635 >>升级至 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>AoE |cRXP_ENEMY_Ghostpaw Runners|r. 掠夺他们的 |cRXP_LOOT_Lean Wolf Flanks|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto Ashenvale,27.26,35.58
    >>对话: |cRXP_FRIENDLY_利拉迪斯·月河|r
    .turnin 5321,1 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
    .target Liladris Moonriver
    .isOnQuest 5321
step
    #label Delgren
    .goto Ashenvale,26.19,38.70
    >>Talk to |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .target Delgren the Purifier
step
    .goto Ashenvale,22.64,51.91
    >>对话: |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
    .target Therysil
step
    .goto Ashenvale,34.41,47.99
    .xp 19+8720 >>升级至 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_在飞行前召唤尽可能多的水|r
step
    #completewith next
    .goto Ashenvale,34.41,47.99
    >>对话: |cRXP_FRIENDLY_黛琳希亚|r
    .fly Auberdine >>飞往 奥伯丁
    .target Daelyshia
step
    >>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r, |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 4728 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4730 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4731 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4732 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4733 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .goto Darkshore,36.62,45.60
    .turnin 1138,2 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .goto Darkshore,36.09,44.93
    .target Gwennyth Bly'Leggonde
    .target Gubber Blump
step
    .goto Darkshore,37.73,43.38
    >>Talk to |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>交任务: |cRXP_FRIENDLY_通缉：莫克迪普！|r
    .target Sentinel Glynda Nal'Shea
step
    >>对话: |cRXP_FRIENDLY_特伦希斯|r, |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
    .accept 993 >>接任务: |cRXP_LOOT_丢失的主人|r
    .goto Darkshore,39.37,43.48
    .turnin 3765 >>交任务: |cRXP_FRIENDLY_遥远的旅途|r
    .goto Darkshore,38.32,43.04
    .target Terenthis
    .target Gershala Nightwhisper
step
    .goto Darkshore,38.11,41.16
    >>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    >>|cRXP_BUY_从他那里购买 20|r |T134059:0|t[温和香料] |cRXP_BUY_|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    >>|cRXP_BUY_从他那里购买 15|r |T134059:0|t[温和香料] |cRXP_BUY_|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    >>|cRXP_BUY_从他那里购买 10|r |T134059:0|t[温和香料] |cRXP_BUY_|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    >>|cRXP_BUY_从他那里购买 5|r |T134059:0|t[Mild Spices] |cRXP_BUY_|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto Darkshore,37.45,40.50
    >>对话: |cRXP_FRIENDLY_达蒙德|r
    >>|cRXP_BUY_从他那里购买|r |T135435:0|t[简易木材] |cRXP_BUY_和|r |T135237:0|t[燧石和火绒] |cRXP_BUY_|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto Darkshore,37.44,41.84
    >>对话: |cRXP_FRIENDLY_霍莉|r
    .turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 741 >>接任务: |cRXP_LOOT_健忘的勘察员|r
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto Darkshore,37.47,42.45,20,0
    .goto Darkshore,37.44,43.03,20,0
    .goto Darkshore,36.85,44.05,20,0
    .goto Darkshore,32.96,41.88,20,0
    .goto Darkshore,33.23,39.91,50 >>前往达纳苏斯船
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >>在船上施放 |T135805:0|t[Basic Campfire]（如果船还不可见，则在码头上施放）
    >>|cRXP_WARN_施法时间为 5 秒|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +将任意 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 烹制成 |T133974:0|t[烤野猪肉]
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_开始垃圾邮件投放|r |T132794:0|t[召唤水 r2] |cRXP_WARN_召唤尽可能多的水|r
step
    #label Teldrassil
    .goto Teldrassil,54.91,96.25,100 >>乘船前往泰达希尔
step
    #completewith next
    .goto Teldrassil,55.52,93.68,60,0
    .goto Teldrassil,56.80,92.90,40,0
    .goto Teldrassil,57.47,92.97,20,0
    .goto Teldrassil,58.40,94.01,20 >>前往 |cRXP_FRIENDLY_Vesprystus|r
step
    .goto Teldrassil,58.40,94.01
    >>对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fp Rut'theran >>获取鲁瑟兰村飞行路线
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
    #completewith next
    .goto Darnassus,37.94,48.14,30,0
    .goto Darnassus,38.20,65.96,30,0
    .goto Darnassus,36.79,72.44,30,0
    .goto Darnassus,31.24,84.49,20 >>前往 |cRXP_FRIENDLY_Greywhisker|r
step
    .goto Darnassus,31.24,84.49
    >>对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .turnin 741,3 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .accept 942 >>接任务: |cRXP_LOOT_健忘的勘察员|r
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 20-22 冒险 赤脊山 1 法师 AoE
#version 2
#group RestedXP 冒险 AoE 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 22-26 冒险 湿地 1 法师 AoE

step
    #completewith next
    .hs >>炉火之城
    .zoneskip Stormwind City
step
    .goto Stormwind City,55.46,65.26
    >>对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor 1257 >>供应商垃圾。|cRXP_BUY_Buy|r |T134830:0|t[次级治疗药水] |cRXP_BUY_来自他（如果它们涨价了）|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>进入暴风城银行
step
    #sticky
    #label Bank1
    .goto Stormwind City,57.03,72.97
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >>从您的银行提取以下物品：
    >>|T133024:0|t[青铜管]
    >>|T134943:0|t[卷轴]
    >>|T132620:0|t[一桶梅洛]
    >>|T134377:0|t[简易指南针]
    .target Newton Burnside
step
    #label Bank
    .goto Stormwind City,57.03,72.97
    >>对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
    >>|cRXP_WARN_注意：您需要每种布料 12 叠（|r|T132911:0|t[羊毛布]|cRXP_WARN_、|r |T132905:0|t[丝绸布]|cRXP_WARN_、|r |T132892:0|t[魔纹布]|cRXP_WARN_、|r 和 |T132903:0|t[符文布]|cRXP_WARN_）以便稍后上交布料。随着等级的提高，您会自然获得这些布料|r
    .bankdeposit 17056,2592,1015,4654 >>将以下物品存入银行：
    >>|T132917:0|t[轻羽]
    >>|T132911:0|t[羊毛布]
    >>|T133970:0|t[瘦狼侧翼]
    >>|T134431:0|t[神秘化石]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,52.16,61.44,12,0
    .goto Stormwind City,49.41,63.41,12,0
    .goto Stormwind City,51.16,68.33,12 >>前往 |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto Stormwind City,52.05,67.96
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_罗伯特·奥布斯|r
    >>|cRXP_BUY_从他那里购买一|r |T132620:0|t[一桶梅洛] |cRXP_BUY_|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_跳到火炬上，然后跳下来，躲到暴风城下面|r
    >>|cRXP_WARN_将阴影设置为“良好”或“低”，在蓝色虚空前，站在恐龙德里克脚的中间（泥土较浅的部分），然后径直向前走|r
    .link https://clips.twitch.tv/WonderfulObservantPigeonTwitchRPG-VGEqzHObhqqsv8Ae >>点击此处查看指南
    .goto Stormwind City,38.61,79.39,10 >>前往 |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto Stormwind City,38.61,79.39
    >>对话: |cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 3561 >>火车 |T135763:0|t[传送：暴风城]
    >>总成本：20 秒
    .target 拉里曼普渡大学
step
    .goto Stormwind City,38.61,79.39
    >>对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
    .trainer >>训练你的职业法术（闪现、召唤、冰霜护甲 r3、法力护盾、召唤水 r3）
    >>|cRXP_WARN_暂时不要训练暴雪|r
    >>总成本：1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>退出法师塔
    .goto Stormwind City,32.16,79.84,10 >>前往 |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    >>|cRXP_BUY_从她那里购买 2|r |T134419:0|t[传送符文]|cRXP_BUY_、|r |T134851:0|t[次级法力药水]|cRXP_BUY_、|r |T134831:0|t[治疗药水]|cRXP_BUY_ 和一个|r |T132515:0|t[布质腰带] |cRXP_BUY_（如果它们已售出）|r
    >>|cRXP_WARN_不要低于 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    >>|cRXP_BUY_从她那里购买两件|r |T134419:0|t[传送符文]|cRXP_BUY_、|r |T134851:0|t[次级法力药水]|cRXP_BUY_、|r |T134831:0|t[治疗药水]|cRXP_BUY_和一件|r |T132515:0|t[布质腰带] |cRXP_BUY_（如果它们已售出）|r
    >>|cRXP_WARN_不要低于 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>前往 |cRXP_FRIENDLY_Adair|r
step
    .goto Stormwind City,41.57,65.46
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_艾代尔·吉尔罗|r
    .vendor 1316 >>|cRXP_BUY_从他那里购买非智力|r |T134943:0|t[卷轴] |cRXP_BUY_（如果它们涨价了）|r
    >>|cRXP_WARN_不要低于 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto Stormwind City,41.57,65.46
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_艾代尔·吉尔罗|r
    .vendor 1316 >>|cRXP_BUY_从他那里购买非智力|r |T134943:0|t[卷轴] |cRXP_BUY_（如果它们涨价了）|r
    >>|cRXP_WARN_不要低于 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>沿着墙边跑，而不是绕着墙跑
step
    .goto Stormwind City,45.70,38.42
    >>Talk to |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >>接任务: |cRXP_WARN_关于坚韧的演讲|r
    .target Brother Kristoff
step
    #completewith next
    .goto Stormwind City,47.85,32.67,15,0
    .goto Stormwind City,47.96,31.15,12,0
    .goto Stormwind City,49.18,30.29,12 >>前往 |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .turnin 399 >>交任务: |cRXP_FRIENDLY_童年的记忆|r
    .target Baros Alexston
step
    .goto Stormwind City,55.25,7.07
    >>对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto Stormwind City,69.02,28.39,30,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,74.19,7.45,12 >>前往 |cRXP_FRIENDLY_Milton|r
step
    .goto Stormwind City,74.19,7.45
    >>Talk to |cRXP_FRIENDLY_Milton|r
    .turnin 343 >>交任务: |cRXP_FRIENDLY_关于坚韧的演讲|r
    .accept 344 >>接任务: |cRXP_WARN_帕克斯顿修士|r
    .target Milton Sheaf
step
    #completewith next
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.20,29.08,30,0
    .goto Stormwind City,61.74,42.34,20,0
    .goto Stormwind City,64.80,60.34,12,0
    .goto Stormwind City,64.17,60.60,12 >>前往 |cRXP_FRIENDLY_Felicia|r
step
    .goto Stormwind City,64.17,60.60
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_从她那里购买|r |T133849:0|t[暴风城调味草药] |cRXP_BUY_|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto Stormwind City,64.91,58.48,30,0
    .goto Stormwind City,59.91,51.60,30,0
    .goto Stormwind City,57.83,54.98,30,0
    .goto Stormwind City,63.27,63.43,20,0
    .goto Stormwind City,63.13,65.23,20,0
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>掉到下面的壁架上 |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto Elwynn Forest,42.96,65.62,30 >>前往金郡旅店
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto Elwynn Forest,32.75,49.52,50,0
    .goto Elwynn Forest,40.63,49.27,20,0
    .goto Elwynn Forest,48.27,41.93,50,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    >>沿着山路前往 |cRXP_FRIENDLY_Paxton|r
    .goto Elwynn Forest,49.61,40.41,10 >>前往 |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,44.00,65.69
    >>对话: |cRXP_FRIENDLY_酒吧老板杜宾斯|r
    >>|cRXP_BUY_从他那里购买 a|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto Elwynn Forest,43.77,65.80,0,0
    >>对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .home >>将你的炉石设置为闪金郡
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>前往 |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto Elwynn Forest,49.61,40.41
    >>Talk to |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >>交任务: |cRXP_FRIENDLY_帕克斯顿修士|r
    .accept 345 >>接任务: |cRXP_WARN_墨水短缺|r
    .target Brother Paxton
step
    #completewith Theo
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,48.28,42.21,10,0
    .goto Elwynn Forest,57.62,51.97,30,0
    .goto Elwynn Forest,64.45,69.10,15 >>沿着山路前往阿佐拉之塔
step
    #sticky
    #label Dawn
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Talk to |cRXP_FRIENDLY_Dawn|r upstairs
    .vendor 958 >>|cRXP_BUY_从她那里购买非智力|r |T134943:0|t[卷轴]|cRXP_BUY_、|r |T134850:0|t[初级法力药水]|cRXP_BUY_、和|r |T134830:0|t[次级治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    >>|cRXP_WARN_DON'T 低于 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Talk to |cRXP_FRIENDLY_Dawn|r upstairs
    .vendor 958 >>|cRXP_BUY_从她那里购买非智力|r |T134943:0|t[卷轴]|cRXP_BUY_、|r |T134850:0|t[初级法力药水]|cRXP_BUY_、和|r |T134830:0|t[次级治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    >>|cRXP_WARN_不要低于 19 秒 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto Elwynn Forest,65.22,69.71
    >>上楼去
    >>对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto Duskwood,73.79,45.98,20,0
    .goto Duskwood,74.01,45.36,10 >>进入旅馆
step
    #requires Dawn2
    .goto Duskwood,73.81,44.02
    >>Talk to |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_从他那里购买|r |T132798:0|t[一瓶月光酒] |cRXP_BUY_|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto Duskwood,74.01,45.36,10,0
    .goto Duskwood,73.79,45.98,10 >>退出旅馆
step
    #completewith next
    .goto Duskwood,75.22,48.26,12 >>进入大楼
step
    .goto Duskwood,75.34,48.74
    >>Talk to |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>接任务: |cRXP_LOOT_乌鸦岭|r
    .accept 164 >>接任务: |cRXP_LOOT_斯温的货物|r
    .accept 165 >>接任务: |cRXP_LOOT_隐士|r
    .target Elaine Carevin
step
    .goto Duskwood,78.00,48.33
    >>对话: |cRXP_FRIENDLY_赫尔伯|r
    .vendor 3133 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto Duskwood,79.78,48.06
    >>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 174 >>接任务: |cRXP_LOOT_仰望星空|r
    .turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
    .accept 175 >>接任务: |cRXP_LOOT_仰望星空|r
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto Duskwood,79.78,48.06
    >>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接任务: |cRXP_LOOT_仰望星空|r
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.78,48.06
    >>Talk to |cRXP_FRIENDLY_Mary|r
    .turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
    .accept 177 >>接任务: |cRXP_LOOT_仰望星空|r
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,77.48,44.29
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >>获取暮色森林飞行路线
    .target Felicia Mane
step
    #completewith Kzixx
    .goto Duskwood,76.66,23.49,60,0
    .goto Duskwood,81.82,19.76,20 >>前往 |cRXP_FRIENDLY_Kzixx|r
step
    .goto Duskwood,81.82,19.76
    >>对话: |cRXP_FRIENDLY_卡兹克斯|r
    .vendor 3134 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>对话: |cRXP_FRIENDLY_卡兹克斯|r
    .vendor 3134 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>对话: |cRXP_FRIENDLY_卡兹克斯|r
    .vendor 3134 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto Duskwood,81.82,19.76
    >>对话: |cRXP_FRIENDLY_卡兹克斯|r
    .vendor 3134 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水]|cRXP_BUY_、|r |T134831:0|t[治疗药水]|cRXP_BUY_、以及|r |T132515:0|t[布质腰带] |cRXP_BUY_（如果它们已备好，且需要的话）|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_狼蛛s|r。掠夺它们以获得 |cRXP_LOOT_酥脆蜘蛛肉|r
    >>AoE |cRXP_ENEMY_大血牙s|r。拾取它们可获得 |cRXP_LOOT_大血牙 Snouts|r 和 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob 狼蛛
    .mob 大血牙
    .skill cooking,50,1
step
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_狼蛛s|r。掠夺它们以获得 |cRXP_LOOT_酥脆蜘蛛肉|r
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .mob 狼蛛
    .mob 大血牙
    .skill cooking,<50,1
step
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Talk to |cRXP_FRIENDLY_Parker|r
    .accept 244 >>接任务: |cRXP_LOOT_豺狼人的入侵|r
    .target Guard Parker
step << skip
    #label AoE1
    .goto Redridge Mountains,15.73,62.47,60 >>对 |cRXP_ENEMY_混血赤脊山豺狼人|r 和 |cRXP_ENEMY_赤脊山鞭笞者|r 进行范围攻击
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_大血牙s|r。拾取它们可获得 |cRXP_LOOT_大血牙 Snouts|r 和 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob 大血牙
    .skill cooking,50,1
step << skip
    #completewith next
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .mob 大血牙
    .skill cooking,50
step
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
    >>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .accept 246 >>接任务: |cRXP_LOOT_审时度势|r
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.59,59.40
    >>对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山飞行路线
step
    >>Talk to |cRXP_FRIENDLY_Marris|r and |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>接任务: |cRXP_LOOT_黑石氏族的威胁|r
    .goto Redridge Mountains,33.51,48.96
    .accept 125 >>接任务: |cRXP_LOOT_丢失的工具|r
    .turnin 345 >>交任务: |cRXP_FRIENDLY_墨水短缺|r
    .accept 347 >>接任务: |cRXP_WARN_瑞斯班矿石|r
    .goto Redridge Mountains,32.14,48.64
    .target 马里斯元帅
    .target 工头奥斯洛
step
    .goto Redridge Mountains,29.89,47.36
    >>Talk to |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_从她那里购买 a|r |T134708:0|t[采矿镐] |cRXP_BUY_|r
    >>|cRXP_WARN_你稍后会需要它|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
--  .accept 120 >>接任务: |cRXP_LOOT_送往暴风城的信|r
--  .goto Redridge Mountains,29.99,44.45
    .accept 91 >>接任务: |cRXP_LOOT_所罗门的律法|r
    .goto Redridge Mountains,29.72,44.26
--  .target 所罗门法官
    .target 法警康纳彻
step
    >>对话: |cRXP_FRIENDLY_码头管理员巴伦|r, Wanted Poster
    .accept 127 >>接任务: |cRXP_LOOT_卖鱼|r
    .goto Redridge Mountains,27.72,47.38
    .accept 180 >>接任务: |cRXP_LOOT_通缉：范高雷中尉|r
    .goto Redridge Mountains,26.75,46.42
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto Redridge Mountains,26.92,44.95,0,0
    >>进入旅馆
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>接任务: |cRXP_LOOT_免费的午餐|r
    .target Darcy
step
    .goto Redridge Mountains,26.49,43.95
    >>客栈内部
    >>Talk to |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>接任务: |cRXP_WARN_旱季|r
    .turnin 116 >>交任务: |cRXP_FRIENDLY_旱季|r
    .target Barkeep Daniels
step
    .goto Redridge Mountains,26.47,45.33
    >>客栈内部
    >>Talk to |cRXP_FRIENDLY_Wiley|r by jumping from the bannister downstairs
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
--  .accept 132 >>接任务: |cRXP_LOOT_迪菲亚兄弟会|r
    .target Wiley the Black
step
    .goto Redridge Mountains,29.32,53.64
    >>对话: |cRXP_FRIENDLY_肖恩|r
    .accept 3741 >>接任务: |cRXP_LOOT_希拉里的项链|r
    .target Shawn
step
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_潜入水下并检查刷新点。共有 8 个刷新点，每次刷新 2 个|r
    >>打开 |cRXP_PICK_Glinting Mud|r。拾取它以获得 |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto Redridge Mountains,29.24,53.63
    >>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
    .target Hilary
step
    #completewith Gnolls2
    >>AoE |cRXP_ENEMY_大血牙s|r。拾取它们可获得 |cRXP_LOOT_大血牙 Snouts|r 和 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob 大血牙
    .skill cooking,50,1
step
    #completewith next
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .mob 大血牙
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto Redridge Mountains,15.73,62.47
    >>对 |cRXP_ENEMY_混血赤脊山豺狼人|r 和 |cRXP_ENEMY_赤脊山鞭笞者|r 进行范围攻击
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>AoE |cRXP_ENEMY_狼蛛s|r。掠夺它们以获得 |cRXP_LOOT_酥脆蜘蛛肉|r
    >>AoE |cRXP_ENEMY_大血牙s|r。拾取它们可获得 |cRXP_LOOT_大血牙 Snouts|r 和 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob 狼蛛
    .mob 大血牙
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>AoE |cRXP_ENEMY_狼蛛s|r。掠夺它们以获得 |cRXP_LOOT_酥脆蜘蛛肉|r
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .mob 狼蛛
    .mob 大血牙
    .skill cooking,<50,1
step
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Talk to |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>交任务: |cRXP_FRIENDLY_免费的午餐|r
    .accept 130 >>接任务: |cRXP_LOOT_寻访草药师|r
    .target Guard Parker
step
    #label Gnolls3
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01,60,0
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01
    >>对 |cRXP_ENEMY_Redridge Mongrels|r、|cRXP_ENEMY_Redridge Thrashers|r 和 |cRXP_ENEMY_Redridge Poachers|r 进行范围攻击
    >>|cRXP_WARN_记得对|r |cRXP_ENEMY_赤脊山偷猎者 进行死亡区域控制|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
    .mob Redridge Poacher
step
    .goto Redridge Mountains,30.74,59.99
    >>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 246 >>交任务: |cRXP_FRIENDLY_审时度势|r
    .target Deputy Feldon
step
    .goto Redridge Mountains,41.52,54.68,-1
    >>潜入水下
    >>打开 |cRXP_PICK_Sunken Chest|r。将其拾取以获取 |cRXP_LOOT_Oslow's Toolbox|r
    >>|cRXP_WARN_施法时间为 5 秒|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto Redridge Mountains,40.30,45.98,60,0
    >>AoE |cRXP_ENEMY_Murloc Flesheaters|r 和 |cRXP_ENEMY_Murloc Scouts|r。从他们身上搜刮一些 |cRXP_LOOT_Spotted Sunfish|r 和 |cRXP_LOOT_Murloc Fins|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto Redridge Mountains,32.14,48.63
    >>Talk to |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>交任务: |cRXP_FRIENDLY_丢失的工具|r
    .accept 89 >>接任务: |cRXP_LOOT_止水湖上的桥|r
    .target 工头奥斯洛
step
    .goto Redridge Mountains,30.83,46.49
    >>Talk to |cRXP_FRIENDLY_Dorin|r
    .vendor >>供应商垃圾
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto Redridge Mountains,29.24,45.40,10,0
    .goto Redridge Mountains,28.89,44.87,8 >>进入市政厅
step
    .goto Redridge Mountains,37.16,45.20,60,0
    .goto Redridge Mountains,38.36,41.34,60,0
    .goto Redridge Mountains,38.89,31.72,60,0
    .goto Redridge Mountains,43.25,34.03,60,0
    .goto Redridge Mountains,47.37,34.77,60,0
    .goto Redridge Mountains,55.35,45.02,60,0
    .goto Redridge Mountains,57.02,51.01,60,0
    .goto Redridge Mountains,56.24,53.93,60,0
    .goto Redridge Mountains,58.38,53.56,60,0
    .goto Redridge Mountains,58.47,44.61,60,0
    .goto Redridge Mountains,59.11,43.97,60,0
    .goto Redridge Mountains,59.74,42.01,60,0
    .goto Redridge Mountains,62.34,41.76,60,0
    .goto Redridge Mountains,62.56,45.36,60,0
    >>范围 |cRXP_ENEMY_Blackrock Outrunners|r、|cRXP_ENEMY_Blackrock Renegades|r 和 |cRXP_ENEMY_Blackrock Grunts|r。掠夺他们的 |cRXP_LOOT_Battleworn Axes|r
    >>范围 |cRXP_ENEMY_Murloc Tidecallers|r 和 |cRXP_ENEMY_Murloc Scouts|r。掠夺他们的 |cRXP_LOOT_Spotted Sunfish|r 和 |cRXP_LOOT_Murloc Fins|r
    >>AoE |cRXP_ENEMY_凶猛秃鹰s|r. 掠夺他们的 |cRXP_LOOT_Tough Condor Meat|r
    >>AoE |cRXP_ENEMY_Greater 狼蛛s|r. 掠夺它们以获取 |cRXP_LOOT_Crisp Spider Meat|r
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    >>AoE |cRXP_ENEMY_Redridge Mystics|r 和 |cRXP_ENEMY_Redridge Brutes|r 掠夺他们的 |cRXP_LOOT_Iron Pikes|r 和 |cRXP_LOOT_Iron Rivets|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Blackrock Outrunners|r cast|r |T132149:0|t[Net]|cRXP_WARN_，|cRXP_ENEMY_凶猛秃鹰s|r cast|r |T132154:0|t[Knockdown]
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto Redridge Mountains,37.16,45.20,30,0
	.goto Redridge Mountains,38.36,41.34,30,0
	.goto Redridge Mountains,40.09,40.64,30,0
	.goto Redridge Mountains,42.89,39.26,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
	.goto Redridge Mountains,59.79,42.05,30,0
	.goto Redridge Mountains,62.58,41.46,30,0
	.goto Redridge Mountains,62.57,45.48,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto Redridge Mountains,58.06,52.01,40,0
    .goto Redridge Mountains,57.08,51.03,40,0
    .goto Redridge Mountains,56.12,53.55,40,0
    .goto Redridge Mountains,58.06,52.01
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto Redridge Mountains,43.25,34.03,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,49.97,33.60,30,0
	.goto Redridge Mountains,51.90,39.75,30,0
	.goto Redridge Mountains,54.81,40.66,30,0
	.goto Redridge Mountains,54.70,44.93,30,0
	.goto Redridge Mountains,57.63,46.48,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto Redridge Mountains,52.26,36.56,30,0
	.goto Redridge Mountains,54.08,38.28,30,0
	.goto Redridge Mountains,54.98,40.31,30,0
	.goto Redridge Mountains,56.79,41.36,30,0
	.goto Redridge Mountains,57.26,47.60,30,0
	.goto Redridge Mountains,54.76,45.58,30,0
	.goto Redridge Mountains,52.67,42.73,30,0
	.goto Redridge Mountains,50.50,41.55,30,0
	.goto Redridge Mountains,52.26,36.56,30,0
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto Redridge Mountains,38.89,31.72
    .mob Blackrock Outrunner
    .mob Blackrock Grunt
    .mob Blackrock Renegade
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .mob 凶猛秃鹰
    .mob Greater 狼蛛
    .mob 大血牙
    .mob Redridge Mystic
    .mob Redridge Brute
step
    #completewith Herbalist
    .goto Redridge Mountains,36.64,37.01,60,0
    .goto Redridge Mountains,32.21,40.09,60,0
    >>AoE |cRXP_ENEMY_Redridge Mystics|r 和 |cRXP_ENEMY_Redridge Brutes|r 掠夺他们的 |cRXP_LOOT_Iron Pikes|r 和 |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,22.68,43.83
    >>进去
    >>对话: |cRXP_FRIENDLY_厨师布雷纳|r
    .accept 92 >>接任务: |cRXP_LOOT_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .target Chef Breanna
    .itemcount 1080,5
    .itemcount 1081,5
    .itemcount 2296,5
step
    #label Herbalist
    .goto Redridge Mountains,21.86,46.33
    >>对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 130 >>交任务: |cRXP_FRIENDLY_寻访草药师|r
    .accept 131 >>接任务: |cRXP_LOOT_水仙诉衷情|r
    .accept 34 >>接任务: |cRXP_LOOT_不速之客|r
    .target Martie Jainrose
step
    #completewith next
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .mob 大血牙
step
    .goto Redridge Mountains,15.66,49.31
    >>杀死 |cRXP_ENEMY_Bellygrub|r
    >>|cRXP_WARN_放风筝她去 |cRXP_FRIENDLY_Lamar|r 北边的栅栏。来回跳跃以找到她的安全点，不要受到任何伤害|r
    >>小心 |cRXP_ENEMY_Bellygrub|r 施放 |T132337:0|t[充电] 和 |T136025:0|t[Tremor]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto Redridge Mountains,21.86,46.33
    >>对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 34 >>交任务: |cRXP_FRIENDLY_不速之客|r
    .target Martie Jainrose
step
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08
    >>AoE |cRXP_ENEMY_大血牙s|r。掠夺它们可获得 |cRXP_LOOT_大血牙 Snouts|r
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .mob 大血牙
step
    #completewith next
    .goto Redridge Mountains,21.35,36.34,60,0
    >>AoE |cRXP_ENEMY_Redridge Mystics|r 和 |cRXP_ENEMY_Redridge Brutes|r 掠夺他们的 |cRXP_LOOT_Iron Pikes|r 和 |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,19.50,31.91,60,0
    .goto Redridge Mountains,20.58,28.29,40 >>前往瑞斯班洞穴
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    >>范围 |cRXP_ENEMY_Redridge Drudgers|r。掠夺他们的 |cRXP_LOOT_Rethban Ore|r、|cRXP_LOOT_Iron Pikes|r、和 |cRXP_LOOT_Iron Rivets|r
    >>范围 |cRXP_ENEMY_Redridge Bashers|r。掠夺他们的 |cRXP_LOOT_Iron Pikes|r 和 |cRXP_LOOT_Iron Rivets|r
    >>挖掘洞穴中的 |cRXP_PICK_铜矿脉|r。掠夺它们以获得 |cRXP_LOOT_Rethban 矿石|r
    .complete 347,1 --Rethban Ore (5)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Drudger
    .mob Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+14365 >>升级至 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+15715 >>升级至 15715+/25200xp
    .isQuestTurnedIn 92
step
    #completewith next
    .goto Redridge Mountains,18.79,13.84,-1
    .goto Redridge Mountains,22.04,17.14,-1
    .goto Redridge Mountains,18.40,24.13,-1
    .goto Redridge Mountains,21.29,24.06,-1
    .goto Redridge Mountains,16.58,20.97,-1
    .goto Redridge Mountains,33.82,48.07,30 >>退出 跳出洞穴（在东侧）回到湖畔郡
step
    >>Talk to |cRXP_FRIENDLY_Marris|r and |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>交任务: |cRXP_FRIENDLY_黑石氏族的威胁|r
    .accept 19 >>接任务: |cRXP_LOOT_萨瑞尔祖恩|r
    .goto Redridge Mountains,33.51,48.96
    .turnin 89,1 >>交任务: |cRXP_FRIENDLY_止水湖上的桥|r
    .goto Redridge Mountains,32.14,48.64
    .target 马里斯元帅
    .target 工头奥斯洛
step
    .goto Redridge Mountains,30.94,47.24
    >>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
    .accept 118 >>接任务: |cRXP_LOOT_马掌|r
    .target Verner Osgood
step
    .goto Redridge Mountains,27.72,47.38
    >>对话: |cRXP_FRIENDLY_码头管理员巴伦|r
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
    .accept 150 >>接任务: |cRXP_LOOT_鱼人偷猎者|r
    .turnin 150 >>交任务: |cRXP_FRIENDLY_鱼人偷猎者|r
    .goto Redridge Mountains,27.72,47.38
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto Redridge Mountains,27.08,45.54,0,0
    .vendor >>供应商垃圾。如果你愿意，你可以立即出售 |T134708:0|t[采矿镐]
    .target Kimberly Hiett
step
    .goto Redridge Mountains,26.92,44.95
    >>进入旅馆
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>交任务: |cRXP_FRIENDLY_水仙诉衷情|r
    .target Darcy
step
    #completewith next
    .goto Redridge Mountains,26.52,46.38,12,0
    .goto Redridge Mountains,22.86,44.57,12,0
    >>前往 |cRXP_FRIENDLY_Breanna|r
step
    .goto Redridge Mountains,22.68,43.83
    >>进去
    >>对话: |cRXP_FRIENDLY_厨师布雷纳|r
    .accept 92 >>接任务: |cRXP_LOOT_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
    .target Chef Breanna
step
    #completewith next
    .hs >>炉石到闪金镇
step
    .goto Elwynn Forest,41.71,65.55
    >>Talk to |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>交任务: |cRXP_FRIENDLY_马掌|r
    .accept 119 >>接任务: |cRXP_WARN_回复弗纳|r
    .target Smith Argus
step
    #completewith next
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>前往 |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,49.61,40.41
    >>Talk to |cRXP_FRIENDLY_Paxton|r
    .turnin 347 >>交任务: |cRXP_FRIENDLY_瑞斯班矿石|r
    .accept 346 >>接任务: |cRXP_WARN_克里斯托弗的书|r
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >>施放 |T135763:0|t[传送：暴风城]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===注意===|r
    +|cRXP_WARN_重新指定冰霜范围专精|r
    .xp <22,1
step
    .goto Stormwind City,38.23,81.86
    >>Talk to |cRXP_FRIENDLY_Dumas|r
    .train 10 >>列车暴风雪
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>退出法师塔
    .goto Stormwind City,32.16,79.84,10 >>前往 |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_不要低于 1g 43s 30c|r
    .xp >22,1
step
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    .vendor 1307 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    .vendor 1307 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    .vendor 1307 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水] |cRXP_BUY_和|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果它们涨价了）|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto Stormwind City,32.16,79.84
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_查瑞斯·伊瑟里安|r
    .vendor 1307 >>|cRXP_BUY_从他那里购买|r |T134851:0|t[次级法力药水]|cRXP_BUY_、|r |T134831:0|t[治疗药水]|cRXP_BUY_、以及|r |T132515:0|t[布质腰带] |cRXP_BUY_（如果它们已备好，且需要的话）|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>前往 |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto Stormwind City,41.57,65.46
    >>进入大楼
    >>对话: |cRXP_FRIENDLY_艾代尔·吉尔罗|r
    .vendor 1316 >>|cRXP_BUY_从他那里购买非智力|r |T134943:0|t[卷轴] |cRXP_BUY_（如果它们涨价了）|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>沿着墙边跑，而不是绕着墙跑
step
    .goto Stormwind City,45.70,38.42
    >>Talk to |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >>交任务: |cRXP_FRIENDLY_克里斯托弗的书|r
    .target Brother Kristoff
step
    .goto Stormwind City,55.25,7.07
    >>对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >>前往 Deeprun 缆车
step
    #completewith next
    +|cRXP_WARN_乘坐深泉电车并进行垃圾邮件发送|r |T132816:0|t[召唤水 r3]
step
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
    .goto Ironforge,67.83,42.47
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_如果价格上涨，请从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto Ironforge,33.44,63.56,30 >>进入铁炉堡银行
step
    .goto Ironforge,35.93,60.13
    >>对话: |cRXP_FRIENDLY_拜雷|r
    >>|cRXP_WARN_注意：您需要每种布料 12 叠（|r|T132911:0|t[羊毛布]|cRXP_WARN_、|r |T132905:0|t[丝绸布]|cRXP_WARN_、|r |T132892:0|t[魔纹布]|cRXP_WARN_、|r 和 |T132903:0|t[符文布]|cRXP_WARN_）以便稍后上交布料。随着等级的提高，您会自然获得这些布料|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >>将以下物品存入银行：
    >>|T132917:0|t[轻羽]
    >>|T132911:0|t[羊毛布]
    >>|T133970:0|t[瘦狼侧翼]
    >>|T133277:0|t[阿佐拉雕文]
    >>|T133849:0|t[暴风城调味草药]
    >>|T133629:0|t[为斯文提供的补给]
    >>|T132761:0|t[一箱马蹄铁]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto Ironforge,35.93,60.13
    .bankwithdraw 4654 >>从您的银行提取以下物品：
    >>|T134431:0|t[神秘化石]
    .target Bailey Stonemantle
step
    .goto Ironforge,25.50,7.04
    >>对话: |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
    .train 3562 >>火车 |T135757:0|t[传送：铁炉堡]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===注意===|r
    +|cRXP_WARN_重新指定冰霜范围专精|r
step
    .goto Ironforge,27.18,8.60
    >>对话: |cRXP_FRIENDLY_丁克|r
    .train 10 >>列车暴风雪
    .target Dink
step
    #completewith next
    +|cRXP_WARN_开始垃圾邮件投放|r |T132816:0|t[召唤水 r3] |cRXP_WARN_在飞行前召唤尽可能多的水|r
step
    #completewith next
    #label FlyMene
    .goto Ironforge,55.50,47.74
    >>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Menethil >>飞往米奈希尔港
    .target Gryth Thurden
step
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
]])
