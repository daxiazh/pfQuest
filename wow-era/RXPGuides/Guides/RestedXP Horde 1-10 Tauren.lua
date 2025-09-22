local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 1-6 莫高雷
#version 1
#group RestedXP 部落 1-30
#defaultfor Tauren
#next 6-10 莫高雷

step << !Tauren
    #completewith next
    +|cRXP_WARN_您已选择了一份针对牛头人的指南。我们不建议您进行此区域，因为该区域有仅针对牛头人的种族限制任务。建议您选择与您开始的相同起始区域|r
step
    .goto Mulgore,44.875,77.074
.target Grull Hawkwind
>>对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .accept 747 >>接任务: |cRXP_LOOT_开始狩猎|r
step
	>>走进小屋
    .goto Mulgore,44.2,76.1
.target Chief Hawkwind
>>对话: |cRXP_FRIENDLY_鹰风酋长|r
    .accept 752 >>接任务: |cRXP_LOOT_一件琐事|r
step << Warrior/Shaman
    #sticky
    #completewith next
    +杀死 Plainstriders 获得 10c+ 的供应商垃圾来训练你的 1 级法术
    .goto Mulgore,45.6,74.0,30,0
step << Warrior/Shaman
    .goto Mulgore,45.3,76.5
    .vendor >>供应商垃圾。
step << Warrior
    .goto Mulgore,44.008,76.132
    .train 6673 >>列车战斗呐喊
step << Shaman
    .goto Mulgore,45.015,75.941
    .train 8017 >>训练石化武器
step
    #sticky
    #completewith Plainstrider
    >>途中杀死平原行者
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
step
    .goto Mulgore,50.0,81.1
>>对话: |cRXP_FRIENDLY_鹰风酋长的母亲|r
    .turnin 752 >>交任务: |cRXP_FRIENDLY_一件琐事|r
.target Greatmother Hawkwind
    .accept 753 >>接任务: |cRXP_LOOT_一件琐事|r
step
    #label Plainstrider
    >>拾取 Hawkwind 身后井里的水罐
    .goto Mulgore,50.2,81.4
    .complete 753,1 --Water Pitcher (1)
step
     >>杀死平原行者
    .goto Mulgore,44.8,77.0
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
step
    .goto Mulgore,44.8,77.0
>>对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .turnin 747 >>交任务: |cRXP_FRIENDLY_开始狩猎|r
.target Grull Hawkwind
    .accept 3091 >>接任务: |cRXP_LOOT_简易便笺|r << Warrior
    .accept 3092 >>接任务: |cRXP_LOOT_风化便笺|r << Hunter
    .accept 3093 >>接任务: |cRXP_LOOT_符文便笺|r << Shaman
    .accept 3094 >>接任务: |cRXP_LOOT_绿色便笺|r << Druid
    .accept 750 >>接任务: |cRXP_LOOT_继续狩猎|r
step << Hunter
    .goto Mulgore,45.3,76.5
    .vendor >>供应商垃圾。购买 1000 发子弹（5 堆）
step
    .goto Mulgore,44.2,76.1
>>对话: |cRXP_FRIENDLY_鹰风酋长|r
    .turnin 753 >>交任务: |cRXP_FRIENDLY_一件琐事|r
.target Chief Hawkwind
    .accept 755 >>接任务: |cRXP_LOOT_大地之母仪祭|r
step << Warrior
    .goto Mulgore,44.008,76.132
.target Harutt Thunderhorn
>>对话: |cRXP_FRIENDLY_哈鲁特·雷角|r
    .turnin 3091 >>交任务: |cRXP_FRIENDLY_简易便笺|r
step << Hunter
    .goto Mulgore,44.3,75.7
.target Lanka Farshot
>>对话: |cRXP_FRIENDLY_兰卡·远箭|r
    .turnin 3092 >>交任务: |cRXP_FRIENDLY_风化便笺|r
step << Warrior
    .goto Mulgore,44.7,77.9
    .vendor >>供应商垃圾。
step << Druid/Shaman
    .goto Mulgore,44.7,77.9
    .vendor >>供应商垃圾。不要购买水
step
    #completewith next
    >>在前往下一个任务的途中，磨练怪物直到 3 级。这是为了达到 4 级并随后进行训练。
    .xp 3 >>升级至 3 级。
step
    #completewith next
    >>杀死美洲狮以获取其毛皮
    .goto Mulgore,47.7,91.9,0
    .complete 750,1 --Mountain Cougar Pelt (10)
step
    >>途中碾压怪物
    .goto Mulgore,42.573,92.187
>>对话: |cRXP_FRIENDLY_灰舌先知|r
    .turnin 755 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
.target Seer Graytongue
    .accept 757 >>接任务: |cRXP_LOOT_力量仪祭|r
step
    .goto Mulgore,45.44,90.56
    >>杀死美洲狮以获取其毛皮
    .complete 750,1 --Mountain Cougar Pelt (10)
step << !Druid !Shaman
	>>在完成任务的途中磨练怪物
    .goto Mulgore,44.9,77.0
    .xp 3+1150 >>升级至 1150+/1400xp
step << Druid/Shaman
	>>在完成任务的途中磨练怪物
    .goto Mulgore,44.9,77.0
    .xp 3+1110 >>升级至 1110+/1400xp
step << Warrior/Hunter
    >>确保你有价值 1s 90c 的可出售物品。如果没有，那就多磨一点
    .goto Mulgore,44.9,77.0
>>对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .turnin 750 >>交任务: |cRXP_FRIENDLY_继续狩猎|r
.target Grull Hawkwind
    .accept 780 >>接任务: |cRXP_LOOT_斗猪|r
step << Druid
    >>确保你有价值 2 秒的可出售物品。如果没有，那就多刷点
    .goto Mulgore,44.9,77.0
>>对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .turnin 750 >>交任务: |cRXP_FRIENDLY_继续狩猎|r
.target Grull Hawkwind
    .accept 780 >>接任务: |cRXP_LOOT_斗猪|r
step << Shaman
    .goto Mulgore,44.9,77.0
