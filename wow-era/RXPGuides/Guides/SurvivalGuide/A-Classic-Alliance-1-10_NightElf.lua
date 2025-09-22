local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 1-6 幽影谷
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +你已选择适合暗夜精灵的升级指南，请选择适合自己起始区域的升级指南。
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员伊尔萨莱恩|r
    .accept 456 >> 接受 自然的平衡
step
    #sticky
    #label balance1
    >>击杀|cRXP_ENEMY_夜刃豹幼崽|r和|cRXP_ENEMY_草刺野猪幼崽|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    .xp 2 >>刷到2级
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪兰妮亚·月光|r和|cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .accept 4495 >> 接受 好朋友
    .goto Teldrassil,60.899,41.961
    .accept 458 >> 接受 森林守护者
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Hunter
    #era
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> 刷怪到3级多790经验值 (790/1400)
step << Hunter
    #som
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >> 刷怪到4级多645经验值 (645/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >> 提交 好朋友
    .target Iverron
    .accept 3519 >> 接受 需要帮助的朋友
step << Hunter
    #completewith next
    .hs >> 炉石回幽影谷
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >> 提交 森林守护者
    .target Tarindrella
    .accept 459 >> 接受 森林守护者
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员伊尔萨莱恩|r
    .turnin 456,1 >> 提交 自然的平衡 << Hunter
    .turnin 456 >> 提交 自然的平衡 << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> 接受 自然的平衡
	.accept 3116 >> 接受 简易符记 << Warrior
	.accept 3117 >> 接受 风化符记 << Hunter
--	.accept 3118 >> 接受 密文符记 << Rogue
	.accept 3119 >> 接受 神圣符记 << Priest
	.accept 3120 >> 接受 绿色符记 << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奇娜|r
	.vendor >> |cRXP_WARN_清理背包|r
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莉希亚|r
	.turnin 3116 >> 提交 简易符记
    .trainer >> 学习职业技能
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>击杀|cRXP_ENEMY_癞皮夜刃豹|r和|cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >> 提交 好朋友
    .target Iverron
    .accept 3519 >> 接受 需要帮助的朋友
step << !Hunter
    #completewith next
    .hs >> 炉石回幽影谷
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >> 提交 森林守护者
    .target Tarindrella
    .accept 459 >> 接受 森林守护者
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员伊尔萨莱恩|r
    .turnin 457 >> 提交 自然的平衡
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3519 >> 提交 需要帮助的朋友
    .target Dirania Silvershine
    .accept 3521 >> 接受 埃沃隆的解药
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奇娜|r
	.vendor >> |cRXP_BUY_购买3组|r|T132382:0|t[劣质箭]
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔沙兰·风行者|r
    .accept 916 >> 接受 树林蜘蛛的毒囊
step << Hunter
    #era
    .xp 4-40 >> 刷到4级少40经验
step << Hunter
    #som
    .xp 4-50 >> 刷到4级少50经验
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >> 提交 风化符记
    .train 1978 >> 学习 毒蛇钉刺
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>拾取地上的|cRXP_LOOT_月牙百合花|r
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>击杀|cRXP_ENEMY_树林蜘蛛|r, 拾取|cRXP_LOOT_树林蜘蛛的脓液|r和|cRXP_LOOT_树林蜘蛛的毒囊|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>击杀|cRXP_ENEMY_小劣魔|r和|cRXP_ENEMY_劣魔|r. 拾取|cRXP_LOOT_紫蓝色蘑菇|r和|cRXP_LOOT_魔苔|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔琳德拉|r
    .turnin 459 >> 提交 树林保卫者
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3521 >> 提交 埃沃隆的解药
    .target Dirania Silvershine
    .accept 3522 >> 接受 埃沃隆的解药
step << !Priest
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奇娜|r
	.vendor >> |cRXP_WARN_清理背包|r << !Hunter
	.vendor >> |cRXP_BUY_购买3-4组|r|T132382:0|t[劣质箭] << Hunter
    .target Keina
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莉希亚|r
	.trainer >> 学习职业技能
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_简娜·明月|r对话
	.vendor >> |cRXP_WARN_清理背包|r
    .target Janna Brightmoon
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_珊达|r 对话
	.turnin 3119 >> 提交 神圣符记
	.trainer >> 学习职业技能
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 916 >> 提交 树林蜘蛛的毒囊
    .target Gilshalan Windwalker
    .accept 917 >> 接受 树林蜘蛛的蛋
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>爬上奥达希尔之树
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >> 提交 绿色符记
	.train 8921 >> 学习 月火术
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃沃隆|r
    .turnin 3522 >> 提交 埃沃隆的解药
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> 进入黑丝洞
step
    .goto Teldrassil,57.0,26.4
    >>在洞穴深处的地上拾取1个|cRXP_LOOT_树林蜘蛛的卵|r
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    .deathskip >> 自杀并在|cRXP_FRIENDLY_灵魂医者|r处复活
step
	#hardcore
	#completewith next
	+|cRXP_WARN_在|cRXP_LOOT_树林蜘蛛的卵|r后面移动角色至悬浮状态,然后小退并重新登入角色就能直接传送回奥达希尔|r
	>>|cRXP_WARN_如果你掉下去了,就正常跑出洞穴并提交任务|r
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> |cRXP_WARN_点击此链接观看视频指导|r
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 917 >> 提交 树林蜘蛛的蛋
    .target Gilshalan Windwalker
    .accept 920 >> 接受 特纳隆的召唤
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>爬上 奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 920 >> 提交 特纳隆的召唤
    .target Tenaron Stormgrip
    .accept 921 >> 接受 大地之冠
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> 在|cRXP_WARN_月亮井|r处|cRXP_WARN_使用|r|T134776:0|t[水晶瓶] 
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>击杀|cRXP_ENEMY_癞皮月刃豹|r和|cRXP_ENEMY_草刺野猪|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> 自杀并在|cRXP_FRIENDLY_灵魂医者|r处复活
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员伊尔萨莱恩|r
    .turnin 457,2 >> 提交 自然的平衡
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_珊达|r
    .accept 5622 >> 接受 月神的恩赐
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>爬上奥达希尔之树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 921 >> 提交 大地之冠
    .target Tenaron Stormgrip
    .accept 928 >> 接受 大地之冠
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >> 接受 多兰纳尔的货物
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 6-11 泰达希尔
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor NightElf
#next 11-13 黑海岸 (暗夜精灵)
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >> 接受 赛恩的要求
step
    #sticky
    #completewith zenn
    >>击杀|cRXP_ENEMY_夜刃豹|r. 拾取|cRXP_LOOT_夜刃豹的牙齿|r
    >>击杀|cRXP_ENEMY_巨翼枭|r. 拾取 |cRXP_LOOT_巨翼枭的羽毛|r
    >>击杀|cRXP_ENEMY_树林潜伏者|r. 拾取 |cRXP_LOOT_树林蜘蛛丝|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith spiderLegs
    >>击杀|cRXP_ENEMY_树林潜伏者|r和|cRXP_ENEMY_树林毒蜘蛛|r. 拾取 |cRXP_LOOT_小蜘蛛腿|r
    >>|cRXP_WARN_你会在之后的一个任务中用上这些东西|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 997 >> 接受 德纳兰的泥土
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >> 接受 烦恼之风
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5622 >> 提交 月神的恩赐
    .target Laurna Morninglight
    .accept 5621 >> 接受 月光之衣
	.trainer >> 学习职业技能
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_奥蒂亚|r对话
    .vendor >> |cRXP_BUY_购买并装备|r|T135426:0|t[小飞刀]
    .target Aldia
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上树与|cRXP_FRIENDLY_塔隆凯·捷根|r对话
    .accept 932 >> 接受 扭曲的仇恨
    .accept 2438 >> 接受 翡翠摄梦符
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树上对话|cRXP_FRIENDLY_塔隆凯·捷根|r
    .accept 932 >> 接受 扭曲的仇恨 << !Hunter
    .accept 2438 >> 接受 翡翠摄梦符
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备|r|T135499:0|t[角木弯弓] |cRXP_BUY_如果你买不起 (2s 85c), 就跳过这步|r
    >>|cRXP_BUY_购买|r|T132382:0|t[劣质箭] |cRXP_BUY_填满你的箭袋|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >> 学习职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹诺克·柔歌 |r
	.trainer >> 学习职业技能
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备|r|T135321:0|t[步兵剑] |cRXP_BUY_如果你买不起 (5s 36c), 就跳过这步|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备|r|T135641:0|t[卷刃的剑] |cRXP_BUY_如果你买不起 (4s 1c), 就跳过这步|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备|r|T135145:0|t[学徒短杖] |cRXP_BUY_如果你买不起 (5s 4c), 就跳过这步|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板凯达米尔 |r
    .turnin 2159,2 >> 提交 多兰纳尔的货物 << Hunter
    .turnin 2159 >> 提交 多兰纳尔的货物 << !Hunter
    .home >> 绑定炉石到多兰纳尔
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉|r
	.train 3044 >> 学习奥术射击
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔|r
	.trainer >> 学习职业技能
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 928>> 提交 大地之冠
    .target Corithras Moonrage
    .accept 929 >> 接受 大地之冠
step << Druid
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛洛尼·刃叶|r
    .train 2366 >> 学习 |T136065:0|t[采药]
    >>|cRXP_WARN_你需要学习|r|T136065:0|t[采药]|cRXP_WARN_来采集5个||T134187:0|t[地根草].|cRXP_WARN_它们会在之后的一个15级任务中用到. 你可以选择之后遗忘此技能|r
    .target Malorne Bladeleaf
step << Druid
    #completewith end
    >>|cRXP_WARN_提升|r|T136065:0|t[采药]|cRXP_WARN_到15点|r
    >>|cRXP_WARN_在地上拾取5个地根草, 它们会在之后的一个15级任务中用到.|r
    .collect 2449,5
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Target |cRXP_FRIENDLY_哨兵莎恩雅|r
    >>|cRXP_WARN_对|r|cRXP_FRIENDLY_哨兵莎恩雅|r|cRXP_WARN_施放|r|T135929:0|t[次级治疗术 (等级 2)] |cRXP_WARN_和|r|T135987:0|t[真言术：韧]
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德纳兰|r
    .turnin 997>> 提交 德纳兰的泥土
    .target Denalan
    .accept 918 >> 接受 林精的种子
    .accept 919 >> 接受 林精的新芽
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>击杀|cRXP_ENEMY_林精|r. 拾取|cRXP_LOOT_林精的种子|r
    >>在地上拾取 |cRXP_LOOT_林精的新芽|r
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德纳兰|r
    .turnin 918 >> 提交 林精的种子
    .target Denalan
    .accept 922 >> 接受 雷利亚·绿树
    .turnin 919 >> 提交 林精的新芽
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> 前往星风村
step
    .goto Teldrassil,68.02,59.66
    >>打开 |cRXP_PICK_塔隆凯的衣柜|r. 拾取 |cRXP_LOOT_翡翠摄梦符|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r对话
    .turnin 475 >> 提交 烦恼之风
    .target Gaerolas Talvethren
    .accept 476 >> 接受 瘤背熊怪的堕落
step
    #label zenn
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_在星风村月亮井|r|cRXP_WARN_使用|r|T134721:0|t[翡翠瓶] 
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    >>击杀|cRXP_ENEMY_夜刃豹|r. 拾取 |cRXP_LOOT_夜刃豹的牙齿|r
    >>击杀|cRXP_ENEMY_巨翼枭|r. 拾取 |cRXP_LOOT_巨翼枭的羽毛|r
    >>击杀|cRXP_ENEMY_树林潜伏者|r. 拾取 |cRXP_LOOT_森林蜘蛛丝|r
    >>|cRXP_WARN_保存|r|T132832:0|t[小蛋]|cRXP_WARN_和|r|T134321:0|t[小蜘蛛腿], |cRXP_WARN_之后会用来升级|T133971:0|t[烹饪]
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #era
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >> 刷到7级多3500经验
step
    #som
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >> 刷到7级多2900经验
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488>> 提交 赛恩的要求
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 489 >> 接受 寻求救赎！
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >> 提交 瘤背熊怪的堕落
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5621 >> 提交 月光之衣
	.trainer >> 学习职业技能
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_塔隆凯·捷根|r对话
    .turnin 2438 >> 提交 翡翠摄梦符
    .target Tallonkai Swiftroot
    .accept 2459 >> 接受 噬梦者菲罗斯塔
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备|r|T135499:0|t[角木弯弓] |cRXP_BUY_如果你买不起 (2s 85c), 就跳过这步|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >>|cRXP_BUY_购买800根|r|T132382:0|t[劣质箭]
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉 |r
	.trainer >> 学习职业技能
    .target Dazalar
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >> 学习职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >> 学习职业技能
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备|r|T135321:0|t[步兵剑] |cRXP_BUY_如果你买不起 (5s 36c), 就跳过这步|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备|r|T135641:0|t[卷刃的剑] |cRXP_BUY_如果你买不起 (4s 1c), 就跳过这步|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备|r|T135145:0|t[学徒短杖] |cRXP_BUY_如果你买不起 (5s 4c), 就跳过这步|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >> 提交 大地之冠
    .target Corithras Moonrage
    .accept 933 >> 接受 大地之冠
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔|r
	.trainer >> 学习职业技能
    .target Kal
step
	#completewith jewel
    >>在地上拾取|cRXP_LOOT_魔锥果|r
    >>|cRXP_WARN_它们通常位于树根处|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    #completewith next
    >>击杀|cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果这里没有太多|cRXP_ENEMY_瘤背秘法师|r, 你可能需要击杀|cRXP_ENEMY_瘤背战士|r来让它们刷新|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>击杀|cRXP_ENEMY_噬梦者菲罗斯塔|r. 拾取|T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r]
    .use 8049 >>|cRXP_WARN_使用|T133288:0|t[|cRXP_LOOT_瘤背熊怪的项链|r], 拾取|r|cRXP_LOOT_塔隆凯的珠宝|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>击杀|cRXP_ENEMY_瘤背秘法师|r
    >>|cRXP_WARN_如果这里没有太多|cRXP_ENEMY_瘤背秘法师|r, 你可能需要击杀|cRXP_ENEMY_瘤背战士|r来让它们刷新|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>在地上拾取|cRXP_LOOT_魔锥果|r
    >>|cRXP_WARN_它们通常位于树根处|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >> 提交 寻求救赎！
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0 
    .goto Teldrassil,54.42,51.19,15 >> 前往 地狱石
