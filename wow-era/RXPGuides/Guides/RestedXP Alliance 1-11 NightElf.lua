local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 1-6 影谷
#version 1
#group RestedXP 联盟 1-20
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +您已选择一本专为暗夜精灵设计的指南。您应该选择与您开始的相同起始区域
step
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
    >>与伊尔塔莱恩交谈
.target Conservator 伊尔塔莱恩
>>Talk to |cRXP_FRIENDLY_Conservator 伊尔塔莱恩|r
    .accept 456 >>接任务: |cRXP_LOOT_自然的平衡|r
step
    #sticky
    #label balance1
    .goto Teldrassil,62.0,42.6
    >>杀死幼年夜刃豹和蓟野猪
    .complete 456,1 --Kill Young 夜刃豹 (x4 WOTLK, x7 TBC)
    .complete 456,2 --Kill Young Thistle Boar (x4)
step
    .xp 2 >>升级至 2 级
step
    >>与 Melithar 和 Dirania 交谈
.target 梅利萨·鹿盔
>>对话: |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .accept 458 >>接任务: |cRXP_LOOT_森林守护者|r
	.goto Teldrassil,59.93,42.48,-1
.target Dirania Silvershine
>>对话: |cRXP_FRIENDLY_迪兰妮亚·银辉|r
    .accept 4495 >>接任务: |cRXP_LOOT_好朋友|r
    .goto Teldrassil,60.90,41.96,-1
step << Hunter
    #xprate <1.5
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>不断磨练，直到距离第 4 级还有 610xp（790/1400）
step << Hunter
    #xprate >1.3
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >>不断磨练，直到距离第 4 级还有 755xp（645/1400）
step << Hunter
    .goto Teldrassil,54.59,32.99
    >>与艾弗隆交谈
>>对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
.target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << Hunter
    #completewith next
    .hs >>炉石到影月谷
step << Hunter
    .goto Teldrassil,57.71,45.06
    >>与塔林德雷拉交谈
>>对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
.target Tarindrella
    .accept 459 >>接任务: |cRXP_LOOT_森林守护者|r
step
    #requires balance1
    >>与伊尔塔莱恩交谈
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
>>Talk to |cRXP_FRIENDLY_Conservator 伊尔塔莱恩|r
    .turnin 456 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
.target Conservator 伊尔塔莱恩
    .accept 457 >>接任务: |cRXP_LOOT_自然的平衡|r
	.accept 3116 >>接任务: |cRXP_LOOT_简易符记|r << Warrior
	.accept 3117 >>接任务: |cRXP_LOOT_风化符记|r << Hunter
--	.accept 3118 >>接任务: |cRXP_LOOT_密文符记|r << Rogue
	.accept 3119 >>接任务: |cRXP_LOOT_神圣符记|r << Priest
	.accept 3120 >>接任务: |cRXP_LOOT_绿色符记|r << Druid
step << Warrior
    #completewith next
    .goto Teldrassil,59.31,41.09
	.vendor >>进去吧。商人垃圾
step << Warrior
    #sticky
    #label SimpleSigil
	.goto Teldrassil,59.21,40.04,20,0
	.goto Teldrassil,59.29,39.08,20,0
	.goto Teldrassil,59.63,38.45
    >>跑上供应商后面的斜坡
.target Alyissia
>>对话: |cRXP_FRIENDLY_奥莉希亚|r
	.turnin 3116 >>交任务: |cRXP_FRIENDLY_简易符记|r
step << Warrior
	.goto Teldrassil,59.63,38.45
	.trainer >>训练你的职业法术
step << !Hunter
    #requires SimpleSigil << Warrior
    .goto Teldrassil,59.8,34.1
    >>杀死肮脏的夜刃豹和蓟野猪
    .complete 457,1 --Kill Mangy 夜刃豹 (x5 WOTLK, x7 TBC)
    .complete 457,2 --Kill Thistle Boar (x5 WOTLK, x7 TBC)
step << !Hunter
    .goto Teldrassil,54.59,32.99
    >>与艾弗隆交谈
>>对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
.target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << !Hunter
    #completewith next
    .hs >>炉石到影月谷
step << !Hunter
    .goto Teldrassil,57.71,45.06
    >>与塔林德雷拉交谈
>>对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
.target Tarindrella
    .accept 459 >>接任务: |cRXP_LOOT_森林守护者|r
step << !Hunter
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
    >>与伊尔塔莱恩交谈
.target Conservator 伊尔塔莱恩
>>Talk to |cRXP_FRIENDLY_Conservator 伊尔塔莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step
    .goto Teldrassil,60.90,41.96
    >>与迪拉尼亚交谈
