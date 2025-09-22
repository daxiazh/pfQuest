local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 15-19 贫瘠之地
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#next 19-23 石爪山脉/贫瘠之地/灰谷


step << !Tauren !Hunter !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .turnin 837 ,, 野猪人的进犯
    .goto Durotar,51.95,43.50
    .target Gar'Thok
    .isQuestComplete 837 >> 跳过此步: 缺少必要条件
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
	.train 6074 >> 学习职业技能
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
	.train 8102 >> 学习职业技能
    .target Tai'jin
    .xp <16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 1160 >> 学习职业技能
    .target Tarshaw Jaggedscar
    .xp <14,1
    .xp >16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 285 >> 学习职业技能
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 1758 >> 学习职业技能
    .target Kaplak
    .xp <14,1
    .xp >16,1
 step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 6761 >> 学习职业技能
    .target Kaplak
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 6222 >> 学习职业技能
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基萨|r并购买|T133738:0|t[魔典：牺牲（等级 1）]
    .collect 16316,1,842,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kitha
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1455 >> 学习职业技能
    .target Dhugru Gorelust
    .xp <16,1
step << !Tauren !Hunter !Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 ,, 部落的新兵
    .target Takrin Pathseeker
    .isQuestAvailable 840
step
    .abandon 480 ,, 法师的头领 以避免任务日志满了. 晚一点再接
    .isOnQuest 480
step
    #completewith next
    .zone The Barrens >> 前往贫瘠之地
    .zoneskip The Barrens
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡加尔·战痕|r
    .turnin 840 ,, 部落的新兵
    .accept 842 ,, 十字路口征兵
    .target Kargal Battlescar
    .isOnQuest 840
step << !Tauren !Hunter !Shaman
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 ,, 雅克塞罗斯
    .accept 924 ,, 恶魔之种
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_拾取|r|cRXP_FRIENDLY_雅克塞罗斯|r|cRXP_WARN_边上的|r|T134095:0|t[有瑕疵的能量石]  |cRXP_WARN_. 这件物品有30分钟时效, 所以尽快完成该任务|r
    .turnin 926 ,, 有瑕疵的能量石
    .isOnQuest 924
    .group
step << !Tauren !Hunter !Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> 前往十字路口
step << !Undead !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔夫|r, |cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_图加·符文图腾|r, |cRXP_FRIENDLY_曼寇里克|r和|cRXP_FRIENDLY_索克|r
    .accept 6365 ,, 送往奥格瑞玛的肉
    .goto The Barrens,52.62,29.84
    .accept 869 ,, 偷钱的迅猛龙
    .goto The Barrens,51.93,30.32
    .turnin 842 ,, 十字路口征兵
    .accept 844 ,, 平原陆行鸟的威胁
    .goto The Barrens,52.23,31.00
    .accept 870 ,, 遗忘之池
    .goto The Barrens,52.26,31.94
    .accept 899 ,, 复仇的怒火
    .accept 4921 ,, 在战斗中失踪
    .goto The Barrens,52.00,31.60
    .accept 871 ,, 野猪人的袭击
    .accept 5041 ,, 十字路口的补给品
    .goto The Barrens,51.50,30.87
    .target Zargh
    .target Gazrog
    .target Sergra Darkthorn
    .target Tonga Runetotem
    .target Mankrik
    .target Thork
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r, |cRXP_FRIENDLY_图加·符文图腾|r, |cRXP_FRIENDLY_曼寇里克|r和|cRXP_FRIENDLY_索克|r
    .accept 869 ,, 偷钱的迅猛龙
    .goto The Barrens,51.93,30.32
    .turnin 842 ,, 十字路口征兵
    .accept 844 ,, 平原陆行鸟的威胁
    .goto The Barrens,52.23,31.00
    .accept 870 ,, 遗忘之池
    .goto The Barrens,52.26,31.94
    .accept 899 ,, 复仇的怒火
    .accept 4921 ,, 在战斗中失踪
    .goto The Barrens,52.00,31.60
    .accept 871 ,, 野猪人的袭击
    .accept 5041 ,, 十字路口的补给品
    .goto The Barrens,51.50,30.87
    .target Gazrog
    .target Sergra Darkthorn
    .target Tonga Runetotem
    .target Mankrik
    .target Thork
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 ,, 鹰身强盗
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 ,, 送往奥格瑞玛的肉 << !Tauren !Undead
    .accept 6384 ,, 飞往奥格瑞玛 << !Tauren !Undead
    .fp Crossroads >> 开启十字路口飞行点
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 6365
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 ,, 菌类孢子
    .accept 1492 ,, 码头管理员迪兹维格
	.turnin 1358 ,, 给赫布瑞姆的样本
    .target Apothecary Helbrim
step
    #completewith DemonSeed
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .group
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> 前往山顶
    .isOnQuest 924
step
    .group
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>右键点击|cRXP_PICK_祭坛|r. 确保身上有|T134095:0|t[有瑕疵的能量石]
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --摧毁Demon Seed (1)
    .isOnQuest 924
step
    .group
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >> 原路返回下山
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的喙|r
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
    .use 4926 >> 拾取|cRXP_PICK_老陈的空酒桶|r并接受任务. 如果这里没刷就稍后再来
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 ,, 老陈的空酒桶
step << !Tauren !Hunter !Shaman
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
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的喙|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_索克|r
    .turnin 844 ,, 平原陆行鸟的威胁
    .accept 845 ,, 斑马的威胁
    .goto The Barrens,52.23,31.00
    .turnin 871 ,, 野猪人的袭击
    .accept 872 ,, 野猪人的头目
    .goto The Barrens,51.50,30.87
    .target Sergra Darkthorn
    .target Thork
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图加·符文图腾|r和|cRXP_FRIENDLY_曼寇里克|r
    .accept 870 ,, 遗忘之池
    .goto The Barrens,52.26,31.94
    .accept 899 ,, 复仇的怒火
    .accept 4921 ,, 在战斗中失踪
    .goto The Barrens,52.00,31.60
    .target Tonga Runetotem
    .target Mankrik
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索克·快刀|r
    >>|cRXP_WARN_他在塔顶|r
    .accept 867 ,, 鹰身强盗
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 ,, 菌类孢子
    .accept 1492 ,, 码头管理员迪兹维格
	.turnin 1358 ,, 给赫布瑞姆的样本
    .target Apothecary Helbrim
step << !Tauren !Undead
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔夫|r
    .turnin 6386 ,, 返回十字路口
    .target Zargh
    .isOnQuest 6386
step
    #sticky
    #completewith EnterRFC
    .subzone 213 >> 现在你应该寻找怒焰裂谷的队伍了
    .dungeon RFC
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >> 绑定炉石到十字路口
    .target Innkeeper Boorand Plainswind
    .dungeon RFC
step << !Tauren
    #completewith next
    .zone Stonetalon Mountains >> 前往石爪山脉
    .zoneskip Stonetalon Mountains
    .dungeon RFC
step << !Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> 跟随指示爬上左边的山坡
    .dungeon RFC
step << !Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳上其中一个笼子. 登出再登入, 你就传送到雷霆崖墓地了.|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_点击此处查看演示|r
    .dungeon RFC
step << !Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >> 乘坐电梯上雷霆崖
    .dungeon RFC
step << Tauren
    #completewith RFCPickups
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >>飞往雷霆崖
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> 前往长者高地
    .dungeon RFC
step
    #label RFCPickups
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉哈罗|r
    .accept 5722 ,, 寻找背包
    .accept 5723 ,, 试探敌人
    .target Rahauro
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >> 开启雷霆崖飞行点 << !Tauren
    .fly Orgrimmar >>飞往奥格瑞玛
    .target Tal
    .dungeon RFC
step
    .goto Orgrimmar,31.9,37.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔|r
    .accept 5726 ,, 隐藏的敌人
    .target Thrall
    .dungeon RFC
step
    .goto Durotar,53.08,9.19,0
    >>在骷髅石击杀|cRXP_ENEMY_火刃氏族|r小怪直到|cRXP_LOOT_军官的徽章|r掉落
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step
    .goto Orgrimmar,31.9,37.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔|r
    .turnin 5726 ,, 隐藏的敌人
    .accept 5727 ,, 隐藏的敌人
    .target Thrall
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .accept 5761 ,, 饥饿者塔拉加曼
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,31.9,37.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔|r
    .turnin 5727 ,, 隐藏的敌人
    .accept 5728 ,, 隐藏的敌人
    .target Thrall
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .zone 213 >> 进入怒焰裂谷
    .dungeon RFC
step
    #completewith next
    >>击杀|cFFFF5722怒焰穴居人|r和|cFFFF5722怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔·恐怖图腾|r
    .turnin 5722 ,, 寻找背包
    .accept 5724 ,, 归还背包
    .target Maur Grimtotem
    .dungeon RFC
step
    #label TroggsShamans
    >>击杀|cFFFF5722怒焰穴居人|r和|cFFFF5722怒焰萨满|r
    .complete 5723,1 --Ragefire Trogg (8)
    .complete 5723,2 --Ragefire Shaman (8)
    .mob Ragefire Trogg
    .mob Ragefire Shaman
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>击杀|cFFFF5722燃刃信徒|r和|cFFFF5722燃刃术士|r.拾取|cFF00BCD4暗影法术研究|r和|cFF00BCD4扭曲虚空的魔法|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .dungeon RFC
step
    >>击杀|cFFFF5722‘饥饿者’塔拉加曼|r. 拾取|cFF00BCD4塔拉加曼的心脏|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>击杀|cFFFF5722巴札兰|r和|cFFFF5722‘塑能师’耶戈什|r
    .complete 5728,1 --Bazzalan (1)
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob Bazzalan
    .mob Jergosh the Invoker
    .dungeon RFC
step
    >>击杀|cFFFF5722燃刃信徒|r和|cFFFF5722燃刃术士|r.拾取|cFF00BCD4暗影法术研究|r和|cFF00BCD4扭曲虚空的魔法|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5761 ,, 饥饿者塔拉加曼
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,31.9,37.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔|r
    .turnin 5728 ,, 隐藏的敌人
    .accept 5729 ,, 隐藏的敌人
    .target Thrall
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 5729 ,, 隐藏的敌人
    .accept 5730 ,, 隐藏的敌人
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,31.9,37.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔|r
    .turnin 5730 ,, 隐藏的敌人
    .target Thrall
    .dungeon RFC
step
    #completewith next
    .zone Durotar >> 离开奥格瑞玛
    .zoneskip Durotar
    .dungeon RFC
step
    .goto Durotar,50.8,13.8,40 >>爬上飞艇塔
    .zone Tirisfal Glades >>乘坐飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades
    .dungeon RFC
step
    #completewith Varimathras
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> 进入幽暗城
    .zoneskip Undercity
    .dungeon RFC
step
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 乘坐电梯进入幽暗城
    .goto Undercity,56.2,96.2
    .dungeon RFC
step
    #label Varimathras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 5725 ,, 毁灭的力量
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith next
    .hs >> 炉石回十字路口
    .use 6948
    .dungeon RFC
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Thunder Bluff >> 飞往雷霆崖
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon RFC
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉哈罗|r
    .turnin 5724 ,, 寻找背包
    .turnin 5723 ,, 试探敌人
    .target Rahauro
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .hs >> 炉石回十字路口
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
step
    #completewith KreenigSnarlsnout
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fly Crossroads >>飞往十字路口
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    .abandon 5723 ,, 试探敌人
    .isOnQuest 5723
    .dungeon RFC
step
    .abandon 5725 ,, 毁灭的力量
    .isOnQuest 5725
    .dungeon RFC
step
    .abandon 5728 ,, 隐藏的敌人
    .isOnQuest 5728
    .dungeon RFC
step
    .abandon 5761 ,, 饥饿者塔拉加曼
    .isOnQuest 5761
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> 拾取|cRXP_PICK_老陈的空酒桶|r并接受任务
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 ,, 老陈的空酒桶
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>击杀|cRXP_ENEMY_钢鬃地卜师|r和|cRXP_ENEMY_钢鬃防卫者|r
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
    .mob Razormane Geomancer
    .mob Razormane Defender