>>对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .turnin 750 >>交任务: |cRXP_FRIENDLY_继续狩猎|r
.target Grull Hawkwind
    .accept 780 >>接任务: |cRXP_LOOT_斗猪|r
step
    .goto Mulgore,45.3,76.5
    .vendor >>供应商垃圾
step << Druid
    .goto Mulgore,45.090,75.931
.target Gart Mistrunner
>>对话: |cRXP_FRIENDLY_加尔特·迷雾行者|r
    .turnin 3094 >>交任务: |cRXP_FRIENDLY_绿色便笺|r
    .train 8921 >>火车月火号
step << Shaman
    .goto Mulgore,45.015,75.941
.target Meela Dawnstrider
>>对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 3093 >>交任务: |cRXP_FRIENDLY_符文便笺|r
    .trainer >>训练你的职业法术
step << Shaman
    .goto Mulgore,44.7,76.2
.target Seer Ravenfeather
>>对话: |cRXP_FRIENDLY_鸦羽先知|r
    .accept 1519 >>接任务: |cRXP_LOOT_大地的召唤|r
step
    >>与 Windfeather 交谈。她在营地周围巡逻
    .goto Mulgore,45.0,76.4
.target Brave Windfeather
>>对话: |cRXP_FRIENDLY_卫兵维萨罗·风羽|r
    .accept 3376 >>接任务: |cRXP_LOOT_刺鬃酋长|r
step << Hunter
    .goto Mulgore,44.3,75.7
    .trainer >>训练你的职业法术
step << Warrior
    .goto Mulgore,44.008,76.132
    .trainer >>训练你的职业法术
step
    #completewith nomoreboar
    .xp 4+1800 >>磨练 Bristlebacks 直到你达到 1800+/2100xp 以达到 6 级并在 Bloodhoof Village 进行训练。
step
    .goto Mulgore,58.2,85.0
    >>杀死洞穴外的斗猪，获取其侧腹和猪鼻
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
step
    .isOnQuest 757
    .goto Mulgore,59.7,83.2,40 >>穿过洞穴
step
    #sticky
	#completewith Sharptusk
    #label Belt
    >>杀死刺背兽，夺取他们的腰带
    >>杀死刺背萨满并掠夺他们的药膏。 << Shaman
    .complete 757,1 --Bristleback Belt (12)
    .unitscan Bristleback Shaman << Shaman
    .complete 1519,1 << Shaman --Ritual Salve(2)
step
    #label Sharptusk
    >>杀死大屋里的夏普塔斯克
    .goto Mulgore,64.3,77.9
    .unitscan Chief Sharptusk Thornmantle
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
step
    #completewith nomoreboar
    >>杀死刺背兽并夺取他们的腰带。
    >>杀死刺背萨满并掠夺他们的药膏。 << Shaman
    .goto Mulgore,63.0,77.8
    .complete 757,1 --Bristleback Belt (12)
    .unitscan Bristleback Shaman << Shaman
    .complete 1519,1 << Shaman --Ritual Salve (2)
step
    #requires Belt
    >>进入洞穴。拾取中心的攻击计划，并接受任务。
    .goto Mulgore,63.2,82.7
    .collect 4850,1,24857 --Collect Bristleback Attack Plans.
    .accept 24857 >>接任务: |cRXP_LOOT_纳拉其营地的危机|r
step
	#label nomoreboar
	#completewith next
    .hs >>前往纳拉奇营地
step
    .goto Mulgore,44.9,77.0
.target Grull Hawkwind
>>对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .turnin 780 >>交任务: |cRXP_FRIENDLY_斗猪|r
step
    #completewith next
    .goto Mulgore,44.65,77.90
    .vendor >>供应商垃圾
step << Shaman
    .goto Mulgore,44.7,76.2
>>对话: |cRXP_FRIENDLY_鸦羽先知|r
    .turnin 1519 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
.target Seer Ravenfeather
    .accept 1520 >>接任务: |cRXP_LOOT_大地的召唤|r
step << Shaman
    .goto Mulgore,53.893,80.538,90 >>奔向岩石
step << Shaman
    >>使用背包中的 Earth Sapta
    .goto Mulgore,53.893,80.538
>>对话: |cRXP_FRIENDLY_大地之魂|r
    .turnin 1520 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
.target Minor Manifestation of Earth
    .accept 1521 >>接任务: |cRXP_LOOT_大地的召唤|r
step << Shaman
    .goto Mulgore,44.7,76.2
.target Seer Ravenfeather
>>对话: |cRXP_FRIENDLY_鸦羽先知|r
    .turnin 1521 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
step
    >>与 Windfeather 交谈。她在营地周围巡逻
    .goto Mulgore,44.526,76.504
.target Brave Windfeather
>>对话: |cRXP_FRIENDLY_卫兵维萨罗·风羽|r
    .turnin 3376 >>交任务: |cRXP_FRIENDLY_刺鬃酋长|r
step
    .goto Mulgore,44.2,76.1
>>对话: |cRXP_FRIENDLY_鹰风酋长|r
    .turnin 24857 >>交任务: |cRXP_FRIENDLY_纳拉其营地的危机|r
    .turnin 757 >>交任务: |cRXP_FRIENDLY_力量仪祭|r
.target Chief Hawkwind
    .accept 763 >>接任务: |cRXP_LOOT_大地之母仪祭|r
step
    .goto Mulgore,38.5,81.6
.target Antur Fallow
>>对话: |cRXP_FRIENDLY_安图尔·荒野|r
    .accept 1656 >>接任务: |cRXP_LOOT_未完的任务|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 6-10 莫高雷
#version 1
#group RestedXP 部落 1-30
#defaultfor Tauren
#next 10-12 永歌森林 << !Warrior !Shaman
#next 10-13 莫高雷 << Warrior/Shaman


step
	.goto Mulgore,46.5,55.5
    .xp 5+2395 >>在前往城镇的路上，不断刷怪直到获得 2395+/2800xp
step
    #softcore
	#completewith next
    .goto Mulgore,46.5,55.5,300
    .deathskip >>死亡后在灵魂治疗师处重生或跑到血蹄村