step << Hunter
    #era
    .goto Teldrassil,51.2,50.6
    >>击杀|cRXP_ENEMY_迈雷纳斯领主|r. 拾取|cRXP_LOOT_迈雷纳斯的头颅|r
    >>|cRXP_ENEMY_迈雷纳斯领主|r 在地狱石有许多刷新点
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>击杀|cRXP_ENEMY_迈雷纳斯领主|r. 拾取|cRXP_LOOT_迈雷纳斯的头颅|r
    >>|cRXP_ENEMY_迈雷纳斯领主|r在地狱石有许多刷新点
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> 自杀并在|cRXP_FRIENDLY_灵魂医者|r处复活
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >> 提交 大地之冠
step
	#era/som
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .accept 933 >> 接受 大地之冠
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> 前往泰达希尔的西南方
step
	#era/som
	.goto Teldrassil,42.61,76.18
	>>点击 |cRXP_PICK_奇怪的果树|r
	.accept 930 >> 接受 发光的水果
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> 前往阿里斯瑞恩之池
step
	#era/som
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_在阿里斯瑞恩之池使用|r|T134765:0|t[红玉瓶]
	.complete 933,1
step
	#era/som
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>击杀|cRXP_ENEMY_树林潜伏者|r和|cRXP_ENEMY_树林毒蜘蛛|r. 拾取 |cRXP_LOOT_小蜘蛛腿|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> 前往 多兰纳尔
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 933 >> 提交 大地之冠
    .target Corithras Moonrage
    .accept 7383 >> 接受 大地之冠
