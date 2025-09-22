local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 1-11 艾尔文森林
#displayname 1-13 艾尔文森林 << Warlock
#version 1
#group RestedXP 联盟 1-20
#defaultfor Human
#next 12-14 洛克莫丹;11-14 黑海岸;14-20 秘血岛
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +您已选择适合人类的指南。您应该选择与您开始的相同的起始区
step << Warlock tbc
    #sticky
    #completewith next
    +杀死 |cRXP_LOOT_Wolves|r 可获得价值 10 铜的商贩垃圾。值得尽早训练献祭
    .goto Elwynn Forest,49.4,45.6
step << Warlock tbc
    .goto Elwynn Forest,50.1,42.7
    >>对话: |cRXP_FRIENDLY_丹恩·温斯洛|r
    .vendor >>供应商垃圾
    .target Dane Winslow
step << Warlock tbc
    .goto Elwynn Forest,49.873,42.649
    >>对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .accept 1598 >>接任务: |cRXP_LOOT_失窃的典籍|r
    .trainer >>列车献祭
    .target Drusilla La Salle
step << Warlock tbc
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    >>杀死途中的一些狼，|cRXP_WARN_然后观看此视频|r。掠夺书籍后使用炉石。
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>点击这里
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock tbc
    .goto Elwynn Forest,52.9,44.3,60,0
    >>途中杀死一些狼，|cRXP_WARN_然后观看此视频|r。
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>点击这里
    .goto Elwynn Forest,56.7,44.0
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock tbc
    .deathskip >>在灵魂治疗师处死亡并重生
step << Warlock tbc
    #hardcore
    #completewith next
    >>确保你深入帐篷，这样你就不会再次受到攻击
    .hs >>回到北郡山谷
step << Warlock tbc
    >>对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >>交任务: |cRXP_FRIENDLY_失窃的典籍|r
    .target Drusilla La Salle
step
    >>召唤小鬼，抵抗恶魔皮肤 << Warlock tbc
    >>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .accept 783 >>接任务: |cRXP_LOOT_身边的危机|r
step << Warrior
    #sticky
    #completewith next
    +杀死 |cRXP_LOOT_Wolves|r 可获得 10c+ 的商贩垃圾。尽早训练战斗吼叫是值得的
    .goto Elwynn Forest,46.4,40.3,60,0
step << Warrior
    >>对话: |cRXP_FRIENDLY_丹尼尔修士|r
    .target Brother Danil
    .goto Elwynn Forest,47.5,41.6
    .vendor >>供应商垃圾
step
    >>与修道院内的 |cRXP_FRIENDLY_Marshal McBridge|r 交谈
    .target 麦克布莱德元帅
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >>交任务: |cRXP_FRIENDLY_身边的危机|r
    .accept 7 >>接任务: |cRXP_LOOT_剿灭狗头人|r
step << Warrior
    >>对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .trainer >>列车战斗呐喊
step
    >>跑回外面 << Warrior
    >>Talk to |cRXP_FRIENDLY_Deputy Willem|r again
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .accept 5261 >>接任务: |cRXP_LOOT_伊根·派特斯金纳|r
step << Priest tbc/Mage tbc/Warlock tbc
    .goto Elwynn Forest,46.2,40.4
    .vendor >>杀死 |cRXP_LOOT_Wolves|r 直到获得价值 50c 的供应商垃圾。供应商，然后从 |cRXP_FRIENDLY_Brother Danil|r 购买 x10 水。
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Priest/Mage
    .goto Elwynn Forest,46.70,37.78
    .xp 2 >>升级至 2
step
    >>对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.9,40.2
    .turnin 5261 >>交任务: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .accept 33 >>接任务: |cRXP_LOOT_林中的群狼|r
step << tbc
    .goto Elwynn Forest,46.70,37.78
    >>杀死 |cRXP_LOOT_Young Wolves|r。掠夺他们的 |cRXP_LOOT_Meat|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step << wotlk
    .goto Elwynn Forest,46.70,37.78
    >>杀死 |cRXP_LOOT_Diseased Young Wolves|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 33,1 --Collect 病狼 Pelt (8)
step
    .goto Elwynn Forest,49.05,35.33
    >>杀死 |cRXP_ENEMY_Kobold Vermin|r
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
    >>返回 |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >>交任务: |cRXP_FRIENDLY_林中的群狼|r << Warrior/Paladin/Rogue
    .turnin 33 >>交任务: |cRXP_FRIENDLY_林中的群狼|r << !Warrior !Paladin !Rogue
step << Priest tbc/Mage tbc/Warlock tbc
    .goto Elwynn Forest,47.6,41.5
    .vendor >>卖掉垃圾，然后从 |cRXP_FRIENDLY_Brother Danil|r 购买 10 倍以上的水。
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock/wotlk
    >>对话: |cRXP_FRIENDLY_丹尼尔修士|r
    .target Brother Danil
    .goto Elwynn Forest,47.6,41.5
    .vendor >>供应商垃圾
step
    .goto Elwynn Forest,48.923,41.606
    >>与修道院内的 |cRXP_FRIENDLY_Marshal McBridge|r 交谈
    .target 麦克布莱德元帅
    .turnin 7 >>交任务: |cRXP_FRIENDLY_剿灭狗头人|r
    .accept 3100 >>接任务: |cRXP_LOOT_简要的信件|r << Warrior
    .accept 3101 >>接任务: |cRXP_LOOT_圣洁信件|r << Paladin
    .accept 3102 >>接任务: |cRXP_LOOT_密文信件|r << Rogue
    .accept 3103 >>接任务: |cRXP_LOOT_神圣信件|r << Priest
    .accept 3104 >>接任务: |cRXP_LOOT_雕文信件|r << Mage
    .accept 3105 >>接任务: |cRXP_LOOT_被污染的信件|r << Warlock
    .accept 15 >>接任务: |cRXP_LOOT_回音山调查行动|r
step << Warlock wotlk
    >>对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >>交任务: |cRXP_FRIENDLY_被污染的信件|r
    .train 688 >>从你的职业训练师那里学习召唤小鬼
    >>你需要 95c，如果你还没有钱，就磨一点
step
    .goto Elwynn Forest,49.05,35.33
    .xp 3 >>升级至 3
step
    .goto Elwynn Forest,47.42,32.68
    >>杀死 |cRXP_ENEMY_Kobold 工人|r
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #completewith thievesaccept
    #label xp3
    .xp 3+1110 >>回来的路上磨练到 1110+/1400xp
step
    #completewith next
    >>对话: |cRXP_FRIENDLY_丹尼尔修士|r
    .target Brother Danil
    .goto Elwynn Forest,47.7,41.4
    .vendor >>供应商垃圾
step
    #requires xp3
    >>与修道院内的 |cRXP_FRIENDLY_Marshal McBridge|r 交谈
    .target 麦克布莱德元帅
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
    .accept 21 >>接任务: |cRXP_LOOT_回音山清剿行动|r
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15 >>点击此处
step << Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.5,40.0,15 >>上楼去
step << Mage
    >>对话: |cRXP_FRIENDLY_凯尔登·布雷门|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .trainer >>训练你的职业法术
step << Priest
    #sticky
    #completewith next
    .goto Elwynn Forest,49.8,40.2,15 >>穿过门口
step << Priest
    >>对话: |cRXP_FRIENDLY_女牧师安妮塔|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >>交任务: |cRXP_FRIENDLY_神圣信件|r
    .trainer >>训练你的职业法术
step << Warrior/Paladin
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>留在楼下
step << Warrior
    >>对话: |cRXP_FRIENDLY_莱尼·拜舍尔|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >>交任务: |cRXP_FRIENDLY_简要的信件|r
    .trainer >>训练你的职业法术
step << Paladin
    >>对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >>交任务: |cRXP_FRIENDLY_圣洁信件|r
    .trainer >>训练你的职业法术
step
    #label thievesaccept
    >>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .accept 18 >>接任务: |cRXP_LOOT_潜行者兄弟会|r
step << Warlock
    >>对话: |cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >>交任务: |cRXP_FRIENDLY_被污染的信件|r
    .xp 4 >>升级至 4
    .trainer >>列车腐败
step
    .goto Elwynn Forest,54.57,49.03
    >>杀死 |cRXP_LOOT_Defias Thugs|r。掠夺他们以获得 |cRXP_LOOT_Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >>升级至 4