step
	#hardcore
	#completewith next
    .goto Mulgore,48.3,53.3,100 >>跑向血蹄村 << !Hunter
    .goto Mulgore,47.3,62.0,100 >>跑向血蹄村 << Hunter
step << !Hunter
    .goto Mulgore,48.3,53.3
.target Ahab Wheathoof
>>对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .accept 11129 >>接任务: |cRXP_LOOT_凯雷失踪了！|r
step << !Hunter
    .goto Mulgore,47.0,57.0
.target Maur Raincaller
>>对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
     >>卖掉你的武器，如果你能赚到足够的钱买一根手杖（4s 80c）。如果你没有足够的钱，就跳过这一步
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
     >>卖掉你的武器，如果你能赚到足够的钱买一把木槌（6s 66c）。如果你没有足够的钱，就跳过这一步
    .collect 2493,1 --Collect Wooden Mallet
step << !Hunter
    .goto Mulgore,46.622,61.094
.target Innkeeper Kauth
>>对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 >>交任务: |cRXP_FRIENDLY_未完的任务|r
step << !Hunter
	.goto Mulgore,46.622,61.094
    #completewith next
    .home >>将你的炉石设置为血蹄村
step << !Hunter
    .goto Mulgore,47.513,60.164
>>对话: |cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 763 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
.target Baine Bloodhoof
    .accept 745 >>接任务: |cRXP_LOOT_土地之争|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
step << !Hunter
    .goto Mulgore,47.8,57.6
>>对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    .turnin 767 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
.target Zarlman Two-Moons
    .accept 771 >>接任务: |cRXP_LOOT_幻象仪祭|r
step << Shaman
        #completewith next
    .goto Mulgore,48.4,59.2
    .trainer >>训练你的职业法术
step << !Hunter
    .goto Mulgore,48.715,59.325
.target Harken Windtotem
>>对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
step << Druid
        #completewith next
    .goto Mulgore,48.5,59.6
    .trainer >>训练你的职业法术
step << !Hunter
    .goto Mulgore,48.6,60.4
.target Mull Thunderhorn
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .accept 748 >>接任务: |cRXP_LOOT_毒水|r
step << Warrior
        #completewith next
    .goto Mulgore,49.515,60.586
    .trainer >>训练你的职业法术
step
    .goto Mulgore,47.3,62.0
.target Ruul Eagletalon
>>对话: |cRXP_FRIENDLY_卢尔·鹰爪|r
    .accept 743 >>接任务: |cRXP_LOOT_风怒鹰身人|r
step << Hunter
    .goto Mulgore,47.513,60.164
>>对话: |cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 763 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
.target Baine Bloodhoof
    .accept 745 >>接任务: |cRXP_LOOT_土地之争|r
    .accept 767 >>接任务: |cRXP_LOOT_幻象仪祭|r
    .accept 746 >>接任务: |cRXP_LOOT_矮人的挖掘场|r
step << Hunter
    .goto Mulgore,46.622,61.094
.target Innkeeper Kauth
>>对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .turnin 1656 >>交任务: |cRXP_FRIENDLY_未完的任务|r
step << Hunter
	.goto Mulgore,46.622,61.094
    .home >>将你的炉石设置为血蹄村
step << Hunter
    .goto Mulgore,48.6,60.4
.target Mull Thunderhorn
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .accept 748 >>接任务: |cRXP_LOOT_毒水|r
step << Hunter
    .goto Mulgore,48.715,59.325
.target Harken Windtotem
>>对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
step << Hunter
    .goto Mulgore,47.8,57.6
>>对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    .turnin 767 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
.target Zarlman Two-Moons
    .accept 771 >>接任务: |cRXP_LOOT_幻象仪祭|r
step << Hunter
    .goto Mulgore,45.5,58.5
     >>卖掉你的武器。如果你的武器能给你足够的钱买一把华丽的火枪（3s 93c），就卖掉它。如果你没有足够的钱，就跳过这一步
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Hunter
    .goto Mulgore,47.0,57.0
.target Maur Raincaller
>>对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .accept 766 >>接任务: |cRXP_LOOT_马兹拉纳其|r
step << Hunter
    #completewith next
    .goto Mulgore,47.820,55.688
    .trainer >>训练你的职业法术
	.money <0.01
step << Hunter
    .goto Mulgore,48.3,53.3
.target Ahab Wheathoof
>>对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .accept 11129 >>接任务: |cRXP_LOOT_凯雷失踪了！|r
step
    #sticky
    #completewith Gnolls
    >>在整个区域内执行任务时获取 Mazzranache 的物品。可以在树下找到琥珀果。
    .complete 771,2 --Ambercorn (2)
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .goto Mulgore,55.9,63.1,90,0
    .goto Mulgore,51.1,66.5,90,0
    .goto Mulgore,40.7,73.0,90,0
    .goto Mulgore,55.9,63.1
    >>杀死狼以获得爪子，杀死平原陆行鸟以获得爪子。杀死平原陆行鸟以获得嫩陆行鸟肉。
    .complete 748,1 --Prairie Wolf Paw (6)
    .complete 748,2 --Plainstrider Talon (4)
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << Tauren
    #completewith Gnolls
    .itemcount 33009,1
    .use 33009 >>如果你看到狂暴的凯尔，就走到他面前，用嫩鳐肉。现在不用担心完成这件事。
    .complete 11129,1 --Kyle Fed (1)
	.unitscan Kyle the Frenzied
step << Tauren
    .goto Mulgore,48.5,60.4
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 748 >>交任务: |cRXP_FRIENDLY_毒水|r
.target Mull Thunderhorn
    .accept 754 >>接任务: |cRXP_LOOT_净化冰蹄之井|r
step
    #label Stones
    .goto Mulgore,53.7,66.3
    >>掠夺井周围的石头。
    .complete 771,1 --Well Stone (2)
step << Tauren
    .goto Mulgore,53.7,66.3
    .use 5411 >>在井中使用冬蹄净化图腾
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Gnolls
    #requires Stones
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>在两个阵营之间来回穿梭，杀死豺狼人。小心 Snagglespear，这是一把 9 级稀有武器，攻击力很强。
    .complete 745,1 --Palemane Tanner (10)
    .complete 745,2 --Palemane Skinner (8)
    .complete 745,3 --Palemane Poacher (5)
    .unitscan Snagglespear
