local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Human Mage
#name 1-10 艾尔文森林法师 AoE
#version 1
#group RestedXP 联盟法师
#defaultfor Human
#next 10-12 洛克莫丹 法师 AoE
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +您已选择适合人类的指南。您应该选择与您开始的相同的起始区 << Gnome
    +请注意，您已选择 AoE 指南。AoE 通常比单目标法师要难得多，但速度要快得多
step
    >>摧毁你的炉石
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 783 >>接任务: |cRXP_LOOT_身边的危机|r
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 783 >>交任务: |cRXP_FRIENDLY_身边的危机|r
.target 麦克布莱德元帅
    .accept 7 >>接任务: |cRXP_LOOT_剿灭狗头人|r
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 5261 >>接任务: |cRXP_LOOT_伊根·派特斯金纳|r
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>杀死狼，直到你有价值 50c 的商贩垃圾。然后从丹尼尔兄弟那里购买 x10 水。
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >>升级至 2
step
    .goto Elwynn Forest,48.9,40.2
>>对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 5261 >>交任务: |cRXP_FRIENDLY_伊根·派特斯金纳|r
.target Eagan Peltskinner
    .accept 33 >>接任务: |cRXP_LOOT_林中的群狼|r
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>杀死该地区的幼狼以获取肉
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>杀死该区域内的狗头人害虫
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 33 >>交任务: |cRXP_FRIENDLY_林中的群狼|r
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>供应商垃圾，然后从丹尼尔兄弟那里购买 10 倍以上的水
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 7 >>交任务: |cRXP_FRIENDLY_剿灭狗头人|r
.target 麦克布莱德元帅
    .accept 15 >>接任务: |cRXP_LOOT_回音山调查行动|r
    .accept 3104 >>接任务: |cRXP_LOOT_雕文信件|r
step
    .xp 3 >>升级至 3
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>杀死狗头人工人
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>返回城镇的路上，经验值增加到 1110+/1400xp
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>供应商垃圾
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
.target 麦克布莱德元帅
    .accept 21 >>接任务: |cRXP_LOOT_回音山清剿行动|r
step
    >>上楼去
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>对话: |cRXP_FRIENDLY_凯尔登·布雷门|r
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .trainer >>训练你的职业法术
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .accept 18 >>接任务: |cRXP_LOOT_潜行者兄弟会|r
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>杀死迪菲亚暴徒。掠夺他们的头巾
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 18 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r
.target Deputy Willem
    .accept 6 >>接任务: |cRXP_LOOT_加瑞克·帕德弗特的赏金|r
    .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>杀死矿井里的工人
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>升级至 5
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
.target 米莉·奥斯沃斯
    .accept 3904 >>接任务: |cRXP_LOOT_米莉的葡萄|r
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target 米莉·奥斯沃斯
>>对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
step
    #era/som
    >>掠夺田野里的葡萄桶
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>杀死加里克并夺取他的头颅
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >>一路磨练，回到 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3904 >>交任务: |cRXP_FRIENDLY_米莉的葡萄|r
.target 米莉·奥斯沃斯
    .accept 3905 >>接任务: |cRXP_LOOT_葡萄出货单|r
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Talk to |cRXP_FRIENDLY_Deputy Willem|r
    .turnin 6 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 21 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r
.target 麦克布莱德元帅
    .accept 54 >>接任务: |cRXP_LOOT_去闪金镇报到|r
step
     #era/som
     >>走上主楼梯
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>对话: |cRXP_FRIENDLY_尼尔斯修士|r
    .turnin 3905 >>交任务: |cRXP_FRIENDLY_葡萄出货单|r
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>对话: |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r
    .accept 2158 >>接任务: |cRXP_LOOT_休息和放松|r
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >>在灵魂治疗师处死亡并重生，或者跑到金郡
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,42.105,65.927
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
.target 杜汉元帅
    .accept 62 >>接任务: |cRXP_LOOT_法戈第矿洞|r
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>进入旅馆后，左侧即可看到
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .turnin 2158 >>交任务: |cRXP_FRIENDLY_休息和放松|r
    .home >>将你的炉石设置为闪金郡
step
    .xp 6 >>升级至 6
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >>上楼。训练你的职业法术
step
    .goto Elwynn Forest,42.1,67.3
