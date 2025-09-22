local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage
#name 12-17 贫瘠之地范围
#version 1
#group RestedXP 部落法师 AoE
#defaultfor Horde Mage
#next 17-21 石爪/贫瘠之地 范围

step << Mage
	#era/som
    #completewith next
	+请注意，您已选择 AoE 指南。AoE 通常比单目标法师要难得多，但速度要快得多
step << Mage
	#som
	#phase 3-6
    #completewith next
	+请注意，您已选择 AoE 指南。AoE 通常比单目标法师难得多，而且由于 SoM 中最近的 100% 任务经验值变化，速度也更慢
step
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
step
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target Zargh
>>对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
step
    .goto The Barrens,51.5,30.8
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >>获取十字路口飞行路线
step << Troll Mage
    >>不要去奥格瑞玛
    .goto The Barrens,51.5,30.3
>>对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
.target Devrak
    .accept 6384 >>接任务: |cRXP_LOOT_飞往奥格瑞玛|r
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
step
    #sticky
    #completewith next
    >>检查此位置是否有陈的空酒桶。拾取它并开始任务，否则你会稍后得到它
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>接任务: |cRXP_LOOT_老陈的空酒桶|r
step
    .goto The Barrens,55.6,26.6
    >>杀死该区域内的野猪
    .complete 871,2 --钢鬃棘织者 (8)
    .complete 871,1 --钢鬃寻水者 (8)
    .complete 871,3 --钢鬃猎人 (3)
step << !Undead
    #sticky
    #completewith next
    >>如果你背包里的瑕疵能量石剩余时间少于 10 分钟，就把它丢掉，然后回去再次拾取 Ak'Zeloth 旁边的紫色石头
    .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
step << !Undead
    #sticky
    #completewith BeakCave
    >>如果你有时间在有瑕疵的能量石上，在路上杀死一些平原行者。从他们身上掠夺喙
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>跑上山
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>前往被火刃兽人包围的洞穴
step << !Undead
    >>右键点击祭坛
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>杀死你看到的猛禽。掠夺它们以获得一些猛禽头 - 你稍后会得到更多
    .complete 869,1 --Raptor Head (12)
step
    >>杀死平原陆行鸟。掠夺它们的喙
    .goto The Barrens,50.8,32.1
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
step
    #sticky
    #completewith Crates
    >>杀死 Razomanes 并获取板条箱并杀死 Kreenig
    .complete 872,1 --钢鬃地卜师 (8)
    .complete 872,2 --钢鬃防御者 (8)
step
    #sticky
    #completewith next
    >>抢劫在该区域发现的棕色盒子
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>杀死克里尼格·斯纳尔斯诺特。拾取他的獠牙
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>抢劫在该区域发现的棕色盒子
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>杀死钢鬃兽
    .complete 872,1 --钢鬃地卜师 (8)
    .complete 872,2 --钢鬃防御者 (8)
step << !Undead
    #sticky
    #completewith next
    >>杀死你看到的所有斑马。掠夺它们以获得蹄子
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 924 >>交任务: |cRXP_FRIENDLY_恶魔之种|r
step
    >>杀死你看到的所有斑马。从它们身上搜刮蹄子。进入棘齿城之前，确保你有 4 只斑马
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>大楼顶层
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .accept 887 >>接任务: |cRXP_LOOT_南海海盗|r
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >>获取 Ratchet 飞行路径
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .accept 894 >>接任务: |cRXP_LOOT_什么什么平衡器|r
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
    #sticky
    #label Southsea
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
    .goto The Barrens,62.6,49.7,40,0
    >>杀死 Baron Longshore。拾取他的头颅
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 887 >>交任务: |cRXP_FRIENDLY_南海海盗|r
.target Gazlowe
    .accept 890 >>接任务: |cRXP_LOOT_丢失的货物|r
    .turnin 895 >>交任务: |cRXP_FRIENDLY_通缉：巴隆·朗绍尔|r
step
    .goto The Barrens,63.3,38.4