step
	#era/som
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞恩|r
    .train 2550 >>学习烹饪
    .accept 4161 >> 接受 卡多雷的菜谱
    .turnin 4161 >> 提交 卡多雷的菜谱
    .target Zarrin
step
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜恩希|r
    .train 3273 >> 学习 |T135966:0|t[急救]
    .target Byancie
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶与|cRXP_FRIENDLY_塔隆凯·捷根|r对话
    .turnin 932 >> 提交 扭曲的仇恨 << !Hunter
    .turnin 2459 >> 提交 噬梦者菲罗斯塔
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶与|cRXP_FRIENDLY_塔隆凯·捷根|r对话
    .turnin 932 >> 提交 扭曲的仇恨
    .turnin 2459 >> 提交 噬梦者菲罗斯塔
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r|cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .accept 487 >> 接受 达纳苏斯之路
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>击杀|cRXP_ENEMY_瘤背伏击者|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r|cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .turnin 487 >> 提交 达纳苏斯之路
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> 前往神谕林地
step
	#era/som
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >> 接受 神谕林地
step
	#era/som
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_在神谕林地月亮井使用|r|T134798:0|t[紫水晶瓶]
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#era/som
    #completewith xp10
	#label harpies
    >>击杀|cRXP_ENEMY_血羽鹰身人|r. 拾取 |cRXP_LOOT_血羽腰带|r
    >>|cRXP_ENEMY_血羽女王|r|cRXP_WARN_会施放|r|T136052:0|t[治疗波] |cRXP_WARN_和|r|T136048:0|t[闪电箭] |cRXP_WARN_会造成大量伤害. 优先击杀它们.|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#era/som
    .goto Teldrassil,34.61,28.79
    >>点击 |cRXP_PICK_奇怪的树木|r
    .accept 931 >> 接受 发光的树叶
