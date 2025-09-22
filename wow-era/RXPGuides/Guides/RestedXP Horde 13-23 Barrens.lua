local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde Warrior/Horde Shaman
#name 13-22 贫瘠之地
#version 1
#group RestedXP 部落 1-30
#defaultfor Shaman/Warrior
#next 22-25 希尔斯布莱德 / 南贫瘠之地;22-25 希尔斯布莱德丘陵 JJ

step << Tauren Shaman
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_LOOT_部落的新兵|r
step << Tauren Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,25 >>进入这里的洞穴
step << Tauren Shaman
    >>杀死火刃教徒，夺取钱袋
    .goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Tauren Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,20 >>离开洞穴
step << Tauren Shaman
    .goto The Barrens,62.2,19.4
>>对话: |cRXP_FRIENDLY_卡加尔·战痕|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
.target Kargal Battlescar
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
step << !Tauren
#xprate >1.499
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
step << !Tauren
#xprate >1.499
    #completewith next
    .goto The Barrens,52.3,32.0
    .vendor >>根据需要购买 6 格包
step << !Tauren
#xprate >1.499
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
step << Orc/Troll
#xprate >1.499
    .goto The Barrens,52.5,29.8
.target Zargh
>>对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.9,30.3
.target Gazrog
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.8
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.4
    .fp >>获取十字路口飞行路线
step << Orc/Troll
#xprate >1.499
    >>不要飞往奥格瑞玛
.goto The Barrens,51.5,30.3
>>对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
.target Devrak
    .accept 6384 >>接任务: |cRXP_LOOT_飞往奥格瑞玛|r
step << !Tauren
#xprate >1.499
.goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
        .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
step << Warrior
    .isOnQuest 1502
    .goto The Barrens,57.9,25.5,30 >>跑上山
step << Warrior
    >>去山顶
    .goto The Barrens,57.2,30.3
>>对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1502 >>交任务: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
.target Thun'grim Firegaze
    .accept 1503 >>接任务: |cRXP_LOOT_锻造好的钢锭|r
step << Warrior
    #sticky
    #completewith next
    .goto The Barrens,55.6,26.6
    >>杀死该区域内的野猪
    .complete 871,2 --钢鬃棘织者 (8)
    .complete 871,1 --钢鬃寻水者 (8)
    .complete 871,3 --钢鬃猎人 (3)
step << Warrior
    #label Steel
    >>抢劫灰色箱子里的锻钢棒
    .goto The Barrens,55.0,26.7
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #sticky
    #completewith next
    #requires Steel
    >>途中杀死一些平原行者。掠夺它们以获得喙 << !Tauren
    .complete 844,1 << !Tauren --Plainstrider Beak (7)
    .goto The Barrens,54.7,28.0,20 >>跑上山
step << Warrior
    #requires Steel
.goto The Barrens,57.2,30.3
.target Thun'grim Firegaze
>>对话: |cRXP_FRIENDLY_索恩格瑞姆·火眼|r
    .turnin 1503 >>交任务: |cRXP_FRIENDLY_锻造好的钢锭|r
step << Shaman
    #sticky
    >>杀死钢鬃兽并掠夺火焰焦油
    .complete 1525,1 --Fire Tar (1)
step
    #sticky
    #completewith next
    >>检查此位置是否有陈的空酒桶。拾取它并开始任务。否则您将在稍后获得它。
    .goto The Barrens,55.7,27.3,15,0
    .collect 4926,1,819,1 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
    .use 4926
--Add invisible automatic waypoint so user doesnt have to manually click it if it isnt there
step
    .goto The Barrens,55.6,26.6
    >>杀死该区域内的野猪
    .complete 871,2 --钢鬃棘织者 (8)
    .complete 871,1 --钢鬃寻水者 (8)
    .complete 871,3 --钢鬃猎人 (3)
step << !Tauren
    #completewith next
    .goto The Barrens,62.4,20.0
    .cooldown item,4986,<5m >>删除有瑕疵的能量石然后返回并再次拾取 Ak'Zeloth 旁边的紫色石头。
step << !Tauren
    .goto The Barrens,62.4,20.0
        .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
step << !Tauren
    #sticky
#completewith BeakCave
>>如果你有时间在有瑕疵的能量石上，在路上杀死一些平原行者。从他们身上掠夺喙
    .complete 844,1 --Plainstrider Beak (7)
step << !Tauren
    .isOnQuest 924
.goto The Barrens,50.4,22.0,50 >>跑上山
step << !Tauren
    .isOnQuest 924
    #label BeakCave
.goto The Barrens,47.6,19.2,30 >>前往被火刃兽人包围的洞穴
step << !Tauren
    >>右键点击祭坛
.goto The Barrens,48.0,19.1
.collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>杀死你看到的猛禽。掠夺它们以获得一些猛禽头 - 你稍后会得到更多
    .complete 869,1 --Raptor Head (12)
step << !Tauren
    >>杀死平原陆行鸟。掠夺它们的喙
.goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step << Tauren
    .goto The Barrens,55.7,24.0,40,0
    .goto The Barrens,53.8,23.1,40,0
        .goto The Barrens,52.1,21.1,40,0
    .goto The Barrens,51.3,22.9,40,0
    .goto The Barrens,48.3,23.5,40,0
    .goto The Barrens,49.8,31.2
    >>杀死平原陆行鸟。掠夺它们的喙
    .complete 844,1 --Plainstrider Beak (7)
step
    >>塔顶
.goto The Barrens,51.5,30.9
>>对话: |cRXP_FRIENDLY_索克|r
    .turnin 871 >>交任务: |cRXP_FRIENDLY_野猪人的袭击|r
.target Thork
    .accept 872 >>接任务: |cRXP_LOOT_野猪人的头目|r
.target Darsok Swiftdagger
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
step
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 844 >>交任务: |cRXP_FRIENDLY_平原陆行鸟的威胁|r
.target Sergra Darkthorn
    .accept 845 >>接任务: |cRXP_LOOT_斑马的威胁|r
