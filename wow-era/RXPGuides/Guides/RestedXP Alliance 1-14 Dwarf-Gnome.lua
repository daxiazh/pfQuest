local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance !Warlock !Hunter
#name 1-6 寒脊山谷
#next 6-11 丹莫罗
#version 1
#group RestedXP 联盟 1-20
#defaultfor Gnome/Dwarf
step << !Gnome !Dwarf
    #sticky
    #completewith next
.goto Dun Morogh,29.927,71.201
    +您已选择一本针对侏儒和矮人的指南。您应该选择与您开始的相同的起始区
step
    >>|cRXP_WARN_摧毁你的炉石|r
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .accept 179 >>接任务: |cRXP_LOOT_矮人的交易|r
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,28.6,72.2
    +杀死 |cRXP_LOOT_Wolves|r 获得 10c+ 的商贩垃圾，然后进入建筑。我们要训练战斗怒吼，它可以大大加快升级速度。
step << Warrior
    #completewith next
    .goto Dun Morogh,28.8,69.2,20 >>进入大楼
    .goto Dun Morogh,28.7,67.7
    .vendor >>供应商垃圾
step << Warrior
    >>对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .goto Dun Morogh,28.8,67.2
    .train 6673 >>列车战斗呐喊
    .target Thran Khorman
step
    >>杀死 |cRXP_LOOT_Wolves|r。掠夺它们以获得 |cRXP_LOOT_Tough Wolf Meat|r
.goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >>升级至 2
step << Priest/Mage
    .goto Dun Morogh,30.0,71.5
    .vendor >>卖垃圾，修理。买 15 水。如果你没有足够的钱，就磨额外的狼
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.0,71.5
    .vendor >>供应商垃圾
step << Paladin
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3107 >>接任务: |cRXP_LOOT_神圣符文|r
step << Gnome Warrior
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3112 >>接任务: |cRXP_LOOT_简易备忘录|r
step << Dwarf Warrior
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3106 >>接任务: |cRXP_LOOT_简易符文|r
step << Mage
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3114 >>接任务: |cRXP_LOOT_雕文备忘录|r
step << Priest
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3110 >>接任务: |cRXP_LOOT_神圣符文|r
step << Gnome Rogue
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3113 >>接任务: |cRXP_LOOT_密文备忘录|r
step << Dwarf Rogue
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3109 >>接任务: |cRXP_LOOT_密文符文|r
step << !Dwarf !Gnome
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
step
#xprate <1.5
    >>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .target Sten Stoutarm
    .goto Dun Morogh,29.7,71.2
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
step
#xprate <1.5
    #sticky
    #completewith Rockjaw
    >>杀死你看到的 |cRXP_ENEMY_Rockjaw Troggs|r。你可能需要杀死额外的 Burly Rockjaw Troggs 来强制重生。
    .complete 170,1 --Kill Rockjaw Trogg (x6)
        >>杀死 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .unitscan Rockjaw Trogg
step
    >>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
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
    >>杀死该区域内的 |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    >>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >>交任务: |cRXP_FRIENDLY_猎杀野猪|r
step << Paladin/Mage
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
    .target 格雷林·白胡子
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
step << Paladin/Mage
    >>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里·普里德瑞夫特
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    >>一旦被接受，将开始 5 分钟的计时器。放松并按照指南操作
step << Paladin/Mage
#xprate <1.5
    .goto Dun Morogh,28.7,77.5
    >>如果你现在还没解决掉他们，就上去杀掉 |cRXP_ENEMY_Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage
    #sticky
    #completewith Scalding1
    >>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里·普里德瑞夫特
    >>如果你太慢而未能完成限时任务，请重新去接
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
step << Paladin/Mage
    #label Scalding1
    >>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .target 杜南·弗卡特
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
step << Dwarf Paladin
    .goto Dun Morogh,28.8,68.3
.target Bromos Grummner
>>对话: |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r
    .turnin 3107 >>交任务: |cRXP_FRIENDLY_神圣符文|r
    .train 20271 >>训练判断力
.train 19740 >>训练力量祝福
.train 465 >>训练虔诚光环
step << Human Paladin/Draenei Paladin
    .goto Dun Morogh,28.8,68.3
    .train 20271 >>训练判断力
.train 19740 >>训练力量祝福
.train 465 >>训练虔诚光环
step << Gnome Mage
    .goto Dun Morogh,28.709,66.366
.target 马里克·努里比特
>>对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r
    .train 1459 >>训练奥术智慧
    .train 116 >>训练冰霜箭
step << Human Mage/Draenei Mage
    .goto Dun Morogh,28.709,66.366
    .train 1459 >>训练奥术智慧
    .train 116 >>训练冰霜箭
step << Paladin/Mage
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
step << Mage
    .goto Dun Morogh,30.0,71.5
    .vendor >>供应商，购买10瓶水
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Paladin !Mage
#xprate <1.5
    #sticky
    #label TrollTroggs
>>在执行巨魔任务时杀死你在附近看到的任何|cRXP_ENEMY_Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step << Paladin/Mage
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>杀死 |cRXP_ENEMY_Frostmane 巨魔幼龙|r
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step << !Paladin !Mage
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>杀死 |cRXP_ENEMY_Frostmane 巨魔幼龙|r
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step << !Paladin !Mage
    .goto Dun Morogh,25.0,76.0
    .abandon 3364 >>放弃 Scalding Mornbrew Delivery - 你还不需要它
step << !Paladin !Mage
    .xp 4 >>升级至 4
step << !Paladin !Mage
    #requires TrollTroggs
    >>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格雷林·白胡子
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
    .accept 218 >>接任务: |cRXP_LOOT_被窃取的日记|r
step << Paladin/Mage
    .goto Dun Morogh,25.076,75.713
    >>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .target 格雷林·白胡子
    .turnin 182 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
    .accept 218 >>接任务: |cRXP_LOOT_被窃取的日记|r
step << !Paladin !Mage
    >>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里·普里德瑞夫特
    .goto Dun Morogh,25.0,76.0
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    >>你现在有 5 分钟的时间来获取日记，然后交出晨酒。如果你失败了，死后再捡起来
step << Paladin/Mage
    >>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里·普里德瑞夫特
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
.goto Dun Morogh,30.6,80.3
    >>进入巨魔洞穴。杀死 |cRXP_LOOT_Grik'nir|r，然后搜刮他的财物，获得 |cRXP_LOOT_Grelin 的日记|r
    .complete 218,1 --Collect 格雷林·白胡子's Journal (x1)
step << !Paladin !Mage
    .goto Dun Morogh,29.5,69.8,100 >>在灵魂治疗师处死亡并重生
step << !Paladin !Mage
#sticky
#completewith Scalding2
    >>如果你太慢而未能完成限时任务，请去找 |cRXP_FRIENDLY_诺里·普里德瑞夫特|r 交谈
    .target 诺里·普里德瑞夫特
    .goto Dun Morogh,25.0,76.0,0
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
step << !Paladin !Mage
    #label Scalding2
    >>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .target 杜南·弗卡特
    .goto Dun Morogh,28.8,66.4
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
step << Gnome Rogue
.goto Dun Morogh,28.4,67.5
.target Solm Hargrin
>>对话: |cRXP_FRIENDLY_索姆·哈格林|r
    .turnin 3113 >>交任务: |cRXP_FRIENDLY_密文备忘录|r
step << Dwarf Rogue
.goto Dun Morogh,28.4,67.5
.target Solm Hargrin
>>对话: |cRXP_FRIENDLY_索姆·哈格林|r
    .turnin 3109 >>交任务: |cRXP_FRIENDLY_密文符文|r
step << Dwarf Priest
.goto Dun Morogh,28.600,66.385
.target Branstock Khalder
>>对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    .turnin 3110 >>交任务: |cRXP_FRIENDLY_神圣符文|r
    .train 1243 >>训练真言术：坚毅
.train 589 >>训练 暗言术：痛
    .train 2052 >>训练次级治疗 r2
step << Human Priest/NightElf Priest/Draenei Priest
.goto Dun Morogh,28.600,66.385
    .train 1243 >>训练真言术：坚毅
.train 589 >>训练 暗言术：痛
    .train 2052 >>训练次级治疗 r2
step << Gnome Warrior
.goto Dun Morogh,28.8,67.2
.target Thran Khorman
>>对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .turnin 3112 >>交任务: |cRXP_FRIENDLY_简易备忘录|r
    .train 772 >>火车撕裂
    .train 100 >>火车费
step << Dwarf Warrior
.goto Dun Morogh,28.8,67.2
.target Thran Khorman
>>对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .turnin 3106 >>交任务: |cRXP_FRIENDLY_简易符文|r
    .train 772 >>火车撕裂
    .train 100 >>火车费
step << Human Warrior/NightElf Warrior/Draenei Warrior
.goto Dun Morogh,28.8,67.2
    .train 772 >>火车撕裂
    .train 100 >>火车费
step << !Paladin !Mage
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
step << Priest
.money <0.0024
.goto Dun Morogh,30.0,71.5
    .vendor >>购买 5 瓶水
    .collect 159,5 --Collect Refreshing Spring Water (x5)
step
    >>磨一下回到这里
    .goto Dun Morogh,25.1,75.8
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
.target 格雷林·白胡子
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
step << !Paladin !Mage
    >>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .target 诺里·普里德瑞夫特
    .goto Dun Morogh,25.0,76.0
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
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
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance !Warlock !Hunter
#name 6-11 丹莫罗
#version 1
#group RestedXP 联盟 1-20
#defaultfor Gnome/Dwarf
#next 11-14 黑海岸
step
    #sticky
#completewith BoarMeat3
>>杀死野猪以获取一些猪肉以备后用
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>>杀死野猪以获取一些野猪肋骨以备后用
.collect 2886,6 --Collect Crag Boar Rib (x6)
step << Dwarf Priest
>>磨碎野猪到卡拉诺斯东北部
.goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2145 >>升级至 2145/+2800xp
step << !Dwarf/!Priest
>>磨碎野猪东北至卡拉诺斯
.goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >>升级至 2415/+2800xp
step
    .goto Dun Morogh,47.0,55.1,75 >>死亡后在灵魂治疗师处重生，或者跑到卡拉诺斯。确保你的子区域不是寒脊隘口
step
    #label BoarMeat3
.goto Dun Morogh,47.0,55.1,1500 >>.
step
    #label BoarRibs
.goto Dun Morogh,47.0,55.1,1500 >>.
step
.goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
step
    .goto Dun Morogh,46.7,53.5
    .vendor >>供应商垃圾
step << !Priest
    .goto Dun Morogh,48.3,57.0