step << Hunter
	#era/som
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这会开始一个护送任务|r
    .accept 938 >> 接受 密斯特
    .target Mist
step << Hunter
    #era
    #sticky
    #label xp10
    .xp 10-2670 >> 刷到10级差2670经验 (3830/6500)
    >>|cRXP_WARN_一旦你完成这点, 跳过鹰身人/护送任务直接去达纳苏斯. 你之后还有机会来完成这些任务.|r
step << Hunter
    #era/som
    #sticky
    #label xp10
    .xp 10-3330 >> 刷到10级差3330经验 (3170/6500)
    >>|cRXP_WARN_一旦你完成这点, 跳过鹰身人/护送任务直接去达纳苏斯. 你之后还有机会来完成这些任务.|r
step << Hunter
	#era/som
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >> 提交 密斯特
step << Hunter
	#era/som
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >> 提交 神谕林地
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> 接受 泰达希尔
step << !Hunter
	#era/som
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这会开始一个护送任务|r
    .accept 938 >> 接受 密斯特
    .target Mist
step << !Hunter
	#era/som
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >> 提交 神谕林地
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> 接受 泰达希尔
    .turnin 938 >> 提交 密斯特
step << !Hunter
    #era
    #label xp10
    .xp 10-750 >> 刷到10级差750经验 << Druid
    .xp 10-3110 >> 刷到10级差3110经验 << !Druid