>>对话: |cRXP_FRIENDLY_迪兰妮亚·银辉|r
    .turnin 3519 >>交任务: |cRXP_FRIENDLY_需要帮助的朋友|r
.target Dirania Silvershine
    .accept 3521 >>接任务: |cRXP_LOOT_埃沃隆的解药|r
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.31,41.09
	.vendor >>进去。卖掉垃圾，买 3 堆箭
step
    .goto Teldrassil,57.81,41.65
    >>与 Gilshalan 交谈
.target Gilshalan Windwalker
>>对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .accept 916 >>接任务: |cRXP_LOOT_树林蜘蛛的毒囊|r
step << Hunter
    #xprate <1.5
    .goto Teldrassil,56.02,41.82
    .xp 4-40 >>升级至 1360+/1400xp
step << Hunter
    #xprate >1.3
    .goto Teldrassil,56.02,41.82
    .xp 4-50 >>升级至 1350+/1400xp
step << Hunter
    #sticky
    #label EtchedSigil
    .goto Teldrassil,57.81,40.93,40,0
    .goto Teldrassil,58.64,38.74,30,0
    .goto Teldrassil,58.66,40.45
    >>爬上大树，直到到达小楼
.target Ayanna Everstride
>>对话: |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >>交任务: |cRXP_FRIENDLY_风化符记|r
step << Hunter
    .goto Teldrassil,58.66,40.45
    .train 1978 >>火车毒蛇钉刺
step
    #requires EtchedSigil << Hunter
#loop
	.line Teldrassil,56.98,39.08,56.51,38.92,56.55,38.40,56.80,38.15,56.94,36.95,57.18,37.12,57.49,36.04,58.07,35.60,58.21,36.21,58.43,36.46,58.94,37.35,58.81,37.59,58.67,38.17,58.05,38.44,56.98,39.08
	.goto Teldrassil,56.98,39.08,20,0
	.goto Teldrassil,56.51,38.92,20,0
	.goto Teldrassil,56.55,38.40,20,0
	.goto Teldrassil,56.80,38.15,20,0
	.goto Teldrassil,56.94,36.95,20,0
	.goto Teldrassil,57.18,37.12,20,0
	.goto Teldrassil,57.49,36.04,20,0
	.goto Teldrassil,58.07,35.60,20,0
	.goto Teldrassil,58.21,36.21,20,0
	.goto Teldrassil,58.43,36.46,20,0
	.goto Teldrassil,58.94,37.35,20,0
	.goto Teldrassil,58.81,37.59,20,0
	.goto Teldrassil,58.67,38.17,20,0
	.goto Teldrassil,58.05,38.44,20,0
	.goto Teldrassil,56.98,39.08,20,0
	>>掠夺湖周围的黄色花朵
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,54.25,39.00,40,0
    .goto Teldrassil,54.61,44.03,40,0
    .goto Teldrassil,56.00,45.91
	>>杀死小怪。从他们身上搜刮蘑菇和苔藓。你也可以搜刮附近的蘑菇物品
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
step
    #completewith next
    .goto Teldrassil,56.80,31.49,30 >>进入洞穴
step
    .goto Teldrassil,56.48,29.38,40,0
    .goto Teldrassil,56.76,25.65
	>>杀死蜘蛛。掠夺它们的脓液和囊
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
step
    #completewith next
    .deathskip >>在灵魂治疗师处死亡并重生
step
    .goto Teldrassil,57.71,45.06
    >>与塔林德雷拉交谈
.target Tarindrella
>>对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 459 >>交任务: |cRXP_FRIENDLY_森林守护者|r
step
    .goto Teldrassil,60.90,41.96
    >>与迪拉尼亚交谈
>>对话: |cRXP_FRIENDLY_迪兰妮亚·银辉|r
    .turnin 3521 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
.target Dirania Silvershine
    .accept 3522 >>接任务: |cRXP_LOOT_埃沃隆的解药|r
step << !Priest
    #completewith next
    .goto Teldrassil,59.31,41.09
	.vendor >>进去卖垃圾 << !Hunter
	.vendor >>进去卖垃圾。确保你至少有 3-4 堆箭 << Hunter
step << Warrior
	.goto Teldrassil,59.21,40.04,20,0
	.goto Teldrassil,59.29,39.08,20,0
	.goto Teldrassil,59.63,38.45
    >>跑上供应商后面的斜坡
	.trainer >>训练你的职业法术
step << Priest
    #completewith next
    .goto Teldrassil,59.96,41.85,20,0
    .goto Teldrassil,59.69,41.22,20,0
    .goto Teldrassil,59.46,41.05
	.vendor >>进去。上楼去卖垃圾