>>对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 1492 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 890 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
.target Wharfmaster Dizzywig
    .accept 892 >>接任务: |cRXP_LOOT_丢失的货物|r
    .accept 896 >>接任务: |cRXP_LOOT_矿工的宝贝|r
step
    .goto The Barrens,62.7,36.3
>>对话: |cRXP_FRIENDLY_加兹鲁维|r
    .turnin 892 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
.target Gazlowe
    .accept 888 >>接任务: |cRXP_LOOT_被窃的货物|r
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >>飞向十字路口
step
    .goto The Barrens,51.5,30.8
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .turnin 5041 >>交任务: |cRXP_FRIENDLY_十字路口的补给品|r
    .turnin 872 >>交任务: |cRXP_FRIENDLY_野猪人的头目|r
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
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 850 >>接任务: |cRXP_LOOT_科卡尔首领|r
    .accept 855 >>接任务: |cRXP_LOOT_半人马护腕|r
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>杀死 |cRXP_ENEMY_Kolkar Wranglers|r 和 |cRXP_ENEMY_Kolkar Stormers|r。掠夺他们的 |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_此任务不必现在完成|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>在被遗忘的池塘周围收集 |cRXP_LOOT_Laden 蘑菇|r
    >>|cRXP_WARN_此任务不必现在完成|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>潜入水下至 |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>杀死 |cRXP_ENEMY_Barak Kodobane|r。夺取他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_要小心，因为 |cRXP_ENEMY_Barak Kodobane|r 的近战攻击会造成大量伤害，而且他受到 |cRXP_ENEMY_Kolkar Wrangler|r 的保护。他们可以用网缠住你，并从远处向你射击|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_LOOT_狂热的维罗戈|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 850 >>交任务: |cRXP_FRIENDLY_科卡尔首领|r
    .accept 851 >>接任务: |cRXP_LOOT_狂热的维罗戈|r
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>杀死你看到的猛禽。掠夺它们以获得一些猛禽头 - 你稍后会得到更多
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>不要专注于现在就得到所有这些
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>杀死潜行者。掠夺他们的爪子和獠牙
    .goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>杀死鹰身女妖。掠夺她们的利爪
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto The Barrens,43.8,12.2
    >>如果你还没有得到重刺钉头锤，可以考虑从 BVrang Wildgore 购买 << Druid/Warrior
    .vendor >>如果需要的话，可以去找这个人
step
    #sticky
    #completewith next
    >>杀死平原行者。掠夺他们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>杀死猛禽，夺取它们的头颅
    .complete 869,1 --Raptor Head (12)
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
    >>点击阀门。当你点击任一按钮时，怪物就会生成
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
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
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .accept 902 >>接任务: |cRXP_LOOT_什么什么平衡器|r
step
    >>接任务: |cRXP_LOOT_打火钥匙|r from the Shredder
    .goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>对话: |cRXP_FRIENDLY_维兹克兰克的伐木机|r
    .accept 858 >>接任务: |cRXP_LOOT_打火钥匙|r
step
    >>在这里磨练到 16 级非常重要，因为接下来的 3 个任务相当难。
	.xp 16 >>升级至 16
step
    >>杀死主管 Lugwizzle（他在塔内巡逻）。从他身上搜刮点火钥匙
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>这将开始护送
    .goto The Barrens,56.5,7.5
>>对话: |cRXP_FRIENDLY_维兹克兰克的伐木机|r
    .turnin 858 >>交任务: |cRXP_FRIENDLY_打火钥匙|r
.target Wizzlecrank's Shredder
    .accept 863 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
step
    #label Slugs
    >>2 个怪物会在某个时间点出现。杀死它们然后等待最后的 RP 事件
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>磨碎该区域的怪物。掠夺它们直到猫眼翡翠掉落
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>跑向奥格瑞玛西入口
step
    .goto Orgrimmar,38.79,85.68
    .trainer >>训练你的职业法术
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
.target Innkeeper Gryshka
    .accept 6385 >>接任务: |cRXP_LOOT_双足飞龙管理员多拉斯|r