step << !Hunter
	#som
    #phase 1-2
	#label xp10
   .xp 10-930 >> 刷到10级差930经验<< Druid
   .xp 10-3880 >> 刷到10级差3880经验<< !Druid
step
	#som
    #phase 3-6
	.goto Teldrassil,38.6,58.0
	>>完成收集7个小蜘蛛腿
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#som
	#phase 3-6
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>如果你经验不够就去完成鹰身人任务
step << !Druid
	#som
	#phase 3-6
	#label xp10
	.xp 10-3300
step << !Rogue
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> 前往达纳苏斯
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >> 提交 雷利亚·绿树
    .target Rellian Greenspyre
    .accept 923 >> 接受 青苔之瘤
step << !Hunter !Rogue
	#era/som
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r对话
    .turnin 940 >> 提交 泰达希尔
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在中层与|cRXP_FRIENDLY_玛斯雷·驭熊者|r对话
    .accept 5921 >> 接受 月光林地
	.trainer >> 学习职业技能
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >> 接受 月神的泪水
step << Druid
	#completewith next
	.cast 18960 >> 施放 传送: 月光林地
    >>|cRXP_WARN_可以在技能书中找到|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_德迪利特·星焰|r对话
    .turnin 5921 >> 提交 月光林地
    .target Dendrite Starblaze
    .accept 5929 >> 接受 巨熊之灵
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话the |cRXP_FRIENDLY_巨熊之灵|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> 施放 传送: 月光林地
    >>|cRXP_WARN_这样回去快些|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_德迪利特·星焰|r对话
    .turnin 5929 >> 提交 巨熊之灵
    .target Dendrite Starblaze
    .accept 5931 >> 接受 返回达纳苏斯
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >> 炉石回多兰纳尔
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >> |cRXP_BUY_购买4组|r|T132382:0|t[锋利的箭]|cRXP_BUY_. 到10级就装备它们|r
    .target Jeena Featherbow