.target 雷米“两次”
>>对话: |cRXP_FRIENDLY_雷米|r
    .accept 47 >>接任务: |cRXP_LOOT_金砂交易|r
step
    #sticky
    #completewith BoarMeat1
    >>开始杀死你看到的一些野猪以获取猪肉
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target “阿姨”伯妮丝·斯通菲尔德
>>对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .accept 85 >>接任务: |cRXP_LOOT_丢失的项链|r
    .goto Elwynn Forest,34.660,84.482
.target 马斯通菲尔德
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .accept 88 >>接任务: |cRXP_LOOT_公主必须死！|r
step
    #sticky
    #completewith Candles
    >>从附近的狗头人那里获取一些蜡烛
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >>从附近的狗头人那里获取一些金粉
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>通过矿井外部向东磨怪物
    .goto Elwynn Forest,43.132,85.722
>>对话: |cRXP_FRIENDLY_比利·马科伦|r
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
.target Billy Maclure
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .accept 106 >>接任务: |cRXP_LOOT_年轻的恋人|r
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>小贩，买尽可能多的牛奶
step
    #sticky
    #completewith next
    >>杀死你看到的野猪以获取野猪肉
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>对话: |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r
    .turnin 106 >>交任务: |cRXP_FRIENDLY_年轻的恋人|r
.target Tommy Joe Stonefield
    .accept 111 >>接任务: |cRXP_LOOT_托米的祖母|r
step
    .goto Elwynn Forest,32.5,85.5
    >>完成获取野猪肉
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
>>对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 86 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
.target “阿姨”伯妮丝·斯通菲尔德
    .accept 84 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    .goto 1429,34.945,83.855
>>对话: |cRXP_FRIENDLY_米莱德·斯通菲尔德|r
    .turnin 111 >>交任务: |cRXP_FRIENDLY_托米的祖母|r
.target Gramma Stonefield
    .accept 107 >>接任务: |cRXP_LOOT_给威廉·匹斯特的信|r
step
    #sticky
    #label KoboldCandles
    >>从附近的狗头人那里获取一些蜡烛
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >>从附近的狗头人那里获取一些金粉
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>通过矿井外部向东磨怪物
    .goto Elwynn Forest,43.132,85.722
>>对话: |cRXP_FRIENDLY_比利·马科伦|r
    .turnin 84 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
.target Billy Maclure
    .accept 87 >>接任务: |cRXP_LOOT_金牙|r
step
    >>进入矿井
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>杀死金牙，获得伯妮丝的项链
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>升级直到 1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target “阿姨”伯妮丝·斯通菲尔德
>>对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 87 >>交任务: |cRXP_FRIENDLY_金牙|r
step
    >>将一些怪物磨回到金郡
    .xp 7+2690 >>升级直到 2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>对话: |cRXP_FRIENDLY_雷米|r
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
.target 雷米“两次”
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,42.105,65.927
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
.target 杜汉元帅
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .accept 76 >>接任务: |cRXP_LOOT_玉石矿洞|r
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,43.283,65.721
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
.target William Pestle
    .accept 61 >>接任务: |cRXP_LOOT_送往暴风城的货物|r
    .turnin 107 >>交任务: |cRXP_FRIENDLY_给威廉·匹斯特的信|r
    .accept 112 >>接任务: |cRXP_LOOT_收集海藻|r
step
    .xp 8 >>升级至 8
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>从 Brog 购买一个 6 格包
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >>上楼。训练你的职业法术
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>购买 5 级水最多 40
step
    >>把鱼人磨成东边的鱼人，然后掠夺它们以获得海带叶。如果你还需要的话，就杀死岛上的怪物
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>进入矿井，继续沿着中间的路走
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
.target 后卫托马斯
    .accept 37 >>接任务: |cRXP_LOOT_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_LOOT_保卫边境|r