.xp 6 >>升级至 6
step << !Priest
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
step << !Priest
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
step << Rogue
.goto Dun Morogh,47.2,52.4
    .money <0.0028
    .vendor >>去 Kreg Bilmn，购买并装备一把 3 级投掷武器，花费 28 美分
step << Rogue
.goto Dun Morogh,47.6,52.6
    .train 1757 >>火车 邪恶力量 r2
    .train 1776 >>火车凿痕
step << Mage
    .goto Dun Morogh,47.5,52.1
    .train 143 >>训练火球 r2
    .train 2136 >>火车起火爆炸
step << Paladin
    .goto Dun Morogh,47.6,52.1
    .train 639 >>培养圣光 r2
    .train 498 >>训练神圣保护
step << Dwarf Priest
.goto Dun Morogh,47.3,52.2
.target Maxan Anvol
>>对话: |cRXP_FRIENDLY_马克萨恩·安沃尔|r, 他在里面
    .accept 5625 >>接任务: |cRXP_LOOT_圣光之衣|r
step << Dwarf Priest
    .goto Dun Morogh,45.8,54.6
     .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Dwarf Priest
.goto Dun Morogh,47.3,52.2
.target Maxan Anvol
>>对话: |cRXP_FRIENDLY_马克萨恩·安沃尔|r, 他在里面
    .turnin 5625 >>接任务: |cRXP_LOOT_圣光之衣|r
    .train 591 >>训练 Smite r2
    .train 17 >>训练真言术：盾
    .train 2052 >>训练次级治疗 r2
step << !Dwarf Priest
.goto Dun Morogh,47.3,52.2
    .train 591 >>训练 Smite r2
    .train 17 >>训练真言术：盾
    .train 2052 >>训练次级治疗 r2
step << Priest
    .xp 6 >>升级至 6
step << Priest/Mage/Shaman/Druid
    .goto Dun Morogh,47.4,52.5
    .home >>将你的炉石设置为雷酒酿酒厂
    .vendor >>尽可能多地购买 5 级饮料
step << !Mage !Priest
    .goto Dun Morogh,47.4,52.5
    .home >>将你的炉石设置为雷酒酿酒厂
    .vendor >>供应商垃圾
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .train 3127 >>火车帕里
step << Paladin/Warrior/Shaman/Druid
    .goto Dun Morogh,45.8,51.8,20 >>进入大楼
step << Gnome Warrior/Human Warrior/NightElf Warrior
    .goto Dun Morogh,45.3,52.2
.vendor >>供应商垃圾。如果你的武器能给你足够的钱购买 Gladius（5s 9c），就卖掉它。如果你还没有足够的钱，你以后再回来
step << Gnome Warrior/Human Warrior/NightElf Warrior
    .goto Dun Morogh,45.3,52.2
    .money <0.0509
    >>购买 Gladius 并装备它
    .collect 2488,1 --Collect Gladius
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
.vendor >>卖掉你的武器，如果它能给你足够的钱买大斧（4s 60c）。如果你还没有足够的钱，你以后再回来
step << Dwarf Warrior
    .money <0.0460
    .goto Dun Morogh,45.3,52.2
    >>购买大斧并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Dun Morogh,45.3,52.2
.vendor >>供应商垃圾。如果你的武器能给你足够的钱买木槌（6s 66c），就卖掉它。如果你还没有足够的钱，你以后再回来
step << Paladin
    .money <0.0666
    .goto Dun Morogh,45.3,52.2
    >>购买木槌并装备它
    .collect 2493,1 --Collect Wooden Mallet
.goto Durotar,56.5,73.1
step << Druid/Shaman
.vendor >>供应商垃圾。如果你的武器能给你足够的钱买手杖（5s 4c），就卖掉它。如果你还没有足够的钱，你以后再回来
step << Druid/Shaman
    .goto Durotar,56.5,73.1
    .money <0.0504
    >>购买手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Warrior/Rogue
    .goto Dun Morogh,45.3,51.9
    .train 2018 >>训练锻造技能。稍后您将获得采矿技能，这将使您能够制作磨刀石（+2 武器伤害，持续 1 小时）。您应该在 20 级左右停止制作这些。
step << Paladin
    .goto Dun Morogh,45.3,51.9
    .train 2018 >>训练锻造技能。稍后您将学习采矿，这将使您能够制作重量石（+2 武器伤害，持续 1 小时）。您应该在 20 级左右停止制作它们。
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
step
    #sticky
#completewith next
>>杀死野猪以获取一些猪肉以备后用
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
.goto Dun Morogh,49.426,48.410
    >>不要在途中杀死熊
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
step
#xprate <1.5
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
    .goto Dun Morogh,50.084,49.420
.target 洛斯洛·拉奇
>>对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
step << Warrior/Paladin/Rogue
.money <0.0087
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >>购买采矿镐
step << Warrior/Paladin/Rogue
.money <0.0010
    .goto Dun Morogh,50.2,50.4
.train 2580 >>进入房子。训练采矿，施放寻找矿物
step
    #sticky
#completewith BoarRibs2
>>杀死野猪以获取野猪肋骨以供日后使用
.collect 2886,6 --Collect Crag Boar Rib (x6)
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BoarMeat
>>在任务中获取用于储存喷气蒸汽的野猪肉
.complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Paladin/Warrior/Rogue
    #sticky
    #completewith 熊Fur
    >>在任务中获取 Stocking Jetsteam 的熊毛
.complete 317,2 --Collect Thick 熊 Fur (x2)
step << !Paladin !Warrior !Rogue
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
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
.target 飞行员 Bellowfiz
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step << Warrior
    .goto Dun Morogh,46.9,52.1,20,0
.goto Dun Morogh,47.4,52.5
    .vendor >>尽可能多地购买 5 级食物
step << Priest/Mage/Shaman/Druid
    .goto Dun Morogh,46.9,52.1,20,0
.goto Dun Morogh,47.4,52.5
    .vendor >>只要你有能力，就购买尽可能多的 5 级饮料。
step << !Paladin !Warrior !Rogue
#xprate <1.5
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
    >>留意矿脉，获取用于磨刀的粗石和用于武器的配重石 << Paladin/Warrior/Rogue
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
    #label BoarMeat
step << !Paladin !Warrior !Rogue
    .xp 7 >>升级至 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,42.5,66.3,40,0
    .goto Dun Morogh,45.1,65.4,40,0
    .goto Dun Morogh,49.4,62.3,40,0
    .goto Dun Morogh,50.8,59.3,40,0
    .goto Dun Morogh,48.0,59.2,40,0
    .goto Dun Morogh,48.2,55.6,40,0
    .goto Dun Morogh,51.4,50.4,40,0
    .goto Dun Morogh,42.5,66.3,40,0
    .goto Dun Morogh,45.1,65.4,40,0
    .goto Dun Morogh,49.4,62.3,40,0
    .goto Dun Morogh,50.8,59.3,40,0
    .goto Dun Morogh,48.0,59.2,40,0
    .goto Dun Morogh,48.2,55.6,40,0
    .goto Dun Morogh,51.4,50.4,40,0
    >>杀死熊和野猪。掠夺它们的毛皮和肉
    .complete 317,2 --Collect Thick 熊 Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
.target 飞行员 Bellowfiz
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >>购买采矿镐
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.2,50.4
.train 2580 >>进入房子。训练采矿，施放寻找矿物
step << Warrior/Paladin/Rogue
    .isOnQuest 313
    .goto Dun Morogh,49.622,48.612
.target 飞行员石甲
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
step << Warrior/Paladin/Rogue
    .xp 7 >>升级至 7
step << Gnome Warrior/Human Warrior/NightElf Warrior
    .goto Dun Morogh,45.3,52.2
    .money <0.0509
    >>购买 Gladius 并装备它
    .collect 2488,1 --Collect Gladius
step << Dwarf Warrior
    .money <0.0460
    .goto Dun Morogh,45.3,52.2
    >>购买大斧并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .money <0.0666
    .goto Dun Morogh,45.3,52.2
    .vendor >>购买木槌并装备它
    .collect 2493,1 --Collect Wooden Mallet
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >>尽可能多地购买 5 级食物。
step << Paladin/Warrior/Rogue
    >>在途中消灭一些怪物
.goto Dun Morogh,43.0,47.4,50,0
    .goto Dun Morogh,39.6,48.9,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
step << !Paladin !Warrior !Rogue
>>在途中消灭一些怪物
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
step << !Mage !Priest
.goto Dun Morogh,30.5,46.0
    .vendor >>供应商垃圾
step << Priest/Mage/Shaman/Druid
.goto Dun Morogh,30.5,46.0
    .vendor >>供应商。购买 10 杯 5 级饮料
step
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
#label BoarRibs2
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    >>杀死熊、野猪和豹子
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
.xp 7+3735 >>升级直到 3735+/4500xp
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
step
    .goto Dun Morogh,30.3,37.5,50 >>跑到这里
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>磨练直到 4360+/4500xp，然后转到这里
    .goto Dun Morogh,30.3,37.5,50
step
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step
.goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
.deathskip >>一直向北跑，倒下然后死亡，然后重生
step
.goto Wetlands,12.7,46.7,30 >>游到岸边
step
.goto Wetlands,9.5,59.7
    .fp Menethil >>获取米奈希尔港飞行路线
step
    #completewith next
.hs >>炉石到卡拉诺斯
step
.goto Dun Morogh,47.4,52.5
>>从 Belm 购买 Rhapsody Malt 和 Thunder Ale
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .isOnQuest 310
    .goto Dun Morogh,47.6,52.4,10 >>进入旅店老板后面的房间
step
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
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .train 6760 >>训练 剔骨 r2
    .train 5277 >>躲避火车
step << Mage
    .goto Dun Morogh,47.5,52.1
    .train 205 >>训练冰霜箭 r2
.train 118 >>训练变形术
step << Paladin
    .train 853 >>训练正义之锤
    .train 1152 >>列车净化
    .train 3127 >>火车帕里
step << Priest
    .goto Dun Morogh,47.3,52.2
    .train 139 >>列车更新
step << Warrior
.goto Dun Morogh,47.4,52.6
    .train 284 >>训练英雄打击 r2
    .train 1715 >>训练腿筋
step << Warrior/Rogue/Paladin tbc
    .istrained 3273
.money <0.0095
    .goto Dun Morogh,47.2,52.6
    .train 3273 >>训练急救
step << Paladin
    .goto Dun Morogh,45.3,52.2
    .vendor >>购买木槌。如果您需要钱，可以出售任何袋子（如果您找到它们）。或者武器（如果您能买到的话）。
    .collect 2493,1 --Collect Wooden Mallet