step
	#som
	#phase 3-6
    .goto Teldrassil,57.121,61.296
    .train 2550 >>学习烹饪
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞恩|r
    .accept 4161 >> 接受 卡多雷的菜谱
    .turnin 4161 >> 提交 卡多雷的菜谱
step
	#som
	#phase 3-6
    .goto Teldrassil,51.9,56.4
    >>找到哨兵阿玛拉·夜行者, 她在多兰纳尔以西的路上巡逻
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >> 提交 达纳苏斯之路
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉 |r
    .accept 6063 >> 接受 驯服野兽
	.train 13165 >> 学习10级技能
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_对|r|cRXP_ENEMY_树林潜伏者|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒] 
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉 |r
    .turnin 6063 >> 提交 驯服野兽
    .target Dazalar
    .accept 6101 >> 接受 驯服野兽
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >> 提交 大地之冠
    .target Corithras Moonrage
    .accept 935 >> 接受 大地之冠
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >> 提交 发光的树叶
    .turnin 930 >> 提交 发光的水果
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德纳兰|r
	.turnin 927 >> 提交 布满苔藓的心脏
    .isOnQuest 927
step
	#era/som
	.goto Teldrassil,60.78,68.59
	>>点击 |cRXP_LOOT_德纳兰的培养皿|r
	.turnin 941 >> 提交 培养心脏
	.isQuestTurnedIn 927