step
    >>跑向飞行管理员。不要飞到任何地方
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >>获取奥格瑞玛飞行路线 << Undead
>>对话: |cRXP_FRIENDLY_多拉斯|r
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r << Troll Mage
.target Doras
    .accept 6386 >>接任务: |cRXP_LOOT_返回十字路口|r << Troll Mage
step
    >>奔向格罗玛什要塞
    .goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>对话: |cRXP_FRIENDLY_佐尔·孤树|r
    .accept 1061 >>接任务: |cRXP_LOOT_石爪之灵|r
step
    #completewith next
    .hs >>从炉边到十字路口
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target Zargh
>>对话: |cRXP_FRIENDLY_扎尔夫|r
    .turnin 6386 >>交任务: |cRXP_FRIENDLY_返回十字路口|r
step
    .goto The Barrens,51.9,30.3
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .turnin 869 >>交任务: |cRXP_FRIENDLY_偷钱的迅猛龙|r
.target Gazrog
    .accept 3281 >>接任务: |cRXP_LOOT_被偷走的银币|r
step
    .goto The Barrens,52.3,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 903 >>交任务: |cRXP_FRIENDLY_草原上的徘徊者|r
.target Sergra Darkthorn
    .accept 881 >>接任务: |cRXP_LOOT_埃其亚基|r
step
    >>使用背包中的埃奇亚基之角召唤埃奇亚基。杀死他并掠夺他的皮
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 881 >>交任务: |cRXP_FRIENDLY_埃其亚基|r
.target Sergra Darkthorn
    .accept 905 >>接任务: |cRXP_LOOT_狂暴的镰爪龙|r
step
    .goto The Barrens,52.20,31.90
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
.target Tonga Runetotem
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
step
    .goto The Barrens,52.00,31.60
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .accept 899 >>接任务: |cRXP_LOOT_复仇的怒火|r
    .accept 4921 >>接任务: |cRXP_LOOT_在战斗中失踪|r
step
    >>塔顶
    .goto The Barrens,51.6,30.9
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 867 >>交任务: |cRXP_FRIENDLY_鹰身强盗|r
.target Darsok Swiftdagger
    .accept 875 >>接任务: |cRXP_LOOT_鹰身人首领|r
step
    .goto The Barrens,51.50,30.20
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>飞往棘齿城
step
    .goto The Barrens,63.0,37.2
>>对话: |cRXP_FRIENDLY_斯布特瓦夫|r
    .turnin 902 >>交任务: |cRXP_FRIENDLY_什么什么平衡器|r
    .turnin 863 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
.target Sputtervalve
    .accept 1483 >>接任务: |cRXP_LOOT_菲兹克斯|r
step
    .goto The Barrens,63.30,38.40
.target Wharfmaster Dizzywig
>>对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
    .turnin 896 >>交任务: |cRXP_FRIENDLY_矿工的宝贝|r
step
    .goto The Barrens,62.40,37.70
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .accept 1069 >>接任务: |cRXP_LOOT_深苔蜘蛛的卵|r
step
    >>抢劫箱子
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>抢劫箱子
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>杀死你看到的任何猛禽。掠夺它们的角和羽毛。当它们挣扎时要小心
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>抢劫宝箱，获取偷来的银币
    >>保存你得到的阳鳞羽毛以供日后使用
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>在停滞的绿洲周围收集 |cRXP_LOOT_Laden 蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>点击水下的气泡裂缝
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>杀死半人马。掠夺他们的护腕
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >>在湖边磨碎任何半人马，直到它们产生 Verog（当他产生时，你会在聊天中看到一个 Yell）
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>在停滞的绿洲周围收集 |cRXP_LOOT_Laden 蘑菇|r
    .complete 848,1 --Collect Fungal Spores (x4)
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
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    >>杀死猛禽。掠夺它们的角
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>与曼科里克的妻子交谈
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>将你的炉石设为陶拉祖营地
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>对话: |cRXP_FRIENDLY_碎牙|r
    .accept 878 >>接任务: |cRXP_LOOT_野猪人的内战|r
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >>获取陶拉霍营地飞行路线
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
    #sticky
	#completewith next
    >>杀死平原行者。掠夺他们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