step << Tauren Shaman
    .goto The Barrens,52.2,31.0
.target Sergra Darkthorn
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
step
    .goto The Barrens,52.0,29.9
    .home >>将炉石设定在十字路口
step << !Hunter !Rogue !Warlock !Mage !Priest
     #sticky
    #completewith next
    .money <0.75
    >>检查 Lizzarik（地精商人）是否在十字路口。如果在，购买药水和重刺狼牙棒。
    .unitscan Lizzarik
    .goto The Barrens,52.5,30.7,20,0
.collect 4778,1 --Collect Heavy Spiked Mace
step << Orc/Troll
#xprate <1.5
    .goto The Barrens,52.6,29.9
.target Zargh
>>对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
step
    .isOnQuest 872
    .goto The Barrens,57.1,25.3,250 >>跑到这里
step
    #sticky
    #completewith Crates
    >>杀死 Razomanes 并获取板条箱并杀死 Kreenig
    .complete 872,1 --钢鬃地卜师 (8)
    .complete 872,2 --钢鬃防御者 (8)
step
    #sticky
    #completewith Kreenig
>>掠夺在该区域发现的补给箱
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
>>杀死克里尼格·斯纳尔斯诺特。拾取他的獠牙
.goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .unitscan Kreenig Snarlsnout
step
#label Crates
>>抢夺该地区发现的板条箱
.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
.goto The Barrens,56.7,25.3
    >>杀死钢鬃兽
    .complete 872,1 --钢鬃地卜师 (8)
    .complete 872,2 --钢鬃防御者 (8)
step << Warrior
    >>在这里抢劫酒桶。如果酒桶还没复活，就等待它重生。
.goto The Barrens,55.8,20.0
.collect 4926,1,819 --Collect Chen's Empty Keg
.accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step << !Tauren !Undead
    #sticky
    #completewith next
    >>杀死你看到的所有斑马。掠夺它们以获得蹄子
    .complete 845,1 --Zhevra Hooves (4)
step << Tauren Warrior
    .goto The Barrens,56.7,19.8,60 >>跑到这里，沿途磨蹭怪物
step << !Tauren !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 924 >>交任务: |cRXP_FRIENDLY_恶魔之种|r
step << Shaman
    .goto Durotar,38.5,58.9
>>对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1525 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Telf Joolam
    .accept 1526 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
    .use 6636 >>跑到山顶。使用火之杖查看并杀死火元素。抢劫它们，然后点击火盆
.goto Durotar,39.0,58.2
    .complete 1526,1 --Glowing Ember (1)
step << Shaman
    .goto Durotar,38.9,58.2
    .turnin 1526 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
    .accept 1527 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
    #sticky
    #completewith next
    >>杀死你看到的所有斑马。掠夺它们以获得蹄子
    .complete 845,1 --Zhevra Hooves (4)
step << Shaman
    .goto The Barrens,55.9,19.9
.target Kranal Fiss
>>对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 1527 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
step << Shaman
     >>在这里抢劫酒桶。如果酒桶还没复活，就等待它重生。
    .goto The Barrens,55.8,20.0
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    >>杀死你看到的所有斑马。从它们身上搜刮蹄子。进入棘齿城之前，确保你有 4 只斑马
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>沿途向南前往 Ratchet 磨削中心。前往大楼顶层
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .accept 887 >>接任务: |cRXP_LOOT_南海海盗|r
step
    .goto The Barrens,63.1,37.1
    #completewith ratchetfp
    .fp Ratchet >>获取棘轮飞行路径
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .accept 894 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    #xprate <1.5
    .maxlevel 16
    .goto The Barrens,63.086,37.607
.target Crane Operator Bigglefuzz
>>对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >>接任务: |cRXP_LOOT_港口的麻烦|r
step
    .goto The Barrens,63.3,38.4
>>对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 1492 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.target Wharfmaster Dizzywig
    .accept 896 >>接任务: |cRXP_LOOT_矿工的宝贝|r
step
    >>点击通缉海报。如果您愿意，您也可以在这里进行银行业务
    .goto The Barrens,62.6,37.5
    .accept 895 >>接任务: |cRXP_LOOT_通缉：巴隆·朗绍尔|r
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 865 >>接任务: |cRXP_LOOT_迅猛龙角|r
step
    .goto The Barrens,62.3,38.4
>>对话: |cRXP_FRIENDLY_酿酒师德罗恩|r
    .turnin 819 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
.target Brewmaster Drohn
    .accept 821 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    #label rachetfp
    .goto The Barrens,62.05,39.41
    >>这里的5级鱼食超级便宜，快囤货吧 << Warrior/Rogue
    .vendor >>补充食物/水