step
    #completewith next
    >> 拾取|cRXP_PICK_十字路口的补给箱|r. 多个地点可刷新
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    >>击杀|cRXP_ENEMY_克里尼格·糟鼻|r. 拾取|cRXP_LOOT_克里尼格·糟鼻的獠牙|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #completewith next
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>击杀|cRXP_ENEMY_钢鬃地卜师|r和|cRXP_ENEMY_钢鬃防卫者|r
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
    .mob Razormane Geomancer
    .mob Razormane Defender
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >> 拾取|cRXP_PICK_十字路口的补给箱|r. 多个地点可刷新
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .loop 25,The Barrens,59.37,25.38,59.63,24.46,59.63,23.88,59.06,23.89,58.62,23.98,57.83,24.28,56.87,24.55,56.74,25.37,57.25,25.46,57.52,25.63,57.65,25.08,58.24,24.98,58.90,25.37
    >>击杀|cRXP_ENEMY_钢鬃地卜师|r和|cRXP_ENEMY_钢鬃防卫者|r
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
    .mob Razormane Geomancer
    .mob Razormane Defender
step
    #completewith next
    >>击杀遇见的所有|cRXP_ENEMY_斑马|r. 拾取|cRXP_LOOT_斑马蹄|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .group
    .goto The Barrens,62.26,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 924 ,, 恶魔之种
    .target Ak'Zeloth
    .isQuestComplete 924
step
    #completewith next
    >>击杀遇见的所有|cRXP_ENEMY_斑马|r. 拾取|cRXP_LOOT_斑马蹄|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,63.08,36.56,120 >> 向南前往棘齿城
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹鲁维|r
    .accept 887 ,, 南海海盗
    .target Gazlowe
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fp Ratchet >> 开启棘齿城飞行点
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r和|cRXP_FRIENDLY_通缉告示|r
    .accept 894 ,, 什么什么平衡器
    .goto The Barrens,62.98,37.22
    .accept 895 ,, 通缉：巴隆·朗绍尔
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T135147:0|t[法师之杖]
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith BarenLongshore
    +装备|T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_.购买|r|T132394:0|t[芒刺斧]
    .collect 2025,1,895,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith BarenLongshore
    +装备|T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T133046:0|t[巨型石锤]
    .collect 2026,1,895,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith BarenLongshore
    +当你16级时装备|T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T135147:0|t[法师之杖]
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith BarenLongshore
    +装备|T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T135343:0|t[战士阔剑]
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买第二把|r|T135343:0|t[战士阔剑]|cRXP_BUY_作为你的副手武器|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_酿酒师德罗恩|r
    .turnin 819 ,, 老陈的空酒桶
    .accept 821 ,, 老陈的空酒桶
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_购买|r|T133918:0|t[长嘴泥鳅]
    >>|cRXP_BUY_购买|r|T132796:0|t[果汁] << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_这些吃喝非常划算, 想买多少就买多少|r
    .vendor >> 清理背包
    .collect 4592,40,895,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .home >> 绑定炉石到棘齿城
    .target Innkeeper Wiley
step
    #completewith BarenLongshore
    +摧毁|T133735:0|t[控制台操作手册], 你不需要它了
step
    #completewith BarenLongshore
    >>击杀|cRXP_ENEMY_南海盗匪|r和|cRXP_ENEMY_南海炮手|r
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
    .mob Southsea Brigand
    .mob Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
	>>击杀|cRXP_ENEMY_塔赞|r. 拾取|cRXP_LOOT_塔赞的背包|r. 他沿着山路上下巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BarenLongshore
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    .goto The Barrens,64.21,47.14
    >>击杀|cRXP_ENEMY_巴隆·朗绍尔|r. 拾取|cRXP_LOOT_巴隆·朗绍尔的头颅|r. 他会随机刷在几个营地其中一个
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step << Orc Rogue/Troll Rogue
	#completewith next
	>>击杀|cRXP_ENEMY_塔赞|r. 拾取|cRXP_LOOT_塔赞的背包|r. 他沿着山路上下巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>击杀|cRXP_ENEMY_南海盗匪|r和|cRXP_ENEMY_南海炮手|r
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
    .mob Southsea Brigand
    .mob Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
    >>击杀|cRXP_ENEMY_塔赞|r. 拾取|cRXP_LOOT_塔赞的背包|r. 他沿着山路上下巡逻
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹鲁维|r
    .turnin 887 ,, 南海海盗
    .turnin 895 ,, 通缉：巴隆·朗绍尔
    .accept 890 ,, 丢失的货物
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 1492 ,, 码头管理员迪兹维格
    .turnin 890 ,, 丢失的货物
    .accept 892 ,, 丢失的货物
    .accept 896 ,, 矿工的宝贝
    .target 码头管理员迪兹维格
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹鲁维|r
    .turnin 892 ,, 丢失的货物
    .accept 888 ,, 被窃的货物
    .target Gazlowe
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T135147:0|t[法师之杖]
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith FlyToXroads1
    +装备|T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T132394:0|t[芒刺斧]
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith FlyToXroads1
    +装备|T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T133046:0|t[巨型石锤]
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith FlyToXroads1
    +当你16级时装备|T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T135147:0|t[法师之杖]
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith FlyToXroads1
    +装备|T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买|r|T135343:0|t[战士阔剑]
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾隆萨尔r|r|cRXP_BUY_. 购买第二把|r|T135343:0|t[战士阔剑]|cRXP_BUY_作为你的副手武器.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,63.89,35.93,50,0
    .goto The Barrens,64.28,35.60,50,0
    .goto The Barrens,64.54,34.93,50,0
    .goto The Barrens,64.42,33.12,50,0
    .goto The Barrens,63.90,32.03,50,0
    .goto The Barrens,63.78,31.03,50,0
    .goto The Barrens,62.89,29.77,50,0
    .goto The Barrens,64.28,35.60
   >>完成击杀|cRXP_ENEMY_斑马|r. 拾取|cRXP_LOOT_斑马蹄|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label FlyToXroads1
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fly Crossroads >> 飞往十字路口
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索克|r和|cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 5041 ,, 十字路口的补给品
    .turnin 872 ,, 野猪人的头目
    .goto The Barrens,51.50,30.87
    .turnin 845 ,, 斑马的威胁
    .accept 903 ,, 草原上的徘徊者
    .goto The Barrens,52.23,31.00
    .target Sergra Darkthorn
    .target Thork
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_巴尔格|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step
    #completewith RegtharDeathgate1
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>击杀你遇见的所有|cRXP_ENEMY_迅猛龙|r. 拾取|cRXP_LOOT_迅猛龙的头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 ,, 科卡尔首领
    .accept 855 ,, 半人马护腕
    .target Regthar Deathgate