step << Hunter
	#era/som
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_对|r|cRXP_ENEMY_夜刃捕食者|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒] 
    >>|cRXP_WARN_在你抓捕另一只宠物前,你应该先右键点击宠物头像并解散你的宠物.|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
    #label L10
    .xp 10 >>刷到10级
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >> 学习职业技能
    .target Laurna Morninglight
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >> 学习职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >> 学习职业技能
    .target Jannok Breezesong
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉 |r
    .accept 6063 >> 接受 驯服野兽
	.trainer >> 学习职业技能
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_对|r|cRXP_ENEMY_树林潜伏者|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒] 
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉|r
    .turnin 6063 >> 提交 驯服野兽
    .target Dazalar
    .accept 6101 >> 接受 驯服野兽
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_对|r|cRXP_ENEMY_夜刃捕食者|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒] 
    >>|cRXP_WARN_在你抓捕另一只宠物前,你应该先右键点击宠物头像并解散你的宠物.|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉 |r
    .turnin 6101 >> 提交 驯服野兽
    .target Dazalar
    .accept 6102 >> 接受 驯服野兽
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_对|r|cRXP_ENEMY_巨翼恶枭|r|cRXP_WARN_使用|r|T132164:0|t[驯兽棒]
    >>|cRXP_WARN_在你抓捕另一只宠物前,你应该先右键点击宠物头像并解散你的宠物.|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达札拉 |r
    .turnin 6102 >> 提交 驯服野兽
    .target Dazalar
    .accept 6103 >> 接受 训练野兽
step << Warrior
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r|cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .accept 1684 >> 接受 艾兰娜瑞
    .target Moon Priestess Amara
step << Rogue
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >> 接受 詹诺克的花
step << Hunter
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买|r|T135145:0|t[学徒短杖]
    >>|cRXP_WARN_你稍后将装备这个物品. 如果你恰好找到一个其他的法杖,就跳过这步.|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r|cRXP_WARN_在多兰纳尔西边的路上巡逻|r
    .turnin 487 >> 提交 达纳苏斯之路
    .target Moon Priestess Amara