step
    >>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .turnin 18,4 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Paladin
    .turnin 18,1 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Rogue/Warlock
    .turnin 18,5 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Mage
    .turnin 18,2 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Priest
    .turnin 18,3 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << Warrior
    .turnin 18 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >>接任务: |cRXP_LOOT_加瑞克·帕德弗特的赏金|r
    .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
step
    >>对话: |cRXP_FRIENDLY_丹尼尔修士|r
    .target Brother Danil
    .goto Elwynn Forest,47.7,41.4
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,47.66,31.88,40,0
    .goto Elwynn Forest,48.61,27.63
    >>杀死矿井中的 |cRXP_ENEMY_Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>升级至 5
step
#xprate >1.69
    >>与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 交谈
    .target 米莉·奥斯沃斯
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
step
#xprate <1.7
    >>与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 交谈
    .target 米莉·奥斯沃斯
    .goto Elwynn Forest,50.7,39.2
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .accept 3904 >>接任务: |cRXP_LOOT_米莉的葡萄|r
step << Rogue
    >>与 |cRXP_FRIENDLY_Jorik Kerridan|r 交谈
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    >>你不需要训练任何法术
    .turnin 3102 >>交任务: |cRXP_FRIENDLY_密文信件|r
step
#xprate <1.7
    >>拾取田野里的 |cRXP_PICK_葡萄桶|r
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>一路磨练。杀死 |cRXP_LOOT_Garrick|r 并掠夺他的 |cRXP_LOOT_Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >>一路磨练，回到 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
#xprate <1.7
    >>与 |cRXP_FRIENDLY_米莉·奥斯沃斯|r 交谈
    .target 米莉·奥斯沃斯
    .goto Elwynn Forest,50.7,39.2
    .turnin 3904 >>交任务: |cRXP_FRIENDLY_米莉的葡萄|r
    .accept 3905 >>接任务: |cRXP_LOOT_葡萄出货单|r
step
    >>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94 << tbc
    .goto Elwynn Forest,48.05,43.55 << wotlk
    .turnin 6,2 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r << Warrior/Rogue/Paladin
    .turnin 6 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r << !Warrior !Rogue !Paladin
step
    >>与修道院内的 |cRXP_FRIENDLY_Marshal McBridge|r 交谈
    .target 麦克布莱德元帅
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,2 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r << Warrior/Paladin
    .turnin 21 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r << !Warrior !Paladin
    .accept 54 >>接任务: |cRXP_LOOT_去闪金镇报到|r
step
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>上楼去
step
#xprate <1.7
    >>对话: |cRXP_FRIENDLY_尼尔斯修士|r
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905 >>交任务: |cRXP_FRIENDLY_葡萄出货单|r
step << Priest
    >>对话: |cRXP_FRIENDLY_女牧师安妮塔|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >>接任务: |cRXP_LOOT_圣光的恩赐|r
step
    >>离开北郡山谷并与 |cRXP_FRIENDLY_Falkhaan Isenstrider|r交谈
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.6,47.7
    .accept 2158 >>接任务: |cRXP_LOOT_休息和放松|r
step
    #hardcore
    >>Talk to |cRXP_FRIENDLY_Marshall Dughan|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
    .accept 62 >>接任务: |cRXP_LOOT_法戈第矿洞|r
step
    #softcore
    #completewith Goldshire
    .deathskip >>在灵魂治疗师处死亡并重生
step << Rogue
    .goto Elwynn Forest,41.706,65.544
    .target Smith Argus
    .train 2018 >>在阿古斯训练锻造。这将使你能够为你的武器制造 +2 伤害的磨刀石，这种磨刀石非常坚固。制造到 20 级左右 << Rogue
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    .money <0.0509
    .target Corina Steele
    >>修理你的武器。如果你有足够的钱（5先令 9 美分），就从 Corina 那里买一把 Gladius。否则，跳过这一步（你稍后会回来）
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    .money <0.0382
    .target Corina Steele
    >>修理你的武器。如果你有足够的钱（3先令 82 美分），就从 Corina 那里买一把短剑。否则，跳过这一步（你稍后会回来）
    .collect 2494,1 --Collect Stiletto
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    .money <0.0666
    .target Corina Steele
    >>修理你的武器。如果你有足够的钱（6先令 66 美分），从 Corina 那里买一把木槌。否则，跳过这一步（你稍后会回来）
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Warlock
    #completewith next
    >>对话: |cRXP_FRIENDLY_安德温·克里顿|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    #label Goldshire
    >>Talk to |cRXP_FRIENDLY_Marshall Dughan|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
    .accept 62 >>接任务: |cRXP_LOOT_法戈第矿洞|r
step
    >>进入旅馆后，在左侧与 |cRXP_FRIENDLY_William Pestle|r 交谈
    .target William Pestle
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.283,65.721
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
step
    .goto Elwynn Forest,43.771,65.803
    >>对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .target Innkeeper Farley
    >>请勿在这里购买任何食物和饮料 << Warlock
    .turnin 2158 >>交任务: |cRXP_FRIENDLY_休息和放松|r
    .home >>将你的炉石设置为闪金郡
step
    .xp 6 >>升级至 6
step << Rogue
    >>对话: |cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>从 Brog 购买 3 级投掷物。装备它
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>前往旅店老板后面的房间，然后下楼。
step << Warlock
    >>对话: |cRXP_FRIENDLY_玛克西米利安·克洛文|r, |cRXP_FRIENDLY_塞琳娜·达克哈特|r
    .target 马克西米利安·克罗
    .target Cylina Darkheart
    .goto Elwynn Forest,44.4,66.2
    .trainer >>训练你的职业法术。它在地下室。
    .goto Elwynn Forest,44.4,66.0
    .vendor >>如果训练后有钱就买血契这本书（否则以后再买） << tbc
step << Mage/Priest/Rogue
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>上楼去
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >>训练你的职业法术
step << Priest
    .goto Elwynn Forest,43.283,65.721
>>对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
    .turnin 5623 >>交任务: |cRXP_FRIENDLY_圣光的恩赐|r
.target Priestess Josetta
    .accept 5624 >>接任务: |cRXP_LOOT_圣光之衣|r
    .trainer >>训练你的职业法术
step << Rogue
    .money <0.01
    >>对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.9,65.9
    .trainer >>训练你的职业法术
step << Rogue/Warrior
    .money <0.01
    >>对话: |cRXP_FRIENDLY_米歇尔·贝利|r
    .target Michelle Belle
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >>训练急救 - 不要一次性制作所有绷带，最好稍后再制作
step << Warrior tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor >>购买 5 级食物，降至 1 银
step << Rogue tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor >>购买最多 20 个 5 级食物
step << Warrior/Paladin
    .goto Elwynn Forest,41.706,65.544
    .target Smith Argus
    .train 2018 >>在阿古斯训练锻造技能。这将使你能够为你的武器制造 +2 伤害磨刀石 << Warrior
    .train 2018 >>在阿古斯训练锻造技能。这将使你能够为你的武器制造 +2 伤害配重石 << Paladin
step << Warrior
    >>对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >>训练你的职业法术
step << Paladin
    >>对话: |cRXP_FRIENDLY_威尔海姆修士|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.1,66.0
    .trainer >>训练你的职业法术
step
    >>与 |cRXP_FRIENDLY_Remy 交谈“两次”|r
    .target 雷米“两次”
    .goto Elwynn Forest,42.1,67.3
    .accept 47 >>接任务: |cRXP_LOOT_金砂交易|r
step << Priest
    >>对 |cRXP_FRIENDLY_Guard Roberts|r 使用次级治疗术 2 级，然后使用真言术：韧
    .target Guard Roberts
    .goto Elwynn Forest,48.2,68.0
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>开始猎杀 |cRXP_LOOT_Boars|r 你看到的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r, |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .target “阿姨”伯妮丝·斯通菲尔德
    .goto Elwynn Forest,34.486,84.253
    .accept 85 >>接任务: |cRXP_LOOT_丢失的项链|r
    .goto Elwynn Forest,34.660,84.482
    .accept 88 >>接任务: |cRXP_LOOT_公主必须死！|r