step
    #completewith Leaders
    >>击杀|cRXP_ENEMY_科卡尔牧民|r和|cRXP_ENEMY_科卡尔召雷师|r. 拾取|cRXP_LOOT_半人马护腕|r
    >>|cRXP_WARN_你不需要现在就完成这个任务|r
    .complete 855,1 --半人马护腕 (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith next
    >>在遗忘之池附近收集|cRXP_PICK_菌类孢子|r
    >>|cRXP_WARN_你不需要现在就完成这个任务|r
    .complete 848,1 --Collect 菌类孢子 (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下寻找|cRXP_PICK_冒泡的裂缝|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto The Barrens,42.82,23.52
    >>击杀|cRXP_ENEMY_巴拉克·科多班恩|r. 拾取|cRXP_LOOT_巴拉克的头颅|r
    >>|cRXP_WARN_小心! 小心! 他的近战攻击特别高, 并且与一只|cRXP_ENEMY_科卡尔牧民|r|cRXP_WARN_联动. 他们能网住你并在远处攻击你|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 ,, 科卡尔首领
    .accept 851 ,, 狂热的维罗戈
    .turnin 855 ,, 半人马护腕
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 ,, 科卡尔首领
    .accept 851 ,, 狂热的维罗戈
    .target Regthar Deathgate
step
    #completewith next
    >>击杀你遇见的所有|cRXP_ENEMY_迅猛龙|r. 拾取|cRXP_LOOT_迅猛龙的头颅|r
    >>|cRXP_WARN_你不需要现在就完成这个任务|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    .goto The Barrens,41.62,23.42
    >>击杀|cRXP_ENEMY_草原徘徊者|r. 拾取|cRXP_LOOT_徘徊者的爪子|r和|cRXP_LOOT_草原狮的獠牙|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81
    >>击杀|cRXP_ENEMY_巫翼鹰身人|r和|cRXP_ENEMY_巫翼游荡者|r. 拾取|cRXP_LOOT_巫翼鹰身人的爪子|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith 什么什么平衡器
    +|cRXP_WARN_注意此区域的|r|cRXP_ENEMY_赤鳞镰爪龙|r|cRXP_WARN_. 它们最高18级且会|r |T132152:0|t[痛击]
step
    #sticky
    #completewith 什么什么平衡器
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗朗恩·凝血|r
	.vendor	>> 清理背包并修理装备
    .target Vrang Wildgore
step
	#label 什么什么平衡器
    .goto The Barrens,52.40,11.65
    >> 点击|cRXP_PICK_控制台|r
    .turnin 894 ,, 什么什么平衡器
    .accept 900 ,, 什么什么平衡器
step
    .goto The Barrens,52.33,11.57
    >> 点击|cRXP_PICK_阀门|r
    >>|cRXP_WARN_小心! 当你关闭阀门时两只小怪会刷新出来|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >> 点击|cRXP_PICK_阀门|r
    >>|cRXP_WARN_当你关闭阀门时一只小怪会刷新出来|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >> 点击|cRXP_PICK_阀门|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >> 点击|cRXP_PICK_控制台|r
    .turnin 900 ,, 什么什么平衡器
    .accept 901 ,, 什么什么平衡器
step
    .goto The Barrens,52.84,10.40
    >>击杀屋内的|cRXP_ENEMY_技工斯尼格斯|r. 拾取|cRXP_LOOT_控制台钥匙|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >> 点击|cRXP_PICK_控制台|r
    .turnin 901 ,, 什么什么平衡器
    .accept 902 ,, 什么什么平衡器
step << Druid
    #completewith DruidTraining1
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .train 5211 >> 学习职业技能
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .train 1430 >> 学习职业技能
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >>炉石回棘齿城
    .use 6948
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_购买|r|T133918:0|t[长嘴泥鳅]
    >>|cRXP_BUY_购买|r|T132796:0|t[果汁] << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_这些吃喝非常划算, 想买多少就买多少|r
    .vendor >> 清理背包
    .collect 4592,40,896,1 --Longjaw Mud Snapper (40)
    .collect 1205,40,896,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (40)
    .target Innkeeper Wiley
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 902 ,, 什么什么平衡器
    .accept 3921 ,, 维妮·布特巴克
    .accept 1483 ,, 菲兹克斯
    .target Sputtervalve
step
    #completewith Crossroadsturnins2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fly Crossroads >> 飞往十字路口
    .target Bragok
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 ,, 菌类孢子
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索克·快刀|r, |cRXP_FRIENDLY_图加·符文图腾|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_加兹罗格|r
    .turnin 867 ,, 鹰身强盗
    .accept 875 ,, 鹰身人首领
    .goto The Barrens,51.62,30.90
    .turnin 870 ,, 遗忘之池
    .accept 877 ,, 死水绿洲
    .goto The Barrens,52.26,31.93
    .turnin 903 ,, 草原上的徘徊者
    .accept 881 ,, 埃其亚基
    .goto The Barrens,52.24,31.01
    .turnin 869 ,, 偷钱的迅猛龙
    .accept 3281 ,, 被偷走的银币
    .goto The Barrens,51.93,30.32
    .target Darsok Swiftdagger
    .target Tonga Runetotem
    .target Sergra Darkthorn
    .target Gazrog
    .isQuestComplete 869
step
    #label Crossroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师赫布瑞姆|r, |cRXP_FRIENDLY_达索克·快刀|r, |cRXP_FRIENDLY_图加·符文图腾|r和|cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 867 ,, 鹰身强盗
    .accept 875 ,, 鹰身人首领
    .goto The Barrens,51.62,30.90
    .turnin 870 ,, 遗忘之池
    .accept 877 ,, 死水绿洲
    .goto The Barrens,52.26,31.93
    .turnin 903 ,, 草原上的徘徊者
    .accept 881 ,, 埃其亚基
    .goto The Barrens,52.24,31.01
    .target Darsok Swiftdagger
    .target Tonga Runetotem
    .target Sergra Darkthorn
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_亚瑟罗克|r|cRXP_BUY_. 购买|r|T134410:0|t[中型箭袋]
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,1800,896,1 --Sharp Arrow (1800)
    .target Uthrok
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >> 绑定炉石到十字路口
    .target Innkeeper Boorand Plainswind
step
    #completewith CatsEye
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
step << !Tauren !Undead
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
    .turnin 6384 ,, 飞往奥格瑞玛
    .accept 6385 ,, 双足飞龙管理员多拉斯
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_多拉斯|r
    .turnin 6385 ,, 双足飞龙管理员多拉斯
    .accept 6386 ,, 返回十字路口
    .target Doras
    .isOnQuest 6385
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 8019 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 913 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_佐尔·孤树|r
    .accept 1061 ,, 石爪之灵
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_申苏尔|r
    .train 6480 >> 学习|T136058:0|t[开锁]
    .train 921 >> 学习|T133644:0|t[偷窃]
    .accept 2379 ,, 赞杜沙
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟祖克|r
    .turnin 1963 ,, 碎手氏族
    .accept 1858 ,, 碎手氏族
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赞杜沙|r
    .turnin 2379 ,, 赞杜沙
    .accept 2382 ,, 棘齿城的维尼克斯
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 购买|r|T134065:0|t[盗贼工具]
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_使用|r|T136058:0|t[开锁]|cRXP_WARN_打开|r |T133626:0|t[塔赞的背包]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟祖克|r
    .turnin 1858 ,, 碎手氏族
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_对旅馆中的|r|cRXP_ENEMY_加摩尔|r|cRXP_WARN_使用|r|T133644:0|t[偷窃]|cRXP_WARN_. 用他的钥匙打开|r|T133626:0|t[塔赞的背包]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟祖克|r
    .turnin 1858 ,, 碎手氏族
    .target Therzok
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
    .train 1455 >> 学习职业技能
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
    .train 1014 >> 学习职业技能
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r并购买|T133738:0|t[魔典：牺牲（等级 1）]
    .collect 16316,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r并购买|T133738:0|t[魔典：牺牲（等级 1）]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 285 >> 学习职业技能
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 8198 >> 学习职业技能
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .train 13795 >> 学习职业技能
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .train 2643 >> 学习职业技能
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
    .train 24557 >> 学习宠物技能
    .target Xao'tsu
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳什|r
    .train 227 >> 学习法杖
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .train 8102 >> 学习职业技能
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .train 970 >> 学习职业技能
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
    .train 2120 >> 学习职业技能
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
    .train 3140 >> 学习职业技能
    .target Pephredo
    .xp <18,1
step
    #completewith next
    .skill firstaid,40 >> 制作|T133685:0|t[亚麻绷带]直到急救40+
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_阿诺克|r
    .train 3276 >> 学习|T133688:0|t[厚亚麻绷带]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> 制作|T133688:0|t[厚亚麻绷带s]直到急救50+
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_阿诺克|r
    .train 3274 >> 学习中级急救
    .target Arnok
    .skill firstaid,<1,1
step
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >> 从西出口进入贫瘠之地
    .zoneskip The Barrens
    .isOnQuest 896
step
    #label CatsEye
    .goto The Barrens,63.55,4.92,100,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43
    >>击杀|cRXP_ENEMY_风险投资公司执行者|r和|cRXP_ENEMY_风险投资公司监督者|r. 拾取|cRXP_LOOT_猫眼翡翠|r
    >>|cRXP_WARN_避免进入矿洞. 里面很容易ADD, 也很难逃跑.|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #completewith Wenikee
    >>击杀你遇见的所有|cRXP_ENEMY_迅猛龙|r. 拾取|cRXP_LOOT_迅猛龙的头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #label Wenikee
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维妮·布特巴克|r
    .turnin 3921 ,, 维妮·布特巴克
    .accept 3922 ,, 高强度齿轮
    .target Wenikee Boltbucket
step
    #sticky
    #completewith Slugs
    >> 在淤泥沼泽拾取|cRXP_PICK_工具篮|r
    .complete 3922,1 --Nugget Slugs (15)
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在淤泥沼泽与|r|cRXP_FRIENDLY_维兹克兰克的伐木机|r对话
    .accept 858 ,, 打火钥匙
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_注意|r |cRXP_ENEMY_工头葛瑞尔斯|r|cRXP_WARN_或者|r|cRXP_ENEMY_淤泥兽|r|cRXP_WARN_是否刷新了. 他们是19级稀有精英. 非常强力|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>击杀|cRXP_ENEMY_鲁格维兹主管|r. 拾取|cRXP_LOOT_打火钥匙|r. 他在平台上下巡逻
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_维兹克兰克的伐木机|r
    >>|cRXP_WARN_这将开启护送任务. 确保自己状态良好|r
    .turnin 858 ,, 打火钥匙
    .accept 863 ,, 逃跑
    .target Wizzlecrank's Shredder
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_当伐木机爬上高坡后2个|r|cRXP_ENEMY_风险投资公司雇佣兵|r|cRXP_WARN_会刷新出来. 杀死他们并等待剧情结束|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
step
    .loop 25,The Barrens,55.50,7.98,55.60,8.85,56.04,9.79,56.68,8.82,57.17,9.08,57.61,8.41,57.31,7.20,56.72,6.92,56.17,6.80,55.69,6.94
    >> 在淤泥沼泽拾取|cRXP_PICK_工具篮|r
    .complete 3922,1 --Nugget Slugs (15)
step
	#completewith NuggetSlugsTurnIn
	+|cRXP_WARN_如果你有超过15个|cRXP_LOOT_高强度齿轮|r|cRXP_WARN_, 使用shift键分离并摧毁多余的|r
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>击杀你遇见的所有|cRXP_ENEMY_迅猛龙|r. 拾取|cRXP_LOOT_迅猛龙的头颅|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,55.80,17.03
    .cast 12189 >> 使用|T134227:0|t[埃其亚基的号角], 召唤|cRXP_ENEMY_埃其亚基|r
    >>击杀并拾取|cRXP_LOOT_埃其亚基的皮|r
    .complete 881,1 --Echeyakee's Hide (1)
    .use 10327
    .mob Echeyakee
step
    #label NuggetSlugsTurnIn
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维妮·布特巴克|r
    .turnin 3922 ,, 高强度齿轮
    .accept 3923 ,, 雷里·格里斯高布
    .target Wenikee Boltbucket
step
    .goto The Barrens,47.81,14.18,50,0
    .goto The Barrens,45.78,14.74,50,0
    .goto The Barrens,44.60,15.04,50,0
    .goto The Barrens,47.81,14.18
   >>完成击杀|cRXP_ENEMY_迅猛龙|r. 拾取|cRXP_LOOT_迅猛龙的头颅|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_赤鳞镰爪龙|r|cRXP_WARN_. 它们会|r |T132152:0|t[痛击]
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    .loop 25,The Barrens,40.28,15.49,39.50,14.68,39.47,13.24,38.94,12.80,38.18,12.56,37.96,13.52,38.62,13.95,38.18,14.62,38.14,15.59,37.29,15.68,37.24,16.26,37.67,16.34,38.35,17.08,38.83,17.71,39.37,17.21,39.87,16.66,40.15,15.98
    >>击杀|cRXP_ENEMY_巫翼杀戮者|r. 拾取|cRXP_LOOT_鹰身人首领之戒|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_巫翼杀戮者|r|cRXP_WARN_会斩杀. 请保持20%以上血量|r
    >>|cRXP_WARN_注意|r |cRXP_ENEMY_巫翼伏击者|r|cRXP_WARN_. 他们潜行在附近巡逻|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step
    #completewith FoodandWater1
    .hs >> 炉石回十字路口
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 380
step
    #completewith next
    .goto The Barrens,52.09,30.43,120 >> 前往十字路口. 你也可以刷怪到|T134414:0|t[炉石]CD好了
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #label FoodandWater1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
	.vendor >>|cRXP_BUY_清理背包, 如果需要的话就补充吃喝|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_清理背包, 如果需要的话就补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << !Tauren !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_札尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_达索克·快刀|r
    .turnin 869 ,, 偷钱的迅猛龙
    .accept 3281 ,, 被偷走的银币
    .goto The Barrens,51.93,30.32
    .turnin 6386 ,, 返回十字路口
    .goto The Barrens,52.62,29.84
    .turnin 881 ,, 埃其亚基
    .accept 905 ,, 狂暴的镰爪龙
    .goto The Barrens,52.23,31.00
    .turnin 875 ,, 鹰身人首领
    .accept 876 ,, 塞瑞娜·血羽
    .goto The Barrens,51.62,30.90
    .target Gazrog
    .target Zargh
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
    .isQuestComplete 869
    .isOnQuest 6386
step << !Tauren !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔夫|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_达索克·快刀|r
    .turnin 6386 ,, 返回十字路口
    .goto The Barrens,52.62,29.84
    .turnin 881 ,, 埃其亚基
    .accept 905 ,, 狂暴的镰爪龙
    .goto The Barrens,52.23,31.00
    .turnin 875 ,, 鹰身人首领
    .accept 876 ,, 塞瑞娜·血羽
    .goto The Barrens,51.62,30.90
    .target Zargh
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹罗格|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_达索克·快刀|r
    .turnin 869 ,, 偷钱的迅猛龙
    .accept 3281 ,, 被偷走的银币
    .goto The Barrens,51.93,30.32
    .turnin 881 ,, 埃其亚基
    .accept 905 ,, 狂暴的镰爪龙
    .goto The Barrens,52.23,31.00
    .turnin 875 ,, 鹰身人首领
    .accept 876 ,, 塞瑞娜·血羽
    .goto The Barrens,51.62,30.90
    .target Gazrog
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
    .isQuestComplete 869
step
    #label EcheyakeeTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_达索克·快刀|r
    .turnin 881 ,, 埃其亚基
    .accept 905 ,, 狂暴的镰爪龙
    .goto The Barrens,52.23,31.00
    .turnin 875 ,, 鹰身人首领
    .accept 876 ,, 塞瑞娜·血羽
    .goto The Barrens,51.62,30.90
    .target Sergra Darkthorn
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_巴尔格|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith TheEscapeTurnIn
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >> 飞往棘齿城
    .target Devrak
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卑鄙的维尼克斯|r
    .turnin 2382 ,, 棘齿城的维尼克斯
    .accept 2381 ,, 抢劫海盗
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尼克斯的机械设备|r
    >>|cRXP_WARN_获得一个|r|T134059:0|t[大饼干]|cRXP_WARN_以及|r|T134065:0|t[盗贼工具]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r和|cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 863 ,, 逃跑
    .accept 1483 ,, 菲兹克斯
    .goto The Barrens,62.98,37.22
    .turnin 896 ,, 矿工的宝贝
    .goto The Barrens,63.35,38.45
    .target Sputtervalve
    .target 码头管理员迪兹维格
    .isQuestComplete 896
step
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 863 ,, 逃跑
    .accept 1483 ,, 菲兹克斯
    .target Sputtervalve
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 ,, 迅猛龙角
    .accept 1069 ,, 深苔蜘蛛的卵
    .target Sputtervalve
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维尔雷|r
    >>|cRXP_BUY_购买|r|T133918:0|t[长嘴泥鳅]
    >>|cRXP_BUY_购买|r|T132796:0|t[果汁] << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_这些吃喝非常划算, 想买多少就买多少|r
    .vendor >> 清理背包
    .collect 4592,40,888,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_跳到船上, 下到第二层并把开锁练到70+|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>一旦开锁到了70, 下到底层然后打开|cRXP_PICK_南海宝珠|r
    >>|cRXP_WARN_对|r|cRXP_ENEMY_波利|r|cRXP_WARN_使用|r|T134059:0|t[大饼干]
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    .goto The Barrens,63.58,49.25
    >> 拾取地上的|cRXP_PICK_望远镜片|r
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >> 拾取地上的|cRXP_PICK_一箱靴子|r
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>击杀遇见的所有|cRXP_ENEMY_赤鳞镰爪龙|r. 拾取|cRXP_LOOT_完整的迅猛龙角|r和|cRXP_LOOT_赤鳞迅猛龙的羽毛|r
    >>|cRXP_WARN_小心! 他们会|r |T132152:0|t[痛击]
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >> 拾取|cRXP_PICK_被偷走的银币|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >> 在死水绿洲收集|cRXP_PICK_菌类孢子|r
    .complete 848,1 --Collect 菌类孢子 (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>潜入水中并游到湖中心然后点击|cFFDB2EEF冒泡的裂缝|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .goto The Barrens,52.95,41.75,0
    >>击杀|cRXP_ENEMY_狂热的维罗戈|r. 拾取|cFF00BCD4维罗戈的头颅|r
    >>|cFFFCDC00每杀死一只|r|cRXP_ENEMY_半人马|r|cFFFCDC00他都有机会刷新|r
    .complete 851,1 --Verog's Head (1)
    .mob 狂热的维罗戈
    .isOnQuest 851
step
    .loop 25,The Barrens,55.80,45.78,56.75,43.41,57.01,41.22,55.45,41.37,54.99,40.84,53.41,40.26,52.99,44.73,54.31,46.81,55.80,45.78
    >>在绿洲附近刷|cRXP_ENEMY_半人马|r. 拾取|cRXP_LOOT_半人马护腕|r
    .complete 855,1 --半人马护腕 (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto The Barrens,52.95,41.75,0
    .loop 25,The Barrens,55.80,45.78,56.75,43.41,57.01,41.22,55.45,41.37,54.99,40.84,53.41,40.26,52.99,44.73,54.31,46.81,55.80,45.78
    >>在绿洲附近刷|cRXP_ENEMY_半人马|r. 一旦|cRXP_ENEMY_狂热的维罗戈|r刷新, 就击杀并拾取|cFF00BCD4维罗戈的头颅|r
    >>|cFFFCDC00每杀死一只|r|cRXP_ENEMY_半人马|r|cRXP_ENEMY_狂热的维罗戈|r|cFFFCDC00都有机会刷新|r
    .complete 851,1 --Verog's Head (1)
    .mob 狂热的维罗戈
step
    .loop 25,The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
    >> 在死水绿洲收集|cRXP_PICK_菌类孢子|r
    .complete 848,1 --Collect 菌类孢子 (x4)
step
    #completewith LizardHorn
    >>击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >> 点击蓝色迅猛龙巢穴. 如果你没有|T132914:0|t[赤鳞迅猛龙的羽毛]就击杀更多的|cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心! 他们会|r |T132152:0|t[痛击]
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >> 点击红色迅猛龙巢穴. 如果你没有|T132914:0|t[赤鳞迅猛龙的羽毛]就击杀更多的|cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心! 他们会|r |T132152:0|t[痛击]
    .complete 905,3 --Visit Red Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >> 点击黄色迅猛龙巢穴. 如果你没有|T132914:0|t[赤鳞迅猛龙的羽毛]就击杀更多的|cRXP_ENEMY_赤鳞镰爪龙|r
    >>|cRXP_WARN_小心! 他们会|r |T132152:0|t[痛击]
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    .goto The Barrens,57.3,53.7
   >>完成击杀|cRXP_ENEMY_赤鳞镰爪龙|r. 拾取完整的迅猛龙角
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血肉模糊的尸体|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
step
    #label LizardHorn
    #completewith SetCampTaurajoHS
    >>击杀|cRXP_ENEMY_雷霆蜥蜴|r. 拾取|cRXP_LOOT_雷霆蜥蜴的角|r. 你不用现在就完成这步
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> 前往陶拉祖营地
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
    .home >> 绑定炉石到陶拉祖营地
    .target Innkeeper Byula
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎牙|r
    .accept 878 ,, 野猪人的内战
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
    .fp Camp Taurajo >> 开启陶拉祖营地飞行点 << !Tauren
    .fly Crossroads >>飞往十字路口
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 ,, 菌类孢子
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_曼寇里克|r, |cRXP_FRIENDLY_图加·符文图腾|r, |cRXP_FRIENDLY_瑟格拉·黑棘|r和|cRXP_FRIENDLY_加兹罗格|r
    .turnin 4921 ,, 在战斗中失踪
    .goto The Barrens,52.00,31.60
    .turnin 877 ,, 死水绿洲
    .accept 880 ,, 变异的生物
    .goto The Barrens,52.26,31.93
    .turnin 905 ,, 狂暴的镰爪龙
    .accept 3261 ,, 乔恩·星眼
    .goto The Barrens,52.24,31.01
    .turnin 3281 ,, 被偷走的银币
    .goto The Barrens,51.93,30.32
    .target Mankrika
    .target Tonga Runetotem
    .target Sergra Darkthorn
    .target Gazrog
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_巴尔格|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 ,, 半人马护腕
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 ,, 狂热的维罗戈
    .accept 852 ,, 赫兹鲁尔·血印
    .target Regthar Deathgate
    .isQuestComplete 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 852 ,, 赫兹鲁尔·血印
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith next
    .zone Stonetalon Mountains >> 前往石爪山脉
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希雷斯·碎石|r和|cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1061 ,, 石爪之灵
    .accept 1062 ,, 地精侵略者
    .goto The Barrens,35.26,27.88
    .accept 6548 ,, 为我的村庄复仇
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 19-23 石爪山脉/贫瘠之地/灰谷
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#next 23-25 希尔斯布莱德丘陵

step
    #completewith next
    >> 放弃 向卡德拉克报到 以避免超出任务日志数量限制. 你可以晚一点再重新接受该任务
    .abandon 6541 ,, 向卡德拉克报到
    .isOnQuest 6541
step
    .loop 25,Stonetalon Mountains,80.62,89.99,79.79,88.75,81.19,87.56,81.70,86.44,82.26,86.10,82.55,85.22,83.64,85.02,84.20,85.20,83.80,86.38,83.25,87.23,82.33,89.73,82.33,90.43,81.34,90.78
    >>击杀此区域的|cRXP_ENEMY_恐怖图腾恶徒|r和|cRXP_ENEMY_恐怖图腾佣兵|r
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob Grimtotem Ruffian
    .mob Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 ,, 为我的村庄复仇
    .accept 6629 ,, 杀死格鲁迪格·暗云
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>沿路往上前往篝火处
step
    .goto Stonetalon Mountains,73.65,86.13
    >>击杀|cRXP_ENEMY_格鲁迪格·暗云|r和|cRXP_ENEMY_恐怖图腾蛮兵|r
    >>|cRXP_WARN_在开始护送前确保你杀够6个|r|cRXP_ENEMY_恐怖图腾蛮兵|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob Grundig Darkcloud
    .mob Grimtotem Brute
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡雅·扁蹄|r
    .accept 6523 ,, Protect Kaya
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>护送|cRXP_FRIENDLY_卡雅·扁蹄|r. 注意跟紧点
    >>|cRXP_WARN_小心! 当你到达阿帕拉耶营地的篝火处时, 3个|r|cRXP_ENEMY_恐怖图腾小怪|r|cRXP_WARN_会刷出来|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 ,, Blood Feeders
    .target Xen'Zilla
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>击杀你遇到的所有|cRXP_ENEMY_深苔爬行者|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,49.38,61.68,50 >> 前往烈日石居
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> 沿路往上前往左手边
    .group
step
    #label InDeepTrouble
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩罗加尔|r
    .accept 6421 ,, Boulderslide Ravine
    .target Mor'Rogal
    .group
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板杰卡|r
    >>|cRXP_WARN_不要在这里绑定炉石!!!|r
    >>|cRXP_BUY_购买|r|T133970:0|t[羊排] << Rogue/Warrior
    >>|cRXP_BUY_购买|r|T132796:0|t[果汁] << Priest/Mage
    >>|cRXP_BUY_购买|r|T133970:0|t[羊排]|cRXP_BUY_和|r|T132796:0|t[果汁] << Warlock/Shaman/Druid/Hunter
    .vendor >> 清理背包
    .collect 3770,20,895,1 << !Priest !Mage --Mutton Chop (20)
    .collect 1205,20,895,1 << !Rogue !Warrior --Melon Juice (20)
    .target Innkeeper Jayka
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_在旅店二楼|r|cRXP_BUY_对话|r|cRXP_FRIENDLY_基达|r
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134831:0|t[治疗药水] << !Warrior
    .vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134413:0|t[活根草] |cRXP_BUY_如果有库存就|r << Warrior
    .target Jeeda
step
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔姆|r
    .fp 烈日石居 >> 开启烈日石居飞行点
    .target Tharm
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >> 前往狂风峭壁
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1483 ,, 菲兹克斯
    .accept 1093 ,, Super Reaper 6000
    .target Ziz Fizziks
step
    #completewith next
    >>击杀|cRXP_ENEMY_深苔毒蜘蛛|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    .loop 25,Stonetalon Mountains,59.25,61.55,60.37,60.10,61.34,59.15,61.15,57.85,61.41,56.77,62.21,58.55,63.12,60.02,64.69,60.03,62.76,61.69,62.50,62.92,62.48,64.15,61.85,66.07,60.71,66.12,60.96,63.99,60.25,63.21
    >> 在树木附近拾取|cRXP_PICK_深苔蜘蛛的卵|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_深苔幼蛛|r|cRXP_WARN_有几率召唤一只22级的|r|cRXP_ENEMY_深苔蜘蛛族母|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    .loop 25,Stonetalon Mountains,59.25,61.55,60.37,60.10,61.34,59.15,61.15,57.85,61.41,56.77,62.21,58.55,63.12,60.02,64.69,60.03,62.76,61.69,62.50,62.92,62.48,64.15,61.85,66.07,60.71,66.12,60.96,63.99,60.25,63.21
    >>击杀|cRXP_ENEMY_深苔毒蜘蛛|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. 购买|r|T135157:0|t[占卜法杖]
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #completewith BluePrints
    +装备|T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Orc Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. 购买|r|T135423:0|t[大型战斧]
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <0.9784
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #completewith BluePrints
    +装备|T135423:0|t[大型战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. 购买|r|T133044:0|t[牢固的木槌]
    .collect 924,1,899,1 --Collect Maul (1)
    .money <1.0972
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #completewith BluePrints
    +装备|T133044:0|t[牢固的木槌]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. 购买|r|T135157:0|t[占卜法杖]
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #completewith BluePrints
    +装备|T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_维尼克斯|r|cRXP_BUY_. 购买|r|T135324:0|t[长剑]
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #completewith BluePrints
    +装备|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #completewith next
    >>击杀|cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #label BluePrints
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    .goto Stonetalon Mountains,62.8,53.7
    >>击杀|cRXP_ENEMY_风险投资公司操作员|r. 拾取|cRXP_LOOT_超级收割机6000型的设计图|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    .loop 25,Stonetalon Mountains,61.50,55.12,60.48,55.10,59.80,53.69,59.53,52.52,60.80,51.23,62.06,54.39,62.63,55.35,63.63,54.42,65.42,54.15,66.83,54.92,68.64,54.03,69.86,53.53,70.34,56.41,67.90,56.96,66.25,56.64,65.29,57.14,64.27,57.63
    >>击杀|cRXP_ENEMY_风险投资公司樵夫|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
	#completewith next
	+|cRXP_WARN_如果你有超过15个|cRXP_LOOT_深苔蜘蛛的卵|r|cRXP_WARN_, 使用shift键分离并摧毁多余的|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1093 ,, Super Reaper 6000
    .accept 1094 ,, Further Instructions
    .target Ziz Fizziks
step
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,59.04,73.01
   >>完成击杀|cRXP_ENEMY_深苔爬行者|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .train 1430 >> 学习职业技能
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .train 768 >> 学习职业技能
    .target Loganaar
    .xp <20,1
step
    .hs >> 炉石回陶拉祖营地
    .use 6948
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
    >>|cRXP_BUY_购买|r|T133978:0|t[多汁的西瓜] << Rogue/Warrior
    >>|cRXP_BUY_购买|r|T132796:0|t[果汁] << Priest/Mage
    >>|cRXP_BUY_购买|r|T133978:0|t[多汁的西瓜]|cRXP_BUY_和|r|T132796:0|t[果汁] << Warlock/Shaman/Druid/Hunter
    .vendor >> 清理背包
    .collect 4538,20,895,1 << !Priest !Mage --Snapvine Watermelon (40)
    .collect 1205,20,895,1 << !Rogue !Warrior --Melon Juice (40)
    .target Innkeeper Byula
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 ,, 乔恩·星眼
    .accept 882 ,, Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>击杀|cRXP_ENEMY_雷霆蜥蜴|r. 拾取|cRXP_LOOT_雷霆蜥蜴的角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>击杀大量|cRXP_ENEMY_刺背野猪人|r. 拾取|cRXP_LOOT_刺背野猪人的獠牙|r. 注意保留打到的|T134128:0|t[|cFF00BCD4血岩碎片|r]
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label LakotaMani
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34
	>>找到并击杀此区域的|cRXP_ENEMY_拉克塔曼尼|r (灰色科多兽). 拾取|T132318:0|t[|cFF00BCD4拉克塔曼尼的蹄子|r]并接受任务.
    >>|cFFFCDC00如果找不到它就跳过这步|r
	.collect 5099,1,878 --Collect Hoof of Lakota'Mani
	.accept 883 ,, Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>击杀|cRXP_ENEMY_雷霆蜥蜴|r. 拾取|cRXP_LOOT_雷霆蜥蜴的角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    .loop 25,The Barrens,50.71,54.60,50.74,55.33,50.73,56.78,50.42,57.23,50.50,57.65,50.87,57.50,51.26,57.84,51.74,57.69,51.79,57.10,53.08,54.69,53.65,54.27,53.63,53.53,53.35,52.72,53.00,51.83,52.62,52.19,52.59,52.71,52.41,53.07,52.32,53.71,51.39,54.22
    >>击杀大量|cRXP_ENEMY_刺背野猪人|r. 拾取|cRXP_LOOT_刺背野猪人的獠牙|r. 注意保留打到的|T134128:0|t[|cFF00BCD4血岩碎片|r]
    .complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    .goto The Barrens,50.88,52.96
    >>击杀|cRXP_ENEMY_雷霆蜥蜴|r. 拾取|cRXP_LOOT_雷霆蜥蜴的角|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    .goto The Barrens,53.98,51.68
   >>完成击杀|cRXP_ENEMY_平原陆行鸟|r. 拾取|cRXP_LOOT_平原陆行鸟的肾脏|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    .loop 25,The Barrens,55.59,43.39,55.09,43.00,55.03,42.21,55.47,41.51,55.99,42.00,56.15,42.53,56.01,43.40
    >>击杀湖边的|cRXP_ENEMY_绿洲钳嘴龟|r. 拾取|cRXP_LOOT_变异的钳嘴龟壳|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>击杀遇见的所有|cRXP_ENEMY_斑马|r. 拾取|cRXP_LOOT_新鲜的斑马肉|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.87,30.41
    .use 10338 >> 使用|T134368:0|t[|cRXP_LOOT_新鲜的斑马肉|r]在枯死的树边召唤|cRXP_ENEMY_伊沙姆哈尔|r. 击杀并拾取|cRXP_LOOT_伊沙姆哈尔的牙齿|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >> 前往棘齿城
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卑鄙的维尼克斯|r
    .turnin 2381 ,, 抢劫海盗
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹鲁维|r
    .turnin 888 ,, 被窃的货物
    .target Gazlowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r和|cRXP_FRIENDLY_酿酒师德罗恩|r
    .turnin 1094 ,, Further Instructions
    .accept 1095 ,, Further Instructions
    .goto The Barrens,62.98,37.22
    .turnin 865 ,, 迅猛龙角
    .turnin 1069 ,, 深苔蜘蛛的卵
    .accept 1491 ,, Smart Drinks
    .goto The Barrens,62.37,37.62
    .turnin 821 ,, 老陈的空酒桶
    .accept 822 ,, 老陈的空酒桶
    .goto The Barrens,62.27,38.39
    .target Sputtervalve
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r, |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r和|cRXP_FRIENDLY_酿酒师德罗恩|r
    .turnin 1094 ,, Further Instructions
    .accept 1095 ,, Further Instructions
    .goto The Barrens,62.98,37.22
    .turnin 865 ,, 迅猛龙角
    .turnin 1069 ,, 深苔蜘蛛的卵
    .goto The Barrens,62.37,37.62
    .turnin 821 ,, 老陈的空酒桶
    .accept 822 ,, 老陈的空酒桶
    .goto The Barrens,62.27,38.39
    .target Sputtervalve
    .target Mebok Mizzyrix
    .target Brewmaster Drohn
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 ,, Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格拉利克斯|r
    .vendor >>|cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134583:0|t[粗链短裤]
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克斯宾德 |r
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T132603:0|t[野狼护腕]
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Warrior
    #completewith FlytoXroads
    +装备|T134583:0|t[粗链短裤]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
step << Rogue/Hunter/Warrior/Shaman/Druid
    #completewith FlytoXroads
    +装备|T132603:0|t[野狼护腕]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fly Crossroads >> 飞往十字路口
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_曼寇里克|r和|cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 899 ,, 复仇的怒火
    .goto The Barrens,51.95,31.58
    .turnin 880 ,, 变异的生物
    .accept 1489 ,, Hamuul Runetotem
    .accept 3301 ,, Mura Runetotem
    .goto The Barrens,52.26,31.93
    .target Tonga Runetotem
    .target Mankrik
step
    #label XroadsHS2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
    .home >> 绑定炉石到十字路口
	.vendor >>|cRXP_BUY_清理背包, 如果需要的话就补充吃喝|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_清理背包, 如果需要的话就补充食物|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔恩·火卫|r
	.accept 1528 ,, Call of Water
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 2645 >> 学习职业技能
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_甘卢尔·血眼|r
    .trainer >> 学习职业技能
    .accept 1507 ,, Devourer of Souls
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r并购买|T133738:0|t[魔典：折磨（等级 2）]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡祖尔|r
    .turnin 1507 ,, Devourer of Souls
    .accept 1508 ,, Blind Cazul
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. 购买|r|T135139:0|t[燃烧魔杖]
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赞卡沙|r
    .turnin 1508 ,, Blind Cazul
    .accept 1509 ,, News of Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> 现在你可以寻找前往死亡矿井的副本队伍了
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 8052 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 2645 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
	.train 14318 >> 学习职业技能
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
	.train 14290 >> 学习职业技能
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.33,14.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
	.train 5118 >> 学习宠物技能
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
	.train 8198 >> 学习职业技能
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 845 >> 学习职业技能
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
    .train 1943 >> 学习职业技能
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25泽弗洛斯特|r
    .train 1014 >> 学习职业技能
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25泽弗洛斯特|r
    .train 706 >> 学习职业技能
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
    .train 3140 >> 学习职业技能
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
    .train 1953 >> 学习职业技能
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .train 970/ >> 学习职业技能
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .train 14914 >> 学习职业技能
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #completewith next
    .zone Durotar >> 离开奥格瑞玛
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>爬上飞艇塔
    .zone Stranglethorn Vale >>乘坐飞艇去荆棘谷
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,35.55,81.55,15 >> 直接从格罗姆高营地向西游到暗礁海然后一直向北游到西部荒野
    >>|cFFFCDC00远离岛屿! 跟随指示以保证安全!|r
    .dungeon DM
step
    #label EnterDM
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.04,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >> 进入死亡矿井副本
    .dungeon DM
step
    .hs >> 打完死亡矿井就炉石回十字路口
    .goto The Barrens,51.99,29.89,30 >> 抵达十字路口
    .dungeon DM
step << Warlock
    #completewith next
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
	.fly Crossroads >> 飞往十字路口
    .zoneskip The Barrens
    .target Doras
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹罗格|r
    .turnin 1509 ,, News of Dogran
    .accept 1510 ,, News of Dogran
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
    .fly Ratchet >> 飞往棘齿城
    .target Doras
    .zoneskip The Barrens
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Ratchet >> 飞往棘齿城
    .target Devrak
    .subzoneskip 380,1
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_水之先知伊斯伦|r
    .turnin 1528 ,, Call of Water
    .accept 1530 ,, Call of Water
    .target Islen Waterseer
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fly Camp Taurajo >> 飞往陶拉祖营地
    .target Bragok
step << !Shaman
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly Camp Taurajo >> 飞往陶拉祖营地
    .target Devrak
step
    .goto The Barrens,44.55,59.27
    >>击杀|cRXP_ENEMY_刺背野猪人|r. 拾取|T134128:0|t[|cFF00BCD4血岩碎片|r
    .collect 5075 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎牙|r
    .turnin 878 ,, 野猪人的内战
    .accept 5052 ,, Blood Shards of Agamaggan
    .turnin 5052 ,, Blood Shards of Agamaggan
    .target Mangletooth
step
    #completewith Thunderhawk
    +|cRXP_WARN_使用|r |T134128:0|t[|cFF00BCD4血岩碎片|r]|cRXP_WARN_换取Buff. 请为后续步骤至少保留4个|r
    +|cRXP_WARN_确保已关闭插件的自动交接任务功能, 比如Questie和Leatrix Plus!|r
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 ,, Ishamuhale
    .accept 907 ,, Enraged Thunder Lizards
    .target Jorn Skyseer
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
    .accept 883 ,, Lakota'Mani
    .turnin 883 ,, Lakota'mani
    .target Jorn Skyseer
    .itemcount 5099,1
step
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    .goto The Barrens,44.32,60.84
    >>击杀|cRXP_ENEMY_雷霆蜥蜴|r. 拾取|cRXP_LOOT_雷霆蜥蜴的血液|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 907 ,, Enraged Thunder Lizards
    .accept 913 ,, Cry of the Thunderhawk
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>> 向南前往|cRXP_FRIENDLY_布瑞恩|r处
step << Shaman
    #completewith next
    >>击杀a|cRXP_ENEMY_雷鹰|r. 拾取|cRXP_LOOT_雷鹰的翅膀|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞恩|r
    .turnin 1530 ,, Call of Water
    .accept 1535 ,, Call of Water
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> 在布瑞恩小屋前的水池里装满|T132825:0|t[空的棕色水囊]
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞恩|r
    .turnin 1535 ,, Call of Water
    .accept 1536 ,, Call of Water
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.85,59.14,200 >>回到陶拉祖营地
step
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    .goto The Barrens,44.83,63.12
    >>击杀a |cRXP_ENEMY_雷鹰|r. 拾取|cRXP_LOOT_雷鹰的翅膀|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 ,, Cry of the Thunderhawk
    .accept 874 ,, Mahren Skyseer
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,45.66,40.34,120 >> 前往甜水绿洲
    .isQuestTurnedIn 851
step
    .loop 25,The Barrens,45.64,38.16,45.84,37.86,45.78,37.41,45.95,37.11,45.93,36.91,46.14,36.85,46.19,36.88,46.28,36.86,46.46,37.17,46.58,37.31,46.66,37.54,46.63,37.93,46.75,38.39,47.27,38.98,47.47,39.27,48.20,39.57,48.40,39.58,48.60,39.51,48.54,39.96,48.58,40.52,48.27,40.82,48.06,40.82,47.86,41.13,47.49,41.33,47.34,41.61,47.22,41.64,46.85,42.05,46.56,41.93,46.27,41.76,46.03,41.15,45.86,41.32,46.09,40.98,46.08,40.68,45.71,40.56,45.64,38.16
    >>找到并击杀|cRXP_ENEMY_赫兹鲁尔·血印|r, 他绕湖边巡逻. 拾取|cRXP_LOOT_赫兹鲁尔的头颅|r
    >>|cRXP_WARN_小心! 两只|r|cRXP_ENEMY_科卡尔战士|r|cRXP_WARN_会守护他|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 ,, 赫兹鲁尔·血印
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 ,, 半人马护腕
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 ,, Counterattack!
    .target Regthar Deathgate
    .isQuestTurnedIn 852
    .group
step
    .goto The Barrens,44.48,28.15
    >>只要|cRXP_ENEMY_督军克罗姆札|r一出现就击杀他. 拾取掉落在地的|cRXP_PICK_克罗姆扎军旗的碎片|r
    >>|cRXP_WARN_小心! 他是一只非常强力的精英怪并且有至少2只|r|cRXP_ENEMY_科卡尔小怪|r|cRXP_WARN_守卫他|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .group 3 >> 如果没有3人以上的队伍就不要尝试这个任务
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 ,, Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 ,, 半人马护腕
    .target Regthar Deathgate
    .isQuestComplete 855
    .group
step
    >> 如果你到现在还没有完成 半人马护腕 任务就放弃掉
    .abandon 855 ,, 半人马护腕
    .isOnQuest 855
step
    .goto The Barrens,39.16,12.16
    >>击杀|cRXP_ENEMY_塞瑞娜·血羽|r. 拾取|cRXP_LOOT_塞瑞娜·血羽的头颅|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    .hs >> 炉石回十字路口
    .use 6948
    .cooldown item,6948,>0
    .isQuestComplete 876
step
    .goto The Barrens,52.09,30.43,120 >> 前往十字路口. 你也可以刷怪到|T134414:0|t[炉石]CD好了
    .cooldown item,6948,<0
    .isQuestComplete 876
step
    #label ApothecaryPickup
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索克·快刀|r, |cRXP_FRIENDLY_药剂师赫布瑞姆|r和|cRXP_FRIENDLY_科兰|r
    .turnin 876 ,, 塞瑞娜·血羽
    .accept 1060 ,, Letter to Jin'Zil
    .goto The Barrens,51.62,30.90
    .accept 853 ,, Apothecary Zamah
    .goto The Barrens,51.44,30.15
    .accept 868 ,, Egg Hunt
    .goto The Barrens,51.10,29.60
    .target Darsok Swiftdagger
    .target Apothecary Helbrim
    .target Korran
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_你现在接了一个限时任务, 不要AFK. 这将耽搁你大概10-15分钟|r
    .solo
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_你现在接了一个限时任务, 不要AFK. 这将耽搁你大概20-30分钟|r
    .group
step
    #completewith next
    .zone Stonetalon Mountains >> 前往石爪山脉
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希雷斯·碎石|r和|cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 1062 ,, 地精侵略者
    .accept 1063 ,, The Elder Crone
    .accept 1068 ,, Shredding Machines
    .goto The Barrens,35.26,27.88
    .turnin 6629 ,, 杀死格鲁迪格·暗云
    .turnin 6523 ,, Protect Kaya
    .accept 6401 ,, Kaya's Alive
    .goto The Barrens,35.19,27.79
    .target Seereth Stonebreak
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> 跟随指示爬上左边的山坡
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医金吉尔|r
    .turnin 1060 ,, Letter to Jin'Zil
    .accept 1058 ,, Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
    .group
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯兹格拉|r
    .turnin 1510 ,, News of Dogran
    .accept 1511 ,, Ken'zigla's Draught
    .target Ken'zigla
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 ,, Blood Feeders
    .target Xen'Zilla
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医金吉尔|r
    .turnin 1060 ,, Letter to Jin'Zil
    .accept 1058 ,, Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
    .solo
step
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳上其中一个笼子. 登出再登入, 你就传送到雷霆崖墓地了.|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_点击此处查看演示|r
    .solo
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >> 前往滚岩峡谷然后进入北面的洞穴
    .group
step
    .goto Stonetalon Mountains,60.16,90.92,30,0
    .goto Stonetalon Mountains,58.44,89.90
    >> 攻击|cRXP_PICK_共鸣水晶|r然后深入洞穴以调查此区域
    >>|cRXP_WARN_小心! 这里的怪很厉害且很容易ADD.|r |cRXP_ENEMY_高戈护石者|r|cRXP_WARN_会|r|T136026:0|t[地震术]|cRXP_WARN_, 能造成高额伤害!|r
    .complete 6421,1 --Investigate Cave in Boulderslide Ravine
    .complete 6421,2 --Resonity Crystal (x10)
    .isOnQuest 6421
    .group
step
    #completewith next
    .goto Stonetalon Mountains,64.62,93.86,25,0
    .goto Stonetalon Mountains,64.80,95.27,20,0
    .goto Stonetalon Mountains,64.32,95.84,15 >> 进入滚岩峡谷南面洞穴
    .group
step
    .goto Stonetalon Mountains,64.28,96.60
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_跳上右边的石头. 让你的角色悬空, 然后登出并重新登入. 这会让你快速到达雷霆崖|r
    .link https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >> |cRXP_WARN_点击此处查看演示|r
    .group
step
    #completewith ElderCroneTurnin
    .goto Thunder Bluff,50.75,37.07,40 >> 乘坐电梯上雷霆崖
step << Druid
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >> 存入|T134128:0|t[血岩碎片]
    .bankdeposit 5099 >> 存入|T132938:0|t[掘地铲]
    .target Chesmu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
    .home >> 绑定炉石到雷霆崖
    .target Innkeeper Pala
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> 前往长者高地
step
    #label ElderCroneTurnin
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    .turnin 1063 ,, The Elder Crone
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    >>|cRXP_WARN_等待剧情结束|r
    .accept 1064 ,, Forsaken Aid
    .target Magatha Grimtotem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r和|cRXP_FRIENDLY_纳拉·蛮鬃|r
    .turnin 1489 ,, Hamuul Runetotem
    .accept 1490 ,, Nara Wildmane
    .goto Thunder Bluff,78.61,28.55
    .turnin 1490 ,, Nara Wildmane
    .accept 914 ,, Leaders of the Fang
    .goto Thunder Bluff,75.65,31.57
    .target Arch Druid Hamuul Runetotem
    .target Nara Wildmane
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r和|cRXP_FRIENDLY_纳拉·蛮鬃|r
    .turnin 1489 ,, Hamuul Runetotem
    .accept 1490 ,, Nara Wildmane
    .goto Thunder Bluff,78.61,28.55
    .turnin 1490 ,, Nara Wildmane
    .goto Thunder Bluff,75.65,31.57
    .target Arch Druid Hamuul Runetotem
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
    .trainer >> 学习职业技能
    .accept 27 ,, A Lesson to Learn
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 27 ,, A Lesson to Learn
    .accept 28 ,, Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >> 在湖底点击|cRXP_PICK_神殿灵珠容器|r并拾取|T134125:0|t[神殿灵珠]
    >>|cRXP_WARN_在你抵达灵珠上方前不要潜入水中|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> 在雷姆洛斯神殿处使用|T134125:0|t[神殿灵珠]
    .complete 30,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔加里|r
    .turnin 28 ,, Trial of the Lake
    .accept 30 ,, Trial of the Sea Lion
    .target Tajarri
step << Druid
    .hs >> 炉石回雷霆崖
    .use 6948
    .cooldown item,6948,>0
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑟恩·草风|r
    .fly Thunder Bluff >> 飞往雷霆崖
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Hunter
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> 前往猎人高地
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
    .train 5118 >> 学习职业技能
    .target Urek Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
    .train 24494 >> 学习宠物技能
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> 前往猎人高地
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托姆·狂暴图腾|r
    .train 845 >> 学习职业技能
    .accept 1823 ,, Speak with Ruga
    .target Torm Ragetotem
step << !Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
    .home >> 绑定炉石到雷霆崖
    .target Innkeeper Pala
step << !Druid
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_彻斯姆|r
    .bankdeposit 5075 >> 存入|T134128:0|t[血岩碎片]
    .bankdeposit 868 >> 存入|T132938:0|t[掘地铲]
    .target Chesmu
step << Orc Warrior/Tauren Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安塞瓦|r
    .train 227 >> 学习法杖
    .train 199 >> 学习双手锤
    .target Ansekhwa
step << Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安塞瓦|r
    .train 199 >> 学习双手锤
    .target Ansekhwa
step << Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安塞瓦|r
    .train 227 >> 学习法杖
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安塞瓦|r
    .train 198 >> 学习单手锤
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库鲁克|r|cRXP_BUY_. 购买|r|T135423:0|t[致命的飞斧]
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> 前往灵魂高地并进入预见之池
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师札玛|r
    .turnin 853 ,, Apothecary Zamah
    .turnin 1064 ,, Forsaken Aid
    .accept 1065 ,, Journey to Tarren Mill
    .accept 962 ,, Serpentbloom
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
    .dungeon WC
step
    #label ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师札玛|r
    .turnin 853 ,, Apothecary Zamah
    .turnin 1064 ,, Forsaken Aid
    .accept 1065 ,, Journey to Tarren Mill
    .goto Thunder Bluff,22.82,20.88
    .target Apothecary Zamah
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
    .accept 5644 ,, Devouring Plague << Undead Priest
    .accept 5642 ,, Shadowguard << Troll Priest
    .trainer >> 学习职业技能
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
    .train 12051 >> 学习职业技能
    .target Archmage Shymm
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
    .train 2645 >> 学习职业技能
    .target Tigor Skychaser
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
    .train 8498 >> 学习职业技能
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >> 制作|T133688:0|t[厚亚麻绷带]把急救冲到80+
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_潘德·缚石|r
    .train 3277 >> 学习|T133684:0|t[绒线绷带]
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡德·狂暴图腾|r|cRXP_BUY_. 购买|r|T135324:0|t[长剑]
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #completewith KayaLives
    +装备|T135324:0|t[长剑]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Orc Warrior
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_德尔贡·狂暴图腾|r|cRXP_BUY_. 购买|r|T135423:0|t[大型战斧]
    .collect 926,1,493,1 --Collect Battle Axe (1)
    .target Delgo Ragetotem
    .money <0.9784
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #completewith KayaLives
    +装备|T135423:0|t[大型战斧]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Tauren Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_伊图·狂暴图腾|r|cRXP_BUY_. 购买|r|T133044:0|t[牢固的木槌]
    .collect 924,1,493,1 --Collect Maul (1)
    .money <1.0972
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #completewith KayaLives
    +装备|T133044:0|t[牢固的木槌]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Troll Warrior/Undead Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_伊图·狂暴图腾|r|cRXP_BUY_. 购买|r|T135157:0|t[占卜法杖]
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #completewith KayaLives
    +装备|T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_伊图·狂暴图腾|r|cRXP_BUY_. 购买|r|T135157:0|t[占卜法杖]
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #completewith KayaLives
    +装备|T135157:0|t[占卜法杖]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r|cRXP_BUY_. 购买|r|T135489:0|t[重型弯弓]
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith KayaLives
    +装备|T135489:0|t[重型弯弓]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step << Warlock
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >> 开启雷霆崖飞行点 << !Tauren
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target Tal
    .zoneskip The Barrens
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蛮兵劳格玛|r
    .turnin 1511 ,, Ken'zigla's Draught
    .accept 1515 ,, Dogran's Captivity
    .target Grunt Logma
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蛮兵多格兰|r
    .turnin 1515 ,, Dogran's Captivity
    .accept 1512 ,, Love's Gift
    .target Grunt Dogran
step << !Warlock
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >> 开启雷霆崖飞行点 << !Tauren
    .fly Camp Taurajo >>飞往陶拉祖营地
    .target Tal
    .zoneskip The Barrens
    .dungeon WC
step
    #sticky
    #completewith EnterWC
    .goto The Barrens,45.40,53.96,80,0
    .goto The Barrens,44.79,51.77,80,0
    .goto The Barrens,43.25,47.98,80,0
    .goto The Barrens,40.92,45.16,80,0
    .goto The Barrens,45.40,53.96
    .subzone 718 >> 现在你可以寻找前往哀嚎洞穴的副本队伍了
    >> 在等待的时候刷|cFFFF5722野猪人|r
    .dungeon WC
step
    .goto The Barrens,46.15,36.93,100 >> 前往哀嚎洞穴
    .isOnQuest 914
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
    >>|cFFFCDC00他们在哀嚎洞穴入口处上方的山洞内|r
    .accept 1486 ,, Deviate Hides
    .goto Kalimdor,51.91,55.42
    .accept 1487 ,, Deviate Eradication
    .goto Kalimdor,51.92,55.44
    .target Nalpak
    .target Ebru
    .dungeon WC
step
    #completewith EnterWC
    >> 拾取地上的|cFF00BCD4毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .dungeon WC
step
    #completewith EnterWC
    >>击杀所有|cFFFF5722变异野兽|r. 拾取|cFF00BCD4变异皮革|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>击杀|cFFFF5722软泥怪|r. 拾取|cFF00BCD4哀嚎香精|r
    .complete 1491,1 --Wailing Essence (6)
    .dungeon WC
step
    .goto Kalimdor,51.90,55.43,30,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15
    >>击杀|cFFFF5722疯狂的马格利什|r. 拾取|cFF00BCD4９９年波尔多陈酿|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >> 进入哀嚎洞穴副本
    .dungeon WC
step
    #completewith GlowingShard
    >> 拾取地上的|cFF00BCD4毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .dungeon WC
step
    #completewith GlowingShard
    >>击杀|cFFFF5722软泥怪|r. 拾取|cFF00BCD44哀嚎香精|r
    .complete 1491,1 --Wailing Essence (6)
    .dungeon WC
step
    #completewith GlowingShard
    >>击杀|cFFFF5722变异劫毁者|r, |cFFFF5722剧毒飞蛇|r, |cFFFF5722变异蹒跚者|r和|cFFFF5722变异尖牙风蛇|r
    .complete 1487,1 --Deviate Ravager (7)
    .complete 1487,2 --Deviate Viper (7)
    .complete 1487,3 --Deviate Shambler (7)
    .complete 1487,4 --Deviate Dreadfang (7)
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .dungeon WC
step
    #label Gems
    >>击杀|cFFFF5722考布莱恩领主|r, |cFFFF5722安娜科德拉|r, |cFFFF5722皮萨斯领主|r和|cFFFF5722瑟芬迪斯领主|r. 拾取|cFF00BCD4宝石|r
    .complete 914,1 --Gem of Cobrahn (1)
    .complete 914,2 --Gem of Anacondra (1)
    .complete 914,3 --Gem of Pythas (1)
    .complete 914,4 --Gem of Serpentis (1)
    .mob Lord Cobrahn
    .mob Lady Anacondra
    .mob Lord Pythas
    .mob Lord Serpentis
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话哀嚎洞穴入口处的|cRXP_FRIENDLY_纳拉雷克斯的信徒|r. 护送他到|cRXP_FRIENDLY_纳拉雷克斯|r处
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>一旦你抵达|cRXP_FRIENDLY_纳拉雷克斯|r处, 两波怪就会刷新出来攻击你并让你最终面对|cFFFF5722‘吞噬者’穆坦努斯|r
    >>击杀并拾取|T135229:0|t[|cFF00BCD4发光的碎片|r], 然后接受任务
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 ,, The Glowing Shard
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #completewith DeviateRaptors
    >>击杀|cFFFF5722软泥怪|r. 拾取|cFF00BCD44哀嚎香精|r
    .complete 1491,1 --Wailing Essence (6)
    .dungeon WC
step
    #completewith next
    >> 拾取地上的|cFF00BCD4毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .dungeon WC
step
    #label DeviateRaptors
    >>击杀|cFFFF5722变异劫毁者|r, |cFFFF5722剧毒飞蛇|r, |cFFFF5722变异蹒跚者|r和|cFFFF5722变异尖牙风蛇|r
    .complete 1487,1 --Deviate Ravager (7)
    .complete 1487,2 --Deviate Viper (7)
    .complete 1487,3 --Deviate Shambler (7)
    .complete 1487,4 --Deviate Dreadfang (7)
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .dungeon WC
step
    #completewith next
    >> 拾取地上的|cFF00BCD4毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .dungeon WC
step
    >>击杀|cFFFF5722软泥怪|r. 拾取|cFF00BCD44哀嚎香精|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .dungeon WC
step
    >> 拾取地上的|cFF00BCD4毒蛇花|r
    .complete 962,1 --Serpentbloom (10)
    .dungeon WC
step
    #completewith next
    .hs >> 炉石回雷霆崖
    .use 6948
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳拉·蛮鬃|r
    .turnin 914 ,, Leaders of the Fang
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师札玛|r
    .turnin 962 ,, Serpentbloom
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fly Ratchet >>飞往棘齿城
    .target Tal
    .dungeon WC
step
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervale
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 ,, Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1491 ,, Smart Drinks
    .target Mebok Mizzyrix
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fly Crossroads >> 飞往十字路口
    .target Bragok
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> 爬上山
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 ,, The Glowing Shard
    .target Falla
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
    >>|cFFFCDC00他们在哀嚎洞穴入口处上方的山洞内|r
    .turnin 1486 ,, Deviate Hides
    .goto Kalimdor,51.91,55.42
    .turnin 1487 ,, Deviate Eradication
    .goto Kalimdor,51.92,55.44
    .target Nalpak
    .target Ebru
    .dungeon WC
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
    .fly 烈日石居 >> 飞往烈日石居
    .zoneskip Stonetalon Mountains
    .target Devrak
    .dungeon WC
step << Warlock
    #completewith KayaLives
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
    .fly 烈日石居 >>飞往烈日石居
    .target Omusa Thunderhorn
    .zoneskip Stonetalon Mountains
    .dungeon !WC
step << !Warlock
    #completewith KayaLives
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
    .fp Thunder Bluff >> 开启雷霆崖飞行点 << !Tauren
    .fly 烈日石居 >>飞往烈日石居
    .target Tal
    .zoneskip Thunder Bluff,1
step
    .abandon 1486 ,, Deviate Hides
    .isOnQuest 1486
    .dungeon WC
step
    .abandon 1487 ,, Deviate Eradication
    .isOnQuest 1487
    .dungeon WC
step
    .abandon 1491 ,, Smart Drinks
    .isOnQuest 1491
    .dungeon WC
step
    .abandon 959 ,, Trouble at the Docks
    .isOnQuest 959
    .dungeon WC
step
    .abandon 914 ,, Leaders of the Fang
    .isOnQuest 914
    .dungeon WC
step
    .abandon 962 ,, Serpentbloom
    .isOnQuest 962
    .dungeon WC
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 ,, Kaya's Alive
    .target Tammra Windfield
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板杰卡|r
    >>|cRXP_WARN_不要在这里绑定炉石!!!|r
    >>|cRXP_BUY_购买|r|T133970:0|t[羊排] << Rogue/Warrior
    >>|cRXP_BUY_购买|r|T132796:0|t[果汁] << Priest/Mage
    >>|cRXP_BUY_购买|r|T133970:0|t[羊排]|cRXP_BUY_和|r|T132796:0|t[果汁] << Warlock/Shaman/Druid/Hunter
    .vendor >> 清理背包
    .collect 3770,40,895,1 << !Priest !Mage --Mutton Chop (40)
    .collect 1205,40,895,1 << !Rogue !Warrior --Melon Juice (40)
    .target Innkeeper Jayka
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_在旅店二楼|r|cRXP_BUY_对话|r|cRXP_FRIENDLY_基达|r
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134831:0|t[治疗药水] << !Warrior
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134413:0|t[活根草] << Warrior
    .target Jeeda
step
    #completewith InDeepTrouble2
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> 沿路爬上右边
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_苏纳曼|r和|cRXP_FRIENDLY_摩罗加尔|r
    .accept 6562 ,, Trouble in the Deeps
    .accept 6393 ,, Elemental War
    .goto Stonetalon Mountains,47.36,64.25
    .turnin 6421 ,, Boulderslide Ravine
    .accept 6481 ,, Earthen Arise
    .goto Stonetalon Mountains,47.21,64.05
    .target Tsunaman
    .target Mor'Rogal
    .isQuestComplete 6421
    .group
step
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩罗加尔|r
    .accept 6481 ,, Earthen Arise
    .target Mor'Rogal
    .isQuestTurnedIn 6421
    .group
step
    #label InDeepTrouble2
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 ,, Trouble in the Deeps
    .accept 6393 ,, Elemental War
    .target Tsunaman
step
    .goto Stonetalon Mountains,59.08,75.70
    >> 点击|cRXP_FRIENDLY_通缉告示|r
    .accept 6284 ,, Arachnophobia
    .group
step
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67
    >>击杀|cRXP_ENEMY_贝瑟莱斯|r. 拾取|cRXP_LOOT_贝瑟莱斯的牙齿|r
    >>|cRXP_WARN_清理干净周围的小怪再击杀她. 小心, 她能网住你10s!|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 3 >> 如果没有3人以上的队伍就不要尝试这个任务
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >> 前往滚岩峡谷然后进入北面的洞穴
    .group
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,59.50,90.40,40,0
    .goto Stonetalon Mountains,57.65,89.52
    >> 点击|cRXP_PICK_共鸣桶|r以召唤|cRXP_ENEMY_高戈罗克|r. 击杀他
    .complete 6481,1 --Goggeroc slain (1)
    .mob Goggeroc
    .group 2 >> 如果没有2人以上的队伍就不要尝试这个任务
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,58.24,89.81
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_跳上黄色蘑菇. 让你的角色看起来悬空然后登出并重新登入. 如果失败了就跑回烈日石居|r
    .link https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >> |cRXP_WARN_点击此处查看演示|r
    .group
    .isQuestComplete 6481
    --VV Jump logout required for it to work, remove if it doesn't work on new servers
step
    #completewith EarthenAriseTurnin
    .goto Stonetalon Mountains,49.38,61.68,50 >> 前往烈日石居
    .group
    .isQuestComplete 6481
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> 沿路往上前往左手边
    .group
    .isQuestComplete 6481
step
    #label EarthenAriseTurnin
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩罗加尔|r
    .turnin 6481 ,, Earthen Arise
    .target Mor'Rogal
    .isQuestComplete 6481
    .group
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_缚地者马格兰|r
	.turnin 6284 ,, Arachnophobia
    .target Maggran Earthbinder
	.isQuestComplete 6284
    .group
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >> 前往狂风峭壁
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1095 ,, Further Instructions
    .target Ziz Fizziks
step
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,30,0
    .goto Stonetalon Mountains,60.33,51.68,30,0
    .goto Stonetalon Mountains,59.66,52.14,30,0
    .goto Stonetalon Mountains,59.81,53.51,30,0
    .goto Stonetalon Mountains,60.98,54.06,30,0
    .goto Stonetalon Mountains,61.10,54.68,30,0
    .goto Stonetalon Mountains,61.58,55.10,30,0
    .goto Stonetalon Mountains,62.32,56.11,30,0
    .goto Stonetalon Mountains,62.99,56.25,30,0
    .goto Stonetalon Mountains,63.72,56.80,30,0
    .goto Stonetalon Mountains,64.37,56.47,30,0
    .goto Stonetalon Mountains,65.14,57.02,30,0
    .goto Stonetalon Mountains,65.74,57.20,30,0
    .goto Stonetalon Mountains,66.41,56.31,30,0
    .goto Stonetalon Mountains,66.94,56.25,30,0
    .goto Stonetalon Mountains,67.77,55.97,30,0
    .goto Stonetalon Mountains,68.52,56.04,30,0
    .goto Stonetalon Mountains,69.76,56.70,30,0
    .goto Stonetalon Mountains,70.52,56.22,30,0
    .goto Stonetalon Mountains,70.82,55.25,30,0
    .goto Stonetalon Mountains,59.66,52.14
    >>击杀|cRXP_ENEMY_XT:9|r. 它在河的南边巡逻
    >>|cFFFCDC00你不需要现在就完成这一步|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,30,0
    .goto Stonetalon Mountains,66.53,46.95,30,0
    .goto Stonetalon Mountains,65.72,45.09,30,0
    .goto Stonetalon Mountains,63.73,45.02,30,0
    .goto Stonetalon Mountains,63.72,45.92,30,0
    .goto Stonetalon Mountains,63.43,46.57,30,0
    .goto Stonetalon Mountains,64.43,46.13,30,0
    .goto Stonetalon Mountains,64.72,46.63,30,0
    .goto Stonetalon Mountains,64.82,47.72,30,0
    .goto Stonetalon Mountains,65.11,48.31,30,0
    .goto Stonetalon Mountains,65.98,48.67,30,0
    .goto Stonetalon Mountains,66.24,49.65,30,0
    .goto Stonetalon Mountains,66.65,49.58,30,0
    .goto Stonetalon Mountains,66.88,48.95,30,0
    .goto Stonetalon Mountains,68.41,49.58,30,0
    .goto Stonetalon Mountains,69.45,46.56,30,0
    .goto Stonetalon Mountains,70.22,48.62,30,0
    .goto Stonetalon Mountains,70.95,48.49,30,0
    .goto Stonetalon Mountains,71.41,45.54,30,0
    .goto Stonetalon Mountains,71.25,43.45,30,0
    .goto Stonetalon Mountains,64.82,47.23
    >>击杀|cRXP_ENEMY_XT:4|r. 它在河的北边巡逻
    >>|cFFFCDC00你不需要现在就完成这一步|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> 进入石爪小径
step
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_跳到你右边的白色石头上. 然后登出并重新登入|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab >> |cRXP_WARN_点击此处查看演示|r
    .zoneskip Ashenvale
step
	#completewith next
    .goto Ashenvale,11.96,34.28,80 >> 前往佐拉姆加前哨站
    >>|cRXP_WARN_确保躲开沿途的阿斯特兰纳卫兵|r
step
     #completewith next
    .goto Ashenvale,12.20,33.80
    .fp Zoram'gar Outpost >> 开启佐拉姆加前哨站飞行点
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_卡拉恩·阿玛卡|r, |cRXP_FRIENDLY_米苏瓦|r和|cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6562 ,, Trouble in the Deeps
    .accept 6563 ,, The Essence of Aku'Mai
    .goto Ashenvale,11.56,34.29
    .accept 216 ,, Between a Rock and a Thistlefur
    .goto Ashenvale,11.90,34.53
    .accept 6462 ,, Troll Charm
    .goto Ashenvale,11.65,34.85
    .accept 6442 ,, Naga at the Zoram Strand
    .goto Ashenvale,11.69,34.90
    .target Je'neu Sancrea
    .target Karang Amakkar
    .target Mitsuwa
    .target Marukai
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_卡拉恩·阿玛卡|r, |cRXP_FRIENDLY_米苏瓦|r和|cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6562 ,, Trouble in the Deeps
    .goto Ashenvale,11.56,34.29
    .accept 216 ,, Between a Rock and a Thistlefur
    .goto Ashenvale,11.90,34.53
    .accept 6462 ,, Troll Charm
    .goto Ashenvale,11.65,34.85
    .accept 6442 ,, Naga at the Zoram Strand
    .goto Ashenvale,11.69,34.90
    .target Je'neu Sancrea
    .target Karang Amakkar
    .target Mitsuwa
    .target Marukai
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格拉什|r
    >>|cRXP_WARN_这将开启护送任务. 注意! 这个任务比较难|r
    .accept 6641 ,, Vorsha the Lasher
    .target Muglash
    .group 2 >> 如果没有2人以上的队伍就不要尝试这个任务
step
    .goto Ashenvale,9.63,27.63
    >> 当你到达后点击|cRXP_PICK_火盆|r
    >>|cRXP_WARN_将会刷新数波|r|cRXP_ENEMY_娜迦|r|cRXP_WARN_. 注意|r |cRXP_ENEMY_‘鞭笞者’沃尔沙|r|cRXP_WARN_, 他攻击非常高|r
    >>|cRXP_WARN_你可以让|r|cRXP_FRIENDLY_穆格拉什|r|cRXP_WARN_先扛|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
    .group 2 >> 如果没有2人以上的队伍就不要尝试这个任务
step
    .loop 25,Ashenvale,10.86,26.99,11.23,25.73,11.83,25.75,12.51,24.09,14.18,24.03,14.85,23.08,14.13,20.77,14.73,19.56,14.59,17.90,13.38,16.39,13.62,14.48,14.15,15.31,15.88,15.42,15.40,16.96,15.22,18.81,15.33,20.78,15.33,22.51,15.32,24.90,14.76,25.52,14.62,26.49,14.52,28.25,13.55,29.36,12.41,29.15,11.22,31.04,10.38,29.60,11.01,28.57
    >>击杀|cRXP_ENEMY_怒尾纳迦|r. 拾取|cRXP_LOOT_怒尾纳迦的头颅|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    .goto Kalimdor,43.89,35.23,100 >> 前往黑暗深渊入口
    .isOnQuest 6563
    .group
step
    #completewith next
    >> 拾取墙上的|cRXP_PICK_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4 >> 如果没有4人以上的队伍就不要尝试这个任务
step
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,43.94,34.86
    >>击杀|cFFFF5722黑暗深渊海潮祭司|r. 拾取|T134332:0|t[|cFF00BCD4潮湿的便笺|r]并接受任务
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 ,, Allegiance to the Old Gods
    .mob Blackfathom Tide Priestess
    .use 16790
    .group 4 >> 如果没有4人以上的队伍就不要尝试这个任务
step
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11
    >> 拾取墙上的|cRXP_PICK_阿库麦尔蓝宝石|r
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4 >> 如果没有4人以上的队伍就不要尝试这个任务
step
    .loop 25,Ashenvale,10.86,26.99,11.23,25.73,11.83,25.75,12.51,24.09,14.18,24.03,14.85,23.08,14.13,20.77,14.73,19.56,14.59,17.90,13.38,16.39,13.62,14.48,14.15,15.31,15.88,15.42,15.40,16.96,15.22,18.81,15.33,20.78,15.33,22.51,15.32,24.90,14.76,25.52,14.62,26.49,14.52,28.25,13.55,29.36,12.41,29.15,11.22,31.04,10.38,29.60,11.01,28.57
    .xp 23 >> 升到23级
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 ,, The Essence of Aku'Mai
    .turnin 6564 ,, Allegiance to the Old Gods
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
    .isQuestComplete 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 ,, The Essence of Aku'Mai
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6564 ,, Allegiance to the Old Gods
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6564
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_战歌信差|r和|cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6641 ,, Vorsha the Lasher
    .goto Ashenvale,12.22,34.21
    .turnin 6442 ,, Naga at the Zoram Strand
    .goto Ashenvale,11.69,34.90
    .target Warsong Runner
    .target Marukai
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6442 ,, Naga at the Zoram Strand
    .target Marukai
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德鲁克|r
    .fly Orgrimmar >> 飞往奥格瑞玛
    .target Andruk
    .zoneskip Orgrimmar
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_甘卢尔·血眼|r
    .trainer >> 学习职业技能
    .turnin 1512 ,, Love's Gift
    .accept 1513 ,, The Binding
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >> 在召唤法阵内使用|T133290:0|t[多格兰的坠饰]
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>击杀|cRXP_ENEMY_召唤的魅魔|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_甘卢尔·血眼|r
    .turnin 1513 ,, The Binding
    .target Gan'rul Bloodeye
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡雷斯|r|cRXP_BUY_如果没有匕首就|r|cRXP_BUY_. 购买|r|T135640:0|t[双刃弯刀] 
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_申苏尔|r
    .train 8676 >> 学习|T132282:0|t[伏击]
    .train 1943 >> 学习|T132302:0|t[割裂]
    .train 1856 >> 学习|T132331:0|t[消失]
    .train 1725 >> 学习|T132289:0|t[扰乱]
    .train 1785 >> 学习|T132320:0|t[潜行 等级 2]
    .accept 2460 ,, The Shattered Salute
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>在|cRXP_FRIENDLY_申苏尔|r敬礼后, 选中他并输入/Salute
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_申苏尔|r
    .turnin 2460 ,, The Shattered Salute
    .accept 2458 ,, Deep Cover
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 购买|r|T134387:0|t[闪光粉]
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷里·格里斯高布|r
    .turnin 3923 ,, 雷里·格里斯高布
    .accept 3924 ,, 什么什么平衡器 Manual
    .target Rilli Greasygob
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. 购买|r|T135139:0|t[燃烧魔杖]
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
    .train 2138 >> 学习职业技能
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
    .train 2121 >> 学习职业技能
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.70,85.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在小屋的顶楼与|r|cRXP_FRIENDLY_皮菲瑞多|r对话
    .train 3567 >> 学习|T135759:0|t[传送: 奥格瑞玛]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .turnin 5642 ,, Shadowguard
    .trainer >> 学习职业技能
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .train 8103 >> 学习职业技能
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .train 3747 >> 学习职业技能
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,30,0
    .zone The Barrens >> 从西出口进入贫瘠之地
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >> 前往淤泥沼泽
step << Druid
    .goto The Barrens,56.67,8.32
    >> 点击|cRXP_PICK_奇怪的保险箱|r拾取|T133443:0|t[水兽敏捷坠饰]
    .collect 15883,1,3924,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	.use 8051 >> 选中|cRXP_FRIENDLY_监工费苏勒|r, 然后使用|T134536:0|t[信号枪]两次并输入/Salute
    >>|cRXP_WARN_小心! 他变绿前不要靠近他, 否则他会攻击你!|r
    .target Taskmaster Fizzule
step << Rogue
    #label MissionProbable
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_监工费苏勒|r
    .turnin 2458 ,, Deep Cover
    .accept 2478 ,, Mission: Possible But Not Probable
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,54.80,5.97
    >> 对|cRXP_ENEMY_工头希里克斯|r使用|T133644:0|t[偷窃], 偷取|cRXP_LOOT_希里克斯的塔楼钥匙|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_这里的每种怪都会受到特定技能的额外伤害|r
    >> 对|cRXP_ENEMY_变异风险投资公司闲工|r使用|T132282:0|t[伏击]
    >> 对|cRXP_ENEMY_风险投资公司巡逻员|r使用|T132302:0|t[割裂]
    >> 对|cRXP_ENEMY_风险投资公司看守者|r使用1星|T132292:0|t[剔骨]
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>跑进盗贼塔楼并击杀|cRXP_ENEMY_变异风险投资公司闲工|r, |cRXP_ENEMY_风险投资公司巡逻员|r和|cRXP_ENEMY_风险投资公司看守者|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .complete 2478,3 --Venture Co. Patroller (2)
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob Mutated Venture Co. Drone
    .mob Venture Co. Patroller
    .mob Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>你会在塔顶找到|cRXP_ENEMY_大工头普兹克·加里维克斯|r. 拾取|cRXP_LOOT_加里维克斯的头颅|r
    >>|cRXP_WARN_使用|r|T132282:0|t[伏击]|cRXP_WARN_把他打到半血. 使用|r|T132155:0|t[凿击]|cRXP_WARN_等待能量恢复然后使用|r|T136205:0|t[闪避]
	>>|cRXP_WARN_如果需要的话|r|cRXP_WARN_记得用血瓶和|r|T132819:0|t[菊花茶]
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >> 使用开锁技能打开|cRXP_PICK_加里维克斯的保险箱|r然后拾取|cRXP_LOOT_赞吉尔的改良药剂|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith SamophlangePages
    .goto The Barrens,61.33,4.21,120 >> 前往the Boulder Lode Mine
step << !Rogue/Druid
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >> 从西出口进入贫瘠之地
    .zoneskip The Barrens
    .isOnQuest 3924
step
    #completewith next
    >>击杀|cRXP_ENEMY_风险投资公司执行者|r和|cRXP_ENEMY_风险投资公司监督者|r. 拾取|cRXP_LOOT_主动式负载平衡器说明书正文|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages
    .goto The Barrens,60.90,3.84,20,0
    .goto The Barrens,59.99,4.13
    >>在矿洞后面击杀|cRXP_ENEMY_考博普拉格|r. 拾取|cRXP_LOOT_主动式负载平衡器说明书封面|r
    .collect 11147,1 --Samophlange Manual Cover (1)
    .mob Boss Copperplug
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages2
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43
    >>击杀|cRXP_ENEMY_风险投资公司执行者|r和|cRXP_ENEMY_风险投资公司监督者|r. 拾取|cRXP_LOOT_主动式负载平衡器说明书正文|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #requires SamophlangePages
    #requires SamophlangePages2
    >> 点击|T133735:0|t[主动式负载平衡器说明书封面]以制作|cRXP_LOOT_主动式负载平衡器说明书|r
    .complete 3924,1 -- Samophlange Manual
    .use 6626
step
    .goto The Barrens,60.00,4.09
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_跳到帐篷上. 然后登出并重新登入. 如果失败就跑回奥格瑞玛|r
    .link https://www.youtube.com/watch?v=cOxspH4RcI8&ab >> |cRXP_WARN_点击此处查看演示|r
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_申苏尔|r
    .turnin 2478 ,, Mission: Possible But Not Probable
    .accept 2479 ,, Hinott's Assistance
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 购买|r|T133849:0|t[蚀骨灰]|cRXP_BUY_和|r|T132793:0|t[空瓶]
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 8498 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
    .train 905 >> 学习职业技能
    .target Kardris Dreamseeker
    .xp <24,1
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷里·格里斯高布|r
    .turnin 3924 ,, Samophlange Manual
    .target Rilli Greasygob
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳什|r
    .train 197 >> 学习双手斧
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 6192 >> 学习职业技能
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 5308 >> 学习职业技能
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .train 14323 >> 学习职业技能
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
    .train 14262 >> 学习职业技能
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
    .train 24558 >> 学习宠物技能
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特拉克根|r|cRXP_BUY_. 购买|r|T135423:0|t[致命的飞斧]
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target K'waii
step
    .abandon 6421 ,, Boulderslide Ravine
    .isOnQuest 6421
step
    .abandon 4021 ,, Counterattack!
    .isOnQuest 4021
step
    .abandon 6481 ,, Earthen Arise
    .isOnQuest 6481
step
    .abandon 6284 ,, Arachnophobia
    .isOnQuest 6284
step
    .abandon 6641 ,, Vorsha the Lasher
    .isOnQuest 6641
step
    .abandon 6563 ,, The Essence of Aku'Mai
    .isOnQuest 6563
step
    #completewith next
    .zone Durotar >> 离开奥格瑞玛
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>爬上飞艇塔
    .zone Tirisfal Glades >>乘坐飞艇去提瑞斯法林地
    .zoneskip Tirisfal Glades

]])