step << Paladin/Warrior/Rogue
.goto Dun Morogh,47.4,52.5
    .vendor >>从旅店老板那里购买尽可能多的 5 级食物
step << Priest/Mage/Shaman/Druid
.goto Dun Morogh,47.4,52.5
    .vendor >>从旅店老板那里购买尽可能多的 5 级饮料
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
.target 飞行员石甲
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
step << !Rogue
    .goto Dun Morogh,49.426,48.410
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
step << Rogue
    .goto Dun Morogh,49.426,48.410
    >>选择露营刀。保存以供日后使用
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .accept 412 >>接任务: |cRXP_LOOT_自动净化装置|r
step
.goto Dun Morogh,43.1,45.0,20,0
.goto Dun Morogh,42.1,45.4,20 >>跑上斜坡到达 Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>清理此区域的怪物。如果您需要清理中间营地，请小心。如果您需要另外 2 个怪物，您可以将怪物拉到小屋中，然后将它们拉到小屋后面的视线范围内。如果您运气不好，请跑到另一个区域
    .complete 315,1 --Collect Shimmerweed (x6)
step
.goto Dun Morogh,38.4,49.9,40 >>跑向老冰须
step << !Mage
    .goto Dun Morogh,38.5,54.0
    >>等到老冰须离开洞穴，你就可以潜入洞穴抢劫箱子，或者这样做
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>点击这里
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage
    >>变形老冰须，然后掠夺肉
.goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
step << Mage/Priest/Druid/Shaman
.goto Dun Morogh,30.4,45.8
.vendor >>尽可能多地购买 5 级饮料
step << Warrior/Paladin/Rogue
.goto Dun Morogh,30.4,45.8
.vendor >>供应商垃圾
step
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
#xprate <1.5
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>杀死麻风侏儒。掠夺他们的齿轮和齿轮
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .isOnQuest 287
    .goto Dun Morogh,24.5,50.8,30 >>进入洞穴
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>杀死洞穴内的猎头者
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    step
    .goto Dun Morogh,23.4,51.5,15 >>回到洞穴
step
    >>跳下
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,23.0,52.2
    .xp 9 >>练到9级
step
    .isOnQuest 287
    .goto Dun Morogh,46.726,53.826
.deathskip >>在灵魂治疗师处死亡并重生
step
    .goto Dun Morogh,46.726,53.826
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
.target Senir Whitebeard
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .turnin 412 >>交任务: |cRXP_FRIENDLY_自动净化装置|r
step << Warrior tbc
    #sticky
    #completewith next
.money >0.0950
    +开始磨练，直到你有 9s 50c 的可销售物品，然后跑进铁炉堡
step << Warrior tbc
    .goto Dun Morogh,53.5,34.9,30 >>跑进铁炉堡
step << Warrior tbc
.goto Ironforge,61.2,89.5
    .train 199 >>训练 2h Maces
step << Warrior tbc
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
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>跑上这一段山路
step
    >>杀死瓦加什。夺取他的尖牙
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    >>途中磨一点
.goto Dun Morogh,68.6,54.7
    .vendor >>供应商垃圾
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
.complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
step
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
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
step << !Warrior !Rogue
    .goto Dun Morogh,68.4,54.5
    .vendor >>购买 x10 5 级食品和饮料
step << Warrior/Rogue
    .goto Dun Morogh,68.4,54.5
    .vendor >>购买 x10 5 级食物
step << Priest tbc/Rogue tbc
    .goto Dun Morogh,47.1,55.1,60 >>死亡后在灵魂治疗师处重生，或者跑回去
step << Priest tbc
    #sticky
#completewith next
.goto Dun Morogh,47.3,52.2
    .train 2006 >>如果你要和其他玩家一起玩，火车复活
step << !NightElf !Draenei Priest tbc
    .goto Dun Morogh,47.3,52.2
.target Laurna Morninglight
>>对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .accept 5636 >>接任务: |cRXP_LOOT_绝望祷言|r
    .train 2053 >>训练次级治疗 r3
    .train 8092 >>训练心灵爆破
.train 594 >>训练 暗言术：痛 r2
    .train 13908 >>训练绝望的祈祷
step << !NightElf !Draenei Priest tbc
    .goto Dun Morogh,47.3,52.2
    .train 2053 >>训练次级治疗 r3
    .train 8092 >>训练心灵爆破
.train 594 >>训练 暗言术：痛 r2
step << Rogue tbc
    .goto Dun Morogh,47.6,52.5
.target Hogral Bakkan
>>对话: |cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .accept 2218 >>接任务: |cRXP_LOOT_救赎之路|r
    .train 2983 >>火车冲刺
    .train 674 >>训练双持
    .train 6770 >>火车萨普
    .train 1784 >>秘密训练
    >>装备露营刀
step
    .goto Dun Morogh,81.2,42.7,15 >>途中磨蹭一会儿，进入隧道内
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
    .isOnQuest 413
    .goto Dun Morogh,81.2,42.7,15 >>穿过隧道返回
step
    .goto Dun Morogh,79.6,50.7,50,0
.goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin -413 >>交任务: |cRXP_FRIENDLY_微光酒|r
step
    .isQuestTurnedIn 413
    .goto Dun Morogh,86.278,48.812
.target Mountaineer Barleybrew
>>对话: |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
step
    .isOnQuest 414
.goto Dun Morogh,86.2,51.3,20 >>穿过隧道
step << Mage/Rogue
    .goto Loch Modan,22.071,73.127
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
step << Mage/Rogue
    .goto Loch Modan,22.6,75.4,30,0
.goto Loch Modan,23.233,73.675
    >>进入掩体
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step << Mage/Rogue
    .goto Loch Modan,30.0,68.4,30,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>杀死碎石穴居人。掠夺他们的牙齿
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Mage/Rogue
    .goto Loch Modan,29.9,68.2,30,0
    .goto Loch Modan,22.2,73.3
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step << Mage/Rogue
    .goto Loch Modan,23.233,73.675
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step
    #completewith next
    .goto Loch Modan,35.3,46.9,150 >>奔向塞尔萨玛
step << Mage
    .goto Loch Modan,35.5,48.4
    .vendor >>购买40个5级牛奶
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
step << Rogue tbc
    .goto Loch Modan,35.5,48.4
    .home >>将你的炉石设为塞尔萨玛
step << Mage
    .goto Loch Modan,34.8,48.6
    .vendor >>购买最多 3 个 6 格袋子
step << !Mage/wotlk
#xprate >1.499 << Mage
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>找到卡德雷尔，他在主干道上巡逻
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
.target Mountaineer Kadrell
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r << wotlk/Rogue
step << Mage
#xprate <1.5
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>找到卡德雷尔，他在主干道上巡逻
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
.target Mountaineer Kadrell
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
    --Mage needs 12 for r3 fireball
step << Gnome/Dwarf
    >>进入建筑，然后下楼。和布洛克交谈
    .goto Loch Modan,37.2,46.9,15,0
.goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
step << Mage
#xprate <1.5
    #sticky
    #completewith ThelsamarFood
    >>杀死蜘蛛。掠夺它们以获得蜘蛛脓液
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith ThelsamarFood
    >>杀死熊。掠夺它们以获取熊肉
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith ThelsamarFood
    >>杀死野猪。杀死它们以获取野猪肠
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Mage
#xprate <1.5
    #label ThelsamarFood
    .goto Loch Modan,23.3,17.9,30 >>跑到北边的地堡。沿途磨一些怪物，获得猪肠、熊肉和蜘蛛脓液
step << Rogue
#xprate <1.5
.goto Loch Modan,23.3,17.9,30 >>跑到北掩体
step << Rogue/Mage
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商垃圾，修复
step << Mage
#xprate <1.5
    >>Upstairs
    .goto Loch Modan,24.7,18.3
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
.target 巡山人雷矛
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
step << Rogue/wotlk
#xprate >1.499 << Mage
    >>Upstairs
    .goto Loch Modan,24.7,18.3
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
.target 巡山人雷矛
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
step << Mage
#xprate <1.5
    #completewith next
    .goto Loch Modan,35.5,18.2,40 >>杀死老鼠并前往洞穴入口
step << Mage
#xprate <1.5
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
    >>收集你在洞穴中找到的箱子。要小心，因为这在 11 级时很难，而且地卜师的火焰守卫（火焰免疫）
    .complete 307,1 --Collect Miners' Gear (x4)
step << Mage
#xprate <1.5
    #label Kobolds
    >>杀死狗头人。掠夺他们的耳朵
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step << Mage
#xprate <1.5
    #sticky
    #completewith Thelsamar3
    >>杀死塞尔萨玛血香肠区域中的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith Thelsamar3
    >>杀死塞尔萨玛血香肠区域中的熊
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step << Mage
#xprate <1.5
    #sticky
    #completewith Thelsamar3
    >>在塞尔萨玛血香肠区域杀死野猪
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Mage
#xprate <1.5
    #label Thelsamar3
    .goto Loch Modan,23.3,17.9,40 >>跑回掩体，一路磨蹭
step << Mage
#xprate <1.5
    .goto Loch Modan,24.7,18.3
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
.target 巡山人雷矛
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r << wotlk
step << Mage
#xprate <1.5
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
step << Mage
#xprate <1.5
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
step << Mage
#xprate <1.5
    #sticky
    #label Intestines9
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
step << Mage
#xprate <1.5
    #requires Meat9
    .zone Loch Modan >>.
step << Mage
#xprate <1.5
    #requires Ichor9
    .zone Loch Modan >>.
step << Mage
#xprate <1.5
    #requires Intestines9
    .zone Loch Modan >>.
step << Mage
#xprate <1.5
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>找到卡德雷尔，他在主干道上巡逻
    .goto Loch Modan,36.9,46.1
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step << Mage
    .xp 12-420 <<tbc
    .xp 12-2310 << wotlk
step << Rogue/wotlk
    #xprate >1.499 << Mage
    .deathskip >>在塞尔萨玛死亡并重生
step << Rogue
#xprate <1.5
    #sticky
    #completewith next
    +磨练怪物直到你拥有至少价值 33 银的金钱和可销售物品
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取塞尔萨玛飞行路线
>>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r
.target Thorgrum Borrelson
    .accept 6391 >>接任务: |cRXP_LOOT_飞往铁炉堡|r
    .fly Ironforge >>飞往铁炉堡
step << !Gnome !Dwarf
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取塞尔萨玛飞行路线
    .fly Ironforge >>飞往铁炉堡
step << Gnome/Dwarf
    .goto Ironforge,51.521,26.311
>>对话: |cRXP_FRIENDLY_高尼尔·石趾|r
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
.target Golnir Bouldertoe
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
step << Dwarf/Gnome
    >>不要飞到任何地方