step << Priest
    #sticky
    #label HallowedSigil
	.goto Teldrassil,59.17,40.44
    >>上楼去
.target Shanda
>>对话: |cRXP_FRIENDLY_珊达|r
	.turnin 3119 >>交任务: |cRXP_FRIENDLY_神圣符记|r
step << Priest
	.goto Teldrassil,59.17,40.44
	.trainer >>训练你的职业法术
step
    #requires HallowedSigil << Priest
    .goto Teldrassil,57.81,41.65
    >>与 Gilshalan 交谈
>>对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 916 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的毒囊|r
.target Gilshalan Windwalker
    .accept 917 >>接任务: |cRXP_LOOT_树林蜘蛛的卵|r
step << Druid
    .goto Teldrassil,58.626,40.287
	>>跑上大斜坡，进入小房间
.target Mardant Strongoak
>>对话: |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
	.train 8921 >>火车月火号
step
    .goto Teldrassil,54.59,32.99
    >>与艾弗隆交谈
.target Iverron
>>对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 3522 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
step
    #completewith next
    .goto Teldrassil,56.80,31.49,30 >>进入洞穴
step
    .goto Teldrassil,56.80,26.45
	>>在洞穴后面拾取一颗木网蛋
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#completewith next
	.deathskip >>在灵魂治疗师处死亡并重生，或跳过注销。
    .link https://www.youtube.com/watch?v=TTZZT3jpv1s >>点击此处了解如何跳过注销
step
    .goto Teldrassil,57.81,41.65
    >>与 Gilshalan 交谈
>>对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 917 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的卵|r
.target Gilshalan Windwalker
    .accept 920 >>接任务: |cRXP_LOOT_特纳隆的召唤|r
step
    .goto Teldrassil,57.81,40.93,40,0
    .goto Teldrassil,58.64,38.74,30,0
    .goto Teldrassil,58.48,40.79,30,0
    .goto Teldrassil,59.34,40.09,30,0
    .goto Teldrassil,59.06,39.44
    >>沿着斜坡向上爬上大树。与顶部的 Tenaron 交谈
>>对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 920 >>交任务: |cRXP_FRIENDLY_特纳隆的召唤|r
.target Tenaron Stormgrip
    .accept 921 >>接任务: |cRXP_LOOT_大地之冠|r