step
    #completewith Candles
    >>杀死 |cRXP_LOOT_Kobolds|r 并从他们身上夺取 |cRXP_LOOT_Candles|r
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Candles
    #completewith next
    >>杀死 |cRXP_LOOT_Kobolds|r 并从他们身上掠夺 |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage/Warlock
    #label Dust
    >>向东碾磨怪物并与 |cRXP_FRIENDLY_Billy Maclure|r 交谈
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step << Warrior
    #label Dust
    >>向东碾磨怪物并与 |cRXP_FRIENDLY_Billy Maclure|r 交谈
    .target Billy Maclure
    >>如果你在任何时候得到一块原石，就通过锻造把它变成磨刀石，然后把它用在你的剑上
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step << Rogue
    #label Dust
    >>向东碾磨怪物并与 |cRXP_FRIENDLY_Billy Maclure|r 交谈
    .target Billy Maclure
    >>如果你在任何时候得到一块粗石，就通过锻造把它变成磨刀石，然后把它应用在你的匕首上
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step << Paladin
    #label Dust
    >>向东碾磨怪物并与 |cRXP_FRIENDLY_Billy Maclure|r 交谈
    .target Billy Maclure
    >>如果你在任何时候得到一块粗糙的石头，通过锻造把它变成一块重量石，然后把它应用到你的狼牙棒上
    .goto Elwynn Forest,43.132,85.722
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    #label BoarMeat1
    >>对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .target Maybell Maclure
    .goto Elwynn Forest,43.2,89.6
    .accept 106 >>接任务: |cRXP_LOOT_年轻的恋人|r
step << Mage tbc/Priest tbc/Warlock tbc
    .goto Elwynn Forest,42.4,89.4
    >>对话: |cRXP_FRIENDLY_乔舒·马科伦|r
    .target Joshua Maclure
    .vendor >>小贩，买尽可能多的牛奶
step << !Mage !Priest !Warlock tbc
    >>对话: |cRXP_FRIENDLY_乔舒·马科伦|r
    .target Joshua Maclure
    .goto Elwynn Forest,42.4,89.4
    .vendor >>供应商垃圾
step
    #completewith next
    >>在途中升级 |cRXP_LOOT_Boars|r 以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    >>返回 Stonefield 农场，然后继续前往河边。与 |cRXP_FRIENDLY_Tommy Joe Stonefield|r 交谈
    .target Tommy Joe Stonefield
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >>交任务: |cRXP_FRIENDLY_年轻的恋人|r
    .accept 111 >>接任务: |cRXP_LOOT_托米的祖母|r
step
    .goto Elwynn Forest,32.5,85.5
    >>完成杀死 |cRXP_LOOT_Boars|r 你会看到 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    >>返回 |cRXP_FRIENDLY_“Auntie” Bernice Stonefield|r
    .target “阿姨”伯妮丝·斯通菲尔德
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .accept 84 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    >>与屋内的 |cRXP_FRIENDLY_Gramma Stonefield|r 交谈
    .target Gramma Stonefield
    .goto 1429,34.945,83.855
    .turnin 111 >>交任务: |cRXP_FRIENDLY_托米的祖母|r
    .accept 107 >>接任务: |cRXP_LOOT_给威廉·匹斯特的信|r
step
    #sticky
    #completewith next
    >>杀死 |cRXP_LOOT_Kobolds|r 并从他们身上掠夺 |cRXP_LOOT_Candles|r 和 |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>通过矿井外部向东升级怪物并与农场上的 |cRXP_FRIENDLY_Billy Maclure|r 交谈
    .target Billy Maclure
    .goto Elwynn Forest,43.132,85.722
    .turnin 84 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .accept 87 >>接任务: |cRXP_LOOT_金牙|r
step
    #completewith next
    >>杀死 |cRXP_LOOT_Kobolds|r 并从他们身上掠夺 |cRXP_LOOT_Candles|r 和 |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    >>进入矿井
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>|cRXP_WARN_汇集尽可能多的怒气|r (从其他怪物身上榨取怒气) 然后杀死|cRXP_LOOT_Goldtooth|r 以获得|cRXP_LOOT_Bernice 的项链|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << !Warrior
    >>杀死 |cRXP_LOOT_Goldtooth|r 以获取 |cRXP_LOOT_Bernice 的项链|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step << Warrior
    #sticky
    #completewith Goldtooth
    +|cRXP_WARN_从现在开始尝试保存一剂治疗药水，因为稍后你将需要它来治疗罗尔夫的尸体|r
step << Warrior/Rogue
    >>如果你捡到一块粗石，记得制作磨刀石
    .xp 7+1600 >>升级直到 1600+/4500xp
step << Paladin
    >>如果你捡到一块原石，记得制作重量石
    .xp 7+1600 >>升级直到 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>升级直到 1600+/4500xp
step << Priest
    .xp 7+1260 >>升级直到 1260+/4500xp
step
    #label KoboldTurnins
    .goto Elwynn Forest,40.5,82.3
    >>杀死 |cRXP_LOOT_Kobolds|r 并从他们身上掠夺 |cRXP_LOOT_Candles|r 和 |cRXP_LOOT_Gold Dust|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #label Goldtooth
    #requires KoboldTurnins
    >>回到 |cRXP_FRIENDLY_“阿姨” Bernice Stonefield|r
    .target “阿姨”伯妮丝·斯通菲尔德
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >>交任务: |cRXP_FRIENDLY_金牙|r
step
    >>将一些怪物磨回到金郡
    .xp 7+2690 >>升级直到 2690+/4500xp << !Priest
    .xp 7+2350 >>升级直到 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step << wotlk
    #completewith next
    .hs >>或逃回金郡
step
    >>对话: |cRXP_FRIENDLY_雷米|r
    .target Remy "TWo Times"
    .goto Elwynn Forest,42.1,67.3
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>修理你的武器。如果你有足够的钱（3先令 82 美分），就从 Corina 那里买一把短剑。否则，跳过这一步（你稍后会回来）
    .collect 2494,1
step
    >>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .accept 76 >>接任务: |cRXP_LOOT_玉石矿洞|r
step
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    >>走进旅馆和威廉交谈
    .goto Elwynn Forest,43.283,65.721
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
.target William Pestle
    .accept 61 >>接任务: |cRXP_LOOT_送往暴风城的货物|r
    .turnin 107 >>交任务: |cRXP_FRIENDLY_给威廉·匹斯特的信|r
    .accept 112 >>接任务: |cRXP_LOOT_收集海藻|r
step
    .xp 8 >>升级至 8
step << Warlock
    >>回到地下室
    .goto Elwynn Forest,44.4,66.2
    .trainer >>训练你的职业法术
    .goto Elwynn Forest,44.4,66.0
    .vendor >>如果训练结束后有钱，就买Firebolt这本书（否则以后再买） << tbc
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>从 Brog 购买一个 6 格包
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >>训练你的职业法术
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >>训练你的职业法术
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>修理你的武器。如果你有足够的钱（5先令 9 美分），就从 Corina 那里买一把 Gladius。否则，跳过这一步（你稍后会回来）
    .collect 2488,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>修理你的武器。如果你有足够的钱（6先令 66 美分），从 Corina 那里买一把木槌。否则，跳过这一步（你稍后会回来）
    .collect 2493,1 --Collect Wooden Mallet
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>上楼去
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >>训练你的职业法术
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
    .turnin 5624 >>交任务: |cRXP_FRIENDLY_圣光之衣|r
    .trainer >>训练你的职业法术
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    .trainer >>训练你的职业法术
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .trainer >>训练急救 - 不要一次性制作所有绷带，最好稍后再制作
step << !Warrior !Rogue tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor >>购买 5 级水最多 40
step << Warrior/Rogue tbc
    .goto Elwynn Forest,43.771,65.803
    .vendor 295 >>购买 5 级食物，最多 40 份
step
    >>把鱼人磨成东边的鱼人，然后掠夺它们以获得海带叶。如果你还需要的话，就杀死岛上的怪物
    .goto Elwynn Forest,47.6,63.3,100,0
    .goto Elwynn Forest,51.4,64.6,100,0
    .goto Elwynn Forest,57.6,62.8,100,0
    .goto Elwynn Forest,56.4,66.6,100,0
    .goto Elwynn Forest,53.8,66.8,100,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>进入矿井，继续沿着中间的路走
    >>途中碾压怪物
    .goto Elwynn Forest,61.8,54.0,70,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step << wotlk
    #completewith next
    .deathskip >>故意死亡并在阿佐拉之塔重生
step
    >>与桥边的守卫托马斯交谈
    .goto Elwynn Forest,73.973,72.179
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
.target 后卫托马斯
    .accept 37 >>接任务: |cRXP_LOOT_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_LOOT_保卫边境|r