.goto Ironforge,55.501,47.742
>>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
.target Gryth Thurden
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r << Rogue tbc
step << Paladin
    .goto Ironforge,23.131,6.143
    .trainer >>拜访你的职业训练师并训练法术
step << Mage
    .goto Ironforge,27.2,8.6
    .train 145 >>训练火球 r3
    .train 604 >>训练抑制魔法
    .train 7300 >>训练霜甲 r2
    .train 122 >>训练霜冻新星
    .train 5504 >>训练召唤水 r1
    .train 5505 >>训练召唤水 r2
step
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
step << Warrior/Rogue
    .goto Ironforge,62.0,88.8
    .collect 25873,1 >>从 Brenwyn Wintersteel 购买一把 Keen Throwing Knife。装备它。
step << Warrior
    #sticky
    .goto Ironforge,65.9,88.4
    .train 2687 >>训练血怒
    .train 6546 >>火车 Rend r2
step << Warrior
    .goto Ironforge,70.9,89.9
    >>与穆伦·雷矛交谈
.target Muren Stormpike
>>对话: |cRXP_FRIENDLY_穆伦·雷矛|r
    .accept 1678 >>接任务: |cRXP_LOOT_维吉雷克|r
step << Warrior
    >>返回丹莫罗
    .goto Dun Morogh,27.8,58.0
    .complete 1678,1 --Vejrek's Head (1)
step << Warrior
    .goto Ironforge,70.767,90.274
>>对话: |cRXP_FRIENDLY_穆伦·雷矛|r
    .turnin 1678 >>交任务: |cRXP_FRIENDLY_维吉雷克|r
.target Muren Stormpike
    .accept 1680 >>接任务: |cRXP_LOOT_托姆斯·深炉|r
step << Warrior
    .goto Ironforge,48.642,42.482
.target Tormus Deepforge
>>对话: |cRXP_FRIENDLY_托姆斯·深炉|r
    .turnin 1680 >>交任务: |cRXP_FRIENDLY_托姆斯·深炉|r
step << Rogue/wotlk
.goto Ironforge,77.0,51.0,30 >>进入 Deeprun 有轨电车
step << Rogue/wotlk
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step << Rogue/wotlk
    .use 17117>>用你的笛子吹响四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step << Rogue/wotlk
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
.target Monty
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r << Rogue/wotlk
step << !Rogue tbc
    .goto Ironforge,55.501,47.742
    >>回鐵獄
    .fly Menethil >>飞往米奈希尔
step << Rogue/wotlk
     >>乘坐电车到另一侧然后转弯
.target Nipsy
>>对话: |cRXP_FRIENDLY_尼普希|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
step << Rogue/wotlk
    .goto StormwindClassic,58.1,16.5
.target Furen Longbeard
>>对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .isOnQuest 1338
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .train 201 >>训练 1h 剑
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>从 Gunther 购买弯刀并装备它
step << Rogue tbc
    #sticky
    #completewith next
.hs >>炉石到塞尔萨玛
step << !NightElf Rogue tbc
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
.turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
step << Rogue tbc
    .goto Ironforge,55.501,47.742
    .fly Menethil >>飞往米奈希尔
step << Gnome/Dwarf
    .abandon 6392 >>放弃返回布鲁克
step << tbc
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
.goto Wetlands,10.1,56.9,15,0
.goto Wetlands,10.6,57.2,15,0
.goto Wetlands,10.7,56.8
    .vendor >>如果你有 7.6s，请检查 Neal Allen 的青铜管，如果有的话就买下来
    .bronzetube
step << tbc
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >>检查 Dewin 的治疗药水，购买量降至 1 秒
step << tbc
    #sticky
#completewith Darkshore1
+在这里等船
.goto Wetlands,4.7,57.3
step << tbc
    #label Darkshore1
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step << Warlock wotlk/Rogue wotlk
    #xprate <1.5
    .goto StormwindClassic,52.61,65.71
    .home >>将你的炉石设置为暴风城
step << wotlk
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance Warlock
#name 1-12 丹莫罗
#version 1
#group RestedXP 联盟 1-20
#defaultfor Gnome Warlock
#next 12-14 洛克莫丹侏儒;11-14 黑海岸
step << !Gnome !Dwarf
    #sticky
    #completewith next
.goto Dun Morogh,29.927,71.201
    +您已选择一本针对侏儒和矮人的指南。您应该选择与您开始的相同的起始区
step
    >>摧毁你的炉石 << tbc
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
.target Sten Stoutarm
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .accept 179 >>接任务: |cRXP_LOOT_矮人的交易|r
step << tbc
    #sticky
    #completewith next
    .goto Dun Morogh,28.6,72.2,20,0
    +杀死狼，获得 10c+ 的供应商垃圾，然后进入建筑物
step << tbc
    .goto Dun Morogh,28.8,69.2,20 >>进入大楼
step << tbc
    .goto Dun Morogh,28.8,66.2
    .vendor >>与恶魔之书供应商交谈，供应商垃圾
step << tbc
    .goto Dun Morogh,28.6,66.1
    .train 348 >>列车献祭
.target Alamar Grimm
>>对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .accept 1599 >>接任务: |cRXP_LOOT_开端|r
step
    >>杀死狼。掠夺它们的肉
.goto Dun Morogh,28.4,75.4
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >>升级至 2
step << tbc
#sticky
#completewith next
    .goto Dun Morogh,26.8,79.8,30,0
    .goto Dun Morogh,30.1,82.4,30 >>途中杀死一些狼，然后观看这个
.link https://www.youtube.com/watch?v=iUvGsRbIVp8 >>点击这里
step << tbc
    >>杀死霜鬃新手。从他们身上搜刮羽毛护身符
.goto Dun Morogh,29.0,82.6,20,0
.goto Dun Morogh,29.0,81.2,30,0
.goto Dun Morogh,30.1,82.4,20,0
    .complete 1599,1 --Collect Feather Charm (x3)
step << tbc
    .goto Dun Morogh,29.5,69.8,100 >>在灵魂治疗师处死亡并重生
step << tbc
    .goto Dun Morogh,28.6,66.1
.target Alamar Grimm
>>对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .turnin 1599 >>交任务: |cRXP_FRIENDLY_开端|r
step
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
.target Sten Stoutarm
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3115 >>接任务: |cRXP_LOOT_被污染的备忘录|r
step << tbc
>>召唤小鬼，反击
.goto Dun Morogh,30.0,71.5
    .vendor >>卖垃圾，买 15 瓶水。如果钱不够，就多花点钱
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
step
#xprate <1.5
    #sticky
    #completewith Rockjaw
    >>杀死你看到的普通 Rockjaw Troggs
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
#xprate <1.5
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
#label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target 格雷林·白胡子
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
step
#xprate <1.5
    #sticky
    #label Troggs
    .goto Dun Morogh,28.7,77.5
    >>如果你现在还没搞定穴居人的话就上来
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .xp 4 >>升级至 4
step
.goto Dun Morogh,25.0,76.0
.target 诺里·普里德瑞夫特
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
>>一旦被接受，将开始 5 分钟的计时器。放松并按照指南操作
step << wotlk
    .hs >>使用你的炉石
step
    #sticky
    #completewith next
    #requires Troggs
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
    #requires Troggs
.goto Dun Morogh,28.8,66.4
>>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
.target 杜南·弗卡特
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
step
.goto Dun Morogh,28.6,66.1
    >>上楼去
    .train 688 >>训练召唤小鬼 << wotlk
    .train 172 >>列车腐败
.target Alamar Grimm
>>对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r
    .turnin 3115 >>交任务: |cRXP_FRIENDLY_被污染的备忘录|r
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
step << tbc
.goto Dun Morogh,30.0,71.5
    .vendor >>卖家，再买 5 倍水
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
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
.goto Dun Morogh,30.6,80.3
    >>进入巨魔洞穴。杀死格里克尼尔，然后搜刮他的日记
    .complete 218,1 --Collect 格雷林·白胡子's Journal (x1)
step
.goto Dun Morogh,28.4,79.7,30,0
.goto Dun Morogh,26.8,79.6,20 >>跑出洞穴
step
    .goto Dun Morogh,25.076,75.713
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
#completewith BoarMeat3
>>杀死野猪以获取一些猪肉以备后用
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>>杀死野猪以获取一些野猪肋骨以备后用
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
>>磨碎野猪到卡拉诺斯东北部
.goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >>升级至 2415/+2800xp
step
    .goto Dun Morogh,47.0,55.1,75 >>死亡后在灵魂治疗师处重生，或者跑到卡拉诺斯。确保你的子区域不是寒脊隘口
step
    #label BoarMeat3
    .zone Dun Morogh >>.
step
    #label BoarRibs
    .zone Dun Morogh >>.
step
.goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
step
    .xp 6 >>升级至 6
step
    .goto Dun Morogh,46.7,53.5
    .vendor >>供应商垃圾
step << tbc
.goto Dun Morogh,47.3,53.7
    .vendor >>去找丹尼，购买血契之书并使用它
step
.goto Dun Morogh,47.3,53.7
    >>与吉姆里兹交谈
    .train 695 >>训练暗影箭 r2
    .train 1454 >>火车生活水龙头
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
step
    #sticky
#completewith next
>>杀死野猪以获取一些猪肉以备后用
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
.goto Dun Morogh,49.426,48.410
    >>不要在途中杀死熊
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
step
#xprate <1.5
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
.goto Dun Morogh,50.084,49.420
.target 洛斯洛·拉奇
>>对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
step
    #sticky
#completewith BoarRibs2
>>杀死野猪以获取野猪肋骨以供日后使用
.collect 2886,6 --Collect Crag Boar Rib (x6)
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
    #sticky
    #completewith supplies
    +如果你以前买不起技能，现在就去买吧
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
step
    #label supplies
.goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
step
.goto Dun Morogh,47.4,52.5
    .home >>将你的炉石设置为雷酒酿酒厂
step
#xprate <1.5
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
    .vendor >>供应商。从 Kreg 购买 x10 5 级饮料
step
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
#label BoarRibs2
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    >>杀死熊、野猪和豹子
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
    .xp 7+3735 >>升级直到 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
step
    .goto Dun Morogh,30.3,37.5,50 >>跑到这里
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>磨练直到 4360+/4500xp，然后转到这里
    .goto Dun Morogh,30.3,37.5,50
step
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>一直向北跑，倒下然后死亡，然后重生
step
    .goto Wetlands,12.7,46.7,30 >>游到岸边
step
    .goto Wetlands,9.5,59.7
    .fp Menethil >>获取米奈希尔港飞行路线
step
    .hs >>炉石到卡拉诺斯