.target Regthar Deathgate
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
step
    .goto The Barrens,45.39,28.43
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 851 >>交任务: |cRXP_FRIENDLY_狂热的维罗戈|r
.target Regthar Deathgate
    .accept 852 >>接任务: |cRXP_LOOT_赫兹鲁尔·血印|r
step
    #sticky
	#label CeBracers
    >>杀死半人马。掠夺他们的护腕
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >>Hezrul 在 WC 大湖周围巡逻
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 852 >>交任务: |cRXP_FRIENDLY_赫兹鲁尔·血印|r
    .turnin 855 >>交任务: |cRXP_FRIENDLY_半人马护腕|r
step
    .goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .accept 4021 >>接任务: |cRXP_LOOT_人马无双！|r
step
    >>这个任务单独完成起来会非常困难，如果没有人可以和你组队，可以考虑组队完成或者在任务给予者的建筑物附近放风筝。
    >>如果太难，请跳过此步骤
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target Regthar Deathgate
>>对话: |cRXP_FRIENDLY_雷戈萨·死门|r
    .turnin 4021 >>交任务: |cRXP_FRIENDLY_人马无双！|r
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>杀死女巫之翼屠夫。掠夺他们以获得鹰身女妖中尉戒指
    .complete 875,1 --Harpy Lieutenant 戒指 (6)
step
    .goto The Barrens,41.4,24.5
    >>杀死该地区的草原徘徊者。掠夺他们的獠牙
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1061 >>交任务: |cRXP_FRIENDLY_石爪之灵|r
.target Seereth Stonebreak
    .accept 1062 >>接任务: |cRXP_LOOT_地精侵略者|r
.target Makaba Flathoof
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .accept 6548 >>接任务: |cRXP_LOOT_为我的村庄复仇|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage
#name 17-21 石爪/贫瘠之地 范围
#version 1
#group RestedXP 部落法师 AoE
#defaultfor Horde Mage
#next 21-30 银松森林/希尔斯布莱德 AoE

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    >>消灭该区域内的恐怖图腾
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.191,27.791
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6548 >>交任务: |cRXP_FRIENDLY_为我的村庄复仇|r
.target Makaba Flathoof
    .accept 6629 >>接任务: |cRXP_LOOT_杀死格鲁迪格·暗云|r
step
    >>沿着西边的小路进入村庄。确保在开始里面的任务之前杀死所有 6 个野兽。杀死主帐篷前的 Grundig
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>开始 Kaya 护航
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>对话: |cRXP_FRIENDLY_卡雅·扁蹄|r
    .accept 6523 >>接任务: |cRXP_LOOT_保护卡雅|r
step
     >>护送卡娅并待在她身边。篝火旁会出现 3 个恐怖图腾。在她到达营地之前吃点东西喝点水
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>对话: |cRXP_FRIENDLY_辛吉拉|r
    .accept 6461 >>接任务: |cRXP_LOOT_盗窃的蜘蛛|r
step
    #sticky
    #label deepmossegg
    >>点击树木附近的蜘蛛卵
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>杀死该区域的深苔蜘蛛
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1483 >>交任务: |cRXP_FRIENDLY_菲兹克斯|r
.target Ziz Fizziks
    .accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>在寻找操作员以获取蓝图时杀死伐木工
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>杀死风险投资公司操作员直到获得蓝图
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
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
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,58.989,62.599
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1093 >>交任务: |cRXP_FRIENDLY_超级收割机6000|r
.target Ziz Fizziks
    .accept 1094 >>接任务: |cRXP_LOOT_新的指示|r
step
    .hs >>炉火之源至陶拉祖营地
step
    .goto The Barrens,44.9,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 3261 >>交任务: |cRXP_FRIENDLY_乔恩·星眼|r
.target Jorn Skyseer
    .accept 882 >>接任务: |cRXP_LOOT_伊沙姆哈尔|r