step
    >>从树下收集两颗琥珀果。
    .goto Mulgore,49.3,56.2,15,0
    .goto Mulgore,52.0,61.1,15,0
    .goto Mulgore,50.0,66.4,15,0
    .goto Mulgore,50.4,66.5
    .complete 771,2 --Ambercorn (2)
step
    #completewith Vision
    .use 33009 >>如果你看到狂暴的凯尔，就走到他面前，用嫩鳐肉。现在不用担心完成这件事。
    .complete 11129,1 --Kyle Fed (1)
	.unitscan Kyle the Frenzied
step
    .goto Mulgore,47.6,61.5
        #completewith next
    .vendor >>供应商垃圾。
step << Tauren
    .goto Mulgore,48.5,60.4
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 754 >>交任务: |cRXP_FRIENDLY_净化冰蹄之井|r
.target Mull Thunderhorn
    .accept 756 >>接任务: |cRXP_LOOT_雷角图腾|r
step << Warrior
    #completewith next
    .goto Mulgore,49.515,60.586
    .trainer >>训练任何剩余的课堂技能。
step << Shaman
    #completewith next
    .goto Mulgore,48.4,59.2
    .trainer >>训练任何剩余的课堂技能。
step << Druid
    #completewith next
    .goto Mulgore,48.5,59.6
    .trainer >>训练任何剩余的课堂技能。
step
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>对话: |cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 745 >>交任务: |cRXP_FRIENDLY_土地之争|r
step << Warrior
        #completewith next
    .goto Mulgore,46.8,60.8
	.money <0.01
    .trainer >>训练急救
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
     >>卖掉你的武器，如果它能给你足够的钱买手杖（4s 80c）。如果你没有足够的钱，就跳过这一步
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
     >>卖掉你的武器，如果它能给你足够的钱买木槌（6s 66c）。如果你没有足够的钱，就跳过这一步
    .collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
    .money <0.0380
     >>卖掉你的武器。如果你的武器能给你足够的钱买一把华丽的火枪（3s 80c），就卖掉它。如果你没有足够的钱，就跳过这一步
    .collect 2509,1 --Collect Ornate Blunderbuss
step
    #label Vision
    >>不要跟随出现的狼。
    .goto Mulgore,47.8,57.5
>>对话: |cRXP_FRIENDLY_扎尔曼-双月|r
    .turnin 771 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
.target Zarlman Two-Moons
    .accept 772 >>接任务: |cRXP_LOOT_幻象仪祭|r
step
    .goto Mulgore,47.3,56.9,60,0
    .goto Mulgore,49.4,63.9,60,0
    .goto Mulgore,50.2,60.2,60,0
    .goto Mulgore,46.8,59.6,60,0
    .goto Mulgore,47.3,56.9
    .use 33009 >>沿逆时针方向寻找狂暴者凯尔。对他使用嫩鳐肉。
	.complete 11129,1 --Kyle Fed (1)
	.unitscan Kyle the Frenzied
step << Hunter
	#completewith next
    .goto Mulgore,47.820,55.688
    .trainer >>训练任何剩余的课堂技能。
step
    .goto Mulgore,48.2,53.3
.target Ahab Wheathoof
>>对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .turnin 11129 >>交任务: |cRXP_FRIENDLY_凯雷失踪了！|r
step
    >>寻找莫林·云行者。他沿着东边的道路巡逻
    .goto Mulgore,51.1,58.6,50,0
    .goto Mulgore,59.7,62.5,50,0
    .goto Mulgore,51.1,58.6
.target Morin Cloudstalker
>>对话: |cRXP_FRIENDLY_摩林·云行者|r
    .accept 749 >>接任务: |cRXP_LOOT_不幸的商队|r
	.unitscan Morin Cloudstalker
step
    #label Mazzranache
    #completewith Clawsx
    >>在整个区域执行任务时获取 Mazzranache 的物品。
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .goto Mulgore,53.8,48.3
	>>途中磨碎美洲狮和狼，然后点击商队中间的板条箱。
    .turnin 749 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 751 >>接任务: |cRXP_LOOT_不幸的商队|r
step
	#completewith Burial
    .goto Mulgore,54.15,27.81,0
	>>杀死莫高雷各处的飞鸟。掠夺它们的羽毛
    .complete 761,1 --Trophy Swoop Quill (8)
step
	#label Clawsx
    >>杀死该区域的潜行者和美洲狮。掠夺他们的爪子
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    .goto Mulgore,58.1,48.6
    .complete 756,1 --Stalker Claws (6)
    .complete 756,2 --Cougar Claws (6)
--step
    #softcore
    #completewith TotemW
    .goto Mulgore,46.5,55.5,200
    .deathskip >>死亡后在灵魂治疗师处重生或跑到血蹄村
step
    #hardcore
    #completewith TotemW
    .goto Mulgore,46.5,55.5,200 >>跑回血蹄村
step
    .isQuestComplete 766
    .goto Mulgore,47.0,57.2
.target Maur Raincaller
>>对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
step
    #completewith next
    .goto Mulgore,46.2,58.2
    .vendor >>供应商垃圾。
step
	#label TotemW
    .goto Mulgore,48.5,60.4
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 756 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
.target Mull Thunderhorn
    .accept 758 >>接任务: |cRXP_LOOT_净化雷角之井|r
step
	.isQuestComplete 761
    .goto Mulgore,48.7,59.4
.target Harken Windtotem
>>对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
step << Shaman
        #completewith next
    .goto Mulgore,48.4,59.2
    .trainer >>训练你的职业法术
step << Druid
        #completewith next
    .goto Mulgore,48.5,59.6
    .trainer >>训练你的职业法术
step << Warrior
        #completewith next
    .goto Mulgore,49.515,60.586
    .trainer >>训练你的职业法术
step << Shaman/Druid
    .goto Mulgore,45.7,58.6
     >>卖掉你的武器，如果它能给你足够的钱买手杖（4s 80c）。如果你没有足够的钱，就跳过这一步
    .collect 2495,1 --Collect Walking Stick