step
    .goto Dun Morogh,47.4,52.5
    >>从 Belm 购买 Rhapsody Malt 和 Thunder Ale
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,310,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10 >>进入旅店老板后面的房间
step
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
step << tbc
    .goto Dun Morogh,47.3,53.7
    .vendor >>去找 Dannie，购买 Firebolt r2 书并使用它
step
    .goto Dun Morogh,47.3,53.7
    >>与吉姆里兹交谈
    .train 980 >>训练痛苦诅咒
    .train 5782 >>列车恐惧
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
step
#xprate <1.5
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
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .accept 412 >>接任务: |cRXP_LOOT_自动净化装置|r
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >>跑上斜坡到达 Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>清理此区域的怪物。如果您需要清理中间营地，请小心。如果您需要另外 2 个怪物，您可以将怪物拉到小屋中，然后将它们拉到小屋后面的视线范围内。如果您运气不好，请跑到另一个区域
    .complete 315,1 --Collect Shimmerweed (x6)
step
    #completewith next
    .goto Dun Morogh,38.4,49.9,40 >>跑向老冰须
step
    >>恐惧老冰须，然后抢劫洞穴内的箱子
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
step << tbc
    .goto Dun Morogh,30.4,45.8
    .vendor >>尽可能多地购买 5 级饮料
step
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
#xprate <1.5
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
    #completewith next
    .goto Dun Morogh,24.5,50.8,30 >>进入洞穴
step
    .goto Dun Morogh,22.1,50.3,40,0
       .goto Dun Morogh,21.3,52.9,40,0
    >>杀死洞穴内的猎头者
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    >>跳进下面的角落
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith next
    .deathskip >>在灵魂治疗师处死亡并重生
step
    .goto Dun Morogh,46.726,53.826
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
.target Senir Whitebeard
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
step
#xprate <1.5
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
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>跑上这一段山路
step
    >>杀死瓦加什。夺取他的尖牙
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    >>途中磨一点
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商，购买 x10 5级水/x5 5级食物
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
.complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
step
    .goto Dun Morogh,69.084,56.330
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    .goto Dun Morogh,68.7,56.0
.target 参议员梅尔·斯通哈洛
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
step
.xp 10 >>升级至 10
step
    .goto Dun Morogh,81.2,42.7,15 >>途中磨蹭一会儿，进入隧道内
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
    #completewith next
    .goto Dun Morogh,81.2,42.7,25 >>穿过隧道返回
step
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>对话: |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .turnin 413 >>交任务: |cRXP_FRIENDLY_微光酒|r
.target Mountaineer Barleybrew
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
step
    #completewith next
    .goto Dun Morogh,86.2,51.3,20 >>穿过隧道
step
    .goto Loch Modan,22.071,73.127
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
step
    .goto Loch Modan,22.6,75.4,30,0
    .goto Loch Modan,23.233,73.675
    >>进入掩体
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step << wotlk
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
step << wotlk
    .goto Loch Modan,22.2,73.3
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step << wotlk
    .goto Loch Modan,23.233,73.675
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step
    .goto Loch Modan,35.3,46.9,150 >>奔向塞尔萨玛
step << tbc
    .goto Loch Modan,35.5,48.4
    .home >>将你的炉石设为塞尔萨玛
step << tbc
#xprate <1.5
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
step
    .goto Loch Modan,34.0,46.5
    .vendor >>供应商垃圾，修复
step
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    .goto Loch Modan,32.6,49.9,40,0
    .goto Loch Modan,37.2,46.1,40,0
    .goto Loch Modan,36.7,41.6,40,0
    >>找到卡德雷尔，他在主干道上巡逻
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
.target Mountaineer Kadrell
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r << tbc
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
step
    >>进入建筑，然后下楼。和布洛克交谈
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
step << tbc
    #sticky
    #completewith ThelsamarFood
    >>杀死蜘蛛。掠夺它们以获得蜘蛛脓液
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << tbc
    #sticky
    #completewith ThelsamarFood
    >>杀死熊。掠夺它们以获取熊肉
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
step << tbc
    #sticky
    #completewith ThelsamarFood
    >>杀死野猪。杀死它们以获取野猪肠
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #completewith next
    #label ThelsamarFood
    .goto Loch Modan,23.3,17.9,30 >>跑到北边的地堡。沿途磨一些怪物，获得猪肠、熊肉和蜘蛛脓液
step
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商垃圾，修复
step
    >>Upstairs
    .goto Loch Modan,24.7,18.3
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
.target 巡山人雷矛
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r << tbc
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
step
    #label Thelsamar
    .goto Loch Modan,32.0,47.2,150 >>在灵魂治疗师处死亡并重生，或者跑到这里
step
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取塞尔萨玛飞行路线
>>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r
.target Thorgrum Borrelson
    .accept 6391 >>接任务: |cRXP_LOOT_飞往铁炉堡|r
    .fly Ironforge >>飞往铁炉堡
step
    .goto Ironforge,51.521,26.311
>>对话: |cRXP_FRIENDLY_高尼尔·石趾|r
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
.target Golnir Bouldertoe
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
step
    >>不要飞到任何地方
.goto Ironforge,55.501,47.742
>>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
.target Gryth Thurden
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
step
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
step
    #sticky
    #completewith next
+跳到铁砧上，然后退出并重新登录
.goto Ironforge,49.7,43.7
step
.goto Ironforge,77.0,51.0,30 >>进入 Deeprun 有轨电车
step
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step
    .use 17117>>用你的笛子吹响四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
.target Monty
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
step
     >>乘坐电车到另一侧然后转弯
.target Nipsy
>>对话: |cRXP_FRIENDLY_尼普希|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
step
    .goto StormwindClassic,58.1,16.5
.target Furen Longbeard
>>对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
step
    .goto StormwindClassic,62.5,62.3,30,0
    .goto StormwindClassic,66.3,62.1
    .fp Stormwind >>获取暴风城飞行路线
step
    .money <0.2090
    .goto StormwindClassic,57.1,57.7
    .train 227 >>火车五线谱
step
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,15,0
    .goto StormwindClassic,27.2,78.1,10 >>进入被屠宰的羔羊
step
    .goto StormwindClassic,25.2,78.5
.target Gakin the Darkbinder
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1688 >>接任务: |cRXP_LOOT_苏伦娜·凯尔东|r
    .train 1120 >>训练吸取灵魂
    .train 6201 >>训练创造健康石
    .train 696 >>训练恶魔皮肤r2
    .train 707 >>训练献祭 r2
step
    .deathskip >>通过使用生命分流并站在你旁边的篝火上，在灵魂治疗师处死亡并重生
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
.target 杜汉元帅
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .accept 62 >>接任务: |cRXP_LOOT_法戈第矿洞|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.9,65.7
    .abandon 109 >>放弃向 格里安·斯托曼托 报告
step << tbc
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,42.9,65.7,15 >>进入旅馆
step << tbc
#xprate <1.5
    >>进门后就在你左边
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.1,67.3
.target 雷米“两次”
>>对话: |cRXP_FRIENDLY_雷米|r
    .accept 47 >>接任务: |cRXP_LOOT_金砂交易|r
step
.goto Elwynn Forest,42.1,67.3
.target 雷米“两次”
>>对话: |cRXP_FRIENDLY_雷米|r
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
step << tbc
#xprate <1.5
    #sticky
    #completewith Candles
    >>从附近的狗头人那里获取蜡烛
    .complete 60,1 --Collect Kobold Candle (x8)
step << tbc
#xprate <1.5
    #sticky
#completewith Dust
    >>从附近的狗头人那里获取金粉
    .complete 47,1 --Collect Gold Dust (x10)
step << tbc
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,38.1,81.6,15 >>从下方入口进入
step << tbc
#xprate <1.5
    >>继续穿过矿井
.goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << tbc
#xprate <1.5
    #label Candles
    .goto Elwynn Forest,38.4,83.4,2500 >>.
step << tbc
#xprate <1.5
    #label Dust
    .goto Elwynn Forest,38.4,83.4,2500 >>.
step << tbc
#xprate <1.5
    .goto Elwynn Forest,38.4,83.4
    >>杀死狗头人。从他们身上搜刮蜡烛和灰尘
    .complete 60,1 --Collect Kobold Candle (x8)
    .complete 47,1 --Collect Gold Dust (x10)
step
    .goto Elwynn Forest,34.660,84.482
.target 马斯通菲尔德
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .accept 88 >>接任务: |cRXP_LOOT_公主必须死！|r
step
    .goto Elwynn Forest,24.6,78.2
    .accept 176 >>接任务: |cRXP_LOOT_通缉：霍格|r
step
    #sticky
    #completewith next
    >>留意金币拾取时间表（幸运掉落），或 Gruff Swiftbite 的 100% 掉落（罕见）。额外的 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接任务: |cRXP_LOOT_收货人|r
step
    #label Hogger
.goto Elwynn Forest,27.0,86.7,40,0
.goto Elwynn Forest,26.1,89.9,40,0
.goto Elwynn Forest,25.2,92.7,40,0
.goto Elwynn Forest,27.0,93.9,40,0
.goto Elwynn Forest,27.0,86.7,40,0
.goto Elwynn Forest,26.1,89.9,40,0
.goto Elwynn Forest,25.2,92.7,40,0
.goto Elwynn Forest,27.0,93.9,40,0
.goto Elwynn Forest,27.0,86.7,40,0
.goto Elwynn Forest,26.1,89.9,40,0
.goto Elwynn Forest,25.2,92.7,40,0
.goto Elwynn Forest,27.0,93.9,40,0
    >>霍格可能出现在该区域的多个位置。让他被恐惧束缚，或者在低于 60% 生命值时将他放风筝到 24,80 的塔上。抢劫他，获得他的爪子
    .complete 176,1 --Collect Huge Gnoll Claw (x1)
step
#completewith next
    .goto Elwynn Forest,39.5,60.5,200 >>死亡后在灵魂治疗师处重生，或者跑回金郡
step
.goto Elwynn Forest,42.105,65.927
    >>选择权杖。装备它
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
.target 杜汉元帅
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
step
    #sticky
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
.target 杜汉元帅
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 123 >>交任务: |cRXP_FRIENDLY_收货人|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
.target 杜汉元帅
    .accept 76 >>接任务: |cRXP_LOOT_玉石矿洞|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,42.1,67.3
.target 雷米“两次”
>>对话: |cRXP_FRIENDLY_雷米|r
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
step
    .abandon 147 >>放弃追捕
step << tbc
#xprate <1.5
    .goto Elwynn Forest,43.283,65.721
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
.target William Pestle
    .accept 61 >>接任务: |cRXP_LOOT_送往暴风城的货物|r