step
    #sticky
    #completewith Prowlers
    >>像执行其他任务一样杀死潜行者
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith 熊s
    >>像执行其他任务一样杀死熊。杀死你看到的任何熊
    .complete 52,2 --Kill 年轻的森林熊 (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_LOOT_罗尔夫的下落|r
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .accept 5545 >>接任务: |cRXP_LOOT_木材危机|r
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >>供应商垃圾，修复
step
    #sticky
    #completewith Bundles
    >>留意树根处的木捆
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >>走向守卫的尸体
step
    .goto Elwynn Forest,79.8,55.5
    >>杀死尸体周围的怪物。将 2 只怪物拉到小屋前面，走开，放羊其中一只，同时杀死另一只，然后杀死被放羊的怪物。拾取地上的尸体
    >>请小心，因为这个任务可能很困难
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>开始跑回来，完成捆绑
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
step
    #label Prowlers
    .xp 9 >>升级至 9
step
    #label 熊s
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>杀死保卫边境的最后暴徒
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill 年轻的森林熊 (x5)
step
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
    #sticky
    #completewith Princess
    >>留意迪菲亚兄弟会的“西部荒野契约”（幸运掉落）
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>开始绕着农场转，杀死迪菲亚并掠夺他们的头巾
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>杀死公主。如果需要，使用之前的低级治疗药水。抢劫她，获得项圈
    >>你也可以在农场边缘的栅栏之间来回跳跃，杀死公主和她的守卫
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>如果你的生命值低，就去灵魂治疗师那里死后重生，否则就跑回去交出
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step
    #softcore
    #sticky
    #completewith next
    +死于这里的暴徒之手
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>在灵魂治疗师处重生
    .goto Redridge Mountains,20.8,56.6,100 >>在灵魂治疗师处重生
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获取赤脊山飞行路线
step
    #hardcore
    >>跑向飞行路线。要格外小心，不要激怒或死于途中的任何怪物。尽量沿着道路行走，并留意
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获取赤脊山飞行路线
step
    .hs >>炉石到闪金镇
step
    .goto Elwynn Forest,43.283,65.721
    >>不要等待他的角色扮演活动
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 112 >>交任务: |cRXP_FRIENDLY_收集海藻|r
step
    .goto Elwynn Forest,42.2,65.8
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
    .turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target 杜汉元帅
    .accept 239 >>接任务: |cRXP_LOOT_西泉要塞|r
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
-->>对话: |cRXP_FRIENDLY_铁匠阿古斯|r
    .accept 1097 >>接任务: |cRXP_LOOT_艾尔默的任务|r
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 114 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
step
    >>跑出旅馆，向南走
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
step
    .goto Elwynn Forest,34.660,84.482
.target 马斯通菲尔德
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88 >>交任务: |cRXP_FRIENDLY_公主必须死！|r
step
    .goto Elwynn Forest,24.2,74.5
.target 副总统雷纳
>>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target 农夫法布罗
>>对话: |cRXP_FRIENDLY_农夫法布隆|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
step
    .goto Westfall,59.918,19.416
.target 维尔纳·法布罗
>>对话: |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >>死亡后在灵魂治疗师处重生，或者跑到哨兵岭
step
    .goto Westfall,56.327,47.520
.target 格里安·斯托曼托
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
step
    .goto Westfall,57.002,47.169
    .vendor >>供应商垃圾
.target Quartermaster Lewis
>>对话: |cRXP_FRIENDLY_军需官刘易斯|r
    .accept 6181 >>接任务: |cRXP_LOOT_快递消息|r
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >>升级至 3750+/8800xp
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >>获取哨兵岭飞行路线
>>对话: |cRXP_FRIENDLY_索尔|r
    .turnin 6181 >>交任务: |cRXP_FRIENDLY_快递消息|r
.target Thor
    .accept 6281 >>接任务: |cRXP_LOOT_赶赴暴风城|r
    .fly Stormwind >>飞往暴风城
step
    .goto StormwindClassic,56.2,64.6
    >>选择火箭。火箭的伤害很高，而且可以用来分体拉动
.target Morgan Pestle
>>对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >>训练 1h 剑
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
    >>供应商和维修
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >>交任务: |cRXP_FRIENDLY_艾尔默的任务|r
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .accept 353 >>接任务: |cRXP_LOOT_雷矛的包裹|r
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>进入 Deeprun 有轨电车
step
    >>电车到达后乘车，到达对面后下车
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step
    >>用你的笛子吹响四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
step
    .goto Ironforge,77.0,51.0,30 >>前往: |cRXP_PICK_铁炉堡|r
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >>获取铁炉堡飞行路线
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >>训练你的职业法术
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>跑出铁炉堡
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>跑上这一段山路
step
    >>杀死瓦加什。夺取他的尖牙
    >>把他引到牧场南边的守卫那里。确保对他造成 51% 以上的伤害
    >>请小心，因为这个任务可能很困难
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    >>途中磨一点
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商，购买食物+水
step
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
step
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>杀死洞穴中的 Troggs
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill 岩颚骨撕咬者 (10)
step
    #era/som
    .xp 10+6350 >>升级至 6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修复
step
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商垃圾，从喀山购买 x30 5 级饮料
    .trainer >>吉尔姆的烹饪训练。稍后你需要它来接取 2 个额外任务
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step
    >>杀死 Mangeclaw。获取他的爪子
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    .goto Dun Morogh,84.4,31.1,25 >>穿过隧道到达洛克莫丹
]])