step << Warrior
    .goto Mulgore,45.7,58.6
     >>卖掉你的武器，如果它能给你足够的钱买木槌（6s 66c）。如果你没有足够的钱，就跳过这一步
    .collect 2493,1 --Collect Wooden Mallet
step << Hunter
    .goto Mulgore,45.5,58.5
     >>卖掉你的武器。如果你的武器能给你足够的钱买一把华丽的火枪（3s 83c），就卖掉它。如果你没有足够的钱，就跳过这一步
    .collect 2509,1 --Collect Ornate Blunderbuss
step << Warrior
    .goto Mulgore,46.7,60.7
    .vendor >>供应商垃圾。尽可能多地购买新鲜出炉的面包
step << Druid/Shaman
    .goto Mulgore,46.7,60.7
    .vendor >>供应商垃圾。尽可能多地购买冰镇牛奶
step
    .goto Mulgore,44.5,45.3
    .use 5415 >>在井中使用雷角净化图腾
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    #completewith Burial
    >>完成获取 Mazzranache 的物品
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    .goto Mulgore,31.3,49.9
   >>杀死矮人怪物以获得勘探者的采石场
	.collect 4702,5 -- Collect Prospector's Pick (5)
step
	.goto Mulgore,31.3,49.9
	.use 4702 >>使用镐头在熔炉上工作，直到你把所有 5 个镐头都打破
    .complete 746,1 --Broken Tools (5)
step
    >>杀死鹰身女妖。掠夺她们的利爪
    .goto Mulgore,31.9,41.7
    .complete 743,1 --Windfury Talon (8)
step
	#label Burial
    .goto Mulgore,32.714,36.087
>>对话: |cRXP_FRIENDLY_先知奥萨迪·智慧行者|r
    .turnin 772 >>交任务: |cRXP_FRIENDLY_幻象仪祭|r
.target Seer Wiserunner
    .accept 773 >>接任务: |cRXP_LOOT_智慧仪祭|r
step
    #completewith DeleteWater
    .itemcount 4823,1
	.goto Mulgore,54.15,27.81
	.destroy 4823 >>摧毁: |cRXP_ENEMY_先知之水|r
step
	#completewith next
    .goto Mulgore,54.15,27.81
	>>杀死莫高雷各处的飞鸟。掠夺它们的羽毛
    .complete 761,1 --Trophy Swoop Quill (8)
step
    .goto Mulgore,54.15,27.81
    >>完成获取 Mazzranache 的物品
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
--X waypoints for each item
step
    .goto Mulgore,54.15,27.81
	>>杀死莫高雷各处的飞鸟。掠夺它们的羽毛
    .complete 761,1 --Trophy Swoop Quill (8)
step
    #label DeleteWater
    .goto Mulgore,59.9,25.6
.target Lorekeeper Raintotem
>>对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .accept 833 >>接任务: |cRXP_LOOT_神圣的墓地|r
step
    >>杀死该区域内的刺背闯入者
    .goto Mulgore,61.5,21.9
    .complete 833,1 --Bristleback Interloper (8)
step
    .goto Mulgore,61.5,21.1
>>对话: |cRXP_FRIENDLY_先祖之魂|r
    .turnin 773 >>交任务: |cRXP_FRIENDLY_智慧仪祭|r
.target Ancestral Spirit
    .accept 775 >>接任务: |cRXP_LOOT_雷霆崖之旅|r
step
    .goto Mulgore,59.8,25.6
.target Lorekeeper Raintotem
>>对话: |cRXP_FRIENDLY_博学者诺拉·暴雨图腾|r
    .turnin 833 >>交任务: |cRXP_FRIENDLY_神圣的墓地|r
step
    .goto Mulgore,61.5,21.9
    .xp 9+4400 >>升级至 4450+/6500xp
step << !Druid
    #completewith hsfailsafe3
    .hs >>炉火村至血蹄村
--step << Druid
    #completewith next
    .goto Mulgore,54.76,35.10
    .deathskip >>在灵魂治疗师处死亡并重生，或跑到血蹄村
step << !Hunter
    .goto Mulgore,47.0,57.2
.target Maur Raincaller
>>对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
step
    .goto Mulgore,48.7,59.4
.target Harken Windtotem
>>对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
step
    .goto Mulgore,48.5,60.4
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
.target Mull Thunderhorn
    .accept 759 >>接任务: |cRXP_LOOT_蛮鬃图腾|r << !Hunter !Druid
step << !Hunter
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>对话: |cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
step << !Hunter !Druid
    .goto Mulgore,46.9,60.2
.target Skorn Whitecloud
>>对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .accept 861 >>接任务: |cRXP_LOOT_猎人之道|r
step
    #label hsfailsafe3
    .goto Mulgore,47.4,62.0
.target Ruul Eagletalon
>>对话: |cRXP_FRIENDLY_卢尔·鹰爪|r
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
step << Druid
    .isOnQuest 759
    .goto Mulgore,48.5,59.6
    .abandon 759 >>抛弃野鬃图腾
step << Shaman
        #completewith next
    .goto Mulgore,48.4,59.2
.target Narm Skychaser
>>对话: |cRXP_FRIENDLY_纳姆·逐星|r
    .accept 2984 >>接任务: |cRXP_LOOT_火焰的召唤|r
     .trainer >>训练你的职业法术
step << Druid
     #completewith next
     .goto Mulgore,48.5,59.6
     .trainer >>训练你的职业法术
step << Druid
    .goto Mulgore,48.5,59.6
.target Harene Plainwalker
>>对话: |cRXP_FRIENDLY_哈雷尼·平原行者|r
    .accept 5928 >>接任务: |cRXP_LOOT_响应召唤|r
step << Warrior
        #completewith next
    .goto Mulgore,49.515,60.586
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>对话: |cRXP_FRIENDLY_克朗·石蹄|r
-->>对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
-->>对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
     .trainer >>训练你的职业法术
step << Hunter
    .goto Mulgore,47.513,60.164