step
    #sticky
    #completewith soylago
    .goto Elwynn Forest,44.1,66.0,12 >>如果你是 12 级，请前往旅店老板后面的房间，然后下楼。否则，请跳过此步骤
    .goto Elwynn Forest,44.4,66.2
    .train 755 >>训练健康漏斗
    .train 705 >>训练暗影箭 r3
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>购买 x10 5 级饮料
step << tbc
#xprate <1.5
    #label soylago
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,61.8,54.0,20 >>走向矿井外面
step << tbc
#xprate <1.5
    >>进入矿井，继续沿着中间的路走
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,61.8,54.0,40,0
    .goto Elwynn Forest,73.973,72.179
    >>在来这里的路上磨一点
.target 后卫托马斯
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
step << tbc
    #xprate <1.5
.target 后卫托马斯
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .accept 37 >>接任务: |cRXP_LOOT_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_LOOT_保卫边境|r
step << tbc
#xprate <1.5
    #sticky
    #completewith Prowlers
    >>像执行其他任务一样杀死潜行者
    .complete 52,1 --Kill Prowler (x8)
step << tbc
#xprate <1.5
    #sticky
    #completewith 熊s
    >>像执行其他任务一样杀死熊。杀死你看到的任何熊
    .complete 52,2 --Kill 年轻的森林熊 (x5)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_LOOT_罗尔夫的下落|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .accept 5545 >>接任务: |cRXP_LOOT_木材危机|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,83.3,66.1
    .vendor >>如果需要，供应商会将其丢弃并进行修理
step << tbc
#xprate <1.5
    #sticky
    #completewith next
    >>留意树底部的木捆。
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << tbc
#xprate <1.5
    #label Bundles
    .goto Elwynn Forest,79.8,55.5
    >>将怪物拉到小屋前，走开，然后让其中一个保持恐惧，并尽量让两个都保持 DOT。然后掠夺地上的尸体
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step << tbc
#xprate <1.5
.goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
.goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>开始跑回来，完成捆绑
    .collect 13872,8 --Collect Bundle of Wood (x8)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
step << tbc
#xprate <1.5
    #label 熊s
.goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
step << tbc
#xprate <1.5
    #label Prowlers
    .goto Elwynn Forest,79.457,68.789,10000
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
step << tbc
#xprate <1.5
    .goto Elwynn Forest,73.973,72.179
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
.target 后卫托马斯
    .accept 39 >>接任务: |cRXP_LOOT_托马斯的报告|r
step << tbc
#xprate <1.5
    .goto Elwynn Forest,70.5,77.6,40,0
    .goto Elwynn Forest,68.1,77.5,40,0
    .goto Elwynn Forest,68.2,81.4,40,0
    .goto Elwynn Forest,70.8,80.9,40,0
    .goto Elwynn Forest,70.5,77.6,40,0
    .goto Elwynn Forest,68.1,77.5,40,0
    .goto Elwynn Forest,68.2,81.4,40,0
    .goto Elwynn Forest,70.8,80.9,40,0
    .goto Elwynn Forest,70.5,77.6,40,0
    .goto Elwynn Forest,68.1,77.5,40,0
    .goto Elwynn Forest,68.2,81.4,40,0
    .goto Elwynn Forest,70.8,80.9,40,0
    >>开始绕着农场转，杀死迪菲亚并掠夺他们的头巾
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    .goto Elwynn Forest,69.8,79.5
    .abandon 109 >>放弃向 格里安·斯托曼托 报告
step
    >>杀死屋子里的怪物，让摩根感到恐惧（他会凿伤并杀死宠物），用核武器攻击苏瑞娜。抢劫她，得到她的颈链
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x)
step
    #label Deed
    .goto Elwynn Forest,69.8,79.5
    .goto Elwynn Forest,69.5,76.4,0
    .goto Elwynn Forest,71.3,79.2,0
    >>杀死公主。抢夺她的项圈
    .complete 88,1 --Collect Brass Collar (x1)
step << tbc
#xprate <1.5
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .isQuestComplete 83
step << tbc
#xprate <1.5
    #sticky
    #completewith next
    .goto Elwynn Forest,83.3,66.1
    .vendor >>供应商垃圾，修复
step << tbc
    .xp 12
step
    #sticky
    #completewith next
    .goto Elwynn Forest,91.7,72.3,90 >>一路磨练，确保至少拥有 2 个灵魂碎片（使用吸取灵魂）
    .collect 6265,2 --Collect Soul Shard (x2)
step
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>接任务: |cRXP_LOOT_豺狼人的入侵|r
step
    .abandon 184 >>放弃法布隆的行为
step
    >>小心途中的暴徒
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
step
    .goto Redridge Mountains,29.30,53.60
.target Shawn
>>对话: |cRXP_FRIENDLY_肖恩|r
    .accept 3741 >>接任务: |cRXP_LOOT_希拉里的项链|r
    .xp <12,1
step
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
    .xp <12,1
step
    .goto Redridge Mountains,29.20,53.60
.target Hilary
>>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
    .xp <12,1
step
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge >>获取赤脊山飞行路线
    .fly Stormwind >>飞往暴风城
step << wotlk
    .goto StormwindClassic,52.8,65.4
    .home >>将炉石设置为暴风城
step << tbc
#xprate <1.5
    >>选择火箭。火箭的伤害很高，而且可以用来分体拉动
    .goto StormwindClassic,56.2,64.6
.target Morgan Pestle
>>对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
step
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,15,0
    .goto StormwindClassic,27.2,78.1,10 >>进入被屠宰的羔羊
step
.goto StormwindClassic,25.3,78.2
    .train 755 >>训练健康漏斗
    .train 705 >>训练暗影箭 r3
    .xp <12,1
step
    .goto StormwindClassic,25.2,78.5
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1688 >>交任务: |cRXP_FRIENDLY_苏伦娜·凯尔东|r
.target Gakin the Darkbinder
    .accept 1689 >>接任务: |cRXP_LOOT_誓缚|r
step
    .goto StormwindClassic,25.2,80.7,12,0
    .goto StormwindClassic,23.2,79.5,12,0
    .goto StormwindClassic,26.3,79.5,12,0
    .goto StormwindClassic,25.5,78.1
    >>前往墓穴底部。使用血石项链召唤虚空行者并杀死它
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step
    .goto StormwindClassic,25.2,78.5
    >>学会后不要召唤虚空行者
.target Gakin the Darkbinder
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1689 >>交任务: |cRXP_FRIENDLY_誓缚|r
step
    .deathskip >>死亡后使用生命分流在灵魂治疗师处重生，并站在术士训练师旁边的篝火上
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修复
step
    .goto Elwynn Forest,42.105,65.927
    .turnin -76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
    .turnin -39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
step
    .goto Elwynn Forest,34.660,84.482
.target 马斯通菲尔德
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88 >>交任务: |cRXP_FRIENDLY_公主必须死！|r
step
    .abandon 59 >>抛弃布甲和皮甲
step << wotlk
    .goto Elwynn Forest,27.0,93.9
    .xp 12
step << wotlk
    .goto Elwynn Forest,44.4,66.2
    >>故意死亡并在金郡重生
    >>前往旅馆地下室
    .train 755 >>训练健康漏斗
    .train 705 >>训练暗影箭 r3
step
    .hs >>洛克莫丹 << tbc
    .hs >>炉石到暴风城 << wotlk
step << wotlk
    .goto StormwindNew,21.8,56.2
    >>前往: |cRXP_PICK_暴风城|r
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
]])