RXPGuides.RegisterGuide([[
#classic
<< Gnome Mage
#name 1-10 丹莫洛法师 AoE
#version 1
#group RestedXP 联盟法师
#defaultfor Dwarf/Gnome
#next 10-12 洛克莫丹 法师 AoE
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +您已选择一本针对侏儒和矮人的指南。您应该选择与您开始的相同的起始区 << Human
    +请注意，您已选择 AoE 指南。AoE 通常比单目标法师要难得多，但速度要快得多
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +您已选择一本针对侏儒和矮人的指南。您应该选择与您开始的相同的起始区 << Human
    +请注意，您已选择 AoE 指南。AoE 通常比单目标法师难得多，但随着最近的 100% 任务经验值变化，速度也更慢
step
    >>摧毁你的炉石
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .accept 179 >>接任务: |cRXP_LOOT_矮人的交易|r
step
    >>杀死狼。掠夺它们的肉
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >>升级至 2
step
    .goto Dun Morogh,30.0,71.5
    >>供应商垃圾。购买 15 水。如果你没有足够的钱，可以磨额外的狼
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
.target Sten Stoutarm
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3114 >>接任务: |cRXP_LOOT_雕文备忘录|r
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
step
    #sticky
    #completewith Rockjaw
    >>杀死你看到的普通 Rockjaw Troggs
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>杀死魁梧的岩颌穴居人
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target Talin Keeneye
    .accept 183 >>接任务: |cRXP_LOOT_猎杀野猪|r
    .accept 234 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>杀死该地区的野猪
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 183 >>交任务: |cRXP_FRIENDLY_猎杀野猪|r
step
    .xp 3+860 >>升级至 860+/1400xp
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target 格雷林·白胡子
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
step
    .goto Dun Morogh,25.0,76.0
.target 诺里·普里德瑞夫特
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    >>一旦被接受，将开始 5 分钟的计时器。放松并按照指南操作
step
    .goto Dun Morogh,28.7,77.5
    >>如果你现在还没解决掉 Troggs，就上去杀掉他们
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>如果你太慢而未能完成限时任务，请重新去接
    .goto Dun Morogh,25.0,76.0,0
.target 诺里·普里德瑞夫特
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .goto Dun Morogh,28.8,66.4
.target 杜南·弗卡特
>>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
.target 杜南·弗卡特
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
step
    .goto Dun Morogh,28.709,66.366
.target 马里克·努里比特
>>对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r
    .trainer >>训练你的职业法术
step
    >>跑出掩体
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>供应商，购买10瓶水
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>杀死霜鬃巨魔幼龙
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target 诺里·普里德瑞夫特
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
step
    .goto Dun Morogh,25.076,75.713
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 182 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
.target 格雷林·白胡子
    .accept 218 >>接任务: |cRXP_LOOT_被窃取的日记|r
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>进入巨魔洞穴。杀死格里克尼尔，然后从他身上搜刮出格雷林的日记
    .complete 218,1 --Collect 格雷林·白胡子's Journal (x1)
step
    >>磨一下回到这里
    .goto Dun Morogh,25.1,75.8
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
.target 格雷林·白胡子
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
step
    >>把一些怪物磨到这里
    .goto Dun Morogh,33.484,71.841
>>对话: |cRXP_FRIENDLY_巡山人萨鲁斯|r
    .turnin 282 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
.target 登山者泰洛斯
    .accept 420 >>接任务: |cRXP_LOOT_森内尔的观察站|r
step
    .goto Dun Morogh,33.9,72.2
.target 指针 弹簧链轮
>>对话: |cRXP_FRIENDLY_汉兹·跳链|r
    .accept 2160 >>接任务: |cRXP_LOOT_塔诺克的补给品|r
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>穿过隧道
step
    #sticky
    #completewith BoarMeat44
    >>杀死野猪以获得 4 块野猪肉以供日后使用
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >>杀死野猪，获取 6 块野猪肋骨，以备后用
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>磨碎野猪东北至卡拉诺斯
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >>升级至 2415/+2800xp
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >>死亡后在灵魂治疗师处重生，或者跑到卡拉诺斯。确保你的子区域不是寒脊隘口
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>供应商垃圾
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >>升级至 6
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
step
    >>Upstairs
    .goto Dun Morogh,47.5,52.1
    .trainer >>训练你的职业法术
step
    .goto Dun Morogh,47.4,52.5
    .home >>将你的炉石设置为雷酒酿酒厂
    .vendor >>尽可能多地购买 5 级饮料
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
step
    .goto Dun Morogh,49.426,48.410
    >>不要在途中杀死熊
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
step
    .goto Dun Morogh,49.622,48.612
.target 飞行员石甲
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .accept 313 >>接任务: |cRXP_LOOT_灰色洞穴|r
step
    .goto Dun Morogh,50.4,49.1
.target Beldin 钢烤架
>>对话: |cRXP_FRIENDLY_贝尔丁·钢架|r
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target 洛斯洛·拉奇
>>对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>获取 Stocking Jetsteam 的物品
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick 熊 Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
.target 飞行员 Bellowfiz
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    >>回到旅馆
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >>尽可能多地购买 5 级饮料
    >>如果你愿意的话，你可以在旅馆外面买一把剥皮刀，在你得到一把+属性武器之前，它比法杖要好
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >>进入洞穴。杀死温迪戈。掠夺它们的鬃毛
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>抢劫箱子
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label 熊Fur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>对话: |cRXP_FRIENDLY_海格纳·重枪|r
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
    .vendor >>供应商和维修
step
    .xp 7 >>升级至 7
step
    >>在途中消灭一些怪物
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
step
    .goto Dun Morogh,30.5,46.0
    .vendor >>供应商。购买最多 20 杯 5 级饮料
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 318 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
.target Rejold 大麦啤酒
    .accept 319 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .accept 315 >>接任务: |cRXP_LOOT_完美烈酒|r
step
    .goto Dun Morogh,30.186,45.531
.target 马莱斯大麦啤酒
>>对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .accept 310 >>接任务: |cRXP_LOOT_针锋相对|r
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >>杀死熊、野猪和豹子。从北->西->南
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
step
    >>完成获取野猪排骨
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 319 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
.target Rejold 大麦啤酒
    .accept 320 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>升级直到 4360+/4500xp
step
    .xp 7+3735 >>升级直到 3735+/4500xp
step
    .hs >>炉石到卡拉诺斯
step
    .goto Dun Morogh,47.4,52.5
    >>从 Belm 购买 Rhapsody Malt 和 Thunder Ale
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>下楼，然后和贾文交谈，并给他雷霆麦芽酒
    >>等待鼠标悬停在桶上时变为“无人看守”，然后交出
    .turnin 310 >>交任务: |cRXP_FRIENDLY_针锋相对|r
    .accept 311 >>接任务: |cRXP_LOOT_向马莱斯回报|r
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
     >>当你下次卖菜时卖菜谱
step
    .xp 8 >>升级至 8
step
    .goto Dun Morogh,47.5,52.1
    .trainer >>训练你的职业法术
    >>确保你训练了变形术
step
    .goto Dun Morogh,47.4,52.5
    .vendor >>从旅店老板处购买最多 30 杯 5 级饮料
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
step
    .goto Dun Morogh,49.622,48.612
.target 飞行员石甲
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
step
    .goto Dun Morogh,49.426,48.410
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
step
    #era/som
    >>建筑内部
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .accept 412 >>接任务: |cRXP_LOOT_自动净化装置|r
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >>跑上斜坡到达 Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>清理此区域的怪物。如果您需要清理中间营地，请小心。如果您需要另外 2 个怪物，您可以将怪物拉到小屋中，然后将它们拉到小屋后面的视线范围内。如果您运气不好，请跑到另一个区域
    >>地上的战利品箱
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >>变形老冰须，然后掠夺肉
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
step
    .goto Dun Morogh,30.4,45.8
    .vendor >>最多再购买 20 杯 5 级饮品
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 315 >>交任务: |cRXP_FRIENDLY_完美烈酒|r
.target Rejold 大麦啤酒
    .accept 413 >>接任务: |cRXP_LOOT_微光酒|r
step
    .goto Dun Morogh,30.186,45.531
.target 马莱斯大麦啤酒
>>对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 311 >>交任务: |cRXP_FRIENDLY_向马莱斯回报|r
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>杀死麻风侏儒。掠夺他们的齿轮和齿轮
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >>升级至 9
step
    .goto Dun Morogh,24.5,50.8,35 >>进入洞穴
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>杀死洞穴内的猎头者
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>小心地磨进洞穴里的这个角落
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>回到洞穴
step
    #softcore
    >>跳下去，之后你就死了
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >>在灵魂治疗师处死亡并重生
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >>如果炉火还在，则烧毁，否则磨回到卡拉诺斯
step
    .goto Dun Morogh,46.726,53.826
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
.target Senir Whitebeard
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .turnin 412 >>交任务: |cRXP_FRIENDLY_自动净化装置|r
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>跑上这一段山路
step
    >>杀死瓦加什。夺取他的尖牙
    >>把他引到牧场南边的守卫那里。确保对他造成 51% 以上的伤害
    >>请小心，因为这个任务可能很困难
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    >>途中磨一点
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商垃圾。如果需要的话，买一些食物和水
step
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修复
step
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>杀死洞穴中的 Troggs
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
step
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修复
step
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >>在穴居人那里升级到 10
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商垃圾，从喀山购买最多 30 杯 5 级饮料
    .trainer >>吉尔姆的烹饪训练。稍后你需要它来接取 2 个额外任务
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    >>途中磨砺
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step
    >>杀死 Mangeclaw。获取他的爪子
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    >>穿过你来的隧道返回
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>对话: |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .turnin 413 >>交任务: |cRXP_FRIENDLY_微光酒|r
.target Mountaineer Barleybrew
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 10-12 洛克莫丹 法师 AoE
#version 1
#group RestedXP 联盟法师
#defaultfor Human Mage/Gnome Mage
#next 12-18 黑海岸 法师 AoE
step
    #era/som
    #completewith next
    +当你在洛克莫丹进行任务时，请保存你得到的所有大块猪肉，不要将其出售。你以后会需要它
step << Gnome
    .goto Loch Modan,22.071,73.127
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>从后面进入掩体
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >>跑向 Troggs 入口
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>杀死碎石穴居人。掠夺他们的牙齿
    >>小心，因为这个任务可能很难。如果你一次抓错 2 个怪物，就跑
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>从后面进入掩体
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step << Human
    .goto Loch Modan,24.764,18.397
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r
.target 巡山人雷矛
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
step << Human
    #sticky
    #completewith next
    >>杀死该区域内的蜘蛛，获取蜘蛛脓液
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>杀死该区域的熊以获取熊肉
    .collect 3173,3 --Collect 熊 Meat (x3)
    >>杀死该区域内的野猪以获取野猪肠
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto Loch Modan,35.1,47.8,130 >>稍后在烹饪任务途中磨练怪物
step
    >>跑向塞尔萨玛。不要设置你的炉火 << Gnome
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
step << Human
    #sticky
    .abandon 1338 >>放弃 Stormpike 的命令。这将解锁登山者 Stormpike 的任务
step
    .goto Loch Modan,34.8,48.6
    .vendor >>购买 1-2 个 6 格袋子来填满你的袋子格
step
    .goto Loch Modan,35.5,48.4
    .vendor >>购买食物/水（尽量有40个5级饮料，20个5级食物）
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>找到卡德雷尔。他沿着塞尔萨玛路巡逻
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
step
    #sticky
    #completewith Thelsamar1
    >>杀死塞尔萨玛血香肠区域中的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>杀死塞尔萨玛血香肠区域中的熊
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>在塞尔萨玛血香肠区域杀死野猪
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step << Gnome
    .goto Loch Modan,24.764,18.397
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
.target 巡山人雷矛
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>在途中升级一些怪物以获取猪肠、熊肉和蜘蛛脓液
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>在途中升级一些怪物以获取猪肠、熊肉和蜘蛛脓液
step
    #sticky
    #completewith Gear
    >>杀死隧道鼠。掠夺它们的耳朵
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>杀死老鼠并前往洞穴入口
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>收集你在洞穴中找到的箱子。要小心，因为在第 11 级时这很困难
    >>小心，因为风水师会在几秒后施放火焰防护（火焰免疫）
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
    >>杀死隧道鼠。掠夺它们的耳朵
    >>尝试杀死害虫而不是狗头人/地卜师
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>杀死塞尔萨玛血香肠区域中的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>杀死塞尔萨玛血香肠区域中的熊
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>在塞尔萨玛血香肠区域杀死野猪
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto Loch Modan,23.3,17.9,60 >>跑回掩体，一路磨蹭
step
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step
    .goto Loch Modan,24.7,18.3
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r << Human
.target 巡山人雷矛
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>杀死熊。掠夺它们的肉
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>杀死蜘蛛。掠夺它们以获得灵液
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>杀死野猪。掠夺它们的肠子
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>找到卡德雷尔。他沿着塞尔萨玛路巡逻
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >>购买 6 个插槽，直到您的包容器装满为止。还购买 1 个燧石和火绒，以及 2 个简单木材
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >>升级至 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >>去 Aldren 看看智者腰带。如果你买得起，就买吧。留着以后用
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
    .accept 298 >>接任务: |cRXP_LOOT_挖掘进度报告|r
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >>死亡后重生于塞尔萨玛
step << Gnome
    #hardcore
    >>跑回塞尔萨玛。进入建筑内部
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
>>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
.target Jern Hornhelm
    .accept 301 >>接任务: |cRXP_LOOT_向铁炉堡报告|r
step << Gnome
    #softcore
    >>进入大楼
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
>>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
.target Jern Hornhelm
    .accept 301 >>接任务: |cRXP_LOOT_向铁炉堡报告|r
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >>获取塞尔萨玛飞行路线
>>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>接任务: |cRXP_LOOT_飞往铁炉堡|r << Gnome
    .fly Ironforge >>飞往铁炉堡
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >>训练你的职业法术
step << skip --logout skip << Human
    #completewith next
    +走向房间后面圣骑士训练师身后的楼梯。走到一半左右，然后移动到楼梯边缘，直到你看起来像是飘浮起来。退出，然后重新登录
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >>点击此处查看参考
    >>退出 跳到 Ironforge 的前面
step << Human
    .goto Ironforge,12.24,89.17,120 >>前往: |cRXP_PICK_丹莫罗|r
step << Gnome
    .goto Ironforge,74.65,11.74
>>对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
    .turnin 301 >>交任务: |cRXP_FRIENDLY_向铁炉堡报告|r
.target Prospector Stormpike
    .accept 302 >>接任务: |cRXP_LOOT_铁环的火药|r
step << Gnome
    >>回到大熔炉处，然后右转进入建筑物内部
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>对话: |cRXP_FRIENDLY_高尼尔·石趾|r
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
.target Golnir Bouldertoe
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
step << Gnome
    .goto Ironforge,55.50,47.74
>>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
.target Gryth Thurden
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
    .fly Thelsamar >>飞往塞尔萨玛
step << Gnome
    >>进入大楼
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
.target Jern Hornhelm
>>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 302 >>交任务: |cRXP_FRIENDLY_铁环的火药|r
step << Gnome
    .hs >>炉石到卡拉诺斯
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >>训练你的职业法术
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往跳跃点
step
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
step
    #softcore
    .goto Dun Morogh,30.3,37.5,50 >>跑到这里
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>一直向北跑，倒下然后死亡，然后重生
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >>游到岸边
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >>如果你有 8s，请检查 Neal Allen 的青铜管，如果有的话，就买下来
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >>检查 Dewin 的治疗药水，购买量降至 1 秒
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >>获取米奈希尔港飞行路线
step
    #era/som
    #sticky
    #completewith Darkshore1
    +在这里等船。用你的法术书点起营火，开始烹饪你之前保存的大块野猪肉。你现在至少需要 10 点技能，之后需要 50 点（所以把它们都煮了）
    .goto Wetlands,4.7,57.3
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r，船来了就上船。开往黑海岸。如果你已经烹饪完食物，就开始制作尽可能多的 5 级水
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r, 船来了就上船。开往黑海岸。开始制作尽可能多的 5 级水
]])