step << Rogue
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> 前往达纳苏斯
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >> 提交 雷利亚·绿树
    .target Rellian Greenspyre
    .accept 923 >> 接受 青苔之瘤
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树顶与|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r对话
    .turnin 935 >> 提交 大地之冠
    .turnin 940 >> 提交 泰达希尔
    .target Arch Druid Fandral Staghelm
    .accept 952 >> 接受 古树之林
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
    .turnin 2241 >> 提交 詹诺克的花
    .target Syurna
    .accept 2242 >> 接受 命运的召唤
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >> 接受 月神的泪水 
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >> |cRXP_WARN_对|cRXP_ENEMY_巨翼猎枭|r|cRXP_WARN_施放|r|T132164:0|t[驯服野兽] -- .tame 1997
    .train 2981 >> |cRXP_WARN_用它攻击怪物以学习|r|T132140:0|t[爪击 (等级 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查询更多宠物训练的信息|r
	.unitscan Strigid Hunter
step
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>击杀|cRXP_ENEMY_树精践踏者|r, |cRXP_ENEMY_树精泥泞兽|r和|cRXP_ENEMY_树精长老|r. 拾取 |cRXP_LOOT_青苔之瘤|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>击杀|cRXP_ENEMY_萨丝拉女士|r. 拾取 |cRXP_LOOT_银色丝囊|r
    >>|cRXP_ENEMY_萨丝拉女士|r|cRXP_WARN_有3个不同的刷新点|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >> 对|cRXP_ENEMY_远古的塞希尔|r|cRXP_WARN_施放|r|T133644:0|t[搜索]
    >>|cRXP_WARN_你必须在|r|T132320:0|t[潜行]|cRXP_WARN_状态下才能使用|r|T133644:0|t[搜索]
    >>|cRXP_ENEMY_远古的塞希尔|r|cRXP_WARN_walks along the big tree branch|r
    >>|cRXP_WARN_避免与|cRXP_ENEMY_远古的塞希尔|r战斗. 让他走过你, 然后|cRXP_WARN_当你在他身后时|r|r|T132320:0|t[潜行] |cRXP_WARN_并|r|T133644:0|t[搜索] 
    .complete 2242,1
    .mob Sethir the Ancient
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >> 接受 神谕林地
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819
    >>击杀|cRXP_ENEMY_血羽鹰身人|r. 拾取 |cRXP_LOOT_血羽腰带|r
    >>|cRXP_ENEMY_血羽女王|r|cRXP_WARN_会施放|r|T136052:0|t[治疗波] |cRXP_WARN_and|r|T136048:0|t[闪电箭] |cRXP_WARN_会造成大量伤害. 优先击杀它们.|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,31.54,31.62
    .target Mist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这会开始一个护送任务|r
    .accept 938 >> 接受 密斯特
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >> 提交 密斯特
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >> 提交 神谕林地
    .target Sentinel Arynioudsbreak
    .accept 940 >> 接受 泰达希尔
step
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> 前往达纳苏斯
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >> 接受 奈莎·影歌
step
	.abandon 927 >> 放弃 布满苔藓的心脏
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >> 提交 艾兰娜瑞
    .target Elanaria
    .accept 1683 >> 接受 沃鲁斯·邪蹄
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> 找到 |cRXP_ENEMY_沃鲁斯·邪蹄|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>击杀|cRXP_ENEMY_沃鲁斯·邪蹄|r. 拾取 |cRXP_LOOT_沃鲁斯的角|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> 前往达纳苏斯
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1683 >> 提交 沃鲁斯·邪蹄
--	.accept 1686 >> 接受 艾鲁拉的阴影
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在中间层与|cRXP_FRIENDLY_玛斯雷·驭熊者|r对话
    .turnin 5931 >> 提交 返回达纳苏斯
    .target Mathrengyl Bearwalker
    .accept 6001 >> 接受 身心之力
step
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 935 >> 提交 大地之冠
    .turnin 940 >> 提交 泰达希尔 << Hunter
    .target Arch Druid Fandral Staghelm
    .accept 952 >> 接受 古树之林
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> 提交 训练野兽
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
    .turnin 2242 >> 提交 命运的召唤
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >> 提交 青苔之瘤
step << Rogue
    #completewith next
    .goto Darnassus,62.68,65.58,30 >> Travel toward |cRXP_FRIENDLY_图里安|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在二楼与|cRXP_FRIENDLY_雷利亚·绿树|r对话
    >>|cRXP_BUY_购买|r|T135641:0|t[破损的平衡飞刀]|cRXP_BUY_. 11级时装备它|r
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >> 提交 月神的泪水
    .target Priestess A'moora
    .accept 2520 >> 接受 萨丝拉的祭品
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_在喷泉处|r|cRXP_WARN_使用|r|T135652:0|t[萨丝拉的祭品] 
    .complete 2520,1 --在喷泉处提供祭品
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >> 提交 萨丝拉的祭品
step << Druid
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲罗迪恩·唤月|r
    .train 2366 >> 学习 |T136065:0|t[采药]
    >>|cRXP_WARN_你需要学习|r|T136065:0|t[采药]|cRXP_WARN_来采集5个||T134187:0|t[地根草].|cRXP_WARN_它们会在之后的一个15级任务中用到. 你可以选择之后遗忘此技能|r
    .target Firodren Mooncaller
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 227 >>学习法杖
    >>如果你包里有法杖就装备上 << Hunter
    .target Ilyenia Moonfire
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_购买并装备|r|T135489:0|t[多层弯弓]
    >>|cRXP_BUY_购买|r|T132382:0|t[锋利的箭]
	.collect 2507,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.3022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买|r|T135154:0|t[短杖]|cRXP_BUY_. 并在11级装备上|r
	.collect 854,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.2023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_如果你买不起|r|T135154:0|t[短杖]|cRXP_BUY_就购买并装备|r|T135346:0|t[斗士短剑] 
	.collect 851,1
    .target Ariyell Skyshadow
step
    #completewith next
    .goto Darnassus,30.00,41.43,10 >> 通过紫色传送门到达鲁瑟兰村
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奈莎·影歌|r
    .turnin 6344 >> 提交 奈莎·影歌
    .target Nessa Shadowsong
    .accept 6341 >> 接受 泰达希尔的渔业
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >> 提交 泰达希尔的渔业
    .target Vesprystus
    .accept 6342 >> 接受 飞往奥伯丁
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >> 飞到黑海岸
    .target Vesprystus
]])