step
    #sticky
    #completewith Prowlers
    #label prowling
    >>像执行其他任务一样杀死潜行者
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Prowlers
    >>像执行其他任务一样杀死熊。杀死你看到的任何熊
    .complete 52,2 --Kill 年轻的森林熊 (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_LOOT_罗尔夫的下落|r
step
#xprate <1.7
    .goto Elwynn Forest,81.382,66.112
    >>跑到东谷伐木场尽快接这个任务！
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .accept 5545 >>接任务: |cRXP_LOOT_木材危机|r
step << Paladin tbc
    #sticky
    #completewith Bundles
    +在前往鱼人那里之前完成所有任务，我们将进行死亡跳跃。
step
#xprate <1.7
    #sticky
    #completewith next
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4
    >>在树根处找到木捆。优先完成这个任务
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >>走向守卫的尸体
    .isOnQuest 45
step << Priest
    .goto Elwynn Forest,79.8,55.5
    >>杀死尸体周围的怪物。预施放恢复和护盾，获得满法力，然后将 2 个怪物拉到小屋前面，移开，然后核爆一个。杀死一个后逃跑，然后杀死另一个。拾取地上的尸体
    >>要小心，因为这个任务很困难
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step << !Paladin
    .goto Elwynn Forest,79.8,55.5
    >>杀死尸体周围的怪物。将 2 只怪物拉到小屋前面，走开，放羊其中一只，同时杀死另一只，然后杀死被放羊的怪物。拾取地上的尸体 << Mage
    >>激怒，然后杀死尸体周围的 2 个怪物。将 2 个怪物拉到小屋前面，走开，在杀死另一个怪物的同时，让其中一个怪物受伤。杀死一个怪物后逃跑（用弹珠攻击它），然后拉动并杀死另一个怪物。拾取地上的尸体 << Warrior
    >>杀死尸体周围的怪物。将 2 个怪物拉到小屋前面，走开并杀死一个怪物。使用逃避。杀死一个后逃跑，然后杀死另一个。拾取地上的尸体 << Rogue
     >>杀死尸体周围的怪物。将 2 个怪物拉到小屋前面，走开，然后让其中一个保持恐惧，并尽量让两个都保持 DOT。然后掠夺地上的尸体 << Warlock
    >>要小心，因为这个任务很困难
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step << Paladin tbc
    #softcore
    .goto Elwynn Forest,79.8,55.5
    >>跑到尸体上面，然后使用神圣保护，立即抢劫尸体，交出并接受任务。之后你会死
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step << Paladin wotlk
    .goto Elwynn Forest,79.8,55.5
    >>杀死尸体周围的怪物。将 2 个怪物拉到小屋前面，移开，然后杀死其中一个小屋怪物。当两个怪物都靠近你时使用神圣保护，治疗/如果需要就逃跑，然后回来杀死另一个怪物
    >>要小心，因为这个任务很困难
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step << Paladin tbc
    #softcore
    #sticky
    #completewith Prowlers
    .goto Elwynn Forest,83.6,69.7,120 >>死亡后在灵魂治疗师处重生，或者如果有人提前清理了尸体，就开始跑回去
step
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    >>开始跑回来，完成捆绑
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
step
    #label Prowlers
    .xp 9 >>升级至 9
step
#xprate <1.7
    #label 熊s
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
step
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6
    >>杀死保卫边境的最后暴徒
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill 年轻的森林熊 (x5)
step
    >>回归后卫托马斯
    .goto Elwynn Forest,73.973,72.179
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
.target 后卫托马斯
    .accept 39 >>接任务: |cRXP_LOOT_托马斯的报告|r
.target 副总统雷纳
.target Marshal Haggard
.target 杜汉元帅
.target 农夫法布罗
.target Farmer Saldean
>>对话: |cRXP_FRIENDLY_农夫萨丁|r
-->>对话: |cRXP_FRIENDLY_农夫法布隆|r
-->>对话: |cRXP_FRIENDLY_治安官杜汉|r
--
-->>对话: |cRXP_FRIENDLY_治安官哈迦德|r
-->>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .accept 109 >>接任务: |cRXP_LOOT_向格里安·斯托曼报到|r
step
#xprate <1.7
    #completewith Deed
    .use 1972 >>留意迪菲亚兄弟会的“西部荒野契约”（幸运掉落）
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step
#xprate <1.7
    #completewith Grindxp
    .goto Elwynn Forest,69.53,79.47
    >>开始围绕农场，杀死迪菲亚并从他们身上夺取头巾。
    >>尝试在最后一次时将生命值降至最低，之后我们将死亡跳跃 << tbc
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step << Warrior
    .goto Elwynn Forest,69.4,79.2
    >>激怒池，然后杀死公主。如果需要，使用之前的弱效治疗药水。抢劫她，获得项圈
    .complete 88,1 --Collect Brass Collar (x1)
step << Rogue
    .goto Elwynn Forest,69.4,79.2
    >>确保闪避已开启，然后杀死公主。如果需要，使用之前的低级治疗药水。抢劫她，获得项圈
    .complete 88,1 --Collect Brass Collar (x1)
step << !Rogue !Warrior
    .goto Elwynn Forest,69.4,79.2
    >>杀死公主。如果需要，使用之前的低级治疗药水。抢劫她，获得项圈
    >>如果你陷入困境，你可以利用栅栏滥用路径并争取时间
    .complete 88,1 --Collect Brass Collar (x1)
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>如果有困难请点击这里
step << !Warlock
    #label Grindxp
    .xp 9+3695 >>升级至 3695+/6500xp
step << Warlock
    #label Grindxp
    .xp 9+3400 >>升级至 3400+/6500xp
step
#xprate <1.7
    .goto Elwynn Forest,69.53,79.47
    >>开始围绕农场，杀死迪菲亚并从他们身上夺取头巾。
    >>尝试在最后一次时将生命值降至最低，之后我们将死亡跳跃 << tbc
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step << tbc
    #completewith next
    .deathskip >>如果你的生命值低，就去灵魂治疗师那里死后重生，否则就跑回去交出
step
#xprate <1.7
    #label Deed
    >>与 Sara Timberlain 交谈
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >>升级直到 4475+/6500xp
step << Paladin
    .goto Redridge Mountains,8.5,72.0
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step << Paladin
    #sticky
    #completewith next
    .deathskip >>在这里被暴徒杀死然后在灵魂治疗师处复活
    .goto Redridge Mountains,11.2,78.4
step << Paladin
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获取赤脊山飞行路线
step << Paladin
    #hardcore
    >>跑向飞行路线。要格外小心，不要激怒或死于途中的任何怪物。尽量沿着道路行走，并留意
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获取赤脊山飞行路线
step
    .hs >>炉石到闪金镇
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>从 Brog 购买两个 6 格袋子
step
    .goto Elwynn Forest,43.283,65.721
    >>提交任务但不要等待角色扮演完成
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 112 >>交任务: |cRXP_FRIENDLY_收集海藻|r
step << Warrior/Rogue
    .goto Elwynn Forest,43.4,65.6
    >>与楼上的急救训练师交谈
    .train 3273 >>训练急救
step
    >>出去和杜汉元帅交谈
    .goto Elwynn Forest,42.2,65.8
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
    .turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target 杜汉元帅
    .accept 239 >>接任务: |cRXP_LOOT_西泉要塞|r
    .accept 59 >>接任务: |cRXP_LOOT_布甲和皮甲|r << Warlock
step << tbc/Warlock wotlk
    >>与铁匠铺的史密斯·阿古斯交谈
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
-->>对话: |cRXP_FRIENDLY_铁匠阿古斯|r
    .accept 1097 >>接任务: |cRXP_LOOT_艾尔默的任务|r
step
    .xp 10 >>升级至 10
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step << Warrior
    .goto Elwynn Forest,41.087,65.768
.target Ilsa Corbin
.target Lyria Du Lac
>>对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
-->>对话: |cRXP_FRIENDLY_伊尔萨·考宾|r
    .accept 1638 >>接任务: |cRXP_LOOT_战士的训练|r
    .trainer >>训练你的职业法术
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >>训练你的职业法术
step
    >>回到旅馆找威廉
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 114 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
step << Warlock
    >>回到地下室
    .goto Elwynn Forest,44.4,66.2
.target 雷门·马尔科特
>>对话: |cRXP_FRIENDLY_雷门·玛考特|r
    .accept 1685 >>接任务: |cRXP_LOOT_加科因的召唤|r
    .trainer >>训练你的职业法术
step << Mage/Priest/Rogue tbc
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>上楼
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
    .accept 5635 >>接任务: |cRXP_LOOT_绝望祷言|r << tbc
    .trainer >>训练你的职业法术
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >>训练你的职业法术
step << Rogue tbc
    .goto Elwynn Forest,43.9,65.9
    >>不用担心没有两把武器，我们很快就会得到另一把
    >>在这里训练时，一定要非常小心你的钱。下一级时你将需要 31s 52c。不过，一定要训练双持和冲刺。
    .trainer >>训练你的职业法术
step << Rogue tbc
    .goto Elwynn Forest,41.7,65.9
    .money >0.3152
    .vendor >>你没有足够的钱，所以为你的副手购买细高跟鞋
step
    >>跑出旅馆，向南走回到梅贝尔·麦克卢尔
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
step
    >>返回 Stonefield 农场
    .goto Elwynn Forest,34.660,84.482
.target 马斯通菲尔德
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88,2 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << Warrior/Paladin
    .turnin 88 >>交任务: |cRXP_FRIENDLY_公主必须死！|r << !Warrior !Paladin
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    >>点击任意一张通缉海报
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >>接任务: |cRXP_LOOT_通缉：霍格|r
step
    >>与副警长雷纳交谈
    .goto Elwynn Forest,24.2,74.5
.target 副总统雷纳
>>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    .goto Elwynn Forest,24.2,74.5
.target 副总统雷纳
>>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .accept 11 >>接任务: |cRXP_LOOT_悬赏河爪豺狼人|r << Warlock
step << Warrior
    .money >0.2099
    >>磨练一下直到你有 20 秒 99c+ 的可销售物品/money
    >>这是用于投掷，双手锤，双手剑训练，以及飞往暴风城
    .goto Elwynn Forest,27.6,93.0
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    #completewith Armbands
    >>留意金币拾取时间表（幸运掉落），或 Gruff Swiftbite 的 100% 掉落（罕见）。额外 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接任务: |cRXP_LOOT_收货人|r
step << Warlock/Mage wotlk
#xprate >1.3 << Mage
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,24.24,80.67,0
    >>霍格可能出现在该区域的多个位置。让他被恐惧束缚，或者在低于 60% 生命值时将他放风筝到 24,80 的塔上。抢劫他，获得他的爪子
    >>要小心，因为他可能会被其他怪物吓到，打击力度很大，而且可以击晕
    .complete 176,1 --Collect Huge Gnoll Claw (1)
step << Warlock
    #label Armbands
    .goto Elwynn Forest,27.0,93.9
    >>杀死豺狼人。掠夺他们的臂章
    .complete 11,1 --Collect Painted Gnoll Armband (8)
step << Rogue
    #label Armbands
    .money >0.3152
    .goto Elwynn Forest,24.2,74.5
.target 副总统雷纳
>>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .accept 11 >>接任务: |cRXP_LOOT_悬赏河爪豺狼人|r
step << Rogue
    .goto Elwynn Forest,27.0,93.9
    >>杀死豺狼人。掠夺他们的臂章
    .complete 11,1 --Collect Painted Gnoll Armband (x8)
    .isOnQuest 11
step << Warlock/Rogue/Mage wotlk
#xprate >1.3 << Mage
    .goto Elwynn Forest,24.2,74.5
.target 副总统雷纳
>>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 11 >>交任务: |cRXP_FRIENDLY_悬赏河爪豺狼人|r
    .isOnQuest 11
step << Mage wotlk
#xprate >1.3
    #completewith next
    .deathskip >>在金郡死亡并重生
step << Mage wotlk
#xprate >1.3
    .goto Elwynn Forest,42.105,65.927
    >>选择权杖。装备它
.target 杜汉元帅
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .isQuestComplete 176
step << Rogue
    .abandon 123 >>抛弃收藏家
step
    >>与 Furlbrows 交谈
    .goto Westfall,60.0,19.4
    .turnin -184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
.target 维尔纳·法布罗
>>对话: |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
step
    >>前往 Saldean 农场并进入房子
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
step
    #completewith next
    .goto Westfall,51.7,49.4,150 >>死亡后在灵魂治疗师处重生，或者跑到哨兵岭
step << Warlock wotlk
#xprate >1.3
    .goto Westfall,52.8,53.6
    .home >>将你的炉石设置为哨兵岭
step << Mage wotlk/Warlock wotlk
#xprate >1.3
    .goto Westfall,54.00,53.00
.target Scout Galiaan
>>对话: |cRXP_FRIENDLY_哨兵加里安|r
    .accept 153 >>接任务: |cRXP_LOOT_红色皮质面罩|r
step
    >>与塔上的 Gryan 交谈
    .goto Westfall,56.327,47.520
.target 格里安·斯托曼托
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
step << Mage wotlk/Warlock wotlk
#xprate >1.3
    .goto Westfall,56.327,47.520
.target 格里安·斯托曼托
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 12 >>接任务: |cRXP_LOOT_西部荒野人民军|r
step << Human
    >>与塔内的军需官刘易斯交谈
    .goto Westfall,57.002,47.169
.target Quartermaster Lewis
>>对话: |cRXP_FRIENDLY_军需官刘易斯|r
    .accept 6181 >>接任务: |cRXP_LOOT_快递消息|r
step << Mage wotlk
#xprate >1.3
    >>杀死迪菲亚帮。抢走他们的头巾
   .goto Westfall,48.21,46.70,60,0
   .goto Westfall,46.74,52.87,60,0
   .goto Westfall,48.21,46.70,-1
   .goto Westfall,46.74,52.87,-1
   .complete 12,1
   .complete 12,2
   .complete 153,1

step << Mage wotlk
#xprate >1.3
    .goto Westfall,54.00,52.90
.target Scout Galiaan
>>对话: |cRXP_FRIENDLY_哨兵加里安|r
    .turnin 153 >>交任务: |cRXP_FRIENDLY_红色皮质面罩|r
step << Mage wotlk
#xprate >1.3
    .goto Westfall,56.30,47.50
.target 格里安·斯托曼托
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 12 >>交任务: |cRXP_FRIENDLY_西部荒野人民军|r
step << Rogue tbc
    .money >0.3152
    +升级直到你有 31s 52c 的可销售物品/money
step << Human
    >>前往飞行管理员处
    .goto Westfall,56.6,52.6
>>对话: |cRXP_FRIENDLY_索尔|r
    .turnin 6181 >>交任务: |cRXP_FRIENDLY_快递消息|r
.target Thor
    .accept 6281 >>接任务: |cRXP_LOOT_赶赴暴风城|r
step << Mage wotlk
#xprate >1.3
    .xp 12 >>练到12级
step
    .goto Westfall,56.6,52.6
    .fly Stormwind >>飞往暴风城
step << Rogue/Warrior tbc
    >>进入大楼
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .collect 25873,1 >>从瑟曼那里购买锋利的飞刀。装备它
step
    .goto StormwindClassic,56.2,64.6
    >>与建筑内的 Morgan Pestle 交谈。使用火箭造成范围伤害或分开拉动背包
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>点击此处查看分拉指南（较长但内容丰富）
.target Morgan Pestle
>>对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
step << wotlk
    .goto StormwindClassic,52.61,65.71
    .home >>将你的炉石设置为暴风城
step << Warrior tbc
    .goto StormwindClassic,57.1,57.7
    .trainer >>训练 2h 剑
step << Priest
    .goto StormwindClassic,57.1,57.7
    .trainer >>火车五线谱
step << Mage/Warlock tbc
    .goto StormwindClassic,57.1,57.7
    .trainer >>如果你还有钱，可以先练法杖，然后再练单手剑
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .trainer >>训练 1h 剑
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>从 Gunther 购买弯刀并装备它
step << Paladin
    .goto StormwindClassic,57.1,57.7
    .trainer >>训练 2h 剑
step << Warlock/wotlk
    >>前往矮人区
    .goto StormwindClassic,74.3,47.2
>>对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
.target Osric Strang
    .accept 6261 >>接任务: |cRXP_LOOT_杜加尔·朗德瑞克|r << Warlock
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入被屠宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,25.2,78.5
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1685 >>交任务: |cRXP_FRIENDLY_加科因的召唤|r
.target Gakin the Darkbinder
    .accept 1688 >>接任务: |cRXP_LOOT_苏伦娜·凯尔东|r
step << Warlock
    .deathskip >>死亡后使用生命分流在灵魂治疗师处重生，并站在术士训练师旁边的篝火上
    .zoneskip Elwynn Forest
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    >>选择法杖然后装备它
.target 杜汉元帅
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .turnin 123 >>交任务: |cRXP_FRIENDLY_收货人|r
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>选择法杖然后装备它
.target 杜汉元帅
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
step << Warlock
    .xp 11 >>升级至 11
step << Warlock
    >>一路磨练，尝试提升你的法杖技能以供日后使用
    >>杀死屋子里的怪物，让摩根感到恐惧（他会凿伤并杀死宠物），用核武器攻击苏瑞娜。抢劫她，得到她的颈链
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x1)
step << Warlock
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 59 >>交任务: |cRXP_FRIENDLY_布甲和皮甲|r
step << Warlock wotlk
#xprate >1.3
    .xp 12
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r, 在前往 赤脊山 的途中磨练，确保至少拥有 2 个灵魂碎片（使用吸取灵魂）
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>接任务: |cRXP_LOOT_豺狼人的入侵|r
step << Warlock
    >>小心途中的暴徒
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
step << Warlock wotlk
#xprate >1.3
    .goto Redridge Mountains,29.30,53.60