step
    #sticky
    #label Lizard
    >>杀死风暴烈酒。从他们身上搜刮一把号角
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>在该地区附近找到拉科塔曼尼（灰色科多兽）并将其杀死。拾取他的蹄子。如果找不到他，请跳过此任务。
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>接任务: |cRXP_LOOT_拉克塔曼尼|r
step
    >>杀死大量野猪。掠夺它们的獠牙。保存你得到的血碎片
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>杀死平原行者。掠夺他们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>绕着湖走，攻击乌龟。掠夺它们的壳
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>杀死该区域的一只斑马。拾取它以获得尸体
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>使用枯树上的新鲜斑马尸体召唤伊沙姆哈勒。杀死他并夺取他的尖牙
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>杀死平原行者。掠夺他们的肾脏
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>跑回 Ratchet
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
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
    .turnin 865 >>交任务: |cRXP_FRIENDLY_迅猛龙角|r
    .turnin 1069 >>交任务: |cRXP_FRIENDLY_深苔蜘蛛的卵|r
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>对话: |cRXP_FRIENDLY_酿酒师德罗恩|r
    .turnin 821 >>交任务: |cRXP_FRIENDLY_老陈的空酒桶|r
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>飞往十字路口
step
    .goto The Barrens,52.2,31.9
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 880 >>交任务: |cRXP_FRIENDLY_变异的生物|r
.target Tonga Runetotem
    .accept 1489 >>接任务: |cRXP_LOOT_哈缪尔·符文图腾|r
    .accept 3301 >>接任务: |cRXP_LOOT_茉拉·符文图腾|r
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>对话: |cRXP_FRIENDLY_曼科里克|r
    .turnin 899 >>交任务: |cRXP_FRIENDLY_复仇的怒火|r
step
    >>塔顶
    .goto The Barrens,51.60,30.90
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 875 >>交任务: |cRXP_FRIENDLY_鹰身人首领|r
.target Darsok Swiftdagger
    .accept 876 >>接任务: |cRXP_LOOT_塞瑞娜·血羽|r
step
    >>这将启动一个限时任务
    .goto The Barrens,51.4,30.2
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
.target Apothecary Helbrim
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>飞往陶拉霍营地
step
    .goto The Barrens,53.0,52.1
    >>杀死野猪获得血碎片
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
>>对话: |cRXP_FRIENDLY_碎牙|r
    .turnin 878 >>交任务: |cRXP_FRIENDLY_野猪人的内战|r
.target Mangletooth
    .accept 5052 >>接任务: |cRXP_LOOT_阿迦玛甘的血岩碎片|r
    .turnin 5052 >>交任务: |cRXP_FRIENDLY_阿迦玛甘的血岩碎片|r
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
.target Jorn Skyseer
    .accept 907 >>接任务: |cRXP_LOOT_被激怒的雷霆蜥蜴|r
    .accept 1130 >>接任务: |cRXP_LOOT_梅洛的关注|r
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 883 >>交任务: |cRXP_FRIENDLY_拉克塔曼尼|r
step
    .goto The Barrens,44.8,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 882 >>交任务: |cRXP_FRIENDLY_伊沙姆哈尔|r
.target Jorn Skyseer
    .accept 907 >>接任务: |cRXP_LOOT_被激怒的雷霆蜥蜴|r
    .accept 1130 >>接任务: |cRXP_LOOT_梅洛的关注|r
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>在该区域周围搜索 Owatanka（蓝色雷霆蜥蜴）。如果找到他，就拾取他的尾刺并开始任务。如果找不到他，就跳过此任务
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
step
    .goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
    >>杀死雷霆蜥蜴。掠夺它们的血液
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
.target Jorn Skyseer
    .accept 913 >>接任务: |cRXP_LOOT_雷鹰的嘶鸣|r
step
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 907 >>交任务: |cRXP_FRIENDLY_被激怒的雷霆蜥蜴|r
.target Jorn Skyseer
    .accept 913 >>接任务: |cRXP_LOOT_雷鹰的嘶鸣|r
step
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    >>杀死一只雷鹰。夺取它的翅膀
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>对话: |cRXP_FRIENDLY_乔恩·星眼|r
    .turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