.target Baine Bloodhoof
>>对话: |cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 746 >>交任务: |cRXP_FRIENDLY_矮人的挖掘场|r
step << Hunter
    .goto Mulgore,48.5,60.4
.target Mull Thunderhorn
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 758 >>交任务: |cRXP_FRIENDLY_净化雷角之井|r
step << !Warrior !Shaman
    .goto Mulgore,47.0,57.2
  .abandon 759 >>抛弃野鬃图腾
step << Hunter
    #requires mazzranache2
    .goto Mulgore,47.0,57.2
.target Maur Raincaller
>>对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .turnin 766 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
step << Hunter
    #sticky
        #completewith next
    .goto Mulgore,47.7,55.7
     .trainer >>训练你的宠物法术
step << Hunter
        #completewith next
    .goto Mulgore,47.820,55.688
.target Yaw Sharpmane
>>对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .accept 6061 >>接任务: |cRXP_LOOT_驯服野兽|r
     .trainer >>训练你的职业法术
step << Hunter
    .use 15914 >>将背包中的驯兽棒点击在平原陆行鸟身上。尽量在最大范围内（30 码）进行操作
    .goto Mulgore,53.7,62.2
    .complete 6061,1 --Tame an Adult Plainstrider (1)
step << Hunter
    .goto Mulgore,47.820,55.688
>>对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6061 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Yaw Sharpmane
    .accept 6087 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
    .use 15915 >>用背包里的驯兽棒攻击潜行者。尽量在最大范围内（30 码）攻击
    .goto Mulgore,47.1,48.3
    .complete 6087,1 --Tame a Prairie Stalker (1)
step << Hunter
    .goto Mulgore,47.820,55.688
>>对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6087 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Yaw Sharpmane
    .accept 6088 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
    .use 15916 >>在俯冲时点击背包中的驯服棒。在最大范围内进行，如果他们将你击倒，立即重新施放。如果你失败并且驯服棒充能用完，请放弃任务，然后再次拾起它并回来
    .goto Mulgore,43.3,51.4
    .complete 6088,1 --Tame a Swoop (1)
step << Hunter
    .goto Mulgore,47.820,55.688
>>对话: |cRXP_FRIENDLY_雅文·刺鬃|r
    .turnin 6088 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Yaw Sharpmane
    .accept 6089 >>接任务: |cRXP_LOOT_训练野兽|r
step << Warrior/Shaman
    >>寻找莫林·云行者。他沿着东边的道路巡逻
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5
>>对话: |cRXP_FRIENDLY_摩林·云行者|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
.target Morin Cloudstalker
    .accept 764 >>接任务: |cRXP_LOOT_风险投资公司|r
    .accept 765 >>接任务: |cRXP_LOOT_菲兹普罗克主管|r
    .unitscan Morin Cloudstalker
--X WIP
step << Druid/Hunter
    >>寻找莫林·云行者。他沿着东边的道路巡逻。跳过后续行动
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5
.target Morin Cloudstalker
>>对话: |cRXP_FRIENDLY_摩林·云行者|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
	.unitscan Morin Cloudstalker
step << Tauren Warrior/Tauren Shaman
    >>杀死该地区的狼。掠夺他们的牙齿
    .goto Mulgore,62.48,66.93,80,0
    .goto Mulgore,66.9,67.2,80,0
    .goto Mulgore,66.66,58.40,80,0
    .goto Mulgore,62.38,57.56,80,0
    .complete 759,1 --Prairie Alpha Tooth (8)
step << Warrior tbc/Shaman tbc
    #sticky
    #completewith next
    .goto Mulgore,46.5,55.5,200 >>在灵魂治疗师处死亡并重生，或跑到血蹄村
step << Tauren Warrior/Tauren Shaman
    >>跑回血蹄村 << wotlk
    .goto Mulgore,48.5,60.4
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 759 >>交任务: |cRXP_FRIENDLY_蛮鬃图腾|r
.target Mull Thunderhorn
    .accept 760 >>接任务: |cRXP_LOOT_净化蛮鬃之井|r
step
    .goto Mulgore,69.6,60.4,100 >>前往: |cRXP_PICK_贫瘠之地|r
step << Druid/Hunter
    .abandon 765 >>Abandon 接任务: |cRXP_WARN_菲兹普罗克主管|r
    .abandon 764 >>Abandon 接任务: |cRXP_WARN_风险投资公司|r.
step << !Druid
    .goto The Barrens,44.5,59.1
    .fp Camp Taurajo >>获取陶拉祖营地飞行路线
step << Druid
	#completewith next
    .goto The Barrens,44.5,59.1
    .fp Camp Taurajo >>获取陶拉祖营地飞行路线
step << Druid
    .goto The Barrens,44.5,59.1
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step << Druid
        #completewith next
    .goto Thunder Bluff,45.8,64.4
    .home >>将炉石设置为雷霆崖
step << Druid
    .goto Thunder Bluff,78.1,28.6
.target 大德鲁伊哈缪尔·符文图腾
>>对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    .accept 886 >>接任务: |cRXP_LOOT_贫瘠之地的绿洲|r
step << Druid
    .goto Thunder Bluff,76.7,27.3
.target Turak Runetotem
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5928 >>交任务: |cRXP_FRIENDLY_响应召唤|r
step << Druid
    .goto Thunder Bluff,77.0,27.5
.target Turak Runetotem
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .accept 5922 >>接任务: |cRXP_LOOT_月光林地|r
step << Druid
    .cast 18960 >>使用你的新法术传送到月光林地
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5922 >>交任务: |cRXP_FRIENDLY_月光林地|r
    .goto Moonglade,56.209,30.636
.target Dendrite Starblaze
    .accept 5930 >>接任务: |cRXP_LOOT_巨熊之灵|r
step << Druid
    .goto Moonglade,39.2,27.5
    .complete 5930,1 --Seek out the Great 熊 Spirit and learn what it has to share with you about the nature of the bear. (1)
    .skipgossip
step << Druid
    .cast 18960 >>传送回月光林地
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5930 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
    .goto Moonglade,56.209,30.636