.target Shawn
>>对话: |cRXP_FRIENDLY_肖恩|r
    .accept 3741 >>接任务: |cRXP_LOOT_希拉里的项链|r
step << Warlock wotlk
#xprate >1.3
    >>在水下寻找希拉里的项链。它位于一块棕色的泥土中
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Warlock wotlk
#xprate >1.3
    .goto Redridge Mountains,29.20,53.60
.target Hilary
>>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
step << Warlock
    .goto Redridge Mountains,30.6,59.4
    .fly Stormwind >>飞往暴风城
step << Warlock
    .goto StormwindClassic,66.3,62.1
    .turnin -6261 >>交任务: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
step << Warlock wotlk
#xprate >1.3
    .goto StormwindClassic,66.3,62.1
    .accept 6262 >>接任务: |cRXP_LOOT_返回西部荒野|r
    .isQuestTurnedIn 6261
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入被屠宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,25.2,78.5
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1688 >>交任务: |cRXP_FRIENDLY_苏伦娜·凯尔东|r
.target Gakin the Darkbinder
    .accept 1689 >>接任务: |cRXP_LOOT_誓缚|r
step << Warlock
    .goto StormwindClassic,25.2,80.7,14,0
    .goto StormwindClassic,23.2,79.5,14,0
    .goto StormwindClassic,26.3,79.5,14,0
    .goto StormwindClassic,25.5,78.1
    >>前往墓穴底部。使用血石项链召唤虚空行者并杀死它
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
    .goto StormwindClassic,25.2,78.5
    >>学会后不要召唤虚空行者