--    .accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>用你的血碎片换取 Mangletooth 的风之灵增益。如果你不小心卖掉了任何碎片，请跳过此步骤
.target Mangletooth
>>对话: |cRXP_FRIENDLY_碎牙|r
    .turnin 889 >>交任务: |cRXP_FRIENDLY_风之魂|r
step
    .goto Thunder Bluff,32.0,66.9,60 >>跑到电梯处，乘电梯前往雷霆崖
step
    .goto Thunder Bluff,45.814,64.711
    .home >>将炉石设置为雷霆崖
step
    .goto Thunder Bluff,61.538,80.919
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 1130 >>交任务: |cRXP_FRIENDLY_梅洛的关注|r
.target Melor Stonehoof
    .accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
step
 	>>进入视野之池
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >>训练你的职业法术
	>>暂时不要重新指定 AoE（如果你已经选择了火焰专精）
step
    .goto Thunder Bluff,28.4,27.7
.target Clarice Foster
>>对话: |cRXP_FRIENDLY_克拉莉斯·弗斯特|r
    .accept 264 >>接任务: |cRXP_LOOT_至死方休|r
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >>获取雷霆崖飞行路径
    .fly Crossroads >>飞往十字路口
step
    >>杀死塞丽娜·血羽。夺取她的头颅
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>对话: |cRXP_FRIENDLY_希雷斯·碎石|r
    .turnin 1062 >>交任务: |cRXP_FRIENDLY_地精侵略者|r
>>对话: |cRXP_FRIENDLY_玛卡巴·扁蹄|r
    .turnin 6629 >>交任务: |cRXP_FRIENDLY_杀死格鲁迪格·暗云|r
    .turnin 6523 >>交任务: |cRXP_FRIENDLY_保护卡雅|r
.target Makaba Flathoof
    .accept 6401 >>接任务: |cRXP_LOOT_卡雅还活着|r
.target Seereth Stonebreak
    .accept 1063 >>接任务: |cRXP_LOOT_长者|r
--    .accept 1068 >>接任务: |cRXP_LOOT_伐木机|r
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>对话: |cRXP_FRIENDLY_辛吉拉|r
    .turnin 6461 >>交任务: |cRXP_FRIENDLY_盗窃的蜘蛛|r
step
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>对话: |cRXP_FRIENDLY_菲兹克斯|r
    .turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
step
    .goto Stonetalon Mountains,47.5,58.4
.target Tammra Windfield
>>对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
    .turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>>获取 Sun Rock Retreat 飞行路线
step
    #completewith next
    .hs >>炉石到雷霆崖
step
    .goto Thunder Bluff,70.00,30.90
>>对话: |cRXP_FRIENDLY_玛加萨·恐怖图腾|r
    .turnin 1063 >>交任务: |cRXP_FRIENDLY_长者|r
.target Magatha Grimtotem
    .accept 1064 >>接任务: |cRXP_LOOT_被遗忘者的援助|r
step
    .goto Thunder Bluff,78.62,28.56
>>对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .turnin 1489 >>交任务: |cRXP_FRIENDLY_哈缪尔·符文图腾|r
.target 大德鲁伊哈缪尔·符文图腾
    .accept 1490 >>接任务: |cRXP_LOOT_纳拉·蛮鬃|r
step
    .goto Thunder Bluff,75.65,31.62
.target Nara Wildmane
>>对话: |cRXP_FRIENDLY_纳拉·蛮鬃|r
    .turnin 1490 >>交任务: |cRXP_FRIENDLY_纳拉·蛮鬃|r
step
    .goto Thunder Bluff,23.00,21.0
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 1064 >>交任务: |cRXP_FRIENDLY_被遗忘者的援助|r
.target Apothecary Zamah
    .accept 1065 >>接任务: |cRXP_LOOT_塔伦米尔之旅|r
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >>如果需要的话，训练你的职业法术
	>>如果你还没有重新关注 Frost AoE
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>飞向十字路口
step
    .goto The Barrens,51.60,30.90
	>>上楼去
.target Darsok Swiftdagger
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .turnin 876 >>交任务: |cRXP_FRIENDLY_塞瑞娜·血羽|r
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >>飞往奥格瑞玛
]])