.target Dendrite Starblaze
    .accept 5932 >>接任务: |cRXP_LOOT_返回雷霆崖|r
step << Druid
	#completewith next
    .hs >>炉石到雷霆崖
step << Druid
    .goto Thunder Bluff,76.477,27.221
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 5932 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.target Turak Runetotem
    .accept 6002 >>接任务: |cRXP_LOOT_身心之力|r
step << Druid
    .goto Thunder Bluff,47.003,49.832
    .fly Camp Taurajo >>飞往陶拉霍营地
step << Druid
    .use 15710 >>跑到枭兽石处使用塞纳里奥月尘。杀死月爪然后和她交谈。
    .goto The Barrens,42.0,60.9
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses.
    .skipgossip
--This complete has been added manually, might be scuffed
step << Tauren
    .goto The Barrens,44.9,58.6
.target Kirge Sternhorn
>>对话: |cRXP_FRIENDLY_基尔格·锐角|r
    .accept 854 >>接任务: |cRXP_LOOT_十字路口之旅|r
step << Druid
    .goto The Barrens,52.2,31.9
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 886 >>交任务: |cRXP_FRIENDLY_贫瘠之地的绿洲|r
.target Tonga Runetotem
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
step << !Druid
    .goto The Barrens,52.2,31.9
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
step << Tauren
    .goto The Barrens,51.5,30.8
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .turnin 854 >>交任务: |cRXP_FRIENDLY_十字路口之旅|r
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >>获取十字路口飞行路线
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
step
    .goto The Barrens,51.1,29.0
.target Jahan Hawkwing
>>对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .accept 6361 >>接任务: |cRXP_LOOT_一捆兽皮|r
step
    #sticky
    #completewith next
    >>收集被遗忘的池塘周围的白色蘑菇
.complete 848,1 --Collect Fungal Spores (x4)
step
    >>潜入水下气泡裂缝处
    .goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
>>完成收集被遗忘的池塘周围的白色蘑菇
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4
    .complete 848,1 --Collect Fungal Spores (x4)
step << tbc
    .goto The Barrens,52.0,30.6,150 >>死亡后在灵魂治疗师处重生，或者跑回去
step
    .goto The Barrens,52.3,31.9
    >>回到十字路口
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
.target Tonga Runetotem
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
step
    .goto The Barrens,52.0,29.9
    .home >>将炉石设置为十字路口
step
    >>这将启动一个限时任务
    .goto The Barrens,51.4,30.2
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
.turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
.target Apothecary Helbrim
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
step
    .goto The Barrens,51.5,30.3
>>对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6361 >>交任务: |cRXP_FRIENDLY_一捆兽皮|r
.target Devrak
    .accept 6362 >>接任务: |cRXP_LOOT_飞往雷霆崖|r
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step
    .goto Thunder Bluff,45.6,55.9
>>对话: |cRXP_FRIENDLY_安哈努|r
    .turnin 6362 >>交任务: |cRXP_FRIENDLY_飞往雷霆崖|r
.target Ahanu
    .accept 6363 >>接任务: |cRXP_LOOT_双足飞龙管理员塔尔|r
step << Warrior/Shaman
    .goto Thunder Bluff,37.8,59.4
.target Eyahn Eagletalon
>>对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .accept 744 >>接任务: |cRXP_LOOT_准备典礼|r
step
    .goto Thunder Bluff,29.6,29.7,25 >>进入洞穴
step << Druid
    >>装备你从任务中获得的法杖。
    .goto Thunder Bluff,23.0,21.0
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
step << !Druid
    >>你很快就能装备这根法杖了。一定要保留它
    .goto Thunder Bluff,23.0,21.0
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
step
    .goto Thunder Bluff,46.8,49.7
>>对话: |cRXP_FRIENDLY_塔尔|r
    .turnin 6363 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员塔尔|r
.target Tal
    .accept 6364 >>接任务: |cRXP_LOOT_向加翰回复|r
step << !Warrior !Shaman
    .goto Thunder Bluff,60.0,51.7
.target Cairne Bloodhoof
>>对话: |cRXP_FRIENDLY_凯恩·血蹄|r
    .turnin 775 >>交任务: |cRXP_FRIENDLY_雷霆崖之旅|r
step << Warrior/Shaman
    .goto Thunder Bluff,60.0,51.7
>>对话: |cRXP_FRIENDLY_凯恩·血蹄|r
    .turnin 775 >>交任务: |cRXP_FRIENDLY_雷霆崖之旅|r
.target Cairne Bloodhoof
    .accept 776 >>接任务: |cRXP_LOOT_大地之母仪祭|r
step << Druid
    .money <0.1054
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>训练 2h Maces
step << Warrior/Hunter
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>火车五线谱
step << Druid
    .goto Thunder Bluff,76.477,27.221
.target Turak Runetotem
>>对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
    .turnin 6002 >>交任务: |cRXP_FRIENDLY_身心之力|r
step << Druid/Hunter
    #sticky
    #completewith next
.goto The Barrens,52.0,29.9,100 >>回到十字路口或飞回
step << Druid/Hunter
    .goto The Barrens,51.2,29.1
.target Jahan Hawkwing
>>对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
step << Druid/Hunter
    #sticky
    #completewith next
    +一路跑到齐柏林塔。乘坐齐柏林飞艇前往幽暗城。放弃所有任务
    .goto Durotar,50.8,13.8
step << Druid/Hunter
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step << Druid/Hunter
    .goto Undercity,66.2,1.1,25 >>前往幽暗城
step << Druid/Hunter
    .goto Undercity,62.0,11.3,20 >>从这里上楼梯
step << Druid/Hunter
    .goto Undercity,54.9,11.3,20 >>使用传送球
step << Druid/Hunter
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 10-13 莫高雷
#version 1
#group RestedXP 部落 1-30
#defaultfor Tauren
#next 13-23 贫瘠之地
step
    #sticky
    #completewith ThunderBluff
    >>留意幽灵嚎叫（白狼稀有）。从他身上搜刮恶魔伤痕斗篷。如果找不到他，请跳过此步骤。
    .collect 4854,1,770 --Collect Demon Scarred 披风
    .accept 770 >>接任务: |cRXP_LOOT_恶魔之伤|r
    .unitscan Ghost Howl