.target Gakin the Darkbinder
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1689 >>交任务: |cRXP_FRIENDLY_誓缚|r
step << Human
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
    --.accept 6261 >>接任务: |cRXP_LOOT_杜加尔·朗德瑞克|r
step << Warrior
    .goto StormwindClassic,74.3,37.3
    #completewith next
     >>进入旅馆
.target Harry Burlguard
>>对话: |cRXP_FRIENDLY_哈里·伯加德|r
     .turnin 1638 >>交任务: |cRXP_FRIENDLY_战士的训练|r
step << Warrior
     .goto StormwindClassic,71.7,39.9,20,0
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>对话: |cRXP_FRIENDLY_哈里·伯加德|r
    .accept 1639 >>接任务: |cRXP_LOOT_醉鬼巴特莱比|r
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>对话: |cRXP_FRIENDLY_巴特莱比|r
    .turnin 1639 >>交任务: |cRXP_FRIENDLY_醉鬼巴特莱比|r
.target Bartleby
    .accept 1640 >>接任务: |cRXP_LOOT_击败巴特莱比|r
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>对话: |cRXP_FRIENDLY_巴特莱比|r
    .turnin 1640 >>交任务: |cRXP_FRIENDLY_击败巴特莱比|r
.target Bartleby
    .accept 1665 >>接任务: |cRXP_LOOT_巴特莱比的酒杯|r
step << Warrior
    >>你现在将学习防御姿态和破甲
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>对话: |cRXP_FRIENDLY_哈里·伯加德|r
    .turnin 1665 >>交任务: |cRXP_FRIENDLY_巴特莱比的酒杯|r
step << Priest tbc
    #completewith next
    .goto StormwindClassic,38.8,26.4
.target High Priestess Laurena
>>对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .turnin 5635 >>交任务: |cRXP_FRIENDLY_绝望祷言|r
step << Priest tbc
    .goto StormwindClassic,38.62,26.10
    .train 13908 >>训练绝望的祈祷
step << Warrior/Paladin/Rogue
    #completewith StormpikeDelivery
    >>把破甲技能放在你的栏位上（这比英勇打击的伤害更大） << Warrior tbc
    .goto StormwindClassic,56.3,17.0
    .collect 2901,1 >>购买采矿镐。稍后你将训练采矿
step << tbc/Warlock wotlk
    #xprate >1.119 << Warlock wotlk
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >>交任务: |cRXP_FRIENDLY_艾尔默的任务|r
step << tbc
    #label StormpikeDelivery
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .accept 353 >>接任务: |cRXP_LOOT_雷矛的包裹|r
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
    #completewith next
    .goto StormwindClassic,63.9,8.3,25 >>进入 Deeprun 有轨电车
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
    >>电车到达后乘车，到达对面后下车 << !Rogue !Warrior !Paladin !Warlock
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>点击此处跳过电车内的退出
    >>电车到达后乘坐。在等电车时和上车时制作绷带。到达另一侧时接受 q << Rogue/Warrior/Paladin
    >>电车到达后乘坐。施放召唤虚空行者和制造治疗石。在另一侧下车 << Warlock
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
    >>用你的笛子吹响四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step << tbc/Warlock wotlk
#xprate >1.119 << Warlock wotlk
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
step << Warlock wotlk
#xprate >1.119
    .hs >>从炉边到哨兵岭
step << Warlock wotlk
#xprate >1.119
    >>杀死迪菲亚帮。抢走他们的头巾
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,48.21,46.70,-1
    .goto Westfall,46.74,52.87,-1
    .complete 12,1
    .complete 12,2
    .complete 153,1
step << Warlock wotlk
#xprate >1.119
    .goto Westfall,54.00,52.90
.target Scout Galiaan
>>对话: |cRXP_FRIENDLY_哨兵加里安|r
    .turnin 153 >>交任务: |cRXP_FRIENDLY_红色皮质面罩|r
step << Warlock wotlk
#xprate >1.119
    .goto Westfall,56.30,47.50
.target 格里安·斯托曼托
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 12 >>交任务: |cRXP_FRIENDLY_西部荒野人民军|r
step << Warlock wotlk
#xprate >1.119
    .xp 14 >>练级至 14 级
step << Warlock wotlk
#xprate >1.119
    .goto Westfall,56.6,52.6
    .fly Stormwind >>飞往暴风城
step << Warlock wotlk
#xprate >1.119
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入被屠宰的羔羊并下楼
step << Warlock wotlk
#xprate >1.119
    .train 6222 >>训练 2 级腐化并从术士训练师那里吸取生命
step << Warlock wotlk
#xprate >1.119
    >>进入大楼。如果你有钱的话，买一根烟熏魔杖
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5208,1 --Smoldering Wand (1)
    .money >0.3174
step << wotlk
#xprate >1.119
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .zoneskip Darnassus
    .zoneskip Teldrassil
    .zoneskip Darkshore
step << tbc
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << tbc
    .goto Ironforge,55.501,47.742
    .fp Ironforge >>获取铁炉堡飞行路线
step << Warlock tbc
    .goto Ironforge,20.93,53.19,20,0
    .goto Ironforge,18.16,51.46
    .home >>将你的炉石设置为铁炉堡
step << Warrior tbc
    .goto Ironforge,61.2,89.5
    .trainer >>训练 2h Maces
step << tbc
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>跑出铁炉堡

--TBC only part:
step << tbc
#xprate >1.3
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step << tbc
#xprate >1.3
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step << tbc
#xprate >1.3
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>继续向北直跑，当通用聊天室变成湿地时，倒下并死亡，然后重生
step << tbc
#xprate >1.3
    .goto Wetlands,12.7,46.7,30 >>游到岸边