step
    #sticky
    #label vial1
    .goto Teldrassil,59.92,33.13
	.use 5185 >>使用月亮井背包里的水晶瓶
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>杀死肮脏的夜刃豹和蓟野猪
    .complete 457,1 --Kill Mangy 夜刃豹 (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
step
    #requires vial1
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者跑回城镇
step << Hunter
    #requires vial1
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
    >>与伊尔塔莱恩交谈
.target Conservator 伊尔塔莱恩
>>Talk to |cRXP_FRIENDLY_Conservator 伊尔塔莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step << Priest
    #requires vial1
    .goto Teldrassil,59.96,41.85,20,0
    .goto Teldrassil,59.69,41.22,20,0
	.goto Teldrassil,59.17,40.44
    >>进去吧。上楼
.target Shanda
>>对话: |cRXP_FRIENDLY_珊达|r
    .accept 5622 >>接任务: |cRXP_LOOT_月神的恩赐|r
step
    #requires vial1
    .goto Teldrassil,57.81,40.93,40,0
    .goto Teldrassil,58.64,38.74,30,0
    .goto Teldrassil,58.48,40.79,30,0
    .goto Teldrassil,59.34,40.09,30,0
    .goto Teldrassil,59.06,39.44
    >>沿着斜坡向上爬上大树。与顶部的 Tenaron 交谈
>>对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 921 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Tenaron Stormgrip
    .accept 928 >>接任务: |cRXP_LOOT_大地之冠|r
step
    .goto Teldrassil,61.16,47.64
    >>与波塔尼乌斯交谈
.target Porthannius
>>对话: |cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >>接任务: |cRXP_LOOT_多兰纳尔的货物|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 6-11 泰达希尔
#version 1
#group RestedXP 联盟 1-20
#defaultfor NightElf
#next 11-14 黑海岸
step
    #title Shopping List
    #completewith next
        >>如果您想使用拍卖行来加速您的升级，请给自己邮寄 7 条小蜘蛛腿。
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
    .goto Teldrassil,60.5,56.3
.target Zenn Foulhoof
>>对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >>接任务: |cRXP_LOOT_赛恩的要求|r
step
    #sticky
    #completewith zenn
    >>在执行任务时杀死蜘蛛、猫和猫头鹰
    .complete 488,1 --Collect 夜刃豹 Fang (x3)
    .complete 488,2 --Collect 鸮 Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
    #sticky
	#completewith spiderLegs
    >>收集 7 条小蜘蛛腿，用于稍后的任务
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
    .goto Teldrassil,56.1,57.8
.target Syral Bladeleaf
>>对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 997 >>接任务: |cRXP_LOOT_德纳兰的泥土|r
step
    .goto Teldrassil,55.9,57.3
.target 阿瑟里达斯·熊皮
>>对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >>接任务: |cRXP_LOOT_烦恼之风|r
step << Priest
    .goto Teldrassil,55.6,56.8
>>对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5622 >>交任务: |cRXP_FRIENDLY_月神的恩赐|r
.target Laurna Morninglight
    .accept 5621 >>接任务: |cRXP_LOOT_月光之衣|r
	.trainer >>训练你的 6 级法术
step << Rogue
    .goto Teldrassil,55.51,57.14
	>>前往树屋二楼
    .vendor >>从 Aldia 购买 3 级投掷物。装备它
step
    #xprate <1.5
    .goto Teldrassil,55.5,57.0
    >>前往树屋顶部
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
   .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r
    .accept 2438 >>接任务: |cRXP_LOOT_翡翠摄梦符|r
step
    #xprate >1.3
    .goto Teldrassil,55.5,57.0
    >>前往树屋顶部
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r << !Hunter
    .accept 2438 >>接任务: |cRXP_LOOT_翡翠摄梦符|r
step << Hunter
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱（2 先令 85 美分），从 Jeena 那里买一把霍恩伍德反曲弓。否则，跳过这一步（你稍后会回来）
    >>购买箭，直到你的箭筒装满（1000 支箭）
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >>训练你的 6 级法术
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >>训练你的 6 级法术
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱（5s 36c），从 Shalomon 那里买一把 Gladius。否则，跳过这一步（你稍后会回来）
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱（4 先令 1 美分），就从 Shalomon 那里买一把细高跟鞋。否则，跳过这一步（你稍后会回来）
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱（5s 4c），从 Shalomon 那里买一根手杖。否则，跳过这一步（你稍后会回来）
    .collect 2495,1 --Walking Stick (1)
step
    .goto Teldrassil,55.7,59.8
.target Innkeeper Keldamyr
>>对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .turnin 2159 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r
step << Hunter
    .goto Teldrassil,56.676,59.489
	.train 3044>>训练奥术射击
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >>训练你的 6 级法术
step
    .goto Teldrassil,56.2,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 928 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 929 >>接任务: |cRXP_LOOT_大地之冠|r
--step << Druid
--    #xprate <1.1
--    .goto Teldrassil,57.6,60.6
--    .train 2366 >>草药学培训
--    >>稍后你需要 5 个 Earthroot 来完成任务。获得 5 个 Earthroot 后，你可以放弃草药学
--step << Druid
--    #xprate <1.1
--    #completewith end
--    >>将草药学等级提升至 15 级，然后尝试寻找 5 个地根，以便稍后完成 15 级任务
--    .collect 2449,5
step << Priest
    >>对哨兵沙娅使用二级较低治疗术，然后使用真言术：韧
    .goto Teldrassil,57.2,63.5
    .complete 5621,1 --Heal and fortify Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
>>对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 997 >>交任务: |cRXP_FRIENDLY_德纳兰的泥土|r
.target Denalan
    .accept 918 >>接任务: |cRXP_LOOT_林精的种子|r
    .accept 919 >>接任务: |cRXP_LOOT_林精的新芽|r
step
    .goto Teldrassil,56.1,66.6
    >>绕着湖跑，杀死林木怪，并掠夺地上的幼苗
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.900,68.489
>>对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 918 >>交任务: |cRXP_FRIENDLY_林精的种子|r
.target Denalan
    .accept 922 >>接任务: |cRXP_LOOT_雷利亚·绿树|r
    .turnin 919 >>交任务: |cRXP_FRIENDLY_林精的新芽|r
step
    .goto Teldrassil,68.0,59.6
	>>抢劫房子里的梳妆台
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.3,58.6
	>>上楼
>>对话: |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r
    .turnin 475 >>交任务: |cRXP_FRIENDLY_烦恼之风|r
.target Gaerolas Talvethren
    .accept 476 >>接任务: |cRXP_LOOT_瘤背熊怪的堕落|r
step
    #label zenn
    .goto Teldrassil,63.4,58.1
	.use 5619 >>把月亮井里的空瓶子装满
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    .goto Teldrassil,63.1,61.0
    >>完成 Zenn 的命令
    .complete 488,1 --Collect 夜刃豹 Fang (x3)
    .complete 488,2 --Collect 鸮 Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
    #xprate <1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >>升级至 7 级 +3500xp
step
    #xprate >1.3
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >>升级至 7 级 +2900xp
step
    .goto Teldrassil,60.5,56.3
.target Zenn Foulhoof
>>对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488 >>交任务: |cRXP_FRIENDLY_赛恩的要求|r
step
	.goto Teldrassil,56.078,57.723
.target Sentinel Shayla Nightbreeze
.target Moon Priestess Amara
.target Syral Bladeleaf
.target 哨兵凯拉·星歌
>>对话: |cRXP_FRIENDLY_哨兵凯拉·星歌|r
-->>对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
-->>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
-->>对话: |cRXP_FRIENDLY_哨兵莎依拉·夜风|r
    .accept 489 >>接任务: |cRXP_LOOT_寻求救赎！|r
step
    .goto Teldrassil,55.9,57.3
.target 阿瑟里达斯·熊皮
>>对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >>交任务: |cRXP_FRIENDLY_瘤背熊怪的堕落|r
step << Priest
    .goto Teldrassil,55.5,56.7
.target Laurna Morninglight
>>对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5621 >>交任务: |cRXP_FRIENDLY_月光之衣|r
	.trainer >>训练你的 8 级法术
step
    .goto Teldrassil,55.6,56.9
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 2438 >>交任务: |cRXP_FRIENDLY_翡翠摄梦符|r
.target Tallonkai Swiftroot
    .accept 2459 >>接任务: |cRXP_LOOT_噬梦者菲罗斯塔|r
step << Hunter
	#completewith next
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱（2 先令 85 美分），从 Jeena 那里买一把霍恩伍德反曲弓。否则，跳过这一步（你稍后会回来）
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >>购买箭矢总计最多 800 支
step << Hunter
    .goto Teldrassil,56.676,59.489
	.trainer >>训练你的 8 级法术
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >>训练你的 8 级法术
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >>训练你的 8 级法术
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱（5s 36c），从 Shalomon 那里买一把 Gladius。否则，跳过这一步（你稍后会回来）
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱（4 先令 1 美分），就从 Shalomon 那里买一把细高跟鞋。否则，跳过这一步（你稍后会回来）
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱（5s 4c），从 Shalomon 那里买一根手杖。否则，跳过这一步（你稍后会回来）
    .collect 2495,1 --Walking Stick (1)
step << Druid
    .goto Teldrassil,56.2,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 933 >>接任务: |cRXP_LOOT_大地之冠|r
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >>训练你的 8 级法术
step
    #sticky
	#completewith jewel
    >>寻找魔锥，通常位于树干旁边
    .complete 489,1 --Collect Fel Cone (x3)
step
    #label mystics
    #sticky
    .goto Teldrassil,69.2,53.3
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
	>>神秘者与 Gnarlpine Warriors 共享刷新。你可能必须杀死他们才能刷新神秘者
step
    #label jewel
	.goto Teldrassil,69.2,53.3
	>>杀死费罗西塔斯。拾取项链
    .collect 8049,1,2459,0x2,1 --Gnarlpine Necklace (1)
    .use 8049 >>右键点击项链以拾取宝石
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
step
    #requires mystics
    .goto Teldrassil,58.7,55.7
    >>完成寻求救赎！
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
.target Zenn Foulhoof
>>对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务: |cRXP_FRIENDLY_寻求救赎！|r
step << Hunter
    #xprate <1.5
    .goto Teldrassil,51.2,50.6
    >>杀死领主梅勒纳斯。他可能位于洞穴的许多不同刷新点，而且相当困难
    .complete 932,1 --Collect Melenas' Head (x1)
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>杀死领主梅勒纳斯。他可能位于洞穴的许多不同刷新点，而且相当困难
    .complete 932,1 --Collect Melenas' Head (x1)
step
	#completewith next
	.deathskip >>故意死亡并在墓地重生
step << !Druid
    .goto Teldrassil,56.2,61.7
.target Corithras Moonrage
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
step
	#xprate <1.5
    .goto Teldrassil,56.2,61.7
.target Corithras Moonrage
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .accept 933 >>接任务: |cRXP_LOOT_大地之冠|r
step
	#xprate <1.5
	.goto Teldrassil,42.54,76.08
	>>点击大紫色植物
	.accept 930 >>接任务: |cRXP_LOOT_发光的水果|r
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.36,67.26
	.use 5621 >>把月亮井里的空瓶子装满
	.complete 933,1
step
	#xprate <1.5
    >>收集完 7 条小蜘蛛腿
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
	#xprate <1.5
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>故意死亡然后重生在多兰纳尔墓地，确保死在月亮井的东边，否则你可能会最终到达达纳苏斯
step
	#xprate <1.5
    .goto Teldrassil,56.2,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 933 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 7383 >>接任务: |cRXP_LOOT_大地之冠|r
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
.target Zarrin
>>对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_LOOT_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
step
    .goto Teldrassil,55.7,59.8
    .home >>将你的炉石设为多兰纳尔
step << Warrior/Rogue
    .goto Teldrassil,55.2,56.8
    .train 3273 >>训练急救
step
    #xprate >1.3
    .goto Teldrassil,55.5,56.9
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r << !Hunter
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
step
    #xprate <1.5
    .goto Teldrassil,55.5,56.9
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
step
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多兰纳尔西边的道路上巡逻
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .accept 487 >>接任务: |cRXP_LOOT_达纳苏斯之路|r
step
    .goto Teldrassil,46.6,53.0
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
step << Druid
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多兰纳尔西边的道路上巡逻
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
step
	#xprate <1.5
    .goto Teldrassil,38.3,34.3
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_LOOT_神谕林地|r
step
	#xprate <1.5
    .goto Teldrassil,38.4,34.1
	.use 18152 >>把月亮井里的空瓶子装满
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#xprate <1.5
    #completewith xp10
	#label harpies
    >>杀死哈皮斯。小心女族长，因为她们会治愈敌人并造成大量伤害。尝试击倒她们
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
	#xprate <1.5
    .goto Teldrassil,34.6,28.9
    .accept 931 >>接任务: |cRXP_LOOT_发光的树叶|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.6,31.7
    >>开始护送任务
.target Mist
>>对话: |cRXP_FRIENDLY_密斯特|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step << Hunter
    #xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >>努力学习直到你从第 10 级获得 2670 经验值 (3830/6500)
    >>一旦你达到这个经验断点，跳过harpy/escort任务直接去达纳苏斯，你将有另一个机会稍后完成这些任务
step << Hunter
    #xprate <1.5
    #sticky
    #label xp10
    .xp 10-3330 >>努力学习直到你从第 10 级获得 3330 xp (3170/6500)
    >>一旦你达到这个经验断点，跳过harpy/escort任务直接去达纳苏斯，你将有另一个机会稍后完成这些任务
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.3,34.4
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.3,34.4
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
.target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.6,31.7
    >>开始护送任务
.target Mist
>>对话: |cRXP_FRIENDLY_密斯特|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.3,34.4
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
.target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << !Hunter
#xprate <1.5
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#xprate <1.5
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#xprate >1.3
	.goto Teldrassil,38.6,58.0
	>>收集完 7 条小蜘蛛腿
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#xprate >1.3
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>如果你仍然缺乏经验，请执行北方的 Harpy 任务
step << !Druid
	#xprate >1.3
	#label xp10
	.xp 10-3300
step << !Rogue
	#xprate <1.5
    #requires xp10
    #completewith next
    .deathskip >>故意死亡并在达纳苏斯墓地重生
step << !Rogue
    #requires xp10
1	>>奔向达纳苏斯
    .goto Darnassus,38.3,21.4
>>对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
.target 雷利安·绿峰
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.7,9.0
    >>爬到树屋顶部
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
	.isOnQuest 940
step << Druid
    .goto Darnassus,35.2,8.0
    >>前往树屋的中层
.target Mathrengyl 熊walker
>>对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 5921 >>接任务: |cRXP_LOOT_月光林地|r
	.trainer >>训练你的 10 级法术
step << !Rogue
    .goto Darnassus,36.5,86.0
.target Priestess A'moora
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_LOOT_月神的泪水|r
step << Druid
    .goto Moonglade,56.2,30.8
    >>打开你的法术书并传送到月光林地
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5921 >>交任务: |cRXP_FRIENDLY_月光林地|r
.target Dendrite Starblaze
    .accept 5929 >>接任务: |cRXP_LOOT_巨熊之灵|r
step << Druid
    .goto Moonglade,39.1,27.5
    >>与永夜港外的熊灵交谈
    .complete 5929,1 --Seek out the Great 熊 Spirit and learn what it has to share with you about the nature of the bear.
step << Druid
    .goto Moonglade,56.2,30.5
    >>使用传送法术回到任务给予者身边
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5929 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
.target Dendrite Starblaze
    .accept 5931 >>接任务: |cRXP_LOOT_返回达纳苏斯|r
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >>炉石到多兰纳尔
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >>购买 4 组 10 级箭。达到 10 级后立即装备它们
step
	#xprate >1.3
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
.target Zarrin
>>对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_LOOT_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
step
	#xprate >1.3
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多兰纳尔西边的道路上巡逻
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.7,59.6
.target Dazalar
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_LOOT_驯服野兽|r
	.train 13165 >>训练你的 10 级法术
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .complete 6063,1 --Tame a 林网潜伏者
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6101 >>接任务: |cRXP_LOOT_驯服野兽|r
step
	#xprate <1.5
    .goto Teldrassil,56.1,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 935 >>接任务: |cRXP_LOOT_大地之冠|r
step
	#xprate <1.5
	.goto Teldrassil,60.9,68.4
.target Denalan
>>对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >>交任务: |cRXP_FRIENDLY_发光的树叶|r
    .turnin 930 >>交任务: |cRXP_FRIENDLY_发光的水果|r
step
	#xprate <1.5
	.goto Teldrassil,60.9,68.4
.target Denalan
>>对话: |cRXP_FRIENDLY_德纳兰|r
	.turnin 927 >>交任务: |cRXP_FRIENDLY_布满苔藓的心脏|r
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.9,68.4
	>>点击任务给予者旁边的植物花瓶
	.turnin 941 >>交任务: |cRXP_FRIENDLY_培养心脏|r
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .complete 6101,1 --Tame a 夜刃豹 Stalker
	.isOnQuest 6101
step
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >>死亡后在墓地重生
step << Priest
    .goto Teldrassil,55.5,56.7
	.trainer >>训练你的 10 级法术
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >>训练你的 10 级法术
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >>训练你的 10 级法术
step << Hunter
    .goto Teldrassil,56.7,59.6
.target Dazalar
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_LOOT_驯服野兽|r
	.trainer >>训练你的 10 级法术
step << Hunter
    .goto Teldrassil,59.9,58.8
    .complete 6063,1 --Tame a 林网潜伏者
step << Hunter
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6101 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
    .goto Teldrassil,62.6,72.2
    .complete 6101,1 --Tame a 夜刃豹 Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6101 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6102 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
    .goto Teldrassil,64.7,66.7
    .complete 6102,1 --Tame a Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6102 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6103 >>接任务: |cRXP_LOOT_训练野兽|r
step << Warrior
    .goto Teldrassil,56.221,59.198
.target Kyra Windblade
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
-->>对话: |cRXP_FRIENDLY_凯拉·风刃|r
    .accept 1684 >>接任务: |cRXP_LOOT_艾兰娜瑞|r
step << Rogue
    .goto Teldrassil,56.2,60.0
.target Jannok Breezesong
>>对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >>接任务: |cRXP_LOOT_詹诺克的花|r
step << !Druid
    .goto Teldrassil,51.8,56.4
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
step << Rogue
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>一旦你通过了熊怪区域，故意死亡并在达纳苏斯墓地重生
step << Rogue
    .goto Darnassus,67.2,15.8
    .home >>将你的炉石设为达纳苏斯
step << Rogue
    .goto Darnassus,64.6,53.0
    .collect 25873,1 >>从艾尔兰德里斯处购买一把锋利的飞刀
step << Rogue
    .goto Darnassus,38.3,21.4
>>对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
.target 雷利安·绿峰
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << Rogue
    .goto Darnassus,34.7,9.0
    >>爬到树屋顶部
    .turnin -935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
step << Rogue
    #xprate <1.5
    .goto Darnassus,34.7,9.0
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .accept 952 >>接任务: |cRXP_LOOT_古树之林|r
step << Rogue
    .goto Darnassus,36.8,21.8
>>对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2241 >>交任务: |cRXP_FRIENDLY_詹诺克的花|r
.target Syurna
    .accept 2242 >>接任务: |cRXP_LOOT_命运的召唤|r
step << Rogue
    .goto Darnassus,36.5,86.0
.target Priestess A'moora
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_LOOT_月神的泪水|r
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    .train 2981 >>驯服一名严厉的猎人
step
    .goto Teldrassil,43.1,32.9
    >>退出达纳苏斯 << Rogue
	>>杀死河边的伐木者暴徒
    .complete 923,1 --Collect Mossy Tumor (x5)
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0
    .goto Teldrassil,37.9,25.1
    .goto Teldrassil,40.7,25.4
    >>杀死 Lady Sathrah，她有 3 个可能的刷新位置
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>偷走古人塞瑟尔，他沿着大树枝走
    >>你必须偷偷摸摸，如果你和他战斗，他会攻击力很强，而且会召唤一大堆小怪
    .complete 2242,1
step
	#xprate >1.3 << !Hunter
    .goto Teldrassil,38.3,34.3
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_LOOT_神谕林地|r
step
	#xprate >1.3 << !Hunter
    #sticky
	#label harpies2
    >>杀死妖精
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
	#xprate >1.3 << !Hunter
    .goto Teldrassil,31.6,31.7
    >>开始护送任务
.target Mist
>>对话: |cRXP_FRIENDLY_密斯特|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step
	#xprate >1.3 << !Hunter
    .goto Teldrassil,38.3,34.4
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step
	#xprate >1.3 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
.target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step
    #softcore
	#completewith next
    .deathskip >>在达纳苏斯墓地死亡并重生
step
    .goto Darnassus,70.679,45.379
.target Mydrannul
>>对话: |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >>接任务: |cRXP_LOOT_尼莎·影歌|r
step
	.abandon 927 >>放弃苔藓缠绕之心。你永远没有机会把它交出来
step << Warrior
    .goto Darnassus,64.6,53.0
    .collect 25873,1 >>从艾尔兰德里斯处购买一把锋利的飞刀
step << Warrior
    .goto Darnassus,57.4,34.8
>>对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >>交任务: |cRXP_FRIENDLY_艾兰娜瑞|r
.target Elanaria
    .accept 1683 >>接任务: |cRXP_LOOT_沃鲁斯·邪蹄|r
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18
    >>通往沃鲁斯·维莱霍夫的道路从这里开始
step << Warrior
    .goto Teldrassil,47.2,63.7
    .complete 1683,1 --Collect Horn of Vorlus (x1)
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>经过熊怪区域后故意死亡，并在达纳苏斯重生
step << Warrior
    .goto Darnassus,57.305,34.606
.target Elanaria
>>对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1683 >>交任务: |cRXP_FRIENDLY_沃鲁斯·邪蹄|r
--	.accept 1686 >>接任务: |cRXP_LOOT_艾鲁拉的阴影|r
step << Druid
    .goto Darnassus,35.1,8.6
>>对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 5931 >>交任务: |cRXP_FRIENDLY_返回达纳苏斯|r
.target Mathrengyl 熊walker
    .accept 6001 >>接任务: |cRXP_LOOT_身心之力|r
step
    .isOnQuest 935
    .goto Darnassus,34.814,9.255
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
step
    .goto Darnassus,34.814,9.255
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r << Hunter
step
    #xprate <1.5
    .goto Darnassus,34.814,9.255
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .accept 952 >>接任务: |cRXP_LOOT_古树之林|r
step << Hunter
    .goto Darnassus,40.3,8.8
.target Jocaste
>>对话: |cRXP_FRIENDLY_祖卡斯特|r
    .turnin 6103 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << Rogue
    .goto Darnassus,36.8,21.8
.target Syurna
>>对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2242 >>交任务: |cRXP_FRIENDLY_命运的召唤|r
step
    .goto Darnassus,38.184,21.639
.target 雷利安·绿峰
>>对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >>交任务: |cRXP_FRIENDLY_青苔之瘤|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>前往大楼二楼
    .vendor >>从 Turian 购买 11 级投掷物。当你达到 11 级时装备它
step
    .goto Darnassus,36.9,85.8
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >>交任务: |cRXP_FRIENDLY_月神的泪水|r
.target Priestess A'moora
    .accept 2520 >>接任务: |cRXP_LOOT_萨丝拉的祭品|r
step
    .goto Darnassus,39.7,85.8
	>>在喷泉处使用背包中的萨斯拉的牺牲
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,36.653,85.930
.target Priestess A'moora
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >>交任务: |cRXP_FRIENDLY_萨丝拉的祭品|r
step << Hunter tbc/Warrior tbc/Priest
    .goto Darnassus,57.8,46.6
    .train 227 >>火车五线谱
    >>如果你的包里有法杖，就装备一根 << Hunter
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
	.vendor >>从 Ariyell 购买一把层压反曲弓，如果你有钱的话，还可以买 10 级箭。装备它
	.collect 2507,1
step << Warrior tbc
    .goto Darnassus,58.76,44.48
	.money <0.3022
    >>如果你有钱，从 Ariyell 那里买一根四分之一法杖。在 11 级时装备它
	.collect 854,1
step << Warrior wotlk
    .goto Darnassus,58.76,44.48
    .money <0.2700
    >>如果你有钱的话，从 Ariyell 那里买一把克莱莫地雷。
    .collect 1198,1
step
    #completewith next
    .goto Darnassus,30.41,41.40
    .goto Teldrassil,56.3,92.3,175 >>通过银行旁边的紫色传送门前往鲁瑟兰村
step
    .goto Teldrassil,56.3,92.3
>>对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
.target Nessa Shadowsong
    .accept 6341 >>接任务: |cRXP_LOOT_泰达希尔的渔业|r
step
    .goto Teldrassil,58.399,94.016
>>对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
.target Vesprystus
    .accept 6342 >>接任务: |cRXP_LOOT_飞往奥伯丁|r
step
    .fly Darkshore >>飞往黑海岸
]])