step
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5
    >>杀死鹰身女妖。掠夺她们的羽毛
    .complete 744,1 --Azure Feather (6)
    .complete 744,2 --Bronze Feather (6)
step
    #sticky
    #label Prowlers
    >>杀死平原徘徊者。掠夺他们的爪子
    .complete 861,1 --平原徘徊者 Claw (4)
step << Tauren Warrior/Tauren Shaman
    .goto Mulgore,42.5,13.8
    .use 5416 >>在井中使用蛮鬃净化图腾
    .complete 760,1 --Cleanse the Wildmane Well (1)
step
.goto Mulgore,52.6,12.2,40,0
    .goto Mulgore,48.6,16.1,40,0
    .goto Mulgore,51.8,33.8,40,0
    .goto Mulgore,56.2,32.9,40,0
.goto Mulgore,52.6,12.2,40,0
    .goto Mulgore,48.6,16.1,40,0
    .goto Mulgore,51.8,33.8,40,0
    .goto Mulgore,56.2,32.9
>>四处寻找 Arra'Chea（大黑科多兽）。他顺时针行走。杀死他并搜刮他的角
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'Chea
step
    #requires Prowlers
    #label ThunderBluff
    >>回到雷霆崖
.goto Thunder Bluff,60.1,51.7
.target Cairne Bloodhoof
>>对话: |cRXP_FRIENDLY_凯恩·血蹄|r
    .turnin 776 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
step
    .goto Thunder Bluff,37.9,59.6
.target Eyahn Eagletalon
>>对话: |cRXP_FRIENDLY_伊恩·鹰爪|r
    .turnin 744 >>交任务: |cRXP_FRIENDLY_准备典礼|r
step
    .goto Thunder Bluff,61.3,80.9
.target Melor Stonehoof
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .turnin 861 >>交任务: |cRXP_FRIENDLY_猎人之道|r
step
    .goto Thunder Bluff,61.2,81.2
.target Melor Stonehoof
>>对话: |cRXP_FRIENDLY_梅洛·石蹄|r
    .accept 860 >>接任务: |cRXP_LOOT_瑟格拉·黑棘|r
step
    .isOnQuest 770
    >>跑向血蹄村
    .goto Mulgore,46.8,60.2
.target Skorn Whitecloud
>>对话: |cRXP_FRIENDLY_斯考恩·白云|r
    .turnin 770 >>交任务: |cRXP_FRIENDLY_恶魔之伤|r
step << Tauren Warrior/Shaman
    .goto Mulgore,48.6,60.4
.target Mull Thunderhorn
>>对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .turnin 760 >>交任务: |cRXP_FRIENDLY_净化蛮鬃之井|r
step
    .goto Mulgore,61.5,47.2,110 >>跑到矿井去
step
    #sticky
    #label Workers
    >>消灭风险投资公司的暴徒
    .goto Mulgore,63.0,44.3
    .complete 764,1 --风险投资公司员工 (14)
    .complete 764,2 --风险投资公司主管 (6)
step
    >>Run into the mine, then hug the right/east side. Kill 接任务: |cRXP_WARN_菲兹普罗克主管|r for his Clipboard
    .goto Mulgore,64.9,43.3
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .unitscan 接任务: |cRXP_WARN_菲兹普罗克主管|r
step
    #requires Workers
    .xp 11+7150 >>升级至 7150+/8700xp
step
    #sticky
    #completewith next
    >>寻找莫林·云行者。他沿着东边的道路巡逻
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5,30,0
    .goto Mulgore,51.1,58.6,30,0
    .goto Mulgore,59.7,62.5
.target Morin Cloudstalker
>>对话: |cRXP_FRIENDLY_摩林·云行者|r
    .turnin 764 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
    .turnin 765 >>交任务: |cRXP_FRIENDLY_菲兹普罗克主管|r
    .unitscan Morin Cloudstalker
step << Shaman
    .goto Mulgore,48.4,59.2
    .train 1535 >>火车火新星图腾
    .train 547 >>训练治疗波 r3
step << Warrior
    .goto Mulgore,49.515,60.586
    .train 5242 >>列车战斗呐喊 r2
    .train 7384 >>火车压制
step
    #completewith next
    .hs >>回到十字路口或飞回
step
    .goto The Barrens,52.0,30.3
.target Gazrog
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
step
    .goto The Barrens,51.2,29.1
.target Jahan Hawkwing
>>对话: |cRXP_FRIENDLY_加翰·鹰翼|r
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
step
    .goto The Barrens,51.5,30.9
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
step
    .goto The Barrens,51.6,30.9
    >>跑上楼
.target Darsok Swiftdagger
>>对话: |cRXP_FRIENDLY_达索克·快刀|r
    .accept 867 >>接任务: |cRXP_LOOT_鹰身强盗|r
step
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 860 >>交任务: |cRXP_FRIENDLY_瑟格拉·黑棘|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
step << Shaman
    .goto The Barrens,55.9,19.9
>>对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2984 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Kranal Fiss
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
.goto Durotar,36.6,58.0,25 >>沿着山路跑
step << Shaman
    .goto Durotar,38.5,58.9
>>对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Telf Joolam
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Warrior
    .goto The Barrens,61.4,21.1
>>对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
.target Uzzek
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
step << Warrior
    .goto Durotar,39.2,32.3,40,0
    .goto Durotar,39.62,28.10,40,0
    .goto Durotar,40.20,24.13,40,0
    .goto Durotar,43.33,24.32,40,0
    .goto Durotar,39.2,32.3
    >>杀死雷霆岭的雷霆蜥蜴和闪电皮以获取其鳞片
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .isQuestComplete 1498
    #completewith next
.goto Durotar,39.2,32.3,30 >>离开雷霆岭
step << Warrior
    .goto The Barrens,61.4,21.1
>>对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
.target Uzzek
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
step << Warrior
    >>杀死闪电皮，获得烧焦的鳞片
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .goto The Barrens,61.4,21.1
>>对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
.target Uzzek
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
]])