step << tbc
#xprate >1.3
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >>如果你有 7.6s，请检查 Neal Allen 的青铜管，如果有的话就买下来
    .bronzetube
step << tbc
#xprate >1.3
    .goto Wetlands,9.5,59.7
    .fp Menethil >>获取米奈希尔港飞行路线
step << tbc
#xprate >1.3
    .money <0.0385
    .goto Wetlands,8.1,56.3
    .vendor >>检查 Dewin 的治疗药水，购买量降至 1 秒
step << tbc
#xprate >1.3
    .goto Wetlands,4.7,57.3
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    >>利用这段时间来升级你的急救设备或制作武器石。 << Warrior/Rogue/Paladin
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
-- Alliance tbc/Alliance Warlock
#name 11-12 洛克莫丹 << !Warlock
#name 12-14 洛克莫丹 << Warlock
#xprate <1.2 << wotlk
#version 1
#group RestedXP 联盟 1-20
#defaultfor Human
#next 14-14 黑海岸 << Warlock
#next 11-14 黑海岸 << !Warlock
step
    #xprate <1.2
    #completewith next
    .isOnQuest 1097
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >>交任务: |cRXP_FRIENDLY_艾尔默的任务|r
step
    #label StormpikeDelivery
    #xprate <1.2
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .accept 353 >>接任务: |cRXP_LOOT_雷矛的包裹|r
step
#xprate <1.2
    #completewith next
    .goto StormwindClassic,63.9,8.3,25 >>进入 Deeprun 有轨电车
step
#xprate <1.2
    >>电车到达后乘车，到达对面后下车 << !Rogue !Warrior !Paladin !Warlock
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>点击此处跳过电车内的退出
    >>电车到达后乘坐。在等电车时和上车时制作绷带。到达另一侧时接受 q << Rogue/Warrior/Paladin
    >>电车到达后乘坐。施放召唤虚空行者和制造治疗石。在另一侧下车 << Warlock
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step
#xprate <1.2
    >>用你的笛子吹响四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step
    #xprate <1.2
    .isOnQuest 6661
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
step
    #xprate <1.2
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Dun Morogh
step
    #xprate <1.2
    .goto Ironforge,55.501,47.742
    .fp Ironforge >>获取铁炉堡飞行路线
    .zoneskip Ironforge,1
step << Warrior tbc
    #xprate <1.2
    .goto Ironforge,61.2,89.5
    .trainer >>训练 2h Maces
step
    #xprate <1.2
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>跑出铁炉堡
    .zoneskip Ironforge,1
step
    #xprate <1.2
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
step
    #xprate <1.2
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>跑上这一段山路
step
    #xprate <1.2
    >>杀死瓦加什。夺取他的尖牙。
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
step
    #xprate <1.2
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    #xprate <1.2
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
step
    #xprate <1.2
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
step
    #xprate <1.2
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39
    >>杀死洞穴中的 Troggs
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill 岩颚骨撕咬者 (10)
step << !Warlock
    .xp 10+6350 >>升级至 6350+/7600
step << Warlock
    .xp 12
step
    #xprate <1.2
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    #xprate <1.2
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
step << !Warlock
    .xp 11
step << Mage/Warlock/Priest
    #xprate <1.2
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商，购买5级饮料
step
    #xprate <1.2
    .goto Dun Morogh,78.1,49.5,30,0
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    #xprate <1.2
    >>点击矮人尸体
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step
    #xprate <1.2
    >>杀死 Mangeclaw。获取他的爪子
    .goto Dun Morogh,78.9,37.0
    .complete 417,1 --Collect Mangy Claw (x1)
step
    #xprate <1.2
    #label LochEntrance
    .goto Dun Morogh,83.892,39.188
    >>选择匕首，将其用作副手 << Rogue
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    #xprate <1.2
    #completewith next
    .goto Dun Morogh,84.4,31.1
    .zoneskip Loch Modan >>穿过隧道到达洛克莫丹
step
    .goto Loch Modan,24.764,18.397
.target 巡山人雷矛
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r
step << Warlock/Mage/Rogue
    #xprate <1.5
    .goto Loch Modan,24.764,18.397
.target 巡山人雷矛
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
step << !Mage !Rogue
#xprate >1.3 << Warlock
    #softcore
    #completewith next
    .goto Loch Modan,28.14,18.29
    .deathskip >>死亡并重生至塞尔萨玛
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith next
    >>杀死该区域内的蜘蛛，获取蜘蛛脓液
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>杀死该区域的熊以获取熊肉
    .collect 3173,3 --Collect 熊 Meat (x3)
    >>杀死该区域内的野猪以获取野猪肠。
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
step << Warlock/Mage/Rogue
#xprate <1.5
    #sticky
    #label StormpikeO
    .abandon 1338 >>放弃 Stormpike 的命令。这将解锁登山者 Stormpike 的任务
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.8,48.6
    .vendor >>购买 1-2 个 6 格袋子
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.5,48.4
    .vendor >>购买食物/水（尽量有40个5级饮料，20个5级食物） << Mage/Warlock
    .vendor >>购买食物，尽量有40个左右的5级食物 << Rogue
step << Warlock/Mage/Rogue
#xprate <1.5
    #requires StormpikeO
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>找到卡德雷尔。他沿着塞尔萨玛路巡逻
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Thelsamar1
    >>杀死塞尔萨玛血香肠区域中的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Thelsamar1
    >>杀死塞尔萨玛血香肠区域中的熊
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Thelsamar1
    >>杀死该区域内的野猪以获取塞尔萨玛血香肠。
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>在途中升级一些怪物以获取猪肠、熊肉和蜘蛛脓液
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,35.5,18.2,45 >>杀死老鼠并前往洞穴入口
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,36.3,24.7
    >>收集你在洞穴中找到的箱子。要小心，因为在第 11 级时这很困难
    >>小心，因为地卜师会在几秒后施放火焰防护（火焰免疫） << Mage/Warlock
    >>你可以在洞穴中再抢劫一个箱子后返回，因为箱子可以在你身后重生
    .complete 307,1 --Collect Miners' Gear (x4)
step << Warlock/Mage/Rogue
#xprate <1.5
    >>杀死狗头人。掠夺他们的耳朵
    .goto Loch Modan,36.3,24.7
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Ichor9
    >>杀死塞尔萨玛血香肠区域中的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Meat9
    >>杀死塞尔萨玛血香肠区域中的熊
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith Intest9
    >>在塞尔萨玛血香肠区域杀死野猪
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,23.3,17.9,45 >>跑回掩体，一路磨蹭
step << Warlock/Mage/Rogue
#xprate <1.5
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修 - 请勿出售任何用于塞尔萨玛血香肠的物品
step << Warlock/Mage/Rogue
#xprate <1.5
    .goto Loch Modan,24.7,18.3
.target 巡山人雷矛
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
step << Warlock/Mage/Rogue
#xprate <1.5
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,100,0
    .goto Loch Modan,30.9,10.6,100,0
    .goto Loch Modan,28.6,15.4,100,0
    .goto Loch Modan,30.5,26.6,100,0
    .goto Loch Modan,33.4,30.3,100,0
    .goto Loch Modan,39.4,33.3,100,0
    .goto Loch Modan,26.9,10.7,100,0
    .goto Loch Modan,30.9,10.6,100,0
    .goto Loch Modan,28.6,15.4,100,0
    .goto Loch Modan,30.5,26.6,100,0
    .goto Loch Modan,33.4,30.3,100,0
    .goto Loch Modan,39.4,33.3,100,0
    .goto Loch Modan,26.9,10.7
    >>杀死熊。掠夺它们的肉
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,100,0
    .goto Loch Modan,28.0,20.6,100,0
    .goto Loch Modan,33.8,40.5,100,0
    .goto Loch Modan,36.2,30.9,100,0
    .goto Loch Modan,39.0,32.1,100,0
    .goto Loch Modan,31.9,16.4,100,0
    .goto Loch Modan,28.0,20.6,100,0
    .goto Loch Modan,33.8,40.5,100,0
    .goto Loch Modan,36.2,30.9,100,0
    .goto Loch Modan,39.0,32.1,100,0
    .goto Loch Modan,31.9,16.4
    >>杀死蜘蛛。掠夺它们以获得灵液
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #label Intest9
    .goto Loch Modan,38.0,34.9,100,0
    .goto Loch Modan,37.1,39.8,100,0
    .goto Loch Modan,29.8,35.9,100,0
    .goto Loch Modan,27.7,25.3,100,0
    .goto Loch Modan,28.6,22.6,100,0
    .goto Loch Modan,38.0,34.9,100,0
    .goto Loch Modan,37.1,39.8,100,0
    .goto Loch Modan,29.8,35.9,100,0
    .goto Loch Modan,27.7,25.3,100,0
    .goto Loch Modan,28.6,22.6,100,0
    .goto Loch Modan,38.0,34.9
    >>杀死野猪。掠夺它们的肠子
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Warlock/Mage/Rogue
#xprate <1.5
    #requires Meat9