RXPGuides.RegisterGuide([[
#tbc
<< Alliance Warlock
#name 12-14 洛克莫丹侏儒
#version 1
#group RestedXP 联盟 1-20
#defaultfor Gnome Warlock
#next 14-20 秘血岛
step
    .goto Loch Modan,34.8,48.6
    .vendor >>购买 6 个插槽袋，直到所有插槽袋都已满
step
    .goto Loch Modan,34.0,46.5
    .vendor >>供应商垃圾，修复
step
#sticky
#completewith Thelsamar
>>杀死塞尔萨玛血香肠区域中的蜘蛛
.collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar
>>杀死塞尔萨玛血香肠区域中的熊
.collect 3173,3,418,1 --Collect 熊 Meat (x3)
step
    #sticky
    #completewith Thelsamar
>>在塞尔萨玛血香肠区域杀死野猪
.collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar
.goto Loch Modan,39.3,27.0,100 >>在途中升级一些怪物以获取猪肠、熊肉和蜘蛛脓液
step
.goto Loch Modan,35.5,18.2,30 >>杀死老鼠并前往洞穴入口
step
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
    >>收集你在洞穴中找到的箱子。要小心，因为这可能很困难，而且地卜师有火焰防护（火焰免疫）
    .complete 307,1 --Collect Miners' Gear (x4)
step
.goto Loch Modan,35.5,18.2,30 >>回到洞穴外
step
    #sticky
    #completewith Kobolds
    .goto Loch Modan,42.9,9.9
    .vendor >>供应商，如需维修（可选）
step
    #label Kobolds
    >>杀死狗头人。掠夺他们的耳朵
.complete 416,1 --Collect Tunnel Rat Ear (x12)
step
#sticky
#completewith Thelsamar3
>>杀死塞尔萨玛血香肠区域中的蜘蛛
.collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar3
>>杀死塞尔萨玛血香肠区域中的熊
.collect 3173,3,418,1 --Collect 熊 Meat (x3)
step
    #sticky
    #completewith Thelsamar3
>>在塞尔萨玛血香肠区域杀死野猪
.collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar3
.goto Loch Modan,23.3,17.9,30 >>跑回掩体，一路磨蹭
step
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step
    .goto Loch Modan,24.7,18.3
.target 巡山人雷矛
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
step
    .xp 13 >>升级至 13
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
    #sticky
#label Intestines9
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
    #requires Meat9
.goto Loch Modan,36.9,46.1,2500 >>.
step
    #requires Ichor9
.goto Loch Modan,36.9,46.1,2500 >>.
step
    #requires Intestines9
.goto Loch Modan,36.9,46.1,2500 >>.
step
.goto Loch Modan,32.6,49.9,40,0
.goto Loch Modan,37.2,46.1,40,0
.goto Loch Modan,36.7,41.6,40,0
.goto Loch Modan,32.6,49.9,40,0
.goto Loch Modan,37.2,46.1,40,0
.goto Loch Modan,36.7,41.6,40,0
    >>找到卡德雷尔，他在主干道上巡逻
.goto Loch Modan,36.9,46.1
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step
    >>进入大楼
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
step
    .goto Loch Modan,34.828,49.283
.target 维德拉炉灶
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step
    .goto Loch Modan,30.0,68.4,30,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>杀死碎石穴居人。掠夺他们的牙齿
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step
    #sticky
    #completewith FlyIF
    .money >0.5642
    .goto Loch Modan,30.0,68.4,30,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
.goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    +一直磨练直到你有价值 56s 42c 的可销售物品+金钱，然后跳过这一步
step
.goto Loch Modan,32.7,76.5,0
.xp 13+9200 >>升级直到 9200+/11000xp
step
.goto Loch Modan,22.2,73.3
.target 登山者科布尔弗林特
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step
.goto Loch Modan,23.233,73.675
.target 鲁格尔福斯上尉
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step
    .xp 14 >>在穴居人那里磨练到 14
step
    #sticky
    #completewith next
    .goto Loch Modan,32.0,47.2,150 >>奔向塞尔萨玛
step
.goto Loch Modan,33.938,50.954
    .fly Ironforge >>飞往铁炉堡
step
    #sticky
    #label Wand1
    #completewith Wand2
.goto Ironforge,25.8,75.2,0 >>或者，从 AH 购买大魔杖，如果它的价格低于 30 秒 6 美分
.collect 11288,1 --Collect Greater Magic Wand
step
    #label Wand2
    #completewith Wand1
    .goto Ironforge,24.0,16.7,20,0
.goto Ironforge,22.6,16.5
    .vendor >>进入大楼，然后下楼。购买一根燃烧魔杖
step
    #requires Wand2
.goto Ironforge,51.1,8.7,18 >>进入大楼
.goto Ironforge,50.4,6.3
    .train 6222 >>列车腐败r2
    .train 755 >>训练健康漏斗
    .train 705 >>训练暗影箭 r3
step
    .goto Ironforge,53.2,7.8,18 >>进入大楼
.goto Ironforge,53.0,6.4
    .vendor >>购买 Consume Shadows r1，然后 Sacrifice r1
step
    .goto Ironforge,55.501,47.742
    .fly Menethil >>飞往米奈希尔
step
    .money <0.076
    .goto Wetlands,10.4,56.0,15,0
.goto Wetlands,10.1,56.9,15,0
.goto Wetlands,10.6,57.2,15,0
.goto Wetlands,10.7,56.8
    .vendor >>如果你有 7.6s，请检查 Neal Allen 的青铜管，如果有的话就买下来
    .bronzetube
step
    .money <0.0385
.goto Wetlands,8.1,56.3
    .vendor >>检查 Dewin 的治疗药水，购买量降至 1 秒
step
    #sticky
#completewith next
+在这里等船
.goto Wetlands,4.7,57.3
step
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step
    #sticky
    #completewith next
.goto Darkshore,36.8,44.3,0
.vendor >>如果您愿意的话，您可以从旅馆底层的莱尔德 (Laird) 购买便宜的食物（20c 5 级食物）。
step
    >>客栈顶楼
.goto Darkshore,37.0,44.1
.target Wizbang Cranktoggle
>>对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
step
    .goto Darkshore,38.8,43.4
.target 萨纳利恩护树人
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
step
    .goto Darkshore,39.3,43.4
.target Terenthis
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接任务: |cRXP_LOOT_熊怪的威胁|r
step
    .goto Darkshore,36.621,45.594
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
step
    .goto Darkshore,36.3,45.6
    .fp Auberdine >>获取奥伯丁飞行路线
step
    #sticky
#completewith Darkshore2
>>杀死爬行者。在执行其他任务时掠夺它们的腿
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .goto Darkshore,36.4,50.9
    .complete 3524,1 --Collect Sea Creature Bones (x1)
step
    .goto Darkshore,38.3,52.7,30,0
    .goto Darkshore,38.9,62.0,30,0
    .goto Darkshore,38.3,52.7,30,0
    .goto Darkshore,38.9,62.0,30,0
    .goto Darkshore,38.3,52.7
    >>继续向南走直到你找到一只狂暴熊，当你激怒它时使用背包中的萨纳瑞恩的希望
    .complete 2118,1 --Rabid Thistle 熊 Captured
step
    #label Darkshore2
.goto Darkshore,39.0,53.2
    .complete 984,1 --Find a corrupt furbolg camp
step
.goto Darkshore,36.7,52.4,40,0
.goto Darkshore,35.6,47.6,40,0
.goto Darkshore,36.2,44.5,40,0
.goto Darkshore,36.7,52.4,40,0
.goto Darkshore,35.6,47.6,40,0
.goto Darkshore,36.2,44.5,40,0
>>杀死爬行者。掠夺它们的腿
    .complete 983,1 --Collect Crawler Leg (x6)
step
    .goto Darkshore,36.6,46.3
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
step
    .goto Darkshore,36.621,45.594
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
step
    .goto Darkshore,38.8,43.4
.target 萨纳利恩护树人
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
step
    .goto Darkshore,39.3,43.4
.target Terenthis
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
step
    .goto Darkshore,36.621,45.594
    .abandon 1001 >>放弃 Buzzbox 411
step
    #sticky
#completewith Azuremyst
+在这里等船
.goto Darkshore,30.8,41.0
step
    .goto Darkshore,30.8,41.0
.abandon 4681 >>抛弃冲上岸
step
    #label Azuremyst
    .zone Azuremyst Isle >>前往: |cRXP_PICK_秘蓝岛|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance Hunter
#name 1-11 丹莫罗
#version 1
#group RestedXP 联盟 1-20
#defaultfor Dwarf Hunter
#next 11-14 黑海岸
step << !Gnome !Dwarf
    #sticky
    #completewith next
.goto Dun Morogh,29.927,71.201
    +您已选择一本针对侏儒和矮人的指南。您应该选择与您开始的相同的起始区
step
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
    >>与斯滕·斯托塔姆交谈
.target Sten Stoutarm
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .accept 179 >>接任务: |cRXP_LOOT_矮人的交易|r
step
    .goto Dun Morogh,29.0,74.4
    .complete 179,1 --Tough Wolf Meat (8)
step
    .goto Dun Morogh,29.93,71.20 << tbc
    .goto Dun Morogh,29.87,71.87 << wotlk
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
.target Sten Stoutarm
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3108 >>接任务: |cRXP_LOOT_风蚀符文|r
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.3
    >>与巴利尔·霜锤交谈
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
step
#xprate <1.5
    #sticky
    #label Rockjaw
    >>杀死你看到的普通 Rockjaw Troggs
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
#xprate <1.5
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>杀死魁梧的岩颌穴居人
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
    >>与塔林·基耶交谈
>>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target Talin Keeneye
    .accept 234 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 183 >>接任务: |cRXP_LOOT_猎杀野猪|r
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
    .goto Dun Morogh,25.076,75.713
    >>与格雷林·白胡子交谈
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target 格雷林·白胡子
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
step
#completewith next
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>杀死霜鬃巨魔幼龙
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step
    .xp 4 >>升级至 4
step
    #requires Rockjaw
    .goto Dun Morogh,25.0,75.9
.target 诺里·普里德瑞夫特
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
step
    #completewith next
    .hs >>回到起始区域
step
#xprate <1.5
    .goto Dun Morogh,29.7,71.3
    >>与巴利尔·霜锤交谈
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
step
    .goto Dun Morogh,29.1,67.5
    >>与索尔加斯·格里姆森交谈
.target Thorgas Grimson
>>对话: |cRXP_FRIENDLY_索加斯·格瑞姆森|r
    .turnin 3108 >>交任务: |cRXP_FRIENDLY_风蚀符文|r
        .train 1978 >>火车毒蛇钉刺
step
    .goto Dun Morogh,28.8,66.5
    >>与杜尔南·弗卡特交谈
>>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
.target 杜南·弗卡特
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
step
    .goto Dun Morogh,25.0,75.9
.target 诺里·普里德瑞夫特
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
step
#completewith next
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
>>杀死霜鬃巨魔幼龙
.complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step
    .goto Dun Morogh,25.0,75.9
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 182 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
.target 格雷林·白胡子
    .accept 218 >>接任务: |cRXP_LOOT_被窃取的日记|r
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
.goto Dun Morogh,30.6,80.3
    >>进入巨魔洞穴。杀死格里克尼尔，然后从他身上搜刮出格雷林的日记
    .complete 218,1 --Collect 格雷林·白胡子's Journal (x1)
step
.goto Dun Morogh,28.4,79.7,30,0
.goto Dun Morogh,26.8,79.6,20 >>跑出洞穴
step
    .goto Dun Morogh,25.076,75.713
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
.target 格雷林·白胡子
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
step
    .goto Dun Morogh,33.484,71.841
    >>与巡山人塔洛斯交谈
>>对话: |cRXP_FRIENDLY_巡山人萨鲁斯|r
    .turnin 282 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
.target 登山者泰洛斯
    .accept 420 >>接任务: |cRXP_LOOT_森内尔的观察站|r
step
    .goto Dun Morogh,33.8,72.2
    >>与 指针 弹簧链轮 交谈
.target 指针 弹簧链轮
>>对话: |cRXP_FRIENDLY_汉兹·跳链|r
    .accept 2160 >>接任务: |cRXP_LOOT_塔诺克的补给品|r
step
.goto Dun Morogh,34.1,71.6,20,0
.goto Dun Morogh,35.7,66.0,20 >>穿过隧道
step
    #sticky
#completewith BoarMeat3
>>杀死野猪以获取一些猪肉以备后用
.collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
#completewith BoarRibs
>>杀死野猪以获取一些野猪肋骨以备后用
.collect 2886,6 --Collect Crag Boar Rib (x6)
step
    #label BoarMeat3
.goto Dun Morogh,46.726,53.826,100 >>奔向卡拉诺斯
step
    #label BoarRibs
.zone Dun Morogh >>.
step
.goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
step
    .goto Dun Morogh,46.8,52.4
    >>与拉格纳·雷酒交谈
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
step
    .goto Dun Morogh,47.217,52.195
    >>与坦诺克·霜锤交谈
.target Tannok Frosthammer
>>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
step
    .goto Dun Morogh,46.021,51.676
    >>与萨雷克·黑石交谈
.target Tharek Blackstone
>>对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
step
    .goto Dun Morogh,49.5,48.3
    >>与飞行员 Bellowfiz 交谈
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
step
#xprate <1.5
    .goto Dun Morogh,49.6,48.5
    >>与飞行员 Stonegear 交谈
.target 飞行员石甲
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .accept 313 >>接任务: |cRXP_LOOT_灰色洞穴|r
step
    .goto Dun Morogh,50.084,49.420
    >>与洛斯洛·拉奇交谈
.target 洛斯洛·拉奇
>>对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
step
    .goto Dun Morogh,50.4,49.1
    >>与贝尔丁·斯蒂尔格瑞尔交谈
.target Beldin 钢烤架
>>对话: |cRXP_FRIENDLY_贝尔丁·钢架|r
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
step
    #sticky
#completewith BoarRibs2
>>杀死野猪以获取野猪肋骨以供日后使用
.collect 2886,6 --Collect Crag Boar Rib (x6)
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
    >>与飞行员 Bellowfiz 交谈
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
.target 飞行员 Bellowfiz
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    .xp 6
step << Hunter
    .goto Dun Morogh,45.8,53.1
    .train 3044 >>训练奥术射击
step
    >>抢劫箱子
.goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Rumbleshot's Ammo (1)
step
    .goto Dun Morogh,40.682,65.130
    >>与赫格纳·朗博肖特交谈
.target Hegnar Rumbleshot
>>对话: |cRXP_FRIENDLY_海格纳·重枪|r
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
step << Hunter
    .goto Dun Morogh,40.682,65.130
    >>购买 4 级枪支升级，如果没有足够的钱，请跳过此步骤
    .collect 2509,1
step
#xprate <1.5
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
    .xp 7
step
>>在途中消灭一些怪物
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
step
    .goto Dun Morogh,38.5,54.0
    >>等到老冰须离开洞穴，你就可以潜入洞穴抢劫箱子，或者这样做
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>点击这里
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
step
    .goto Dun Morogh,30.2,45.8
    >>与雷杰德·巴利布鲁交谈
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 318 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
.target Rejold 大麦啤酒
    .accept 319 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .accept 315 >>接任务: |cRXP_LOOT_完美烈酒|r
step
    .goto Dun Morogh,30.2,45.4
    >>与马莱斯·巴利布鲁交谈
.target 马莱斯大麦啤酒
>>对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .accept 310 >>接任务: |cRXP_LOOT_针锋相对|r
    #label BoarRibs2
step
    #title Secondary objective
    #completewith next
    >>杀死熊、野猪和豹子
.complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
step << Hunter
>>开始返回卡拉诺斯，同时完成途中的其他任务目标。
    .xp 8-1400
    .complete 384,1
step << Hunter
#xprate <1.5
    .goto Dun Morogh,49.6,48.5
.target 飞行员石甲
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
step
    .goto Dun Morogh,47.4,52.5
    >>从旅店老板处购买以下物品：
    .complete 384,2 --Rhapsody Malt (1)
    .collect 2686,1,311 --Thunder Ale
step
    .goto Dun Morogh,47.7,52.6
    >>下楼，把雷霆麦酒交给贾文，然后点击无人看守的酒桶
    .turnin 310 >>交任务: |cRXP_FRIENDLY_针锋相对|r
    .accept 311 >>接任务: |cRXP_LOOT_向马莱斯回报|r
step
    .goto Dun Morogh,47.3,52.5
    .home >>将你的炉石设置为卡拉诺斯
step
    .goto Dun Morogh,46.9,52.4
    >>与拉格纳·雷酒交谈
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
step
    .goto Dun Morogh,46.7,53.9
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .train 5116>>训练震荡射击
step
    .goto Dun Morogh,63.1,49.8
    >>与鲁德拉·安伯斯蒂尔交谈
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>跑上这一段山路
step
    >>杀死瓦加什。夺取他的尖牙
.goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (x)
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    .goto Dun Morogh,69.084,56.330
    >>与工头石眉交谈
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
step
    >>杀死穴居人
.goto Dun Morogh,70.6,58.7,40,0
    .goto Dun Morogh,67.2,59.4,40,0
    .complete 432,1 --Rockjaw Skullthumper (6)
step
    .goto Dun Morogh,69.1,56.4
.target 工头石眉
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修复
step
    #completewith next
    .goto Dun Morogh,81.2,42.7,25 >>途中磨蹭一会儿，进入隧道内
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
step << tbc
    #sticky
    #completewith next
    .deathskip >>故意死亡并在卡拉诺斯重生
step << wotlk
    .goto Loch Modan,23.2,17.7
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
step << wotlk
    >>到达洛克莫丹后，故意死亡，然后在塞尔萨玛重生
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取塞尔萨玛飞行路线
step << wotlk
    .hs >>炉石到卡拉诺斯
step
#xprate <1.5
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .accept 412 >>接任务: |cRXP_LOOT_自动净化装置|r
step
#completewith next
.goto Dun Morogh,43.1,45.0,20,0
.goto Dun Morogh,42.1,45.4,20 >>跑上斜坡到达 Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>清理此区域的怪物。如果您需要清理中间营地，请小心。如果您需要另外 2 个怪物，您可以将怪物拉到小屋中，然后将它们拉到小屋后面的视线范围内。如果您运气不好，请跑到另一个区域
    .complete 315,1 --Collect Shimmerweed (x6)
step
    .goto Dun Morogh,30.186,45.531
.target 马莱斯大麦啤酒
>>对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 311 >>交任务: |cRXP_FRIENDLY_向马莱斯回报|r
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 315 >>交任务: |cRXP_FRIENDLY_完美烈酒|r
.target Rejold 大麦啤酒
    .accept 413 >>接任务: |cRXP_LOOT_微光酒|r << tbc
step
    .goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
.goto Dun Morogh,31.5,38.9,40,0
    .goto Dun Morogh,28.3,39.9,40,0
    .goto Dun Morogh,28.7,43.7,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,25.8,47.2,40,0
    .goto Dun Morogh,30.0,51.8,40,0
    >>杀死熊、野猪和豹子
.complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
step
    .goto Dun Morogh,30.189,45.725
    >>与雷杰德·巴利布鲁交谈
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 319 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
.target Rejold 大麦啤酒
    .accept 320 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    #sticky
#label hh
    .complete 287,2 --Frostmane Headhunter (5)
step
    >>一定要小心，不要死在这里
    .goto Dun Morogh,22.3,50.7,20,0
    .goto Dun Morogh,22.5,51.5,20,0
.goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
step
#xprate <1.5
    #requires hh
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
.goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>杀死麻风侏儒。掠夺他们的齿轮和齿轮
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step << tbc
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step << tbc
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step << tbc
.goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
.deathskip >>一直向北跑，倒下然后死亡，然后重生
step << tbc
.goto Wetlands,12.7,46.7,30 >>游到岸边
step << tbc
.goto Wetlands,9.5,59.7
    .fp Menethil >>获取米奈希尔港飞行路线
step << tbc
    #completewith next
    .hs >>回到卡拉诺斯
step
    .goto Dun Morogh,46.7,53.7
    >>与塞尼尔·白胡子交谈
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
.target Senir Whitebeard
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
step
#xprate <1.5
    .goto Dun Morogh,45.9,49.4
    >>与 Razzle Sprysprocket 交谈
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .turnin 412 >>交任务: |cRXP_FRIENDLY_自动净化装置|r
step
    .goto Dun Morogh,49.4,48.3
    >>与飞行员 Bellowfiz 交谈
.target 飞行员 Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
step
    .goto Dun Morogh,45.810,53.039
    >>与格里夫·威尔哈特交谈
.target Grif Wildheart
>>对话: |cRXP_FRIENDLY_格瑞夫|r
    .accept 6064 >>接任务: |cRXP_LOOT_驯服野兽|r
step
    .goto Dun Morogh,48.3,56.9
>>将包里的驯兽棒点击在大型峭壁野猪身上。尽量在最大范围内（30 码）进行操作
    .complete 6064,1 --Tame a Large Crag Boar (1)
step
    .goto Dun Morogh,45.810,53.039
>>对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Grif Wildheart
    .accept 6084 >>接任务: |cRXP_LOOT_驯服野兽|r
step
    .goto Dun Morogh,49.4,59.4
>>用包里的驯服棒点击雪豹。尽量在最大范围内（30 码）进行操作
    .complete 6084,1 --Tame a 雪豹 (1)
step
    .goto Dun Morogh,45.810,53.039
>>对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Grif Wildheart
    .accept 6085 >>接任务: |cRXP_LOOT_驯服野兽|r
step
    .goto Dun Morogh,50.4,59.7
>>将包里的驯服棒点击在冰爪熊上。尽量在最大范围内（30 码）进行操作
    .complete 6085,1 --Tame an 冰爪熊 (1)
step
    .goto Dun Morogh,45.810,53.039
>>对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Grif Wildheart
    .accept 6086 >>接任务: |cRXP_LOOT_训练野兽|r
step << tbc
    #sticky
#completewith next
    +在前往铁炉堡的路上驯服一只冰爪熊或一只冬狼
    .goto Dun Morogh,49.0,44.6,30,0
.goto Dun Morogh,45.7,42.2,30,0
step << tbc
    .goto Ironforge,16.5,84.1
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << wotlk
#completewith next
    .tame >>驯服一只 8 级以上的狼
step << wotlk
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step << wotlk
    .goto Dun Morogh,32.4,29.1,15 >>跟进到这里
step << wotlk
.goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
.deathskip >>一直向北跑，倒下然后死亡，然后重生
step << wotlk
.goto Wetlands,12.7,46.7,30 >>游到岸边
step << wotlk
.goto Wetlands,9.5,59.7
    .fp Menethil >>获取米奈希尔港飞行路线
    .fly Ironforge >>飞往铁炉堡
step
    .goto Ironforge,39.6,56.9
.target Senator Barin Redstone
>>对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
step
    #sticky
    .money <0.1500
    .goto Ironforge,61.5,89.2
    >>购买 9 级枪支升级
    .collect 2511,1
step
    .goto Ironforge,70.863,85.831
    >>与贝莉亚·桑德格拉尼特交谈
.target Belia Thundergranite
>>对话: |cRXP_FRIENDLY_贝莉亚·雷岩|r
    .turnin 6086 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step
#completewith next
.goto Ironforge,77.0,51.0,20 >>进入 Deeprun 有轨电车
step
    >>与火车站中间站台的侏儒交谈
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step
    .use 17117>>用你的笛子吹响四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step << wotlk
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
.target Monty
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
step << wotlk
     >>乘坐电车到另一侧然后转弯
.target Nipsy
>>对话: |cRXP_FRIENDLY_尼普希|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
step << wotlk
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << wotlk
    .goto StormwindClassic,57.0,57.6
    .trainer >>在贸易区训练弩
step << wotlk
    >>前往暴风城港口
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step << tbc
.goto Ironforge,77.0,51.0,40 >>回到铁炉堡
step << tbc
    .goto Ironforge,55.501,47.742
    .fly Menethil >>飞往米奈希尔
step << tbc
    .goto Wetlands,4.6,57.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r, 乘船前往。等待的时候制作绷带或磨刀石。
]])