step
    #sticky
    #completewith next
    >>杀死该区域内的南海暴徒
    .complete 887,1 --南海强盗 (12)
    .complete 887,2 --南海炮手 (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7
    >>在其中一个营地找到并杀死朗绍尔男爵。夺取他的头颅
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    >>消灭南海暴徒
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7
    .complete 887,1 --南海强盗 (12)
    .complete 887,2 --南海炮手 (6)
step << Druid
    >>前往: |cRXP_PICK_月光林地|r
    .goto Moonglade,52.4,40.6
    .trainer 12042 >>训练法术
step
    #completewith next
    .hs >>从炉边到十字路口
    .cooldown item,6948,>0
step
    .goto The Barrens,51.5,30.8
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .turnin 5041 >>交任务: |cRXP_FRIENDLY_十字路口的补给品|r
    .turnin 872 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 899 >>接任务: |cRXP_LOOT_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
step
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 845 >>交任务: |cRXP_FRIENDLY_斑马的威胁|r
.target Sergra Darkthorn
    .accept 903 >>接任务: |cRXP_LOOT_草原上的徘徊者|r
step
    #sticky
    #completewith next
>>杀死平原行者。掠夺他们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
step << !Tauren
#xprate >1.499
    #sticky
    #completewith next
    >>收集被遗忘之池周围的白色蘑菇。尽量避免遇到怪物。
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate >1.499
>>潜入水下气泡裂缝处
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
#xprate >1.499
>>收集被遗忘之池周围的白色蘑菇。尽量避免遇到怪物。
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step
>>杀死科多巴恩。夺取他的头颅。沿途消灭怪物。
.goto The Barrens,42.8,23.5
    .complete 850,1 --Kodobane's Head (1)
step
    #sticky
    #completewith Claws
    >>杀死你看到的猛禽。从它们身上掠夺一些猛禽头颅——不要担心完成任务，你稍后会得到更多
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith Claws
    #label Tusks
.goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
.goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
>>杀死潜行者。掠夺他们的爪子和獠牙
.goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
#hidewindow
    #requires Claws
step
    #requires Tusks
.goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
.goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1
    >>杀死鹰身女妖。掠夺她们的利爪
    .complete 867,1 --Witchwing Talon (8)
step
    >>杀死平原陆行鸟和迅猛龙
    .complete 821,2 --Plainstrider Kidney (5)
    .complete 865,1,3 --Intact Raptor Horn (5)
    .complete 869,1 --Raptor Head (12)
--NEEDS WAYPOINTS. Don't use &, use "and" (can always discuss and we can find and replace one or the other). Remove "in the area" from now on
step
    >>点击控制台
    .goto The Barrens,52.4,11.6
    .turnin 894 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 900 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    >>单击阀门
.goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>点击阀门。怪物将会生成
.goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
step
    >>点击阀门。怪物将会生成
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>点击控制台
.goto The Barrens,52.4,11.6
    .turnin 900 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 901 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    >>杀死建筑中的修补匠 Sniggles。从他身上搜刮出控制台钥匙
.goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
    .unitscan Tinkerer Sniggles
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 902 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    >>接任务: |cRXP_LOOT_打火钥匙|r from the Shredder. If someone recently started the escort you'll need to wait for him to respawn.
.goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>对话: |cRXP_FRIENDLY_维兹克兰克的伐木机|r
    .accept 858 >>接任务: |cRXP_LOOT_打火钥匙|r
step
    >>杀死主管 Lugwizzle（他巡视整个塔楼）。从他身上搜刮点火钥匙
.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
    .unitscan Supervisor Lugwizzle
step
    >>护送将开始。准备好后即可开始。
.goto The Barrens,56.5,7.5
>>对话: |cRXP_FRIENDLY_维兹克兰克的伐木机|r
    .turnin 858 >>交任务: |cRXP_FRIENDLY_打火钥匙|r
.target Wizzlecrank's Shredder
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
step
    #label Slugs
>>某个时间点会出现 2 个怪物。杀死它们，然后等待最后的角色扮演活动。角色扮演大约需要 20 秒。
.goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    .goto The Barrens,55.8,6.2,40,0
    .goto The Barrens,57.2,6.6,40,0
    .goto The Barrens,60.0,7.6,40,0
    .goto The Barrens,60.8,10.6,40,0
    .goto The Barrens,60.4,1.2,40,0
    .goto The Barrens,61.2,13.2
    >>杀死平原行者。掠夺他们的肾脏
    >>杀死猛禽。掠夺它们的角和头
    *They both share respawns
    .complete 821,2 --Plainstrider Kidney (5)
    .complete 865,1 --Intact Raptor Horn (5)
    .complete 869,1 --Raptor Head (12)
step
    >>磨碎该区域的怪物。掠夺它们直到猫眼翡翠掉落
.goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
    .goto Orgrimmar,11.5,67.0,50 >>跑向奥格瑞玛西入口
step << Orc/Troll
#xprate >1.499
    .goto Orgrimmar,54.2,68.6
>>对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
.target Innkeeper Gryshka
    .accept 6385 >>接任务: |cRXP_LOOT_双足飞龙管理员多拉斯|r
step << Orc/Troll
#xprate >1.499
    .goto Orgrimmar,45.120,63.889
     >>交任务但不要飞回十字路口
>>对话: |cRXP_FRIENDLY_多拉斯|r
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
.target Doras
    .accept 6386 >>接任务: |cRXP_LOOT_返回十字路口|r
step << Tauren/Undead/BloodElf
    #completewith next
    >>跑向飞行管理员塔。获取飞行路径
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >>获取奥格瑞玛飞行路线
step
    >>靠近左边。跑向格罗玛什要塞
.goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>对话: |cRXP_FRIENDLY_佐尔·孤树|r
    .accept 1061 >>接任务: |cRXP_LOOT_石爪之灵|r
step << Paladin
    #completewith next
    .goto Orgrimmar,32.272,35.794
    .trainer >>去训练你的职业法术
step << Shaman
    .goto Orgrimmar,38.8,36.4
.train 8045 >>列车地球冲击 r3
.train 8019 >>训练 Rockbiter 武器 r3
.train 325 >>训练闪电盾 r2
.train 526 >>训练解毒
.train 8154 >>训练石肤图腾 r2
step << Shaman
.goto Orgrimmar,31.62,37.82
.target Thrall
>>对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
step << Warrior
    .goto Orgrimmar,80.391,32.384
    .train 1160 >>训练挫志怒吼 r1
    .train 285 >>训练英雄打击 r3
step
    #completewith next
    .hs >>从炉边到十字路口
    .cooldown item,6948,>0
step
    .goto The Barrens,51.9,30.3
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
.target Gazrog
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
step
    >>塔顶
.goto The Barrens,51.6,30.9
.target Darsok Swiftdagger
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
step
#xprate <1.5
    .maxlevel 17
    .goto The Barrens,51.6,30.9
.target Darsok Swiftdagger
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .accept 875 >>接任务: |cRXP_LOOT_鹰身人首领|r
step << !Tauren
#xprate >1.499
    .goto The Barrens,52.2,31.8
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
.target Tonga Runetotem
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
step
    .goto The Barrens,52.3,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
.target Sergra Darkthorn
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
step << Orc/Troll
#xprate >1.499
    .goto The Barrens,52.6,29.9
.target Zargh
>>对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
step
#xprate <1.5
    .isOnQuest 875
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2,40,0
.goto The Barrens,39.8,17.3,40,0
    .goto The Barrens,37.4,15.8,40,0
    .goto The Barrens,40.3,15.2
    >>杀死女巫之翼屠夫。掠夺他们以获得鹰身女妖中尉戒指
    .complete 875,1 --Harpy Lieutenant 戒指 (6)
step
    #label LionTusks
.goto The Barrens,54.3,14.7
    >>杀死该地区的草原徘徊者。掠夺他们的獠牙
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .use 10327 >>使用背包中的埃奇亚基之角召唤埃奇亚基。杀死他并掠夺他的皮
.goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    >>回到十字路口
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
.target Sergra Darkthorn
    .accept 905 >>接任务: |cRXP_LOOT_狂暴的镰爪龙|r
step
#xprate <1.5
    .isOnQuest 875
    >>塔顶
.goto The Barrens,51.6,30.9
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
.target Darsok Swiftdagger
    .accept 876 >>接任务: |cRXP_LOOT_塞瑞娜·血羽|r
step
    #completewith next
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>飞往棘齿城
step
    >>前往 Ratchet
    .goto The Barrens,63.0,37.2
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
.target Sputtervalve
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
step
    .goto The Barrens,62.7,36.3
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 887 >>交任务: |cRXP_FRIENDLY_南海海盗|r
.target Gazlowe
    .accept 890 >>接任务: |cRXP_LOOT_丢失的货物|r
    .turnin 895 >>交任务: |cRXP_FRIENDLY_通缉：巴隆·朗绍尔|r
step
    .goto The Barrens,63.3,38.4
>>对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
    .turnin 890 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
.target Wharfmaster Dizzywig
    .accept 892 >>接任务: |cRXP_LOOT_丢失的货物|r
step
    .goto The Barrens,62.7,36.3
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 892 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
.target Gazlowe
    .accept 888 >>接任务: |cRXP_LOOT_被窃的货物|r
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 1069 >>接任务: |cRXP_LOOT_深苔蜘蛛的卵|r
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .accept 1491 >>接任务: |cRXP_LOOT_智慧饮料|r
step
    >>抢劫箱子
.goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>抢劫箱子
.goto The Barrens,62.6,49.6
    .complete 888,1 --Shipment of Boots (1)
step
    .isOnQuest 865
.goto The Barrens,57.4,52.4,50 >>在前往猛禽之地的途中磨练
step
    #sticky
    #completewith Nest
    >>杀死你看到的任何猛禽。掠夺它们的角和羽毛。离开前你需要 3 根羽毛
    *Be careful as the raptors have a thrash ability.
    .collect 5165,3 --Sunscale Feather (3)
step
    >>抢劫宝箱，获取偷来的银币
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    >>点击水下的气泡裂缝
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
    #label nestegg
    >>收集 3 根阳鳞羽毛，用于建造三个猛禽巢穴
    .collect 5165,3,905,0x3,-1
step
    >>点击蛋。你需要迅猛龙的阳鳞羽毛
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>点击蛋。你需要迅猛龙的阳鳞羽毛
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>点击蛋。你需要迅猛龙的阳鳞羽毛
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    >>与曼科里克的妻子交谈
.goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
    .skipgossip
step << Shaman/Warrior
    #xprate >1.4999
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
    .accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
    .target Tatternack Steelforge
step
    .goto The Barrens,45.6,59.0
    #completewith next
    .home >>将你的炉石设为陶拉祖营地
step
    .goto The Barrens,45.6,59.0
    .vendor >>补充食物和水，前面有一个艰难的任务部分
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>对话: |cRXP_FRIENDLY_碎牙|r
    .accept 878 >>接任务: |cRXP_LOOT_野猪人的内战|r
step
    .goto The Barrens,44.5,59.2
    #completewith next
    .fly Crossroads >>飞往十字路口
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 3281 >>交任务: |cRXP_FRIENDLY_被偷走的银币|r
step
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 905 >>交任务: |cRXP_FRIENDLY_狂暴的镰爪龙|r
.target Sergra Darkthorn
    .accept 3261 >>接任务: |cRXP_LOOT_乔恩·星眼|r
step
    .goto The Barrens,52.2,31.9
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 877 >>交任务: |cRXP_FRIENDLY_死水绿洲|r
.target Tonga Runetotem
    .accept 880 >>接任务: |cRXP_LOOT_变异的生物|r
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .turnin 4921 >>交任务: |cRXP_FRIENDLY_在战斗中失踪|r
step
    .goto The Barrens,46.1,36.7,35 >>进入 WC 洞穴。
    .isOnQuest 959
step
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.0,55.4,20,0
    .goto Kalimdor,52.2,55.2,35,0
    .goto Kalimdor,51.8,54.8,20,0
    .goto Kalimdor,52.2,55.2
    >>寻找疯狂的马格利什（妖精）。他处于潜行状态，有多个刷新点。杀死他并掠夺 99 年陈酿波特酒
    .complete 959,1 --Collect 99-Year-Old Port (1)
    .unitscan Mad Magglish
    .isOnQuest 959
step
    .goto Kalimdor,51.9,54.9,20 >>进入洞穴深处
    .isOnQuest 1491
step
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
    .goto Kalimdor,52.1,54.5,30,0
    .goto Kalimdor,52.3,54.6,30,0
    .goto Kalimdor,52.4,55.1,30,0
    .goto Kalimdor,52.8,54.8,30,0
    .goto Kalimdor,52.6,54.5,30,0
	.goto Kalimdor,52.6,54.5
    >>杀死 Ectoplasms 获得哀嚎精华。留意洞穴深处的 2 个稀有物品（Trigore 和 Boahn），因为它们可以掉落蓝色 BoE 武器。
    .complete 1491,1 --Wailing Essence (6)
    .unitscan Trigore the Lasher
    .unitscan Boahn
    .isOnQuest 1491
step
    >>返回 Kolkar 前哨
    .goto The Barrens,45.4,28.4
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .isOnQuest 850
step
#xprate <1.5
    >>杀死塞丽娜·血羽。夺取她的头颅
.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
    >>前往石爪山
    .isOnQuest 1061
.target Seereth Stonebreak
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
step
    .goto The Barrens,35.3,27.9
.target Seereth Stonebreak
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
step
    .maxlevel 22
    .goto The Barrens,35.3,27.9
    >>前往石爪山
.target Makaba Flathoof
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6548 >>接任务: |cRXP_LOOT_为我的村庄复仇|r
step
    .isOnQuest 6548
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0
    >>消灭该区域内的恐怖图腾
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .isOnQuest 6548
    .goto The Barrens,35.191,27.791
    >>回到贫瘠之地找任务给予者
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 >>交任务: |cRXP_FRIENDLY_为我的村庄复仇|r
.target Makaba Flathoof
    .accept 6629 >>接任务: |cRXP_LOOT_杀死格鲁迪格·暗云|r
step
.goto Stonetalon Mountains,82.3,98.5,40 >>跑到山上
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>对话: |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接任务: |cRXP_LOOT_盗窃的蜘蛛|r
step
    #sticky
    #completewith next
    .isOnQuest 6629
    .goto Stonetalon Mountains,71.7,86.7,40 >>跑到这里
step
    .isOnQuest 6629
    >>在开始里面的任务之前，一定要杀死所有 6 个野兽。杀死主帐篷前的 Grundig
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>开始 Kaya 护航
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>对话: |cRXP_FRIENDLY_卡雅·扁蹄|r
    .accept 6523 >>接任务: |cRXP_LOOT_保护卡雅|r
    .isOnQuest 6629
step
       >>护送卡娅并待在她身边。篝火旁会出现 3 个恐怖图腾。在她到达营地之前吃点东西喝点水
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .isOnQuest 6523
step
    #sticky
    #completewith next
    >>在前往通缉令的途中杀死深苔爬行者。您不必现在完成任务。
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
step
    >>单击路上的通缉海报
    .goto Stonetalon Mountains,59.0,75.7
    .accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
step
    .goto Stonetalon Mountains,57.5,76.2,30 >>沿着这里的小路跑到西希尔峡谷
step
    #sticky
    #label deepmossegg
    #completewith spiderend
    >>点击树附近的蜘蛛蛋。小心，因为怪物可能会从蛋里产生
    .complete 1069,1 --Collect Deepmoss Egg (x15)
    .isOnQuest 1069
step
    #sticky
    #label besseleth
    #completewith spiderend
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    >>杀死并掠夺贝塞莱斯的尖牙
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .isOnQuest 6284
step
    >>杀死该区域的深苔蜘蛛和贝塞莱斯。夺取贝塞莱斯的尖牙
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2,40,0
    .goto Stonetalon Mountains,54.7,71.9,40,0
    .goto Stonetalon Mountains,52.6,71.8,40,0
    .goto Stonetalon Mountains,52.2,75.6,40,0
    .goto Stonetalon Mountains,53.9,74.2
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .isOnQuest 6461
step
    #label spiderend
    >>前往山后的妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1483 >>交任务: |cRXP_FRIENDLY_菲兹克斯|r
    .isOnQuest 1483
step
    >>前往山后的妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
step
    #sticky
    #completewith next
    >>在寻找操作员以获取蓝图时杀死伐木工
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    >>杀死风险投资公司操作员直到获得蓝图
.goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>杀死伐木工
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .isOnQuest 1062
step
    .goto Stonetalon Mountains,58.989,62.599
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1093 >>交任务: |cRXP_FRIENDLY_超级收割机6000|r
.target Ziz Fizziks
    .accept 1094 >>接任务: |cRXP_LOOT_新的指示|r
step << Druid
    #requires deepmossegg
    >>前往: |cRXP_PICK_月光林地|r
    .goto Moonglade,52.4,40.6
    .trainer 12042 >>训练法术
step
    #requires deepmossegg
    #completewith next
    .hs >>炉火之源至陶拉祖营地
step
    #label eggend
    .goto The Barrens,44.9,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 >>交任务: |cRXP_FRIENDLY_乔恩·星眼|r
.target Jorn Skyseer
    .accept 882 >>接任务: |cRXP_LOOT_伊沙姆哈尔|r
step
    #sticky
    #label Lizard
    >>杀死风暴烈酒。搜刮它们，获得一只角
    .complete 821,3 --Thunder Lizard Horn (1)
step
    #sticky
    #label Lakota1
    #completewith next
    .goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
    .use 5099 >>在该地区附近找到拉科塔曼尼（灰色科多兽）并将其杀死。拾取他的蹄子。如果找不到他，请跳过此任务。
    .collect 5099,1,883 --Collect Hoof of Lakota'Mani
    .accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
    .unitscan Lakota'mani
step
    >>杀死大量的野猪。尽可能优先杀死织荆者、寻水者和占卜师。掠夺他们的獠牙。保存你得到的血碎片
    *Water Seekers only spawn in the south western most camps. Go East or North West for Geomancers / Thornweavers.
    .goto The Barrens,51.4,57.7,50,0
    .goto The Barrens,51.4,54.7,50,0
    .goto The Barrens,52.7,52.9
.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
--30 yards is too low for something like this
step
    #requires Lizard
    >>绕湖一圈，杀死乌龟。掠夺它们的壳
.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
    >>杀死该区域的一只斑马。拾取它以获得尸体
.goto The Barrens,61.0,32.2
.collect 10338,1 --Collect Fresh Zhevra Carcass
step
    .use 10338 >>使用枯树上的新鲜斑马尸体召唤伊沙姆哈勒。杀死他并夺取他的尖牙
.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>跑回 Ratchet
.goto The Barrens,62.7,36.3
.target Gazlowe
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 888 >>交任务: |cRXP_FRIENDLY_被窃的货物|r
step
    .goto The Barrens,63.0,37.2
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
.target Sputtervalve
    .accept 1095 >>接任务: |cRXP_LOOT_新的指示|r
step
    .isOnQuest 959
    .goto The Barrens,63.086,37.607
.target Crane Operator Bigglefuzz
>>对话: |cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >>交任务: |cRXP_FRIENDLY_港口的麻烦|r
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
    .turnin 1491 >>交任务: |cRXP_FRIENDLY_智慧饮料|r
step
    #completewith next
    .destroy 5570 >>摧毁: |cRXP_ENEMY_深苔蜘蛛的卵|r
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>对话: |cRXP_FRIENDLY_酿酒师德罗恩|r
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
step << Warrior
    .goto The Barrens,62.2,38.4
    .vendor >>查看 Grazlix 的 Mighty Chain Pants。如果你有钱就买。
step << Druid/Rogue/Warrior/Hunter/Shaman
    .goto The Barrens,62.2,38.5
    .vendor >>在 Vexspindle 上寻找狼护腕。如果你有钱的话就买吧
step
    .goto The Barrens,63.1,37.1
    #completewith next
    .fly Crossroads >>飞往十字路口
step
#xprate <1.5
    >>塔顶
.goto The Barrens,51.6,30.9
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 876 >>交任务: |cRXP_FRIENDLY_塞瑞娜·血羽|r
.target Darsok Swiftdagger
    .accept 1060 >>接任务: |cRXP_LOOT_写给金吉尔的信|r
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .turnin 899 >>交任务: |cRXP_FRIENDLY_复仇的怒火|r
step
    .goto The Barrens,52.2,31.9
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 880 >>交任务: |cRXP_FRIENDLY_变异的生物|r
.target Tonga Runetotem
    .accept 1489 >>接任务: |cRXP_LOOT_哈缪尔·符文图腾|r
    .accept 3301 >>接任务: |cRXP_LOOT_茉拉·符文图腾|r
step
    #completewith camptflight
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>飞往陶拉霍营地
step
    .goto The Barrens,53.0,52.1
    >>杀死野猪获得血碎片
.collect 5075 --Collect Blood Shard (1)
step
    #label camptflight
    .goto The Barrens,44.6,59.2
>>对话: |cRXP_FRIENDLY_碎牙|r
    .turnin 878 >>交任务: |cRXP_FRIENDLY_野猪人的内战|r
.target Mangletooth
    .accept 5052 >>接任务: |cRXP_LOOT_阿迦玛甘的血岩碎片|r
    .turnin 5052 >>交任务: |cRXP_FRIENDLY_阿迦玛甘的血岩碎片|r
    .accept 879 >>接任务: |cRXP_LOOT_内奸|r
step
    .isOnQuest 883
.goto The Barrens,44.8,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
.target Jorn Skyseer
    .accept 907 >>接任务: |cRXP_LOOT_被激怒的雷霆蜥蜴|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
    .accept 1130 >>接任务: |cRXP_LOOT_梅洛的关注|r
    .accept 6382 >>接任务: |cRXP_LOOT_灰谷狩猎|r
step
    .goto The Barrens,44.8,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
.target Jorn Skyseer
    .accept 907 >>接任务: |cRXP_LOOT_被激怒的雷霆蜥蜴|r
    .accept 1130 >>接任务: |cRXP_LOOT_梅洛的关注|r
    .accept 6382 >>接任务: |cRXP_LOOT_灰谷狩猎|r
step
#sticky
#label Owatanka2
.goto The Barrens,44.2,62.1,75,0
.goto The Barrens,49.2,62.6,75,0
.goto The Barrens,49.6,60.0,75,0
.goto The Barrens,44.2,62.1,75,0
.goto The Barrens,49.2,62.6,75,0
.goto The Barrens,49.6,60.0
>>在该区域周围搜索 Owatanka（蓝色雷霆蜥蜴）。如果找到他，就拾取他的尾刺并开始任务。如果找不到他，就跳过此任务
.collect 5102,1,884 --Collect Owatanka's Tailspike
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
    .unitscan Owatanka
step
.goto The Barrens,42.5,60.3,50,0
    .goto The Barrens,47.1,63.7,50,0
    .goto The Barrens,50.0,61.1
>>杀死雷霆蜥蜴。掠夺它们的血液
    .complete 907,1 --Thunder Lizard Blood (3)
step
    #requires Owatanka2
.goto The Barrens,44.9,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
.target Jorn Skyseer
    .accept 913 >>接任务: |cRXP_LOOT_雷鹰的嘶鸣|r
step
    .isOnQuest 884
.goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
step
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6,30,0
.goto The Barrens,44.8,63.2,30,0
.goto The Barrens,47.0,61.6
    >>杀死一只雷鹰。夺取它的翅膀
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
.target Jorn Skyseer
    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
step
#xprate <1.5
    .goto The Barrens,44.5,59.1
    #completewith next
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step
#xprate >1.499
    .goto Thunder Bluff,45.814,64.711
    #completewith next
    >>步行到雷霆崖。
    .home >>将炉石设置为雷霆崖
step
#xprate <1.5
    .goto Thunder Bluff,45.814,64.711
    #completewith next
    .home >>将炉石设置为雷霆崖
step << Warrior wotlk
	.train 198 >>训练 1h 狼牙棒
    .goto Thunder Bluff,40.93,62.71
    .vendor >>购买连枷
    .collect 925,1
    .goto Thunder Bluff,53.20,58.27
step << Warrior tbc/Shaman
    #sticky
    #completewith next
    +如果便宜的话，从拍卖行买一把绿色双手钉头锤。如果你要去哀嚎洞穴，可以跳过这一步，任务人员会更好。
step << Warrior tbc/Shaman
    .goto Thunder Bluff,53.2,58.2
    .vendor >>购买大锤
    .collect 924,1
step
    .goto Thunder Bluff,61.538,80.919
    .turnin -1130 >>交任务: |cRXP_FRIENDLY_梅洛的关注|r
.target Melor Stonehoof
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
step << Warrior
    .goto Thunder Bluff,57.243,87.372
.target Sorek
>>对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1823 >>接任务: |cRXP_LOOT_和鲁迦交谈|r
    .train 845 >>列车
    .train 6547 >>列车 Rend r3
    .train 20230 >>火车报复
step
    .goto Thunder Bluff,54.7,51.1
.target Zangen Stonehoof
>>对话: |cRXP_FRIENDLY_赞金·石蹄|r
    .accept 1195 >>接任务: |cRXP_LOOT_神圣之火|r
step << Shaman
    .goto Thunder Bluff,23.6,19.1
.target Xanis Flameweaver
>>对话: |cRXP_FRIENDLY_萨尼斯·织火|r
    .accept 1529 >>接任务: |cRXP_LOOT_水之召唤|r
.train 8004 >>训练小型治疗波
.train 6363 >>训练灼热图腾 r2
.train 913 >>训练治疗波 r4
.train 8052 >>列车火焰冲击 r2
.train 6390 >>训练石爪图腾 r2
.train 8056 >>训练冰霜冲击
step
    #completewith next
    .goto Thunder Bluff,47.003,49.832
    .fly Crossroads >>飞往十字路口
step << !Tauren
#xprate >1.499
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
step
    .goto The Barrens,35.3,27.9
    .isOnQuest 1062
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
.target Seereth Stonebreak
    .accept 1063 >>接任务: |cRXP_LOOT_长者|r
step
    .goto The Barrens,35.3,27.9
    .isQuestTurnedIn 1062
.target Seereth Stonebreak
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .accept 1063 >>接任务: |cRXP_LOOT_长者|r
step
    .isOnQuest 6629
    .goto The Barrens,35.3,27.9
.target Makaba Flathoof
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
step
    .isOnQuest 6523
    .goto The Barrens,35.3,27.9
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
.target Makaba Flathoof
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
step
    .isOnQuest 1060
    >>再次上山，然后进入洞穴
.goto Stonetalon Mountains,74.5,97.8
.target Witch Doctor Jin'Zil
>>对话: |cRXP_FRIENDLY_巫医金吉尔|r
    .turnin 1060 >>交任务: |cRXP_FRIENDLY_写给金吉尔的信|r
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>对话: |cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 >>交任务: |cRXP_FRIENDLY_盗窃的蜘蛛|r
step
#xprate >1.499
    .isOnQuest 1095
    >>前往山后的妖精小屋
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
step
#xprate <1.5
    >>前往 Sun Rock Retreat
    >>到达 Sun Rock 后，沿着左侧的山路向上走
    .goto Stonetalon Mountains,49.0,62.8,40,0
    .goto Stonetalon Mountains,47.3,64.2
.target Tsunaman
>>对话: |cRXP_FRIENDLY_苏纳曼|r
    .accept 6562 >>接任务: |cRXP_LOOT_帮助耶努萨克雷|r
    .maxlevel 24
step
    .goto Stonetalon Mountains,47.2,61.1
.target Maggran Earthbinder
>>对话: |cRXP_FRIENDLY_马格兰|r
    .turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
    .isQuestComplete 6284
step
    .goto Stonetalon Mountains,47.5,58.3
.target Tammra Windfield
>>对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
    .isOnQuest 6401
step
    .goto Stonetalon Mountains,45.1,59.8
    .fp Sun Rock >>获取 Sun Rock Retreat 飞行路线
step
    .isOnQuest 1095
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
step
#xprate <1.5
    #sticky
    #completewith next
    .goto Stonetalon Mountains,78.2,42.8,30 >>前往 Talondeep Path
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,42.3,71.0,20 >>穿过洞穴前往灰谷
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,16.3,29.8,90 >>前往佐拉姆加前哨站。途中务必避开阿斯特兰纳守卫
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,12.3,33.8
    .fp Zoram >>获取 Zoram'gar Outpost 飞行路径
    .maxlevel 22
step
#xprate <1.5
    .goto Ashenvale,11.8,34.7
.target Karang Amakkar
>>对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
    .accept 216 >>接任务: |cRXP_LOOT_蓟皮熊怪的麻烦|r
    .maxlevel 22
step
#xprate <1.5
    >>与小屋里的巨魔交谈
    .goto Ashenvale,11.6,34.9
.target Marukai
>>对话: |cRXP_FRIENDLY_玛鲁凯|r
    .accept 6442 >>接任务: |cRXP_LOOT_佐拉姆海岸的纳迦|r
.target Mitsuwa
>>对话: |cRXP_FRIENDLY_米苏瓦|r
    .accept 6462 >>接任务: |cRXP_LOOT_巨魔符咒|r
    .maxlevel 22
step
#xprate <1.5
    .isOnQuest 6562
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6562 >>交任务: |cRXP_FRIENDLY_帮助耶努萨克雷|r
step
#xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .accept 6563 >>接任务: |cRXP_LOOT_阿库麦尔水晶|r
    .maxlevel 22
step
#xprate <1.5
    >>接受此任务即可开始护送。跟随他
    .goto Ashenvale,12.1,34.4
.target Muglash
>>对话: |cRXP_FRIENDLY_穆格拉什|r
    .accept 6641 >>接任务: |cRXP_LOOT_鞭笞者沃尔沙|r
    .maxlevel 22
step
#xprate <1.5
    #sticky
    #label wrathtailhead
    >>杀死海滩周围的纳迦。掠夺他们的头颅
    .goto Ashenvale,15.5,17.1
    .complete 6442,1 --Collect Wrathtail Head (x20)
    .isOnQuest 6442
step
#xprate <1.5
    >>点击火盆。一波波的纳迦会出现。一旦沃沙出现，让穆格拉什积攒仇恨，然后再与他战斗。
    .goto Ashenvale,9.8,27.4
    .complete 6641,1 --Defeat Vorsha the Lasher
    .isOnQuest 6641
step
#xprate <1.5
    .goto Ashenvale,14.2,14.7,40 >>掉进黑暗深渊
    .isOnQuest 6442
step
#xprate <1.5
    #sticky
    #label Sapphires
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    >>在水下游泳，进入黑暗深渊。杀死女祭司，直到掉落一张潮湿的纸条（任务）。然后右键单击它并接受任务。
    .collect 16790,1,6564 --Collect Damp Note
    .accept 6564 >>接任务: |cRXP_LOOT_上古之神的仆从|r
    .isOnQuest 6442
    .use 16790
step
#xprate <1.5
    >>从隧道墙壁上掠夺蓝宝石。
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0,30,0
    .goto Ashenvale,13.0,13.2,30,0
    .goto Ashenvale,13.6,9.0
    .complete 6563,1 --Collect Sapphire of Aku'Mai (x20)
    .isOnQuest 6563
step
    #xprate <1.5
    .xp 21+14175 >>升级至 14175+/22400xp
    .isOnQuest 6641
step
    #requires Sapphires
    #xprate <1.5
    #label zoramend
    #requires wrathtailhead
    >>返回佐拉姆加前哨站。
    .goto Ashenvale,12.223,34.216
.target Warsong Runner
>>对话: |cRXP_FRIENDLY_战歌信使|r
    .turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
    .isOnQuest 6641
step
    #xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
    .isOnQuest 6553
step
    #xprate <1.5
    #sticky
    #completewith next
    .destroy 16784 >>摧毁: |cRXP_ENEMY_阿库麦尔蓝宝石|r
step
#xprate <1.5
    .goto Ashenvale,11.6,34.3
.target Je'neu Sancrea
>>对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
    .isOnQuest 6564
step
#xprate <1.5
    .goto Ashenvale,11.689,34.905
.target Marukai
>>对话: |cRXP_FRIENDLY_玛鲁凯|r
    .turnin 6442 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸的纳迦|r
    .isOnQuest 6442
step << Druid
    >>前往: |cRXP_PICK_月光林地|r
    .goto Moonglade,52.4,40.6
    .trainer 12042 >>训练法术
step
    .zoneskip Stonetalon Mountains
    #completewith eldercr
    .hs >>炉石到雷霆崖
    .cooldown item,6948,>0
step
#xprate >1.499
    #completewith next
    .goto Stonetalon Mountains,45.1,59.8
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .zoneskip Thunder Bluff
step
    #label eldercr
    .isOnQuest 1063
    .goto Thunder Bluff,69.851,30.910
>>对话: |cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    .turnin 1063 >>交任务: |cRXP_FRIENDLY_长者|r
    >>等待角色扮演完成
.target Magatha Grimtotem
    .accept 1064 >>接任务: |cRXP_LOOT_被遗忘者的援助|r
step
    .isOnQuest 1489
    .goto Thunder Bluff,78.4,28.8
.target 大德鲁伊哈缪尔·符文图腾
>>对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .turnin 1489 >>交任务: |cRXP_FRIENDLY_哈缪尔·符文图腾|r
step
    .isQuestAvailable 1490
    .goto Thunder Bluff,78.1,29.3
.target 大德鲁伊哈缪尔·符文图腾
>>对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .accept 1490 >>接任务: |cRXP_LOOT_纳拉·蛮鬃|r
step
    .isOnQuest 1490
    .goto Thunder Bluff,75.7,31.3
.target Nara Wildmane
>>对话: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
step
    .isOnQuest 1064
    >>前往 Spirit Rise 下的水池
    .goto Thunder Bluff,22.9,21.1
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
.target Apothecary Zamah
    .accept 1065 >>接任务: |cRXP_LOOT_塔伦米尔之旅|r
step
    .isOnQuest 1065
    .goto Thunder Bluff,28.0,25.2
.target Clarice Foster
>>对话: |cRXP_FRIENDLY_克拉莉斯·弗斯特|r
    .accept 264 >>接任务: |cRXP_LOOT_至死方休|r
step << !Tauren
#xprate >1.499
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
step << !Shaman
    .goto Thunder Bluff,47.003,49.832
    #completewith next
    .fly Orgrimmar >>飞往奥格瑞玛
step << Shaman
    .goto Thunder Bluff,47.003,49.832
    #completewith next
    .fly Ratchet >>飞往棘齿城
step << Shaman
    .goto The Barrens,65.8,43.8
>>对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
    .turnin 1529 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Islen Waterseer
    .accept 1530 >>接任务: |cRXP_LOOT_水之召唤|r
>>对话: |cRXP_FRIENDLY_玛伦·星眼|r
    .turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.target Mahren Skyseer
    .accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
step << Shaman
    .goto The Barrens,63.1,37.1
    #completewith next
    .fly Camp Taurajo >>飞往陶拉霍营地
step << Shaman
    .goto The Barrens,43.4,77.4
>>对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1530 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Brine
    .accept 1535 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
    .goto The Barrens,44.1,76.9
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.4,77.4
>>对话: |cRXP_FRIENDLY_布瑞恩|r
    .turnin 1535 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Brine
    .accept 1536 >>接任务: |cRXP_LOOT_水之召唤|r
step
    .destroy 11149 >>摧毁: |cRXP_ENEMY_主动式负载平衡器说明书|r
step << Shaman
    .goto Thunder Bluff,44.4,59.0
    #completewith next
    .fly Orgrimmar >>飞往奥格瑞玛
step << Shaman
.goto Orgrimmar,38.6,36.0
    #completewith next
.trainer >>去训练你的职业法术
step << Paladin
    .goto Orgrimmar,32.272,35.794
        #completewith next
    .trainer >>去训练你的职业法术
step << Warrior
.goto Orgrimmar,79.7,31.4
        #completewith next
.trainer >>去训练你的职业法术
step << Warrior tbc
    .goto Orgrimmar,81.2,19.0
    .collect 29009,1 >>从 Zendo'jian 购买重型投掷匕首
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.5,19.6
    .train 197 >>训练 2h 斧头
step << Shaman
    .goto Orgrimmar,81.5,19.6
    .train 196 >>训练 1h 斧头
]])