step << Warlock/Mage/Rogue
#xprate <1.5
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>找到卡德雷尔。他沿着塞尔萨玛路巡逻
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
    .unitscan Mountaineer Kadrell
step << Warlock/Mage/Rogue
#xprate <1.2
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step
    #xprate <1.2
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取塞尔萨玛飞行路线
    .hs >>炉石到暴风城 << !Warlock
step << Warlock
    .goto Loch Modan,22.071,73.127
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>从后面进入掩体
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step << Warlock
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    .goto Loch Modan,30.0,72.4,100,0
    .goto Loch Modan,34.7,71.6,100,0
    .goto Loch Modan,30.9,81.1,100,0
    >>杀死碎石穴居人。掠夺他们的牙齿
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Warlock
#xprate <1.2
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,32.7,76.5,0
    +在这里磨练，直到你有71s 50c的可销售物品+钱，然后上交
step << Warlock
#xprate <1.2
    .goto Loch Modan,32.7,76.5,0
    .xp 14-1820 >>不断磨练，直到距离 14 级还有 1800xp
step << Warlock
#xprate >1.499
    .goto Loch Modan,32.7,76.5,0
    .xp 14-2730 >>努力学习直到你距离 14 级还有 2730xp

step << Warlock
    .goto Loch Modan,22.2,73.3
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step << Warlock
    #label TroggT
    .goto Loch Modan,23.233,73.675
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step << Warlock
    .xp 14 >>升级至 14
step << Warlock
    #label HearthIF
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r << tbc
    .hs >>炉石到暴风城 << wotlk
step << !Warlock wotlk
        .hs >>炉石到暴风城
step << Warlock wotlk
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>进入被屠宰的羔羊并下楼
step << Warlock wotlk
    .train 6222 >>训练 2 级腐化并从术士训练师那里吸取生命
step << Warlock wotlk
    >>进入大楼。如果你有钱的话，买一根烟熏魔杖
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.84,65.14
    .collect 5208,1 --Smoldering Wand (1)
    .money >0.3174
step << wotlk
    #xprate <1.2
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .zoneskip Darnassus
    .zoneskip Teldrassil
    .zoneskip Darkshore
step << Warlock tbc
    #label Wand1
    #completewith Wand2
    .goto Ironforge,25.8,75.2,0 >>或者，从 AH 购买大魔杖，如果它的价格低于 30 秒 6 美分
    .collect 11288,1 --Collect Greater Magic Wand
step << Warlock tbc
    #label Wand2
    #completewith Wand1
    .goto Ironforge,24.0,16.7,20,0
    .goto Ironforge,22.6,16.5
    .vendor >>进入大楼，然后下楼。购买一根燃烧魔杖
step << Warlock tbc
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >>进入大楼
    .goto Ironforge,50.4,6.3
    .trainer >>训练你的职业法术
step << Warlock tbc
    .goto Ironforge,53.2,7.8,15,0 >>进入大楼
    .goto Ironforge,53.0,6.4
    .vendor >>购买 Consume Shadows r1，然后 Sacrifice r1
step << !Warlock
    .goto Ironforge,65.90,88.41 << Warrior
    .goto Ironforge,51.50,15.34 << Rogue
    .goto Ironforge,25.21,10.75 << Priest
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,24.55,4.46 << Paladin
     .trainer >>训练你的职业法术
step << tbc
    .goto Dun Morogh,53.5,34.9,60 >>前往: |cRXP_PICK_丹莫罗|r
step << tbc
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往跳跃点
step << tbc
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>打开此链接并在另一个屏幕上跟踪。
    >>做不死丹莫洛->湿地跳过
    >>过海时避开鳄鱼
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>点击此处查看参考
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
step << tbc
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step << tbc
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step << tbc
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>继续向北直跑，倒下并死亡，然后在灵魂治疗师处重生。
step << tbc
    #softcore
    .goto Wetlands,12.7,46.7,30 >>游到岸边
step << tbc
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >>如果你有 7.6s，请检查 Neal Allen 的青铜管，如果有的话就买下来
    .bronzetube
step << tbc
    .goto Wetlands,9.5,59.7
    .fp Menethil >>获取米奈希尔港飞行路线
step << tbc
    .money <0.0385
    .goto Wetlands,8.1,56.3
    .vendor >>检查 Dewin 的治疗药水，购买量降至 1 秒
step << tbc
    .goto Wetlands,4.7,57.3
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    >>利用这段时间来升级你的急救设备或制作武器石。 << Warrior/Rogue/Paladin
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance Warlock
#name 14-14 黑海岸
#version 1
#group RestedXP 联盟 1-20
#defaultfor Human Warlock
#next 14-20 秘血岛
#xprate <1.5 << wotlk

step
    .maxlevel 13
    #completewith next
    .goto Darkshore,36.8,44.3,0
    .vendor >>如果您愿意的话，您可以从旅馆底层的莱尔德 (Laird) 购买便宜的食物（20c 5 级食物）。
step
    .maxlevel 13
    >>客栈顶楼
    .goto Darkshore,37.0,44.1
.target Wizbang Cranktoggle
>>对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
step
    .maxlevel 13
    >>接受奥伯丁周边的任务
.target 萨纳利恩护树人
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
    .goto Darkshore,38.8,43.4
.target Terenthis
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接任务: |cRXP_LOOT_熊怪的威胁|r
    .goto Darkshore,39.3,43.4
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .goto Darkshore,36.621,45.594
step
    .maxlevel 13
    .goto Darkshore,36.3,45.6
    .fp Auberdine >>获取奥伯丁飞行路线
step
    .isOnQuest 983
    #completewith Darkshore2
    >>杀死爬行者。在执行其他任务时掠夺它们的腿
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .isOnQuest 3524
    .goto Darkshore,36.4,50.9
    .complete 3524,1 --Collect Sea Creature Bones (x1)
step
    .isOnQuest 2118
    .goto Darkshore,38.3,52.7,70,0
    .goto Darkshore,38.9,62.0,70,0
    .goto Darkshore,38.3,52.7,70,0
    .goto Darkshore,38.9,62.0,70,0
    .goto Darkshore,38.3,52.7
    >>继续向南走直到你找到一只狂暴熊，当你激怒它时使用背包中的萨纳瑞恩的希望
    .complete 2118,1 --Rabid Thistle 熊 Captured
    .unitscan Rabid Thistle 熊
step
    .isOnQuest 984
    #label Darkshore2
.goto Darkshore,39.0,53.2
    .complete 984,1 --Find a corrupt furbolg camp
step
    .isOnQuest 983
    .goto Darkshore,36.7,52.4,70,0
    .goto Darkshore,35.6,47.6,70,0
    .goto Darkshore,36.2,44.5,70,0
    .goto Darkshore,36.7,52.4
    >>杀死爬行者。掠夺它们的腿
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .isOnQuest 983
    .goto Darkshore,36.6,46.3
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
step
    .isOnQuest 3524
    .goto Darkshore,36.621,45.594
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
step
    .isOnQuest 2118
    .goto Darkshore,38.8,43.4
.target 萨纳利恩护树人
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
step
    .isOnQuest 984
    .goto Darkshore,39.3,43.4
.target Terenthis
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
step
    .goto Darkshore,36.621,45.594
    .abandon 1001 >>放弃 Buzzbox 411
step
    .goto Darkshore,30.8,41.0
    .abandon 4681 >>抛弃冲上岸
step
    #label Azuremyst
        .goto Darkshore,30.8,41.0
    .zone Azuremyst Isle >>前往: |cRXP_PICK_秘蓝岛|r
    >>在等待的同时，升级急救或制作武器石。 << Warrior/Rogue/Paladin
]])
