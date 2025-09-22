RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 23-25 希尔斯布莱德丘陵
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#next 25-27 南贫瘠之地/石爪山脉
step
.zone Tirisfal Glades >>前往提瑞斯法林地
.zoneskip Tirisfal Glades
step
#completewith next
.goto Tirisfal Glades,61.52,53.20,80 >>前往布瑞尔
step
.goto Tirisfal Glades,61.26,50.84
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执政官塞弗伦|r
.turnin 440 ,t The Engraved Ring
.accept 441 ,a Raleigh and the Undercity
.target Magistrate Sevren
step
#completewith HusbandsRevenge
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> 进入幽暗城
.zoneskip Undercity
step
#completewith next
.goto Undercity,66.09,20.06,35,0
.goto Undercity,64.37,23.94,35,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >> 乘坐电梯到达幽暗城
step
#label HusbandsRevenge
.goto Undercity,62.02,42.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉林夫·安迪恩|r
.turnin 441 ,t Raleigh and the Undercity
.accept 530 ,a A Husband's Revenge
.target Raleigh Andrean
step << Mage
.goto Undercity,84.18,15.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱克斯顿·莫泰姆|r
.train 3563 >> 学习|T135766:0|t[传送: 幽暗城]
.target Lexington Mortaim
step << Mage
.goto Undercity,82.78,15.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_汉娜·阿克雷|r|cRXP_BUY_. 从她那购买|r|T134419:0|t[传送符文]
.collect 17031,1 
.target Hannah Akeley
step << Priest
.goto Undercity,48.98,18.33
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾萨莱斯特|r
.turnin 5644 ,t Devouring Plague
.target Aelthalyste
step
.goto Undercity,53.74,54.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝尔杜加|r
.accept 1013 ,a The Book of Ur
.target Keeper Bel'dugur
.dungeon SFK
step
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly The Supulcher >> 飞往瑟伯切尔
.target Michael Garrett
.zoneskip Silverpine Forest
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r, |cRXP_FRIENDLY_药剂师伦弗利尔|r和|cRXP_FRIENDLY_茉拉·符文图腾|r
.accept 480 ,a The Weaver
.accept 516 ,a Beren's Peril
.goto Silverpine Forest,43.98,40.93
.accept 493 ,a Journey to Hillsbrad Foothills
.goto Silverpine Forest,42.90,40.80
.turnin 3301 ,t Mura Runetotem
.goto Silverpine Forest,43.06,41.92
.target Shadow Priest Allister
.target Apothecary Renferrel
.target Mura Runetotem
.isQuestTurnedIn 479
.group
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r, |cRXP_FRIENDLY_药剂师伦弗利尔|r和|cRXP_FRIENDLY_茉拉·符文图腾|r
.accept 516 ,a Beren's Peril
.goto Silverpine Forest,43.98,40.93
.accept 493 ,a Journey to Hillsbrad Foothills
.goto Silverpine Forest,42.90,40.80
.turnin 3301 ,t Mura Runetotem
.goto Silverpine Forest,43.06,41.92
.target Shadow Priest Allister
.target Apothecary Renferrel
.target Mura Runetotem
step << Druid
#completewith next
.goto Silverpine Forest,36.12,28.30,120 >> 沿东北方向朝大海前进
step << Druid
.goto Silverpine Forest,29.58,29.30
>> 拾取水中的|cRXP_PICK_奇怪的保险箱|r获得|T133442:0|t[水兽耐力坠饰]
>> |cRXP_WARN_用两半坠饰合成|r|cRXP_LOOT_海狮坠饰|r
.collect 15882,1,516,1 
.complete 15885,1 
step
#completewith next
.goto Silverpine Forest,46.07,85.75,100 >> 向南前往吉尔尼斯之墙
step
.goto Silverpine Forest,46.07,85.75
>> 击杀|cRXP_ENEMY_瓦德雷·莫莱|r. 拾取他的|cRXP_LOOT_手掌|r
>> |cRXP_WARN_他在各处巡逻, 把他单拉出来并注意扎堆的小怪.|r
.complete 530,1 
.unitscan Valdred Moray
step
#completewith next
.goto Silverpine Forest,60.35,74.54,40 >> 前往博伦的巢穴
step
.goto Silverpine Forest,60.38,72.43,20,0
.goto Silverpine Forest,59.73,71.73,15,0
.goto Silverpine Forest,59.52,70.66,15,0
.goto Silverpine Forest,58.71,71.34,15,0
.goto Silverpine Forest,58.26,71.99,15,0
.goto Silverpine Forest,57.65,71.61,15,0
.goto Silverpine Forest,57.30,69.96,30,0
.goto Silverpine Forest,59.73,71.73
>> 击杀|cRXP_ENEMY_鸦爪苦工|r和|cRXP_ENEMY_鸦爪守护者|r
.complete 516,1 
.complete 516,2 
.mob Ravenclaw Drudger
.mob Ravenclaw Guardian
step
#completewith next
.goto Silverpine Forest,62.10,64.42,80 >> 前往安博米尔
.isOnQuest 480
.group
step
.goto Silverpine Forest,62.10,64.42,20,0
.goto Silverpine Forest,62.91,63.95,10,0
.goto Silverpine Forest,63.22,63.45,10,0
.goto Silverpine Forest,63.40,64.26
>> 进入市政厅并击杀|cRXP_ENEMY_大法师阿塔瑞克|r. 拾取他的|cRXP_LOOT_法杖|r
>> |cRXP_WARN_市政厅内有很多小怪, 小心地把他们拉出房间.|r
.complete 480,1 
.mob Archmage Ataeric
.isOnQuest 480
.group 2
step
#completewith next
.zone Hillsbrad Foothills >> 前往希尔斯布莱德丘陵
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,20.79,47.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵哨兵莱许|r
.accept 494 ,a Time To Strike
.target Deathstalker Lesh
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> 前往塔伦米尔
step
.goto Hillsbrad Foothills,60.14,18.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fp Tarren Mill >> 激活塔伦米尔鸟点
.target Zarise
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2479 ,t Hinott's Assistance
.accept 2480 ,a Hinott's Assistance
.target Serge Hinott
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>> 等待|cRXP_FRIENDLY_瑟尔格·希诺特|r完成解药
.complete 2480,1 
step << Rogue
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2480 ,t Hinott's Assistance
.target Serge Hinott
step << Rogue
#completewith TarrenMillPickups
.cast 10723 >> 使用|T134807:0|t[希诺特的油]驱散身上的|T136230:0|t[赞吉尔之触]
step << Rogue
#completewith TarrenMillPickups
>> 制作|T132273:0|t[速效药膏]
.collect 6947,20,1067,1 
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r
.turnin 493 ,t Journey to Hillsbrad Foothills
.turnin 1065 ,t Journey to Tarren Mill
.accept 1066 ,a Blood of Innocents
.accept 496 ,a Elixir of Suffering
.accept 501 ,a Elixir of Pain
.target Apothecary Lydon
step << Shaman
.goto Hillsbrad Foothills,62.18,20.78
.use 7768 >> 在塔伦米尔中间的水井处使用|T132829:0|t[空的红色水囊]
.complete 1536,1 
step
#label TarrenMillPickups
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_通缉告示|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r和|cRXP_FRIENDLY_克鲁斯克|r
.accept 567 ,a Dangerous!
.goto Hillsbrad Foothills,62.50,19.70
.turnin 494 ,t Time To Strike
.accept 527 ,a Battle of Hillsbrad
.goto Hillsbrad Foothills,62.20,20.50
.accept 549 ,a WANTED: Syndicate Personnel
.goto Hillsbrad Foothills,62.60,20.70
.accept 498 ,a The Rescue
.goto Hillsbrad Foothills,63.20,20.70
.target High Executor Darthalia
.target Krusk
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_凯伦·苏萨隆|r
.collect 2515,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_凯伦·苏萨隆|r
.collect 3030,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
step
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥图|r|cRXP_BUY_. 购买|r|T132408:0|t[无情战斧]|cRXP_BUY_(如果你还没有并且他这有库存的话)|r
.collect 12249,1,549,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥图|r|cRXP_BUY_. 购买|r|T135640:0|t[宽刃小刀]|cRXP_BUY_(如果你还没有并且他这有库存的话)|r
.collect 12247,1,549,1 
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.31,19.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_塞多蒙·克雷尔|
.stable >> 存放你的宠物. 你很快会抓一只|cRXP_ENEMY_灰熊|r
.target Theodore Mont Claire
step << Hunter
.goto Hillsbrad Foothills,57.93,27.85,60,0
.goto Hillsbrad Foothills,58.88,32.28,60,0
.goto Hillsbrad Foothills,61.77,36.16,60,0
.goto Hillsbrad Foothills,57.93,27.85
.cast 1515 >> |cRXP_WARN_对一只|cRXP_ENEMY_灰熊|r施放|r|T132164:0|t[驯服野兽]|cRXP_WARN_来抓获它|r
.train 16829 >> |cRXP_WARN_和它一起刷怪并学习|r|T132140:0|t[爪击 (等级 3)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处获取更多关于宠物训练的信息|r
.mob Gray Bear
step << Hunter
.goto Hillsbrad Foothills,62.31,19.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_塞多蒙·克雷尔|
.stable >> 放弃|cRXP_ENEMY_灰熊|r并换回你的常规宠物
.target Theodore Mont Claire
step << Rogue
#completewith Durnholde1
.cast 8679 >> 使用|T132273:0|t[速效药膏]
.itemcount 6947,2
step
#completewith next
>> 沿途击杀|cRXP_ENEMY_熊|r和|cRXP_ENEMY_蜘蛛|r. 拾取|cRXP_LOOT_舌头|r和|cRXP_LOOT_毒液|r
>> |cFFFCDC00避开|r|cFFFF5722老灰熊|r|cFFFCDC00和|r|cFFFF5722巨型食苔蛛|r|cFFFCDC00. 它们等级比较高, 不值得击杀.|r
.complete 496,1 
.complete 496,2 
.mob Forest Moss Creeper
.mob Gray Bear
.mob Vicious Gray Bear
step
#label Durnholde1
.goto Hillsbrad Foothills,76.57,46.48,120 >> 前往敦霍尔德城堡
step
#completewith Drull
>> 击杀|cFFFF5722辛迪加盗贼|r, |cFFFF5722辛迪加卫士|r, 和|cFFFF5722辛迪加暗影法师|r.
>> 拾取|cFFFF5722辛迪加暗影法师|r掉落的|cFF00BCD4无辜者之血|r
.complete 549,1 
.complete 549,2 
.complete 1066,1 
.mob Syndicate Rogue
.mob Syndicate Watchman
.mob Syndicate Shadow Mage
step
#completewith Togthar
.goto Hillsbrad Foothills,79.55,41.85,15,0
>> 击杀|cFFFF5722狱卒埃斯顿|r. 拾取他的|cFF00BCD4铁钥匙|r
>> |cFFFCDC00你能在关押|cRXP_FRIENDLY_托格萨|r的兵营前找到他|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19
>> 击杀|cFFFF5722狱卒玛尔根|r. 拾取他的|cFF00BCD4金钥匙|r
>> |cFFFCDC00你能在|cRXP_FRIENDLY_托格萨|r前面或者塔底找到他|r
.collect 3499,1,498,2 
.mob Jailor Marlgen
step
#label Togthar
.goto Hillsbrad Foothills,79.79,39.65
>> 点击地上的|cFFDB2EEF链球|r
.complete 498,2 
step << Rogue/Hunter/Shaman
.goto Hillsbrad Foothills,80.14,38.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克瑞斯·李盖斯|r
>> |cFF0E8312购买|r|T134590:0|t[捕猎短裤]|cFF0E8312and|r|T132603:0|t[野狼护腕]|cFF0E8312如果有库存的话|r
.vendor >> 清包并修理
.target Kris Legace
.money <1.1374
.itemcount 4831,<1
.itemcount 4794,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克瑞斯·李盖斯|r
>> |cFF0E8312购买|r|T134590:0|t[捕猎短裤]|cFF0E8312如果有库存的话|r
.vendor >> 清包并修理
.target Kris Legace
.money <0.7859
.itemcount 4831,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克瑞斯·李盖斯|r
>> |cFF0E8312购买|r|T132603:0|t[野狼护腕]|cFF0E8312如果有库存的话|r
.vendor >> 清包并修理
.target Kris Legace
.money <0.3515
.itemcount 4794,<1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T134590:0|t[捕猎短裤]|cFF0E8312and|r|T132603:0|t[野狼护腕]
.use 4831
.use 4794
.itemcount 4831,1
.itemcount 4794,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T134590:0|t[捕猎短裤]
.use 4831
.itemcount 4831,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T132603:0|t[野狼护腕]
.use 4794
.itemcount 4794,1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << !Rogue !Hunter !Shaman !Druid
.goto Hillsbrad Foothills,80.14,38.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克瑞斯·李盖斯|r
.vendor >> 清包并修理
.target Kris Legace
step
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63
>> 击杀|cFFFF5722狱卒埃斯顿|r. 拾取他的|cFF00BCD4铁钥匙|r
>> |cFFFCDC00你能在关押|cRXP_FRIENDLY_托格萨|r的兵营内,或者|cRXP_FRIENDLY_德卢尔|r前面找到他|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
#label Drull
.goto Hillsbrad Foothills,75.33,41.50
>> 点击地上的|cFFDB2EEF链球|r
.complete 498,1 
step
#completewith next
>> 击杀|cRXP_ENEMY_辛迪加盗贼|r和|cRXP_ENEMY_辛迪加卫士|r
.complete 549,1 
.complete 549,2 
.mob Syndicate Rogue
.mob Syndicate Watchman
step
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>> 击杀|cRXP_ENEMY_辛迪加暗影法师|r. 拾取|cRXP_LOOT_无辜者之血|r
>> |cRXP_WARN_他们也会刷新在城堡西南边的塔楼处|r
.complete 1066,1 
.mob Syndicate Shadow Mage
step
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>> 击杀|cRXP_ENEMY_辛迪加盗贼|r和|cRXP_ENEMY_辛迪加卫士|r
>> |cRXP_WARN_他们也会刷新在城堡西南边的塔楼处|r
.complete 549,1 
.complete 549,2 
.mob Syndicate Rogue
.mob Syndicate Watchman
step
#completewith TarrenMillTurnins1
>> 在回塔伦米尔的路上沿途击杀|cRXP_ENEMY_熊|r和|cRXP_ENEMY_蜘蛛|r. 拾取|cRXP_LOOT_舌头|r和|cRXP_LOOT_毒液|r
>> |cFFFCDC00避开|r|cFFFF5722老灰熊|r|cFFFCDC00和|r|cFFFF5722巨型食苔蛛|r|cFFFCDC00. 它们等级比较高, 不值得击杀.|r
.complete 496,1 
.complete 496,2 
.mob Forest Moss Creeper
.mob Gray Bear
.mob Vicious Gray Bear
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r和|cRXP_FRIENDLY_克鲁斯克|r
.turnin 1066 ,t Blood of Innocents
.turnin 496 ,t Elixir of Suffering
.accept 499 ,a Elixir of Suffering
.goto Hillsbrad Foothills,61.50,19.20
.turnin 549 ,t WANTED: Syndicate Personnel
.goto Hillsbrad Foothills,62.20,20.50
.turnin 498 ,t The Rescue
.goto Hillsbrad Foothills,63.20,20.70
.target Apothecary Lydon
.target High Executor Darthalia
.target Krusk
.isQuestComplete 496
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r
.accept 499 ,a Elixir of Suffering
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌比|r
.turnin 499 ,t Elixir of Suffering
.target Umpi
.isQuestTurnedIn 496
step
#label TarrenMillTurnins1
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r和|cRXP_FRIENDLY_克鲁斯克|r
.turnin 1066 ,t Blood of Innocents
.goto Hillsbrad Foothills,61.50,19.20
.turnin 549 ,t WANTED: Syndicate Personnel
.goto Hillsbrad Foothills,62.20,20.50
.turnin 498 ,t The Rescue
.goto Hillsbrad Foothills,63.20,20.70
.target Apothecary Lydon
.target High Executor Darthalia
.target Krusk
step
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_凯伦·苏萨隆|r
.collect 2515,1800,527,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
.itemcount 2515,<1000
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_凯伦·苏萨隆|r
.collect 3030,1800,527,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
.itemcount 3030,<1000
step
#completewith next
>> 在去希尔斯布莱德农场的路上沿途击杀|cRXP_ENEMY_熊|r和|cRXP_ENEMY_山地狮|r. 拾取|cRXP_LOOT_舌头|r和|cRXP_LOOT_血|r
.complete 496,1 
.complete 501,1 
.mob Gray Bear
.mob Vicious Gray Bear
.mob Starving Mountain Lion
step
.goto Hillsbrad Foothills,36.02,39.19,150 >> 前往希尔斯布莱德农场
.isOnQuest 527
step
#completewith FarmerRay
>> 在田地里面和周围击杀|cRXP_ENEMY_希尔斯布莱德农夫|r和|cRXP_ENEMY_希尔斯布莱德雇农|r
.complete 527,1 
.complete 527,2 
.mob Hillsbrad Farmer
.mob Hillsbrad Farmhand
step
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.goto Hillsbrad Foothills,36.7,39.4
>> 击杀|cRXP_ENEMY_农夫盖兹|r. 他可能出现在房屋, 谷仓或者田地内
.complete 527,4 
.unitscan Farmer Getz
step
#label FarmerRay
.goto Hillsbrad Foothills,33.65,35.44,30,0
.goto Hillsbrad Foothills,32.90,35.23,10,0
.goto Hillsbrad Foothills,33.23,34.65,10,0
.goto Hillsbrad Foothills,32.69,34.77,8,0
.goto Hillsbrad Foothills,32.88,34.99,8,0
.goto Hillsbrad Foothills,33.28,34.65
>> 击杀|cRXP_ENEMY_农夫雷恩|r
>> |cRXP_WARN_他可能刷新在外面的葡萄架下或者屋子的1层或2层|r
.complete 527,3 
.unitscan Farmer Ray
step
.goto Hillsbrad Foothills,31.30,37.08,40,0
.goto Hillsbrad Foothills,33.81,40.91,40,0
.goto Hillsbrad Foothills,35.49,40.36,40,0
.goto Hillsbrad Foothills,31.30,37.08
>> 在田地里面和周围击杀|cRXP_ENEMY_希尔斯布莱德农夫|r和|cRXP_ENEMY_希尔斯布莱德雇农|r
.complete 527,1 
.complete 527,2 
.mob Hillsbrad Farmer
.mob Hillsbrad Farmhand
step
#completewith next
>> 击杀|cRXP_ENEMY_熊|r. 拾取|cRXP_LOOT_舌头|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
.loop 25,Hillsbrad Foothills,39.79,34.43,38.70,36.71,38.45,38.77,39.88,40.56,37.97,44.59,39.92,45.83,40.91,44.23,42.56,40.19,43.36,39.38,51.28,35.37,54.29,31.75,52.93,29.45,54.77,28.72
>> 完成击杀|cRXP_ENEMY_山地狮|r. 拾取|cRXP_LOOT_血|r
.complete 501,1 
.mob Starving Mountain Lion
step
#completewith TarrenMillTurnins2
>> 在回塔伦米尔的路上沿途击杀|cRXP_ENEMY_熊|r. 拾取|cRXP_LOOT_舌头|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r和|cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 496 ,t Elixir of Suffering
.accept 499 ,a Elixir of Suffering
.turnin 501 ,t Elixir of Pain
.accept 502 ,a Elixir of Pain
.goto Hillsbrad Foothills,61.50,19.20
.turnin 527 ,t Battle of Hillsbrad
.accept 528 ,a Battle of Hillsbrad
.goto Hillsbrad Foothills,62.20,20.50
.accept 546 ,a Souvenirs of Death
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestComplete 496
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r
.accept 499 ,a Elixir of Suffering
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌比|r
.turnin 499 ,t Elixir of Suffering
.target Umpi
.isQuestTurnedIn 496
step
#label TarrenMillTurnins2
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r和|cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 501 ,t Elixir of Pain
.accept 502 ,a Elixir of Pain
.goto Hillsbrad Foothills,61.50,19.20
.turnin 527 ,t Battle of Hillsbrad
.accept 528 ,a Battle of Hillsbrad
.goto Hillsbrad Foothills,62.20,20.50
.accept 546 ,a Souvenirs of Death
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
step
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step
#completewith next
>> 在去希尔斯布莱德农场的路上沿途击杀|cRXP_ENEMY_熊|r. 拾取|cRXP_LOOT_舌头|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
.goto Hillsbrad Foothills,36.02,39.19,150 >> 前往希尔斯布莱德农场
.isOnQuest 528
step
#completewith Kalaba
>> 击杀|cFFFF5722希尔斯布莱德的人类|r. 拾取|cFF00BCD4头骨|r.
>> |cFFFCDC00你不需要现在就完成此任务|r
.complete 546,1,17 
step
#completewith next
.goto Hillsbrad Foothills,32.67,35.33
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦利|r
>> |cFFFCDC00等待剧情结束, 然后击杀|r|cFFFF5722暴怒的斯坦利|r
>> |cFFFF5722暴怒的斯坦利|r|cFFFCDC00能给你一个完整任务的经验|r
.turnin 502 ,t Elixir of Pain
.timer 9,斯坦利剧情(保持警惕)
.mob Stanley
step
.line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
.goto Hillsbrad Foothills,36.54,39.44,40,0
.goto Hillsbrad Foothills,35.36,38.73,40,0
.goto Hillsbrad Foothills,33.98,38.78,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.58,38.17,40,0
.goto Hillsbrad Foothills,32.66,36.08,40,0
.goto Hillsbrad Foothills,32.92,35.25,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.65,41.12,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,30.53,40.56,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.41,43.85,40,0
.goto Hillsbrad Foothills,32.46,44.59,40,0
.goto Hillsbrad Foothills,32.29,45.13,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,36.54,39.44
>> 击杀|cFFFF5722平民维尔克斯|r
>> |cFFFCDC00他在镇子里的路上巡逻|r
.complete 567,2 
.unitscan Citizen Wilkes
.unitscan Enraged Stanley
step
.goto Hillsbrad Foothills,32.67,35.33
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦利|r
>> |cFFFCDC00等待剧情结束, 然后击杀|r|cFFFF5722暴怒的斯坦利|r
>> |cFFFF5722暴怒的斯坦利|r|cFFFCDC00能给你一个完整任务的经验|r
.turnin 502 ,t Elixir of Pain
.timer 9,斯坦利剧情(保持警惕)
.mob Stanley
step
#completewith next
>> 击杀|cFFFF5722希尔斯布莱德农民|r
.complete 528,1 
.mob Hillsbrad Peasant
step
#label Kalaba
.goto Hillsbrad Foothills,36.00,46.50
>> 击杀|cFFFF5722农夫卡拉巴|r
.complete 567,4 
.mob Farmer Kalaba
step
.loop 25,Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
>> 击杀|cFFFF5722希尔斯布莱德农民|r
.complete 528,1 
.mob Hillsbrad Peasant
step
.loop 25,Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
>> 完成击杀|cRXP_ENEMY_熊|r. 拾取|cRXP_LOOT_舌头|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
step
.loop 25,Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
>> 完成击杀|cFFFF5722森林食苔蛛|r和|cFFFF5722巨型食苔蛛|r. 拾取|cFF00BCD4毒液|r
.complete 496,2 
.mob Forest Moss Creeper
.mob Giant Moss Creeper
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r和|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 496 ,t Elixir of Suffering
.accept 499 ,a Elixir of Suffering
.accept 1067 ,a 回到Thunder Bluff
.goto Hillsbrad Foothills,61.50,19.20
.turnin 528 ,t Battle of Hillsbrad
.goto Hillsbrad Foothills,62.20,20.50
.target Apothecary Lydon
.target High Executor Darthalia
.isQuestComplete 496
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r, |cRXP_FRIENDLY_高阶执行官达萨利亚|r
.accept 499 ,a Elixir of Suffering
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌比|r
.turnin 499 ,t Elixir of Suffering
.target Umpi
.isQuestTurnedIn 496
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r和|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.accept 1067 ,a 回到Thunder Bluff
.goto Hillsbrad Foothills,61.50,19.20
.turnin 528 ,t Battle of Hillsbrad
.goto Hillsbrad Foothills,62.20,20.50
.target Apothecary Lydon
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_凯伦·苏萨隆|r
.collect 2515,1800,516,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_凯伦·苏萨隆|r
.collect 3030,1800,516,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥图|r|cRXP_BUY_. 购买|r|T132408:0|t[无情战斧]|cRXP_BUY_(如果你还没有并且他这有库存的话)|r
.collect 12249,1,516,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥图|r|cRXP_BUY_. 购买|r|T135640:0|t[宽刃小刀]|cRXP_BUY_(如果你还没有并且他这有库存的话)|r
.collect 12247,1,516,1 
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step
#completewith BerensPerilTurnin
.goto Hillsbrad Foothills,60.14,18.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fly The Supulcher >> 飞往瑟伯切尔
.target Zarise
.zoneskip Silverpine Forest
step
#sticky
#completewith EnterSFK
.subzone 310 >> 现在你可以开始寻找前往影牙城堡的副本队伍了
.dungeon SFK
step
.goto Silverpine Forest,43.98,40.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
.turnin 480 ,t The Weaver
.turnin 516 ,t Beren's Peril
.target Shadow Priest Allister
.isQuestComplete 480
.group
step
#label BerensPerilTurnin
.goto Silverpine Forest,43.98,40.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
.turnin 516 ,t Beren's Peril
.target Shadow Priest Allister
step
.goto Silverpine Forest,43.43,40.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官哈德瑞克|r
.accept 1098 ,a Deathstalkers in Shadowfang
.target High Executor Hadrec
.dungeon SFK
step
.goto Silverpine Forest,44.22,39.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·织曦者|r
.accept 1014 ,a Arugal Must Die
.target Dalar Dawnweaver
.dungeon SFK
step
#label EnterSFK
.goto Silverpine Forest,44.87,67.86
.zone 310 >> 进入影牙城堡副本并把镜头拉近
.dungeon SFK
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵哨兵文森特|r
.turnin 1098 ,t Deathstalkers in Shadowfang
.target Deathstalker Vincent
.dungeon SFK
.isOnQuest 1098
step
>> 在|cFFFF5722吞噬者芬鲁斯|r房间内的书架上拾取|cFFDB2EEF乌尔之书|r
.complete 1013,1 
.dungeon SFK
.isOnQuest 1013
step
>> 击杀|cFFFF5722大法师阿鲁高|r. 拾取他的|cFF00BCD4头|r
.complete 1014,1 
.mob Archmage Arugal
.dungeon SFK
.isOnQuest 1014
step
#completewith FlytoUC
.goto Silverpine Forest,45.51,41.26,100 >> 前往瑟伯切尔
.dungeon SFK
step
.goto Silverpine Forest,43.43,40.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官哈德瑞克|r
.turnin 1098 ,t Deathstalkers in Shadowfang
.target High Executor Hadrec
.dungeon SFK
.isQuestComplete 1098
step
.goto Silverpine Forest,44.22,39.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·织曦者|r
.turnin 1014 ,t Arugal Must Die
.target Dalar Dawnweaver
.dungeon SFK
.isQuestComplete 1014
step << Mage
#completewith HusbandsRevenge
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
.itemcount 17031,1
step
#label FlytoUC
#completewith next
.goto Silverpine Forest,45.62,42.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛斯·拉佐克|r
.fly Undercity >> 飞往幽暗城
.target Karos Razok
.zoneskip Undercity
step
#label HusbandsRevenge
.goto Undercity,62.02,42.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉林夫·安迪恩|r
.turnin 530 ,t A Husband's Revenge
.target Raleigh Andrean
step
.goto Undercity,65.99,44.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·蒙泰古|r
.bankdeposit 3692 >> 存放|T133730:0|t[|cFF00BCD4希尔斯布莱德人类颅骨|r]
.bankwithdraw 5075 >> 取出|T134128:0|t[血岩碎片]
.bankwithdraw 868 >> 取出|T132938:0|t[掘地铲]
.target William Montague
step
.goto Undercity,53.74,54.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 1013 ,t The Book of Ur
.target Keeper Bel'dugur
.dungeon SFK
.isQuestComplete 1013
step
.goto Undercity,48.80,69.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.accept 1109 ,a Going, Going, Guano!
.target Master Apothecary Faranell
.dungeon RFK
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 5308 >> 学习职业技能
.target Angela Curthas
.xp <24,1
.xp >26,1
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 6178 >> 学习职业技能
.target Angela Curthas
.xp <26,1
step << Rogue
.goto Undercity,75.19,51.17
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_艾泽基尔·格瑞乌斯|r|cRXP_BUY_. 购买|r|T133849:0|t[蚀骨灰]|cRXP_BUY_和|r|T132793:0|t[空瓶]
.collect 2928,40,1067,1 
.collect 3371,40,1067,1 
.target Ezekiel Graves
step << Rogue
#completewith ThunderBluffHS
>> 制作|T132273:0|t[速效药膏]
.collect 6947,40,1067,1 
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 6762 >> 学习职业技能
.target Carolyn Ward
.xp <24,1
.xp >26,1
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 1833 >> 学习职业技能
.target Carolyn Ward
.xp <26,1
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 6223 >> 学习职业技能
.target Richard Kerwin
.xp <24,1
.xp >26,1
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 1456 >> 学习职业技能
.target Richard Kerwin
.xp <26,1
step << Druid
#completewith next
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,56.21,30.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德迪利特·星焰|r
.turnin 30 ,t Trial of the Sea lion
.accept 31 ,a Aquatic Form
.target Dendrite Starblaze
step
#label ThunderBluffHS
.hs >> 炉石回雷霆崖
.use 6948
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde-
#name 25-27 南贫瘠之地/石爪山脉
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#next 27-29 灰谷
step
.abandon 480 ,ab Weaver
.isOnQuest 480
step
.abandon 1013 ,ab Book of Ur
.isOnQuest 1013
.dungeon SFK
step
.abandon 1014 ,ab Arugal Must Die
.isOnQuest 1014
.dungeon SFK
step
.abandon 1098 ,ab Deathstalkers in Shadowfang
.isOnQuest 1098
.dungeon SFK
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_德尔贡·狂暴图腾|r|cRXP_BUY_. 购买|r|T132408:0|t[无情战斧]|cRXP_BUY_(如果你在希尔斯布莱德没买到并且有库存的话)|r
.collect 12249,1,868,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Hunter
#completewith HunterTraining26
.goto Thunder Bluff,61.31,78.25,80 >> 前往猎人高地
step << Hunter
.goto Thunder Bluff,59.13,86.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14262 >> 学习职业技能
.target Urek Thunderhorn
.xp <24,1
.xp >26,1
step << Hunter
.goto Thunder Bluff,59.13,86.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 3045 >> 学习职业技能
.target Urek Thunderhorn
.xp <26,1
step << Hunter
#label HunterTraining26
.goto Thunder Bluff,54.07,84.02
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24558 >> 学习宠物技能
.target Hesuwa Thunderhorn
step << Druid
#completewith next
.goto Thunder Bluff,69.88,30.90,80 >> 前往长者高地
step << Druid
.goto Thunder Bluff,76.48,27.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.trainer >> 学习职业技能
.turnin 31 ,t Aquatic Form
.target Turak Runetotem
step << Hunter
.goto Thunder Bluff,46.98,45.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r|cRXP_BUY_. 购买|r|T135495:0|t[Sturdy Recurve Bow]|cRXP_BUY_如果有库存的话|r
.collect 11306,1,868,1 
.money <1.9467
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
step
#completewith next
.goto Thunder Bluff,28.14,32.97,40,0
.goto Thunder Bluff,28.51,28.95,10 >> 前往灵魂高地并进入预见之池
step
.goto Thunder Bluff,22.90,21.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师札玛|r
.turnin 1067 ,t 回到Thunder Bluff
.accept 1086 ,a The Flying Machine Airport
.target Apothecary Zamah
step << Priest
.goto Thunder Bluff,25.31,15.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
.train 3747 >> 学习职业技能
.target Miles Welsh
.xp <24,1
.xp >26,1
step << Priest
.goto Thunder Bluff,25.31,15.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
.train 992 >> 学习职业技能
.target Miles Welsh
.xp <26,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
.train 8400 >> 学习职业技能
.target Archmage Shymm
.xp <24,1
.xp >26,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
.train 120 >> 学习职业技能
.target Archmage Shymm
.xp <26,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 905 >> 学习职业技能
.target Tigor Skychaser
.xp <24,1
.xp >26,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 8190 >> 学习职业技能
.target Tigor Skychaser
.xp <26,1
step
#completewith next
+制作|T133688:0|t[绒线绷带]直到你的急救技能达到115或更高
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_潘德·缚石|r
.train 3278 >> 学习|T133687:0|t[厚绒线绷带]
.target Pand Stonebinder
.skill firstaid,<1,1
step
#completewith FlytoCampT2
,ab A Recipe for Death
.abandon 264 ,ab A Recipe for Death
.isOnQuest 264
step
#completewith FlytoCampT2
,ab Mura Runetotem
.abandon 3301 ,ab Mura Runetotem
.isOnQuest 264
step
.goto Thunder Bluff,54.96,51.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赞金·石蹄|r
.accept 1195 ,a The Sacred Flame
.target Zangen Stonehoof
step
#label FlytoCampT2
#completewith next
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,44.55,59.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎牙|r
.accept 879 ,a Betrayal from Within
.target Mangletooth
step
#completewith CampTHS2
>> |cRXP_WARN_使用你剩下的|r|T134128:0|t[血岩碎片]|cRXP_WARN_换取|r|T136104:0|t[野猪之皮]|cRXP_WARN_和其他Buff|r << !Mage !Druid
>> |cRXP_WARN_使用你剩下的|r|T134128:0|t[血岩碎片]|cRXP_WARN_换取Buff|r << Mage/Druid
step
.goto The Barrens,44.85,59.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.accept 6382 ,a The Ashenvale Hunt
.target Jorn Skyseer
step << Warrior
.goto The Barrens,44.67,59.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁迦·狂暴图腾|r
.turnin 1823 ,t Speak with Ruga
.accept 1824 ,a Trial at the Field of Giants
.target Ruga Ragetotem
step
#label CampTHS2
.goto The Barrens,45.58,59.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
.home >> 绑定炉石到陶拉祖营地
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Byula
step
.goto The Barrens,44.63,62.71,80,0
.goto The Barrens,45.78,63.09,80,0
.goto The Barrens,49.57,59.36,80,0
>> 在此区域寻找并击杀|cRXP_ENEMY_奥瓦坦卡|r(蓝色雷霆蜥蜴). 拾取|T133723:0|t[|cFF00BCD4奥瓦坦卡的尾刺|r]. 使用并接受任务
>> |cFFFCDC00如果你找不到他就跳过这个任务|r
.collect 5102,1,884 
.accept 884 ,a Owatanka
.use 5102
.unitscan Owatanka
step << Warrior
.loop 25,The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
>> 击杀|cFFFF5722异种保卫者|r, |cFFFF5722异种群居蝎|r, |cFFFF5722异种爬行者|r和|cFFFF5722异种幼蝎|r. 拾取|T133027:0|t[颤抖的触角]
>> |cFFFCDC00注意: [颤抖的触角]有效期持续15分钟, 在做这个任务期间不要AFK或者登出游戏|r
.complete 1824,1 
.mob Silithid Protector
.mob Silithid Swarmer
.mob Silithid Creeper
.mob Silithid Grub
step << Warrior
.goto The Barrens,44.67,59.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁迦·狂暴图腾|r
>> |cRXP_WARN_跳过后续任务|r
.turnin 1824 ,t Trial at the Field of Giants
.target Ruga Ragetotem
step
#completewith next
>> 击杀|cFFFF5722异种收割者|r. 拾取|T134321:0|t[|cFF00BCD4收割者的头|r]. 使用并接受任务
>> |cFFFCDC00如果你找不到他就跳过这个任务|r
.collect 5138,1,897,1 
.accept 897 ,a The Harvester
.use 5138
.unitscan Silithid Harvester
step
#label SilithidEggs
.goto The Barrens,45.04,69.85,60,0
.goto The Barrens,42.91,69.86,60,0
.goto The Barrens,42.97,71.11,60,0
.goto The Barrens,45.36,72.36,60,0
.goto The Barrens,47.40,70.11,60,0
.goto The Barrens,48.40,70.08,60,0
.goto The Barrens,42.91,69.86
>> 拾取|cRXP_PICK_异种蝎土丘|r获取|cRXP_LOOT_异种蝎卵|r
.complete 868,1 
step
#completewith Gann1
>> 击杀|cRXP_ENEMY_雷鳞蜥蜴|r. 拾取|cFF00BCD4闪电腺|r
>> 击杀|cRXP_ENEMY_巨型雷鹰|r. 拾取|cFF00BCD4雷鹰的唾液腺|r
>> 击杀|cRXP_ENEMY_科多兽|r. 拾取|cFF00BCD4科多兽的肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step << Shaman
#completewith next
.goto The Barrens,44.76,74.79,45,0
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >> 前往|cRXP_FRIENDLY_布瑞恩|r处
step << Shaman
.goto The Barrens,43.42,77.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞恩|r
.turnin 1536 ,t Call of Water
.accept 1534 ,a Call of Water
.target Brine
step
#completewith next
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#label Gann1
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加恩·石塔|r
.accept 843 ,a Gann's Reclamation
.target Gann Stonespire
step
#completewith Lok
>> 击杀|cFFFF5722钢鬃捕猎者|r和|cFFFF5722钢鬃探路者|r. 拾取|T135640:0|t[|cFF00BCD4钢鬃背刺匕首|r]
>> 击杀|cFFFF5722钢鬃先知|r. 拾取|T135139:0|t[|cFF00BCD4烧焦的钢鬃魔杖|r]
>> 击杀|cFFFF5722钢鬃战争狂热者|r. 拾取|T134955:0|t[|cFF00BCD4钢鬃大盾|r]
>> |cFFFCDC00|cFFFF5722钢鬃捕猎者|r可以潜行|r
.complete 893,1 
.complete 893,2 
.complete 893,3 
.mob Razormane Stalker
.mob Razormane Pathfinder
.mob Razormane Seer
.mob Razormane Warfrenzy
step
#completewith next
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,44.06,80.02,45,0
.goto The Barrens,43.91,80.46,45,0
.goto The Barrens,44.03,80.38,45,0
.goto The Barrens,44.16,80.46,45,0
.goto The Barrens,44.31,80.79,45,0
.goto The Barrens,44.66,80.49,45,0
.goto The Barrens,45.10,80.30,45,0
.goto The Barrens,45.52,80.47,45,0
.goto The Barrens,45.46,80.91,45,0
.goto The Barrens,44.83,80.95,45,0
.goto The Barrens,44.15,81.44,45,0
.goto The Barrens,43.79,81.40,45,0
.goto The Barrens,43.63,80.97,45,0
.goto The Barrens,43.49,80.48,45,0
.goto The Barrens,43.24,80.49,45,0
.goto The Barrens,42.82,80.23,45,0
.goto The Barrens,42.65,79.87,45,0
.goto The Barrens,43.07,78.98,45,0
.goto The Barrens,43.48,78.95,45,0
.goto The Barrens,43.66,79.12,45,0
.goto The Barrens,43.80,79.46,45,0
.goto The Barrens,44.43,78.71,45,0
.goto The Barrens,44.89,78.87,45,0
.goto The Barrens,45.12,79.20,45,0
.goto The Barrens,45.05,79.75,45,0
.goto The Barrens,44.83,79.87,45,0
.goto The Barrens,44.37,79.85
.loop 25,The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
>> 击杀|cFFFF5722卡兹|r. 拾取|cFF00BCD4卡兹的颅骨|r
>> |cFFFF5722卡兹|r在附近小范围巡逻
.complete 879,1 
.unitscan Kuz
step
#completewith next
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#label Lok
.goto The Barrens,40.31,80.70,20,0
.goto The Barrens,40.14,80.56
>> 击杀|cFFFF5722洛克·奥克班恩|r. 拾取|cFF00BCD4洛克的颅骨|r
.complete 879,3 
.mob Lok Orcbane
step
#completewith WandShield
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#completewith next
>> 击杀|cFFFF5722钢鬃捕猎者|r和|cFFFF5722钢鬃探路者|r. 拾取|T135640:0|t[|cFF00BCD4钢鬃背刺匕首|r]
>> |cFFFCDC00The |cFFFF5722钢鬃捕猎者|r可以潜行|r
.complete 893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#label WandShield
.loop 25,The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
>> 击杀|cFFFF5722钢鬃先知|r. 拾取|T135139:0|t[|cFF00BCD4烧焦的钢鬃魔杖|r]
>> 击杀|cFFFF5722钢鬃战争狂热者|r. 拾取|T134955:0|t[|cFF00BCD4钢鬃大盾|r]
.complete 893,2 
.complete 893,3 
.mob Razormane Seer
.mob Razormane Warfrenzy
step
.loop 25,The Barrens,44.07,83.34,43.54,83.14,43.60,83.69,44.07,83.34
>> 击杀|cFFFF5722纳克|r. 拾取|cFF00BCD4纳克的颅骨|r
.complete 879,2 
.mob Nak
step
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89
>> 击杀|cFFFF5722钢鬃捕猎者|r和|cFFFF5722钢鬃探路者|r. 拾取|T135640:0|t[|cFF00BCD4钢鬃背刺匕首|r]
>> |cFFFCDC00The |cFFFF5722钢鬃捕猎者|r可以潜行|r
.complete 893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#completewith next
>> 击杀|cFFFF5722巴尔丹挖掘者|r和|cFFFF5722巴尔丹工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
step
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19
>> 击杀|cFFFF5722勘察员卡兹戈姆|r. 拾取|cFF00BCD4卡兹戈姆的日记|r
.complete 843,3 
.mob Prospector Khazgorm
step
.loop 25,The Barrens,47.22,84.98,47.28,85.74,47.60,85.66,48.43,86.34,48.03,85.46,47.94,84.86,47.37,84.01,46.92,84.22,46.99,85.82,47.22,84.98
>> 击杀|cFFFF5722巴尔丹挖掘者|r和|cFFFF5722巴尔丹工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
step
#completewith BaelModan
>> 击杀|cRXP_ENEMY_雷鳞蜥蜴|r. 拾取|cFF00BCD4闪电腺|r
>> 击杀|cRXP_ENEMY_巨型雷鹰|r. 拾取|cFF00BCD4雷鹰的唾液腺|r
>> 击杀|cRXP_ENEMY_科多兽|r. 拾取|cFF00BCD4科多兽的肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加恩·石塔|r
.turnin 843 ,t Gann's Reclamation
.accept 846 ,a Revenge of Gann
.target Gann Stonespire
step
#completewith next
.goto The Barrens,47.21,79.35,45,0
.goto The Barrens,47.22,79.72,45,0
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step
#label BaelModan
.goto The Barrens,48.63,84.49,110 >> 前往巴尔莫丹
.isOnQuest 846
step
.loop 20,The Barrens,48.96,84.36,48.88,84.02,49.28,83.76,49.22,84.21,49.47,84.41,49.09,84.67,48.96,84.36
>> 击杀|cFFFF5722巴尔莫丹矮人|r. 拾取|cFF00BCD4硝化甘油|r, |cFF00BCD4木浆|r, 和|cFF00BCD4硝酸钠|r
>> |cRXP_WARN_小心!|r|cRXP_ENEMY_巴尔丹军官|r|cRXP_WARN_可以施放增加50%招架几率的技能|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
step
#completewith WashtethePawne
>> 击杀|cRXP_ENEMY_雷鳞蜥蜴|r. 拾取|cFF00BCD4闪电腺|r
>> 击杀|cRXP_ENEMY_巨型雷鹰|r. 拾取|cFF00BCD4雷鹰的唾液腺|r
>> 击杀|cRXP_ENEMY_科多兽|r. 拾取|cFF00BCD4科多兽的肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加恩·石塔|r
.turnin 846 ,t Revenge of Gann
.accept 849 ,a Revenge of Gann
.target Gann Stonespire
step
.goto The Barrens,46.97,85.63
>> 在平台顶部点击|cFFDB2EEF巴尔莫丹飞行器|r
>> |cFFFCDC00此物品有50码施放范围|r
.complete 849,1 
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加恩·石塔|r
.turnin 849 ,t Revenge of Gann
.target Gann Stonespire
step
#label WashtethePawne
.loop 25,The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
>> 击杀|cFFFF5722瓦希塔帕恩|r. 拾取|T135992:0|t[|cFF00BCD4瓦希塔帕恩的羽毛|r]. 使用并接受任务
.collect 5103,1,885 
.accept 885 ,a Washte Pawne
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,45.35,77.51,60,0
.goto The Barrens,45.42,76.23,60,0
.goto The Barrens,45.05,75.25,60,0
.goto The Barrens,44.70,74.31,60,0
.goto The Barrens,47.28,74.73,60,0
.goto The Barrens,47.89,75.80,60,0
.goto The Barrens,47.70,80.48
>> 击杀|cRXP_ENEMY_雷鳞蜥蜴|r. 拾取|cFF00BCD4闪电腺|r
>> 击杀|cRXP_ENEMY_巨型雷鹰|r. 拾取|cFF00BCD4雷鹰的唾液腺|r
>> 击杀|cRXP_ENEMY_科多兽|r. 拾取|cFF00BCD4科多兽的肝脏|r
.complete 822,1 
.complete 822,2 
.complete 822,3 
.mob Stormhide
.mob Greater Thunderhawk
.mob Barrens Kodo
.mob Greater Barrens Kodo
.mob Wooly Kodo
step
#completewith WeaponsofChoiceTurnin
.hs >> 炉石回陶拉祖营地
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto The Barrens,45.13,58.47,120 >> 回到陶拉祖营地. 你也可以刷怪直到|T134414:0|t[炉石]CD好
.cooldown item,6948,<0
step
#label WeaponsofChoiceTurnin
.goto The Barrens,45.10,57.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 893 ,a Weapons of Choice
.turnin 893 ,t Weapons of Choice
.target Tatternack Steelforge
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 884 ,t Owatanka
.turnin 885 ,t Washte Pawne
.turnin 897 ,t The Harvester
.isOnQuest 884
.isOnQuest 885
.isOnQuest 897
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 884 ,t Owatanka
.turnin 885 ,t Washte Pawne
.isOnQuest 884
.isOnQuest 885
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 884 ,t Owatanka
.turnin 897 ,t The Harvester
.isOnQuest 884
.isOnQuest 897
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 885 ,t Washte Pawne
.turnin 897 ,t The Harvester
.isOnQuest 885
.isOnQuest 897
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 884 ,t Owatanka
.isOnQuest 884
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 885 ,t Washte Pawne
.isOnQuest 885
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔恩·星眼|r
.turnin 897 ,t The Harvester
.isOnQuest 897
.target Jorn Skyseer
step
.goto The Barrens,44.54,59.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎牙|r
.turnin 879 ,t Betrayal from Within
.accept 906 ,a Betrayal from Within
.target Mangletooth
step
#completewith next
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Crossroads >> 飞往十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.50,30.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索克|r
.turnin 906 ,t Betrayal from Within
.target Thork
step
#completewith next
+|cRXP_WARN_如果你有超过15个|cRXP_LOOT_异种蝎的卵|r|cRXP_WARN_, 就丢掉多余的|r
step
.goto The Barrens,51.07,29.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科兰|r
.turnin 868 ,t Egg Hunt
.target Korran
step
.goto The Barrens,51.99,29.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >> 绑定炉石到十字路口
.target Innkeeper Boorand Plainswind
step << Hunter
#completewith next
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >> 飞往奥格瑞玛
.zoneskip Orgrimmar
.target Devrak
step << Hunter
.goto Orgrimmar,48.12,80.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特拉克根|r
.collect 3030,1800,874,1 << Hunter 
.target Trak'gend

step << Hunter
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >> 飞往棘齿城
.target Doras
step << !Hunter
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >> 飞往棘齿城
.zoneskip Orgrimmar
.target Devrak
step
.goto The Barrens,62.370,37.615
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.accept 1221 ,a 蓝叶薯
.target Mebok Mizzyrix
.dungeon RFK
step
>> 拾取|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r旁边的|cRXP_LOOT_地鼠指挥棒|r, |cRXP_LOOT_地鼠训练手册|r和|cRXP_LOOT_开孔的箱子|r
.collect 6684,1,1221,1 
.goto The Barrens,62.340,37.607
.collect 5897,1,1221,1 
.goto The Barrens,62.332,37.623
.collect 5880,1,1221,1 
.goto The Barrens,62.323,37.620
.dungeon RFK
step
.goto The Barrens,62.27,38.39
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_酿酒师德罗恩|r
.turnin 822 ,t Chen's Empty Keg
.target Brewmaster Drohn
.isQuestComplete 822
step
.goto The Barrens,65.84,43.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛伦·星眼|r
.turnin 874 ,t Mahren Skyseer
.accept 873 ,a Isha Awak
.target Mahren Skyseer
step
.goto The Barrens,65.51,47.32,70,0
.goto The Barrens,64.21,50.70,70,0
.goto The Barrens,63.63,53.85,70,0
.loop 50,The Barrens,65.51,47.32,64.21,50.70,63.63,53.85
>> 击杀|cFFFF5722依沙瓦克|r. 拾取|cFF00BCD4依沙瓦克的心脏|r
.complete 873,1 
.unitscan Isha Awak
step
.goto The Barrens,65.84,43.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛伦·星眼|r
.turnin 873 ,t Isha Awak
.target Mahren Skyseer
step
#completewith CenariusPickup
.goto The Barrens,63.09,37.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Sun Rock Retreat >> 飞往烈日石居
.zoneskip Stonetalon Mountains
.target Bragok
.cooldown item,6948,<0,1
step
#completewith CenariusPickup
.hs >> 炉石回十字路口
.goto The Barrens,51.99,29.89,30 >> 抵达十字路口
.use 6948
.cooldown item,6948,>0,1
step
#completewith CenariusPickup
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Sun Rock Retreat >> 飞往烈日石居
.zoneskip Stonetalon Mountains
.target Devrak
.cooldown item,6948,>55m,1
step
#label CenariusPickup
.goto Stonetalon Mountains,45.90,60.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱林·火拳|r
.accept 1087 ,a Cenarius' Legacy
.target Braelyn Firehand
step
.goto Stonetalon Mountains,47.30,61.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_缚地者马格兰|r
.accept 5881 ,a Calling in the Reserves
.accept 6282 ,a Harpies Threaten
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.40,58.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔姆拉·荒原|r
.accept 6301 ,a Cycle of Rebirth
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.47,62.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板杰卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Jayka
step
.goto Stonetalon Mountains,47.61,61.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_在旅店2楼|r|cRXP_BUY_对话|r|cRXP_FRIENDLY_基达|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_如果有库存的话|r
.target Jeeda
step
#completewith next
.goto Stonetalon Mountains,49.38,61.68,30,0
.goto Stonetalon Mountains,48.92,62.71,30,0
.goto Stonetalon Mountains,48.11,63.88,30,0
.goto Stonetalon Mountains,47.21,64.05,30 >> 沿着向右的路爬上去
step
.goto Stonetalon Mountains,47.36,64.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_苏纳曼|r
.accept 6393 ,a Elemental War
.target Tsunaman
step
.goto Stonetalon Mountains,59.08,75.70
>> 点击|cRXP_FRIENDLY_通缉告示|r
.accept 6284 ,a Arachnophobia
step
.goto Stonetalon Mountains,51.89,73.81,50,0
.goto Stonetalon Mountains,52.46,71.67
>> 击杀|cRXP_ENEMY_贝瑟莱斯|r. 拾取她的|cRXP_LOOT_牙|r
>> |cRXP_WARN_再击杀她前清空场地. 注意她能网住你10s!|r
.complete 6284,1 
.unitscan Besseleth
step
#completewith next
.goto Stonetalon Mountains,58.99,62.60,100 >> 前往狂风峭壁
step
.goto Stonetalon Mountains,58.99,62.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
.accept 1096 ,a Gerenzo Wrenchwhistle
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
>> 击杀|cRXP_ENEMY_XT:9|r. 它在河的南岸巡逻
.complete 1068,2 
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
>> 击杀|cRXP_ENEMY_XT:4|r. 它在河的北岸巡逻
.complete 1068,1 
.unitscan XT:4
step
.goto Stonetalon Mountains,66.47,45.45
.cast 6620 >> 前往平台顶部并投放|T132620:0|t[剧毒粮草]
.use 5638
.complete 1086,1 >> 放置剧毒粮草
.isOnQuest 1086
step
#completewith next
.goto Stonetalon Mountains,68.81,39.61,50,0
.goto Stonetalon Mountains,67.83,37.77,50,0
.goto Stonetalon Mountains,66.58,37.71,50,0
.goto Stonetalon Mountains,64.56,38.03,50 >> 爬上山并进入平台
step
.goto Stonetalon Mountains,64.48,40.24,20,0
.goto Stonetalon Mountains,63.45,39.78,20,0
.goto Stonetalon Mountains,62.75,40.31
>> 击杀|cFFFF5722格雷苏|r. 拾取他的|cFF00BCD4机械臂|r
>> |cFFFCDC00小心!|r|cFFFF5722风险投资公司机械师|r|cFFFCDC00能召唤|r|cFFFF5722收割傀儡|r|cFFFCDC00. 一只只的击杀他们|r
.complete 1096,1 
.unitscan Gerenzo Wrenchwhistle
step
.goto Stonetalon Mountains,62.70,40.17
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尼兹克|r|cRXP_BUY_. 购买任何可用的装备升级|r
.vendor
.target Nizzik
step
.goto Stonetalon Mountains,58.99,62.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
.turnin 1096 ,t Gerenzo Wrenchwhistle
.target Ziz Fizziks
step
.goto Stonetalon Mountains,47.20,61.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_缚地者马格兰|r
.turnin 6284 ,t Arachnophobia
.target Maggran Earthbinder
.isQuestComplete 6284
step
#completewith ReachthePeak
.goto Stonetalon Mountains,49.73,45.10,50,0
.goto Stonetalon Mountains,48.88,43.83,50,0
.goto Stonetalon Mountains,46.35,39.37,50,0
.goto Stonetalon Mountains,46.85,31.87,50,0
>> 沿途拾取所有看到的|cFF00BCD4盖亚之种|r
.complete 6301,1 
step
#completewith next
.goto Stonetalon Mountains,46.64,27.48,80,0
.goto Stonetalon Mountains,45.59,23.87,80,0
.goto Stonetalon Mountains,43.79,16.95,80,0
>> 击杀所有前往石爪峰路上的|cFFFF5722巨角鹿|r. 拾取|cFF00BCD4眼睛|r
.complete 1058,3 
.mob Antlered Courser
step
#label ReachthePeak
.goto Stonetalon Mountains,41.61,16.02,40 >> 抵达石爪峰
step
#completewith Whiskers
>> 击杀|cFFFF5722塞纳留斯的儿子|r, |cFFFF5722塞纳留斯的女儿|r和|cFFFF5722塞纳里奥植物学家|r
.complete 1087,1 
.complete 1087,2 
.complete 1087,3 
.mob Son of Cenarius
.mob Daughter of Cenarius
.mob Cenarion Botanist
step
#completewith Whiskers
>> 击杀|cFFFF5722腐蚀兽|r. 拾取|cFF00BCD4石爪苔液|r
>> |cFFFCDC00只有常规的|r|cFFFF5722腐蚀兽|r|cFFFCDC00掉落.|r|cFFFF5722腐蚀性的腐蚀兽|r|cFFFCDC00不会掉落|r
.complete 1058,1 
.mob Sap Beast
step
#completewith next
>> 击杀一只|cFFFF5722灵龙|r. 拾取它的|cFF00BCD4鳞片|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label Whiskers
.goto Stonetalon Mountains,31.75,12.58,50,0
.goto Stonetalon Mountains,30.87,9.47,50,0
.goto Stonetalon Mountains,32.40,9.97,50,0
.goto Stonetalon Mountains,33.33,8.16,50,0
.goto Stonetalon Mountains,34.68,7.89,50,0
.goto Stonetalon Mountains,32.24,10.76
>> 击杀|cFFFF5722夜行虎|r. 拾取|cFF00BCD4虎须|r
.complete 1058,2 
.mob Twilight Runner
step
#completewith CenariusLegacy
>> 击杀|cFFFF5722腐蚀兽|r. 拾取|cFF00BCD4石爪苔液|r
>> |cFFFCDC00只有常规的|r|cFFFF5722腐蚀兽|r|cFFFCDC00掉落.|r|cFFFF5722腐蚀性的腐蚀兽|r|cFFFCDC00不会掉落|r
.complete 1058,1 
.mob Sap Beast
step
#completewith next
>> 击杀一只|cFFFF5722灵龙|r. 拾取|cFF00BCD4鳞片|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label CenariusLegacy
.loop 25,Stonetalon Mountains,34.43,12.65,35.49,15.33,36.99,15.29,37.71,14.81,38.17,12.77,37.95,11.21,36.25,10.27,35.41,11.13
>> 击杀|cFFFF5722塞纳留斯之子|r, |cFFFF5722塞纳留斯的女儿|r和|cFFFF5722塞纳留斯植物学家|r
.complete 1087,1 
.complete 1087,2 
.complete 1087,3 
.mob Son of Cenarius
.mob Daughter of Cenarius
.mob Cenarion Botanist
step
#completewith next
>> 击杀|cFFFF5722腐蚀兽|r. 拾取|cFF00BCD4石爪苔液|r
>> |cFFFCDC00只有常规的|r|cFFFF5722腐蚀兽|r|cFFFCDC00掉落.|r|cFFFF5722腐蚀性的腐蚀兽|r|cFFFCDC00不会掉落|r
.complete 1058,1 
.mob Sap Beast
step
.goto Stonetalon Mountains,33.96,11.82,60,0
.goto Stonetalon Mountains,36.64,18.76,60,0
.goto Stonetalon Mountains,33.96,11.82
>> 击杀一只|cFFFF5722灵龙|r. 拾取|cFF00BCD4鳞片|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
.goto Stonetalon Mountains,33.00,16.21,50,0
.goto Stonetalon Mountains,33.61,20.27,50,0
.goto Stonetalon Mountains,35.78,19.13,50,0
.goto Stonetalon Mountains,37.57,20.33,50,0
.goto Stonetalon Mountains,38.62,18.04,50,0
.goto Stonetalon Mountains,39.80,17.10,50,0
.goto Stonetalon Mountains,33.61,20.27
>> 击杀|cFFFF5722腐蚀兽|r. 拾取|cFF00BCD4石爪苔液|r
>> |cFFFCDC00只有常规的|r|cFFFF5722腐蚀兽|r|cFFFCDC00掉落.|r|cFFFF5722腐蚀性的腐蚀兽|r|cFFFCDC00不会掉落|r
.complete 1058,1 
.mob Sap Beast
step
.goto Stonetalon Mountains,44.51,20.92,50,0
.goto Stonetalon Mountains,44.45,23.59,50,0
.goto Stonetalon Mountains,46.26,26.72,50,0
.goto Stonetalon Mountains,44.51,20.92
>> 在你返回湖的路上完成击杀|cFFFF5722巨角鹿|r. 拾取|cFF00BCD4眼睛|r
.complete 1058,3 
.mob Antlered Courser
step
.loop 25,Stonetalon Mountains,47.93,36.17,50.44,37.28,50.56,39.79,51.75,42.62,49.72,43.27,49.73,45.09,48.92,43.86,46.98,42.83,45.78,43.13,45.95,40.72,47.04,37.53
>> 环湖拾取|cFF00BCD4盖亚之种|r
.complete 6301,1 
step
#completewith BloodfuryHarpies
.goto Stonetalon Mountains,42.64,42.43,50,0
.goto Stonetalon Mountains,38.18,43.28,60,0
.goto Stonetalon Mountains,34.85,58.38,80 >> 沿着西边的路前往焦炭谷
step
#completewith next
>> 击杀|cFFFF5722火元素|r. 拾取|cFF00BCD4焚火余烬|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label BloodfuryHarpies
.goto Stonetalon Mountains,34.07,61.47,60,0
.goto Stonetalon Mountains,31.59,60.58,60,0
.goto Stonetalon Mountains,29.90,62.51,60,0
.goto Stonetalon Mountains,28.38,64.26,60,0
.goto Stonetalon Mountains,27.65,67.88,60,0
.goto Stonetalon Mountains,27.36,69.75,60,0
.goto Stonetalon Mountains,29.98,71.52,60,0
.goto Stonetalon Mountains,34.96,71.29,60,0
.goto Stonetalon Mountains,36.57,68.19,60,0
.goto Stonetalon Mountains,35.24,63.44,60,0
.goto Stonetalon Mountains,33.94,61.17,60,0
.goto Stonetalon Mountains,29.61,63.57
>> 击杀|cFFFF5722血怒鹰身人|r. |cFFFCDC00注意他们的特殊技能|r
>> |cFFFF5722血怒杀戮者能在你低于20%血量时斩杀你|r
>> |cFFFF5722血怒伏击者能以低CD技能造成高额伤害|r
>> |cFFFF5722血怒游荡者会|r|T132152:0|t[痛击]
.complete 6282,1 
.complete 6282,2 
.complete 6282,3 
.complete 6282,4 
.mob Bloodfury Harpy
.mob Bloodfury Ambusher
.mob Bloodfury Slayer
.mob Bloodfury Roguefeather
step
#completewith TammraTurnin1
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >> 沿着西边的路前往烈日石居
step
.goto Stonetalon Mountains,47.36,64.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_苏纳曼|r
.turnin 6393 ,t Elemental War
.target Tsunaman
.isQuestComplete 6393
step
#label TammraTurnin1
.goto Stonetalon Mountains,47.40,58.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6301 ,t Cycle of Rebirth
.accept 6381 ,a New Life
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_缚地者马格兰|r
.turnin 6282 ,t Harpies Threaten
.accept 6283 ,a Bloodfury Bloodline
.target Maggran Earthbinder
.group
step
.goto Stonetalon Mountains,47.20,61.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_缚地者马格兰|r
.turnin 6282 ,t Harpies Threaten
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.47,62.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板杰卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Jayka
step
.goto Stonetalon Mountains,47.61,61.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_在旅店2楼|r|cRXP_BUY_对话|r|cRXP_FRIENDLY_基达|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_如果有库存的话|r
.target Jeeda
step
.goto Stonetalon Mountains,45.90,60.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1087 ,t Cenarius' Legacy
.accept 1088 ,a Ordanus
.target Braelyn Firehand
.group
step
.goto Stonetalon Mountains,45.90,60.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1087 ,t Cenarius' Legacy
.target Braelyn Firehand
step
#completewith next
.goto Stonetalon Mountains,44.31,63.64,30,0
.goto Stonetalon Mountains,43.31,65.47,30,0
.goto Stonetalon Mountains,42.07,66.51,30,0
.goto Stonetalon Mountains,41.26,70.06,30,0
.goto Stonetalon Mountains,37.80,67.68,80 >> 回到焦炭谷
step
#completewith Ripper
.goto Stonetalon Mountains,36.07,67.95,40,0
.goto Stonetalon Mountains,34.22,61.25,40,0
.goto Stonetalon Mountains,31.33,61.38,40,0
>> 在地上的|cFFDB2EEF盖亚土堆|r上种上种子
.complete 6381,1 
step
#completewith next
>> 击杀|cFFFF5722火元素|r. 拾取|cFF00BCD4焚火余烬|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label Ripper
.goto Stonetalon Mountains,30.75,61.91
>> 击杀|cFFFF5722血怒撕裂者|r. 拾取她的|cFF00BCD4遗体|r
>> |cFFFCDC00先清理她周围的|r|cFFFF5722鹰身人|r|cFFFCDC00! 她有很大的联动范围|r
.complete 6283,1 
.unitscan Bloodfury Ripper
.group 2
step
#completewith next
>> 在地上的|cFFDB2EEF盖亚土堆|r上种上种子
.complete 6381,1 
step
.goto Stonetalon Mountains,31.84,70.92,60,0
.goto Stonetalon Mountains,33.84,70.45,60,0
.goto Stonetalon Mountains,35.75,73.03,60,0
.goto Stonetalon Mountains,33.94,63.81,60,0
.goto Stonetalon Mountains,34.47,60.19,60,0
.goto Stonetalon Mountains,30.56,67.08,60,0
.goto Stonetalon Mountains,31.84,70.92
>> 击杀|cFFFF5722火元素|r. 拾取|cFF00BCD4焚火余烬|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
.goto Stonetalon Mountains,30.20,67.61,40,0
.goto Stonetalon Mountains,29.06,68.87,40,0
.goto Stonetalon Mountains,29.64,71.34,40,0
.goto Stonetalon Mountains,30.50,70.80,40,0
.goto Stonetalon Mountains,32.25,70.07,40,0
.goto Stonetalon Mountains,33.70,72.92,40,0
.goto Stonetalon Mountains,34.70,72.25,40,0
.goto Stonetalon Mountains,34.49,69.09,40,0
.goto Stonetalon Mountains,36.06,67.96,40,0
.goto Stonetalon Mountains,36.01,65.24,40,0
.goto Stonetalon Mountains,34.21,61.28,40,0
.goto Stonetalon Mountains,31.90,64.25
>> 在地上的|cFFDB2EEF盖亚土堆|r上种上种子
.complete 6381,1 
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+28850 >> 刷到27级多28850经验
.isQuestComplete 6393
.isQuestComplete 6283
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+30850 >> 刷到27级多30850经验
.isQuestComplete 6283
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+30950 >> 刷到27级多30950经验
.isQuestComplete 6393
step
.loop 25,Stonetalon Mountains,36.69,67.66,35.89,64.85,35.28,63.36,34.58,61.42,33.14,60.26,31.89,58.88,30.85,60.72,29.70,61.90,28.13,63.70,28.37,66.87,26.94,69.66,29.63,70.80,30.58,72.39,31.92,72.67,33.32,73.17,35.60,73.46,36.55,71.13,36.84,68.70
.xp 27+32950 >> 刷到27级多32950经验
step
#completewith TammraTurnin2
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >> 沿着西边的道路返回烈日石居
step
.goto Stonetalon Mountains,47.36,64.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_苏纳曼|r
.turnin 6393 ,t Elemental War
.target Tsunaman
step
#label TammraTurnin2
.goto Stonetalon Mountains,47.40,58.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6381 ,t New Life
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_缚地者马格兰|r
.turnin 6283 ,t Bloodfury Bloodline
.target Maggran Earthbinder
.isQuestComplete 6283
.group
step
.goto Stonetalon Mountains,74.54,97.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医金吉尔|r
.turnin 1058 ,t Jin'Zil's Forest Magic
.target Witch Doctor Jin'Zil
step
.goto The Barrens,35.19,27.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希雷斯·碎石|r
.turnin 1068 ,t Shredding Machines
.target Seereth Stonebreak
step << Druid
#completewith DruidTraining3
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 1850 >> 学习职业技能
.target Loganaar
.xp <26,1
.xp >28,1
step << Druid
#label DruidTraining3
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 3029 >> 学习职业技能
.target Loganaar
.xp <28,1
step
#completewith next
.hs >> 炉石回十字路口
.use 6948
step
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >> 飞往奥格瑞玛
.zoneskip Orgrimmar
.target Devrak
step
.abandon 6283 ,ab Bloodfury Bloodline
.isOnQuest 6283
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8687 >> 学习职业技能
>> |T132273:0|t[速效药膏 II]|cFFFCDC00需要120点毒药技能|r
.target Ormok
.xp <26,1
.xp >28,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 1833 >> 学习职业技能
>> |T132273:0|t[速效药膏 II]|cFFFCDC00需要120点毒药技能|r
.target Ormok
.xp <28,1
step << Rogue
.goto Orgrimmar,48.12,80.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特拉克根|r|cRXP_BUY_. |cRXP_BUY_从他那|r购买|r|T135423:0|t[致命的飞斧]
.collect 3137,200,6544,1 
.target K'waii
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 8190 >> 学习职业技能
.target Kardris Dreamseeker
.xp <26,1
.xp >28,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 8053 >> 学习职业技能
.target Kardris Dreamseeker
.xp <28,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 6178 >> 学习职业技能
.target Grezz Ragefist
.xp <26,1
.xp >28,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 7887 >> 学习职业技能
.target Grezz Ragefist
.xp <28,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 1456 >> 学习职业技能
.target Mirket
.xp <26,1
.xp >28,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 6217 >> 学习职业技能
.target Mirket
.xp <28,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买所有买得起的宠物升级书
.target Kurgul

step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. |cRXP_BUY_从她那|r购买|r|T135466:0|t[致命魔杖]
.collect 5347,1,6544,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 3045 >> 学习职业技能
.target Ormak Grimshot
.xp <26,1
.xp >28,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14319 >> 学习职业技能
.target Ormak Grimshot
.xp <28,1
step << Hunter
.goto Orgrimmar,78.11,38.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤索克|r
>> |cFF0E8312从他那|r|cFF0E8312购买|r|T132382:0|t[锐锋箭]
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 120 >> 学习职业技能
.target Pephredo
.xp <26,1
.xp >28,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 759 >> 学习职业技能
.target Pephredo
.xp <28,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 992 >> 学习职业技能
.target Ur'kyo
.xp <26,1
.xp >28,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 8104 >> 学习职业技能
.target Ur'kyo
.xp <28,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 27-29 灰谷
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#next 29-32 千针石林
step
#completewith next
.goto Orgrimmar,26.22,61.58,80,0
.goto Orgrimmar,15.66,63.33,30,0
.zone The Barrens >> 从西边的出口离开奥格瑞玛
.zoneskip The Barrens
step
#completewith next
.goto Kalimdor,56.80,45.45,15,0
.goto Ashenvale,94.54,76.15,40,0
.goto Ashenvale,93.49,73.76,40,0
.goto Ashenvale,92.47,71.18,40,0
.goto Ashenvale,91.85,68.71,40,0
.goto Ashenvale,91.39,65.86,25 >> 沿着河往北走到灰谷
step
.goto Ashenvale,89.87,68.07,40,0
.goto Ashenvale,86.89,68.65,40,0
.goto Ashenvale,79.89,68.38,40,0
.goto Ashenvale,73.52,63.50,30 >> 前往碎木岗哨
>> |cFFFCDC00你可能会碰到几个29-30级的小怪, 尽量避开他们|r
step
.goto Ashenvale,73.78,61.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25塞娜尼·雷心|r
.turnin 6382 ,t The Ashenvale Hunt
.turnin 6383 ,t The Ashenvale Hunt
.target Senani Thunderheart
step
.goto Ashenvale,74.00,60.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板凯利斯克|r
.home >> 绑定炉石到碎木岗哨
.target Innkeeper Kaylisk
step
.goto Ashenvale,73.67,60.01
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25马斯托克·维尔西斯|r
.accept 25 ,a Stonetalon Standstill
.target Mastok Wrilehiss
step
.goto Ashenvale,73.06,61.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25皮克希尔|r
.accept 6441 ,a 萨特的角
.target Pixel
step
.goto Ashenvale,73.18,61.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25乌尔格拉|r
.fp Splintertree Post >> 开启碎木岗哨飞行点
.target Vhulgra
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25库莱比|r
.accept 6503 ,a 灰谷先驱者
.goto Ashenvale,71.10,68.12
.target Kuray'bin
step << Hunter
#completewith next
.goto Ashenvale,73.38,61.02
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_基苏|r
.stable >> 存放你的宠物. 你很快就会抓一只|cRXP_ENEMY_老灰谷熊|r
.target Qeeju
step << Hunter
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65
.cast 1515 >> |cRXP_WARN_对一只|cRXP_ENEMY_老灰谷熊|r施放|r|T132164:0|t[驯服野兽]|cRXP_WARN_来抓获它|r
.train 16830 >> |cRXP_WARN_和它一起刷怪并学习|r|T132140:0|t[爪击 (等级 4)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处获取更多关于宠物训练的信息|r
.mob Elder Ashenvale Bear
step << Hunter
.goto Ashenvale,73.38,61.02
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_基苏|r
.stable >> 放弃|cRXP_ENEMY_老灰谷熊|r并换回你的常规宠物
.target Qeeju
step
#completewith next
.goto Ashenvale,75.25,71.86,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>> 击杀|cFFFF5722沙普塔隆|r. 拾取|T136063:0|t[|cFF00BCD4沙普塔隆的爪子|r]使用并接受任务
>> |cFFFCDC00小心!|r|cFFFF5722沙普塔隆|r|cFFFCDC0031级并在附近巡逻.如果你很难杀死它,可以风筝它回碎木岗哨或者被遗忘者营地.如果你选择这样做,确保你对它造成超过50%的伤害以获得拾取权限.另外你也可以选择稍后再来做这个任务.|r
.collect 16305,1,2 
.unitscan Sharptalon
.use 16305
step
.goto Ashenvale,76.15,67.60,15,0
.goto Ashenvale,76.03,69.02,15,0
.goto Ashenvale,76.25,70.62,15,0
.goto Ashenvale,75.76,71.61,15,0
.goto Ashenvale,75.57,70.33,15,0
.goto Ashenvale,75.20,70.62,15,0
.goto Ashenvale,74.37,69.31,15,0
.goto Ashenvale,73.61,70.91,15,0
.goto Ashenvale,72.96,70.34,15,0
.goto Ashenvale,72.66,69.46,15,0
.goto Ashenvale,72.09,70.17,15,0
.goto Ashenvale,71.07,72.60,15,0
.goto Ashenvale,71.92,73.64,15,0
.goto Ashenvale,72.53,72.58,15,0
.goto Ashenvale,72.32,74.64,15,0
.goto Ashenvale,73.36,74.43,15,0
.goto Ashenvale,73.85,75.03,15,0
.goto Ashenvale,76.15,67.60
>> 击杀|cFFFF5722灰谷先驱者|r
>> |cFFFCDC00他们可以潜行|r
.complete 6503,1 
.mob Ashenvale Outrunner
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>> 击杀|cFFFF5722沙普塔隆|r. 拾取|T136063:0|t[|cFF00BCD4沙普塔隆的爪子|r]使用并接受任务
>> |cFFFCDC00小心!|r|cFFFF5722沙普塔隆|r|cFFFCDC0031级并在附近巡逻.如果你很难杀死它,可以风筝它回碎木岗哨或者被遗忘者营地.如果你选择这样做,确保你对它造成超过50%的伤害以获得拾取权限.另外你也可以选择稍后再来做这个任务.|r
.collect 16305,1,2 
.accept 2 ,a Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step
.goto Ashenvale,68.34,75.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25托雷克|r以开始护送任务
>> |cFF00FF25托雷克|r|cFFFCDC00每5分钟刷新一次|r
.accept 6544 ,a Torek's Assault
.target Torek
step
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>> 跟随|cFF00FF25托雷克|r
>> 让|cFF00FF25托雷克|r和他的|cFF00FF25碎木突击队员|r坦住|cFFFF5722银翼战士|r和|cFFFF5722银翼哨兵|r
>> 清场后, 直接前往阳台处. 当|cFFFF5722杜瑞尔·月火|r出现后, 让|cFF00FF25托雷克|r和他的|cFF00FF25碎木突击队员|r拉住仇恨后在输出
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step
#completewith Tideress
.goto Ashenvale,51.51,71.02,100 >> 前往密斯特拉湖
.isOnQuest 25
step
#completewith Tideress
>> 击杀|cFFFF5722污浊的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
#completewith next
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,52.08,72.10,40,0
.goto Ashenvale,52.18,71.60,40,0
.goto Ashenvale,52.13,71.14,40,0
.goto Ashenvale,51.42,70.86,40,0
.goto Ashenvale,50.74,71.31,40,0
.goto Ashenvale,50.54,71.08,40,0
.goto Ashenvale,50.47,70.43,40,0
.goto Ashenvale,50.21,70.36,40,0
.goto Ashenvale,49.49,70.76,40,0
.goto Ashenvale,48.93,70.82,40,0
.goto Ashenvale,48.43,70.14,40,0
.goto Ashenvale,48.36,69.74,40,0
>> 击杀|cFFFF5722泰德雷斯|r. 拾取|T136222:0|t[|cFF00BCD4被污染的水球|r]. 使用并接受任务
>> |cFFFF5722泰德雷斯|r在岛上和水里巡逻
.collect 16408,1,1918,1 
.accept 1918 ,a The Befouled Element
.use 16408
.unitscan Tideress
step
.goto Ashenvale,48.93,69.56
>> 到瞭望台底下
.complete 25,2 
step
#label Tideress
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,48.71,69.54,40,0
.goto Ashenvale,48.04,69.67,40,0
.goto Ashenvale,47.79,69.90,40,0
.goto Ashenvale,47.57,70.42,40,0
.goto Ashenvale,47.22,70.44,40,0
.goto Ashenvale,46.72,70.63,40,0
.goto Ashenvale,46.53,70.80,40,0
.goto Ashenvale,46.07,70.83,40,0
.goto Ashenvale,45.84,70.67,40,0
.goto Ashenvale,45.84,70.67
>> 击杀|cFFFF5722泰德雷斯|r. 拾取|T136222:0|t[|cFF00BCD4被污染的水球|r]. 使用并接受任务
>> |cFFFF5722泰德雷斯|r在岛上和水里巡逻
.collect 16408,1,1918,1 
.accept 1918 ,a The Befouled Element
.use 16408
.unitscan Tideress
step
.loop 25,Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
>> 击杀|cFFFF5722污浊的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
.line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
.goto Ashenvale,43.78,68.86,40,0
.goto Ashenvale,43.33,68.09,40,0
.goto Ashenvale,42.46,68.39,40,0
.goto Ashenvale,42.08,68.71,40,0
.goto Ashenvale,41.79,68.28,40,0
.goto Ashenvale,41.55,67.71,40,0
.goto Ashenvale,41.46,67.44,40,0
.goto Ashenvale,41.41,66.56,40,0
.goto Ashenvale,40.22,66.23,40,0
.goto Ashenvale,39.77,65.40,40,0
.goto Ashenvale,39.65,63.74,40,0
.goto Ashenvale,39.81,62.94,40,0
>> 击杀|cFFFF5722乌萨苟斯|r. 拾取|T132941:0|t[|cFF00BCD4乌萨苟斯的爪子|r]使用并接受任务
>> 它在附近小范围巡逻
.collect 16303,1,23 
.accept 23 ,a Ursangous's Paw
.unitscan Ursangous
.use 16303
step << Shaman
.goto Ashenvale,33.55,67.47
>> 在瞭望台下使用|T132821:0|t[空的蓝色水囊]
.complete 1534,1 
.use 7767
step
.goto Ashenvale,36.81,33.48,200 >> 前往蓟皮村
>> |cRXP_WARN_确保避开沿途的阿斯特兰纳守卫|r
.isOnQuest 216
step
#completewith next
>> 击杀前往洞穴路上的|cFFFF5722蓟皮萨满|r和|cFFFF5722蓟皮复仇者|r
.complete 216,2 
.complete 216,1 
.mob Thistlefur Shaman
.mob Thistlefur Avenger
step
#label EntertheHold
.goto Ashenvale,38.67,30.62,40 >> 进入蓟皮要塞
.isOnQuest 6462
step
.goto Ashenvale,40.39,33.22,20,0
.goto Ashenvale,40.77,32.81,20,0
.goto Ashenvale,41.36,32.19,20,0
.goto Ashenvale,41.75,32.94,20,0
.goto Ashenvale,41.77,33.68,20,0
.goto Ashenvale,42.37,33.61,20,0
.goto Ashenvale,42.82,34.11,20,0
.goto Ashenvale,41.73,34.47,20,0
.goto Ashenvale,41.66,35.70,20,0
.goto Ashenvale,40.39,33.22
>> 打开地上的|cFFDB2EEF巨魔箱子|r拾取|cFF00BCD4巨魔符咒|r
.complete 6462,1 
step
.goto Ashenvale,41.49,34.51
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话洞穴深处的|cRXP_FRIENDLY_卢尔·雪蹄|r. 这将开启护送任务
.accept 6482 ,a Freedom to Ruul
.target Ruul Snowhoof
step
.goto Ashenvale,40.68,33.21,20,0
.goto Ashenvale,40.29,32.25,20,0
.goto Ashenvale,39.41,31.00,20,0
.goto Ashenvale,38.28,30.68,20,0
.goto Ashenvale,37.39,32.74,30,0
.goto Ashenvale,37.30,34.49,30,0
.goto Ashenvale,38.73,36.86
.complete 6482,1 
>> |cFFFCDC00小心! 在你出洞的半路上会刷新3只|r|cFFFF5722蓟皮熊怪|r|cFFFCDC00. 在护送到村口时也会刷新3只|r
.target Ruul Snowhoof
step
.goto Ashenvale,37.91,34.49,40,0
.goto Ashenvale,35.89,36.65,40,0
.goto Ashenvale,35.75,32.01,40,0
.goto Ashenvale,34.09,38.48,40,0
.goto Ashenvale,31.86,39.25,40,0
.goto Ashenvale,32.57,42.78,40,0
.goto Ashenvale,30.98,44.40,40,0
.goto Ashenvale,35.75,32.01
>> 完成击杀|cFFFF5722蓟皮萨满|r和|cFFFF5722蓟皮复仇者|r
.complete 216,2 
.complete 216,1 
.mob Thistlefur Shaman
.mob Thistlefur Avenger
step
#completewith next
.goto Ashenvale,58.03,55.87,100 >> 向东前往林中树居
.isOnQuest 5867
step
#completewith next
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,60.94,51.53,40,0
>> 击杀|cFFFF5722萨杜布拉|r. 拾取|T132225:0|t[|cFF00BCD4萨杜布拉的头颅|r]使用并接受任务
>> |cFFFF5722萨杜布拉|r在附近小范围巡逻
.collect 16304,1,24 
.accept 24 ,a Shadumbra's Head
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,58.08,56.06,40,0
.goto Ashenvale,58.69,55.18,40,0
.goto Ashenvale,59.27,54.47,40,0
.goto Ashenvale,59.83,53.26,40,0
.goto Ashenvale,60.40,52.83,40,0
.goto Ashenvale,61.03,51.96,40,0
.goto Ashenvale,60.99,49.19,40,0
.goto Ashenvale,62.51,50.16,40,0
.goto Ashenvale,58.08,56.06
>> 击杀|cFFFF5722欢笑姐妹|r. 拾取|T134776:0|t[|cFF00BCD4蚀刻瓶|r]
.collect 5867,1,1195,1 
.mob Laughing Sister
step
#label Shadumbra
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,62.39,49.80
>> 击杀|cFFFF5722萨杜布拉|r. 拾取|T132225:0|t[|cFF00BCD4萨杜布拉的头颅|r]使用并接受任务
>> |cFFFF5722萨杜布拉|r在附近小范围巡逻
.collect 16304,1,24 
.accept 24 ,a Shadumbra's Head
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,62.07,51.32
>> 击杀|cFFFF5722守护者奥达努斯|r. 拾取他的|cFF00BCD4头|r
>> |cFFFCDC00小心! 有2只|r|cFFFF5722塞纳里奥辩护者|r|cFFFCDC00在保护他|r
>> |cFFFCDC00在他血量低于30%时他会召唤2只|r|cFFFF5722树人|r
.complete 1088,1 
.target Keeper Ordanus
.group 2
step
#completewith next
.goto Ashenvale,63.34,44.14,40,0
.goto Ashenvale,65.32,44.22,40,0
.goto Ashenvale,66.56,51.77,80 >> 前往夜道谷
step
.loop 25,Ashenvale,66.78,51.71,66.19,53.44,66.17,54.40,66.22,55.27,66.20,56.37,66.77,57.14,67.11,56.39,67.35,55.53,67.92,54.42,68.92,53.44,68.63,52.69,67.85,51.34
>> 击杀|cFFFF5722魔草巡影者|r, |cFFFF5722魔草萨特|r, 和|cFFFF5722魔草魔仆|r. 拾取|cFF00BCD4萨特的角|r
>> |cFFFCDC00小心! 所有的魔草萨特都会施放|r|T136119:0|t[无比恶臭]|cFFFCDC00, 此技能为顺发6秒沉默|r << Mage/Warlock/Priest/Druid/Shaman
.complete 6441,1 
.mob Felmusk Shadowstalker
.mob Felmusk Felsworn
.mob Felmusk Satyr
step
.goto Ashenvale,60.20,72.90
>> 在月亮井使用|T134776:0|t[|cFF00BCD4蚀刻瓶|r]
.complete 1195,1 
.use 5867
step
.goto Ashenvale,71.10,68.12
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库莱比|r
.turnin 6503 ,t 灰谷先驱者
.target Kuray'bin
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>> 击杀|cFFFF5722沙普塔隆|r. 拾取|T136063:0|t[|cFF00BCD4沙普塔隆的爪子|r]使用并接受任务
>> |cFFFCDC00小心!|r|cFFFF5722沙普塔隆|r|cFFFCDC0031级并在附近巡逻.如果你很难杀死它,可以风筝它回碎木岗哨或者被遗忘者营地.如果你选择这样做,确保你对它造成超过50%的伤害以获得拾取权限.另外你也可以选择稍后再来做这个任务.|r
.collect 16305,1,2 
.accept 2 ,a Sharptalon's Claw
.unitscan Sharptalon
.use 16305
step
#sticky
#completewith EnterBFD
.subzone 719 >> 你现在应该寻找前往黑暗深渊的副本队伍了
.dungeon BFD
step
.goto Ashenvale,73.04,62.47
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃尔托格·怒齿|r
.turnin 6544 ,t Torek's Assault
.target Ertog Ragetusk
.isQuestComplete 6544
step
.goto Ashenvale,73.78,61.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25塞娜尼·雷心|r
.turnin 2 ,t Sharptalon's Claw
.turnin 24 ,t Shadumbra's Head
.turnin 23 ,t Ursangous's Paw
.turnin 247 ,t The Hunt Completed
.target Senani Thunderheart
.isOnQuest 2
step
.goto Ashenvale,73.78,61.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25塞娜尼·雷心|r
.turnin 24 ,t Shadumbra's Head
.turnin 23 ,t Ursangous's Paw
.target Senani Thunderheart
step
.goto Ashenvale,73.06,61.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25皮克希尔|r
.turnin 6441 ,t 萨特的角
.target Pixel
step
.goto Ashenvale,73.67,60.01
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25马斯托克·维尔西斯|r
.turnin 25 ,t Stonetalon Standstill
.turnin 1918 ,t The Befouled Element
.accept 824 ,a Je'neu of the Earthen Ring
.target Mastok Wrilehiss
step
.goto Ashenvale,74.11,60.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅玛·雪蹄|r
.turnin 6482 ,t Freedom to Ruul
.target Yama Snowhoof
step
.goto Ashenvale,73.18,61.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25乌尔格拉|r
.fly Zoram'gar >> 飞往佐拉姆加前哨站
.target Vhulgra
step
.goto Ashenvale,11.90,34.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉恩·阿玛卡|r
.turnin 216 ,t Between a Rock and a Thistlefur
.target Karang Amakkar
step
.goto Ashenvale,11.65,34.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米苏瓦|r
.turnin 6462 ,t Troll Charm
.target Mitsuwa
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 ,t Je'neu of the Earthen Ring
.accept 6563 ,a The Essence of Aku'Mai
.accept 6921 ,a Amongst The Ruins
.accept 6565 ,a Allegiance to the Old Gods
.target Je'neu Sancrea
.dungeon BFD
.isQuestTurnedIn 6564
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 ,t Je'neu of the Earthen Ring
.accept 6563 ,a The Essence of Aku'Mai
.accept 6921 ,a Amongst The Ruins
.target Je'neu Sancrea
.dungeon BFD
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 ,t Je'neu of the Earthen Ring
.target Je'neu Sancrea
step
.goto Ashenvale,12.06,34.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格拉什|r
>> |cRXP_WARN_这将开启护送任务|r
.accept 6641 ,a Vorsha the Lasher
.target Muglash
step
.goto Ashenvale,9.63,27.63
>> 当你到达时点击|cRXP_PICK_火盆|r
.complete 6641,1 
.mob Vorsha the Lasher
step
.goto Kalimdor,43.89,35.23,100 >> 前往黑暗深渊入口
.dungeon BFD
step
#completewith next
>> 拾取墙上的|cFF00BCD4阿库麦尔蓝宝石|r
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,43.94,34.86
>> 击杀|cFFFF5722黑暗深渊海潮祭司|r. 拾取|T134332:0|t[|cFF00BCD4潮湿的便笺|r]使用并接受任务
.collect 16790,1,6564 
.accept 6564 ,a Allegiance to the Old Gods
.mob Blackfathom Tide Priestess
.use 16790
.dungeon BFD
step
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,44.34,35.11
>> 拾取墙上的|cFF00BCD4阿库麦尔蓝宝石|r
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
#label EnterBFD
.goto Kalimdor,44.36,34.86
.zone 221 >> 进入黑暗深渊副本. 拉近视角
.dungeon BFD
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_银色黎明守卫塞尔瑞德|r
.accept 6561 ,a Blackfathom Villainy
.target Argent Guard Thaelrid
.dungeon BFD
step
>> 击杀|cRXP_ENEMY_洛古斯·杰特|r
.complete 6565,1 
.mob Lorgus Jett
.isOnQuest 6565
.dungeon BFD
step
#completewith next
>> 打开水底的|cFFDB2EEF深渊之石|r获取|cFF00BCD4深渊之核|r
>> |cFFFCDC00拾取此物品会刷新|r|cFFFF5722阿奎尼斯男爵|r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
>> 击杀|cFFFF5722阿奎尼斯男爵|r. 拾取|T136222:0|t[|cFF00BCD4奇怪的水球|r]. 使用并接受任务
.collect 16782,1 
.accept 6922 ,a Baron Aquanis
.mob Baron Aquanis
.use 16782
.dungeon BFD
step
>> 打开水底的|cFFDB2EEF深渊之石|r获取|cFF00BCD4深渊之核|r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
>> 击杀|cRXP_ENEMY_暮光领主克尔里斯|r. 拾取他的|cRXP_LOOT_头|r
.complete 6561,1 
.mob Twilight Lord Kelris
.isOnQuest 6561
.dungeon BFD
step
#completewith next
.hs >> 炉石回碎木岗哨
.use 6948
>> |cFFFCDC00如果你愿意的话可以先击杀|r|cFFFF5722阿库麦尔|r|cFFFCDC00. 它是此副本的尾王|r
.dungeon BFD
step
.goto Ashenvale,73.18,61.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25乌尔格拉|r
.fly Zoram'gar >> 飞往佐拉姆加前哨站
.target Vhulgra
.dungeon BFD
step
.goto Ashenvale,12.22,34.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_战歌信使|r
.turnin 6641 ,t Vorsha the Lasher
.target Warsong Runner
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6564 ,t Allegiance to the Old Gods
.target Je'neu Sancrea
.dungeon BFD
.isOnQuest 6564
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6565 ,t Allegiance to the Old Gods
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6565
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6563 ,t The Essence of Aku'Mai
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6563
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6921 ,t Amongst The Ruins
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6521
step
.goto Ashenvale,11.56,34.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6922 ,t Baron Aquanis
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6922
step
.goto Ashenvale,12.24,33.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德鲁克|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Andruk
.cooldown item,6948,<0
step
.hs >> 炉石回碎木岗哨
.goto Ashenvale,74.00,60.64,30 >> 抵达碎木岗哨
.use 6948
.cooldown item,6948,>0

step
.goto Ashenvale,73.18,61.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25乌尔格拉|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Vhulgra
.zoneskip 431,1
step
.goto Thunder Bluff,71.04,34.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴珊娜·符文图腾|r
.turnin 6561 ,t Blackfathom Villainy
.target Bashana Runetotem
.isQuestComplete 6561
.dungeon BFD
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 29-32 千针石林
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#next 32-35 希尔斯布莱德丘陵/阿拉希盆地
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_德尔贡·狂暴图腾|r|cRXP_BUY_. 购买|r|T132408:0|t[无情战斧]|cRXP_BUY_(如果你在希尔斯布莱德没买到并且有库存的话)|r
.collect 12249,1,5881,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Rogue
.goto Thunder Bluff,53.00,56.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡德·狂暴图腾|r|cRXP_BUY_. 购买|r|T135651:0|t[钝刺]|cRXP_BUY_作为副手武器|r
.collect 2526,1,5881,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith TearMoons
+装备|T135651:0|t[钝刺]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
.goto Thunder Bluff,54.90,51.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赞金·石蹄|r
.turnin 1195 ,t The Sacred Flame
.accept 1196 ,a The Sacred Flame
.target Zangen Stonehoof
step << Druid
.goto Thunder Bluff,76.79,31.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 3029 >> 学习职业技能
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
.goto Thunder Bluff,76.79,31.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 783 >> 学习职业技能
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,61.53,80.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1131 ,a Steelsnap
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14319 >> 学习职业技能
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
.goto Thunder Bluff,59.13,86.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 5384 >> 学习职业技能
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24559 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 7887 >> 学习职业技能
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
.goto Thunder Bluff,57.27,87.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托姆·狂暴图腾|r
.train 7369 >> 学习职业技能
.accept 1718 ,a The Islander
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,45.83,64.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
.home >> 绑定炉石到雷霆崖
.target Innkeeper Pala
step
.goto Thunder Bluff,22.81,20.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师札玛|r
.turnin 1086 ,t The Flying Machine Airport
.target Apothecary Zamah
.isOnQuest 1086
step << Priest
.goto Thunder Bluff,25.31,15.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
.train 8104 >> 学习职业技能
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
.goto Thunder Bluff,25.31,15.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
.train 602 >> 学习职业技能
.target Miles Welsh
.xp <30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
.train 759 >> 学习职业技能
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
.train 8412 >> 学习职业技能
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_比尔吉特·克兰斯顿|r
.train 3566 >> 学习|T135765:0|t[传送: 雷霆崖]
.target Birgitte Cranston
.xp <30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 8053 >> 学习职业技能
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 556 >> 学习职业技能
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,150 >> 制作|T133687:0|t[厚绒线绷带]直到急救技能150
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_潘德·缚石|r
.train 7928 >> 学习|T133671:0|t[丝质绷带]
>> |cFFFCDC00如果你没有足够的毛料到达150急救技能等级就跳过这步|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r|cRXP_BUY_. 购买|r|T135495:0|t[Sturdy Recurve Bow]|cRXP_BUY_如果有库存的话|r
.collect 11306,1,5881,1 
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
step
.goto Thunder Bluff,46.98,45.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r
.collect 3030,1800,5881,1 << Hunter 
.target Kuna Thunderhorn
step
.abandon 6561 ,ab Blackfathom Villainy
.isOnQuest 6561
.dungeon BFD
step
.abandon 6565 ,ab Allegiance to the Old Gods
.isOnQuest 6565
.dungeon BFD
step
.abandon 6563 ,ab Essence of Aku'Mai
.isOnQuest 6563
.dungeon BFD
step
.abandon 6921 ,ab Amongst the Ruins
.isOnQuest 6921
.dungeon BFD
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 1153 ,a A New Ore Sample
.target Tatternack Steelforge
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >> 前往|cRXP_FRIENDLY_布瑞恩|r处
step << Shaman
.goto The Barrens,43.42,77.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞恩|r
.turnin 1534 ,t Call of Water
.accept 220 ,a Call of Water
.target Brine
step
#completewith next
.goto The Barrens,48.85,84.88,50 >> 前往巴尔莫丹
.group
step
.goto The Barrens,48.94,86.31
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25被流放的费格雷|r
.accept 857 ,a The Tear of the Moons
.target Feegly the Exiled
.group
step
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >> 前往巴尔丹城堡的最底层
.group
step
.goto The Barrens,49.13,84.25
>> 打开|cFFDB2EEF塔文布莱德将军的箱子|r. 拾取|cFF00BCD4众月之泪|r
>> |cFFFCDC00小心! 在|cFFFF5722塔文布莱德将军|r的房间里非常容易ADD|r
>> |cFFFCDC00直接拉除了|cFFFF5722塔文布莱德将军|r以外的其他小怪|r
.complete 857,1 
.group 3
step
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >> 离开巴尔丹城堡
.group
step
#label TearMoons
.goto The Barrens,48.94,86.31
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25被流放的费格雷|r
.turnin 857 ,t The Tear of the Moons
.target Feegly the Exiled
.group
step
#completewith next
.goto The Barrens,44.13,91.44,80 >> 向南前往升降梯
step
.goto Thousand Needles,31.87,21.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞什·远行者|r
.turnin 5881 ,t Calling in the Reserves
.target Grish Longrunner
.isOnQuest 5881
step
.goto Thousand Needles,32.24,22.17
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵穆赫·月角|r
.accept 4542 ,a Message to Freewind Post
.target Brave Moonhorn
step
.goto Thousand Needles,31.97,23.76,30 >> 乘坐电梯前往千针石林
>> |cFFFCDC00不要跳下去! 你会死的!!!|r
.isOnQuest 4542
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.61,31.49,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>> 击杀|cFFFF5722加拉克信使|r. 拾取|T133473:0|t[|cFF00BCD4暗杀指令|r]. 使用并接受任务
>> |cFFFCDC00他刷新在裂蹄峭壁(东部的半人马营地)|r
.collect 12564,1,4881 
.accept 4881 ,a Assassination Plot
.use 12564
.unitscan Galak Messenger
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >> 前往乱风岗电梯
step
.goto Thousand Needles,45.91,49.91,25 >> 乘坐电梯到达乱风岗
step
.goto Thousand Needles,45.70,50.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_峭壁卫兵图林·长角|r
.turnin 4542 ,t Message to Freewind Post
.accept 4841 ,a Pacify the Centaur
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,50.80
>> 点击|cRXP_FRIENDLY_通缉告示|r
.accept 5147 ,a Wanted - Arnak Grimtotem
step
.goto Thousand Needles,46.10,51.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳恩·峭壁信使|r
.turnin 1196 ,t The Sacred Flame
.accept 1197 ,a The Sacred Flame
.target Rau Cliffrunner
.group
step
.goto Thousand Needles,46.10,51.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳恩·峭壁信使|r
.turnin 1196 ,t The Sacred Flame
.target Rau Cliffrunner
step
.goto Thousand Needles,45.15,50.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫塔尔|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134937:0|t[卷轴]|cRXP_BUY_如果有库存的话|r
.target Montarr
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
.vendor >> |cFF0E8312购买|r|T135495:0|t[笨重的短弓]|cFF0E8312如果有库存的话|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step
.goto Thousand Needles,44.70,50.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈加尔·雷蹄|r
.accept 4821 ,a Alien Egg
.target Hagar Lightninghoof
step
.goto Thousand Needles,44.90,48.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾鲁|r
.accept 4767 ,a Wind Rider
.target Elu
step
.goto Thousand Needles,45.14,49.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奈瑟|r
.fp Freewind Post >> 开启乱风岗飞行点
.target Nyse
step
#completewith Clovenhoof
>> 击杀|cFFFF5722加拉克斥候|r, |cFFFF5722加拉克争斗者|r, 和|cFFFF5722加拉克逐风者|r
>> 击杀遇到的所以|cFFFF5722加拉克斥候|r
.complete 4841,1 
.complete 4841,2 
.complete 4841,3 
.mob Galak Scout
.mob Galak Wrangler
.mob Galak Windchaser
step
#label Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.12,37.22,20 >> 进入洞穴
.group
step
#requires Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.44,36.32,12,0
.goto Thousand Needles,43.14,35.19,12,0
.goto Thousand Needles,42.11,34.54,12,0
.goto Thousand Needles,42.01,31.47,20 >> 前往|cFFDB2EEF古代火盆|r处
.group
step
#requires Splithoofcave
#label Clovenhoof
.goto Thousand Needles,42.01,31.47
>> 打开|cFFDB2EEF古代火盆|r.拾取|cFF00BCD4裂开的蹄子|r
>> |cFFFCDC00小心! 火盆由两名30级的|cFFFF5722加拉克烈焰守卫|r守护|r
.complete 1197,1 
.mob Galak Flame Guard
.group 2
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.46,32.60,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>> 击杀|cFFFF5722加拉克信使|r. 拾取|T133473:0|t[|cFF00BCD4暗杀指令|r]. 使用并接受任务
>> |cFFFCDC00他刷新在裂蹄峭壁(东部的半人马营地)|r
.collect 12564,1,4881 
.accept 4881 ,a Assassination Plot
.use 12564
.unitscan Galak Messenger
step
.loop 25,Thousand Needles,43.12,36.86,41.18,34.83,40.42,34.45,39.00,32.56,39.68,34.93,39.76,35.82,39.32,36.93,40.43,37.96,41.04,39.03,41.12,41.34,42.33,40.54,42.84,39.09,44.15,40.72,44.98,41.03,45.66,43.81,47.23,41.98,48.57,43.53,49.39,41.24,48.14,40.43,47.11,40.29,45.89,40.32,44.43,38.36,,43.12,36.86
>> 击杀|cFFFF5722加拉克斥候|r, |cFFFF5722加拉克争斗者|r, 和|cFFFF5722加拉克逐风者|r
.complete 4841,1 
.complete 4841,2 
.complete 4841,3 
.mob Galak Scout
.mob Galak Wrangler
.mob Galak Windchaser
step
#completewith next
>> 击杀|cFFFF5722砂齿勘探员|r, |cFFFF5722砂齿掘地工|r, 和|cFFFF5722吉比斯尼克|r (如果刷新了的话). 拾取|cFF00BCD4未精炼的矿石样本|r
.complete 1153,1 
.unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0
.goto Thousand Needles,53.95,41.49,10 >> 前往处|cFF00FF25多恩·平原行者|r
step
.goto Thousand Needles,53.95,41.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25多恩·平原行者|r
.accept 1149 ,a Test of Faith
.timer 7,Test of Faith RP
.target Dorn Plainstalker
step
.goto Thousand Needles,26.63,34.23
>> |cFFFCDC00等待剧情结束|r
>> |cFFFCDC00从木板尽头跳下. 你不会摔死, 而是会被传送走|r
.complete 1149,1 
step
.goto Thousand Needles,53.95,41.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25多恩·平原行者|r
.turnin 1149 ,t Test of Faith
.accept 1150 ,a Test of Endurance
.target Dorn Plainstalker
.group
step
.goto Thousand Needles,53.95,41.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25多恩·平原行者|r
.turnin 1149 ,t Test of Faith
.target Dorn Plainstalker
step
#completewith next
.goto Thousand Needles,56.36,50.39,20,0
>> 拾取地上的|cFF00BCD4异型卵|r
.complete 4821,1 
step
.line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
.line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
.line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
.line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
.line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
.goto Thousand Needles,51.89,43.02,40,0
.goto Thousand Needles,53.41,46.19,40,0
.goto Thousand Needles,54.05,44.96,40,0
.goto Thousand Needles,53.47,46.65,40,0
.goto Thousand Needles,52.61,48.28,40,0
.goto Thousand Needles,53.64,48.50,40,0
.goto Thousand Needles,51.48,48.06,40,0
.goto Thousand Needles,59.69,47.76,40,0
.goto Thousand Needles,62.21,47.76,40,0
.goto Thousand Needles,62.63,48.38,40,0
.goto Thousand Needles,64.01,47.52,40,0
.goto Thousand Needles,63.92,46.63,40,0
.goto Thousand Needles,63.10,45.53,40,0
.goto Thousand Needles,65.83,51.44,40,0
.goto Thousand Needles,65.44,50.11,40,0
.goto Thousand Needles,64.91,50.30,40,0
.goto Thousand Needles,66.11,49.91,40,0
.goto Thousand Needles,66.32,49.13,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,58.87,58.69,40,0
.goto Thousand Needles,57.66,57.70,40,0
.goto Thousand Needles,58.93,57.68,40,0
.goto Thousand Needles,58.94,56.55,40,0
.goto Thousand Needles,58.97,54.98,40,0
.goto Thousand Needles,59.32,53.69,40,0
.goto Thousand Needles,59.79,58.16
>> 击杀|cFFFF5722砂齿勘探员|r, |cFFFF5722砂齿掘地工|r, 和|cFFFF5722吉比斯尼克|r (如果刷新了的话). 拾取|cFF00BCD4未精炼的矿石样本|r
.complete 1153,1 
.unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39
>> 拾取地上的|cFF00BCD4异型卵|r
.complete 4821,1 
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >> 前往乱风岗电梯
step
.goto Thousand Needles,45.70,50.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_峭壁卫兵图林·长角|r
.turnin 4841 ,t Pacify the Centaur
.accept 5064 ,a Grimtotem Spying
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.10,51.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳恩·峭壁信使|r
.turnin 1197 ,t The Sacred Flame
.target Rau Cliffrunner
.group
.isQuestComplete 1197
step
.goto Thousand Needles,44.70,50.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈加尔·雷蹄|r
.turnin 4821 ,t Alien Egg
.accept 4865 ,a Serpent Wild
.target Hagar Lightninghoof
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
.vendor >> |cFF0E8312购买|r|T135495:0|t[笨重的短弓]|cFF0E8312如果有库存的话|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,1800,4767,1 
.target Starn
step
.goto Thousand Needles,45.15,50.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫塔尔|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134937:0|t[卷轴]|cRXP_BUY_如果有库存的话|r
.target Montarr
step
#label GrenkaCave
.goto Thousand Needles,27.59,49.86,12,0
.goto Thousand Needles,28.65,51.30,12,0
.goto Thousand Needles,27.29,51.30,12 >> 进入飞羽洞穴
.group
.isOnQuest 1150
step
#completewith Grenka
+|cFFFCDC00小心!|cFFFF5722尖啸唤风者|r会施放|T136022:0|t[阵风], 这是一个持续4秒10码范围的AOE眩晕技能|r
+|cFFFF5722尖啸鹰身人|r会施放|r|T136122:0|t[震耳尖啸]|cFFFCDC00, 让你沉默8s|r << Mage/Warlock/Priest/Druid/Shaman
.group
.isOnQuest 1150
step
#completewith next
.goto Thousand Needles,25.84,54.78
.cast 6478 >> 在洞穴深处打开地上的|cFFDB2EEF鹰身人的粮食|r来召唤|cFFFF5722格林卡|r
>> |cFFFCDC00小心, 多组|cFFFF5722鹰身人|r|cFFFCDC00会接二连三的刷新|r
.group
.isOnQuest 1150
step
.goto Thousand Needles,26.16,55.89,15,0
.goto Thousand Needles,26.69,55.62,15,0
.goto Thousand Needles,25.90,55.23
>> 击杀|cFFFF5722格林卡·血啸|r. 拾取|cFF00BCD4格林卡的爪子|r
.complete 1150,1 
.mob Grenka Bloodscreech
.group 4
.isOnQuest 1150
step
#completewith next
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>> 击杀|cFFFF5722钢齿土狼|r. 拾取|cFF00BCD4钢齿土狼的肋骨|r
>> |cFFFCDC00小心, 有2只|cFFFF5722土狼|r|cFFFCDC00在保护他!|r
.complete 1131,1 
.unitscan Steelsnap
step
#completewith next
.goto Thousand Needles,14.41,32.44,20,0
.goto Thousand Needles,14.04,32.37,12,0
.goto Thousand Needles,14.04,32.37,20 >> 前往风巢处
step
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
>> 拾取地上的|cFF00BCD4风巢双足飞龙的蛋|r
.complete 4767,1,6 
step
#completewith Paoka1
>> 拾取地上的|cFF00BCD4风巢双足飞龙的蛋|r
.complete 4767,1 
step
#completewith next
.goto Thousand Needles,13.18,39.55,15,0
.goto Thousand Needles,13.52,40.27,15,0
.goto Thousand Needles,14.01,40.27,15,0
.goto Thousand Needles,14.92,39.63,15,0
.goto Thousand Needles,16.46,41.09,25,0
.goto Thousand Needles,17.89,40.57,20 >> 沿路向上. 去找|cFF00FF25波卡·雨山|r
step
#label Paoka1
.goto Thousand Needles,17.89,40.57
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25波卡·雨山|r以开始护送
>> |cFFFCDC00注意看|cFFFF5722撕心者|r|cFFFCDC00是否刷新! 这是一只32级的稀有精英|r
.accept 4770 ,a Homeward Bound
.target Pao'ka Swiftmountain
.unitscan Heartrazor
step
#completewith next
>> 拾取地上的|cFF00BCD4风巢双足飞龙的蛋|r
.complete 4767,1 
step
.goto Thousand Needles,11.06,34.95,40,0
.goto Thousand Needles,15.17,32.66
>> |cFFFCDC00护送|r|cFF00FF25波卡·雨山|r
>> |cFFFCDC003只风巢双足飞龙会在|cFF00FF25波卡·雨山|r到达风巢中部时刷新出来. 你只需要处理东边那只其他2只就会消失|r
.complete 4770,1 
step
#completewith next
.goto Thousand Needles,14.41,32.44,20,0
.goto Thousand Needles,14.04,32.37,12,0
.goto Thousand Needles,14.04,32.37,20 >> 前往风巢处
step
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
>> 拾取地上的|cFF00BCD4风巢双足飞龙的蛋|r
.complete 4767,1 
step
#completewith Messenger
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>> 击杀|cFFFF5722钢齿土狼|r. 拾取|cFF00BCD4钢齿土狼的肋骨|r
>> |cFFFCDC00小心, 有2只|cFFFF5722土狼|r|cFFFCDC00在保护他!|r
.complete 1131,1 
step
.goto Thousand Needles,21.06,31.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25莱尔·台地行者|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Laer Stepperunner
step
.goto Thousand Needles,21.25,32.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25卡纳提·灰云|r
>> |cFFFCDC00小心! 提交这个任务会刷新3只|cFFFF5722加拉克刺客|r|cFFFCDC00保护|cFF00FF25卡纳提·灰云|r|r
.turnin 4881 ,t Assassination Plot
.accept 4966 ,a Protect Kanati Greycloud
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>> 击杀|cFFFF5722加拉克刺客|r以保护|cFF00FF25卡纳提·灰云|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25卡纳提·灰云|r
.turnin 4966 ,t Protect Kanati Greycloud
.isQuestComplete 4966
step
.goto Thousand Needles,21.54,32.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25莫特加·火鬃|r
.turnin 4865 ,t Serpent Wild
.accept 5062 ,a Sacred Fire
.turnin 4770 ,t Homeward Bound
.target Motega Firemane
step
.goto Thousand Needles,21.43,32.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25维兹罗·擦轴人|r
.accept 5151 ,a Hypercapacitor Gizmo
.target Wizlo Bearingshiner
.group
step
.goto Thousand Needles,22.78,24.53
>> 打开笼子并击杀|cFFFF5722被激怒的黑豹|r. 拾取|cFF00BCD4超适应齿轮|r
.complete 5151,1 
.mob Enraged Panther
.group 2
step
#label Messenger
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,18.32,22.10,0
.goto Thousand Needles,18.32,22.10,40,0
.goto Thousand Needles,18.72,22.53,40,0
.goto Thousand Needles,18.47,23.06,40,0
.goto Thousand Needles,18.70,24.42,40,0
.goto Thousand Needles,18.63,26.19,40,0
.goto Thousand Needles,18.98,26.71,40,0
.goto Thousand Needles,19.46,27.04,40,0
.goto Thousand Needles,19.96,27.67,40,0
.goto Thousand Needles,20.45,27.87,40,0
.goto Thousand Needles,20.83,28.26,40,0
.goto Thousand Needles,22.05,30.61,40,0
.goto Thousand Needles,24.56,32.76,40,0
.goto Thousand Needles,25.29,34.23,40,0
.goto Thousand Needles,27.34,34.02,40,0
.goto Thousand Needles,28.24,33.37,40,0
.goto Thousand Needles,28.64,33.43,40,0
.goto Thousand Needles,29.24,33.96,40,0
.goto Thousand Needles,29.51,33.89,40,0
.goto Thousand Needles,30.69,32.43,40,0
.goto Thousand Needles,31.55,30.61,40,0
.goto Thousand Needles,32.29,30.52,40,0
.goto Thousand Needles,33.27,30.86,40,0
.goto Thousand Needles,33.81,30.12,40,0
.goto Thousand Needles,34.25,29.49,40,0
.goto Thousand Needles,35.19,28.11,40,0
.goto Thousand Needles,35.84,28.59,40,0
.goto Thousand Needles,36.57,29.47,40,0
.goto Thousand Needles,37.34,29.29,40,0
.goto Thousand Needles,38.81,31.73,40,0
.goto Thousand Needles,39.51,33.43
>> 击杀|cFFFF5722加拉克信使|r. 拾取|T133473:0|t[|cFF00BCD4暗杀指令|r]. 使用并接受任务
>> |cFFFCDC00他刷新在裂蹄峭壁(东部的半人马营地)|r
>> |cFFFCDC00使用|r|T132172:0|t[鹰眼术]|cFFFCDC00寻找他, 如果你学了的话|r << Hunter
>> |cFFFCDC00使用|r|T136034:0|t[视界术]|cFFFCDC00寻找他, 如果你学了的话|r << Shaman
.collect 12564,1,4881 
.accept 4881 ,a Assassination Plot
.use 12564
.unitscan Galak Messenger
step
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
.goto Thousand Needles,11.50,21.61,40,0
.goto Thousand Needles,11.88,20.90,40,0
.goto Thousand Needles,12.89,19.97,40,0
.goto Thousand Needles,14.49,20.04,40,0
.goto Thousand Needles,15.69,18.65,40,0
.goto Thousand Needles,16.20,18.53,40,0
.goto Thousand Needles,16.70,18.61,40,0
.goto Thousand Needles,17.28,18.93,40,0
.goto Thousand Needles,17.66,19.46,40,0
.goto Thousand Needles,17.96,20.18,40,0
.goto Thousand Needles,17.87,20.78,40,0
.goto Thousand Needles,17.54,21.49,40,0
.goto Thousand Needles,17.24,22.32,40,0
.goto Thousand Needles,17.66,22.98,40,0
.goto Thousand Needles,18.11,23.65,40,0
.goto Thousand Needles,18.57,24.07,40,0
.goto Thousand Needles,18.68,24.68,40,0
.goto Thousand Needles,18.64,25.90,40,0
.goto Thousand Needles,18.48,26.74,40,0
.goto Thousand Needles,17.82,27.50,40,0
.goto Thousand Needles,17.19,29.60,40,0
.goto Thousand Needles,15.67,31.56,40,0
.goto Thousand Needles,15.08,31.63,40,0
.goto Thousand Needles,14.34,30.13,40,0
.goto Thousand Needles,13.75,28.54,40,0
.goto Thousand Needles,13.36,26.97,40,0
.goto Thousand Needles,13.01,26.31,40,0
.goto Thousand Needles,11.91,25.02,40,0
.goto Thousand Needles,11.55,24.44,40,0
.goto Thousand Needles,11.49,24.07,40,0
.goto Thousand Needles,11.16,23.21,40,0
.goto Thousand Needles,11.20,22.29,40,0
.goto Thousand Needles,11.50,21.61
>> 击杀|cFFFF5722钢齿土狼|r. 拾取|cFF00BCD4钢齿土狼的肋骨|r
>> |cFFFCDC00钢齿土狼逆时针巡逻|r
>> |cFFFCDC00使用|r|T132172:0|t[鹰眼术]|cFFFCDC00寻找他, 如果你学了的话|r << Hunter
>> |cFFFCDC00使用|r|T136034:0|t[视界术]|cFFFCDC00寻找他, 如果你学了的话|r << Shaman
.complete 1131,1 
.unitscan Steelsnap
step
.goto Thousand Needles,21.25,32.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25卡纳提·灰云|r
>> |cFFFCDC00小心! 提交这个任务会刷新3只|cFFFF5722加拉克刺客|r, 保护|cFF00FF25卡纳提·灰云|r|r
.turnin 4881 ,t Assassination Plot
.accept 4966 ,a Protect Kanati Greycloud
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>> 击杀|cFFFF5722加拉克刺客|r来保护|cFF00FF25卡纳提·灰云|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25卡纳提·灰云|r
.turnin 4966 ,t Protect Kanati Greycloud
.isQuestComplete 4966
step
.goto Thousand Needles,21.43,32.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25维兹罗·擦轴人|r
.turnin 5151 ,t Hypercapacitor Gizmo
.target Wizlo Bearingshiner
.group
.isQuestComplete 5151
step
.loop 25,Thousand Needles,36.58,38.77,37.77,38.17,36.63,36.23,34.96,33.22,33.37,32.85,33.67,34.09,34.88,34.82,35.62,36.20,36.05,37.41,36.58,38.77
>> 拾取地上和水里的|cFFDB2EEF火岩龙舌兰|r
>> |cFFFF5722滚烫的水元素|r和|cFFFF5722沸腾的水元素|r免疫冰霜伤害, 并且具有很高的火抗. 尽量避开他们或者使用奥系法术 << Mage
>> |cFFFCDC00小心!|r|cFFFF5722沸腾的水元素|r|cFFFCDC00会施放|r|T132156:0|t[蒸汽喷射]|cFFFCDC00, 降低你的命中率30%持续10s|r << Warrior/Rogue/Shaman/Druid
>> |cFFFCDC00小心!|r|cFFFF5722滚烫的水元素|r|cFFFCDC00会施放|r|T135807:0|t[斯卡尔德]|cFFFCDC00, 瞬间造成150点火焰伤害并眩晕你4s|r
.complete 5062,1 
step
#completewith next
.hs >> 炉石回雷霆崖
.use 6948
step
.goto Thunder Bluff,45.83,64.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Pala
step
.goto Thunder Bluff,61.53,80.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1131 ,t Steelsnap
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14319 >> 学习职业技能
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
.goto Thunder Bluff,59.13,86.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 5384 >> 学习职业技能
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24559 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 7887 >> 学习职业技能
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
.goto Thunder Bluff,57.27,87.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托姆·狂暴图腾|r
.train 7369 >> 学习职业技能
.accept 1718 ,a The Islander
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,69.88,30.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛加萨·恐怖图腾|r
.turnin 5062 ,t Sacred Fire
.accept 5088 ,a Arikara
.target Magatha Grimtotem
.group
step
.goto Thunder Bluff,69.88,30.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛加萨·恐怖图腾|r
.turnin 5062 ,t Sacred Fire
.target Magatha Grimtotem
step << Druid
.goto Thunder Bluff,76.79,31.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 3029 >> 学习职业技能
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
.goto Thunder Bluff,76.79,31.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 783 >> 学习职业技能
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,36.01,59.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥尔德·石塔|r
.accept 1102 ,a A Vengeful Fate
.target Auld Stonespire
.dungeon RFK
step << Priest
.goto Thunder Bluff,25.31,15.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
.train 8104 >> 学习职业技能
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
.goto Thunder Bluff,25.31,15.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔斯·威尔许|r
.train 602 >> 学习职业技能
.target Miles Welsh
.xp <30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
.train 759 >> 学习职业技能
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师山姆|r
.train 8412 >> 学习职业技能
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_比尔吉特·克兰斯顿|r
.train 3566 >> 学习|T135765:0|t[传送: 雷霆崖]
.target Birgitte Cranston
.xp <30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 8053 >> 学习职业技能
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 556 >> 学习职业技能
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,150 >> 制作|T133687:0|t[厚绒线绷带]直到急救技能150
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_潘德·缚石|r
.train 7928 >> 学习|T133671:0|t[丝质绷带]
>> |cFFFCDC00如果你没有足够的毛料到达150急救技能等级就跳过这步|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r|cRXP_BUY_. 购买|r|T135495:0|t[Sturdy Recurve Bow]|cRXP_BUY_如果有库存的话|r
.collect 11306,1,1153,1 
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
step
.goto Thunder Bluff,46.98,45.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_库纳·雷角|r
.collect 3030,1800,1153,1 << Hunter 
.target Kuna Thunderhorn
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_德尔贡·狂暴图腾|r|cRXP_BUY_. 购买|r|T132408:0|t[无情战斧]|cRXP_BUY_如果有库存的话|r
>> |cRXP_BUY_另外你也可以购买|r|T135576:0|t[巨型战斧]
.collect 12249,1,1153,1 
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Rogue
.goto Thunder Bluff,53.00,56.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡德·狂暴图腾|r|cRXP_BUY_. 从他那购买|r|T135275:0|t[骑士长剑]
.collect 2520,1,1153,1 
.money <2.5924
.target Kard Ragetotem
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#completewith TearMoons
+装备|T135275:0|t[骑士长剑]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Thunder Bluff,53.00,56.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡德·狂暴图腾|r|cRXP_BUY_. 购买|r|T135651:0|t[钝刺]|cRXP_BUY_作为副手武器|r
.collect 2526,1,1153,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith TearMoons
+装备|T135651:0|t[钝刺]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔特纳克·钢炉|r
.turnin 1153 ,t A New Ore Sample
.target Tatternack Steelforge
step
.goto The Barrens,50.48,78.72,100 >> 前往尘泥沼泽
step
#label Hoofprints
.goto Dustwallow Marsh,29.71,47.65
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击地上的|cRXP_PICK_可疑的蹄印|r
.accept 1268 ,a Suspicious Hoofprints
.xp <30,1
step
#label Badge
.goto Dustwallow Marsh,29.83,48.24
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击木板上的|cRXP_PICK_塞拉摩卫兵徽章|r
.accept 1269 ,a Lieutenant Paval Reethe
.xp <30,1
step
.goto Dustwallow Marsh,29.63,48.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击壁炉上的|cRXP_PICK_黑色盾牌|r
.accept 1251 ,a The Black Shield
.xp <30,1
step
#completewith next
.goto Dustwallow Marsh,30.65,45.34,40,0
.goto Dustwallow Marsh,32.28,42.80,40,0
.goto Dustwallow Marsh,33.12,40.85,40,0
.goto Dustwallow Marsh,33.55,38.71,40,0
.goto Dustwallow Marsh,34.73,37.66,40,0
.goto Dustwallow Marsh,34.31,34.40,40,0
.goto Dustwallow Marsh,33.30,31.23,40,0
.goto Dustwallow Marsh,34.58,30.62,40,0
.goto Dustwallow Marsh,36.64,31.72,120 >> 前往蕨墙村
>> |cFFFCDC00小心! 这里的怪都是36-38级的. 跟着路走以避开危险|r
step
.goto Dustwallow Marsh,36.41,31.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗格|r
.turnin 1268 ,t Suspicious Hoofprints
.turnin 1269 ,t Lieutenant Paval Reethe
.target Krog
.isOnQuest 1268
.isOnQuest 1269
step
.goto Dustwallow Marsh,36.41,31.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗格|r
.turnin 1251 ,t The Black Shield
.accept 1321 ,a The Black Shield
.target Krog
.isOnQuest 1251
step
.goto Dustwallow Marsh,36.50,30.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜高尔|r
.turnin 1321 ,t The Black Shield
.target Do'gol
.isQuestTurnedIn 1251
step << Warrior/Shaman
.goto Dustwallow Marsh,36.17,31.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_祖尔格|r|cRXP_BUY_. 购买|r|T135158:0|t[大棍子]|cRXP_BUY_如果有库存的话|r
.collect 12251,1,4904,1 
.money <4.3117
.target Zulrg
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Dustwallow Marsh,36.49,30.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴莱·洛克维|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134937:0|t[卷轴]|cRXP_BUY_如果有库存的话|r
.target Balai Lok'Wein
step
.goto Dustwallow Marsh,36.49,30.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴莱·洛克维|r
.vendor >> |cRXP_BUY_从她那购买|r|T134831:0|t[急救手册]
.collect 16112,1,4904,1 >> 手册: 厚丝质绷带 (1)
.collect 16113,1,4904,1 >> 手册: 魔纹绷带 (1)
.collect 16084,1,4904,1 >> 中级急救教材 - 绷带缚体 (1)
.target Balai Lok'Wein
.skill firstaid,<1,1
step
#completewith next
.goto Dustwallow Marsh,35.57,31.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >> 开启蕨墙村飞行点
.fly Freewind >> 飞往乱风岗
.target Shardi
.zoneskip Thousand Needles
step
.goto Thousand Needles,44.90,48.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾鲁|r
.turnin 4767 ,t Wind Rider
.target Elu
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
.vendor >> |cFF0E8312购买|r|T135495:0|t[笨重的短弓]|cFF0E8312如果有库存的话|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step
.goto Thousand Needles,45.15,50.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫塔尔|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134937:0|t[卷轴]|cRXP_BUY_如果有库存的话|r
.target Montarr
step
.goto Thousand Needles,46.07,51.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板埃比克瓦|r
.home >> 绑定炉石到乱风岗
.target Innkeeper Abeqwa
step
.goto Thousand Needles,53.95,41.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25多恩·平原行者|r
.turnin 1150 ,t Test of Endurance
.accept 1151 ,a Test of Strength
.target Dorn Plainstalker
.isQuestComplete 1150
.group
step
.goto Thousand Needles,53.95,41.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25多恩·平原行者|r
.accept 1151 ,a Test of Strength
.target Dorn Plainstalker
.isQuestTurnedIn 1150
.group
step
.goto Thousand Needles,36.10,55.02,100,0
.goto Thousand Needles,30.35,51.58,40,0
.goto Thousand Needles,24.34,44.72,60,0
.goto Thousand Needles,20.88,39.84,60,0
.goto Thousand Needles,17.33,36.72,60,0
.goto Thousand Needles,13.27,26.74,60,0
.goto Thousand Needles,9.98,21.71,60,0
.goto Thousand Needles,24.34,44.72
>> 寻找并击杀|cFFFF5722罗卡里姆|r. 拾取他的|cFF00BCD4碎片|r
>> |cFFFCDC00他在此区域的西北部大范围巡逻|r
.complete 1151,1 
.unitscan Rok'Alim the Pounder
.isOnQuest 1151
.group 2

step
.goto Thousand Needles,31.47,36.71,30 >> 前往黑云峰
step
#completewith next
.goto Thousand Needles,33.08,35.33,20,0
.goto Thousand Needles,32.78,32.24,20,0
.goto Thousand Needles,32.03,31.36,20,0
.goto Thousand Needles,32.37,28.64,20,0
.goto Thousand Needles,32.60,27.51,20,0
.goto Thousand Needles,34.87,31.76,20,0
.goto Thousand Needles,34.15,35.77,20,0
.goto Thousand Needles,33.32,36.24,20 >> 前往黑云峰
step
.goto Thousand Needles,31.79,32.58
>> 打开高原上的|cFFDB2EEF文件箱|r. 拾取|cFF00BCD4密信#1|r
.complete 5064,1 
step
.goto Thousand Needles,33.80,39.90
>> 打开大帐篷内的|cFFDB2EEF文件箱|r. 拾取|cFF00BCD4密信#2|r
.complete 5064,2 
step
.goto Thousand Needles,39.20,41.60
>> 打开东部高原帐篷内的|cFFDB2EEF文件箱|r. 拾取|cFF00BCD4密信#3|r
.complete 5064,3 
step
#completewith next
.goto Thousand Needles,35.68,39.25,20,0
.goto Thousand Needles,34.32,35.74,20,0
.goto Thousand Needles,35.56,30.94,20,0
.goto Thousand Needles,36.97,31.97,20 >> 前往东北高原的大火堆处
.group
step
>> 清理掉|cFFFF5722恐怖图腾小怪|r然后点燃火堆
>> 击杀|cFFFF5722阿利卡拉|r. 拾取她的|cFF00BCD4皮|r
.goto Thousand Needles,38.00,35.30
.complete 5088,2 
.complete 5088,1 
.mob Arikara
.group 2
step
.goto Thousand Needles,38.00,26.80
>> 击杀|cFFFF5722阿纳克·恐怖图腾|r. 拾取他的|cFF00BCD4蹄子|r
.complete 5147,1 
.mob Arnak Grimtotem
step
.goto Thousand Needles,38.00,26.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25拉克塔·风歌|r
>> |cFFFCDC00这将开启护送任务|r
.accept 4904 ,a Free at Last
.target Lakota Windsong
step
.goto Thousand Needles,38.96,29.46,20,0
.goto Thousand Needles,37.56,31.43,20,0
.goto Thousand Needles,36.89,31.73,20,0
.goto Thousand Needles,35.64,31.01,20,0
.goto Thousand Needles,34.53,30.78,20,0
.goto Thousand Needles,33.19,28.54,20,0
.goto Thousand Needles,32.53,27.44,20,0
.goto Thousand Needles,32.28,28.67,20,0
.goto Thousand Needles,32.04,31.37,20,0
.goto Thousand Needles,32.86,32.62,20,0
.goto Thousand Needles,33.05,35.42,20,0
.goto Thousand Needles,31.06,36.89
>> 护送|cFF00FF25拉克塔·风歌|r到安全处
>> |cFFFCDC00每当她抵达一处高原2只|r|cFFFF5722恐怖图腾小怪|r|cFFFCDC00就会刷新出来. 尝试待在她前面清怪|r
>> |cFFFCDC00注意!此任务较难. 如果有危险就跑路不要怕护送失败|r
.complete 4904,1 
.target Lakota Windsong
step
.goto Thousand Needles,21.54,32.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25莫特加·火鬃|r
.turnin 5088 ,t Arikara
.target Motega Firemane
step
.goto Thousand Needles,53.95,41.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25多恩·平原行者|r
.turnin 1151 ,t Test of Strength

.target Dorn Plainstalker
.isQuestComplete 1151
.group








step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >> 前往闪光平原
step
.goto Thousand Needles,77.79,77.26
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1110 ,a 火箭车零件
.accept 1111 ,a Wharfmaster Dizzywig
.target Kravel Koalbeard
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r和|cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1104 ,a Salt Flat Venom
.goto Thousand Needles,78.07,77.13
.accept 1105 ,a Hardened Shells
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.17,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.accept 1176 ,a Load Lightening
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛道管理员泽尔林|r
.accept 1175 ,a A Bump in the Road
.target Trackmaster Zherin
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> 前往加基森
step
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fp Gadgetzan >> 开启加基森飞行点
.fly Freewind >> 飞往乱风岗
.target Bulkrek Ragefist
step
.goto Thousand Needles,45.70,50.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_峭壁卫兵图林·长角|r
.turnin 5064 ,t Grimtotem Spying
.turnin 5147 ,t Wanted - Arnak Grimtotem
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,51.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨利亚|r
.turnin 4904 ,t Free at Last
.target Thalia Amberhide
.isQuestComplete 4904
step
.goto Thousand Needles,45.15,50.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫塔尔|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134937:0|t[卷轴]|cRXP_BUY_如果有库存的话|r
.target Montarr
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
.vendor >> |cFF0E8312购买|r|T135495:0|t[笨重的短弓]|cFF0E8312如果有库存的话. 并补充箭矢|r
.collect 3030,1800,4767,1 
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,1800,4767,1 
.target Starn
step
.goto Thousand Needles,45.14,49.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奈瑟|r
.fly Crossroads >> 飞往十字路口
.target Nyse
.zoneskip The Barrens
step
.goto The Barrens,51.10,29.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科兰|r
.accept 1145 ,a The Swarm Grows
.target Korran
step << !Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >> 飞往棘齿城
.target Devrak
step << Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >> 飞往棘齿城
.target Devrak
.isOnQuest 1718
step << Warrior
#completewith IslanderPickUp
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Devrak
.zoneskip Orgrimmar
step << Warrior
#completewith next
.goto Orgrimmar,75.00,34.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1145 ,t The Swarm Grows
.accept 1146 ,a The Swarm Grows
.target Belgrom Rockmaul
step << Warrior
#label IslanderPickUp
.goto Orgrimmar,80.37,32.38
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索瑞克|r
.accept 1718 ,a The Islander
.target Sorek
step << Warrior
#completewith WharfDizzy
.goto Orgrimmar,45.12,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >> 飞往棘齿城
.target Doras
.zoneskip The Barrens
step
#label WharfDizzy
.goto The Barrens,63.35,38.45
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 ,t Wharfmaster Dizzywig
.accept 1112 ,a Parts for Kravel
.target Wharfmaster Dizzywig
step << Shaman
.goto The Barrens,65.83,43.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 220 ,t Call of Water
.accept 63 ,a Call of Water
.target Islen Waterseer
step << Shaman
.goto The Barrens,65.83,43.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_水之先知伊斯伦|r
>> |cFFFCDC00确保你已获取|r|T134754:0|t[|cFF00BCD4水之灵契|r
.turnin 972 ,t 水之灵契
.collect 6637,1 
step << Warrior
#completewith next
.goto The Barrens,65.09,47.81,90,0
.goto The Barrens,68.61,49.16,100 >> 前往勇士岛
step << Warrior
.goto The Barrens,68.62,49.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1718 ,t The Islander
.accept 1719 ,a The Affray
.target Klannoc Macleod
step << Warrior
>>踏上你身后的格栅. 快速击杀一个个上来的|cFFFF5722挑战者|r
>> 一旦出现就击杀|cFFFF5722比格维尔|r
.goto The Barrens,68.59,48.76
.complete 1719,1 
.complete 1719,2 
.mob Big Will
step << Warrior
.goto The Barrens,68.62,49.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰诺克·马克雷德|r
>> |cFFFCDC00这将教会你狂暴姿态|r
.turnin 1719 ,t The Affray
.accept 1791 ,a The Windwatcher
.target Klannoc Macleod
step << Warrior
.goto The Barrens,62.81,37.91,200 >> 回到棘齿城

step << !Mage
.goto The Barrens,63.09,37.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Bragok
.zoneskip Orgrimmar
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8412 >> 学习职业技能
.target Pephredo
.xp <30,1
.xp >32,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8422 >> 学习职业技能
.target Pephredo
.xp <32,1
step << Mage
.goto Orgrimmar,45.43,56.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_霍苏斯|r|cRXP_BUY_.从他那购买2个或更多|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Horthus
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 1760 >> 学习职业技能
.target Ormok
.xp <30,1
.xp >32,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8623 >> 学习职业技能
.target Ormok
.xp <32,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.trainer >> 学习职业技能
.accept 1531 ,a Call of Air
.target Kardris Dreamseeker
step
.goto Orgrimmar,44.70,52.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_克拉文·德洛克|r
>> |cFFFCDC00他在暗影裂口巡逻|r
.accept 1431 ,a Alliance Relations
.target Craven Drok
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 2941 >> 学习职业技能
.target Mirket
.xp <30,1
.xp >32,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 6213 >> 学习职业技能
.target Mirket
.xp <32,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买所有买得起的宠物升级书
.target Kurgul

step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_卡提斯|r|cRXP_BUY_. 从她那购买|r|T135466:0|t[致命魔杖]
.collect 5347,1,6544,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
step
.goto Orgrimmar,75.00,34.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1145 ,t The Swarm Grows
.accept 1146 ,a The Swarm Grows
.target Belgrom Rockmaul
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 7369 >> 学习职业技能
.target Grezz Ragefist
.xp <30,1
.xp >32,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 20658 >> 学习职业技能
.target Grezz Ragefist
.xp <32,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
>> |cFFFCDC00为之后的步骤保留至少1G88Y|r
.train 5384 >> 学习职业技能
.target Ormak Grimshot
.xp <30,1
.xp >32,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
>> |cFFFCDC00为之后的步骤保留至少1G88Y|r
.train 14263 >> 学习职业技能
.target Ormak Grimshot
.xp <32,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
.train 24559 >> 学习宠物技能
.target Xao'tsu
.xp <30,1
step << Hunter
.goto Orgrimmar,78.11,38.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_金索拉|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step << Hunter
.goto Orgrimmar,81.52,19.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳什|r
.train 197 >> 学习双手斧
.target Hanashi
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 602 >> 学习职业技能
.target Ur'kyo
.xp <30,1
.xp >32,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 6077 >> 学习职业技能
.target Ur'kyo
.xp <32,1
step
.goto Orgrimmar,22.50,52.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话奥格瑞玛西门附近的|cRXP_FRIENDLY_科尔丹|r
.turnin 1431 ,t Alliance Relations
.accept 1432 ,a Alliance Relations
.target Keldran
step
#sticky EnterRFK
#completewith
.subzone 491 >> 现在你应该寻找前往剃刀沼泽的副本队伍了
.dungeon RFK
step
.abandon 5151 ,ab Hypercapacitor Gizmo
.isOnQuest 5151
step
.abandon 5088 ,ab Arikara
.isOnQuest 5088
step
.abandon 1150 ,ab Test of Endurance
.isOnQuest 1150
step
.abandon 1151 ,ab Test of Strength
.isOnQuest 1151
step
.goto Orgrimmar,45.12,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Doras
.zoneskip The Barrens
.dungeon RFK
step
#label EnterRFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.89,70.35
.zone 301 >> 进入剃刀沼泽
.dungeon RFK
step
>> 击杀|cRXP_ENEMY_沼泽蝙蝠|r. 拾取|cRXP_LOOT_沼泽蝙蝠的粪便|r
.complete 1109,1 
.mob Kraul Bat
.mob Greater Kraul Bat
.dungeon RFK
step
>> 击杀|cRXP_ENEMY_卡尔加·刺肋|r. 拾取她的|cRXP_LOOT_心|r和|T134939:0|t[|cFF00BCD4小卷轴|r]. 使用此卷轴开启任务
.complete 1102,1 
.collect 17008,1 
.accept 6522 ,a An Unholy Alliance
.mob Charlga Razorflank
.use 17008
.dungeon RFK
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_进口商威利克斯|r
>> |cRXP_WARN_这将开启护送任务|r
.accept 1144 ,a Willix the Importer
.target Willix the Importer
.dungeon RFK
step
>> 护送|cRXP_FRIENDLY_进口商威利克斯|r穿越剃刀沼泽
>> |cRXP_WARN_确保你跟紧|cRXP_FRIENDLY_进口商威利克斯|r否则任务会失败!|r
.complete 1144,1 
.isOnQuest 1144
.target Willix the Importer
.dungeon RFK
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_进口商威利克斯|r
.turnin 1144 ,t Willix the Importer
.target Willix the Importer
.isQuestComplete 1144
.dungeon RFK
step
>> |cRXP_WARN_在副本门口第一个路口左转. 一旦你到达藤蔓的尽头, 跳到你看到|cRXP_ENEMY_阿迦玛|r的地方|r
>> |cRXP_WARN_和队友一起击杀|cRXP_ENEMY_阿迦玛|r清理出一片空地|r
>> |cRXP_WARN_在此处使用|r|T132765:0|t[开孔的箱子]|cRXP_WARN_召唤|cRXP_FRIENDLY_地鼠|r. 找到正确的地点召唤有时候很有技巧|r
>> |cRXP_WARN_使用|r|T135474:0|t[地鼠指挥棒]|cRXP_WARN_让|cRXP_FRIENDLY_地鼠|r挖掘|r|cRXP_LOOT_蓝叶薯|r
>> |cRXP_WARN_一旦挖到了就拾取|cRXP_LOOT_蓝叶薯|r|r
>> |cRXP_WARN_继续使用|r|T135474:0|t[地鼠指挥棒]|cRXP_WARN_让它寻找下一个. 重复此步骤直到你挖到6个|r|cRXP_LOOT_蓝叶薯|r
>> |cRXP_WARN_如果你的|cRXP_FRIENDLY_地鼠|r消失了, _使用|r|T132765:0|t[开孔的箱子]|cRXP_WARN_重新召一只. 注意它只有5次召唤机会|r
.complete 1221,1 
.use 5880 
.use 6684 
.target Snufflenose Gopher
.isOnQuest 1221
.dungeon RFK
step << !Mage
#completewith next
.hs >> 炉石回乱风岗
.use 6948
.dungeon RFK
step << !Mage
.goto Thousand Needles,45.14,49.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奈瑟|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Nyse
.zoneskip Thunder Bluff
.dungeon RFK
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
.dungeon RFK
step
.goto Thunder Bluff,36.01,59.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥尔德·石塔|r
.turnin 1102 ,t A Vengeful Fate
.target Auld Stonespire
.isQuestComplete 1102
.dungeon RFK
step
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Tal
.zoneskip Thunder Bluff,1
.dungeon GNOMER
step
.goto Orgrimmar,76.00,25.39
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺格|r
.accept 2841 ,a Rig Wars
.target Nogg
.dungeon GNOMER
step
.goto Orgrimmar,75.50,25.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索维克|r
.accept 2842 ,a Chief Engineer Scooty
.target Sovik
.dungeon GNOMER
step
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >> 飞往棘齿城
.target Doras
.zoneskip Orgrimmar,1
.dungeon GNOMER
step
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Ratchet >> 飞往棘齿城
.target Tal
.zoneskip Thunder Bluff,1
.dungeon RFK
step
#sticky
#completewith EnterGNOMER
.subzone 133 >> 现在你应该寻找前往诺莫瑞根的副本队伍了
.dungeon GNOMER
step
.goto The Barrens,62.370,37.615
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1221 ,t 蓝叶薯
.target Mebok Mizzyrix
.isQuestComplete 1221
.dungeon RFK
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往荆棘谷
.zoneskip Stranglethorn Vale
.dungeon GNOMER
step
.goto Stranglethorn Vale,27.60,77.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯库提|r
.turnin 2842 ,t Chief Engineer Scooty
.accept 2843 ,a Gnomer-gooooone!
.target Scooty
.timer 9 >> 地精传送器
.dungeon GNOMER
step
.goto Stranglethorn Vale,27.60,77.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯库提|r
.turnin 2843 ,t Gnomer-gooooone!
.target Scooty
.dungeon GNOMER
step
.goto Stranglethorn Vale,27.63,77.55
.goto Eastern Kingdoms,42.75,59.93,30 >> 踏上诺莫瑞根传送器
.dungeon GNOMER
step
#label EnterGNOMER
.goto Eastern Kingdoms,42.64,59.80,20,0
.goto Eastern Kingdoms,42.58,59.82,20,0
.goto Eastern Kingdoms,42.56,59.87,20,0
.goto Eastern Kingdoms,42.51,60.15,20,0
.goto Eastern Kingdoms,42.34,60.18
.zone 226 >> 进入诺莫瑞根
.dungeon GNOMER
step
>> 击杀|cRXP_ENEMY_麦克尼尔·瑟玛普拉格|r. 拾取他的|cRXP_LOOT_保险箱密码|r
>> 在此房间的北部打开|cFFDB2EEF瑟玛普拉格的保险箱|r拾取|cRXP_LOOT_钻探设备蓝图|r
.complete 2841,2 
.complete 2841,1 
.mob Mekgineer Thermaplugg
.dungeon GNOMER
step << !Mage
#completewith next
.hs >> 炉石回乱风岗
.use 6948
.dungeon GNOMER
step << !Mage
.goto Thousand Needles,45.14,49.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奈瑟|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Nyse
.zoneskip Orgrimmar
.dungeon GNOMER
step << !Mage
.goto The Barrens,63.09,37.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Bragok
.zoneskip 392,1
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step
.goto Orgrimmar,76.00,25.39
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺格|r
.turnin 2841 ,t Rig Wars
.target Nogg
.dungeon GNOMER
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 32-35 希尔斯布莱德丘陵/阿拉希盆地
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#next 35-35 闪光平原
step << Mage
#completewith next
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
step << Mage
.goto Undercity,82.79,15.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >> |cRXP_BUY_购买至少2个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Tirisfal Glades >> 乘坐飞艇前往提瑞斯法林地
.zoneskip Tirisfal Glades
step
#completewith StealfromThievesPickup
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >> 进入幽暗城
.zoneskip Undercity
step
#completewith StealfromThievesPickup
.goto Undercity,66.09,20.06,20,0
.goto Undercity,64.37,23.94,20,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >> 乘坐电梯到达幽暗城
step << Hunter
.goto Undercity,57.31,32.77
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿基巴德|r
.train 5011 >> 学习弩
.train 202 >> 学习双手剑
.target Archibald
step << Hunter
.goto Undercity,58.82,32.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_本尼亚·芬奈尔|r|cRXP_BUY_. 购买|r|T134402:0|t[重型箭袋]|cRXP_BUY_以及|r|T135532:0|t[重弩]|cRXP_BUY_并填满箭袋|r
.collect 15809,1,552,1 
.collect 7371,1,552,1 
.collect 3030,2600,552,1 << Hunter 
.money <1.6691
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.0
.target Benijah Fenner
step << Hunter
.goto Undercity,58.82,32.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_本尼亚·芬奈尔|r|cRXP_BUY_. 购买|r|T134402:0|t[重型箭袋]|cRXP_BUY_并填满箭袋|r
.collect 7371,1,552,1 
.target Benijah Fenner
step << Rogue
.goto Undercity,58.65,33.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_吉奥芬·哈特威尔|r|cRXP_BUY_. 从他那购买|r|T135275:0|t[骑士长剑]
.collect 2520,1,552,1 
.money <2.2165
.target Geoffrey Hartwell
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#completewith StealfromThievesPickup
+装备|T135275:0|t[骑士长剑]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Undercity,58.65,33.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_吉奥芬·哈特威尔|r|cRXP_BUY_. 购买|r|T135651:0|t[钝刺]|cRXP_BUY_作为副手武器|r
.collect 2526,1,552,1 
.money <1.7402
.target Geoffrey Hartwell
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith StealfromThievesPickup
+装备|T135651:0|t[钝刺]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
.goto Undercity,48.80,69.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.turnin 1109 ,t Going, Going, Guano!
.target Master Apothecary Faranell
.isQuestComplete 1109
.dungeon RFK
step
.goto Undercity,48.80,69.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.turnin 1109 ,t Going, Going, Guano!
.target Master Apothecary Faranell
.isQuestComplete 1109
.dungeon RFK
step
.goto Undercity,56.24,92.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6522 ,t An Unholy Alliance
.target Varimathras
.isOnQuest 6522
.dungeon RFK
step
#label StealfromThievesPickup
.goto Undercity,64.20,49.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉纳维·卡隆|r
.accept 1164 ,a To Steal From Thieves
.target Genavie Callow
step
.goto Undercity,62.14,44.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤奈斯·伯奇|r
.train 2550 >> 学习烹饪为后续任务做准备
.target Eunice Burch
step
.goto Undercity,62.30,43.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_罗奈尔得·伯奇|r. |cRXP_BUY_从他那购买|r|T134059:0|t[舒心草]
.collect 3713,1 
.target Ronald Burch
step
.goto Undercity,65.99,44.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·蒙泰古|r
.bankwithdraw 3692 >> 从银行取出|T133730:0|t[|cFF00BCD4希尔斯布莱德人类颅骨|r]
.target William Montague
step << !Shaman
#completewith AcceptAgony
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << Shaman
#completewith next
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Sepulcher >> 飞往瑟伯切尔
.target Michael Garrett
.zoneskip Silverpine Forest
step << Shaman
#completewith CallofWaterSVP
.goto Silverpine Forest,42.03,40.66,10 >> 从这里跳上树
step << Shaman
#completewith CallofWaterSVP
.line Silverpine Forest,41.6,41.8,40.3,42.1,38.9,43.3
.goto Silverpine Forest,41.6,41.8,15,0
.goto Silverpine Forest,40.3,42.1,15,0
.goto Silverpine Forest,38.9,43.3,20 >> 跑下山
step << Shaman
.goto Silverpine Forest,38.78,44.25
.use 6637 >> 饮用|T134754:0|t[水之灵契], 然后击杀|cRXP_ENEMY_堕落的小型水之灵体|r并拾取|T132608:0|t[堕落水之魂的护腕]
.complete 63,1 
.unitscan Corrupt Minor Manifestation of Water
step << Shaman
#label CallofWaterSVP
.goto Silverpine Forest,38.26,44.56
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_火盆|r
.turnin 63 ,t Call of Water
.accept 100 ,a Call of Water
step << Shaman
.goto Silverpine Forest,38.78,44.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小型水之灵体|r
>> |cRXP_WARN_它会在一小段剧情后出现|r
.turnin 100 ,t Call of Water
.accept 96 ,a Call of Water
.target Minor Manifestation of Water
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛斯·拉佐克|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Karos Razok
.zoneskip Hillsbrad Foothills
step
.abandon 1144 ,ab Willix the Importer
.isOnQuest 1144
.dungeon RFK
step.
.abandon 1102 ,ab A Vengeful Fate
.isOnQuest 1102
.dungeon RFK
step
.abandon 1221 ,ab 蓝叶薯
.isOnQuest 1221
.dungeon RFK
step
.abandon 1109 ,ab Going, Going, Guano!
.isOnQuest 1109
.dungeon RFK
step
#label next
.goto Hillsbrad Foothills,61.44,19.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r
.accept 509 ,a Elixir of Agony
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,61.86,19.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔隆|r
.accept 676 ,a The Hammer May Fall
.target Tallow
step
.goto Hillsbrad Foothills,62.31,20.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.accept 529 ,a Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,63.24,20.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.accept 533 ,a Infiltration
.target Krusk
step
.goto Hillsbrad Foothills,63.88,19.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_学徒塞万德|r
.accept 552 ,a Helcular's Revenge
.target Novice Thaivand
step << !Warrior
.goto Hillsbrad Foothills,68.42,17.01,50,0
.goto Hillsbrad Foothills,70.31,11.72,50,0
.goto Alterac Mountains,74.67,65.36,50,0
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Alterac Mountains,77.32,63.20
>> 沿着河来回游荡. 击杀|cRXP_ENEMY_钳嘴龟|r. 拾取|T134026:0|t[|cFF00BCD4海龟肉|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step << Warrior
#completewith next
>> 沿着河来回游荡. 击杀|cRXP_ENEMY_钳嘴龟|r. 拾取|T134026:0|t[|cFF00BCD4海龟肉|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step << Warrior
.goto Alterac Mountains,80.49,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1791 ,t The Windwatcher
.accept 1712 ,a Cyclonian
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Alterac Mountains,77.32,63.20,50,0
>> 沿着河来回游荡. 击杀|cRXP_ENEMY_钳嘴龟|r. 拾取|T134026:0|t[|cFF00BCD4海龟肉|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step
.goto Hillsbrad Foothills,62.28,19.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cRXP_FRIENDLY_克里斯多夫·杰弗寇特|r
.accept 7321 ,a Soothing Turtle Bisque
.turnin 7321 ,t Soothing Turtle Bisque
.target Christoph Jeffcoat
step
#completewith next
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,36.02,39.19,150 >> 前往希尔斯布莱德农场
.isOnQuest 529
step
#completewith next
>> 击杀|cRXP_ENEMY_铁匠维林坦|r和|cRXP_ENEMY_希尔斯布莱德见习铁匠|r
.complete 529,1 
.complete 529,2 
.unitscan Blacksmith Verringtan
.mob Hillsbrad Apprentice Blacksmith
step
.goto Hillsbrad Foothills,32.02,45.45
>> 打开|cRXP_PICK_一箱铁材|r获取|T132761:0|t[|cFF00BCD4一箱铁材|r]
.complete 529,3 
step
.goto Hillsbrad Foothills,32.65,45.48,20,0
.goto Hillsbrad Foothills,31.87,46.66,20,0
.goto Hillsbrad Foothills,32.23,45.32
>> 击杀|cRXP_ENEMY_铁匠维林坦|r和|cRXP_ENEMY_希尔斯布莱德见习铁匠|r
.complete 529,1 
.complete 529,2 
.unitscan Blacksmith Verringtan
.mob Hillsbrad Apprentice Blacksmith
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >> 返回塔伦米尔
step
.goto Hillsbrad Foothills,62.31,20.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 529 ,t Battle of Hillsbrad
.accept 532 ,a Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 528
step
.loop 25,Hillsbrad Foothills,47.9,31.5,46.1,33.2,43.5,27.3,43.9,30.2,41.8,30.6,43.6,24.9,47.9,31.5
>> 在达隆山洞穴内外击杀|cRXP_ENEMY_雪怪|r. 拾取|cFF00BCD4赫尔库拉的魔棒|r
>> |T135471:0|t[赫尔库拉的魔棒]|cRXP_WARN_掉率非常低|r
.complete 552,1 
.mob Cave Yeti
.mob Ferocious Yeti
step
#completewith next
#label Council
.goto Hillsbrad Foothills,29.63,42.33
>> 击杀|cRXP_ENEMY_希尔斯布莱德议员|r
>> |cRXP_WARN_注意他们会施放冰霜新星和寒冰箭|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
>> 在希尔斯布莱德城镇大厅内击杀|cRXP_ENEMY_波恩塞德镇长|r, 然后拾取|cFF00BCD4希尔斯布莱德城镇文档|r并烧毁|cRXP_PICK_希尔斯布莱德宣言|r
.complete 532,1 
.goto Hillsbrad Foothills,29.67,41.64
.complete 532,4 
.goto Hillsbrad Foothills,29.52,41.53
.complete 532,3 
.goto Hillsbrad Foothills,29.73,41.75
.isQuestTurnedIn 529
.mob Magistrate Burnside
step
.goto Hillsbrad Foothills,29.63,42.33
>> 完成击杀|cRXP_ENEMY_希尔斯布莱德议员|r
>> |cRXP_WARN_注意他们会施放冰霜新星和寒冰箭|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >> 返回塔伦米尔
step
#requires Council
.goto Hillsbrad Foothills,62.31,20.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 532 ,t Battle of Hillsbrad
.accept 539 ,a Battle of Hillsbrad
.target High Executor Darthalia
.isQuestTurnedIn 529
step
.goto Hillsbrad Foothills,63.88,19.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_学徒塞万德|r
.turnin 552 ,t Helcular's Revenge
.target Novice Thaivand
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.55,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯伦·苏萨隆|r
.vendor >> |cRXP_BUY_请把你的箭袋填满|r
.target Kayren Soothallow
step
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,26.95,59.55,100 >> 前往碧玉矿洞
.isOnQuest 546
step
#completewith Hacket
>> 击杀|cRXP_ENEMY_希尔斯布莱德人类|r. 拾取|cFF00BCD4头骨|r
.complete 546,1 
.isOnQuest 546
step
#completewith next
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
>> 击杀|cRXP_ENEMY_矿工哈克特|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,31.21,56.01
>> 击杀|cRXP_ENEMY_工头邦德斯|r和|cRXP_ENEMY_希尔斯布莱德矿工|r
>> |cRXP_ENEMY_工头邦德斯|r|cFFFCDC00位于矿洞最底层的中部|r
.complete 539,1 
.complete 539,2 
.isQuestTurnedIn 528
step
#label Hacket
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
>> 击杀|cRXP_ENEMY_矿工哈克特|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,29.69,58.03,15,0
.goto Hillsbrad Foothills,28.17,57.27,15,0
.goto Hillsbrad Foothills,26.48,58.74,15,0
.goto Hillsbrad Foothills,27.39,59.38,15,0
.goto Hillsbrad Foothills,27.48,57.60,15,0
.goto Hillsbrad Foothills,28.06,55.12,15,0
.goto Hillsbrad Foothills,28.33,53.10,15,0
.goto Hillsbrad Foothills,31.15,54.73
>> 完成击杀|cRXP_ENEMY_希尔斯布莱德人类|r. 拾取|cFF00BCD4头骨|r
.complete 546,1 
.isQuestTurnedIn 528
step
.goto Alterac Mountains,46.51,81.74,50,0
.goto Alterac Mountains,48.86,82.87,50,0
.goto Alterac Mountains,48.78,80.96,50,0
.goto Alterac Mountains,56.38,66.23,50,0
.goto Alterac Mountains,57.85,69.74,50,0
.goto Alterac Mountains,59.14,69.36,50,0
.goto Alterac Mountains,59.53,66.50,50,0
.goto Alterac Mountains,58.30,66.67,50,0
.goto Alterac Mountains,48.86,82.87
>> 击杀|cRXP_ENEMY_辛迪加窃贼|r和|cRXP_ENEMY_辛迪加劫匪|r. 拾取|cFF00BCD4辛迪加信件|r
.complete 533,1 
.mob Syndicate Footpad
.mob Syndicate Thief
step
.goto Hillsbrad Foothills,62.11,19.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 546 ,t Souvenirs of Death
.target Deathguard Samsa
step
.goto Hillsbrad Foothills,62.31,20.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 567 ,t Dangerous!
.turnin 539 ,t Battle of Hillsbrad
.accept 541 ,a Battle of Hillsbrad
.target High Executor Darthalia
.group
step
.goto Hillsbrad Foothills,62.31,20.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 567 ,t Dangerous!
.turnin 539 ,t Battle of Hillsbrad
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,63.24,20.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.turnin 533 ,t Infiltration
.target Krusk
step << Hunter
.goto Hillsbrad Foothills,62.55,19.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯伦·苏萨隆|r
.vendor >> |cRXP_BUY_请把你的箭袋填满|r
.target Kayren Soothallow
step
.goto Hillsbrad Foothills,62.79,19.02
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step
#completewith RaisingSpirits
.skill herbalism,70 >> 如果你的炼金术达到了125, 就获取2个|T134181:0|t[跌打草]和2个|T134412:0|t[石南草]
>> |cRXP_WARN_如果你的炼金术快到125了就收集足够的材料练到125. 否则的话就跳过此步. 为苦楚药剂任务线保留2个石南草和2个跌打草|r
.collect 2453,2 
.collect 2450,2 
.skill alchemy,<125,1
step
.goto Hillsbrad Foothills,64.67,60.01,20,0
.goto Hillsbrad Foothills,63.02,61.19,20,0
.goto Hillsbrad Foothills,63.45,62.50,20,0
.goto Hillsbrad Foothills,64.68,62.01
>> 在奈杉德哨岗附近拾取|cRXP_PICK_白蘑菇|r以获取|cFF00BCD4泥头花|r
.complete 509,1 
step
.goto Arathi Highlands,20.19,29.54
.zone Arathi Highlands >> 前往阿拉希高地
.zoneskip Arathi Highlands
step
.goto Arathi Highlands,31.91,41.15,50,0
.goto Arathi Highlands,35.53,40.93,50,0
.goto Arathi Highlands,35.51,44.26,50,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,31.08,43.68,12,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,35.51,44.26
>> 在博德戈尔及其周边击杀|cRXP_ENEMY_石拳巨魔|r和|cRXP_ENEMY_石拳执行者|r
.complete 676,1 
.complete 676,2 
.mob Boulderfist Ogre
.mob Boulderfist Enforcer
step
.goto Arathi Highlands,54.20,38.20
>> 击杀|cRXP_ENEMY_马塞尔|r. 拾取他的|cFF00BCD4头|r
>> |cRXP_WARN_他会在进战斗几秒后使用盾墙|r
.complete 1164,2 
.unitscan Marcel Dabyrie
step
.goto Arathi Highlands,56.40,36.10
>> 击杀|cRXP_ENEMY_科娜塔|r. 拾取她的|cFF00BCD4头|r
>> |cRXP_WARN_这一步可能会有点难. 请一定注意安全不要噶了|r << Rogue/Warrior/Shaman
.complete 1164,1 
.unitscan Kenata Dabyrie
step
.goto Arathi Highlands,56.50,38.70
>> 击杀|cRXP_ENEMY_法迪尔|r. 拾取他的|cFF00BCD4头|r
>> |cRXP_WARN_注意他的高伤害毒药和|T132152:0|t[痛击]技能|r
.complete 1164,3 
.unitscan Fardel Dabyrie
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >> 前往落锤镇
step
.goto Arathi Highlands,73.10,32.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤尔达|r
.fp Hammerfall >> 开启落锤镇飞行点
.target Urda
step
.goto Arathi Highlands,74.20,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 676 ,t The Hammer May Fall
.accept 677 ,a Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,72.90,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈莫尔|r
.accept 655 ,a Hammerfall
.target Gor'mul
step
.goto Arathi Highlands,73.84,32.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板埃德瓦|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Adegwa
step
.goto Arathi Highlands,74.60,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 655 ,t Hammerfall
.accept 672 ,a Raising Spirits
.accept 671 ,a Foul Magics
.target Tor'gan
step
#completewith WitherbarkTrolls
+注意|cFFFF5722屠戮者尼玛尔|r (稀有). 他会掉落强力装绑
.unitscan Nimar the Slayer
step
#completewith next
.goto Arathi Highlands,66.68,62.96,150 >> 前往枯木村
step
#label WitherbarkTrolls
.loop 25,Arathi Highlands,71.7,60.3,73.4,65.2,70.6,69.3,68.3,74.5,66.2,69.2,64.8,73.1,61.3,72.4,63.3,67.7,66.5,63.7,71.7,60.3
>> 向东南前往枯木村, 然后击杀|cRXP_ENEMY_枯木巫医|r, |cRXP_ENEMY_枯木猎头者|r, 和|cRXP_ENEMY_枯木掷斧者|r
>> |cRXP_WARN_这个任务可能会很难, 请万分小心不要噶了|r
.complete 677,3 
.complete 677,2 
.complete 677,1 
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step
#completewith xpgate
>> 击杀所有你遇到的|cRXP_ENEMY_高地迅猛龙|r. 拾取|cFF00BCD4眼睛|r
>> |cRXP_WARN_注意|r|cRXP_ENEMY_高地长尾龙|r, |cRXP_WARN_它们真的会|r|T132152:0|t[痛击]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
.loop 25,Arathi Highlands,34.07,28.35,33.36,26.41,31.79,26.47,30.83,27.49,31.01,29.58,32.32,30.87,33.36,30.72,34.07,28.35
>> 击杀|cRXP_ENEMY_辛迪加成员|r. 拾取|cFF00BCD4护符|r
>> |cRXP_WARN_小心辛迪加路霸; 他们潜行在农场周边, 并且会在你风筝/逃跑时背刺你|r
.complete 671,1 
.mob Syndicate Pathstalker
.mob Syndicate Mercenary
.mob Syndicate Highwayman
step
#label xpgate
.goto Arathi Highlands,33.8,31.8
.xp 34+31400>> 刷到34级半
step
.goto Arathi Highlands,59.40,42.61
>> 完成击杀|cRXP_ENEMY_高地迅猛龙|r. 拾取|cFF00BCD4眼睛|r
>> |cRXP_WARN_注意|r|cRXP_ENEMY_高地长尾龙|r, |cRXP_WARN_它们真的会|r|T132152:0|t[痛击]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
.goto Arathi Highlands,74.24,33.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_杜拉姆法尔|r处
.turnin 677 ,t Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,74.72,36.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_托尔甘|r处
.turnin 671 ,t Foul Magics
.turnin 672 ,t Raising Spirits
.accept 674 ,a Raising Spirits
.target Tor'gan
step
#label RaisingSpirits
.goto Arathi Highlands,72.63,33.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_戈莫尔|r处
.turnin 674 ,t Raising Spirits
.accept 675 ,a Raising Spirits
.target Gor'mul
step
.goto Arathi Highlands,74.72,36.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 675 ,t Raising Spirits
.target Tor'gan
step
#completewith next
.goto Arathi Highlands,73.10,32.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤尔达|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Urda
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到处|cRXP_FRIENDLY_药剂师林度恩|r
.turnin 509 ,t Elixir of Agony
.accept 513 ,a Elixir of Agony
.target Apothecary Lydon
step << Mage
#completewith Thieves
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
.itemcount 17031,1
step
#completewith next
.goto Hillsbrad Foothills,60.14,18.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fly Undercity >> 飞往幽暗城
.target Zarise
.zoneskip Undercity
step
#label Thieves
.goto Undercity,63.83,49.45
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉纳维·卡隆|r
.turnin 1164 ,t To Steal From Thieves
.target Genavie Callow
step
#completewith next
.skill alchemy,100 >> 如果准备好了物资就把炼金术练到125. 否则的话就跳过此步
.skill alchemy,125,1
step
.goto Undercity,64.12,50.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·杜安|r
.vendor >> 为苦楚药剂任务线购买|T132793:0|t[铅瓶]
>> |cRXP_WARN_如果你的炼金术接近125并且有多余的草药, 就购买足够多的|r|T132793:0|t[铅瓶]|cRXP_WARN_把炼金术提升到125. 否则的话就跳过此步|r
.collect 3372,1 
.target Felicia Doan
.skill alchemy,100
.isOnQuest 513
step
#completewith next
.skill alchemy,125 >> 为苦楚药剂任务线制作1瓶|T134858:0|t[强力巨魔之血药水]
>> |cRXP_WARN_这是一种需求炼金术125的配方. 如果你不会就跳过此步. 你会在稍后学会|r
.collect 3388,1 
.isOnQuest 513
step
#ah
.goto Undercity,64.20,49.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 3388,1 >> |cRXP_BUY_为苦楚药剂任务线从拍卖行购买一瓶|r|T134858:0|t[强力巨魔之血药水]
.collect 5996,4 >> |cRXP_BUY_购买3瓶|r|T134797:0|t[水下呼吸药剂]
.target Auctioneer Rhyker
step
.goto Undercity,47.77,73.34
.skill alchemy,125 >> 为苦楚药剂任务线制作1瓶|T134858:0|t[强力巨魔之血药水]
*|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_对话楼梯边的|r|cRXP_FRIENDLY_赫伯特·哈尔希医生|r|cRXP_WARN_学习此配方|r
.collect 3388,1 
.target Doctor Herbert Halsey
.isOnQuest 513
step
#ah
.goto Undercity,48.60,69.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.turnin 513 ,t Elixir of Agony
.accept 515 ,a Elixir of Agony
.target Master Apothecary Faranell
step
.goto Undercity,48.60,69.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.turnin 513 ,t Elixir of Agony
.accept 515 ,a Elixir of Agony
.target Master Apothecary Faranell
.skill alchemy,125
step
.goto Undercity,48.80,69.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.turnin 513 ,t Elixir of Agony
.target Master Apothecary Faranell
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 11554 >> 学习职业技能
.target Angela Curthas
.xp <34,1
.xp >36,1
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 1680 >> 学习职业技能
.target Angela Curthas
.xp <36,1
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 8696 >> 学习职业技能
.target Carolyn Ward
.xp <34,1
.xp >36,1
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 8691 >> 学习职业技能
.target Carolyn Ward
.xp <36,1
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 7648 >> 学习职业技能
.target Richard Kerwin
.xp <34,1
.xp >36,1
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 2362 >> 学习职业技能
.target Richard Kerwin
.xp <36,1
step << Mage
.goto Undercity,85.15,10.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 8492 >> 学习职业技能
.target Anastasia Hartwell
.xp <34,1
.xp >36,1
step << Mage
.goto Undercity,85.15,10.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 8495 >> 学习职业技能
.target Anastasia Hartwell
.xp <36,1
step << Priest
.goto Undercity,47.55,18.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
.train 2767 >> 学习职业技能
.target Father Lazarus
.xp <34,1
.xp >36,1
step << Priest
.goto Undercity,47.55,18.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
.train 15264 >> 学习职业技能
.target Father Lazarus
.xp <36,1
step
#completewith next
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝瓦里尔|r和|cRXP_FRIENDLY_魔导师沃迪恩·虚无之光|r
.accept 556 ,a Stone Tokens
.goto Hillsbrad Foothills,61.60,20.86
.accept 544 ,a Prison Break In
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
#completewith next
+|cRXP_WARN_这个任务可能会很难, 请万分小心不要噶了!|r
step
#completewith Belamoore
>> 击杀所有的|cRXP_ENEMY_达拉然人类|r. 拾取|cFF00BCD4用旧的石雕|r
>> |cRXP_WARN_小心|cRXP_ENEMY_达拉然持盾守卫|r|cRXP_WARN_闪烁的|r|T136173:0|t[中伤之盾效果]|cRXP_WARN_Buff. 该效果持续8s并会对近战攻击造成85点反伤|r << !Mage/!Priest/!Warlock
.complete 556,1 
step
.goto Alterac Mountains,20.14,84.28,20,0
.goto Alterac Mountains,20.33,86.31,12,0
.goto Alterac Mountains,19.93,85.94
>> 击杀|cRXP_ENEMY_瑞克特尔|r, |cRXP_ENEMY_奥丽娜|r和|cRXP_ENEMY_德莫特|r. 拾取|cFF00BCD4血石|r
.complete 544,2 
.complete 544,3 
.complete 544,1 
.mob Ricter
.mob Alina
.mob Dermot
step
#completewith next
.goto Alterac Mountains,18.70,84.38,10 >> 进入西部的建筑
step
#label Belamoore
.goto Alterac Mountains,18.29,82.83,8,0
.goto Alterac Mountains,17.65,84.11,8,0
.goto Alterac Mountains,17.76,83.18
>> 在房屋2楼击杀|cRXP_ENEMY_克甘达玛|r. 拾取他的|cFF00BCD4血石|r
>> |cRXP_WARN_小心|r|cRXP_ENEMY_典狱官贝拉摩尔|r|cRXP_WARN_. 先击杀她再攻击|r|cRXP_ENEMY_克甘达玛|r
.complete 544,4 
.mob Kegan Darkmar
.mob Warden Belamoore
step
.loop 25,Alterac Mountains,20.1,86.2,17.9,83.0,10.7,76.6,19.4,75.6,20.1,86.2,17.9,83.0,10.7,76.6,19.4,75.6,20.1,86.2
>> 完成击杀|cRXP_ENEMY_达拉然人类|r. 拾取|cFF00BCD4用旧的石雕|r
>> |cRXP_WARN_小心|cRXP_ENEMY_达拉然持盾守卫|r|cRXP_WARN_闪烁的|r|T136173:0|t[中伤之盾效果]|cRXP_WARN_Buff. 该效果持续8s并会对近战伤害造成85点反伤|r << !Mage/!Priest/!Warlock
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
.mob Dalaran Worker
.mob Dalaran Summoner
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >> 返回塔伦米尔
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝瓦里尔|r和|cRXP_FRIENDLY_魔导师沃迪恩·虚无之光|r
.turnin 556 ,t Stone Tokens
.goto Hillsbrad Foothills,61.60,20.86
.turnin 544 ,t Prison Break In
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.goto Hillsbrad Foothills,62.76,20.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亨伯特|r
.accept 547 ,a Humbert's Sword
.target Deathguard Humbert
.group
step
.loop 25,Hillsbrad Foothills,55.76,61.82,56.50,64.70,58.36,65.49,59.20,70.58,61.01,73.35,62.30,75.68,65.17,77.36,66.66,79.86,66.81,84.29,67.15,86.84,66.11,85.69,64.26,78.48,61.83,77.51,57.84,71.98,57.74,69.23,55.05,64.45,53.69,64.22,54.08,62.05,55.76,61.82
>> 前往南海镇东部海滩, 击杀所有的|cRXP_ENEMY_刺脊娜迦|r. 拾取|cFF00BCD4鳞片|r
>> |cRXP_WARN_在你完成这步时确保你待在河的东边并时刻注意|r|cFFEB144C南海镇卫兵|r
.complete 515,3 
.unitscan Southshore Guard << Horde
.mob Daggerspine Siren
.mob Daggerspine Shorehunter
.mob Daggerspine Shorestalker
.skill alchemy,125
step
#ah
.loop 25,Hillsbrad Foothills,55.76,61.82,56.50,64.70,58.36,65.49,59.20,70.58,61.01,73.35,62.30,75.68,65.17,77.36,66.66,79.86,66.81,84.29,67.15,86.84,66.11,85.69,64.26,78.48,61.83,77.51,57.84,71.98,57.74,69.23,55.05,64.45,53.69,64.22,54.08,62.05,55.76,61.82
>> 前往南海镇东部海滩, 然后击杀|cRXP_ENEMY_刺脊娜迦|r. 拾取|cFF00BCD4鳞片|r
>> |cRXP_WARN_在你完成这步时确保你待在河的东边并时刻注意|r|cFFEB144C南海镇卫兵|r << Horde
.complete 515,3 
.unitscan Southshore Guard << Horde
.mob Daggerspine Siren
.mob Daggerspine Shorehunter
.mob Daggerspine Shorestalker
step
.goto Hillsbrad Foothills,50.63,66.44,0
.loop 25,Hillsbrad Foothills,47.97,63.97,45.98,63.38,43.98,66.10,40.63,67.95,35.71,66.97,32.85,69.86,30.82,72.47,25.74,69.92,24.96,64.40,22.56,64.04,24.32,66.28,24.70,71.38,27.79,73.18,30.12,74.19,33.31,72.96,34.83,69.75,39.63,70.37,42.98,69.70,43.75,68.47,45.28,67.92,46.73,65.07,47.97,63.97
>> 游到南海镇西边的海滩, |cRXP_WARN_确保你在任何时候都远离南海镇,|r 然后击杀|cRXP_ENEMY_碎鳍鱼人|r. 拾取|cFF00BCD4眼睛|r << Horde
>> |cRXP_WARN_在你完成这步时确保你和南海镇隔着一座小山丘. 有一个|cFFEB144C南海镇卫兵|r在码头西南角巡逻, 非常接近鱼人最东边的刷新点, 并且她的视野范围非常广|r << Horde
>> |cRXP_WARN_小心|r|cRXP_ENEMY_刺脊猎潮者|r|cRXP_WARN_的冰霜新星, 尤其是在接近营地的时候.|r
.complete 515,4 
.unitscan Southshore Guard << Horde
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
.mob Torn Fin Coastrunner
.mob Torn Fin Muckdweller
.skill alchemy,125
step
#ah
.goto Hillsbrad Foothills,50.63,66.44,0
.loop 25,Hillsbrad Foothills,47.97,63.97,45.98,63.38,43.98,66.10,40.63,67.95,35.71,66.97,32.85,69.86,30.82,72.47,25.74,69.92,24.96,64.40,22.56,64.04,24.32,66.28,24.70,71.38,27.79,73.18,30.12,74.19,33.31,72.96,34.83,69.75,39.63,70.37,42.98,69.70,43.75,68.47,45.28,67.92,46.73,65.07,47.97,63.97
>> 游到南海镇西边的海滩, |cRXP_WARN_确保你在任何时候都远离南海镇,|r 然后击杀|cRXP_ENEMY_碎鳍鱼人|r. 拾取|cFF00BCD4眼睛|r << Horde
>> |cRXP_WARN_在你完成这步时确保你和南海镇隔着一座小山丘. 有一个|cFFEB144C南海镇卫兵|r在码头西南角巡逻, 非常接近鱼人最东边的刷新点, 并且她的视野范围非常广|r << Horde
>> |cRXP_WARN_小心|r|cRXP_ENEMY_刺脊猎潮者|r|cRXP_WARN_的冰霜新星, 尤其是在接近营地的时候.|r
.complete 515,4 
.unitscan Southshore Guard << Horde
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
.mob Torn Fin Coastrunner
.mob Torn Fin Muckdweller
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_药剂师林度恩|r处
.turnin 515 ,t Elixir of Agony
.target Apothecary Lydon
.isQuestComplete 515
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_药剂师林度恩|r
.accept 517 ,t Elixir of Agony
.target Apothecary Lydon
.isQuestTurnedIn 515
.group
step
#completewith DunGarok
.goto Hillsbrad Foothills,70.76,78.14,150 >> 前往丹加洛克
.group
step
#completewith next
>> 拾取|cFFDB2EEF矿工烈酒|r. 它在堡垒里有多处刷新地点
.complete 517,1 
.isOnQuest 517
.group 5
step
#label DunGarok
.goto Hillsbrad Foothills,71.60,80.0,0
.loop 25,Hillsbrad Foothills,71.26,75.17,69.11,75.18,68.59,78.47,69.66,78.68,71.01,79.09,70.57,79.70,71.48,81.57,71.72,80.64,71.98,81.24,72.57,80.52,72.20,80.00,72.87,79.79,72.40,79.28,71.84,78.26,71.32,78.69,71.26,75.17
>> 击杀|cRXP_ENEMY_丹加洛克士兵|r和|cRXP_ENEMY_达伦·铁山上尉|r. 拾取|cFF00BCD4亨伯特的长剑|r
>> |cRXP_WARN_注意!在你进出丹加洛克的路上有多组巡逻怪|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 541,4 
.complete 547,1 
.unitscan Captain Ironhill
.mob Dun Garok Mountaineer
.mob Dun Garok Rifleman
.mob Dun Garok Priest
.group 5
step
.loop 25,Hillsbrad Foothills,71.26,75.17,69.11,75.18,68.59,78.47,69.66,78.68,71.01,79.09,70.57,79.70,71.48,81.57,71.72,80.64,71.98,81.24,72.57,80.52,72.20,80.00,72.87,79.79,72.40,79.28,71.84,78.26,71.32,78.69,71.26,75.17
>> 拾取|cFFDB2EEF矿工烈酒|r. 它在堡垒里有多处刷新地点
>> |cRXP_WARN_注意!在你进出丹加洛克的路上有多组巡逻怪|r
.complete 517,1 
.isOnQuest 517
.group 5
step
.goto Hillsbrad Foothills,62.76,20.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亨伯特|r
.turnin 547 ,t Humbert's Sword
.target Deathguard Humbert
.group
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r
.turnin 517 ,t Elixir of Agony
.accept 524 ,a Elixir of Agony
.target Apothecary Lydon
.isOnQuest 517
.group
step
.goto Hillsbrad Foothills,62.31,20.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 541 ,t Battle of Hillsbrad
.accept 550 ,a Battle of Hillsbrad
.target High Executor Darthalia
.group
step
.goto Hillsbrad Foothills,62.80,18.80
>> 爬上旅店2楼并点击|cRXP_PICK_布满灰尘的毯子|r
.turnin 524 ,t Elixir of Agony
.isQuestTurnedIn 517
.group
step
#completewith next
.goto Hillsbrad Foothills,60.14,18.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fly Undercity >> 飞往幽暗城
.target Zarise
.zoneskip Undercity
.isOnQuest 550
.group
step
.goto Undercity,56.24,92.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 550 ,t Battle of Hillsbrad
.target Varimathras
.isOnQuest 550
.group
step << Druid
#completewith DruidTraining4
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 1823 >> 学习职业技能
.target Loganaar
.xp <34,1
.xp >36,1
step << Druid
#label DruidTraining4
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9005 >> 学习职业技能
.target Loganaar
.xp <36,1
step
#completewith next
.hs >> 炉石回乱风岗
.use 6948
step
.goto Thousand Needles,46.07,51.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板埃比克瓦|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Abeqwa
step
.abandon 541 , Battle of Hillsbrad
.isOnQuest 541
step
.abandon 547 , Humbert's Sword
.isOnQuest 547
step
.abandon 517 , Elixir of Agony
.isOnQuest 517
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 35-35 闪光平原
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#next 35-37 凄凉之地 部落
step
.goto Thousand Needles,45.70,50.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_峭壁看守者长角|r
.accept 5361 ,a Family Tree
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.10,51.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳恩·峭壁信使|r
.accept 1197 ,a The Sacred Flame
.target Rau Cliffrunner
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
.vendor >> |cFF0E8312购买|r|T135495:0|t[笨重的短弓]|cFF0E8312如果有库存的话|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25斯塔恩|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,2600,1146,1 
.target Starn
step
.goto Thousand Needles,45.15,50.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫塔尔|r
.vendor >> |cRXP_BUY_购买|r|T134831:0|t[治疗药水]|cRXP_BUY_和|r|T134937:0|t[卷轴]|cRXP_BUY_如果有库存的话|r
.target Montarr
step
#completewith Clovenhoof2
.goto Thousand Needles,44.12,37.22,20 >> 进入洞穴
step
#completewith Clovenhoof2
.goto Thousand Needles,44.44,36.32,12,0
.goto Thousand Needles,43.14,35.19,12,0
.goto Thousand Needles,42.11,34.54,12,0
.goto Thousand Needles,42.01,31.47,20 >> 前往|cFFDB2EEF古代火盆|r处
step
#label Clovenhoof2
.goto Thousand Needles,42.01,31.47
>> 打开|cFFDB2EEF古代火盆|r.拾取|cFF00BCD4裂开的蹄子|r
>> |cFFFCDC00小心! 火盆由两名30级的|cFFFF5722加拉克烈焰守卫|r守护|r
.complete 1197,1 
.mob Galak Flame Guard
step << Shaman
#completewith next
.goto Thousand Needles,54.7,44.4,30 >> 从这上去
step << Shaman
.goto Thousand Needles,53.5,42.7
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·云眼|r
>> |cRXP_WARN_提交此任务会获得+40%移速和30%攻速的Buff, 持续1小时|r
.turnin 1531 ,t Call of Air
.target Prate Cloudseer
step
.goto Thousand Needles,67.58,63.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩克塔·克林|r
.turnin 1146 ,t The Swarm Grows
.accept 1147 ,a The Swarm Grows
.target Moktar Krin
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1112 ,t Parts for Kravel
.accept 1114 ,a Delivery to the Gnomes
.accept 1110 ,a 火箭车零件
.target Kravel Koalbeard
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r和|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1114 ,t Delivery to the Gnomes
.accept 1104 ,a Salt Flat Venom
.accept 1115 ,a The Rumormonger
.goto Thousand Needles,78.07,77.13
.accept 1105 ,a Hardened Shells
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.18,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.accept 1176 ,a Load Lightening
.target Pozzik
step
.goto Thousand Needles,81.64,77.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛道管理员泽尔林|r
.accept 1175 ,a A Bump in the Road
.target Trackmaster Zherin
step
.goto Thousand Needles,69.66,85.97,150 >> 前往The Rustmaul挖掘场, 顺路刷怪
.isOnQuest 1147
step
#completewith next
>> 击杀|cRXP_ENEMY_异种搜寻者|r, |cRXP_ENEMY_异种筑巢蝎|r和|cRXP_ENEMY_异种入侵者|r
>> |cFFFCDC00小心! 它们在被攻击后会呼叫帮助, 你可能会无意中引到附近的多只小怪|r
.complete 1147,3 
.complete 1147,1 
.complete 1147,2 
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
step
.loop 25,Thousand Needles,67.27,85.30,68.14,85.96,68.03,86.93,68.08,88.54,69.48,89.64,70.31,87.64,71.09,86.23,71.34,84.11,70.51,82.80,68.52,80.87,67.45,82.28,67.27,85.30
>> 拾取|cRXP_ENEMY_异种蝎|r获得|T135034:0|t[|cFF00BCD4破碎的异种蝎壳|r]. 使用并接受任务
.collect 5877,1,1148,1 
.accept 1148 ,a Parts of the Swarm
step
.loop 25,Thousand Needles,67.27,85.30,68.14,85.96,68.03,86.93,68.08,88.54,69.48,89.64,70.31,87.64,71.09,86.23,71.34,84.11,70.51,82.80,68.52,80.87,67.45,82.28,67.27,85.30
>> 击杀|cRXP_ENEMY_异种入侵者|r, |cRXP_ENEMY_异种搜寻者|r和|cRXP_ENEMY_异种筑巢蝎|r. 拾取|cFF00BCD4心脏|r, |cFF00BCD4爪子|r和|cFF00BCD4蝎壳|r
>> |cFFFCDC00小心! 它们在被攻击后会呼叫帮助, 你可能会无意中引到附近的多只小怪|r
.complete 1147,3 
.complete 1147,1 
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
step
#completewith ShimmeringFlatsLoop
+|cRXP_WARN_小心!|r|cRXP_ENEMY_盐湖秃鹰|r|cRXP_WARN_会斩杀. 保持20%+的血量!|r
step
#completewith next
.goto Thousand Needles,67.58,63.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_摩克塔·克林|r处
.turnin 1147 ,t The Swarm Grows
.target Moktar Krin
step
#label ShimmeringFlatsLoop
>> |cRXP_WARN_环绕闪光平原, 直到完成所有的任务目标|r
>> 击杀|cRXP_ENEMY_盐湖食腐鹫|r和|cRXP_ENEMY_盐湖秃鹰|r. 拾取|cRXP_LOOT_骨头|r
>> 击杀|cRXP_ENEMY_盐壳龟|r, |cRXP_ENEMY_盐壳掘地龟|r和|cRXP_ENEMY_盐壳钳嘴龟|r. 拾取|cRXP_LOOT_龟壳|r
>> 击杀|cRXP_ENEMY_恐蝎劫夺者|r和|cRXP_ENEMY_恐蝎|r. 拾取|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_盐石蜥蜴|r, |cRXP_ENEMY_盐石水晶蜥蜴|r和|cRXP_ENEMY_盐石凝视者|r
>> 打开|cRXP_PICK_火箭车碎片|r. 拾取|cRXP_LOOT_火箭车零件|r
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
.mob Scorpid Reaver
.mob Scorpid Terror
step
.goto Thousand Needles,67.58,63.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_摩克塔·克林|r处
.turnin 1147 ,t The Swarm Grows
.target Moktar Krin
step
.goto Thousand Needles,77.79,77.26
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_克拉维尔·浓须|r处
.turnin 1110 ,t 火箭车零件
.accept 5762 ,a Hemet Nesingwary
.target Kravel Koalbeard
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r和|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1104 ,t Salt Flat Venom
.goto Thousand Needles,78.07,77.13
.turnin 1105 ,t Hardened Shells
.accept 1106 ,a Martek the Exiled
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
#ah
.goto Thousand Needles,78.14,77.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1107 ,a in Encrusted Tail Fins
.target Wizzle Brassbolts
.group
step
.goto Thousand Needles,80.18,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1176 ,t Load Lightening
.accept 1178 ,a Goblin Sponsorship
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛道管理员泽尔林|r
.turnin 1175 ,t A Bump in the Road
.target Trackmaster Zherin
step
#completewith SetHSCampT
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> 前往加基森
step
#completewith next
.goto Tanaris,51.61,25.44
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly 乱风岗 >> 飞往乱风岗
.target Bulkrek Ragefist
.zoneskip The Barrens
.isQuestComplete 1197
step
.goto Thousand Needles,46.10,51.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_劳恩·峭壁信使|r
.turnin 1197 ,t The Sacred Flame
.target Rau Cliffrunner
.isQuestComplete 1197
step
#completewith SetHSCampT
.goto Thousand Needles,45.14,49.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奈瑟|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Nyse
.subzoneskip 484,1
step
#completewith next
.goto Tanaris,51.61,25.44
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Bulkrek Ragefist
.zoneskip The Barrens
step
#label SetHSCampT
.goto The Barrens,45.60,59.0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
.home >> 绑定炉石到陶拉祖营地
.target Innkeeper Byula
step
#completewith next
.goto The Barrens,44.45,59.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Crossroads >> 飞往十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.10,29.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科兰|r
.turnin 1148 ,t Parts of the Swarm
.accept 1184 ,a Parts of the Swarm
.target Korran
step
#completewith next
.goto The Barrens,51.50,30.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >> 飞往棘齿城
.target Devrak
step
.goto The Barrens,62.68,37.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兹科尔|r
.bankdeposit 4306,15 >> 存放15块|T132905:0|t[丝绸]到银行
.target Zikkel
step
.goto The Barrens,62.68,36.23
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹鲁维|r
.turnin 1178 ,t Goblin Sponsorship
.accept 1180 ,a Goblin Sponsorship
.target Gazlowe
step << Shaman
.goto The Barrens,65.83,43.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 96 ,t Call of Water
.target Islen Waterseer
step
.goto The Barrens,63.30,38.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 ,t Wharfmaster Dizzywig

.target Wharfmaster Dizzywig
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往荆棘谷
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,26.30,73.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员罗兹基尔|r
.turnin 1180 ,t Goblin Sponsorship
.accept 1181 ,a Goblin Sponsorship
.target Wharfmaster Lozgil
step << Warrior/Shaman
.goto Stranglethorn Vale,28.34,75.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_萨瑞娜·克罗姆温德|r|cRXP_BUY_. 购买|r|T135158:0|t[大棍子]|cRXP_BUY_或者|r|T135144:0|t[保护法杖]|cRXP_BUY_如果它们有库存的话|r
.collect 12251,1,1115,1 
.collect 12252,1,1115,1 
.money <5.3896
.target Zarena Cromwind
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Stranglethorn Vale,27.10,77.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 605 ,a Singing Blue Shards
.target Crank Fizzlebub
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_伊安·斯托姆|r
.train 8696 >> 学习职业技能
.target Ian Strom
.xp <34,1
.xp >36,1
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_伊安·斯托姆|r
.train 8691 >> 学习职业技能
.target Ian Strom
.xp <36,1
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店3楼对话|cRXP_FRIENDLY_克拉兹克|r和|cRXP_FRIENDLY_科博克|r
.turnin 1115 ,t The Rumormonger
.accept 201 ,a Investigate the Camp
.goto Stranglethorn Vale,26.94,77.21
.accept 189 ,a Bloodscalp Ears
.accept 213 ,a Hostile Takeover
.goto Stranglethorn Vale,27.00,77.13
.target Krazek
.target Kebok
step
.goto Stranglethorn Vale,27.20,76.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在3楼阳台对话|cRXP_FRIENDLY_大财主里维加兹|r
.turnin 1181 ,t Goblin Sponsorship
.accept 1182 ,a Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.90,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在阳台角落里对话|cRXP_FRIENDLY_格林戈|r
.fp Booty Bay >> 开启藏宝海湾飞行点
.target Gringer
step
.goto Stranglethorn Vale,28.14,78.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格里克斯·布鲁维特|r
.vendor >> |cRXP_BUY_购买|r|T134832:0|t[强效治疗药水]|cRXP_BUY_如果有库存的话|r
.target Glyx Brewright
step
.goto Stranglethorn Vale,28.30,77.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.accept 575 ,a Supply and Demand
.target Drizzlik
step
#completewith next
.hs >> 炉石回陶拉祖营地
.use 6948
step
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,45.81,64.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
.home >> 绑定炉石到雷霆崖
.target Innkeeper Pala
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 1823 >> 学习职业技能
.target Turak Runetotem
.xp <34,1
.xp >36,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 1823 >> 学习职业技能
.target Turak Runetotem
.xp <36,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 13552 >> 学习职业技能
.target Urek Thunderhorn
.xp <34,1
.xp >36,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14284 >> 学习职业技能
.target Urek Thunderhorn
.xp <36,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24560 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 11554 >> 学习职业技能
.target Ker Ragetotem
.xp <34,1
.xp >36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 1680 >> 学习职业技能
.target Ker Ragetotem
.xp <36,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 16314 >> 学习职业技能
.target Tigor Skychaser
.xp <34,1
.xp >36,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 10412 >> 学习职业技能
.target Tigor Skychaser
.xp <36,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 2767 >> 学习职业技能
.target Malakai Cross
.xp <34,1
.xp >36,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 15264 >> 学习职业技能
.target Malakai Cross
.xp <36,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 8492 >> 学习职业技能
.target Thurston Xane
.xp <34,1
.xp >36,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 8495 >> 学习职业技能
.target Thurston Xane
.xp <36,1
step
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Sun Rock >> 飞往石爪山脉
.target Tal
.zoneskip Stonetalon Mountains
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 37-39 北荆棘谷
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#next 39-39 尘泥沼泽
step
.goto Stranglethorn Vale,32.20,28.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿格罗戈西|r
.accept 568 ,a The Defense of Grom'gol
.target Commander Aggro'gosh
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯维雷|r
.accept 596 ,a Bloody Bone Necklaces
.target Kin'weelay
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r
.accept 581 ,a Hunt for Yenniku
.target Nimboya
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尼尔·石罐|r, |cRXP_FRIENDLY_小赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.accept 583 ,a Welcome to the Jungle
.goto Stranglethorn Vale,35.66,10.53
.turnin 583 ,t Welcome to the Jungle
.turnin 5762 ,t Hemet Nesingwary
.turnin 5763 ,t Hunting in Stranglethorn
.accept 194 ,a Raptor Mastery
.goto Stranglethorn Vale,35.66,10.81
.accept 185 ,a Tiger Mastery
.goto Stranglethorn Vale,35.62,10.62
.accept 190 ,a Panther Mastery
.goto Stranglethorn Vale,35.56,10.55
.target Barnil Stonepot
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith YoungPanthers
>> 沿河击杀|cRXP_ENEMY_淡水鳄|r. 拾取|cFF00BCD4皮|r
.complete 575,1 
.mob River Crocolisk
step
#completewith YoungPanthers
>> 击杀|cRXP_ENEMY_幼年荆棘谷老虎|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#label YoungPanthers
.goto Stranglethorn Vale,36.82,10.25,60,0
.goto Stranglethorn Vale,36.66,11.88,60,0
.goto Stranglethorn Vale,37.70,14.44,60,0
.goto Stranglethorn Vale,39.26,14.53,60,0
.goto Stranglethorn Vale,41.01,13.63,60,0
.loop 25,Stranglethorn Vale,41.48,13.18,42.29,13.14,43.06,12.26,42.86,10.49,41.99,10.21,41.04,9.37,40.26,10.04,39.96,11.55,40.42,12.35,40.96,13.65,41.48,13.18
>> 击杀|cRXP_ENEMY_黑豹幼崽|r
.complete 190,1 
.mob Young Panther
step << Warrior
.loop 25,Stranglethorn Vale,43.99,11.95,44.73,11.46,45.21,11.05,45.19,9.53,44.83,8.60,43.91,8.74,43.50,9.72,43.95,10.50,43.99,11.95
>> 前往库尔森营地. 击杀|cRXP_LOOT_库尔森医师|r. 拾取|T134413:0|t[活根草]
>> |cRXP_WARN_丛林战士和医师共享刷新时间, 所以你必须全部击杀|r
.collect 3357,8 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#completewith next
>> 沿河击杀|cRXP_ENEMY_淡水鳄|r. 拾取|cFF00BCD4皮|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,38.82,14.20,60,0
.goto Stranglethorn Vale,37.04,13.94,60,0
.goto Stranglethorn Vale,35.58,12.38,60,0
.goto Stranglethorn Vale,33.59,12.20,60,0
.goto Stranglethorn Vale,32.67,10.15,60,0
.goto Stranglethorn Vale,31.42,8.48,60,0
.goto Stranglethorn Vale,33.47,10.25,60,0
.goto Stranglethorn Vale,34.07,11.34
>> 击杀|cRXP_ENEMY_幼年荆棘谷老虎|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.turnin 185 ,t Tiger Mastery
.accept 186 ,a Tiger Mastery
.goto Stranglethorn Vale,35.62,10.62
.turnin 190 ,t Panther Mastery
.accept 191 ,a Panther Mastery
.goto Stranglethorn Vale,35.56,10.55
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith RaptorsPart1
>> 沿河击杀|cRXP_ENEMY_淡水鳄|r. 拾取|cFF00BCD4皮|r
.complete 575,1 
.mob River Crocolisk
step
.loop 25,Stranglethorn Vale,31.0,11.2,29.7,8.9,28.4,12.3,28.8,13.6,28.5,16.9,30.6,13.9,31.0,11.2
>> 击杀|cRXP_ENEMY_黑豹|r和|cRXP_ENEMY_荆棘谷老虎|r
.complete 191,1 
.complete 186,1 
.mob Panther
.mob Stranglethorn Tiger
step
#label RaptorsPart1
.loop 25,Stranglethorn Vale,28.08,15.41,27.82,16.35,27.18,16.81,26.28,16.70,25.39,16.33,23.71,15.44,25.69,15.71,26.61,15.85,27.24,15.14,27.80,14.33,28.08,15.41
>> 击杀|cRXP_ENEMY_荆棘谷迅猛龙|r
.complete 194,1 
.mob Stranglethorn Raptor
step
#completewith next
.goto Stranglethorn Vale,35.55,10.55,80 >> 返回奈辛瓦里远征队
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔加丁爵士|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 191 ,t Panther Mastery
.accept 192 ,a Panther Mastery
.goto Stranglethorn Vale,35.55,10.55
.turnin 186 ,t Tiger Mastery
.accept 187 ,a Tiger Mastery
.goto Stranglethorn Vale,35.61,10.62
.turnin 194 ,t Raptor Mastery
.accept 195 ,a Raptor Mastery
.goto Stranglethorn Vale,35.66,10.81
.target Sir S. J. Erlgadin
.target Ajeck Rouack
.target Hemet Nesingwary
step
.goto Stranglethorn Vale,32.4,8.8,90,0
.goto Stranglethorn Vale,34.4,8.2,90,0
.goto Stranglethorn Vale,36.8,10.4,90,0
.goto Stranglethorn Vale,39.8,11.4,90,0
.goto Stranglethorn Vale,39.8,14.4
.line Stranglethorn Vale,32.4,8.8,34.4,8.2,36.8,10.4,39.8,11.4,39.8,14.4
>> 沿河击杀|cRXP_ENEMY_淡水鳄|r. 拾取|cFF00BCD4皮|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>> 击杀你遇到的所有|cRXP_ENEMY_荆棘谷老虎|r
.complete 187,1 
.mob Stranglethorn Tiger
step
.loop 25,Stranglethorn Vale,33.9,15.6,33.2,13.7,28.8,19.6,29.8,19.4,30.6,18.9,33.9,15.6
>> 击杀|cRXP_ENEMY_血顶巨魔|r. 拾取|cFF00BCD4獠牙|r
.complete 581,1 
.mob Bloodscalp Warrior
.mob Bloodscalp Axe Thrower
.mob Bloodscalp Shaman
step
.loop 25,Stranglethorn Vale,32.1,15.8,31.4,18.4,31.8,20.0,34.2,17.6,32.1,15.8
>> 完成击杀|cRXP_ENEMY_荆棘谷老虎|r
.complete 187,1 
.mob Stranglethorn Tiger
step
.loop 25,Stranglethorn Vale,31.9,20.9,30.4,24.7,32.5,23.4,34.1,25.5,36.0,26.8,38.9,25.1,38.1,28.1,31.9,20.9
>> 击杀|cRXP_ENEMY_鞭尾迅猛龙|r
>> |cRXP_WARN_小心!它们会晕你还能缴械|r
.complete 568,1 
.complete 195,1 
.mob Lashtail Raptor
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >> 返回格罗姆高营地
step
.goto Stranglethorn Vale,32.2,27.8
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r
.turnin 581 ,t Hunt for Yenniku
.accept 582 ,a Headhunting
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯维雷|r
.accept 629 ,a The Vile Reef
.target Kin'weelay
step
.goto Stranglethorn Vale,32.17,28.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿格罗戈西|r
.turnin 568 ,t The Defense of Grom'gol
.accept 569 ,a The Defense of Grom'gol
.target Commander Aggro'gosh
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤索克|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,2600,629,1 
.target Uthok
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉格|r
.train 14303 >> 学习职业技能
.target Kragg
.xp <36,1
.xp >38,1
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉格|r
.train 14320 >> 学习职业技能
.target Kragg
.xp <38,1
step
#completewith next
.goto Stranglethorn Vale,24.77,22.85
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_游荡者格里雷克|r获得|cFF00BCD4石板碎片|r
.complete 629,1 
.group 3
step
#ah
.loop 25,Stranglethorn Vale,24.92,23.59,23.40,24.49,23.71,25.90,25.46,25.61,25.31,24.59,26.8,26.0
.use 5996 >> 饮用一瓶|T134797:0|t[水下呼吸药剂]
>> 击杀|cRXP_ENEMY_盐鳞鱼人|r. 拾取|cFF00BCD4尾鳍|r
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.mob Saltscale Tide Lord
.itemcount 5996,1
.group 3
step
.goto Stranglethorn Vale,24.77,22.85
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_游荡者格里雷克|r获取|cFF00BCD4石板碎片|r
>> |cFFFCDC00石板会刷在墙的两侧, 拾取墙外侧的石板. 这样你就不会引到精英|r|cRXP_ENEMY_盐鳞鱼人|r
.complete 629,1 
step
.loop 25,Stranglethorn Vale,27.37,18.62,25.94,18.20,24.84,17.26,23.22,16.89,23.21,18.35,24.80,18.98,26.97,19.78,27.37,18.62
>> 击杀|cRXP_ENEMY_晶背蜥蜴|r. 拾取|cFF00BCD4水晶碎片|r
>> |cRXP_WARN_你必须在此处来回走动使系统强制动态刷新.|r
.complete 605,1 
.mob Crystal Spine Basilisk
step << Warrior
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>> 击杀|cRXP_ENEMY_血顶巨魔|r. 拾取|cFF00BCD4耳朵|r, |cFF00BCD4头颅|r, |cFF00BCD4项链|r和|cFF00BCD4獠牙|r
>> |T133730:0|t[皱缩的头颅]|cRXP_WARN_只会掉落于|r|cRXP_ENEMY_血顶猎头者|r
.complete 189,1 
.complete 582,1 
.complete 596,1 
.complete 1712,2 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step << !Warrior
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>> 击杀|cRXP_ENEMY_血顶巨魔|r. 拾取|cFF00BCD4耳朵|r, |cFF00BCD4头颅|r和|cFF00BCD4项链|r
>> |T133730:0|t[皱缩的头颅]|cRXP_WARN_只会掉落于|r|cRXP_ENEMY_血顶猎头者|r
.complete 189,1 
.complete 582,1 
.complete 596,1 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >> 返回格罗姆高营地
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r和|cRXP_FRIENDLY_肯维雷|r
.turnin 582 ,t Headhunting
.goto Stranglethorn Vale,32.16,27.72
.turnin 596 ,t Bloody Bone Necklaces
.turnin 629 ,t The Vile Reef
.goto Stranglethorn Vale,32.27,27.70
.target Nimboya
.target Kin'weelay
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >> 飞往藏宝海湾
.target Thysta
step
.goto Stranglethorn Vale,28.29,77.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.turnin 575 ,t Supply and Demand
.accept 577 ,a Some Assembly Required
.target Drizzlik
step
.goto Stranglethorn Vale,28.14,78.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格里克斯·布鲁维特|r
.vendor >> |cRXP_BUY_购买|r|T134832:0|t[强效治疗药水]|cRXP_BUY_如果有库存的话|r
.target Glyx Brewright
step
.goto Stranglethorn Vale,26.87,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >> 飞往格罗姆高营地
.target Gringer
step
.goto Stranglethorn Vale,32.12,29.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 570 ,a Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.loop 25,Stranglethorn Vale,36.49,31.61,37.28,30.96,38.04,29.61,36.88,29.69,35.60,30.62,36.49,31.61
>> 击杀|cRXP_ENEMY_莫什奥格蛮兵|r和|cRXP_ENEMY_莫什奥格巫医|r
>> |cRXP_WARN_在等待刷新时击杀|r|cRXP_ENEMY_钳嘴鳄|r
.complete 569,1 
.complete 569,2 
.mob Mosh'Ogg Brute
.mob Mosh'Ogg Witch Doctor
step
.goto Stranglethorn Vale,38.0,32.4,50,0
.goto Stranglethorn Vale,38.8,28.4,50,0
.goto Stranglethorn Vale,40.4,24.4,50,0
.goto Stranglethorn Vale,40.4,22.8,50,0
.goto Stranglethorn Vale,39.4,21.6,50,0
.goto Stranglethorn Vale,39.8,16.6,50,0
.goto Stranglethorn Vale,42.6,17.2,50,0
.line Stranglethorn Vale,38.0,32.4,38.8,28.4,40.4,24.4,40.4,22.8,39.4,21.6,39.8,16.6,42.6,17.2
>> 沿河击杀|cRXP_ENEMY_钳嘴鳄|r. 拾取|cFF00BCD4皮|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
#completewith CozzleBl
>> 击杀|cRXP_ENEMY_风险投资公司地质学家|r. 拾取|cFF00BCD4水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.74,18.04,40,0
.goto Stranglethorn Vale,42.10,18.33,12,0
.goto Stranglethorn Vale,42.29,18.98,12,0
.goto Stranglethorn Vale,42.51,18.82,12,0
.goto Stranglethorn Vale,42.66,18.36
>> 爬到钻油平台的顶层, 然后击杀|cRXP_ENEMY_工头考兹尔|r. 拾取他的|cFF00BCD4钥匙|r
.collect 5851,1 
.unitscan Foreman Cozzle
step
#label CozzleBl
.goto Stranglethorn Vale,43.33,20.33
>> |TInterface/GossipFrame/HealerGossipIcon:0|t进入伐木场边上的房子, 然后拾取|cRXP_PICK_考兹尔的箱子|r获取|cFF00BCD4蓝图|r
.complete 1182,1 
step
.loop 25,Stranglethorn Vale,36.49,31.61,37.28,30.96,38.04,29.61,36.88,29.69,35.60,30.62,36.49,31.61
>> 回到米扎废墟并完成击杀|cRXP_ENEMY_莫什奥格蛮兵|r和|cRXP_ENEMY_莫什奥格巫医|r
.complete 569,1 
.complete 569,2 
.mob Mosh'Ogg Brute
.mob Mosh'Ogg Witch Doctor
step
.loop 25,Stranglethorn Vale,43.26,21.05,42.58,22.00,43.78,22.80,44.42,23.55,45.38,23.28,46.29,23.45,46.26,21.94,47.02,20.02,46.67,19.13,46.34,18.00,45.27,17.76,44.89,16.79,44.44,16.19,43.60,15.80,43.39,17.63,43.65,19.32,43.26,21.05
>> 完成击杀|cRXP_ENEMY_风险投资公司地质学家|r. 拾取|cFF00BCD4水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.loop 25,Stranglethorn Vale,43.26,21.05,42.58,22.00,43.78,22.80,44.42,23.55,45.38,23.28,46.29,23.45,46.26,21.94,47.02,20.02,46.67,19.13,46.34,18.00,45.27,17.76,44.89,16.79,44.44,16.19,43.60,15.80,43.39,17.63,43.65,19.32,43.26,21.05
.xp 38+40400 >> 刷到38级半
step
#completewith ShadowPanthers
>> 击杀|cRXP_ENEMY_荆棘谷雌虎|r. 拾取|cFF00BCD4雌虎的牙齿|r
.complete 570,2 
.mob Stranglethorn Tigress
step
#ah
#completewith next
.use 10592 >> 使用|T134816:0|t[猫眼药剂]以便你能更简单的找到|cRXP_ENEMY_深喉猎豹|r
step
#label ShadowPanthers
.loop 25,Stranglethorn Vale,47.64,22.47,48.08,23.54,48.82,23.91,49.58,25.41,50.29,24.76,50.25,23.37,50.26,21.44,49.29,19.84,48.33,19.99,47.75,21.21,47.64,22.47
>> 击杀|cRXP_ENEMY_深喉猎豹|r. 拾取|cFF00BCD4爪子|r
>> |cRXP_WARN_它们是潜行的小怪. 搜索所有空地.|r
.complete 570,1 
.complete 192,1 
.unitscan Shadowmaw Panther
step
.loop 25,Stranglethorn Vale,47.64,22.47,48.08,23.54,48.82,23.91,49.58,25.41,50.29,24.76,50.25,23.37,50.26,21.44,49.29,19.84,48.33,19.99,47.75,21.21,47.64,22.47
>> 击杀|cRXP_ENEMY_荆棘谷雌虎|r. 拾取|cFF00BCD4雌虎的牙齿|r
.complete 570,2 
.mob Stranglethorn Tigress
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔加丁爵士|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 192 ,t Panther Mastery
.goto Stranglethorn Vale,35.55,10.55
.turnin 187 ,t Tiger Mastery
.accept 188 ,a Tiger Mastery
.goto Stranglethorn Vale,35.61,10.62
.turnin 195 ,t Raptor Mastery
.accept 196 ,a Raptor Mastery
.goto Stranglethorn Vale,35.66,10.81
step
.goto Stranglethorn Vale,32.2,17.4
>> 击杀|cRXP_ENEMY_辛达尔|r. 拾取他的|cFF00BCD4爪子|r
>> |cRXP_WARN_辛达尔在高地顶部或是在下面巡逻|r
.complete 188,1 
.unitscan Sin'Dall
step
.goto Stranglethorn Vale,35.61,10.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r
.turnin 188 ,t Tiger Mastery
.target Ajeck Rouack
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >> 返回格罗姆高营地
step
.goto Stranglethorn Vale,32.16,27.72
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r
.accept 638 ,a Trollbane
.target Nimboya
step
.goto Stranglethorn Vale,32.17,28.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿格罗戈西|r
.turnin 569 ,t The Defense of Grom'gol
.target Commander Aggro'gosh
step
.goto Stranglethorn Vale,32.12,29.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 570 ,t Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >> 飞往藏宝海湾
.target Thysta
step
.goto Stranglethorn Vale,27.23,76.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大财主里维加兹|r
.turnin 1182 ,t Goblin Sponsorship
.accept 1183 ,a Goblin Sponsorship
.target Baron Revilgaz
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科博克|r和|cRXP_FRIENDLY_克拉兹克|r
.turnin 189 ,t Bloodscalp Ears
.turnin 213 ,t Hostile Takeover
.goto Stranglethorn Vale,27.0,77.13
.turnin 201 ,t Investigate the Camp
.accept 209 ,a Skullsplitter Tusks
.goto Stranglethorn Vale,26.95,77.21
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.12,77.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店最底层对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 605 ,t Singing Blue Shards
.accept 600 ,a Venture Company Mining
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,28.29,77.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.turnin 577 ,t Some Assembly Required
.accept 628 ,a Excelsior
.target Drizzlik
step << Druid
#completewith DruidTraining5
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 5201 >> 学习职业技能
.target Loganaar
.xp <38,1
.xp >40,1
step << Druid
#label DruidTraining5
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >> 学习职业技能
.target Loganaar
.xp <40,1
step
#completewith next
.hs >> 炉石回奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step
.goto Orgrimmar,54.10,68.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
.goto Orgrimmar,57.57,52.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克森图|r
.vendor >> 购买3个[舒心草]
.collect 3713,3 
.target Xen'to
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8413 >> 学习职业技能
.target Pephredo
.xp <38,1
.xp >40,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8423 >> 学习职业技能
.target Pephredo
.xp <40,1
step << Mage
.goto Orgrimmar,38.70,85.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在棚屋顶层对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 11417 >> 学习|T135744:0|t[传送门: 奥格瑞玛]
.target Thuul
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_霍苏斯|r|cRXP_BUY_.从他那购买2个或更多|r|T134419:0|t[传送符文]|cRXP_BUY_另外你也可以购买1个或更多的|r|T134421:0|t[传送门符文]
.collect 17031,2 
.collect 17032,1 
.target Horthus
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_霍苏斯|r|cRXP_BUY_.从他那购买2个或更多|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Horthus
.xp >40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10391 >> 学习职业技能
.target Kardris Dreamseeker
.xp <38,1
.xp >40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 8134 >> 学习职业技能
.target Kardris Dreamseeker
.xp <40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8621 >> 学习职业技能
.target Ormok
.xp <38,1
.xp >40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8624 >> 学习职业技能
.target Ormok
.xp <40,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11711 >> 学习职业技能
.target Mirket
.xp <38,1
.xp >40,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11733 >> 学习职业技能
.target Mirket
.xp <40,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买所有买得起的宠物升级书
.target Kurgul
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 8820 >> 学习职业技能
.target Grezz Ragefist
.xp <38,1
.xp >40,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 20660 >> 学习职业技能
.target Grezz Ragefist
.xp <40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14320 >> 学习职业技能
.target Ormak Grimshot
.xp <38,1
.xp >40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14324 >> 学习职业技能
.target Ormak Grimshot
.xp <40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 6078 >> 学习职业技能
.target Ur'kyo
.xp <38,1
.xp >40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 8106 >> 学习职业技能
.target Ur'kyo
.xp <40,1
step
#ah
.goto Orgrimmar,55.59,62.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 3853,1 >> |cRXP_BUY_从拍卖行购买一把|r|T135326:0|t[月钢宽剑]
.target Auctioneer Thathung
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 39-39 尘泥沼泽
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#next 39-41 奥特兰克山脉/阿拉希高地
step
.goto Orgrimmar,45.120,63.889
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_多拉斯|r
.fly Brackenwall Village >> 飞往蕨墙村
.target Doras
.zoneskip Dustwallow Marsh
step
.abandon 629 ,ab Vile Reef
.isOnQuest 629
step
#label Hoofprints
.goto Dustwallow Marsh,29.71,47.65
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击地上的|cRXP_PICK_可疑的蹄印|r
.accept 1268 ,a Suspicious Hoofprints
step
#label Badge
.goto Dustwallow Marsh,29.83,48.24
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击木板上的|cRXP_PICK_塞拉摩卫兵徽章|r
.accept 1269 ,a Lieutenant Paval Reethe
step
.goto Dustwallow Marsh,29.63,48.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击壁炉上的|cRXP_PICK_黑色盾牌|r
.accept 1251 ,a The Black Shield
step << skip
.goto Dustwallow Marsh,35.5,32.0
.fp Brackenwall >> 开启棘墙村飞行点

step
.goto Dustwallow Marsh,35.21,30.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳泽尔·血矛|r
.accept 1201 ,a Theramore Spies
.target Nazeer Bloodpike
step
.goto Dustwallow Marsh,36.41,31.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗格|r
.turnin 1268 ,t Suspicious Hoofprints
.turnin 1269 ,t Lieutenant Paval Reethe
.target Krog
step
.goto Dustwallow Marsh,36.41,31.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗格|r
.turnin 1251 ,t The Black Shield
.accept 1321 ,a The Black Shield
.target Krog
step
.goto Dustwallow Marsh,36.50,30.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜高尔|r
.turnin 1321 ,t The Black Shield
.accept 1322 ,a The Black Shield
.target Do'gol
step
#requires Badge
.goto Dustwallow Marsh,35.15,38.26
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎泥·杜特非|r
.accept 1177 ,a Hungry!
.target Mudcrush Durtfeet
step
#completewith Infiltrator
>> 击杀|cRXP_ENEMY_暗牙蜘蛛|r. 拾取|cFF00BCD4毒液|r
>> |cRXP_WARN_血沼迅猛龙与暗牙蜘蛛共享刷新, 所有你需要全部击杀它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
.goto Dustwallow Marsh,40.96,36.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格隆|r, 并开启护送任务
.accept 1273 ,a Questioning Reethe
>> |cFFFCDC00小心! 这个任务比较难|r
.target Ogron
step
.goto Dustwallow Marsh,42.50,38.00
>> 当你到达营地时会刷新4只小怪. 他们会在剧情结束后开始攻击
>> |cFFFCDC00让|r|cRXP_FRIENDLY_奥格隆|r|cFFFCDC00先扛着1只然后击杀其他小怪|r
.complete 1273,1 
.target Ogron
step
#completewith next
>> 击杀你遇到的所有|cRXP_ENEMY_塞拉摩间谍|r
>> |cRXP_WARN_他们可以潜行|r
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,46.90,17.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊格纳兹|r, 并开启护送任务
.accept 1270 ,a Stinky's Escape
.target "Stinky" Ignatz
step
>> |cRXP_WARN_在护送|r|cRXP_FRIENDLY_伊格纳兹|r|cRXP_WARN_时, 注意血沼尖啸龙会在33%血量时呼叫帮助|r
.complete 1270,1 
.target "Stinky" Ignatz
.mob Bloodfen Screecher
step
.goto Dustwallow Marsh,55.43,26.26
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沼泽之眼加尔|r
.accept 1218 ,a 舒心草
.turnin 1218 ,t 舒心草
.accept 1206 ,a Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.44,25.93
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在|cRXP_FRIENDLY_沼泽之眼加尔|r的房子西边点击|cRXP_PICK_松软的泥土|r
.accept 1238 ,a The Lost Report
step
.goto Dustwallow Marsh,56.82,22.42,50,0
.goto Dustwallow Marsh,57.80,21.30,50,0
.goto Dustwallow Marsh,57.49,16.80,50,0
.goto Dustwallow Marsh,58.29,15.47,50,0
.goto Dustwallow Marsh,57.80,21.30
>> 击杀所有|cRXP_ENEMY_沼鳍鱼人|r. 拾取|cFF00BCD4头颅|r
.complete 1177,1 
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
step
#completewith next
>> 击杀你遇到的所有|cRXP_ENEMY_塞拉摩间谍|r
>> |cRXP_WARN_他们可以潜行|r
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.loop 25,Dustwallow Marsh,34.4,25.2,35.9,20.7,32.8,21.4,34.4,25.2
>> 击杀所有|cRXP_ENEMY_暗雾蜘蛛|r. 拾取|cFF00BCD4眼睛|r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Spider
.mob Darkmist Lurker
.unitscan Darkmist Widow
step
#completewith next
>> 击杀|cRXP_ENEMY_暗牙蜘蛛|r. 拾取|cFF00BCD4毒液|r
>> |cRXP_WARN_血沼迅猛龙共享刷新暗牙蜘蛛, 所有你需要全部击杀它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
#label Infiltrator
.goto Dustwallow Marsh,39.0,21.6,70,0
.loop 25,Dustwallow Marsh,39.7,23.9,37.6,26.9,41.0,25.5,44.2,27.4,37.9,37.4,39.0,21.6,39.7,23.9
>> 完成击杀你遇到的所有|cRXP_ENEMY_塞拉摩间谍|r
>> |cRXP_WARN_他们可以潜行|r
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,39.96,14.10,50,0
.loop 25,Dustwallow Marsh,39.0,21.6,39.7,23.9,37.6,26.9,41.0,25.5,44.2,27.4,37.9,37.4,39.0,21.6
>> 击杀|cRXP_ENEMY_暗牙蜘蛛|r. 拾取|cFF00BCD4毒液|r
>> |cRXP_WARN_血沼迅猛龙共享刷新暗牙蜘蛛, 所有你需要全部击杀它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
#completewith next
.goto Dustwallow Marsh,35.21,30.66,120 >> 回到蕨墙村
step
.goto Dustwallow Marsh,35.21,30.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1201 ,t Theramore Spies
.turnin 1238 ,t The Lost Report
.target Nazeer Bloodpike






step
.goto Dustwallow Marsh,36.50,30.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜高尔|r
.turnin 1322 ,t The Black Shield
.accept 1323 ,a The Black Shield
.target Do'gol
step
.goto Dustwallow Marsh,36.50,31.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗格|r
.turnin 1323 ,t The Black Shield
.turnin 1273 ,t Questioning Reethe
.accept 1276 ,a The Black Shield
.target Krog
step
.goto Dustwallow Marsh,35.20,38.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎泥·杜特非|r
.turnin 1177 ,t Hungry!
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,55.44,25.93
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在|cRXP_FRIENDLY_沼泽之眼加尔|r的房子西边点击|cRXP_PICK_松软的泥土|r
.accept 1239 ,a The Severed Head
step
.goto Dustwallow Marsh,55.43,26.26
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沼泽之眼加尔|r
.turnin 1206 ,t Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
#ah
.goto Dustwallow Marsh,55.43,26.26
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沼泽之眼加尔|r
.accept 1203 ,a Jarl Needs a Blade
.turnin 1203 ,t Jarl Needs a Blade
.target "Swamp Eye" Jarl
.itemcount 3853,1
step
#completewith next
.goto Dustwallow Marsh,35.21,30.66,120 >> 回到蕨墙村
step
.goto Dustwallow Marsh,35.30,30.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1239 ,t The Severed Head
.accept 1240 ,a The Troll Witchdoctor
.target Nazeer Bloodpike
.isQuestTurnedIn 1238






step
#completewith next
.goto Dustwallow Marsh,35.57,31.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙尔迪|r
.fly Gadgetzan >> 飞往加基森
.target Shardi
.zoneskip Tanaris
step
.goto Thousand Needles,80.18,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1183 ,t Goblin Sponsorship
.accept 1186 ,a The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.328,76.094
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 ,t The Eighteenth Pilot
.accept 1187 ,a Razzeric's Tweaking
.target Razzeric
step
#ah
.goto Thousand Needles,78.14,77.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1107 ,t Encrusted Tail Fins
.target Wizzle Brassbolts
.group
.isQuestComplete 1107
step << Druid
#completewith DruidTraining6
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 5201 >> 学习职业技能
.target Loganaar
.xp <38,1
.xp >40,1
step << Druid
#label DruidTraining6
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >> 学习职业技能
.target Loganaar
.xp <40,1
step << Druid
#completewith FoodAndWater
.hs >> 炉石回奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step << !Mage !Druid
#completewith FoodAndWater
.hs >> 炉石回奥格瑞玛
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << !Mage
#completewith FoodAndWater
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Bulkrek Ragefist
.cooldown item,6948,<0
.zoneskip Orgrimmar
step << !Mage
#label FoodAndWater
.goto Orgrimmar,54.10,68.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
.abandon 1186 ,ab Goblin Sponsorship
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10391 >> 学习职业技能
.target Kardris Dreamseeker
.xp <38,1
.xp >40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 8134 >> 学习职业技能
.target Kardris Dreamseeker
.xp <40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8621 >> 学习职业技能
.target Ormok
.xp <38,1
.xp >40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8624 >> 学习职业技能
.target Ormok
.xp <40,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 8820 >> 学习职业技能
.target Grezz Ragefist
.xp <38,1
.xp >40,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 20660 >> 学习职业技能
.target Grezz Ragefist
.xp <40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14320 >> 学习职业技能
.target Ormak Grimshot
.xp <38,1
.xp >40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14324 >> 学习职业技能
.target Ormak Grimshot
.xp <40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 6078 >> 学习职业技能
.target Ur'kyo
.xp <38,1
.xp >40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 8106 >> 学习职业技能
.target Ur'kyo
.xp <40,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特拉克根|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,2600,232 
.target Trak'gen
.xp >40,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特拉克根|r
>> |cFF0E8312从他那购买|r|T135661:0|t[锯齿箭]
.collect 11285,2600,232 
.target Trak'gen
.xp <40,1
step << Orc !Warlock
.goto Orgrimmar,69.40,13.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔达|r和|cRXP_FRIENDLY_奥古纳罗|r
.train 825 >> 学习|T136103:0|t[骑术：狼]
.vendor >> |cRXP_BUY_购买|r|T132224:0|t[|cFF0070FF狼|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Troll
#completewith next
.subzone 367 >> 前往森金村
step << Troll
.goto Durotar,55.28,75.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔提|r和|cRXP_FRIENDLY_祖尼尔|r
.train 10861 >> 学习|T136103:0|t[骑术：迅猛龙]
.vendor >> |cRXP_BUY_购买|r|T132253:0|t[|cFF0070FF迅猛龙|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11711 >> 学习职业技能
.target Mirket
.xp <38,1
.xp >40,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.trainer >> 学习职业技能
.accept 3631 ,a Summon Felsteed
.target Mirket
.xp <40,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买所有买得起的宠物升级书
.target Kurgul
step << Warlock
#completewith next
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >> 飞往棘齿城
.zoneskip The Barrens
.target Doras
.isOnQuest 3631
step << Warlock
.goto The Barrens,62.63,35.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 3631 ,t Summon Felsteed
.target Strahad Farsan
.isOnQuest 3631
step << Warlock
.goto The Barrens,63.09,37.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Bragok
.isQuestComplete 3631
.zoneskip Orgrimmar
step << Tauren
#completewith KodoRiding
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >> 飞往雷霆崖
.zoneskip Thunder Bluff
.target Doras
step << Tauren
#completewith next
.subzone 222 >> 前往血蹄村
step << Tauren
#label KodoRiding
.goto Mulgore,47.64,58.47
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔提|r和|cRXP_FRIENDLY_祖尼尔|r
.train 132245 >> 学习|T136103:0|t[骑术：科多兽]
.vendor >> |cRXP_BUY_购买|r|T132253:0|t[|cFF0070FF科多兽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step << Tauren
.hs >> 炉石回奥格瑞玛
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Tauren
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Tal
.cooldown item,6948,<0
.zoneskip Orgrimmar
step
#sticky
#completewith EnterSM
.subzone 796 >> 现在你应该开始寻找前往血色修道院的副本队伍了
.dungeon SM
step << !Mage
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Tirisfal Glades >> 乘坐飞艇前往幽暗城
.zoneskip Tirisfal Glades
step << Mage
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
step << Mage
.goto Undercity,85.13,10.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 8413 >> 学习职业技能
.target Anastasia Hartwell
.xp <38,1
.xp >40,1
step << Mage
.goto Undercity,85.13,10.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 8423 >> 学习职业技能
.target Anastasia Hartwell
.xp <40,1
step << Mage
.goto Undercity,84.20,15.56
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_莱克斯顿·莫泰姆|r
.train 11418 >> 学习|T11418:0|t[传送门: 幽暗城]
.target Lexington Mortaim
.xp <40,1
step << Mage
.goto Undercity,82.79,15.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_汉娜·阿克雷|r|cRXP_BUY_.从他那购买2个或更多|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step
.abandon 1107 ,ab Encrusted Tail Fins
.isOnQuest 1107
step
.goto Undercity,56.24,92.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
.accept 1048 ,a Into The Scarlet Monastery
.target Varimathras
.dungeon SM
step
.goto Undercity,48.80,69.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.accept 1113 ,a 狂热之心
.target Master Apothecary Faranell
.isQuestTurnedIn 1109 
.dungeon SM
step << Undead !Warlock
#completewith next
.subzone 159 >>前往布瑞尔
step << Undead !Warlock
.goto Tirisfal Glades,60.09,52.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔玛·瓦纳姆|r和|cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >> 学习|T136103:0|t[骑术：骸骨战马]
.vendor >> |cRXP_BUY_购买|r|T132264:0|t[|cFF0070FF骸骨战马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#label EnterSM
.goto Eastern Kingdoms,46.32,30.71,15,0
.goto Eastern Kingdoms,46.61,30.59
.zone 303 >> 进入血色修道院. 从图书馆开始打, 这样你就能在结束时获得[|cRXP_FRIENDLY_血色钥匙|r]
.zoneskip 304
.zoneskip 305
.dungeon SM




step << !Undead
#completewith Bosses
>> 拾取|cRXP_LOOT_堕落者纲要|r
>> |cRXP_WARN_你能在副本最后一个转角的左侧书架上找到它.|r
.complete 1049,1 
.dungeon SM
step
#completewith Bosses
>> 拾取|cRXP_LOOT_堕落者纲要|r
>> |cRXP_WARN_你能在副本最后一个转角的左侧书架上找到它.|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step
#completewith Compendium
>> 击杀|cRXP_LOOT_血色十字军|r小怪. 拾取他们的|cRXP_LOOT_狂热之心|r
.complete 1113,1
.isOnQuest 1113
.dungeon SM
step
#label Bosses
>> 击杀|cRXP_ENEMY_驯犬者洛克希|r, |cRXP_ENEMY_赫洛德|r, |cRXP_ENEMY_高阶审判官怀特迈恩|r和|cRXP_ENEMY_血色十字军指挥官莫格莱尼|r
>> |cRXP_ENEMY_驯犬者洛克希|r|cRXP_WARN_位于图书馆内|r
>> |cRXP_ENEMY_赫洛德|r|cRXP_WARN_位于武器库内|r
>> |cRXP_ENEMY_高阶审判官怀特迈恩|r|cRXP_WARN_和|cRXP_ENEMY_血色十字军指挥官莫格莱尼|r位于大教堂内|r
.complete 1048,4 
.complete 1048,3 
.complete 1048,1 
.complete 1048,2 
.isOnQuest 1048
.mob Houndmaster Loksey
.mob Herod
.mob High Inquisitor Whitemane
.mob Scarlet Commander Mograine
.dungeon SM
step << !Undead
#label Compendium
>> 拾取|cRXP_LOOT_堕落者纲要|r
>> |cRXP_WARN_你能在副本最后一个转角的左侧书架上找到它.|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step << Mage
#completewith SMturnin
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
.dungeon SM
step << !Mage
#completewith next
.goto Undercity,66.07,9.18,150 >> 前往幽暗城
.zoneskip Undercity
.dungeon SM
step
#label SMturnin
.goto Undercity,56.24,92.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 1048 ,t Into The Scarlet Monastery
.isQuestComplete 1048
.target Varimathras
.dungeon SM
step
.goto Undercity,56.24,92.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
.accept 6521 ,a An Unholy Alliance
.target Varimathras
.isQuestTurnedIn 6522 
.dungeon RFD
step
.goto Undercity,48.80,69.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂大师法拉尼尔|r
.turnin 1113 ,t 狂热之心
.target Master Apothecary Faranell
.isQuestComplete 1113
.dungeon SM
step
.goto Undercity,74.05,33.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德鲁·布隆奈尔|r
.accept 3341 ,a Bring the End
.target Andrew Brownell
.dungeon RFD
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
.isQuestComplete 1049
.dungeon SM
step
.hs >> 炉石回奥格瑞玛
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包, 并补充吃喝如果有必要的话|r
.target Innkeeper Gryshka
.use 6948
.cooldown item,6948,>0
.zoneskip Undercity,1
.dungeon RFD
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Undercity,1
.cooldown item,6948,<0
.dungeon RFD
step << !Mage
.hs >> 炉石回奥格瑞玛
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包, 并补充吃喝如果有必要的话|r
.target Innkeeper Gryshka
.use 6948
.zoneskip Orgrimmar
.dungeon SM
.isQuestComplete 1049
step << !Mage
.goto Tirisfal Glades,61.06,58.86,12,0
.goto Tirisfal Glades,61.51,59.01,10,0
.goto Tirisfal Glades,61.27,59.22,8,0
.goto Tirisfal Glades,61.13,58.84,8,0
.goto Tirisfal Glades,61.38,58.71,8,0
.goto Tirisfal Glades,61.34,59.17,8,0
.goto Tirisfal Glades,60.51,58.69,-1
.goto Tirisfal Glades,60.94,46.35,-1
>> 爬上飞艇塔
.zone Durotar >> 乘坐飞艇前往杜隆塔尔
.zoneskip Orgrimmar
.cooldown item,6948,<0
.dungeon RFD
step << !Mage
#completewith next
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >> 飞往雷霆崖
.zoneskip Thunder Bluff
.target Doras
.dungeon SM
.isQuestComplete 1049
step << !Undead
.goto Thunder Bluff,34.42,46.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贤者图希克|r
.turnin 1049 ,t Compendium of the Fallen
.target Sage
.dungeon SM
.isQuestComplete 1049
step
#sticky
#completewith EnterRFD
.subzone 722 >> 现在你应该开始寻找前往剃刀高地的副本队伍了
.dungeon RFD
step
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Tal
.zoneskip Thunder Bluff,1
step
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.zoneskip Orgrimmar,1
.target Doras
.dungeon RFD
step
#completewith next
.goto The Barrens,46.30,90.27,200 >> 前往剃刀高地
step
#completewith next
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,48.20,92.66,50,0
>> 击杀|cRXP_ENEMY_玛克林大使|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_他随机刷新于副本外的4个帐篷里|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦雷姆·月歌|r
.accept 6626 ,a A Host of Evil
.target Myriam Moonsinger
.dungeon RFD
step
#completewith next
>> 击杀|cRXP_ENEMY_剃刀沼泽护卫者|r, |cRXP_ENEMY_剃刀沼泽织棘者|r和|cRXP_ENEMY_亡首教徒|r
>> |cRXP_WARN_此任务在副本外完成|r
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,48.57,95.69,50,0
.goto The Barrens,48.20,92.66,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84
>> 击杀|cRXP_ENEMY_玛克林大使|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_他随机刷新于副本外的4个帐篷里|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
>> 击杀|cRXP_ENEMY_剃刀沼泽护卫者|r, |cRXP_ENEMY_剃刀沼泽织棘者|r和|cRXP_ENEMY_亡首教徒|r
>> |cRXP_WARN_此任务在副本外完成|r
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦雷姆·月歌|r
.turnin 6626 ,t A Host of Evil
.target Myriam Moonsinger
.isQuestComplete 6626
.dungeon RFD
step
#label EnterRFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.zone 300 >> 进入剃刀高地
.dungeon RFD
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尼斯特拉兹|r
>> |cRXP_WARN_进本后走左边并一直靠左直到你到达谋杀围栏找到|r|cRXP_FRIENDLY_贝尼斯特拉兹|r
>> |cRXP_WARN_等你的队友都准备好了再接受封印神像, 这会开启护送任务. 插件的任务自动接受功能已为此步停用|r
.accept 3523 ,a Scourge of the Downs
.turnin 3523 ,t Scourge of the Downs
.accept 3525,1 ,a Extinguishing the Idol
.target Belnistrasz
.dungeon RFD
step
>> 跟随并保护|cRXP_FRIENDLY_贝尼斯特拉兹|r完成仪式
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
.dungeon RFD
step
>> 点击|cRXP_PICK_奔尼斯特拉兹的火盆|r
.turnin 3525 ,t Extinguishing the Idol
.isQuestComplete 3525
.dungeon RFD
step
>> 击杀|cRXP_ENEMY_寒冰使者亚门纳尔|r. 拾取他的|cRXP_LOOT_颅骨|r
.complete 3341,1 
.mob Amnennar the Coldbringer
.isOnQuest 3341
.dungeon RFD
step << !Mage
.hs >> 炉石回奥格瑞玛
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Gryshka
.use 6948
.dungeon RFD
step << Hunter
.goto Orgrimmar,48.13,80.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特拉克根|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,2600,232 
.target Trak'gen
.xp >40,1
.dungeon RFD
step << Hunter
.goto Orgrimmar,48.13,80.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特拉克根|r
>> |cFF0E8312从他那购买|r|T135661:0|t[锯齿箭]
.collect 11285,2600,232 
.target Trak'gen
.xp <40,1
.dungeon RFD
step << !Mage
.goto Durotar,50.53,12.52
.zone Tirisfal Glades >> 爬上飞艇塔. 乘坐飞艇前往幽暗城
.dungeon RFD
step << Mage
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
.dungeon RFD
step
.goto Undercity,56.24,92.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6521 ,t An Unholy Alliance
.target Varimathras
.isQuestComplete 6521
.dungeon RFD
step
.goto Undercity,74.05,33.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德鲁·布隆奈尔|r
.turnin 3341 ,t Bring the End
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 39-41 奥特兰克山脉/阿拉希高地
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#next 41-42 荒芜之地
step
.goto Undercity,50.15,67.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师金格|r
.accept 232 ,a Errand for Apothecary Zinge
.target Apothecary Zinge
step
.goto Undercity,58.61,54.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥雷萨多·卢卡|r
.turnin 232 ,t Errand for Apothecary Zinge
.accept 238 ,a Errand for Apothecary Zinge
.target Alessandro Luca
step
.goto Undercity,50.15,67.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师金格|r
.turnin 238 ,t Errand for Apothecary Zinge
.accept 243 ,a Into the Field
.target Apothecary Zinge
.solo
step
.goto Undercity,50.15,67.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师金格|r
.turnin 238 ,t Errand for Apothecary Zinge
.target Apothecary Zinge
.group
step << Hunter
.goto Undercity,54.71,38.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_阿比盖尔·萨叶尔|r|cRXP_BUY_. 购买|r|T135489:0|t[大型长弓]|cRXP_BUY_如果有库存的话|r
.collect 11307,1,503,1 
.target Abigail Sawyer
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
step << Hunter
#completewith BracersofBinding
+当你到达42级时装备|T135489:0|t[大型长弓]
.use 11307
.itemcount 11307,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
step << Hunter
.goto Undercity,58.66,33.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_吉奥芬·哈特威尔|r|cRXP_BUY_. 购买|r|cRXP_BUY_如果你会近战舞就从他那购买|r|T135424:0|t[巨斧]|cRXP_BUY_. 否则的话就跳过此步|r
.collect 2531,1,503,1 
.target Geoffrey Hartwell
.money <5.0552
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
step << Hunter
#completewith BracersofBinding
+当你到达39级时装备|T135424:0|t[巨斧]
.use 2531
.itemcount 2531,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
step << Rogue
.goto Undercity,58.66,33.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_吉奥芬·哈特威尔|r|cRXP_BUY_. 从他那购买|r|T135344:0|t[贵族阔剑]
.collect 2528,1,503,1 
.money <4.6652
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
.target Geoffrey Hartwell
step << Rogue
.goto Undercity,58.66,33.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_吉奥芬·哈特威尔|r|cRXP_BUY_. 从他那购买|r|T135341:0|t[致命的细短剑]
.collect 2534,1,503,1 
.money <4.0888
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
.target Geoffrey Hartwell
step << Rogue
#completewith BracersofBinding
+当你到达41级时装备|T135344:0|t[贵族阔剑]
.use 2528
.itemcount 2528,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step << Rogue
#completewith BracersofBinding
+当你到达39级时把|T135341:0|t[致命的细短剑]装备到副手
.use 2534
.itemcount 2534,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
step << Priest
.goto Undercity,69.54,26.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_赞恩·布拉德弗|r|cRXP_BUY_. 从他那购买|r|T133718:0|t[黑骨魔杖]
.collect 5239,1,503,1 
.money <4.0769
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
.target Zane Bradford
step << Priest
#completewith BracersofBinding
+当你到达41级时装备|T135344:0|t[贵族阔剑]
.use 5239
.itemcount 5239,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
step << Warrior
.goto Undercity,77.48,49.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_纳旦尼尔·斯蒂恩维克|r|cRXP_BUY_从他那购买2组|r|T135424:0|t[破损的闪光飞斧]
.collect 15326,2 
.target Nathaniel Steenwick
step << Warrior
#ah
#completewith next
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在拍卖区对话|cRXP_FRIENDLY_拍卖师斯托克顿|r
>> |cRXP_BUY_如果你在购买|r|T134717:0|t[自然防护药水]|cRXP_BUY_后还有钱, 就购买下列物品:|r
.collect 4480,8 
.collect 4479,8 
.collect 4481,8 
.collect 3357,8 
.target Auctioneer Stockton
step << Warrior
#ah
.goto Undercity,71.42,46.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在拍卖区对话|cRXP_FRIENDLY_拍卖师斯托克顿|r
.collect 6052,2 
.target Auctioneer Stockton
step
#ah
.goto Undercity,71.42,46.69
>> |cRXP_BUY_如果你还有钱, 就购买下列物品:|r
.collect 3829,1 
.collect 4389,1 
.collect 929,1 
.collect 3823,1 
.collect 2868,1 
.collect 4611,9 
.collect 3404,4 
step
.goto Undercity,62.32,48.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_派翠克·加勒特|r
.accept 2342 ,a Reclaimed Treasures
.target Patrick Garrett
.group
step << Warrior
#completewith next
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Hammerfall >> 飞往落锤镇
.target Michael Garrett
.zoneskip Arathi Highlands
step << Warrior
#label Cresting
.goto Arathi Highlands,66.72,29.72
>> 击杀|cRXP_ENEMY_水浪流放者|r. 拾取|T133438:0|t[海浪咒符]
.collect 4481,8 
.mob Cresting Exile
step << Warrior
.goto Arathi Highlands,52.06,50.60
>> 击杀|cRXP_ENEMY_雷霆流放者|r. 拾取|T133435:0|t[雷霆咒符]
>> |cRXP_WARN_小心!|r|cRXP_ENEMY_雷霆流放者|r|cRXP_WARN_爆发伤害很高|r
.collect 4480,8 
.mob Thundering Exile
step << Warrior
.goto Arathi Highlands,25.47,30.09
>> 击杀|cRXP_ENEMY_烈焰流放者|r. 拾取|T133434:0|t[烈焰咒符]
.collect 4479,8 
.mob Burning Exile
step << Warrior
#completewith BracersofBinding
.goto Hillsbrad Foothills,62.06,20.19,120 >> 前往塔伦米尔
step << !Warrior
#completewith BracersofBinding
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << !Undead
.abandon 1049 ,ab Compendium of the Fallen
.isOnQuest 1049
.dungeon SM
step
.abandon 1048 ,ab Into The Scarlet Monastery
.isOnQuest 1048
.dungeon SM
step
.abandon 1113 ,ab 狂热之心
.isOnQuest 1113
.dungeon SM
step
.abandon 6521 ,ab An Unholy Alliance
.isOnQuest 6521
.dungeon RFD
step
.abandon 6626 ,ab A Host of Evil
.isOnQuest 6626
.dungeon RFD
step
.abandon 3341 ,ab Bring the End
.isOnQuest 3341
.dungeon RFD
step
#label BracersofBinding
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝瓦里尔|r和|cRXP_FRIENDLY_魔导师沃迪恩·虚无之光|r
.accept 557 ,a Bracers of Binding
.goto Hillsbrad Foothills,61.60,20.86
.accept 545 ,a Dalaran Patrols
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.goto Hillsbrad Foothills,62.62,20.74
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_FRIENDLY_梅里萨拉|r边上的|cRXP_PICK_通缉：瓦杜斯男爵|r通缉告示
.accept 566 ,a WANTED: Baron Vardus
.target Melisara
.group
step
.goto Hillsbrad Foothills,63.20,20.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.accept 503 ,a Gol'dir
.target Krusk
step << Warrior
#completewith Whirlwind
+|cRXP_WARN_非常重要! 请观看此视频学习如何巧妙地击杀塞克隆尼亚获取|r|T132403:0|t[旋风之斧]
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> 点击此处
step << Warrior
#ah
.goto Alterac Mountains,80.49,66.92
.use 6052 >> 行进时使用一瓶自然防护药水
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1714 ,t Essence of the Exile
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1714 ,t Essence of the Exile
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1712 ,t Cyclonian
.accept 1713 ,a The Summoning
.target Bath'rah the Windwatcher
step << Warrior
#label Whirlwind
.goto Alterac Mountains,80.6,62.2
>> 等待|cRXP_FRIENDLY_观风者巴斯拉|r剧情结束, 然后击杀|cRXP_LOOT_塞克隆尼亚|r并拾取他的|cFF00BCD4心脏|r
>> |cRXP_WARN_装备上|r|T135424:0|t[破损的闪光飞斧]|cRXP_WARN_如果你还没有的话|r
.complete 1713,1 
.unitscan Cyclonian
step << Warrior
.goto Alterac Mountains,80.49,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r并选择|T132403:0|t[旋风之斧]
.turnin 1713 ,t The Summoning
.turnin 1792 ,t Whirlwind Weapon
.target Bath'rah the Windwatcher
step
.goto Hillsbrad Foothills,62.63,20.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅里萨拉|r
.accept 518 ,a The Crown of Will
.target Melisara
.group
step
.goto Alterac Mountains,63.20,43.90
>> 击杀|cRXP_ENEMY_看守员博胡恩|r. 拾取他的|cRXP_LOOT_钥匙|r
.complete 503,1 
.unitscan Jailor Borhuin
step
.goto Alterac Mountains,60.00,43.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_高迪尔|r
.turnin 503 ,t Gol'dir
.accept 506 ,a Blackmoore's Legacy
.target Gol'dir
step
.goto Alterac Mountains,42.7,46.6
>> 击杀|cRXP_ENEMY_破碎岭虐待者|r
.complete 518,1 
.mob Crushridge Mauler
.group 3
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> 返回塔伦米尔
.group
step
.goto Hillsbrad Foothills,62.6,20.6
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_梅里萨拉|r处
.turnin 518 ,t The Crown of Will
.accept 519 ,a The Crown of Will
.target Melisara
.group
step
.goto Alterac Mountains,39.49,41.82
>> 击杀|cRXP_ENEMY_戈洛姆斯|r. 拾取他的|cRXP_LOOT_头|r
.complete 519,3 
.unitscan Glommus
.group 3
step
.goto Alterac Mountains,38.61,46.78
>> 击杀|cRXP_ENEMY_玛克拉克|r. 拾取他的|cRXP_LOOT_头|r
.complete 519,2 
.unitscan Muckrake
.group 3
step
.goto Alterac Mountains,39.59,52.86
>> 击杀|cRXP_ENEMY_塔尔格|r. 拾取他的|cRXP_LOOT_头|r
.complete 519,1 
.unitscan Targ
.group 3
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> 返回塔伦米尔
.group
step
.goto Hillsbrad Foothills,62.63,20.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅里萨拉|r
.turnin 519 ,t The Crown of Will
.accept 520 ,a The Crown of Will
.target Melisara
.group
step
.goto Alterac Mountains,35.68,54.25
>> 击杀|cRXP_ENEMY_玛格索尔|r. 拾取他的|cRXP_LOOT_头|r并获取|cRXP_LOOT_意志之冠|r
>> |cRXP_WARN_特别注意|r|cRXP_ENEMY_破碎岭好战者|r|cRXP_WARN_低血量时呼叫帮助|r
.complete 520,1 
.complete 520,2 
.mob Crushridge Warmonger
.unitscan Mug'thol
.group 3
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> 返回塔伦米尔
step
#completewith next
.goto Hillsbrad Foothills,62.76,19.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,62.10,82.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.turnin 506 ,t Blackmoore's Legacy
.target Krusk
step
.goto Hillsbrad Foothills,62.10,82.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.accept 507 ,a Lord Aliden Perenolde
.target Krusk
.group
step
#completewith next
.goto Alterac Mountains,42.2,77.8,90,0
.goto Alterac Mountains,46.2,78.2,90,0
>> 击杀|cRXP_ENEMY_山地狮|r. 拾取|T134368:0|t[新鲜的尸体]
>> |T134368:0|t[新鲜的尸体]|cRXP_WARN_会在30分钟后消失|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >> 在无草洞内使用|T134368:0|t[新鲜的尸体]来召唤|cRXP_ENEMY_霜喉雪人|r. 击杀并拾取他的|cRXP_LOOT_鬃毛|r
.complete 1136,1 
.unitscan Frostmaw

step
.loop 25,Alterac Mountains,10.3,78.5,20.5,75.2,21.3,53.5,17.8,56.2,21.3,53.5,20.5,75.2,10.3,78.5
>> 击杀|cRXP_ENEMY_达拉然召唤师|r和|cRXP_ENEMY_元素奴仆|r. 拾取|cRXP_LOOT_护腕|r
.complete 545,1 
.complete 545,2 
.complete 557,1 
.mob Dalaran Summoner
.mob Elemental Slave
step
#ah
#completewith next
.use 10592 >> 当你靠近奥里登·匹瑞诺德领主的宅邸时使用一瓶|T134816:0|t[猫眼药剂]
step
.goto Alterac Mountains,39.28,14.52
>> 击杀|cRXP_ENEMY_奥里登·匹瑞诺德领主|r
>> |cRXP_WARN_注意|cRXP_ENEMY_辛迪加刺客|r|cRXP_WARN_.|r|cRXP_ENEMY_奥里登·匹瑞诺德领主|r|cRXP_WARN_会使用真言术: 盾, 恢复并且会睡住玩家和他们的宠物|r
.complete 507,1 
.unitscan Lord Aliden Perenolde
.mob Syndicate Assassin
.group 2
step
.goto Alterac Mountains,39.30,14.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾丽莎|r
.turnin 507 ,t Lord Aliden Perenolde
.accept 508 ,a Taretha's Gift
.target Elysa
.group
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>> 寻找|cRXP_ENEMY_巴隆·瓦杜斯|r. 他随机刷新在各个营地和斯坦恩布莱德的旅店内. 击杀并拾取他的|cRXP_LOOT_头|r
.complete 566,1 
.unitscan Baron Vardus
.group 2
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >> 返回塔伦米尔
step
.goto Alterac Mountains,61.10,82.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 566 ,t WANTED: Baron Vardus
.target High Executor Darthalia
.group
step
.goto Alterac Mountains,62.10,82.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.turnin 508 ,t Taretha's Gift
.target Krusk
.group
step
.goto Hillsbrad Foothills,62.63,20.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅里萨拉|r
.turnin 520 ,t The Crown of Will
.target Melisara
.group
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_魔导师沃迪恩·虚无之光|r和|cRXP_FRIENDLY_看守者贝瓦里尔|r
.turnin 545 ,t Dalaran Patrols
.goto Hillsbrad Foothills,61.56,20.89
.turnin 557 ,t Bracers of Binding
.goto Hillsbrad Foothills,61.49,20.93
.target Magus Wordeen Voidglare
.target Keeper Bel'varil
step
.goto Hillsbrad Foothills,60.14,18.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fly Hammerfall >> 飞往落锤镇
.target Zarise
.zoneskip Arathi Highlands
step
.goto Arathi Highlands,73.80,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 638 ,t Trollbane
.accept 639 ,a Sigil of Strom
.target Zengu
.group
step
.goto Arathi Highlands,73.80,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 638 ,t Trollbane
.target Zengu
step
.goto Arathi Highlands,74.30,33.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜拉姆法尔|r
.accept 678 ,a Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,72.70,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈莫尔|r
.accept 675 ,a Raising Spirits
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 675 ,t Raising Spirits
.accept 701 ,a Guile of the Raptor
.target Tor'gan
step
.goto Arathi Highlands,62.50,33.80
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_密斯莱尔水晶碎块|r
.accept 642 ,a The Princess Trapped
step
.goto Arathi Highlands,80.80,39.91,20,0
.goto Arathi Highlands,82.25,38.94,20,0
.goto Arathi Highlands,82.39,36.78,20,0
.goto Arathi Highlands,83.56,35.02,20,0
.goto Arathi Highlands,84.87,31.67,20,0
.goto Arathi Highlands,87.10,31.31,20,0
.goto Arathi Highlands,84.73,28.99,20,0
.goto Arathi Highlands,84.32,30.93
>> 击杀|cRXP_ENEMY_枯须狗头人|r, |cRXP_ENEMY_枯须掘地工|r和|cRXP_ENEMY_枯须勘探员|r. 拾取|cRXP_LOOT_密斯莱尔之尘|r
.complete 642,1 
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,84.30,30.95
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在洞穴深处点击|cRXP_PICK_虹光水晶碎块|r
.turnin 642 ,t The Princess Trapped
.accept 651 ,a Stones of Binding
step
.goto Arathi Highlands,66.70,29.80
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_东禁锢之石|r获取|cRXP_LOOT_海浪钥匙|r
>> 击杀|cRXP_ENEMY_水浪流放者|r. 拾取|T134714:0|t[元素之水] << Shaman
>> |cRXP_ENEMY_水浪流放者|r|cRXP_WARN_会冰甲术和冰霜新星|r
.complete 651,2 
.collect 7070,1 
.mob Cresting Exile
step
.goto Arathi Highlands,52.00,50.80
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_外禁锢之石|r获取|cRXP_LOOT_雷霆钥匙|r
>> 击杀|cRXP_ENEMY_雷霆流放者|r. 拾取|T136107:0|t[元素空气] << Shaman
>> |cRXP_WARN_小心!|r|cRXP_ENEMY_雷霆流放者|r|cRXP_WARN_爆发伤害很高|r
.complete 651,3 
.collect 7069,1 
.mob Thundering Exile
step
.goto Arathi Highlands,25.50,30.10
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_西禁锢之石|r获取|cRXP_LOOT_烈焰钥匙|r
>> 击杀|cRXP_ENEMY_烈焰流放者|r. 拾取|T135805:0|t[元素火焰] << Shaman
>> |cRXP_WARN_如果你发现自己有危险, 就对|cRXP_ENEMY_烈焰流放者|r使用|T133438:0|t[海浪咒符]|r
.complete 651,1 
.collect 7068,1 
.mob Burning Exile
step
.goto Arathi Highlands,36.20,57.30
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_内禁锢之石|r
.turnin 651 ,t Stones of Binding
step << Shaman
.goto Arathi Highlands,36.20,57.30
>> 击杀|cRXP_ENEMY_顽石流放者|r. 拾取|T134572:0|t[元素之土]
>> 你需要这些东西来完成一个50级的萨满任务, 一旦你到达奥格瑞玛就把它们存入银行
.collect 7067,1 
.mob Rumbling Exile
step
.goto Arathi Highlands,36.20,57.30
>> |TInterface/GossipFrame/HealerGossipIcon:0|t再次点击|cRXP_PICK_内禁锢之石|r
.accept 652 ,a Breaking the Keystone
.group
step
#completewith next
>> 击杀|cRXP_ENEMY_高地猎兽龙|r. 拾取|cRXP_LOOT_心脏|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,52.06,74.38,50,0
.goto Arathi Highlands,53.81,74.59,50,0
.goto Arathi Highlands,53.58,76.20,50,0
.goto Arathi Highlands,54.52,78.00,15,0
.goto Arathi Highlands,53.68,79.95,20,0
.goto Arathi Highlands,53.81,74.59
>> 击杀|cRXP_ENEMY_石拳蛮兵|r和|cRXP_ENEMY_石拳法师|r
>> |cRXP_WARN_小心法师的霜甲术和冰霜新星|r
>> |cFFEB144C请**特别注意**稀有怪碎骨者穆罗克, 他一刀能砍你250-450血|r
.complete 678,1 
.complete 678,2 
.mob Boulderfist Brute
.mob Boulderfist Magus
.unitscan Molok the Crusher
step
.goto Arathi Highlands,52.77,63.56,70,0
.goto Arathi Highlands,50.22,65.00,70,0
.goto Arathi Highlands,49.71,68.69,70,0
.goto Arathi Highlands,48.07,74.25,70,0
.goto Arathi Highlands,46.21,76.74,70,0
.goto Arathi Highlands,46.04,79.55,70,0
.goto Arathi Highlands,48.59,80.56,70,0
.goto Arathi Highlands,49.71,68.69
>> 击杀|cRXP_ENEMY_高地猎兽龙|r. 拾取|cRXP_LOOT_心脏|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,27.3,62.8
>> 击杀|cRXP_ENEMY_辛迪加潜伏者|r, |cRXP_ENEMY_辛迪加咒术师|r, 和|cRXP_ENEMY_辛迪加法师|r. 拾取|cRXP_LOOT_激流堡符印|r
>> |cRXP_WARN_它的掉率非常低. 小心刷新的小怪. 小心|r|cRXP_ENEMY_辛迪加潜伏者|r|cRXP_WARN_的网人和缴械|r
.complete 639,1 
.mob Syndicate Prowler
.mob Syndicate Conjuror
.mob Syndicate Magus
.group 3
step
.loop 25,Arathi Highlands,67.3,31.1,61.8,43.0,47.4,56.8,30.5,54.6,21.1,36.5,26.4,30.3,26.0,45.4,30.5,54.6,47.4,56.8,61.8,43.0,67.3,31.1
>> 击杀|cRXP_ENEMY_弗兹鲁克|r. 拾取他的|cRXP_LOOT_秩序魔棒|r
.link https://www.twitch.tv/videos/669107037?t=05h51m54s >> |TInterface/GossipFrame/HealerGossipIcon:0|t点击此处获取视频教程. 你最好优先点杀|cRXP_ENEMY_斯利比|r
>> 如果组不到队可以考虑跳过此步 << !Warlock
.complete 652,1 
.unitscan Fozruk
.unitscan Znort
.unitscan Feeboz
.unitscan Sleeby
.group 3
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >> 返回落锤镇
step
.goto Arathi Highlands,74.70,36.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 701 ,t Guile of the Raptor
.accept 702 ,a Guile of the Raptor
.accept 673 ,a Foul Magics
.target Tor'gan
.group
step
.goto Arathi Highlands,74.70,36.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 701 ,t Guile of the Raptor
.accept 702 ,a Guile of the Raptor
.target Tor'gan
step
.goto Arathi Highlands,72.70,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈莫尔|r
.turnin 702 ,t Guile of the Raptor
.target Gor'mul
step
.goto Arathi Highlands,74.00,33.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林法尔|r
.accept 680 ,a The Real Threat
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 639 ,t Sigil of Strom
.accept 640 ,a The Broken Sigil
.target Zengu
.group
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 678 ,t Call to Arms
.accept 679 ,a Call to Arms
.target Drum Fel
.group
step
.goto Arathi Highlands,74.20,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 678 ,t Call to Arms
.target Drum Fel
step
.goto Arathi Highlands,72.80,34.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈莫尔|r
.accept 847 ,a Guile of the Raptor
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 847 ,t Guile of the Raptor
.target Tor'gan
step
.goto Arathi Highlands,36.20,57.30
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_钥匙之石|r
>> |cRXP_WARN_小心|r|cRXP_ENEMY_顽石流放者|r|cRXP_WARN_. 他们的眩晕技能没有递减|r
.turnin 652 ,t Breaking the Keystone
.accept 688 ,a Myzrael's Allies
.group
step
#completewith next
>> 击杀|cRXP_ENEMY_激流堡士兵|r. 拾取|cRXP_LOOT_符印碎片|r
>> |cRXP_ENEMY_激流堡防御者|r|cRXP_WARN_会盾猛|r
.complete 640,1 
.mob Stromgarde Troll Hunter
.mob Stromgarde Defender
.mob Stromgarde Vindicator
.group 3
step
.goto Arathi Highlands,29.45,64.39,30,0
.goto Arathi Highlands,29.63,62.95
>> 击杀|cRXP_ENEMY_玛雷兹·考尔|r. 拾取她的|cRXP_LOOT_法球|r
>> |cRXP_WARN_她在激流堡东侧有两个刷新点|r
.complete 673,1 
.unitscan Marez Cowl
.group 3
step
.loop 25,Arathi Highlands,23.73,60.75,23.25,63.09,22.03,63.07,21.21,63.22,21.19,60.65,22.49,59.37,22.83,58.02,23.82,57.13,24.92,57.18,27.50,57.62,27.37,58.92,24.36,58.87,23.49,59.57,23.73,60.75
>> 击杀|cRXP_ENEMY_激流堡士兵|r. 拾取|cRXP_LOOT_符印碎片|r
>> |cRXP_ENEMY_激流堡防御者|r|cRXP_WARN_会盾猛|r
.complete 640,1 
.mob Stromgarde Troll Hunter
.mob Stromgarde Defender
.mob Stromgarde Vindicator
.group 3
step
#completewith next
>> 击杀|cRXP_ENEMY_石拳萨满|r和|cRXP_ENEMY_石拳领主|r
.complete 679,1 
.complete 679,2 
.mob Boulderfist Shaman
.mob Boulderfist Lord
.group 3
step
.goto Arathi Highlands,18.74,66.30,30,0
.goto Arathi Highlands,19.6,66.9
>> 击杀|cRXP_ENEMY_奥卡拉尔|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_ENEMY_奥卡拉尔|r|cRXP_WARN_会刷新在阿拉索之塔底部的2个区域|r
.complete 680,1 
.unitscan Or'Kalar
.group 3
step
.loop 25,Arathi Highlands,18.91,65.80,20.05,65.43,20.50,66.72,21.49,67.03,21.84,65.41,23.64,65.69,22.25,67.74,20.89,69.19,19.51,69.14,18.26,67.42,18.91,65.80
>> 击杀|cRXP_ENEMY_石拳萨满|r和|cRXP_ENEMY_石拳领主|r
.complete 679,1 
.complete 679,2 
.mob Boulderfist Shaman
.mob Boulderfist Lord
.group 3
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >> 返回落锤镇
.group
step
.goto Arathi Highlands,74.70,36.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔甘|r
.turnin 673 ,t Foul Magics
.turnin 640 ,t The Broken Sigil
.accept 641 ,a Sigil of Thoradin
.target Tor'gan
.group
step
.goto Arathi Highlands,74.00,33.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林法尔|r
.turnin 680 ,t The Real Threat
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 641 ,t Sigil of Thoradin
.accept 643 ,a Sigil of Arathor
.target Zengu
.group
step
.goto Arathi Highlands,74.25,33.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 679 ,t Call to Arms
.target Drum Fel
.group
step
.goto Arathi Highlands,73.84,32.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板埃德瓦|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Adegwa
step
.goto Arathi Highlands,73.41,36.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里高利·维克托医生|r
.accept 6622 ,a Triage
.target Doctor Gregory Victor
.skill firstaid,<225,1
step
.goto Arathi Highlands,73.03,36.84
.use 16991 >> |cRXP_WARN_对|r|cRXP_FRIENDLY_部落战士|r使用|T133682:0|t[急救绷带]|cRXP_WARN_. 优先处理|cRXP_FRIENDLY_受致命伤的士兵|r|r
.complete 6622,1 
.target Critically Injured Horde Soldier
.target Badly Injured Horde Soldier
.target Injured Horde Soldier
.isOnQuest 6622
step
.goto Arathi Highlands,73.41,36.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里高利·维克托医生|r
.turnin 6622 ,t Triage
.target Doctor Gregory Victor
.isQuestComplete 6622
step
.destroy 16991 >> 摧毁|T133682:0|t[急救绷带]. 你不再需要它了
.isQuestTurnedIn 6624
step
.goto Arathi Highlands,74.40,35.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨鲁克|r
.turnin 688 ,t Myzrael's Allies
.accept 687 ,a Theldurin the Lost
.target Zaruk
.isQuestTurnedIn 652
.group
step
.goto Arathi Highlands,53.8,40.8,60,0
.goto Arathi Highlands,49.5,44.0,60,0
.goto Arathi Highlands,43.2,55.1,60,0
.goto Arathi Highlands,34.7,52.2,60,0
.goto Arathi Highlands,27.2,49.8,60,0
.goto Arathi Highlands,66.0,55.6,60,0
.goto Arathi Highlands,24.2,60.3,60,0
.goto Arathi Highlands,27.4,58.2
>> 击杀|cRXP_ENEMY_瓦罗卡尔中尉|r和他的|cRXP_ENEMY_激流堡骑兵|r. 拾取他的|cRXP_LOOT_符印|r
>> |cRXP_WARN_瓦罗卡尔中尉会加血还能无敌. 他的骑兵能造成高额的冲锋伤害|r
.complete 643,1 
.unitscan Lieutenant Valorcall
.mob Stromgarde Cavalryman
.group 3
step
.goto Arathi Highlands,73.80,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 643 ,t Sigil of Arathor
.accept 644 ,a Sigil of Trollbane
.target Zengu
.group
step
.goto Arathi Highlands,28.5,58.1
>> 击杀|cRXP_ENEMY_加林·托尔贝恩王子|r. 拾取他的|cRXP_LOOT_符印|r
.complete 644,1 
.unitscan Prince Galen Trollbane
.group 3
step
.goto Arathi Highlands,73.80,33.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 644 ,t Sigil of Trollbane
.accept 645 ,a Trol'kalar
.target Zengu
.group
step
.goto Arathi Highlands,28.9,59.6
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_托尔贝恩的墓室|r
.turnin 645 ,t Trol'kalar
.accept 646 ,a Trol'kalar
.group 3
step
#completewith next
.goto Arathi Highlands,21.6,75.6,30,0
.goto Arathi Highlands,22.1,79.9,25 >> 穿过洞穴前往法迪尔海湾
step
.goto Arathi Highlands,31.83,82.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵鲁鲁|r
.accept 663 ,a Land Ho!
.target Lolo the Lookout
step
.goto Arathi Highlands,32.28,81.37
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 663 ,t Land Ho!
.target Shakes O'Breen
step
.goto Arathi Highlands,32.78,81.51
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副尼兹利克斯|r
.accept 662 ,a Deep Sea Salvage
.target First Mate Nilzlix
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯迪加特船长|r和|cRXP_FRIENDLY_菲兹索普教授|r
.accept 664 ,a Drowned Sorrows
.goto Arathi Highlands,34.00,80.79
.accept 665 ,a Sunken Treasure
.goto Arathi Highlands,33.87,80.55
.target Captain Steelgut
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.7,79.7
>> 等待|cRXP_FRIENDLY_菲兹索普教授|r的剧情结束, 然后击杀刷新的2只|cRXP_ENEMY_复仇巨浪|r.
>> |cRXP_WARN_这些怪是40级的. 尽快让|cRXP_FRIENDLY_菲兹索普教授|r脱离仇恨|r
.complete 665,1 
.unitscan Vengeful Surge
step
.goto Arathi Highlands,33.8,80.5
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉克里格博士|r
.turnin 665 ,t Sunken Treasure
.accept 666 ,a Sunken Treasure
.target Doctor Draxlegauge
step << !Druid !Warlock !Shaman
#ah
#completewith SLog
+使用|T134797:0|t[水下呼吸药剂]
.use 5996 
.itemcount 5996,1
step
#sticky
#completewith Daggerspines
+|cRXP_ENEMY_刺脊劫掠者|r|cRXP_WARN_会网人, 所以如果你没用|r|T134797:0|t[水下呼吸药剂]你需要特别注意呼吸条 << !Druid !Warlock !Shaman
+|cRXP_ENEMY_刺脊劫掠者|r|cRXP_WARN_会网人, 所以请确保你的水下呼吸技能已经激活了.|r << Warlock/Shaman
+|cRXP_WARN_当你的呼吸条快见底的时候使用水栖形态|r << Druid
step
#completewith ElvenGems
>> 击杀|cRXP_ENEMY_刺脊劫掠者|r和|cRXP_ENEMY_刺脊巫女|r
.complete 664,1 
.complete 664,2 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
#completewith SLog
.use 4491 >> |TInterface/GossipFrame/HealerGossipIcon:0|t装备|T133149:0|t[寻宝潜水镜]. 寻找|cRXP_PICK_石化精灵宝钻|r. 拾取|cRXP_LOOT_精灵宝石|r
.complete 666,1 
step
.goto Arathi Highlands,23.40,85.09
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_书籍|r获取|cRXP_LOOT_处女号的航海日志|r
>> |cRXP_WARN_这本日志位于沉船的中层靠近前部的地方|r
.complete 662,2 
step
.goto Arathi Highlands,23.04,84.51
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_展开的羊皮纸|r获取|cRXP_LOOT_处女号的航海图|r
>> |cRXP_WARN_此航海图位于沉船中层靠近中部的地方|r
.complete 662,1 
step
.goto Arathi Highlands,20.46,85.61
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_展开的羊皮纸|r获取|cRXP_LOOT_银松之魂号的航海图|r
>> |cRXP_WARN_此航海图位于沉船中层靠近前部的加农炮边上的箱子上|r
.complete 662,3 
step
#label SLog
.goto Arathi Highlands,20.65,85.10
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_书籍|r获取|cRXP_LOOT_银松之魂号的航海日志|r
>> |cRXP_WARN_此航海图位于沉船底层靠近前部的土堆上|r
.complete 662,4 
step
#label ElvenGems
.loop 25,Arathi Highlands,19.3,84.1,17.7,89.5,25.5,90.8,24.1,85.7,23.2,89.7,19.3,84.1,17.7,89.5,25.5,90.8,24.1,85.7,23.2,89.7,19.3,84.1
.use 4491 >> |TInterface/GossipFrame/HealerGossipIcon:0|t装备|T133149:0|t[寻宝潜水镜]. 寻找|cRXP_PICK_石化精灵宝钻|r. 拾取|cRXP_LOOT_精灵宝石|r
.complete 666,1 
step
#label Daggerspines
.loop 25,Arathi Highlands,21.05,84.62,23.44,84.76,25.38,86.03,23.14,89.88,21.55,86.67,18.75,85.31,19.76,84.00,21.05,84.62
>> 完成击杀|cRXP_ENEMY_刺脊劫掠者|r和|cRXP_ENEMY_刺脊巫女|r
.complete 664,1 
.complete 664,2 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
#completewith next
+|cRXP_WARN_重新装备上你的头盔然后手动跳过此步.|r
step
#requires ElvenGems
.goto Arathi Highlands,32.77,81.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副尼兹利克斯|r
.turnin 662 ,t Deep Sea Salvage
.target First Mate Nilzlix
step
.goto Arathi Highlands,33.86,80.44
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉克里格博士|r
.turnin 666 ,t Sunken Treasure
.accept 668 ,a Sunken Treasure
.target Doctor Draxlegauge
step
.goto Arathi Highlands,34.00,80.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯迪加特船长|r
.turnin 664 ,t Drowned Sorrows
.target Captain Steelgut
step
.goto Arathi Highlands,32.28,81.37
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 668 ,t Sunken Treasure
.accept 669 ,a Sunken Treasure
.target Shakes O'Breen
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 41-42 荒芜之地
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 42-43 荆棘谷
step
#completewith WetlandsLogoutSkip
.goto Wetlands,32.78,13.12
.zone Wetlands >> 游到湿地
step
.abandon 566 ,ab WANTED: Baron Vardus
.isOnQuest 566
step
.abandon 518 ,ab Crown of Will
.isOnQuest 518
step
.abandon 519 ,ab Crown of Will
.isOnQuest 519
step
.abandon 520 ,ab Crown of Will
.isOnQuest 520
step
.abandon 507 ,ab Lord Aliden Perenolde
.isOnQuest 507
step
.abandon 639 ,ab Sigil of Strom
.isOnQuest 639
step
.abandon 652 ,ab Breaking the Keystone
.isOnQuest 652
step
.abandon 673 ,ab Foul Magics
.isOnQuest 673
step
.abandon 680 ,ab Real Threat
.isOnQuest 680
step
.abandon 640 ,ab Broken Sigil
.isOnQuest 640
step
.abandon 679 ,ab Call to Arms
.isOnQuest 679
step
.abandon 643 ,ab Sigil of Arathor
.isOnQuest 643
step
#label WetlandsLogoutSkip
.goto Wetlands,53.86,46.42,150,0
.goto Wetlands,63.9,78.6
.zone Loch Modan >> 在洞穴深处的蘑菇上小退. 重新登录后，你应当会出现在塞尔萨玛外面
.link https://www.youtube.com/watch?v=21CuGto26Mk >> 点击此处获取视频教程
>> |cRXP_WARN_当你重新登录传到塞尔萨玛后, 在路的另一侧向西南方向前进并避开守卫. 重登后一定要十分小心不要向前移动这可能会引到30-40级的守卫.|r
.unitscan Mountaineer Stenn
.unitscan Mountaineer Kamdar
step
#completewith next
.goto Loch Modan,25.34,67.27,0
.goto Loch Modan,24.76,70.59,30,0
.goto Loch Modan,25.10,72.98,30,0
.goto Loch Modan,26.11,75.42,30,0
.goto Loch Modan,23.27,81.30,30,0
.goto Loch Modan,22.82,84.81,30,0
.goto Loch Modan,19.59,87.23,30,0
.goto Loch Modan,20.37,91.08,30,0
.goto Loch Modan,22.33,91.55,30,0
.goto Loch Modan,22.87,94.92,30,0
.goto Badlands,5.73,29.78,0
>> 使用捷径以更快到达荒芜之地
.zone Badlands >> 前往荒芜之地
.link https://www.youtube.com/watch?v=oNFXup-DCM0 >> 点击此处获取视频教程
step
.goto Badlands,3.99,44.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里克|r
.fp Kargath >> 开启卡加斯飞行点
.target Gorrik
step
.goto Badlands,2.90,47.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯兰达|r
.vendor >> |cRXP_BUY_清包并修理, 如果有必要的话|r
.target Sranda
step
.goto Badlands,2.91,45.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高恩|r
.accept 782 ,a Broken Alliances
.target Gorn
.group
step
.goto Badlands,2.42,46.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加卡尔|r
.accept 2258 ,a Badlands Reagent Run
.target Jarkal Mossmeld
step
.goto Badlands,6.4,47.5
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼卡·血痕|rr
.accept 1419 ,a Coyote Thieves
.target Neeka Bloodscar
step
#ah
.goto Badlands,25.95,44.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 713 ,a Coolant Heads Prevail
.turnin 713 ,t Coolant Heads Prevail
.target Lotwil Veriatus
.itemcount 3829,1 
step
#ah
.goto Badlands,25.95,44.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 714 ,a Gyro... What?
.turnin 714 ,t Gyro... What?
.target Lotwil Veriatus
.itemcount 4389,1 
.isQuestTurnedIn 713
step
#ah
.goto Badlands,25.82,44.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢希恩·枪穗|r
.accept 715 ,a Liquid Stone
.turnin 715 ,t Liquid Stone
.itemcount 929,1 
.itemcount 3823,1 
.isQuestTurnedIn 714
step
#ah
.goto Badlands,25.82,44.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢希恩·枪穗|r
.accept 716 ,a Stone Is Better than Cloth
.turnin 716 ,t Stone Is Better than Cloth
.target Lucien Tosselwrench
.itemcount 2868,1 
.isQuestTurnedIn 714
step
.goto Badlands,25.95,44.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 710 ,a Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith badlandsall
>> 任务过程中, 击杀你遇到的所有|cRXP_ENEMY_秃鹫|r和|cRXP_ENEMY_山狗|r. 拾取|cRXP_LOOT_翅膀|r, |cRXP_LOOT_胃囊|r, |cRXP_LOOT_颚骨|r和|cRXP_LOOT_牙齿|r
>> |cRXP_WARN_不要特意来做这一步. 你可以稍后完成|r
.complete 703,1 
.complete 2258,1 
.complete 1419,1 
.complete 2258,2 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,23.41,45.26,21.90,43.22,19.99,43.10,17.76,41.06,16.62,38.29,14.78,37.34,13.48,37.80,13.01,40.09,15.11,41.89,16.94,42.80,19.17,45.74,20.47,48.40,23.12,48.20,23.41,45.26
>> 击杀|cRXP_ENEMY_石元素|r. 拾取|cRXP_LOOT_石头碎块|r和|cRXP_LOOT_元素碎片|r
.complete 710,1 
.complete 2258,3 
.mob Lesser Rock Elemental
.mob Rock Elemental
.mob Enraged Rock Elemental
.mob Greater Rock Elemental
step
#label badlandsall
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 710 ,t Study of the Elements: Rock
.accept 711 ,a Study of the Elements: Rock
.target Lotwil Veriatus
step
#completewith next
>> 击杀|cRXP_ENEMY_山狗|r. 拾取|cRXP_LOOT_颚骨|r和|cRXP_LOOT_牙齿|r
.complete 1419,1 
.complete 2258,2 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,17.24,58.53,15.35,58.51,14.85,60.16,15.00,61.98,16.15,61.84,17.01,61.24,17.24,58.53
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取|cRXP_LOOT_翅膀|r
.complete 703,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#completewith badlands3
>> 击杀|cRXP_ENEMY_山狗|r和|cRXP_ENEMY_秃鹫|r. 拾取|cRXP_LOOT_颚骨|r, |cRXP_LOOT_牙齿|r和|cRXP_LOOT_胃囊|r
>> |cRXP_WARN_优先击杀|r|cRXP_ENEMY_山狗|r|cRXP_WARN_再是|r|cRXP_ENEMY_秃鹫|r
.complete 1419,1 
.complete 2258,2 
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.goto Badlands,42.47,52.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹里克|r
.vendor >> |cRXP_BUY_清包并修理, 如果有必要的话|r
.target Jazzrik
step
#ah
.goto Badlands,42.39,52.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
.accept 705 ,a Pearl Diving
.turnin 705 ,t Pearl Diving
.target Rigglefuzz
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r和|cRXP_FRIENDLY_流放者马特克|r
.accept 703 ,a Barbecued Buzzard Wings
.turnin 703 ,t Barbecued Buzzard Wing
.goto Badlands,42.39,52.92
.turnin 1106 ,t Martek the Exiled
.accept 1108 ,a Indurium
.goto Badlands,42.21,52.70
.target Rigglefuzz
.target Martek the Exiled
step
#sticky
#label signofearthBL
>> 寻找并击杀|cRXP_ENEMY_索格兰|r. 拾取|cRXP_LOOT_大地印章|r
>> |cRXP_LOOT_索格兰|r|cRXP_WARN_与5名守卫一起在整个荒芜之地巡逻.|r
.complete 782,1 
.unitscan Boss Tho'grun
.mob Dustbelcher Mystic
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Shaman
.mob Dustbelcher Mauler
.isOnQuest 782
.group 3
step
.loop 25,Badlands,36.2,75.1,46.0,78.4,42.8,87.2,36.2,75.1
>> 击杀|cRXP_ENEMY_石元素|r. 拾取|cRXP_LOOT_大石片|r
>> |cRXP_ENEMY_石元素|r|cRXP_WARN_在南部数量庞大, 但在之前做元素任务的北部地区也有少量分布|r
.complete 711,1 
.mob Rock Elemental
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 687 ,t Theldurin the Lost
.accept 709 ,a Solution to Doom
.target Theldurin the Lost
.isOnQuest 687
.group
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 ,a Solution to Doom
.target Theldurin the Lost
.isQuestTurnedIn 687
.group
step
.loop 25,Badlands,47.16,69.82,48.38,72.06,49.86,72.12,51.20,71.93,52.41,69.96,52.55,67.79,52.46,65.90,51.00,63.86,49.66,63.97,49.69,66.39,49.78,68.28,48.14,68.30,47.16,69.82
>> 击杀|cRXP_ENEMY_石窟穴居人|r. 拾取|cRXP_LOOT_精铁碎片|r
.complete 1108,1 
.mob Stonevault Bonesnapper
.mob Stonevault Shaman
step
#label badlands3
.goto Badlands,42.21,52.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_流放者马特克|r
.turnin 1108 ,t Indurium
.accept 1137 ,a News for Fizzle
.target Martek the Exiled
step
#completewith next
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取|cRXP_LOOT_胃囊|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70,90,0
.goto Badlands,25.09,55.10,90,0
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70
>> 击杀|cRXP_ENEMY_山狗|r. 拾取|cRXP_LOOT_颚骨|r和|cRXP_LOOT_牙齿|r
.complete 1419,1 
.complete 2258,2 
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,17.24,58.53,15.35,58.51,14.85,60.16,15.00,61.98,16.15,61.84,17.01,61.24,17.24,58.53
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取|cRXP_LOOT_胃囊|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
.goto Badlands,6.49,47.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼卡·血痕|r
.turnin 1419 ,t Coyote Thieves
.target Neeka Bloodscar
step
.goto Badlands,2.42,46.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加卡尔|r
.turnin 2258 ,t Badlands Reagent Run
.accept 2202 ,a Uldaman Reagent Run
.target Jarkal Mossmeld
.group
step
.goto Badlands,2.42,46.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加卡尔|r
.turnin 2258 ,t Badlands Reagent Run
.target Jarkal Mossmeld
step
#requires signofearthBL
.goto Badlands,2.91,45.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高恩|r
.turnin 782 ,t Broken Alliances
.target Gorn
.isQuestComplete 782
.group
step
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 711 ,t Study of the Elements: Rock
.target Lotwil Veriatus
step
.goto Badlands,42.39,52.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
.accept 2418 ,a Power Stones
.target Rigglefuzz
.group
step
#completewith Tablet
>> 拾取|cRXP_ENEMY_暗炉矮人|r和|cRXP_ENEMY_石窟穴居人|r有几率获得|T133289:0|t[破碎的项链]
>> |cRXP_WARN_先不要接这个任务, 你的任务记录可能会满|r
.collect 7666,1 
.group 3
step
#completewith next
.goto Badlands,49.7,13.3,125,0
+前往荒芜之地北部的造物者遗迹并进入洞穴
.group 3
step
#completewith Tablet
>> 拾取|cRXP_PICK_紫色蘑菇|r获得|cRXP_LOOT_紫色蘑菇|r
>> 击杀|cRXP_ENEMY_暗炉矮人|r. 拾取|cRXP_LOOT_能量石|r
>> |cRXP_WARN_小心! |cRXP_ENEMY_暗炉勘探员|r|cRXP_WARN_会冰霜新星, |cRXP_ENEMY_黑曜石魔像|r能反射法术并且免疫嘲讽!|r
.complete 2202,1 
.complete 2418,1 
.complete 2418,2 
.mob Shadowforge Surveyor
.mob Shadowforge Ruffian
.mob Shadowforge Digger
.group 3
step
.goto Eastern Kingdoms,53.81,57.94,0
.goto Eastern Kingdoms,53.78,58.23
>> 在南大厅的南部拾取|cRXP_PICK_加勒特的宝箱|r获取|cRXP_LOOT_加勒特的家族宝藏|r
>> |cRXP_WARN_南大厅在奥达曼副本门的西南部|r
.complete 2342,1 
.isOnQuest 2342
.group 3
step
#label Tablet
.goto Eastern Kingdoms,54.14,58.24
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在中间的房间里拾取|cRXP_PICK_上古之柜|r获取|cRXP_LOOT_雷乌纳石板|r
.complete 709,1 
.group 3
step
.loop 25,Eastern Kingdoms,54.15,58.05,54.25,58.03,54.15,58.05,54.03,57.96,54.01,58.18,54.03,57.96,53.97,57.91,53.95,58.03,53.87,57.93,53.71,57.92,53.87,57.93,53.90,57.81,53.87,57.93,53.95,58.03,53.97,57.91,53.94,57.78,54.03,57.69,54.18,57.79,54.11,57.84,54.20,57.87,54.29,57.77,54.20,57.67,54.11,57.84,54.18,57.79,54.03,57.69,53.94,57.78,54.03,57.96,54.15,58.05,54.15,58.05
>> 完成拾取|cRXP_PICK_紫色蘑菇|r
>> 完成击杀|cRXP_ENEMY_暗炉矮人|r. 拾取|cRXP_LOOT_能量石|r
>> |cRXP_WARN_小心! |cRXP_ENEMY_暗炉勘探员|r|cRXP_WARN_会冰霜新星, |cRXP_ENEMY_黑曜石魔像|r能反射法术并且免疫嘲讽!|r
.complete 2202,1 
.complete 2418,1 
.complete 2418,2 
.mob Shadowforge Surveyor
.mob Shadowforge Ruffian
.mob Shadowforge Digger
.group 3
step
.goto Eastern Kingdoms,54.51,57.77,10,0
.goto Badlands,51.3,77.0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t离开奥达曼, 然后对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 709 ,t Solution to Doom
.target Theldurin the Lost
.group
step
.goto Badlands,42.39,52.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
.turnin 2418 ,t Power Stones
.target Rigglefuzz
.group
step
.goto Badlands,42.47,52.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹里克|r
.vendor >> |cRXP_BUY_清包并修理, 如果有必要的话|r
.target Jazzrik
step
.goto Badlands,6.49,47.19
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼卡·血痕|r
.accept 1420 ,a Report to Helgrum
.target Neeka Bloodscar
step
.goto Badlands,2.42,46.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加卡尔|r
.turnin 2202 ,t Uldaman Reagent Run
.target Jarkal Mossmeld
.group
step << Druid
#completewith DruidTraining7
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >> 学习职业技能
.target Loganaar
.xp <40,1
.xp >42,1
step << Druid
#label DruidTraining7
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9750 >> 学习职业技能
.target Loganaar
.xp <42,1
step
#completewith next
.hs >> 炉石回奥格瑞玛
.use 6948
step
.goto Orgrimmar,54.10,68.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Gryshka
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 42-43 荆棘谷
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 43-43 凄凉之地 II
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8423 >> 学习职业技能
.target Pephredo
.xp <40,1
.xp >42,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10159 >> 学习职业技能
.target Pephredo
.xp <42,1
step << Mage
.goto Orgrimmar,38.70,85.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在棚屋顶部对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 11417 >> 学习|T135744:0|t[传送门: 奥格瑞玛]
.target Thuul
.xp <40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 8134 >> 学习职业技能
.target Kardris Dreamseeker
.xp <40,1
.xp >42,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 11314 >> 学习职业技能
.target Kardris Dreamseeker
.xp <42,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8624 >> 学习职业技能
.target Ormok
.xp <40,1
.xp >42,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 6774 >> 学习职业技能
.target Ormok
.xp <42,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11665 >> 学习职业技能
.target Mirket
.xp <40,1
.xp >42,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 6789 >> 学习职业技能
.target Mirket
.xp <42,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买所有买得起的宠物升级书
.target Kurgul
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14324 >> 学习职业技能
.target Ormak Grimshot
.xp <40,1
.xp >42,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14289 >> 学习职业技能
.target Ormak Grimshot
.xp <42,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
.train 24561 >> 学习宠物技能
.target Xao'tsu
.xp <42,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 8106 >> 学习职业技能
.target Ur'kyo
.xp <40,1
.xp >42,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10898 >> 学习职业技能
.target Ur'kyo
.xp <42,1
step
.goto Orgrimmar,59.4,36.8
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德兰·杜佛斯|r
.accept 2283 ,a Necklace Recovery
.turnin 2283 ,t Necklace Recovery
.target Dran Droffers
.itemcount 7666,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11608 >> 学习职业技能
.target Grezz Ragefist
.xp <40,1
.xp >42,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11550 >> 学习职业技能
.target Grezz Ragefist
.xp <42,1
step
.goto Orgrimmar,75.18,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 2981 ,a A Threat in Feralas
.target Belgrom Rockmaul
step << Orc !Warlock
.goto Orgrimmar,69.40,13.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔达|r和|cRXP_FRIENDLY_奥古纳罗|r
.train 825 >> 学习|T136103:0|t[骑术：狼]
.vendor >> |cRXP_BUY_购买|r|T132224:0|t[|cFF0070FF狼|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Shaman
.goto Orgrimmar,49.6,69.10
.bankdeposit 7069,7068,7067,7070 >> 存放以下物品到银行:
>> |T135805:0|t[元素火焰]
>> |T134714:0|t[元素之水]
>> |T134572:0|t[元素之土]
>> |T136107:0|t[元素空气]
step << Troll
#completewith next
.subzone 367 >> 前往森金村
step << Troll
.goto Durotar,55.28,75.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔提|r和|cRXP_FRIENDLY_祖尼尔|r
.train 10861 >> 学习|T136103:0|t[骑术：迅猛龙]
.vendor >> |cRXP_BUY_购买|r|T132253:0|t[|cFF0070FF迅猛龙|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#completewith ZeptoUC3
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step
.abandon 782 ,ab Broken Alliances
.isOnQuest 782
step
.abandon 709 ,ab Solution to Doom
.isOnQuest 709
step
.abandon 2202 ,ab Uldaman Reagent Run
.isOnQuest 2202
step
.abandon 2418 ,ab Power Stones
.isOnQuest 2418
step
#label ZeptoUC3
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Stranglethorn Vale >> 乘坐飞艇前往荆棘谷
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,31.49,29.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板苏尔贝克|r
.home >> 绑定炉石到格罗姆高营地
.target Innkeeper Thulbek
step
.goto Stranglethorn Vale,32.12,29.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 572 ,a Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯维雷|r
.turnin 1240 ,t The Troll Witchdoctor
.target Kin'weelay
.isQuestTurnedIn 1238
step
.goto Stranglethorn Vale,32.10,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r
.accept 584 ,a Bloodscalp Clan Heads
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯维雷|r
.accept 598 ,a Split Bone Necklace
.target Kin'weelay
step
#completewith next
.goto Stranglethorn Vale,23.82,10.78,200 >> 前往祖昆达废墟
step
.goto Stranglethorn Vale,23.52,9.53
>> 击杀|cRXP_ENEMY_可怕的奈兹里奥克|r. 拾取他的|cRXP_LOOT_头|r
.complete 584,2 
.unitscan Nezzliok the Dire
step
.goto Stranglethorn Vale,23.44,8.14
>> 击杀|cRXP_ENEMY_甘祖拉恩|r. 拾取他的|cRXP_LOOT_头|r
.complete 584,1 
.unitscan Gan'zulah
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >> 返回格罗姆高营地
step
.goto Stranglethorn Vale,32.22,27.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_冒泡的大锅|r
.turnin 584 ,t Bloodscalp Clan Heads
.accept 585 ,a Speaking with Nezzliok
step
.goto Stranglethorn Vale,31.00,42.50,60,0
.loop 25,Stranglethorn Vale,32.99,38.06,31.42,40.17,30.14,43.06,28.36,43.47,28.53,45.96,30.61,44.54,31.80,43.08,33.24,40.38,33.85,38.45,32.99,38.06
>> 击杀|cRXP_ENEMY_丛林潜猎者|r. 拾取|cRXP_LOOT_羽毛|r
.complete 196,1 
.complete 572,1 
.mob Jungle Stalker
step
.loop 25,Stranglethorn Vale,40.36,43.2941.04,43.73,41.93,44.73,41.47,43.26,42.05,42.55,42.29,41.48,41.55,41.43,41.18,41.93,40.36,43.29
>> 击杀|cRXP_ENEMY_风险投资公司地精|r. 拾取|cRXP_LOOT_水晶|r
.complete 600,1 
.mob Venture Co. Surveyor
.mob Venture Co. Foreman
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
.mob Foreman Cozzle
step
#completewith SkullP
>> 击杀|cRXP_ENEMY_劈颅巨魔|r. 拾取|cRXP_LOOT_獠牙|r和|cRXP_LOOT_项链|r
.complete 209,1 
.complete 598,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step
.goto Stranglethorn Vale,42.20,36.10
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_赞塔加颅骨堆|r获得|cRXP_LOOT_战利品|r
.complete 585,2 
step
.goto Stranglethorn Vale,47.60,39.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_祖玛维颅骨堆|r获得|cRXP_LOOT_战利品|r
.complete 585,3 
step
#label SkullP
.goto Stranglethorn Vale,46.10,32.30
>> |TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_巴里亚曼颅骨堆|r获得|cRXP_LOOT_战利品|r
.complete 585,1 
step
.loop 25,Stranglethorn Vale,42.13,36.29,41.89,35.93,42.45,35.03,42.47,33.35,43.47,33.25,45.06,32.39,45.51,31.66,46.42,31.98,47.19,30.85,47.11,32.54,47.13,34.31,45.23,34.47,44.00,35.53,43.44,37.92,42.13,36.29
>> 完成击杀|cRXP_ENEMY_劈颅巨魔|r. 拾取|cRXP_LOOT_獠牙|r和|cRXP_LOOT_项链|r
.complete 209,1 
.complete 598,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step
.loop 25,Stranglethorn Vale,42.13,36.29,41.89,35.93,42.45,35.03,42.47,33.35,43.47,33.25,45.06,32.39,45.51,31.66,46.42,31.98,47.19,30.85,47.11,32.54,47.13,34.31,45.23,34.47,44.00,35.53,43.44,37.92,42.13,36.29
.xp 42 >> 刷到42级
step
#completewith next
.hs >> 炉石回格罗姆高营地
.use 6948
step
.goto Stranglethorn Vale,31.48,29.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板苏尔贝克|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤索克|r
>> |cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,2600,669,1 
.target Uthok
.xp >40,1
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤索克|r
>> |cFF0E8312从他那购买|r|T135661:0|t[锯齿箭]
.collect 11285,2600,669,1 
.target Uthok
.xp <40,1
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肯维雷|r
.turnin 598 ,t Split Bone Necklace
.turnin 585 ,t Speaking with Nezzliok
.accept 1261 ,a Marg Speaks
.target Kin'weelay
step
.goto Stranglethorn Vale,32.10,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r
.accept 2932 ,a Grim Message
.target Nimboya
step
.goto Stranglethorn Vale,32.10,29.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 572 ,t Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.54,29.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >> 飞往藏宝海湾
.target Thysta
step
.goto Stranglethorn Vale,27.10,77.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 ,t Sunken Treasure
.accept 670 ,a Sunken Treasure
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,27.10,77.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店底层对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 600 ,t Venture Company Mining
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,26.95,77.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_科博克|r
.turnin 209 ,t Skullsplitter Tusks
.accept 1116 ,a Dream Dust in the Swamp
.target Kebok
step
.goto Stranglethorn Vale,28.29,77.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.turnin 628 ,t Excelsior
.target Drizzlik
step
.goto Stranglethorn Vale,26.87,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >> 飞往格罗姆高营地
.target Gringer
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.turnin 196 ,t Raptor Mastery
.accept 197 ,a Raptor Mastery
.goto Stranglethorn Vale,35.66,10.81
.accept 193 ,a Panther Mastery
.goto Stranglethorn Vale,35.55,10.55
.group
step
.goto Stranglethorn Vale,35.66,10.81
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 196 ,t Raptor Mastery
step
#completewith next
.goto Stranglethorn Vale,39.30,6.49,60,0
.goto Stranglethorn Vale,40.63,3.12,50 >> 前往暮色森林
.zoneskip Duskwood
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵哨兵莱度斯|r和|cRXP_FRIENDLY_药剂师法奥斯丁|r
.accept 1372 ,a Nothing But The Truth
.goto Duskwood,87.81,35.62
.turnin 1372 ,t Nothing But The Truth
.goto Duskwood,87.45,35.25
.target Deathstalker Zraedus
.target Apothecary Faustin
step
#completewith next
.goto Duskwood,88.47,41.00,50 >> 前往逆风小径
.zoneskip Deadwind Pass
step
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50,0
.zone Swamp of Sorrows >> 前往悲伤沼泽
.zoneskip Swamp of Sorrows
step
#completewith next
.goto Swamp of Sorrows,13.27,67.96,0
.loop 25,Swamp of Sorrows,12.02,60.27,12.00,67.29,15.12,65.50,16.54,61.12,15.37,55.45,12.19,57.13,12.02,60.27
>> 击杀|cRXP_ENEMY_年轻的幼龙|r和|cRXP_ENEMY_睡梦中的幼龙|r. 拾取|cRXP_LOOT_梦境之尘|r
>> |cRXP_WARN_不要专注于此. 击杀一轮幼龙就走. 稍后再来完成此任务|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step
.goto Swamp of Sorrows,44.70,57.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔|r
.accept 698 ,a Lack of Surplus
.target Dar
step
.goto Swamp of Sorrows,46.10,54.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布雷依克|r
.fp Stonard >> 开启斯通纳德飞行点
.target Breyk
step
.goto Swamp of Sorrows,45.78,52.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25苏塔佐尔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cFF00FF25拉尔塔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Rartar
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在大屋子的顶层对话|cRXP_FRIENDLY_迅捷的赫格拉姆|r和|cRXP_FRIENDLY_费泽卢尔|r
.turnin 1420 ,t Report to Helgrum
.goto Swamp of Sorrows,47.80,55.20
.accept 1424 ,a Pool of Tears
.goto Swamp of Sorrows,47.80,55.20
.target Helgrum the Swift
.target Fel'zerul
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧格鲁姆|r
.train 13553 >> 学习职业技能
.target Ogrom
.xp <42,1
.xp >44,1
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧格鲁姆|r
.train 14285 >> 学习职业技能
.target Ogrom
.xp <44,1
step << Hunter
.goto Swamp of Sorrows,47.35,52.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格罗科尔|r
.train 24561 >> 学习宠物技能
.target Grokor
.xp <42,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡托什|r
.train 6789 >> 学习职业技能
.target Kartosh
.xp <42,1
.xp >44,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡托什|r
.train 11671 >> 学习职业技能
.target Kartosh
.xp <44,1
step << Warlock
.goto Swamp of Sorrows,48.59,55.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.vendor >> 购买所有买得起的宠物升级书
.target Greshka
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.train 11314 >> 学习职业技能
.target Haromm
.xp <42,1
.xp >44,1
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.train 16315 >> 学习职业技能
.target Haromm
.xp <44,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马尔罗什|r
.train 11550 >> 学习职业技能
.target Malosh
.xp <42,1
.xp >44,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马尔罗什|r
.train 11584 >> 学习职业技能
.target Malosh
.xp <44,1
step
#completewith GalenStrongbox
>> 击杀|cRXP_ENEMY_锯齿鳄鱼|r和|cRXP_ENEMY_锯齿钳嘴鳄|r. 拾取|cRXP_LOOT_新鲜的盐齿鳄鱼肉|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
.line Swamp of Sorrows,32.24,36.70,33.22,39.96,33.92,44.25,36.71,46.36,37.92,43.17,38.29,39.13,38.86,35.61,40.34,34.40,40.86,32.29,42.43,32.11,45.77,36.75,46.68,38.55,48.95,38.71,53.41,38.98,55.48,37.42,56.06,36.05
.goto Swamp of Sorrows,56.06,36.05,40,0
.goto Swamp of Sorrows,55.48,37.42,40,0
.goto Swamp of Sorrows,53.41,38.98,40,0
.goto Swamp of Sorrows,48.95,38.71,40,0
.goto Swamp of Sorrows,46.68,38.55,40,0
.goto Swamp of Sorrows,45.77,36.75,40,0
.goto Swamp of Sorrows,42.43,32.11,40,0
.goto Swamp of Sorrows,40.86,32.29,40,0
.goto Swamp of Sorrows,40.34,34.40,40,0
.goto Swamp of Sorrows,38.86,35.61,40,0
.goto Swamp of Sorrows,38.29,39.13,40,0
.goto Swamp of Sorrows,37.92,43.17,40,0
.goto Swamp of Sorrows,36.71,46.36,40,0
.goto Swamp of Sorrows,33.92,44.25,40,0
.goto Swamp of Sorrows,33.22,39.96,40,0
.goto Swamp of Sorrows,32.24,36.70,40,0
>> 击杀|cRXP_ENEMY_‘斗棍’诺博鲁|r. 拾取|T133485:0|t[|cFF00BCD4诺博鲁的木棒|r]. 使用并接受任务
>> |cRXP_ENEMY_‘斗棍’诺博鲁|r|cRXP_WARN_在此区域的中顶部巡逻|r
.collect 6196,1,1392 
.accept 1392 ,a Noboru the Cudgel
.unitscan Noboru the Cudgel
step
.goto Swamp of Sorrows,25.98,31.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛格图尔|r
.accept 1389 ,a Draenethyst Crystals
.turnin 1392 ,t Noboru the Cudgel
.target Magtoor
step
#completewith GalenE
>> 击杀|cRXP_ENEMY_盎格库|r. 拾取他的|cRXP_LOOT_碎片|r
>> |cRXP_WARN_盎格库可能出现在农田避难所的任意位置|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
#completewith GalenE
>> 拾取地上的蓝色|cRXP_LOOT_德莱尼水晶|r
.complete 1389,1 
.target Galen Goodward
step
#completewith next
+|cRXP_WARN_这个任务可能会很难, 请万分小心不要噶了|r
step
#label Galen
.goto Swamp of Sorrows,65.46,18.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加林·古瓦德|r来开启护送任务
>> |cRXP_WARN_开始前, 尽可能的清理掉加林西南方向的小怪|r
.accept 1393 ,a Galen's Escape
.target Galen Goodward
step
#label GalenE
>> 护送|cRXP_FRIENDLY_加林·古瓦德|r安全地离开农田避难所
.complete 1393,1 
.target Galen Goodward
step
#completewith next
>> 拾取地上的蓝色|cRXP_LOOT_德莱尼水晶|r
.complete 1389,1 
.target Galen Goodward
step
.goto Swamp of Sorrows,62.60,22.86,-1
.goto Swamp of Sorrows,64.74,22.46,-1
>> 击杀|cRXP_ENEMY_盎格库|r. 拾取他的|cRXP_LOOT_碎片|r
>> |cRXP_WARN_盎格库可能出现在农田避难所|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
.loop 25,Swamp of Sorrows,58.31,25.47,61.69,22.38,64.52,19.68,63.88,24.38,58.31,25.47
>> 完成拾取地上的蓝色|cRXP_LOOT_德莱尼水晶|r
.complete 1389,1 
step
#label GalenStrongbox
.goto Swamp of Sorrows,47.80,39.75
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_加林的保险箱|r
.turnin 1393 ,t Galen's Escape
step
.goto Swamp of Sorrows,52.44,37.14,60,0
.goto Swamp of Sorrows,56.71,35.60,60,0
.goto Swamp of Sorrows,60.47,31.60,60,0
.goto Swamp of Sorrows,63.96,32.23,60,0
.goto Swamp of Sorrows,52.44,37.14
>> 击杀|cRXP_ENEMY_尖齿鳄鱼|r和|cRXP_ENEMY_锯齿钳嘴鳄|r. 拾取|cRXP_LOOT_新鲜的盐齿鳄鱼肉|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
.goto Swamp of Sorrows,81.40,81.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托克卡尔|r
.turnin 698 ,t Lack of Surplus
.accept 699 ,a Lack of Surplus
.target Tok'Kar
step
.goto Swamp of Sorrows,75.44,60.41,50,0
.goto Swamp of Sorrows,71.14,61.44,50,0
.goto Swamp of Sorrows,65.36,57.19,50,0
.goto Swamp of Sorrows,65.99,47.10,50,0
.goto Eastern Kingdoms,53.87,79.26,50,0
.goto Swamp of Sorrows,70.57,46.04,50,0
.goto Swamp of Sorrows,75.03,50.83,50,0
.goto Swamp of Sorrows,75.44,60.41
>> 拾取散布于泪水之池湖岸和水中的|cRXP_LOOT_阿塔莱神器|r
>> |cRXP_WARN_阿塔莱神器拥有各种不同的模型. 打开设置菜单, 点击系统-图形并调整环境细节到0|r
.complete 1424,1 
step
.goto Swamp of Sorrows,48.00,54.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到斯通纳德|cRXP_FRIENDLY_费泽卢尔|r处
.turnin 1424 ,t Pool of Tears
.target Fel'zerul
step
.goto Swamp of Sorrows,25.90,31.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛格图尔|r
.turnin 1392 ,t Noboru the Cudgel
.turnin 1389 ,t Draenethyst Crystals
.target Magtoor
step
.loop 25,Swamp of Sorrows,12.02,60.27,12.00,67.29,15.12,65.50,16.54,61.12,15.37,55.45,12.19,57.13,12.02,60.27
>> 完成击杀|cRXP_ENEMY_年轻的幼龙|r和|cRXP_ENEMY_睡梦中的幼龙|r. 拾取|cRXP_LOOT_梦境之尘|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step
.goto Swamp of Sorrows,46.08,54.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布雷依克|r
.fly Badlands >> 飞往荒芜之地
.target Breyk
.zoneskip Badlands
step
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 712 ,a Study of the Elements: Rock
.target Lotwil Veriatus
step
.loop 25,Badlands,6.58,75.55,1.23,79.29,2.06,82.38,6.66,81.68,6.58,75.55
>> 击杀|cRXP_ENEMY_巨型石元素|r. 拾取|cRXP_LOOT_护腕|r
.complete 712,1 
.mob Greater Rock Elemental
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 692 ,a The Lost Fragments
.target Theldurin the Lost
.isQuestTurnedIn 688
.group
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 728 ,a To the Undercity for Yagyin's Digest
.target Theldurin the Lost
.isQuestTurnedIn 709
.group
step
.loop 25,Badlands,53.65,81.49,54.29,85.26,55.43,86.87,56.13,82.85,53.65,81.49
>> 击杀|cRXP_ENEMY_被激怒的石元素|r. 拾取|cRXP_LOOT_卷轴|r
.complete 692,1 
.complete 692,2 
.complete 692,3 
.mob Enraged Rock Elemental
.isQuestTurnedIn 688
.group
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_迷失者塞尔杜林|r处
.turnin 692 ,t The Lost Fragments
.accept 656 ,a Summoning the Princess
.target Theldurin the Lost
.isQuestTurnedIn 688
.group
step
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 712 ,t Study of the Elements: Rock
.target Lotwil Veriatus
step
#ah
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 734 ,a This is Going to Be Hard
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.82,44.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢希恩·枪穗|r
.turnin 734 ,t This is Going to Be Hard
.accept 777 ,a This is Going to Be Hard
.target Lucien Tosselwrench
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 777 ,t This is Going to Be Hard
.accept 778 ,a This is Going to Be Hard
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,26.09,46.83
>> 击杀|cRXP_ENEMY_法姆雷托守护者|r. 拾取他的|cRXP_LOOT_护腕|r
.complete 778,1 
.unitscan Fam'retor Guardian
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
.goto Badlands,25.95,44.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r处
.turnin 778 ,t This is Going to Be Hard
.target Lotwil Veriatus
.isQuestComplete 778
step
.goto Badlands,3.99,44.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里克|r
.fly Hammerfall >> 飞往落锤镇
.target Gorrik
step
.goto Arathi Highlands,73.80,33.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森古|r
.turnin 646 ,t Trol'kalar
.target Zengu
.group
step
.goto Arathi Highlands,62.45,33.72
.use 4472 >> 使用|T134937:0|t[密斯莱尔卷轴]并等待剧情
>> 击杀|cRXP_ENEMY_密斯莱尔|r. 拾取她的|cRXP_LOOT_镣铐|r
>> |cRXP_WARN_最好组T奶一起. 她会刷出很多元素小怪|r
.complete 656,1 
.unitscan Myzrael
.group 5
step
.goto Arathi Highlands,62.45,33.72
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击密斯莱尔水晶碎块
.turnin 656 ,t Summoning the Princess
.group
step
#completewith next
.goto Arathi Highlands,21.6,75.6,30,0
.goto Arathi Highlands,22.1,79.9,25 >> 穿过洞穴前往法迪尔海湾
step
.goto Arathi Highlands,32.28,81.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 670 ,t Sunken Treasure
.accept 667 ,a Death From Below
.target Shakes O'Breen
step
.goto Arathi Highlands,31.56,82.14,15,0
.goto Arathi Highlands,31.47,81.06,15,0
.goto Arathi Highlands,32.02,80.71
>> 登船等待娜迦的出现
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_大炮|r直接秒杀|cRXP_ENEMY_刺脊掠夺者|r
.complete 667,1 
.mob Daggerspine Marauder
step
.goto Arathi Highlands,32.28,81.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_沙克斯·奥布里|r处
.turnin 667 ,t Death From Below
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,35.78,79.52
.goto Arathi Highlands,48.71,55.80,30 >> 此步已修复, 直接跳过|r
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_点击此处获取视频教程|r
step
.goto Arathi Highlands,73.10,32.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤尔达|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Urda
.zoneskip Hillsbrad Foothills

step
#completewith VenomBottle
.zone The Hinterlands >> 前往辛特兰
step
#completewith grimmes
>> 击杀|cRXP_ENEMY_枯木巨魔|r. 拾取|cRXP_LOOT_颅骨|r
.collect 9320,20 
.isOnQuest 2932
step
#label VenomBottle
.goto The Hinterlands,23.00,57.73
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在营地周遭点击某个绿色|cRXP_PICK_毒药瓶|r
.accept 2933 ,a Venom Bottles
step
#completewith next
.use 15002 >> 点击|T135128:0|t[尼姆布亚之矛]制作|T135125:0|t[尼姆布亚的长矛]
.itemcount 15002,1
step
#label grimmes
.goto The Hinterlands,23.9,58.3
.use 9319 >> 在营地中央使用|T135125:0|t[尼姆布亚的长矛]
.complete 2932,1 
.isOnQuest 2932
step
#completewith next
.goto Hillsbrad Foothills,62.31,20.29,125 >> 返回塔伦米尔
step
.goto Hillsbrad Foothills,61.50,19.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r
.turnin 2933 ,t Venom Bottles
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,62.10,82.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.accept 507 ,a Lord Aliden Perenolde
.target Krusk
.solo
step
.goto Hillsbrad Foothills,62.62,20.74
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_FRIENDLY_梅里萨拉|r边上的通缉告示接受|cRXP_PICK_通缉：瓦杜斯男爵|r
.accept 566 ,a WANTED: Baron Vardus
.target Melisara
.solo
step
#completewith next
>> 在各处营地和斯坦恩布莱德旅店寻找|cRXP_ENEMY_巴隆·瓦杜斯|r. 击杀并拾取他的|cRXP_LOOT_头|r
.complete 566,1 
.unitscan Baron Vardus
.solo
step
.goto Alterac Mountains,39.28,14.52
>> 击杀|cRXP_ENEMY_奥里登·匹瑞诺德领主|r
>> |cRXP_WARN_注意|cRXP_ENEMY_辛迪加刺客|r. |cRXP_ENEMY_奥里登·匹瑞诺德领主|r会使用真言术: 盾, 恢复并且会睡住玩家和他们的宠物|r
.complete 507,1 
.unitscan Lord Aliden Perenolde
.mob Syndicate Assassin
.solo
step
.goto Alterac Mountains,39.30,14.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾丽莎|r
.turnin 507 ,t Lord Aliden Perenolde
.accept 508 ,a Taretha's Gift
.target Elysa
.solo
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>> 在各处营地和斯坦恩布莱德旅店寻找|cRXP_ENEMY_巴隆·瓦杜斯|r. 击杀并拾取他的|cRXP_LOOT_头|r
.complete 566,1 
.unitscan Baron Vardus
.solo
step
.goto Alterac Mountains,61.10,82.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官达萨利亚|r
.turnin 566 ,t WANTED: Baron Vardus
.target High Executor Darthalia
.solo
step
.goto Alterac Mountains,62.10,82.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁斯克|r
.turnin 508 ,t Taretha's Gift
.target Krusk
.solo
step
.goto Hillsbrad Foothills,62.63,20.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅里萨拉|r
.accept 521 ,a The Crown of Will
.target Melisara
.isQuestTurnedIn 520
.group
step
.goto Hillsbrad Foothills,60.14,18.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fly Undercity >> 飞往幽暗城
.target Zarise
.zoneskip Undercity
.group
step
.goto Undercity,62.32,48.61
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_派翠克·加勒特|r
.turnin 2342 ,t Reclaimed Treasures
.target Patrick Garrett
.isQuestComplete 2342
.group
step
.goto Undercity,62.31,48.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_派翠克·加勒特|r
.accept 2342 ,a Reclaimed Treasures
.target Patrick
.dungeon ULDA
step
.goto Undercity,53.77,54.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 728 ,t To the Undercity for Yagyin's Digest
.target Keeper Bel'dugur
.group
step
.goto Undercity,50.15,67.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师金格|r
.accept 243 ,a Into the Field
.target Apothecary Zinge
.group
step
.goto Undercity,57.65,93.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙琳德拉|r
.turnin 521 ,t The Crown of Will
.target Sharlindra
.group
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 11550 >> 学习职业技能
.target Angela Curthas
.xp <42,1
.xp >44,1
.group
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 11584 >> 学习职业技能
.target Angela Curthas
.xp <44,1
.group
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 6774 >> 学习职业技能
.target Carolyn Ward
.xp <42,1
.xp >44,1
.group
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 11341 >> 学习职业技能
.target Carolyn Ward
.xp <44,1
.group
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 6789 >> 学习职业技能
.target Richard Kerwin
.xp <42,1
.xp >44,1
.group
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 11671 >> 学习职业技能
.target Richard Kerwin
.xp <44,1
.group
step << Mage
.goto Undercity,85.15,10.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 10159 >> 学习职业技能
.target Anastasia Hartwell
.xp <42,1
.xp >44,1
.group
step << Mage
.goto Undercity,85.15,10.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 10185 >> 学习职业技能
.target Anastasia Hartwell
.xp <44,1
.group
step << Priest
.goto Undercity,47.55,18.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
.train 10892 >> 学习职业技能
.target Father Lazarus
.xp <42,1
.xp >44,1
.group
step << Priest
.goto Undercity,47.55,18.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
.train 10927 >> 学习职业技能
.target Father Lazarus
.xp <44,1
.group
step << Undead !Warlock
#completewith next
.subzone 159 >>前往布瑞尔
step << Undead !Warlock
.goto Tirisfal Glades,60.09,52.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔玛·瓦纳姆|r和|cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >> 学习|T136103:0|t[骑术：骸骨战马]
.vendor >> |cRXP_BUY_购买|r|T132264:0|t[|cFF0070FF骸骨战马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#completewith next
.hs >> 炉石回格罗姆高营地
.use 6948
step
.goto Stranglethorn Vale,31.48,29.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板苏尔贝克|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >> 飞往藏宝海湾
.target Thysta
step
.abandon 692 ,ab Lost Fragments
.isOnQuest 692
step
.abandon 656 ,ab Summoning the Princess
.isOnQuest 656
step
.goto Stranglethorn Vale,32.10,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼姆布亚|r
.turnin 2932 ,t Grim Message
.target Nimboya
step
.goto Stranglethorn Vale,26.99,77.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上旅店3楼, 然后对话|cRXP_FRIENDLY_克拉兹克|r
.turnin 1116 ,t Dream Dust in the Swamp
.target Krazek
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_伊安·斯托姆|r
.train 6774 >> 学习职业技能
.target Ian Strom
.xp <42,1
.xp >44,1
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_伊安·斯托姆|r
.train 11341 >> 学习职业技能
.target Ian Strom
.xp <44,1
step
.goto Stranglethorn Vale,27.10,77.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t从第三层的阳台出去, 然后对话|cRXP_FRIENDLY_大财主里维加兹|r
.accept 1183 ,a Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.99,77.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_克拉兹克|r处
.accept 1117 ,a Rumors for Kravel
.accept 2864 ,a Tran'rek
.target Krazek
step
.goto Stranglethorn Vale,27.70,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘海狼’麦克基雷|r
.accept 2872 ,a Stoley's Debt
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.14,78.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_格里克斯·布鲁维特|r
.vendor >> |cRXP_BUY_购买|r|T134832:0|t[强效治疗药水]|cRXP_BUY_如果有库存的话|r
.target Glyx Brewright
step
#completewith next
.goto Stranglethorn Vale,25.90,73.14,40 >> 前往藏宝海湾码头
step
.goto Stranglethorn Vale,25.76,73.04
.zone The Barrens >> 乘船前往棘齿城
step
.goto The Barrens,62.40,37.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1270 ,t Stinky's Escape
.target Mebok Mizzyrix
.isQuestComplete 1270
step
.goto The Barrens,63.09,37.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Bragok
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 43-43 凄凉之地 II
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 43-45 塔纳利斯/尘泥沼泽

step
.goto The Barrens,45.58,59.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
.home >> 绑定炉石到陶拉祖营地
.target Innkeeper Byula
step << !Mage
.goto The Barrens,44.45,59.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10892 >> 学习职业技能
.target Malakai Cross
.xp <42,1
.xp >44,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10927 >> 学习职业技能
.target Malakai Cross
.xp <44,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10159 >> 学习职业技能
.target Thurston Xane
.xp <42,1
.xp >44,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10185 >> 学习职业技能
.target Thurston Xane
.xp <44,1
step
.goto Thunder Bluff,54.00,80.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫萨恩|r
.turnin 1276 ,t The Black Shield
.target Mosarn
.isQuestComplete 1276
step
.goto Thunder Bluff,61.40,80.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1136 ,t Frostmaw
.accept 1205 ,a Deadmire
.target Melor Stonehoof
.isQuestComplete 1136
step
.goto Thunder Bluff,61.40,80.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1205 ,a Deadmire
.target Melor Stonehoof
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9750 >> 学习职业技能
.target Turak Runetotem
.xp <42,1
.xp >44,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9752 >> 学习职业技能
.target Turak Runetotem
.xp <44,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 13553 >> 学习职业技能
.target Urek Thunderhorn
.xp <42,1
.xp >44,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14285 >> 学习职业技能
.target Urek Thunderhorn
.xp <44,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24561 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <42,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 11550 >> 学习职业技能
.target Ker Ragetotem
.xp <42,1
.xp >44,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 11584 >> 学习职业技能
.target Ker Ragetotem
.xp <44,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 11314 >> 学习职业技能
.target Tigor Skychaser
.xp <42,1
.xp >44,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 16315 >> 学习职业技能
.target Tigor Skychaser
.xp <44,1
step << Tauren
#completewith next
.subzone 222 >> 前往血蹄村
step << Tauren
.goto Mulgore,47.64,58.47
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔提|r和|cRXP_FRIENDLY_祖尼尔|r
.train 132245 >> 学习|T136103:0|t[骑术：科多兽]
.vendor >> |cRXP_BUY_购买|r|T132253:0|t[|cFF0070FF科多兽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Shadowprey Village >> 飞往葬影村
.target Tal
.zoneskip Desolace
step
.goto Desolace,25.80,68.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到处|cRXP_FRIENDLY_泰迦·慧鬃|r
.accept 5581 ,a Portals of the Legion
.target Taiga Wisemane
step
.goto Desolace,36.30,79.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1373 ,t Ongeku
.accept 1374 ,a Khan Jehn
.target Uthek the Wise
step
.goto Desolace,47.80,61.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍恩尼兹|r
.accept 6134 ,a Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.goto Desolace,52.20,53.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫林·碎骨者|r
.accept 1484 ,a The Corrupter
.target Maurin Bonesplitter
step
.goto Desolace,52.60,54.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1484 ,t The Corrupter
.accept 1488 ,a The Corrupter
.target Takata Steelblade
step
#completewith KhanJ
.goto Desolace,53.36,79.47,0
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_恶魔传送门|r, 然后击杀|cRXP_ENEMY_恶魔之门卫士|r
>> |cRXP_WARN_不要专注于此; 你稍后会来完成此任务|r
.complete 5581,1 
.mob Demon Portal Guardian
step
#label Jugkar
.goto Desolace,55.90,77.80
>> 击杀|cRXP_ENEMY_祖格卡|r
.complete 1488,2 
.unitscan Jugkar Grim'rod
step
.goto Desolace,55.90,77.80
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 如果有必要就用冰霜震击风筝他.|r << Shaman
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 你可能需要使用反击风暴来击杀他 << Warrior
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 在他致死打击的间隙使用恐惧并治疗自己 << Priest
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 简单的solo << Hunter
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 使用各种大技能. 如果有必要就凿击来风筝并打绷带 << Rogue
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 他吃恐惧, 你应该能很容易得solo掉他. << Warlock
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 你能用冰霜新星和寒冰箭简单的solo掉他 << Mage
>> 击杀|cRXP_ENEMY_阿兹雷索克领主|r, 你能用熊形态简单的solo掉他或者用缠绕根须风筝他. << Druid
*He patrols all around the edges of Mannoroc Cavern
.complete 1488,1 
.unitscan Lord Azrethoc
step
#label KhanJ
.goto Desolace,66.30,80.10
>> 击杀|cRXP_ENEMY_杰恩可汗|r. 拾取他的|cRXP_LOOT_头|r
.complete 1374,1 
.mob Khan Jehn
step
.goto Desolace,64.00,91.70
.use 15848 >> 前往白骨之谷, 然后使用|T132763:0|t[幽灵磁铁箱]
>> 击杀|cRXP_ENEMY_玛格拉姆幽灵|r. 拾取|cRXP_LOOT_幽灵电浆|r
.complete 6134,2 
.mob Magrami Spectre
step
.goto Desolace,53.36,79.47
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_恶魔传送门|r, 然后击杀|cRXP_ENEMY_恶魔之门卫士|r
.complete 5581,1 
.mob Demon Portal Guardian
step
.goto Desolace,36.30,79.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1374 ,t Khan Jehn
.target Uthek the Wise
step
.goto Desolace,36.30,79.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.accept 1380 ,a Khan Hratha
.target Uthek the Wise
.group
step
.goto Desolace,25.81,68.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰迦·慧鬃|r
.turnin 5581 ,t Portals of the Legion
.target Taiga Wisemane
step
.goto Desolace,29.97,68.88,30,0
.goto Desolace,30.00,66.32,30,0
.goto Desolace,31.57,65.07,30,0
.goto Desolace,32.98,65.93,30,0
.goto Desolace,32.91,62.80,30,0
.goto Desolace,32.01,60.85,50,0
.goto Desolace,29.53,60.66,50,0
.goto Desolace,29.95,58.26,50,0
.goto Desolace,30.73,55.60,50,0
.goto Desolace,32.56,54.95,50,0
.goto Desolace,34.65,56.81,50,0
.goto Desolace,35.28,61.30,50,0
.goto Desolace,36.76,60.62,50,0
.goto Desolace,35.09,57.90,50,0
.goto Desolace,30.57,52.07,50,0
.goto Desolace,29.99,54.66,50,0
.goto Desolace,30.24,57.82
>> 击杀|cRXP_ENEMY_玛洛迪半人马|r. 拾取|T134374:0|t[半人马号角哨嘴]
>> |cRXP_WARN_此物品掉率很低, 你可能会要在这刷一段时间|r
.collect 6074 
.group 2
step
.goto Desolace,30.31,50.57,25,0
.goto Desolace,29.37,50.94,25,0
.goto Desolace,29.74,53.50
>> 在马洛迪岗哨顶端点击|cRXP_PICK_哨嘴|r, 然后击杀几波马洛迪半人马直到|cRXP_ENEMY_赫兰萨可汗|r出现. 击杀他, 然后拾取|cRXP_LOOT_钥匙碎片|r
.complete 1380,1 
.group 2
.mob Maraudine Khan Guard
.mob Maraudine Stormer
.mob Maraudine Khan Advisor
.mob Khan Hratha
step
.goto Desolace,33.90,53.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅丽萨|r以开始护送任务
.accept 6132 ,a Get Me Out of Here!
.target Melizza Brimbuzzle
.group 2
step
>> 护送|cRXP_FRIENDLY_梅丽萨|r到安全处
>> |cRXP_WARN_在护送途中会刷新2波小怪. 第一波小怪不会攻击|r|cRXP_FRIENDLY_梅丽萨|r|cRXP_WARN_. 第二波会刷出5只小怪, 所以你需要全开大技能|r
.complete 6132,1
.group 2
step
.goto Desolace,36.30,79.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1380 ,t Khan Hratha
.target Uthek the Wise
.group
step
.goto Desolace,47.80,61.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6132 ,t Get Me Out of Here!
.turnin 6134 ,t Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
.isQuestComplete 6132
.group
step
.goto Desolace,47.83,61.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6134 ,t Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.goto Desolace,52.60,54.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1488 ,t The Corrupter
.target Takata Steelblade
step
#completewith next
.hs >> 炉石回陶拉祖营地
.use 6948
step
.goto The Barrens,45.58,59.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Byula
step
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Tanaris >> 飞往塔纳利斯
.target Omusa Thunderhorn
.zoneskip Tanaris
step
.abandon 1380 ,ab Khan Hratha
.isOnQuest 1380
step
.abandon 6132 ,ab Get Me Out of Here!
.isOnQuest 6132
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 43-45 塔纳利斯/尘泥沼泽
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 45-46 菲拉斯
step
.goto Tanaris,51.60,26.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 2864 ,t Tran'rek
.target Tran'rek
step
.goto Tanaris,51.80,26.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_通缉告示|r
.accept 2781 ,a WANTED: Caliph Scorpidsting
step
.goto Tanaris,52.50,27.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >> 绑定炉石到加基森
.target Innkeeper Fizzgrimble
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r和|cRXP_FRIENDLY_操作员鲁葛兰克|r
.turnin 243 ,t Into the Field
.accept 379 ,a Slake That Thirst
.accept 1690 ,a Wastewander Justice
.goto Tanaris,52.46,28.52
.accept 1707 ,a Water Pouch Bounty
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step
.goto Tanaris,50.20,27.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 992 ,a Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step




step
#completewith next
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>> 前往热砂港并沿途击杀热影废墟的|cRXP_ENEMY_废土强盗|r和|cRXP_ENEMY_废土窃贼|r. 拾取|cRXP_LOOT_废土水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,10 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,67.00,22.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.accept 3520 ,a Screecher Spirits
.target Yeh'kinya
step << Hunter
.goto Tanaris,67.01,21.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加贝|r
>> |cFF0E8312从他那购买|r|T135661:0|t[锯齿箭]
.collect 11285,2600,1690,1 
.target Jabbey
step
.goto Tanaris,67.10,24.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯杜雷|r
.turnin 2872 ,t Stoley's Debt
.target Stoley
step
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
.goto Tanaris,63.62,31.32
>> 击杀|cRXP_ENEMY_废土强盗|r和|cRXP_ENEMY_废土窃贼|r. 拾取|cRXP_LOOT_废土水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,10 
.mob Wastewander Bandit
.mob Wastewander Thief
step << Shaman
#completewith next
.hs >> 炉石或者星界传送回加基森
.use 6948
step << Shaman
.goto Tanaris,52.50,27.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r和|cRXP_FRIENDLY_操作员鲁葛兰克|r
.turnin 379 ,t Slake That Thirst
.turnin 1690 ,t Wastewander Justice
.accept 1691 ,a More Wastewander Justice
.goto Tanaris,52.46,28.52
.turnin 1707 ,t Water Pouch Bounty
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket






step << !Shaman
.goto Tanaris,52.50,27.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
#completewith next
.goto Tanaris,50.87,23.09,30,0
.goto Thousand Needles,75.49,97.58,30,0
.zone Thousand Needles >> 向北前往闪光平原
step
.goto Thousand Needles,77.79,77.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1117 ,t Rumors for Kravel
.target Kravel Koalbeard
step
.goto Thousand Needles,78.07,77.13
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r
.turnin 1137 ,t News for Fizzle
.target Fizzle Brassbolts
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1183 ,t Goblin Sponsorship
.accept 1186 ,a The Eighteenth Pilot
.accept 1190 ,a Keeping Pace
.target Pozzik
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1183 ,t Goblin Sponsorship
.accept 1186 ,a The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.32,76.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 ,t The Eighteenth Pilot
.accept 1187 ,a Razzeric's Tweaking
.target Razzeric
step
#completewith next
.goto Thousand Needles,79.81,77.02
>> 对话|cRXP_FRIENDLY_札米克|r制造混乱
.turnin 1191 ,t Zamek's Distraction
.target Zamek
.timer 30,Keeping Pace RP
step
.goto Thousand Needles,77.21,77.41
>> 点击铁棚屋内的|cRXP_PICK_瑞兹尔的计划|r
.turnin 1190 ,t Keeping Pace
.accept 1194 ,a Rizzle's Schematics
.isQuestTurnedIn 1108
step
.goto Thousand Needles,77.79,77.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1118 ,a Back to Booty Bay
.target Kravel Koalbeard
step
.goto Thousand Needles,80.18,75.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1194 ,t Rizzle's Schematics
.target Pozzik
.isQuestTurnedIn 1108
step
.hs >> 炉石回加基森
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >> 前往加基森
.cooldown item,6948,<0
step
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Brackenwall >> 飞往尘泥沼泽
.target Bulkrek Ragefist
step
.goto Dustwallow Marsh,36.30,31.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫格穆洛克主宰|r
.accept 1166 ,a Overlord Mok'Morokk's Concern
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.10,33.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉兹辛比|r
.target Draz'Zilb
.accept 1169 ,a Identifying the Brood
step
.goto Dustwallow Marsh,37.30,31.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔格|r
.accept 1168 ,a Army of the Black Dragon
.target Tharg
step
#completewith MokSnuff
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>> 寻找并击杀|cRXP_ENEMY_死沼巨鳄|r. 它是一只在此区域沼泽内巡逻的白色的鳄鱼. 拾取他的|cRXP_LOOT_牙齿|r
.complete 1205,1 
.unitscan Deadmire
step
.goto Dustwallow Marsh,54.10,56.50
>> 在坠毁飞艇附近的地上拾取|cRXP_PICK_箱子|r获取|cRXP_LOOT_爆盐增压器|r
.complete 1187,1 
step
.loop 25,Dustwallow Marsh,56.51,61.15,55.46,61.60,54.80,62.41,54.31,63.24,54.68,64.41,56.10,65.14,56.52,63.62,56.81,62.56,57.30,60.20
>> 击杀海滩上的|cRXP_ENEMY_污壳龙虾人|r. 拾取|cRXP_LOOT_坠饰|r
.complete 1261,1 
.isOnQuest 1261
.mob Muckshell Razorclaw
.mob Muckshell Clacker
.mob Muckshell Scrabbler
.mob Muckshell Pincer
.mob Muckshell Snapclaw
.unitscan Lord Angler
step
#completewith Dragondeez
>> 击杀此区域的|cRXP_ENEMY_火鬃龙人|r
.complete 1168,1 
.complete 1168,2 
.complete 1168,3 
.mob Firemane Scout
.mob Firemane Ash Tail
.mob Firemane Scalebane
step
#completewith Firemanemobs
>> 击杀区域边界上的|cRXP_ENEMY_幼龙|r. 拾取|cRXP_LOOT_舌头|r和|cRXP_LOOT_心脏|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#label MokSnuff
.goto Dustwallow Marsh,44.50,66.00
>> 拾取地上的|cRXP_PICK_木桶|r获取|cRXP_LOOT_莫格穆洛克的鼻烟|r
.complete 1166,1 
step
.goto Dustwallow Marsh,38.70,65.60
>> 拾取地上的|cRXP_PICK_瓶子|r获取|cRXP_LOOT_莫格穆洛克的烈酒|r. 然后进入后面的洞穴
.complete 1166,2 
step
#label Dragondeez
.goto Dustwallow Marsh,36.60,69.50
>> 拾取洞穴深处的|cRXP_PICK_箱子|r获取|cRXP_LOOT_莫格穆洛克的保险箱|r.
>> 在洞内时击杀|cRXP_ENEMY_火鬃逆鳞守卫|r
.complete 1166,3 
.complete 1168,3 
.mob Firemane Scalebane
step
#label Firemanemobs
.goto Dustwallow Marsh,39.08,65.92,80,0
.goto Dustwallow Marsh,42.81,66.35,80,0
.goto Dustwallow Marsh,44.63,66.16,80,0
.goto Dustwallow Marsh,39.08,65.92
>> 完成击杀此区域的|cRXP_ENEMY_火鬃龙人|r
.complete 1168,1 
.complete 1168,2 
.complete 1168,3 
.mob Firemane Scout
.mob Firemane Ash Tail
.mob Firemane Scalebane
step
.goto Dustwallow Marsh,48.10,80.85,60,0
.goto Dustwallow Marsh,47.09,82.39,60,0
.goto Dustwallow Marsh,45.60,82.28,60,0
.goto Dustwallow Marsh,43.99,81.35,60,0
.goto Dustwallow Marsh,42.31,80.73,60,0
.goto Dustwallow Marsh,42.08,78.40,60,0
.goto Dustwallow Marsh,42.45,75.89,60,0
.goto Dustwallow Marsh,45.60,82.28
>> 完成击杀|cRXP_ENEMY_幼龙|r. 拾取|cRXP_LOOT_舌头|r和|cRXP_LOOT_心脏|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#completewith next
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>> 寻找并击杀|cRXP_ENEMY_死沼巨鳄|r. 它是一只在此区域沼泽内巡逻的白色的鳄鱼. 拾取他的|cRXP_LOOT_牙齿|r
.complete 1205,1 
.unitscan Deadmire
step
.goto Dustwallow Marsh,46.021,57.096
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔贝萨|r
.accept 2846 ,a Tiara of the Deep
.target Tabetha
.dungeon ZF
step
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
.goto Dustwallow Marsh,50.57,52.82,50,0
.goto Dustwallow Marsh,50.51,55.20,50,0
.goto Dustwallow Marsh,49.15,57.14,50,0
.goto Dustwallow Marsh,48.01,55.61,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,44.69,62.28,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,47.24,54.53,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,45.72,53.06,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,47.73,53.18,50,0
.goto Dustwallow Marsh,47.15,51.45,50,0
.goto Dustwallow Marsh,50.57,52.82
>> 寻找并击杀|cRXP_ENEMY_死沼巨鳄|r. 它是一只在此区域沼泽内巡逻的白色的鳄鱼. 拾取他的|cRXP_LOOT_牙齿|r
.complete 1205,1 
.unitscan Deadmire
step
#completewith next
.goto Dustwallow Marsh,36.64,31.72,120 >> 前往蕨墙村
step
.goto Dustwallow Marsh,37.10,33.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1169 ,t Identifying the Brood
.target Draz'Zilb
step
.goto Dustwallow Marsh,36.30,31.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫格穆洛克主宰|r
.turnin 1166 ,t Overlord Mok'Morokk's Concern
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.30,31.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔格|r
.turnin 1168 ,t Army of the Black Dragon
.target Tharg
step
.goto Dustwallow Marsh,35.30,30.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1261 ,t Marg Speaks
.accept 1262 ,a Report to Zor
.target Nazeer Bloodpike
.isQuestComplete 1261
step
.goto Dustwallow Marsh,35.30,30.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳泽尔·血矛|r
.accept 1262 ,a Report to Zor
.target Nazeer Bloodpike
.isQuestTurnedIn 1261
step
#completewith next
.hs >> 炉石回加基森
.use 6948
step
.goto Tanaris,52.50,27.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
.goto Tanaris,51.80,26.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_通缉告示|r
.accept 2781 ,a WANTED: Caliph Scorpidsting
step
.use 8524 >> 使用|T134459:0|t[|cFF00BCD4发电器4711-FTZ型|r]以开启任务
.accept 654 ,a Tanaris Field Sampling
step
#completewith next
>> 击杀|cRXP_ENEMY_蜥蜴|r, |cRXP_ENEMY_土狼|r和|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_样品|r
>> 使用|cRXP_LOOT_样品|r来测试
*|cFFFCDC00不要摧毁任何未测试的样品|r
.complete 654,1 
.complete 654,2 
.complete 654,3 
.use 9440
.use 9441
.use 9438
.mob Glasshide Basilisk
.mob Glasshide Gazer
.mob Glasshide Petrifier
.mob Starving Blisterpaw
.mob Blisterpaw Hyena
.mob Murderous Blisterpaw
.mob Rabid Blisterpaw
.mob Scorpid Tail Lasher
.mob Scorpid Hunter
.mob Scorpid Dunestalker
.mob Scorpid Duneburrower
step
.goto Tanaris,39.10,29.30
.use 8584 >> 在水池边使用|T134867:0|t[未使用的寻水器]. 逃离刷出来的两只小怪.
.complete 992,1 
step
.goto Tanaris,55.94,32.72,90,0
.goto Tanaris,53.75,35.37,90,0
.goto Tanaris,51.13,35.41,90,0
.goto Tanaris,50.18,32.78,90,0
.goto Tanaris,47.99,33.20,90,0
.goto Tanaris,45.47,32.72,90,0
.goto Tanaris,42.52,32.90,90,0
.goto Tanaris,41.23,33.18,90,0
.goto Tanaris,38.30,32.55,90,0
.goto Tanaris,47.99,33.20
>> 击杀|cRXP_ENEMY_蜥蜴|r, |cRXP_ENEMY_土狼|r和|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_样品|r
>> 使用|cRXP_LOOT_样品|r来测试
*|cFFFCDC00不要摧毁任何未测试的样品|r
.complete 654,1 
.complete 654,2 
.complete 654,3 
.use 9440
.use 9441
.use 9438
.mob Glasshide Basilisk
.mob Glasshide Gazer
.mob Glasshide Petrifier
.mob Starving Blisterpaw
.mob Blisterpaw Hyena
.mob Murderous Blisterpaw
.mob Rabid Blisterpaw
.mob Scorpid Tail Lasher
.mob Scorpid Hunter
.mob Scorpid Dunestalker
.mob Scorpid Duneburrower
step
.goto Tanaris,50.20,27.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 ,t Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,52.40,28.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25首席工程师膨啸|r
.turnin 654 ,t Tanaris Field Sampling
.target Chief Engineer Bilgewhizzle
.isOnQuest 654
step
#completewith next
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
>> 击杀|cRXP_ENEMY_卡利夫·斯科比斯汀|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_小心; 有两只潜行的小怪保护他|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,58.75,36.42,80,0
.goto Tanaris,60.10,37.07,80,0
.goto Tanaris,60.84,38.91,80,0
.goto Tanaris,61.04,32.76,80,0
.goto Tanaris,61.84,34.95,80,0
.goto Tanaris,63.48,37.90,80,0
.goto Tanaris,63.80,39.94,80,0
.goto Tanaris,65.10,39.50,80,0
.goto Tanaris,65.36,36.67,80,0
.goto Tanaris,61.04,32.76
>> 击杀|cRXP_ENEMY_废土游荡者|r, |cRXP_ENEMY_废土刺客|r和|cRXP_ENEMY_辛迪加暗影法师|r
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
.goto Tanaris,61.09,35.99,60,0
.goto Tanaris,61.91,34.80,60,0
.goto Tanaris,62.93,33.28,60,0
.goto Tanaris,63.92,31.73,60,0
.goto Tanaris,63.93,33.36,60,0
.goto Tanaris,63.43,34.33,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,58.86,39.41,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,60.84,38.59,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,64.21,36.43,60,0
.goto Tanaris,64.64,35.28,60,0
.goto Tanaris,64.30,33.66,60,0
.goto Tanaris,64.18,32.42,60,0
.goto Tanaris,63.94,31.73
>> 击杀|cRXP_ENEMY_卡利夫·斯科比斯汀|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_小心; 有两只潜行的小怪保护他|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,52.40,28.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25首席工程师膨啸|r
.turnin 1691 ,t More Wastewander Justice
.turnin 2781 ,t WANTED: Caliph Scorpidsting
.target Chief Engineer Bilgewhizzle
step
#sticky
#completewith EnterUldaman
.subzone 1337 >> 现在你应该开始寻找前往奥达曼的副本队伍
.dungeon ULDA
step << !Mage
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Bulkrek Ragefist
.zoneskip Tanaris
.dungeon ULDA
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
.dungeon ULDA
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10185 >> 学习职业技能
.target Pephredo
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10197 >> 学习职业技能
.target Pephredo
.xp <46,1
.dungeon ULDA
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10927 >> 学习职业技能
.target Ur'kyo
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10945 >> 学习职业技能
.target Ur'kyo
.xp <46,1
.dungeon ULDA
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 16315 >> 学习职业技能
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10472 >> 学习职业技能
.target Kardris Dreamseeker
.xp <46,1
.dungeon ULDA
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14285 >> 学习职业技能
.target Ormak Grimshot
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14304 >> 学习职业技能
.target Ormak Grimshot
.xp <46,1
.dungeon ULDA
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11584 >> 学习职业技能
.target Grezz Ragefist
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11578 >> 学习职业技能
.target Grezz Ragefist
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11341 >> 学习职业技能
.target Ormok
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11293 >> 学习职业技能
.target Ormok
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
.dungeon ULDA
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11671 >> 学习职业技能
.target Mirket
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11699 >> 学习职业技能
.target Mirket
.xp <46,1
.dungeon ULDA
step
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
.dungeon ULDA
step
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Stranglethorn Vale >> 乘坐飞艇前往格罗姆高营地
.zoneskip Stranglethorn Vale
.dungeon ULDA
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Badlands >> 飞往荒芜之地
.target Thysta
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加卡尔|r
.accept 2202 ,a Uldaman Reagent Run
.target Jarkal Mossmeld
.isQuestTurnedIn 2258
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 ,a Solution to Doom
.target Theldurin the Lost
.dungeon ULDA
step
.goto 1415,52.36,63.59
.zone 1415 >> 前往奥达曼
.dungeon ULDA
step
#completewith EnterUldaman
>> 如果你拾取了|T133289:0|t[破碎的项链], 就把它放包里
.collect 7666,1 
.dungeon ULDA
step
#completewith Treasure
>> 拾取地上的|cRXP_LOOT_紫色蘑菇|r
>> |cRXP_WARN_此任务在奥达曼副本内外都能完成|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
.goto 1415,52.107,64.008
>> 打开|cRXP_PICK_上古之柜|r. 拾取|cRXP_LOOT_雷乌纳石板|r
>> |cRXP_WARN_此任务在奥达曼副本外完成|r
.complete 709,1 
.isOnQuest 709
.dungeon ULDA
step
#label Treasure
.goto Eastern Kingdoms,53.81,57.94,0
.goto Eastern Kingdoms,53.78,58.23
>> 在南大厅的南部拾取|cRXP_PICK_加勒特的宝箱|r获取|cRXP_LOOT_加勒特的家族宝藏|r
>> |cRXP_WARN_南大厅在奥达曼副本门的西南部|r
.complete 2342,1 
.isOnQuest 2342
.dungeon ULDA
step
#completewith next
>> 拾取地上的|cRXP_LOOT_紫色蘑菇|r
>> |cRXP_WARN_此任务在副本内外都能完成|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#label EnterUldaman
.goto 1415,51.851,63.40
.zone 230 >> 进入奥达曼
.dungeon ULDA
step
#completewith next
>> 拾取地上的|cRXP_LOOT_紫色蘑菇|r
>> |cRXP_WARN_此任务在副本内外都能完成|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
>> 击杀|cRXP_ENEMY_阿札达斯|r
>> 点击|cRXP_PICK_诺甘农圆盘|r
.accept 2278 ,a The Platinum Discs
.mob Archaedas
.dungeon ULDA
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺甘农的看门人|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
.dungeon ULDA
step
>> 点击|cRXP_PICK_诺甘农圆盘|r
.turnin 2278 ,t The Platinum Discs
.accept 2280 ,a The Platinum Discs
.dungeon ULDA
step
.zone Badlands >> 离开奥达曼
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 709 ,t Solution to Doom
.accept 728 ,a To the Undercity for Yagyin's Digest
.target Theldurin the Lost
.isQuestComplete 709
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加卡尔|r
.turnin 2202 ,t Uldaman Reagent Run
.target Jarkal Mossmeld
.dungeon ULDA
step
.hs >> 炉石回加基森
.use 6948
.cooldown item,6948,>0
.dungeon ULDA
step
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Freewind >> 飞往乱风岗
.target Bulkrek Ragefist
step
.abandon 2202 ,ab Accept Uldaman Reagent Run
.isOnQuest 2202
.dungeon ULDA
step
.abandon 709 ,ab Solution to Doom
.isOnQuest 709
.dungeon ULDA
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 45-46 菲拉斯
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 46-47 南荆棘谷
step
#completewith next
.zone Feralas >> 前往菲拉斯
step
.goto Feralas,76.06,43.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25布隆克|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Bronk
step
.goto Feralas,75.70,44.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奥尔文·吉兹米克|r
.accept 2987 ,a Gordunni Cobalt
.target Orwin Gizzmick
step
.goto Feralas,75.70,43.62,0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25洛卡·奥赫|r
.turnin 2981 ,t A Threat in Feralas
.accept 2975 ,a The Ogres of Feralas
.target Rok Orhan
step
.goto Feralas,76.00,42.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25克鲁伊格·劈颅|r
.accept 2973 ,a A New Cloak's Sheen
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25哈杜肯·迅蹄|r
.accept 2862 ,a War on the Woodpaw
.target Hadoken Swiftstrider
step
.goto Feralas,74.50,42.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t进入长屋, 然后对话|cFF00FF25杉多尔·迅蹄|r
.accept 2822 ,a The Mark of Quality
.target Jangdor Swiftstrider
step
.goto Feralas,74.81,45.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25旅店老板格卢尔|r
.home >> 绑定炉石到莫沙彻营地
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Greul
step
.goto Feralas,72.79,39.32,60,0
.goto Feralas,72.11,37.21,60,0
.goto Feralas,73.18,36.29,60,0
.goto Feralas,72.79,39.32
>> 击杀莫沙彻营地西北方的|cFFFF5722木爪豺狼人|r. 拾取|cFF00BCD4鬃毛|r
.complete 2862,1 
.mob Woodpaw Mongrel
.mob Woodpaw Trapper
.mob Woodpaw Brute
.mob Woodpaw Reaver
.mob Woodpaw Mystic
.mob Woodpaw Alpha
step
#completewith Scroll
.goto Feralas,75.30,28.26,0
.use 9466 >> 靠近蓝色圈圈, 然后使用|T134435:0|t[奥尔文的铲子]
>> 拾取|cFFDB2EEF戈杜尼土堆|r获取|cFF00BCD4戈杜尼钴矿石|r
.complete 2987,1 
step
#completewith Shovel
.goto Feralas,76.10,33.20,0
>> 在戈杜尼前哨站击杀|cFFFF5722戈杜尼巨魔|r, |cFFFF5722戈杜尼法师|r, 和|cFFFF5722蛮兵|r
.complete 2975,1 
.complete 2975,2 
.complete 2975,3 
.mob Gordunni Ogre
.mob Gordunni Ogre Mage
.mob Gordunni Brute
step
#label Scroll
.goto Feralas,75.25,34.44,0
.loop 25,Feralas,79.4,34.8,80.5,34.3,80.8,35.0,75.1,29.8,75.2,28.7,74.6,27.9,79.4,34.8,80.5,34.3,80.8,35.0,75.1,29.8,75.2,28.7,74.6,27.9,79.4,34.8
>> 拾取地上的|cFFDB2EEF卷轴|r获取|T134943:0|t[|cFF00BCD4戈杜尼卷轴|r]. 使用并接受任务
>> |cFFFCDC00沿着箭头前往各处的刷新点|r
.collect 9370,1,2978,1 
.accept 2978 ,a The Gordunni Scroll
.use 9370
step
#label Shovel
.goto Feralas,74.29,28.98,30,0
.goto Feralas,75.35,28.23,30,0
.goto Feralas,76.01,29.00,30,0
.goto Feralas,76.89,29.60,30,0
.goto Feralas,76.47,33.05,30,0
.goto Feralas,76.70,33.86,30,0
.goto Feralas,74.29,28.98
.use 9466 >> 靠近蓝色圈圈, 然后使用|T134435:0|t[奥尔文的铲子]
>> 拾取|cFFDB2EEF戈杜尼土堆|r获取|cFF00BCD4戈杜尼钴矿石|r
.complete 2987,1 
step
.goto Feralas,74.82,27.53,50,0
.goto Feralas,75.25,29.55,50,0
.goto Feralas,76.51,30.48,50,0
.goto Feralas,75.45,34.59,50,0
.goto Feralas,74.82,27.53
>> 在戈杜尼前哨站击杀|cFFFF5722戈杜尼巨魔|r, |cFFFF5722戈杜尼法师|r, 和|cFFFF5722蛮兵|r
.complete 2975,1 
.complete 2975,2 
.complete 2975,3 
.mob Gordunni Ogre
.mob Gordunni Ogre Mage
.mob Gordunni Brute
step
.goto Feralas,76.10,33.20
.xp 45 >> 刷到45级
step << Shaman
#completewith WoodpawWarTurnin
.hs >> 炉石回莫沙彻营地
.use 6948
step << !Shaman
#completewith next
.goto Feralas,74.73,43.59,150 >> 返回莫沙彻营地
step
#label WoodpawWarTurnin
.goto Feralas,74.90,42.46
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25哈杜肯·迅蹄|r
.turnin 2862 ,t War on the Woodpaw
.accept 2863 ,a Alpha Strike
.target Hadoken Swiftstrider
step
.goto Feralas,75.80,43.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25洛卡·奥赫|r
.turnin 2975 ,t The Ogres of Feralas
.accept 2980 ,a The Ogres of Feralas
.turnin 2978 ,t The Gordunni Scroll
.accept 2979 ,a Dark Ceremony
.target Rok Orhan
step
.goto Feralas,75.70,44.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奥尔文·吉兹米克|r
.turnin 2987 ,t Gordunni Cobalt
.target Orwin Gizzmick
step
.goto Feralas,68.80,48.00
>> 击杀|cFFFF5722小精龙|r. 拾取|cFF00BCD4翅膀|r
.complete 2973,1 
.mob Sprite Darter
step
.loop 25,Feralas,67.50,55.60,69.05,55.78,68.60,54.25,71.51,55.98,72.42,56.63,73.21,56.25,72.42,56.63,71.51,55.98,68.60,54.25,69.05,55.7867.50,55.60
>> 在限定时间内击杀|cFFFF5722木爪突击队员|r
*|cFFFCDC00通常每个营地有一只|r
.complete 2863,1 
.unitscan Woodpaw Alpha
step
#completewith KruegTurnin1
.hs >> 炉石回莫沙彻营地
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto Feralas,74.73,43.59,150 >> 返回莫沙彻营地
.cooldown item,6948,<0
step
#label KruegTurnin1
.goto Feralas,76.00,42.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25克鲁伊格·劈颅|r
.turnin 2973 ,t A New Cloak's Sheen
.accept 2974 ,a A Grim Discovery
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25哈杜肯·迅蹄|r
.turnin 2863 ,t Alpha Strike
.accept 2902 ,a Woodpaw Investigation
.target Hadoken Swiftstrider
step
.goto Feralas,76.06,43.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25布隆克|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Bronk
step
.goto Feralas,69.92,38.97,60,0
.goto Feralas,68.71,39.90,60,0
.goto Feralas,68.08,46.12,60,0
.goto Feralas,66.63,46.62,60,0
.goto Feralas,69.92,38.97,60,0
.goto Feralas,66.63,46.62
>> 击杀|cFFFF5722恐怖图腾牛头人|r. 拾取|cFF00BCD4角|r
.complete 2974,1 
.mob Grimtotem Shaman
.mob Grimtotem Raider
.mob Grimtotem Naturalist
step
.goto Feralas,71.60,55.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击木箱上的|cFFDB2EEF木爪作战地图|r,
.turnin 2902 ,t Woodpaw Investigation
.accept 2903 ,a The Battle Plans
step
.goto Feralas,76.00,42.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25克鲁伊格·劈颅|r
.turnin 2974 ,t A Grim Discovery
.accept 2976 ,a A Grim Discovery
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25哈杜肯·迅蹄|r
.turnin 2903 ,t The Battle Plans
.accept 7730 ,a Zukk'ash Infestation
.accept 7731 ,a Stinglasher
.target Hadoken Swiftstrider
step
#completewith next
.goto Feralas,73.38,62.94,0
>> 击杀|cFFFF5722祖卡什异种蝎|r. 拾取|cFF00BCD4虫壳|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
.goto Feralas,73.38,63.24,-1
.goto Feralas,76.36,61.19,-1
>> 击杀|cFFFF5722毒刺鞭笞者|r. 拾取它的|cFF00BCD4腺体|r
>> |cFFFCDC00这个怪可能有点难, 确保你的技能都在|r
>> 它在虫巢外面巡逻
.complete 7731,1 
.unitscan Stinglasher
step
.goto Feralas,75.21,61.82,60,0
.goto Feralas,74.10,62.42,60,0
.goto Feralas,72.86,62.78,60,0
.goto Feralas,75.21,61.82,60,0
.goto Feralas,72.86,62.78
>> 击杀|cFFFF5722祖卡什异种蝎|r. 拾取|cFF00BCD4虫壳|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
.goto Feralas,74.90,42.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25哈杜肯·迅蹄|r
.turnin 7730 ,t Zukk'ash Infestation
.turnin 7731 ,t Stinglasher
.accept 7732 ,a Zukk'ash Report
.target Hadoken Swiftstrider
step
#completewith egghypo
.goto Feralas,56.15,46.88,0
.use 10699 >> 击杀|cFFFF5722山谷尖啸者|r, 然后对它们的尸体使用|T135474:0|t[叶基亚的树枝]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#completewith next
.goto Feralas,58.59,69.85,0
>> 击杀|cFFFF5722戈杜尼法师领主|r. 拾取|cFF00BCD4宝珠|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
.goto Feralas,61.86,54.46,60,0
.goto Feralas,61.03,56.55,60,0
.goto Feralas,60.69,58.52,60,0
.loop 25,Feralas,59.72,62.77,58.93,64.13,58.31,65.20,58.25,66.56,58.55,67.75,59.54,68.37,60.85,69.68,60.95,67.65,60.35,66.63,60.11,64.93,59.58,64.51,59.72,62.77
>> 在伊斯迪尔废墟击杀|cFFFF5722戈杜尼虐待者|r, |cFFFF5722术士|r和|cFFFF5722萨满|r
.complete 2980,1 
.complete 2980,2 
.complete 2980,3 
.mob Gordunni Shaman
.mob Gordunni Warlock
.mob Gordunni Mauler
step
.loop 25,Feralas,59.72,62.77,58.93,64.13,58.31,65.20,58.25,66.56,58.55,67.75,59.54,68.37,60.85,69.68,60.95,67.65,60.35,66.63,60.11,64.93,59.58,64.51,59.72,62.77
>> 击杀|cFFFF5722戈杜尼法师领主|r. 拾取|cFF00BCD4宝珠|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
#completewith next
.use 10699 >> 击杀|cFFFF5722山谷尖啸者|r, 然后对它们的尸体使用|T135474:0|t[叶基亚的树枝]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#label egghypo
.goto Feralas,56.66,75.89
>> 沿着山向南走, 然后在角鹰兽巢穴拾取一个|T132833:0|t[角鹰兽的蛋]
.collect 8564,1 
step
#completewith next
.use 10699 >> 击杀|cFFFF5722游荡的山谷尖啸者|r, 然后对它们的尸体使用|T135474:0|t[叶基亚的树枝]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
.loop 25,Feralas,56.71,64.09,56.61,62.01,55.87,60.34,54.79,60.44,55.30,62.17,54.49,64.33,55.23,66.21,55.88,65.91,56.71,64.09
>> 击杀|cRXP_ENEMY_乱羽角鹰兽|r. 拾取|cFF00BCD4羽毛|r
.collect 4589,10 
.mob Frayfeather Hippogryph
step
.goto Feralas,58.45,55.83,-1
.goto Feralas,56.70,56.13,-1
>> 击杀|cFFFF5722山谷尖啸者|r, 然后对它们的尸体使用|T135474:0|t[叶基亚的树枝]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
.goto Feralas,55.14,56.35,70,0
.goto Feralas,53.12,56.27,70,0
.goto Feralas,52.05,58.40
>> 击杀|cFFFF5722雪人|r. 拾取|cFF00BCD4毛皮|r
.complete 2822,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
.mob Lurking Feral Scar
.mob Bloodroar the Stalker
step
.accept 2766 ,a Find OOX-22/FE!
.itemcount 8705,1 
.use 8705
step
.goto Feralas,53.35,55.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25自动导航机器人OOX-22/FE|r
.turnin 2766 ,t Find OOX-22/FE!
.target Homing Robot OOX-22/FE
.isOnQuest 2766
step
.goto Feralas,53.35,55.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25自动导航机器人OOX-22/FE|r
.accept 2767 ,a Rescue OOX-22/FE!
>> |cFFFCDC00这会开启护送任务; 因为这个任务比较难所以随时准备使用你的技能和消耗品|r

.target Homing Robot OOX-22/FE
.isQuestTurnedIn 2766
step
.goto Feralas,55.47,56.37,30,0
.goto Feralas,54.38,51.32,60,0
.goto Feralas,50.31,49.91,40,0
.goto Feralas,48.38,44.83,40,0
.goto Feralas,45.04,43.27
>> |cFFFCDC00会刷出3波怪. 留好你的长CD技能对付|r|cFFFF5722豺狼人|r|cFFFCDC00, 其他东西用于对付|r|cFFFF5722雪人|r
+3 雪人 (都是46级的)
+3 猩猩
+4 豺狼人
.complete 2767,1 
.isOnQuest 2767
.target Homing Robot OOX-22/FE
step
#completewith next
.hs >> 炉石回莫沙彻营地
.use 6948
step
.goto Feralas,74.81,45.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25旅店老板格卢尔|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
>> |cFFFCDC00不要出售|r|T135992:0|t[细长的狮鹫羽毛]
.target Innkeeper Greul
step
.goto Feralas,75.80,43.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25洛卡·奥赫|r
.turnin 2980 ,t The Ogres of Feralas
.turnin 2979 ,t Dark Ceremony
.accept 3002 ,a The Gordunni Orb
.target Rok Orhan
step
.goto Feralas,74.40,43.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25巫医尤克里|r
.accept 3121 ,a A Strange Request
.target Witch Doctor Uzer'i
step
.goto Feralas,74.40,42.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25杉多尔·迅蹄|r
.turnin 2822 ,t The Mark of Quality
.target Jangdor Swiftstrider
step
.goto Feralas,76.06,43.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25布隆克|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Bronk
step << Druid
.goto Feralas,76.0,42.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25加诺斯·轻蹄|r
.train 1824 >> 学习职业技能
.target Jannos Lighthoof
.xp <44,1
.xp >46,1
step << Druid
.goto Feralas,76.0,42.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25加诺斯·轻蹄|r
.train 9821 >> 学习职业技能
.target Jannos Lighthoof
.xp <46,1
step << !Mage
.goto Feralas,75.45,44.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25夏恩|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Shyn
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step
.goto Orgrimmar,39.20,86.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25尤塞尔奈|r
.turnin 3002 ,t The Gordunni Orb
.target Uthel'nay
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10185 >> 学习职业技能
.target Pephredo
.xp <44,1
.xp >46,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10197 >> 学习职业技能
.target Pephredo
.xp <46,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10927 >> 学习职业技能
.target Ur'kyo
.xp <44,1
.xp >46,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10945 >> 学习职业技能
.target Ur'kyo
.xp <46,1
step
.goto Orgrimmar,39.00,38.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25佐尔·孤树|r
.turnin 1262 ,t Report to Zor
.target Zor Lonetree
.isOnQuest 1262
step
.goto Orgrimmar,39.00,38.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25佐尔·孤树|r
.accept 7541 ,a Service to the Horde
.turnin 7541 ,t Service to the Horde
.target Zor Lonetree
.isQuestTurnedIn 1262
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 16315 >> 学习职业技能
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10472 >> 学习职业技能
.target Kardris Dreamseeker
.xp <46,1
step
.goto Orgrimmar,59.4,36.8
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德兰·杜佛斯|r
.accept 2283 ,a Necklace Recovery
.turnin 2283 ,t Necklace Recovery
.target Dran Droffers
.itemcount 7666,1
step
.goto Orgrimmar,56.50,46.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25基尔兹宾·鼓眼|r
.turnin 7732 ,t Zukk'ash Report
.target Zilzibin Drumlore
step
.goto Orgrimmar,75.20,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25贝尔戈洛姆·石槌|r
.turnin 2976 ,t A Grim Discovery
.target Belgrom Rockmaul
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14285 >> 学习职业技能
.target Ormak Grimshot
.xp <44,1
.xp >46,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14304 >> 学习职业技能
.target Ormak Grimshot
.xp <46,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11584 >> 学习职业技能
.target Grezz Ragefist
.xp <44,1
.xp >46,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11578 >> 学习职业技能
.target Grezz Ragefist
.xp <46,1
step << Orc !Warlock
.goto Orgrimmar,69.40,13.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔达|r和|cRXP_FRIENDLY_奥古纳罗|r
.train 825 >> 学习|T136103:0|t[骑术：狼]
.vendor >> |cRXP_BUY_购买|r|T132224:0|t[|cFF0070FF狼|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step
.goto Orgrimmar,49.60,50.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25尼尔鲁·火刃|r
.turnin 3121 ,t A Strange Request
.accept 3122 ,a 回到Witch Doctor Uzer'i
.target Neeru Fireblade
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11341 >> 学习职业技能
.target Ormok
.xp <44,1
.xp >46,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11293 >> 学习职业技能
.target Ormok
.xp <46,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11671 >> 学习职业技能
.target Mirket
.xp <44,1
.xp >46,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11699 >> 学习职业技能
.target Mirket
.xp <46,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买所有买得起的宠物升级书
.target Kurgul
step << Troll
#completewith next
.subzone 367 >> 前往森金村
step << Troll
.goto Durotar,55.28,75.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔提|r和|cRXP_FRIENDLY_祖尼尔|r
.train 10861 >> 学习|T136103:0|t[骑术：迅猛龙]
.vendor >> |cRXP_BUY_购买|r|T132253:0|t[|cFF0070FF迅猛龙|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Stranglethorn Vale >> 乘坐飞艇前往格罗姆高营地
.zoneskip Stranglethorn Vale
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 46-47 南荆棘谷
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 47-48 悲伤沼泽
step
.goto Stranglethorn Vale,32.20,27.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cFFDB2EEF冒泡的大锅|r
.accept 586 ,a Speaking with Gan'zulah
step
.goto Stranglethorn Vale,32.10,29.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25先知摩克萨尔丁|r
.accept 571 ,a Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,28.80,44.80
>> 击杀|cRXP_ENEMY_泰希斯|r. 拾取他的|cRXP_LOOT_爪子|r
>> 它在迅猛龙区域巡逻
.complete 197,1 
.unitscan Tethis
.group 2
step
#completewith Anathek
>> 击杀|cRXP_ENEMY_劈颅猎人|r, |cRXP_ENEMY_狂战士|r和|cRXP_ENEMY_猎头者|r
.complete 586,1 
.complete 586,3 
.complete 586,2 
.mob Skullsplitter Hunter
.mob Skullsplitter Berserker
.mob Skullsplitter Headhunter
step
#completewith next
+这个任务可能会很难, 请万分小心不要噶了
step
#label Anathek
.goto Stranglethorn Vale,44.3,44.9,30,0
.loop 25,Stranglethorn Vale,47.1,40.7,44.3,44.9,45.8,41.2,47.1,40.7
>> 击杀|cRXP_ENEMY_残忍的安纳希克|r. 拾取他的|cRXP_LOOT_盔甲|r
*|cFFFCDC00小心ADD和他的|r|cFFEB144C斩杀技能.|r
.complete 586,4 
.unitscan Ana'thek the Cruel
step
.loop 25,Stranglethorn Vale,47.9,42.9,47.6,44.1,46.0,42.8,44.4,41.9,47.4,39.8,47.9,42.9
>> 击杀|cRXP_ENEMY_劈颅猎人|r, |cRXP_ENEMY_狂战士|r和|cRXP_ENEMY_猎头者|r
.complete 586,1 
.complete 586,3 
.complete 586,2 
.mob Skullsplitter Hunter
.mob Skullsplitter Berserker
.mob Skullsplitter Headhunter
step
.loop 25,Stranglethorn Vale,47.26,28.58,49.61,23.98,48.95,19.87,47.26,23.98
.goto Stranglethorn Vale,48.95,19.87,70,0
>> 击杀|cRXP_ENEMY_巴尔瑟拉|r. 拾取他的|cRXP_LOOT_牙|r
>> |cRXP_WARN_在开始击杀|cRXP_ENEMY_巴尔瑟拉|r前, 清理|cRXP_ENEMY_深喉猎豹|r以避免ADD|r
.complete 193,1 
.mob Shadowmaw Panther
.unitscan Bhag'thera
.group 2
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔加丁爵士|r和|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 193 ,t Panther Mastery
.goto Stranglethorn Vale,35.55,10.55
.turnin 197 ,t Raptor Mastery
.accept 208 ,a Big Game Hunter
.goto Stranglethorn Vale,35.66,10.81
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
.group
step
.goto Stranglethorn Vale,32.20,27.70
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cFFDB2EEF冒泡的大锅|r
.turnin 586 ,t Speaking with Gan'zulah
.accept 588 ,a The Fate of Yenniku
step
.goto Stranglethorn Vale,32.20,27.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25肯维雷|r
.turnin 588 ,t The Fate of Yenniku
.accept 589 ,a The Singing Crystals
.target Kin'weelay
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >> 飞往藏宝海湾
.target Thysta
step
.goto Stranglethorn Vale,28.35,76.35
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25奥格索普·奥布诺提斯|r
.turnin 2767 ,t Rescue OOX-22/FE!
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,26.70,76.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25私掠者布劳兹|r
.accept 617 ,a Akiris by the Bundle
.target Privateer Bloads
step
.goto Stranglethorn Vale,27.10,77.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25克兰克·菲兹巴布|r
.turnin 1118 ,t Back to Booty Bay
.accept 621 ,a Zanzil's Secret
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.70,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25‘海狼’麦克基雷|r
.accept 606 ,a Scaring Shaky
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.10,76.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25大副克拉兹|r
.accept 595 ,a The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,27.27,69.51
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击营地中间的木桶上的|cFFDB2EEF血帆海盗的信件|r
.turnin 595 ,t The Bloodsail Buccaneers
.accept 597 ,a The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,28.09,76.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25大副克拉兹|r
.turnin 597 ,t The Bloodsail Buccaneers
.accept 599 ,a The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,26.92,77.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25迪格|r
.accept 587 ,a Up to Snuff
.target Deeg
step
.goto Stranglethorn Vale,27.17,77.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25舰队指挥官卡拉·海角|r
.turnin 599 ,t The Bloodsail Buccaneers
.accept 604 ,a The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.59,75.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25独眼迪兹|r
.accept 576 ,a Keep An Eye Out
.target Dizzy One-Eye
step
#completewith Swashbucklers
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_迪兹的眼睛|r
>> |cRXP_WARN_不要专注于此, 你可以稍后再完成此任务|r
.complete 576,1 
step
#completewith next
>> 击杀|cFFFF5722血帆剑客|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,29.61,80.89,20,0
.goto Stranglethorn Vale,27.75,83.13,20,0
.goto Stranglethorn Vale,27.18,82.66,20,0
.goto Stranglethorn Vale,26.94,82.49
>> 点击|cRXP_LOOT_血帆计划书|r和|cRXP_LOOT_血帆海图|r
>> |cFFFCDC00它们通常会刷在半岛上的大营地或是营地附近的船上|r
.complete 604,2 
.complete 604,3 
step
#label Swashbucklers
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>> 击杀|cFFFF5722血帆剑客|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44
>> 击杀|cRXP_ENEMY_老迈的迷雾谷猩猩|r. 拾取|cRXP_LOOT_内脏|r和|cRXP_LOOT_肌腱|r
>> |cRXP_WARN_保留打到的|r|T134298:0|t[猩猩牙]|cRXP_WARN_. 你之后的另一个任务会用到它|r
.complete 606,1 
.complete 571,1 
.mob Elder Mistvale Gorilla
.group
step
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44
>> 击杀|cRXP_ENEMY_老迈的迷雾谷猩猩|r. 拾取|cRXP_LOOT_内脏|r和|cRXP_LOOT_肌腱|r
.complete 606,1 
.complete 571,1 
.mob Elder Mistvale Gorilla
.solo
step
.goto Stranglethorn Vale,28.60,75.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25独眼迪兹|r
.turnin 576 ,t Keep An Eye Out
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,26.90,73.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25‘病鬼’菲力浦|r
.turnin 606 ,t Scaring Shaky
.accept 607 ,a Back to MacKinley
.target "Shaky" Phillipe
step
.goto Stranglethorn Vale,27.70,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25‘海狼’麦克基雷|r
.turnin 607 ,t Back to MacKinley
.accept 609 ,a Voodoo Dues
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.20,77.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25舰队指挥官卡拉·海角|r
.turnin 604 ,t The Bloodsail Buccaneers
.accept 608 ,a The Bloodsail Buccaneers
.target Fleet Master Seahorn
.group
step
.goto Stranglethorn Vale,27.20,77.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25舰队指挥官卡拉·海角|r
.turnin 604 ,t The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.87,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >> 飞往格罗姆高营地
.target Gringer
step
.goto Stranglethorn Vale,32.10,29.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25先知摩克萨尔丁|r
.turnin 571 ,t Mok'thardin's Enchantment
.accept 573 ,a Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,38.18,35.60
>> 击杀|cRXP_ENEMY_虎王邦加拉西|r. 拾取他的|cRXP_LOOT_头|r
>> |cFFFCDC00这个任务比较难. 它会与2只小怪一起巡逻, 并在50%血左右再刷新2只|r
.complete 208,1 
.unitscan King Bangalash
.group 3
step
.goto Stranglethorn Vale,39.48,47.42,60,0
.goto Stranglethorn Vale,41.67,50.19,60,0
.goto Stranglethorn Vale,43.84,47.77
>> 进入洞穴, 然后击杀|cRXP_ENEMY_铁颚蜥蜴|r. 拾取|cRXP_LOOT_碎片|r
.complete 589,1 
.mob Ironjaw Basilisk
step
#completewith Chucky
>> 击杀|cRXP_ENEMY_赞吉尔亡灵|r. 拾取|cRXP_LOOT_赞吉尔的药剂|r
>> |cFFFCDC00不要引到或是攻击流亡者赞吉尔|r
.complete 621,1 
step
.goto Stranglethorn Vale,35.25,51.25
>> 击杀|cRXP_ENEMY_玛雷|r. 拾取她的|cRXP_LOOT_畸形足|r
.complete 609,1 
.unitscan Maury "Club Foot" Wilkins
step
.goto Stranglethorn Vale,34.92,51.84
>> 击杀|cRXP_ENEMY_乔乔|r. 拾取他的|cRXP_LOOT_望远镜|r
.complete 609,2 
.unitscan Jon-Jon the Crow
step
#label Chucky
.goto Stranglethorn Vale,40.00,58.24
>> 击杀|cRXP_ENEMY_苏克|r. 拾取他的|cRXP_LOOT_戒指|r
.complete 609,3 
.unitscan Chucky "Ten Thumbs"
step
.loop 25,Stranglethorn Vale,40.63,60.03,39.66,59.28,38.71,59.72,38.58,58.54,38.90,57.60,39.95,57.25,41.27,57.15,40.77,59.00,40.63,60.03
>> 击杀|cRXP_ENEMY_赞吉尔亡灵|r. 拾取|cRXP_LOOT_赞吉尔的药剂|r
>> |cFFFCDC00不要引到或是攻击流亡者赞吉尔|r
.complete 621,1 
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Witch Doctor
.mob Zanzil Naga
step
#completewith next
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_迪兹的眼睛|r
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Warlock
.isOnQuest 576
.solo
step
.loop 25,Stranglethorn Vale,24.37,52.88,23.10,52.77,22.77,53.90,23.63,55.24,24.10,54.50,24.53,54.06,24.37,52.88
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_鼻烟|r
.complete 587,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Warlock
.isOnQuest 587
.solo
step
.loop 25,Stranglethorn Vale,24.37,52.88,23.10,52.77,22.77,53.90,23.63,55.24,24.10,54.50,24.53,54.06,24.37,52.88
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_迪兹的眼睛|r
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Warlock
.isOnQuest 576
.solo
step
#completewith next
>> 击杀|cRXP_ENEMY_纳迦探险者|r. 拾取|cRXP_LOOT_海蛇草|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.96,61.94
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_圣泉|r拾取|cRXP_LOOT_圣泉之水|r
.complete 573,1 
step
.loop 25,Stranglethorn Vale,28.00,63.12,28.15,64.42,25.55,63.11,25.07,63.73,24.61,64.59,24.02,63.74,24.15,62.14,24.49,61.33,24.73,59.87,25.21,59.03,25.92,59.52,26.95,59.14,27.00,61.39,28.00,63.12
>> 完成击杀|cRXP_ENEMY_纳迦探险者|r. 拾取|cRXP_LOOT_海蛇草|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.60,75.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25独眼迪兹|r
.turnin 576 ,t Keep An Eye Out
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,27.80,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25‘海狼’麦克基雷|r
.turnin 609 ,t Voodoo Dues
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.80,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25‘海狼’麦克基雷|r
.accept 613 ,a Cracking Maury's Foot
.target "Sea Wolf" MacKinley
.group
step
.goto Stranglethorn Vale,26.70,76.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25私掠者布劳兹|r
.turnin 617 ,t Akiris by the Bundle
.target Privateer Bloads
step
.goto Stranglethorn Vale,27.11,77.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25克兰克·菲兹巴布|r
.turnin 621 ,t Zanzil's Secret
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.13,77.44
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25威士忌·狡黠|r
.accept 580 ,a Whiskey Slim's Lost Grog
.target Whiskey Slim
step
.goto Stranglethorn Vale,27.11,77.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25克兰克·菲兹巴布|r
.accept 1119 ,a Zanzil's Mixture and a Fool's Stout
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.00,77.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25迪格|r
.turnin 587 ,t Up to Snuff
.target Deeg
.isQuestComplete 587
step
.goto Stranglethorn Vale,27.10,77.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25舰队指挥官卡拉·海角|r
.turnin 608 ,t The Bloodsail Buccaneers
.target Fleet Master Seahorn
.group
step
.goto Stranglethorn Vale,27.70,76.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25芬·菲兹拉克|r
.accept 348 ,a Stranglethorn Fever
.target Fin Fizracket
.group
step
.goto Stranglethorn Vale,26.70,73.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25海克拜瑞·斯莫特船长|r
.accept 8551 ,a The Captain's Chest
.target Captain Hecklebury Smotts
.group
step
.goto Stranglethorn Vale,26.87,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >> 飞往格罗姆高营地
.target Gringer
step
.goto Stranglethorn Vale,32.10,29.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25先知摩克萨尔丁|r
.turnin 573 ,t Mok'thardin's Enchantment
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25肯维雷|r
.turnin 589 ,t The Singing Crystals
.accept 591 ,a The Mind's Eye
.target Kin'weelay
.group
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25肯维雷|r
.turnin 589 ,t The Singing Crystals
.target Kin'weelay
step
.goto Stranglethorn Vale,38.18,35.60
>> 击杀|cRXP_ENEMY_虎王邦加拉西|r. 拾取他的|cRXP_LOOT_头|r
>> |cFFFCDC00这个任务比较难. 它会与2只小怪一起巡逻, 并在50%血左右再刷新2只|r
.complete 208,1 
.unitscan King Bangalash
.group 3
step
#completewith next
>> 击杀|cRXP_ENEMY_莫什奥格食人魔|r. 拾取|cRXP_LOOT_玛雷的钥匙|r
.complete 613,1 
.group 4
step
.goto Stranglethorn Vale,52.93,27.60
>> 击杀|cRXP_ENEMY_麦佐斯|r. 拾取|cRXP_LOOT_心灵之眼|r
>> |cRXP_WARN_他位于洞穴深处并被两只小怪保护着|r
.complete 591,1 
.mob Mai'Zoth
.group 4
step
.goto Stranglethorn Vale,50.78,27.74,-1
.goto Stranglethorn Vale,49.25,27.10,-1
>> 击杀|cRXP_ENEMY_莫什奥格食人魔|r. 拾取|cRXP_LOOT_玛雷的钥匙|r
.complete 613,1 
.group 4
step
.goto Stranglethorn Vale,35.70,10.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25小赫米特·奈辛瓦里|r
.turnin 208 ,t Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
.group
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25肯维雷|r
.turnin 591 ,t The Mind's Eye
.accept 592 ,a Saving Yenniku
.target Kin'weelay
.group
step
#completewith next
.goto Stranglethorn Vale,32.80,65.80,0
>> 击杀你遇到的所有|cRXP_ENEMY_猩猩|r. 拾取|cRXP_LOOT_牙齿|r
.collect 2799,10 
.isOnQuest 348
step
.goto Stranglethorn Vale,35.27,60.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25巫医安巴格瓦|r
.turnin 349 ,t Stranglethorn Fever
.target Witch Doctor Unbagwa
.isOnQuest 348
.group 3
step
.goto Stranglethorn Vale,35.27,60.40
>> 击杀几波|cRXP_ENEMY_猩猩|r直到|cRXP_ENEMY_野蛮的莫克|r出现. 击杀并拾取他的|cRXP_LOOT_心|r
.complete 348,1 
.unitscan Mokk the Savage
.isOnQuest 348
.group 3
step
.goto Stranglethorn Vale,39.0,58.20
.use 3912 >> 对|cRXP_ENEMY_耶尼库|r使用|T134336:0|t[灵魂宝石], 然后跟他对话并拿回他的|cRXP_LOOT_宝石|r
.complete 592,1 
.unitscan Yenniku
.group
.isOnQuest 592
step
.goto Stranglethorn Vale,36.6,39.6
>> 击杀|cRXP_ENEMY_高拉什|r. 拾取他的|cRXP_LOOT_箱子|r
.complete 8551,1 
.isOnQuest 8551
.unitscan Gorlash
.group 3
step
#completewith Keelhaul
.goto Stranglethorn Vale,32.90,88.20,0
.goto Stranglethorn Vale,30.60,90.60,0
.goto Stranglethorn Vale,29.30,88.30,0
>> 搜索船舱下层直到你找到地上的小卷轴. 拾取|T134939:0|t[|cFF00BCD4科泰罗的谜题|r]. 使用并接受任务
.accept 624 ,a Cortello's Riddle
.collect 4056,1,624,1 >> Cortello's Riddle (1)
.use 4056
.group 3
step
#completewith Keelhaul
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_鼻烟|r和|cRXP_LOOT_迪兹的眼睛|r
.complete 587,1 
.complete 576,1 
.group
step
.goto Stranglethorn Vale,32.90,88.20
>> 在船舱2层的后部击杀|cRXP_ENEMY_斯蒂沃特船长|r
.complete 608,1 
.unitscan Captain Stillwater
.group 3
step
.goto Stranglethorn Vale,30.60,90.60
>> 在船舱2层的后部击杀|cRXP_ENEMY_舰队指挥官菲尔拉伦|r
.complete 608,3 
.unitscan Fleet Master Firallon
.group 3
step
#label Keelhaul
.goto Stranglethorn Vale,29.30,88.30
>> 在船舱2层的后部击杀|cRXP_ENEMY_尼哈鲁船长|r.
>> |cRXP_ENEMY_加尔|r|cRXP_WARN_能冲锋造成大量伤害, 眩晕2秒并施放|r|T132152:0|t[痛击]
.complete 608,2 
.unitscan Captain Keelhaul
.unitscan Garr Salthoof
.group 3
step
#completewith next
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_鼻烟|r
.complete 587,1 
.isOnQuest 587
.group
step
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_迪兹的眼睛|r
.complete 576,1 
.isOnQuest 576
.group
step
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>> 击杀|cRXP_ENEMY_血帆海盗|r. 拾取|cRXP_LOOT_鼻烟|r
.complete 587,1 
.isOnQuest 587
.group
step
.goto Stranglethorn Vale,26.70,73.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到藏宝海湾, 然后对话|cFF00FF25海克拜瑞·斯莫特船长|r
.turnin 8551 ,t The Captain's Chest
.target Captain Hecklebury Smotts
.isQuestComplete 8551
.group
step
.goto Stranglethorn Vale,28.60,75.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25独眼迪兹|r
.turnin 576 ,t Keep An Eye Out
.target Dizzy One-Eye
.group
step
.goto Stranglethorn Vale,27.60,76.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25芬·菲兹拉克|r
.turnin 348 ,t Stranglethorn Fever
.target Fin Fizracket
.group
step
.goto Stranglethorn Vale,27.80,77.0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25‘海狼’麦克基雷|r
.turnin 613 ,t Cracking Maury's Foot
.target "Sea Wolf" MacKinley
.isQuestComplete 613
.group
step
.goto Stranglethorn Vale,27.00,77.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25迪格|r
.turnin 587 ,t Up to Snuff
.target Deeg
.group
step
.goto Stranglethorn Vale,26.87,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >> 飞往格罗姆高营地
.target Gringer
.group
step
.goto Stranglethorn Vale,32.20,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25肯维雷|r
.turnin 592 ,t Saving Yenniku
.target Kin'weelay
.isQuestComplete 592
.group
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Stonard>> 飞往斯通纳德
.target Thysta
.zoneskip Swamp of Sorrows
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 47-48 悲伤沼泽
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 47-49 塔纳利斯
step
.goto Swamp of Sorrows,34.30,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在诅咒之地边界处对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 2784 ,a Fall From Grace
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.30,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r并点完全部对话
.complete 2784,1 
.target Fallen Hero of the Horde
.skipgossip
step
.goto Blasted Lands,52.76,2.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2784 ,t Fall From Grace
.accept 2621 ,a The Disgraced One
.target Fallen Hero of the Horde
step
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >> 前往斯通纳德
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费泽卢尔|r和|cRXP_FRIENDLY_分队指挥官卢尔格|r
.accept 1429 ,a The Atal'ai Exile
.goto Swamp of Sorrows,47.93,54.79
.turnin 2621 ,t The Disgraced One
.accept 2622 ,a The Missing Orders
.goto Swamp of Sorrows,47.78,54.94
.target Fel'zerul
.target Dispatch Commander Ruag
step
.goto Swamp of Sorrows,44.96,57.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_本戈尔|r
.turnin 2622 ,t The Missing Orders
.accept 2623 ,a The Swamp Talker
.target Bengor
step
.goto Swamp of Sorrows,81.31,80.97
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托克卡尔|r
.accept 699 ,a Lack of Surplus
.target Tok'Kar
step
.goto Swamp of Sorrows,45.78,52.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25苏塔佐尔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cFF00FF25拉尔塔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Rartar
step
.goto Swamp of Sorrows,82.0,68.6,40,0
.goto Swamp of Sorrows,86.6,58.6,40,0
.loop 25,Swamp of Sorrows,87.6,39.6,86.8,35.8,83.2,31.6,82.8,26.2,80.6,20.8,78.6,13.6,74.0,15.6,75.8,20.6,78.6,23.0,79.6,29.2,81.6,33.0,84.8,36.2,87.6,39.6
>> 击杀|cRXP_ENEMY_锯齿钳嘴鳄|r. 拾取|cRXP_LOOT_爪子|r
.complete 699,1 
.mob Sawtooth Snapper
step
.goto Swamp of Sorrows,81.40,80.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托克卡尔|r
.turnin 699 ,t Lack of Surplus
.accept 1422 ,a Threat From the Sea
.target Tok'Kar
step
.goto Swamp of Sorrows,83.70,80.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡塔尔|r
.turnin 1422 ,t Threat From the Sea
.accept 1426 ,a Threat From the Sea
.target Katar
step
.loop 25,Swamp of Sorrows,85.4,82.8,86.6,79.4,88.6,76.6,91.6,69.6,93.4,64.0,94.6,58.2,95.2,51.0,94.6,58.2,93.4,64.0,91.6,69.6,88.6,76.6,87.2,80.4,86.4,84.6,85.6,88.8,83.6,93.8,81.2,93.0,83.2,88.4,85.4,82.8
>> 击杀|cRXP_ENEMY_沼泽鱼人|r, |cRXP_ENEMY_沼泽喷墨鱼人|r和|cRXP_ENEMY_沼泽食腐鱼人|r
.complete 1426,1 
.complete 1426,2 
.complete 1426,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
.goto Swamp of Sorrows,83.70,80.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡塔尔|r
.turnin 1426 ,t Threat From the Sea
.accept 1427 ,a Threat From the Sea
.target Katar
step
.goto Swamp of Sorrows,81.40,80.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托克卡尔|r
.turnin 1427 ,t Threat From the Sea
.target Tok'Kar
step
.goto Swamp of Sorrows,83.75,80.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡塔尔|r
.accept 1428 ,a Continued Threat
.target Katar
step
#completewith SwampTalker
.goto Swamp of Sorrows,66.03,79.60,40,0
.subzone 1817 >> 向西走并进入雄鹿沼泽洞穴
step
#completewith next
>> 击杀|cRXP_ENEMY_沼泽鱼人|r, |cRXP_ENEMY_沼泽喷墨鱼人|r和|cRXP_ENEMY_沼泽食腐鱼人|r
>> |cRXP_WARN_它们会快速刷新于营地西边的雄鹿沼泽洞穴内|r
.complete 1428,1 
.complete 1428,2 
.complete 1428,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
#label SwampTalker
.goto Swamp of Sorrows,66.08,77.67,60,0
.goto Swamp of Sorrows,62.90,87.40
>> 击杀|cRXP_ENEMY_沼泽空谈者|r. 拾取|cRXP_LOOT_酋长的命令|r
>> |cRXP_WARN_留技能对付|r|cRXP_ENEMY_沼泽空谈者|r|cRXP_WARN_. 他的小怪一下就能打死但是如果留着不管就会造成可观的伤害.|r
.complete 2623,1 
.unitscan Swamp Talker
step
.loop 25,Swamp of Sorrows,62.48,87.74,60.95,84.20,62.20,83.16,64.60,81.25,66.42,84.59,63.34,86.47,63.84,91.64,62.48,87.74
>> 击杀|cRXP_ENEMY_沼泽鱼人|r, |cRXP_ENEMY_沼泽喷墨鱼人|r和|cRXP_ENEMY_沼泽食腐鱼人|r
>> |cRXP_WARN_它们会快速刷新于营地西边的雄鹿沼泽洞穴内|r
.complete 1428,1 
.complete 1428,2 
.complete 1428,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
.goto Swamp of Sorrows,83.70,80.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡塔尔|r
.turnin 1428 ,t Continued Threat
.target Katar
step << Hunter/Warlock/Shaman/Warrior
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >> 向西前往斯通纳德
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧格鲁姆|r
.train 14304 >> 学习职业技能
.target Ogrom
.xp <46,1
.xp >48,1
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧格鲁姆|r
.train 14321 >> 学习职业技能
.target Ogrom
.xp <48,1
step << Hunter
.goto Swamp of Sorrows,47.35,52.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格罗科尔|r
.train 24562 >> 学习宠物技能
.target Grokor
.xp <48,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡托什|r
.train 11699 >> 学习职业技能
.target Kartosh
.xp <46,1
.xp >48,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡托什|r
.train 11712 >> 学习职业技能
.target Kartosh
.xp <48,1
step << Warlock
.goto Swamp of Sorrows,48.59,55.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.vendor >> 购买所有买得起的宠物升级书
.target Greshka
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.train 10586 >> 学习职业技能
.target Haromm
.xp <46,1
.xp >48,1
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.train 10431 >> 学习职业技能
.target Haromm
.xp <48,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马尔罗什|r
.train 11578 >> 学习职业技能
.target Malosh
.xp <46,1
.xp >48,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马尔罗什|r
.train 20661 >> 学习职业技能
.target Malosh
.xp <48,1
step
.goto Swamp of Sorrows,34.30,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2623 ,t The Swamp Talker
.accept 2801 ,a A Tale of Sorrow
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.30,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r并完成全部对话
.complete 2801,1 
.skipgossip
step
.goto Blasted Lands,52.76,2.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2801 ,t A Tale of Sorrow
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,22.90,48.30
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击桥下水中的|cRXP_PICK_浸水的卷轴|r
.turnin 624 ,t Cortello's Riddle
.accept 625 ,a Cortello's Riddle
.isOnQuest 624
.group
step
#completewith next
.hs >> 炉石回莫沙彻营地
.use 6948
step
.goto Feralas,74.81,45.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25旅店老板格卢尔|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Greul
step << Druid
.goto Feralas,76.0,42.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25加诺斯·轻蹄|r
.train 9823 >> 学习职业技能
.target Jannos Lighthoof
.xp <46,1
.xp >48,1
step << Druid
.goto Feralas,76.0,42.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25加诺斯·轻蹄|r
.train 22828 >> 学习职业技能
.target Jannos Lighthoof
.xp <48,1
step
.goto Feralas,74.50,43.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3122 ,t 回到Witch Doctor Uzer'i
.accept 3123 ,a Testing the Vessel
.accept 3380 ,a The Sunken Temple
.target Witch Doctor Uzer'i
step
.goto Feralas,75.45,44.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25夏恩|r
.fly Tanaris>> 飞往塔纳利斯
.target Shyn
.zoneskip Tanaris
step
.abandon 197 ,ab Raptor Mastery
.isOnQuest 197
step
.abandon 193 ,ab Panther Mastery
.isOnQuest 193
step
.abandon 208 ,ab Big Game Hunter
.isOnQuest 208
step
.abandon 608 ,ab Bloodsail Buccaneers
.isOnQuest 608
step
.abandon 613 ,ab Cracking Maury's Foot
.isOnQuest 613
step
.abandon 348 ,ab Stranglethorn Fever
.isOnQuest 348
step
.abandon 8551 ,ab Captain's Chest
.isOnQuest 8551
step
.abandon 591 ,ab Mind's Eye
.isOnQuest 591
step
.abandon 348 ,ab Stranglethorn Fever
.isOnQuest 348
step
.abandon 348 ,ab Stranglethorn Fever
.isOnQuest 348
step
.abandon 592 ,ab in Saving Yenniku
.isOnQuest 592
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 47-49 塔纳利斯
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 49-50 辛特兰
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >> 前往闪光平原
step
.goto Thousand Needles,77.79,77.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1119 ,t Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.target Kravel Koalbeard
step
.goto Thousand Needles,80.33,76.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1187 ,t Razzeric's Tweaking
.target Razzeric
.isQuestComplete 1187
step
.goto Thousand Needles,80.33,76.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.accept 1188 ,a Safety First
.target Razzeric
.isQuestTurnedIn 1187
step
.goto Thousand Needles,77.79,77.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1120 ,a Get the Gnomes Drunk
.target Kravel Koalbeard
step
.goto Thousand Needles,77.56,76.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_地精车队老板|r
.turnin 1120 ,t Get the Gnomes Drunk
.target Gnome Pit Boss
step
.goto Thousand Needles,77.79,77.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1122 ,a Report Back to Fizzlebub
.target Kravel Koalbeard
step
.goto Thousand Needles,77.79,77.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 82 ,a Noxious Lair Investigation
.target Kravel Koalbeard
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.subzone 976 >> 前往加基森
step
.goto Tanaris,51.90,27.00
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击大笼子旁的|cRXP_PICK_通缉告示|r
.accept 2875 ,a WANTED: Andre Firebeard
step
.goto Tanaris,51.56,26.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 3362 ,a Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,51.00,27.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史瑞夫|r
.turnin 1188 ,t Safety First
.target Shreev
.isQuestComplete 1188
step
.goto Tanaris,51.80,28.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马林·诺格弗格|r
.accept 2605 ,a The Thirsty Goblin
.target Marin Noggenfogger
step
.goto Tanaris,52.50,27.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >> 绑定炉石到加基森
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.80,27.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安迪·利恩|r
.accept 5863 ,a The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,52.30,27.00
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击传送器边上的|cRXP_PICK_测蛋器|r, 并上交角鹰兽的蛋
.accept 2741 ,a The Super Egg-O-Matic
.turnin 2741 ,t The Super Egg-O-Matic
step
#completewith next
.goto Tanaris,52.64,25.73,50,0
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >> 向东前往热砂港
step
.goto Tanaris,66.60,22.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 ,a Pirate Hats Ahoy!
.target Haughty Modiste
step
.goto Tanaris,67.00,22.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 3520 ,t Screecher Spirits
.target Yeh'kinya
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r和|cRXP_FRIENDLY_斯杜雷|r
.accept 8366 ,a Southsea Shakedown
.goto Tanaris,67.06,23.89
.accept 2873 ,a Stoley's Shipment
.goto Tanaris,67.11,23.98
.target Security Chief Bilgewhizzle
.target Stoley
step
#completewith FireBeard
.goto Tanaris,68.76,41.51,30,0
.subzone 1336 >> 向南前往落帆海湾
step
#completewith StolenCargo
>> 击杀|cRXP_ENEMY_南海海盗|r. 拾取|cRXP_LOOT_海盗帽|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith next
>> 在西部房屋的2楼拾取|cRXP_PICK_被偷走的货物|r获取|cRXP_LOOT_斯杜雷的货物|r
.complete 2873,1 
step
#label FireBeard
.goto Tanaris,73.37,47.14
>> 击杀|cRXP_ENEMY_安德雷·火胡|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_小心, 攻击他会引到边上的小怪. 如果可以就单拉他出来并风筝以重置其他小怪|r
.complete 2875,1 
.unitscan Andre Firebeard
step
#label StolenCargo
.goto Tanaris,72.23,46.81
>> 在西部房屋的2楼拾取|cRXP_PICK_被偷走的货物|r获取|cRXP_LOOT_斯杜雷的货物|r
.complete 2873,1 
step
.loop 25,Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
>> 击杀|cRXP_ENEMY_南海海盗|r. 拾取|cRXP_LOOT_海盗帽|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.goto Tanaris,52.70,45.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r处
.turnin 3380 ,t The Sunken Temple
.target Marvon Rivetseeker
.isOnQuest 3380
step
#completewith next
.goto Tanaris,68.27,41.21,30,0
.goto Tanaris,65.71,41.53,30,0
.goto Tanaris,52.71,45.92,50,0
.subzone 1938 >> 离开落帆海湾, 然后向西前往破碎石柱
step
.goto Tanaris,52.70,45.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3161 ,a Gahz'ridian
.target Marvon Rivetseeker
step
#completewith next
.subzone 982 >> 继续向西前往腐化之巢
step
.loop 25,Tanaris,35.6,39.4,37.2,39.6,36.5,43.9,36.0,47.2,34.9,50.3,33.0,51.6,34.4,48.6,35.3,45.1,35.6,39.4
>> 击杀|cRXP_ENEMY_森提帕尔异种蝎|r. 拾取|cRXP_LOOT_昆虫肢体|r
>> |cRXP_WARN_小心|r|cRXP_ENEMY_森提帕尔群居蝎|r|cRXP_WARN_. 它们会刷出很多小怪并能联动很远距离的怪|r
.complete 82,1 
.mob Centipaar Wasp
.mob Centipaar Stinger
.mob Centipaar Swarmer
.mob Centipaar Worker
.mob Centipaar Sandreaver
.mob Centipaar Tunneler
step
#completewith Garmarok
.goto Tanaris,40.98,57.16,50,0
.subzone 983 >> 向东南前往砂槌营地
step
#completewith next
>> 击杀|cRXP_ENEMY_砂槌蛮兵|r和|cRXP_ENEMY_砂槌执行者|r
>> |cRXP_WARN_避开|r|cRXP_ENEMY_砂槌术士|r|cRXP_WARN_, 他们会荆棘诅咒|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#label Garmarok
.goto Tanaris,41.50,57.80
>> 击杀洞内的|cRXP_ENEMY_掠夺者格玛洛克|r
>> |cRXP_WARN_小心他的高伤害输出和致死打击|r
.complete 5863,3 
.unitscan Gor'marok the Ravager
step
#completewith next
.use 9978 >>装备|T133151:0|t[加兹瑞迪安探测器]
>> 拾取|cRXP_PICK_沙堆|r获取|cRXP_LOOT_加兹瑞迪安饰物|r
>> |cRXP_WARN_加兹瑞迪安饰物会出现在你的小地图上. 你能在东月废墟和南月废墟找到大量的加兹瑞迪安饰物|r
.complete 3161,1 
.use 9978
step
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
>> 击杀|cRXP_ENEMY_砂槌蛮兵|r和|cRXP_ENEMY_砂槌执行者|r
>> |cRXP_WARN_避开|r|cRXP_ENEMY_砂槌术士|r|cRXP_WARN_, 他们会荆棘诅咒|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
.use 9978 >>装备|T133151:0|t[加兹瑞迪安探测器]
>> 拾取|cRXP_PICK_沙堆|r获取|cRXP_LOOT_加兹瑞迪安饰物|r
>> |cRXP_WARN_加兹瑞迪安饰物会出现在你的小地图上. 你能在东月废墟和南月废墟找到大量的加兹瑞迪安饰物|r
.complete 3161,1 
.use 9978
step
#completewith Thistleshrubs
.goto Tanaris,31.06,64.91,20,0
.subzone 980 >> 向西南前往灌木谷
step
#completewith next
>> 击杀|cRXP_ENEMY_灌木露水收集者|r. 拾取|cRXP_LOOT_饱满的露水腺|r
>> |cRXP_WARN_此物品掉率很低并且灌木露水收集者与其他小怪共享刷新, 因此你需要击杀所有看到的怪物来加快他们的刷新|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
#label Thistleshrubs
.loop 25,Tanaris,29.50,62.98,27.76,65.80,28.30,68.39,30.63,66.57,30.62,63.76,29.50,62.98
>> 击杀所有|cRXP_ENEMY_灌木元素怪|r
.complete 3362,1 
.complete 3362,2 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
step
.loop 25,Tanaris,29.50,62.98,27.76,65.80,28.30,68.39,30.63,66.57,30.62,63.76,29.50,62.98
>> 击杀|cRXP_ENEMY_灌木露水收集者|r. 拾取|cRXP_LOOT_饱满的露水腺|r
>> |cRXP_WARN_此物品掉率很低并且灌木露水收集者与其他小怪共享刷新, 因此你需要击杀所有看到的怪物来加快他们的刷新|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
.loop 25,Tanaris,29.37,59.97,28.70,67.32,31.66,74.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t寻找|cRXP_FRIENDLY_图加|r, 然后与它对话来开启护送任务
>> |cRXP_WARN_它在此区域有4个刷新点|r
.accept 1560 ,a Tooga's Quest
.target Tooga
step
.goto Tanaris,66.58,25.64
>> 引导|cRXP_FRIENDLY_图加|r前往热砂港. 如果你离它太远了任务就会失败
.complete 1560,1 
.target Tooga
step
.goto Tanaris,66.58,25.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔塔|r
.turnin 1560 ,t Tooga's Quest
.target Torta
step
#completewith next
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >> 向北前往热砂港
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r和|cRXP_FRIENDLY_斯杜雷|r
.turnin 2875 ,t WANTED: Andre Firebeard
.turnin 8366 ,t Southsea Shakedown
.goto Tanaris,67.06,23.89
.turnin 2873 ,t Stoley's Shipment
.accept 2874 ,a Deliver to MacKinley
.goto Tanaris,67.11,23.98
.target Security Chief Bilgewhizzle
.target Stoley
step
.goto Tanaris,66.60,22.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 ,t Pirate Hats Ahoy!
.target Haughty Modiste
step
.goto Tanaris,66.989,22.354
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_叶基亚|r
.accept 3527 ,a The Prophecy of Mosh'aru
.target Yeh'kinya
.isQuestTurnedIn 3520
.dungeon ZF
step
#completewith next
.hs >> 炉石回加基森
.use 6948
.cooldown item,6948,>0
step
.goto Tanaris,52.63,28.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戴格·迅斩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Dirge Quikcleave
step << skip
.goto Tanaris,52.30,28.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 9245 >>Deposit Stoley's Bottle in your bank
.target Gimblethorn
step
.goto Tanaris,51.80,28.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马林·诺格弗格|r
.turnin 2605 ,t The Thirsty Goblin
.accept 2606 ,a In Good Taste
.target Marin Noggenfogger
step
.goto Tanaris,50.90,27.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 82 ,t Noxious Lair Investigation
.target Alchemist Pestlezugg
step
.goto Tanaris,51.10,26.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普琳科|r
.turnin 2606 ,t In Good Taste
.accept 2641 ,a Sprinkle's Secret Ingredient
.target Sprinkle
step
.goto Tanaris,50.20,27.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 10 ,a The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.50,26.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 3362 ,t Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,52.80,27.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安迪·利恩|r
.turnin 5863 ,t The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,52.70,45.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3161 ,t Gahz'ridian
.accept 3444 ,a The Stone Circle
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,56.19,66.62,30,0
.subzone 981 >> 向南前往大裂口
step
#label BugHole
.goto Tanaris,55.69,69.44,50,0
.goto Tanaris,56.36,68.44,30,0
.goto Tanaris,57.45,70.45,30,0
.goto Tanaris,55.96,71.16
>> |TInterface/GossipFrame/HealerGossipIcon:0|t进入异种蝎巢穴, 然后点击|cRXP_PICK_谢申克的勘探设备控制台|r并拾取|cRXP_LOOT_谢申克的勘探设备|r
>> |cRXP_WARN_特别小心|cRXP_ENEMY_哈札里群居蝎|r|cRXP_WARN_. 它们能快速召唤能造成高伤害的小怪并且它们能联动很远距离的怪.|r
.complete 10,1 
.unitscan Hazzali Swarmer
step
.use 8623 >> 如果你找到了|T132836:0|t[定位器OOX-17/TN], 就点击并接受任务. 否则的话就跳过此步
.accept 351 ,a Find OOX-17/TN!
.itemcount 8623,1
step
.goto Tanaris,60.20,64.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
.turnin 351 ,t Find OOX-17/TN!
.target Homing Robot OOX-17/TN
.isOnQuest 351
step
.goto Tanaris,60.23,64.71
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r以开始护送任务
>> |cRXP_WARN_此任务很难. 吃喝到满状态并使用所有可用的buff(卷轴, 食物, 药剂等)|r
.accept 648 ,a Rescue OOX-17/TN!
.target Homing Robot OOX-17/TN
.isQuestTurnedIn 351
step
.goto Tanaris,67.09,23.18
>> 护送|cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r前往热砂港
>> |cRXP_WARN_3只46-47级的|r|cRXP_ENEMY_蝎子|r|cRXP_WARN_会在下座山处刷新|r
>> |cRXP_WARN_3只43-45级的|r|cRXP_ENEMY_废土小怪|r|cRXP_WARN_会在清泉平原周围刷新. 优先击杀|r|cRXP_ENEMY_废土暴徒|r|cRXP_WARN_. 他会在你血量低于20%时使用斩杀|r
.complete 648,1 
.target Homing Robot OOX-17/TN
.unitscan Wastewander Scofflaw
.isQuestTurnedIn 351
step
#sticky
#complete with EnterZF
.subzone 978 >> 现在你应该开始寻找前往祖尔法拉克的副本队伍
.dungeon ZF
step << Shaman
#completewith next
.hs >> 炉石或者星界传送回加基森
.subzoneskip 976
step << Shaman
.goto Tanaris,52.63,28.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戴格·迅斩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Dirge Quikcleave
step << !Shaman
#completewith next
.goto Tanaris,50.6,28.1
.subzone 976 >> 前往加基森
step
.goto Tanaris,50.21,27.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 10 ,t The Scrimshank Redemption
.accept 110 ,a Insect Part Analysis
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.90,27.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 110 ,t Insect Part Analysis
.accept 113 ,a Insect Part Analysis
.target Alchemist Pestlezugg
step
.goto Tanaris,50.20,27.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 113 ,t Insect Part Analysis
.accept 32 ,a Rise of the Silithid
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.413,28.752
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 ,a Troll Temper
.target Trenton Lighthammer
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r
.accept 2768 ,a Divino-matic Rod
.target Chief Engineer Bilgewhizzle
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 2865 ,a Scarab Shells
.target Tran'rek
.dungeon ZF
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >> 前往闪光平原
step
.goto Thousand Needles,78.143,77.120
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 2770 ,a Gahz'rilla
.target Wizzle Brassbolts
.dungeon ZF
step
#label EnterZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.zone 219 >> 进入祖尔法拉克
.dungeon ZF
step
#completewith Gahzrilla
>> 击杀|cRXP_ENEMY_巨魔|r. 拾取|cRXP_LOOT_巨魔调和剂|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
#completewith next
>> 击杀|cRXP_ENEMY_圣甲虫|r. 拾取|cRXP_LOOT_完整的圣甲虫壳|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
>> 击杀|cRXP_ENEMY_殉教者塞卡|r. 拾取|cRXP_LOOT_第一块摩沙鲁石板|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
.dungeon ZF
step
>> 击杀|cRXP_ENEMY_圣甲虫|r. 拾取|cRXP_LOOT_完整的圣甲虫壳|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
#completewith next
+爬上金字塔
>> 击杀|cRXP_ENEMY_沙怒刽子手|r. 拾取|cRXP_LOOT_刽子手的钥匙|r
>> |cRXP_WARN_任何队伍成员都能拾取|r|cRXP_LOOT_钥匙|r
>> |cRXP_WARN_对任意|cRXP_PICK_巨魔牢笼|r|cRXP_WARN_使用|r|cRXP_LOOT_刽子手的钥匙|r, 释放|cRXP_FRIENDLY_布莱中士|r和他的随从|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2768
.mob Sandfury Executioner
.dungeon ZF
step
>> 保护|cRXP_FRIENDLY_布莱中士|r和他的随从, 然后跟他们一起下去
>> 击杀|cRXP_ENEMY_耐克鲁姆|r. 吃喝回满然后对话|cRXP_FRIENDLY_布莱中士|r和他战斗
>> 击杀|cRXP_ENEMY_布莱中士|r. 拾取|cRXP_LOOT_探水棒|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
.dungeon ZF
step
>> 击杀|cRXP_ENEMY_水占师维蕾萨|r. 拾取|cRXP_LOOT_深渊皇冠|r和|cRXP_LOOT_第二块摩沙鲁石板|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
.dungeon ZF
step
>> 击杀|cRXP_ENEMY_水占师维蕾萨|r. 拾取|cRXP_LOOT_深渊皇冠|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
.dungeon ZF
step
>> 击杀|cRXP_ENEMY_水占师维蕾萨|r. 拾取|cRXP_LOOT_第二块摩沙鲁石板|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
.dungeon ZF
step
#label Gahzrilla
>> |cRXP_WARN_对|cRXP_PICK_祖尔法拉克铁锣|r使用|T133056:0|t[祖尔法拉克之锤]来召唤|r|cRXP_ENEMY_加兹瑞拉|r
>> 击杀|cRXP_ENEMY_加兹瑞拉|r. 拾取|cRXP_LOOT_加兹瑞拉的鳞片|r
>> |cRXP_WARN_如果队伍中没人有|r|T133056:0|t[祖尔法拉克之锤]|cRXP_WARN_就无法召唤|r|cRXP_ENEMY_加兹瑞拉|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
.dungeon ZF
step
>> 击杀|cRXP_ENEMY_巨魔|r. 拾取|cRXP_LOOT_巨魔调和剂|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
.hs >> 炉石回加基森
.use 6948
.cooldown item,6948,>0
.dungeon ZF
.zoneskip Tanaris
step
.goto Tanaris,51.413,28.752
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 ,t Troll Temper
.target Trenton Lighthammer
.isQuestComplete 3042
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r
.turnin 2768 ,t Divino-matic Rod
.target Chief Engineer Bilgewhizzle
.isQuestComplete 2768
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 ,t Scarab Shells
.target Tran'rek
.isQuestComplete 2865
.dungeon ZF
step
.goto Tanaris,52.40,28.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25首席工程师膨啸|r
.accept 864 ,a back to Apothecary Zinge
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 654
step
#completewith next
.goto Tanaris,66.989,22.354,100 >> 前往热砂港
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 3527 ,t The Prophecy of Mosh'aru
.target Yeh'kinya
.isQuestComplete 3527
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.accept 4787 ,a The Ancient Egg
.target Yeh'kinya
.isQuestTurnedIn 3527
.dungeon ZF
step
#completewith next
.zone Thousand Needles >> 前往闪光平原
step
.goto Thousand Needles,78.143,77.120
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 2770 ,t Gahz'rilla
.target Wizzle Brassbolts
.isQuestComplete 2770
.dungeon ZF
step
.abandon 2770 ,ab Gahz'rilla
.dungeon ZF
step
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Brackenwall >> 飞往尘泥沼泽
.target Bulkrek Ragefist
step
.goto Dustwallow Marsh,37.10,33.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉兹辛比|r
.accept 1170 ,a The Brood of Onyxia
.target Draz'Zilb
step
.goto Dustwallow Marsh,36.30,31.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫格穆洛克主宰|r
.turnin 1170 ,t The Brood of Onyxia
.accept 1171 ,a The Brood of Onyxia
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.10,33.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1171 ,t The Brood of Onyxia
.accept 1172 ,a The Brood of Onyxia
.target Draz'Zilb
step
#completewith next
.goto Dustwallow Marsh,32.28,65.54,30,0
.subzone 498 >> 向南前往鲜血沼泽墓穴
step
.goto Dustwallow Marsh,31.10,66.10
>> 进入洞穴, 然后点击石头上的|cRXP_PICK_发霉的卷轴|r
>> |cRXP_WARN_小心, 此区域为超级刷新区域|r
.turnin 625 ,t Cortello's Riddle
.accept 626 ,a Cortello's Riddle
.isOnQuest 625
.group
step
.goto Dustwallow Marsh,48.50,75.30,0
.goto Dustwallow Marsh,55.9,81.9,0
.goto Dustwallow Marsh,53.6,72.5
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_奥妮克希亚的蛋|r来摧毁它们
.complete 1172,1 
step
.goto Dustwallow Marsh,46.021,57.096
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔贝萨|r
.turnin 2846 ,t Tiara of the Deep
.target Tabetha
.isQuestComplete 2991
.dungeon ZF
step
#completewith next
.goto Dustwallow Marsh,36.1,30.7,30,0
.subzone 496 >> 向北前往蕨墙村
step
.goto Dustwallow Marsh,37.15,33.08
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1172 ,t The Brood of Onyxia
.target Draz'Zilb
step
#completewith next
.goto Dustwallow Marsh,36.30,31.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫格穆洛克主宰|r
>> |cRXP_WARN_接受此任务会使|r|cRXP_ENEMY_莫格穆洛克主宰|r|cRXP_WARN_变为敌对目标. 他的攻击非常高. 你应该尽量风筝他. 做好准备|r
.turnin 1172 ,t The Brood of Onyxia
.accept 1173 ,a Challenge Overlord Mok'Morokk
.unitscan Overlord Mok'Morokk
.group
step
.goto Dustwallow Marsh,36.30,31.50
>> 通过将他的血量降低到30%左右来击败|cRXP_ENEMY_莫格穆洛克主宰|r
>> |cRXP_WARN_他攻击非常高, 你应该尽量风筝他|r
.complete 1173,1 
.unitscan Overlord Mok'Morokk
.group 3
step
.goto Dustwallow Marsh,36.30,31.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫格穆洛克主宰|r
>> |cRXP_WARN_不要接受此任务的后续.|r|cRXP_FRIENDLY_莫格穆洛克主宰|r|cRXP_WARN_会变为敌对目标并且能杀死你|r
.turnin 1172 ,t The Brood of Onyxia
.unitscan Overlord Mok'Morokk
.solo
step
.goto Dustwallow Marsh,37.10,33.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1173 ,t Challenge Overlord Mok'Morokk
.target Draz'Zilb
.isQuestComplete 1173
.group
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙尔迪|r
.fly Thunder Bluff>> 飞往雷霆崖
.target Shardi
.isQuestComplete 1205
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
.isQuestComplete 1205
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙尔迪|r
.fly Thunder Bluff>> 飞往雷霆崖
.target Shardi
.zoneskip Thunder Bluff
.isOnQuest 2280
.dungeon ULDA
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
.isOnQuest 2280
.dungeon ULDA
step
.goto Thunder Bluff,34.42,46.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贤者图希克|r
.turnin 2280 ,t The Platinum Discs
.accept 2440 ,a The Platinum Discs
.target Sage Truthseeker
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,46.61,33.17
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝娜·冬蹄|r
.turnin 2440 ,t The Platinum Discs
.accept 2965 ,a Portents of Uldum
.target Bena Winterhoof
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,75.67,31.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳拉·蛮鬃|r
.turnin 2965 ,t Portents of Uldum

.target Nara Wildmane
.isQuestTurnedIn 2278
.dungeon ULDA

step
.goto Thunder Bluff,61.50,80.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1205 ,t Deadmire
.target Melor Stonehoof
.isQuestComplete 1205
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14304 >> 学习职业技能
.target Urek Thunderhorn
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14321 >> 学习职业技能
.target Urek Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24562 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 11578 >> 学习职业技能
.target Ker Ragetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 20661 >> 学习职业技能
.target Ker Ragetotem
.xp <48,1
.zoneskip Thunder Bluff,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9823 >> 学习职业技能
.target Turak Runetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22828 >> 学习职业技能
.target Turak Runetotem
.xp <48,1
.zoneskip Thunder Bluff,1
step << !Mage
.goto Thunder Bluff,47.00,49.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Tal
.zoneskip Thunder Bluff,1\
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙尔迪|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Shardi
.zoneskip Dustwallow Marsh,1
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Thunder Bluff,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10197 >> 学习职业技能
.target Pephredo
.xp <46,1
.xp >48,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10215 >> 学习职业技能
.target Pephredo
.xp <48,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10945 >> 学习职业技能
.target Ur'kyo
.xp <46,1
.xp >48,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10899 >> 学习职业技能
.target Ur'kyo
.xp <48,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10586 >> 学习职业技能
.target Kardris Dreamseeker
.xp <46,1
.xp >48,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10431 >> 学习职业技能
.target Kardris Dreamseeker
.xp <48,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14304 >> 学习职业技能
.target Ormak Grimshot
.xp <46,1
.xp >48,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14321 >> 学习职业技能
.target Ormak Grimshot
.xp <48,1
step << Hunter
.goto Orgrimmar,66.33,14.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
.train 24562 >> 学习宠物技能
.target Xao'tsu
.xp <48,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11578 >> 学习职业技能
.target Grezz Ragefist
.xp <46,1
.xp >48,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 20661 >> 学习职业技能
.target Grezz Ragefist
.xp <48,1
step << Orc !Warlock
.goto Orgrimmar,69.40,13.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔达|r和|cRXP_FRIENDLY_奥古纳罗|r
.train 825 >> 学习|T136103:0|t[骑术：狼]
.vendor >> |cRXP_BUY_购买|r|T132224:0|t[|cFF0070FF狼|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11293 >> 学习职业技能
.target Ormok
.xp <46,1
.xp >48,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11299 >> 学习职业技能
.target Ormok
.xp <48,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11699 >> 学习职业技能
.target Mirket
.xp <46,1
.xp >48,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11712 >> 学习职业技能
.target Mirket
.xp <48,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 升级你的宠物技能
.target Kurgul
step
.goto Orgrimmar,56.40,46.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 32 ,t Rise of the Silithid
.target Zilzibin Drumlore
step
.goto Orgrimmar,59.40,36.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德兰·杜佛斯|r
.accept 649 ,a Ripple Recovery
.target Dran Droffers
step
.goto Orgrimmar,59.50,36.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔顿·杜佛斯|r
.turnin 649 ,t Ripple Recovery
.accept 650 ,a Ripple Recovery
.target Malton Droffers
step
.goto Orgrimmar,55.52,34.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰斯雷蒙|r
.accept 4300 ,a Bone-Bladed Weapons
.target Jes'rimon
step << Troll
#completewith next
.subzone 367 >> 前往森金村
step << Troll
.goto Durotar,55.28,75.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔提|r和|cRXP_FRIENDLY_祖尼尔|r
.train 10861 >> 学习|T136103:0|t[骑术：迅猛龙]
.vendor >> |cRXP_BUY_购买|r|T132253:0|t[|cFF0070FF迅猛龙|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << !Mage
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Tirisfal Glades >> 乘坐飞艇前往提瑞斯法林地
.zoneskip Tirisfal Glades
step << Mage
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
step
.abandon 2846 ,ab Tiara of the Deep
.isOnQuest 2846
.dungeon ZF
step
.abandon 3527 ,ab Prophecy of Mosh'aru
.isOnQuest 3527
.dungeon ZF
step
.abandon 2768 ,ab Divino-matic Rod
.isOnQuest 2768
.dungeon ZF
step
.abandon 3042 ,ab Troll Temper
.isOnQuest 3042
.dungeon ZF
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 49-50 辛特兰
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#next 50-51 菲拉斯
step << Mage
.goto Undercity,82.79,15.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >> 购买至少4个|cRXP_BUY_传送符文|r
.collect 17031,4 
.target Hannah Akeley
step
.goto Undercity,73.20,32.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰·蛇绕|r
.accept 2995 ,a Lines of Communication
.target Oran Snakewrithe
step
.goto Undercity,50.00,68.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师金格|r
.turnin 864 ,t back to Apothecary Zinge
.target Apothecary Zinge
.isOnQuest 864
step
.goto Undercity,53.77,54.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 728 ,t To the Undercity for Yagyin's Digest
.target Keeper Bel'dugur
.isOnQuest 728
.dungeon ULDA
step
.goto Undercity,62.31,48.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_派翠克·加勒特|r
.turnin 2342 ,t Reclaimed Treasures
.target Patrick
.dungeon ULDA
.isQuestComplete 2342
step << Undead !Warlock
#completewith next
.subzone 159 >>前往布瑞尔
step << Undead !Warlock
.goto Tirisfal Glades,60.09,52.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔玛·瓦纳姆|r和|cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >> 学习|T136103:0|t[骑术：骸骨战马]
.vendor >> |cRXP_BUY_购买|r|T132264:0|t[|cFF0070FF骸骨战马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step
.abandon 2342 ,ab Reclaimed Treasures
.isOnQuest 2342
step
.goto Hillsbrad Foothills,61.53,19.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r
.accept 2934 ,a Undamaged Venom Sac
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,86.60,29.49,30,0
.goto The Hinterlands,9.7,55.8
.zone The Hinterlands >> 沿着敦霍尔德城堡东北方的山路前往辛特兰
step
#completewith AtalalExile
.goto The Hinterlands,35.9,63.9,40,0
.subzone 353 >> 向东南前往沙德拉洛
step
#completewith next
>> 击杀|cRXP_ENEMY_枯木巢穴守卫|r. 拾取|cRXP_LOOT_完好无损的毒囊|r
>> |cRXP_LOOT_完好无损的毒囊|r|cRXP_WARN_持续时间30分钟, 尽快提交此任务|r
.complete 2934,1 
.mob Witherbark Broodguard
step
.goto The Hinterlands,33.751,75.210
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1429 ,t The Atal'ai Exile
.accept 1444 ,a back to Fel'Zerul
.accept 1446 ,a Jammal'an the Prophet
.target Atal'ai Exile
.dungeon ST
step
#label AtalalExile
.goto The Hinterlands,33.70,75.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1429 ,t The Atal'ai Exile
.accept 1444 ,a back to Fel'Zerul
.target Atal'ai Exile





step
.goto The Hinterlands,36.28,68.43,60,0
.goto The Hinterlands,34.16,67.00,60,0
.goto The Hinterlands,33.19,69.66,60,0
.goto The Hinterlands,30.66,69.71,60,0
.goto The Hinterlands,32.08,73.36,60,0
.goto The Hinterlands,35.48,74.42,60,0
.goto The Hinterlands,35.32,70.90,60,0
.goto The Hinterlands,35.79,64.35,60,0
.goto The Hinterlands,33.19,69.66
>> 击杀|cRXP_ENEMY_枯木巢穴守卫|r. 拾取|cRXP_LOOT_完好无损的毒囊|r
>> |cRXP_LOOT_完好无损的毒囊|r|cRXP_WARN_持续时间30分钟, 尽快提交此任务|r
.complete 2934,1 
.mob Witherbark Broodguard
step
#completewith next
.goto Hillsbrad Foothills,60.8,21.2,60,0
.subzone 272 >> 离开辛特兰, 回塔伦米尔
step
.goto Hillsbrad Foothills,61.53,19.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师林度恩|r
>> |cRXP_LOOT_完好无损的毒囊|r|cRXP_WARN_持续时间30分钟, 尽快提交此任务|r
.turnin 2934 ,t Undamaged Venom Sac
.target Apothecary Lydon










step
.goto The Hinterlands,26.70,48.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沃拉丁·追日者|r
.turnin 650 ,t Ripple Recovery
.accept 77 ,a A Sticky Situation
.target Gilveradin Sunchaser
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >> 前往恶齿村
step
#label ViHo
.goto The Hinterlands,72.50,66.20,50,0
.goto The Hinterlands,77.10,80.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁匠斯拉提|r
.accept 7839 ,a Vilebranch Hooligans
.target Smith Slagtree
step
.goto The Hinterlands,78.20,81.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔德|r
.accept 7840 ,a Lard Lost His Lunch
.target Lard
step
.goto The Hinterlands,80.40,81.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_垂钓者卡图姆|r
.accept 7815 ,a Snapjaws, Mon!
.accept 7816 ,a Gammerita, Mon!
.target Katoom the Angler
step
#completewith Gammerita
>> 沿着海岸拾取|cRXP_PICK_紫葡萄酒|r
.complete 580,1 
step
#completewith next
>> 击杀|cRXP_ENEMY_盐水钳嘴龟|r
.complete 7815,1 
.mob Saltwater Snapjaw
step
#label Gammerita
.goto The Hinterlands,81.87,49.36,70,0
.goto The Hinterlands,79.86,60.32,70,0
.goto The Hinterlands,78.54,67.85,70,0
.goto The Hinterlands,79.14,71.45,70,0
.goto The Hinterlands,77.47,75.83,70,0
.goto The Hinterlands,78.83,76.26
>> 击杀|cRXP_ENEMY_加莫里塔|r. 拾取|cRXP_LOOT_卡图姆的超级鱼饵|r
>> |cRXP_WARN_她沿着整个海岸巡逻. 风筝她到守卫那. 如果你无法做到, 就等她接近村子再打|r
.complete 7816,1 
.unitscan Gammerita
step
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击瀑布下的|cRXP_PICK_科泰罗的谜题|r
.goto The Hinterlands,80.80,46.80
.turnin 626 ,t Cortello's Riddle
.isOnQuest 626
.group
step
.goto The Hinterlands,84.40,41.30
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_拉尔德的午餐篮|r. 击杀刷新的3只|cRXP_ENEMY_邪枝绑架者|r. 拾取他们中的一个获取|cRXP_LOOT_拉尔德的午餐|r
>> |cRXP_WARN_所有这些小怪都会斩杀. 做这个任务一定要特别小心, 尽量不要让你的生命值接近20%|r
.complete 7840,1 
.unitscan Vilebranch Kidnapper
step
#completewith next
>> 沿着海岸拾取|cRXP_PICK_紫葡萄酒|r
.complete 580,1 
step
.loop 25,The Hinterlands,80.0,58.8,77.2,61.8,77.2,64.2,74.8,68.6,75.6,72.0,78.2,69.2,78.0,64.2,80.0,58.8
>> 击杀|cRXP_ENEMY_盐水钳嘴龟|r
.complete 7815,1 
.mob Saltwater Snapjaw
step
.goto The Hinterlands,79.86,60.32,80,0
.goto The Hinterlands,78.54,67.85,80,0
.goto The Hinterlands,79.14,71.45,80,0
.goto The Hinterlands,77.47,75.83,80,0
.goto The Hinterlands,78.83,76.26
>> 沿着海岸拾取|cRXP_PICK_紫葡萄酒|r
.complete 580,1 
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >> 前往恶齿村
step
#requires Bottles
.goto The Hinterlands,80.30,81.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_垂钓者卡图姆|r
.turnin 7815 ,t Snapjaws, Mon!
.turnin 7816 ,t Gammerita, Mon!
.target Katoom the Angler
step
.goto The Hinterlands,78.20,81.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔德|r
.turnin 7840 ,t Lard Lost His Lunch
.target Lard
step
.goto The Hinterlands,78.80,78.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_秘法师雅尔金|r
.accept 7844 ,a Cannibalistic Cousins
.target Mystic Yayo'jin
step
.goto The Hinterlands,79.40,79.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥索·莫吉克|r
.accept 7841 ,a Message to the Wildhammer
.target Otho Moji'ko
step
.goto The Hinterlands,79.10,79.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_猎人马克霍尔|r
.accept 7828 ,a Stalking the Stalkers
.accept 7829 ,a Hunt the Savages
.accept 7830 ,a Avenging the Fallen
.target Huntsman Markhor
step
#completewith Bucket
>> 击杀|cRXP_ENEMY_银鬃潜猎者|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith Bucket
.use 9618 >> 击杀|cRXP_ENEMY_野蛮的枭兽|r并在他们的尸体附近使用|T133841:0|t[枭兽灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith Bucket
>> 击杀|cRXP_ENEMY_邪枝割颅者|r和|cRXP_ENEMY_邪枝预卜者|r
>> |cRXP_ENEMY_邪枝割颅者|r|cRXP_WARN_会斩杀. 做这个任务一定要特别小心, 尽量不要让你的生命值接近20%|r
.complete 7844,1 
.complete 7844,2 
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
step
#label Bucket
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
.goto The Hinterlands,57.57,42.50,25,0
.goto The Hinterlands,53.18,39.20,25,0
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
>> 拾取|cRXP_PICK_斯拉提的工具|r (一个小篮子)
>> |cRXP_WARN_这个篮子会在5处地点刷新|r
.complete 7839,1 
step
#completewith next
.goto The Hinterlands,58.7,41.9,50,0
.subzone 351 >> 向西南方向前进, 然后进入洞穴, 骷髅石
step
.goto The Hinterlands,57.50,39.50,20,0
.goto The Hinterlands,56.5,43.9
>> 拾取|cRXP_PICK_部落补给箱|r获得|cRXP_LOOT_辛特兰蜜糖|r
.complete 77,1 
step
#completewith QuelDanilLodge
.use 9618 >> 击杀|cRXP_ENEMY_野蛮的枭兽|r并在他们的尸体附近使用|T133841:0|t[枭兽灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith next
>> 击杀|cRXP_ENEMY_银鬃嗥狼|r
.complete 7828,2 
.mob Silvermane Howler
step
#label QuelDanilLodge
#completewith next
.goto The Hinterlands,31.06,47.84,50,0
.subzone 350 >> 向西前往奎尔丹尼小屋
step
#completewith Escort
>> 击杀|cRXP_ENEMY_高原高等精灵|r
>> |cRXP_WARN_注意你的生命值!|r|cRXP_ENEMY_高原游侠|r|cRXP_WARN_会精灵之火, 让你更难逃跑|r << Rogue
.complete 7841,1 
.complete 7841,2 
.complete 7841,3 
.complete 7841,4 
.mob Highvale Scout
.mob Highvale Outrunner
.mob Highvale Ranger
.mob Highvale Marksman
step
#label Notes
.goto The Hinterlands,29.60,48.70
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击地上的|cRXP_PICK_高原精灵信件|r
.complete 2995,2 
step
.goto The Hinterlands,28.60,46.10
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击桌子上的|cRXP_PICK_高原精灵报告|r
.complete 2995,3 
step
#requires Notes
.goto The Hinterlands,32.00,46.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击地上的|cRXP_PICK_高原精灵记录|r
.complete 2995,1 
step
.goto The Hinterlands,30.73,46.97
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林吉|r
>> |cRXP_WARN_这将开启护送任务!|r
.accept 2742 ,a Rin'ji is Trapped!
.target Rin'ji
step
#label Escort
.goto The Hinterlands,34.98,56.92
>> 护送|cRXP_FRIENDLY_林吉|r
.complete 2742,1 
step
.loop 25,The Hinterlands,33.0,51.6,30.4,51.0,29.6,48.6,28.6,46.6,29.6,48.6,32.2,47.6,32.6,43.6,33.8,44.8,33.8,48.6,33.0,51.6
>> 完成击杀|cRXP_ENEMY_高原高等精灵|r
>> |cRXP_WARN_注意你的生命值;|r|cRXP_ENEMY_高原游侠|r|cRXP_WARN_会精灵之火, 让你更难逃跑|r << Rogue
.complete 7841,1 
.complete 7841,2 
.complete 7841,3 
.complete 7841,4 
.mob Highvale Scout
.mob Highvale Outrunner
.mob Highvale Ranger
.mob Highvale Marksman
step
#completewith Tragan
>> 击杀|cRXP_ENEMY_银鬃嗥狼|r
.complete 7828,2 
.mob Silvermane Howler
step
.goto The Hinterlands,26.61,48.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沃拉丁·追日者|r
.turnin 77 ,t A Sticky Situation
.target Gilveradin Sunchaser
step
.goto The Hinterlands,26.61,48.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基沃拉丁·追日者|r
.accept 81 ,a Ripple Delivery
.target Gilveradin Sunchaser
step
#label Tragan
.goto The Hinterlands,40.00,59.90
>> 游到水塘底部, 然后拾取|cRXP_PICK_蘑菇|r获取|cRXP_LOOT_紫色水生菇|r
.complete 2641,1 
step
.loop 25,The Hinterlands,51.0,41.6,51.4,47.8,51.2,57.2,50.6,63.6,49.6,59.8,45.6,58.8,43.2,61.8,39.2,63.2,36.8,58.6,39.4,55.8,38.8,50.8,39.4,46.2,43.4,46.4,38.8,50.8
>> 完成击杀|cRXP_ENEMY_银鬃嗥狼|r
.complete 7828,2 
.mob Silvermane Howler
step
.loop 25,The Hinterlands,45.6,63.4,44.4,67.0,46.4,68.8,49.6,65.2,50.6,65.8,50.6,62.4,45.6,63.4
>> 在神庙底部周围完成击杀|cRXP_ENEMY_邪枝割颅者|r和|cRXP_ENEMY_邪枝预卜者|r
>> |cRXP_ENEMY_邪枝割颅者|r|cRXP_WARN_会斩杀. 做这个任务一定要特别小心, 尽量不要让你的生命值接近20%|r
>> |cRXP_WARN_不要到顶部去! 上面有高等级精英|r
.complete 7844,1 
.complete 7844,2 
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
step
#completewith SkylordPlume
>> 击杀|cRXP_ENEMY_银鬃潜猎者|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith next
.use 9618 >> 击杀|cRXP_ENEMY_野蛮的枭兽|r并在他们的尸体附近使用|T133841:0|t[枭兽灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 7829,1 
.mob Savage Owlbeast
step
#label SkylordPlume
.loop 25,The Hinterlands,53.0,56.6,54.0,54.2,56.0,51.6,58.6,53.0,61.0,54.8,64.2,56.6,63.8,53.6,64.6,48.6,66.6,42.6,61.4,42.4,60.6,48.2,59.8,52.2,57.0,50.2,54.6,47.0,51.0,44.0,50.6,53.0,56.6
>> 寻找并击杀一只|cRXP_ENEMY_翱翔的锋喙狮鹫兽|r. 拾取它的|cRXP_LOOT_狮鹫长羽|r
.complete 7830,1 
.unitscan Razorbeak Skylord
step
#completewith Stalkers
.use 9618 >> 击杀|cRXP_ENEMY_野蛮的枭兽|r并在他们的尸体附近使用|T133841:0|t[枭兽灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 7829,1 
.mob Savage Owlbeast
step
#label Stalkers
.loop 25,The Hinterlands,70.6,63.4,70.6,57.4,73.2,52.6,69.0,50.6,69.0,45.6,66.6,48.0,63.2,47.8,61.6,41.8,58.6,46.8,56.2,46.8,54.4,44.0,53.6,49.2,53.2,55.6,55.6,51.4,58.6,53.2,60.8,55.6,64.0,54.6,66.6,57.2,68.4,62.6,70.6,63.4
>> 完成击杀|cRXP_ENEMY_银鬃潜猎者|r
.complete 7828,1 
.mob Silvermane Stalker
step
.loop 25,The Hinterlands,70.6,63.4,70.6,57.4,73.2,52.6,69.0,50.6,69.0,45.6,66.6,48.0,63.2,47.8,61.6,41.8,58.6,46.8,56.2,46.8,54.4,44.0,53.6,49.2,53.2,55.6,55.6,51.4,58.6,53.2,60.8,55.6,64.0,54.6,66.6,57.2,68.4,62.6,70.6,63.4
.use 9618 >> 击杀|cRXP_ENEMY_野蛮的枭兽|r并在他们的尸体附近使用|T133841:0|t[枭兽灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 7829,1 
.mob Savage Owlbeast
step

.goto The Hinterlands,49.30,37.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 485 ,a Find OOX-09/HL!
.turnin 485 ,t Find OOX-09/HL!
.target Homing Robot OOX-09/HL
.itemcount 8704,1 
.solo
step
.goto The Hinterlands,49.35,37.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r以开始护送任务
>> |cRXP_WARN_此护送任务可能会很危险. 如果你置身于危险中了, 不要犹豫直接跑路|r
.accept 836 ,a Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
.isQuestTurnedIn 485
.solo

step
.goto The Hinterlands,79.47,61.21
>> 护送|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r到海岸边
>> |cRXP_WARN_此护送任务可能会很危险. 如果你置身于危险中了, 不要犹豫直接跑路|r
>> |cRXP_WARN_3只46级的|r|cRXP_ENEMY_狂暴的枭兽|r|cRXP_WARN_会刷新在骷髅石南边的路上. 他们会在低血量时狂暴, 所以尽量一只只杀|r
>> |cRXP_WARN_3只47级的|r|cRXP_ENEMY_邪枝伏击者|r|cRXP_WARN_会刷新在辛萨罗北部的树林里. 他们会在你低于20%血量时使用斩杀. 如果可以就用长CD技能应对, 并让小鸡坦住1到2只怪直到它半血左右|r
.complete 836,1 
.target Homing Robot OOX-09/HL
.mob Marauding Owlbeast
.unitscan Vilebranch Ambusher
.isQuestTurnedIn 485
.solo
step
.goto The Hinterlands,86.30,59.00
>> |TInterface/GossipFrame/HealerGossipIcon:0|t游到最东边的小岛上, 然后点击|cRXP_PICK_林吉的秘密|r
.turnin 2742 ,t Rin'ji is Trapped!
.accept 2782 ,a Rin'ji's Secret
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >> 前往恶齿村
step
.goto The Hinterlands,77.20,80.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁匠斯拉提|r
.turnin 7839 ,t Vilebranch Hooligans
.target Smith Slagtree
step
.goto The Hinterlands,78.80,78.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7844 ,t Cannibalistic Cousins
.target Mystic Yayo'jin
step
.goto The Hinterlands,78.80,78.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_秘法师雅尔金|r
.accept 7862 ,a Job Opening: Guard Captain of Revantusk Village
.target Mystic Yayo'jin
.group
step
.goto The Hinterlands,79.08,78.99
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击棚屋旁的|cRXP_PICK_作战公告！|r通缉告示
.accept 7861 ,a Wanted: Vile Priestess Hexx and Her Minions
.group
step
.goto The Hinterlands,79.30,79.10
>> |cRXP_WARN_此任务的后续 ("又一个给蛮锤部族的警告")将会把你标记为PVP状态! 完成此任务需自担风险. 你已经被告知风险了!|r
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥索·莫吉克|r
.turnin 7841 ,t Message to the Wildhammer
.target Otho'Mojiko

step
.goto The Hinterlands,79.30,79.10
>> |cRXP_WARN_此任务 ("又一个给蛮锤部族的警告")将会把你标记为PVP状态! 完成此任务需自担风险, 或者手动跳过这步. 你已经被告知风险了!|r
.accept 7842 ,a Another Message to the Wildhammer
.turnin 7842 ,t Another Message to the Wildhammer
.target Otho Moji'ko

step
.goto The Hinterlands,79.10,79.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_猎人马克霍尔|r
.turnin 7828 ,t Stalking the Stalkers
.turnin 7829 ,t Hunt the Savages
.turnin 7830 ,t Avenging the Fallen
.target Huntsman Markhor
step
#completewith next
.goto The Hinterlands,78,14,81.38,25,0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔德|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Lard
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_猎人马克霍尔|r和|cRXP_FRIENDLY_断齿族长|r
.accept 7849 ,a Separation Anxiety
.goto The Hinterlands,79.16,79.53
.accept 7845 ,a Kidnapped Elder Torntusk!
.accept 7850 ,a Dark Vessels
.goto The Hinterlands,78.20,81.17
.target Huntsman Markhor
.target Primal Torntusk
.group
step
#completewith Vilebranchs
>> 拾取地上的|cRXP_LOOT_腐化之血|r
>> |cRXP_WARN_无需担心完成此步; 你在后续的步骤中仍有机会完成它|r
.complete 7850,1 
.group 5
step
#completewith ReKey
>> 击杀|cRXP_ENEMY_邪枝巨魔|r
>> |cRXP_WARN_无需担心完成此步; 你在后续的步骤中仍有机会完成它|r
.complete 7862,4 
.complete 7862,1 
.complete 7862,3 
.complete 7862,2 
.mob Vilebranch Soul Eater
.mob Vilebranch Berserker
.mob Vilebranch Blood Drinker
.mob Vilebranch Shadow Hunter
.group 5
step
.goto The Hinterlands,62.1,75.3
>> 在深坑中央拾取|cRXP_PICK_白骨堆|r获取|cRXP_LOOT_猎户莫克霍尔的骨头|r
.complete 7849,2 
.group 5
step
.goto The Hinterlands,58.6,64.9
>> 拾取|cRXP_PICK_颅骨堆|r获取|cRXP_LOOT_猎户莫克霍尔的颅骨|r
.complete 7849,1 
.group 5
step
.goto The Hinterlands,59.6,77.8
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_断齿长者|r
.turnin 7845 ,t Kidnapped Elder Torntusk!
.accept 7846 ,a Recover the Key!
.target Elder Torntusk
.group
step
.goto The Hinterlands,59.3,78.2
>> 击杀|cRXP_ENEMY_邪恶祭司海克斯|r
>> |cRXP_WARN_特别小心她的变羊技能, 她有可能会一直羊你|r
.complete 7861,1 
.unitscan Vile Priestess Hexx
.group 5
step
#completewith Hitahya
>> |cRXP_WARN_你能通过跳台子到达顶层并避开大量战斗|r
.link https://www.youtube.com/watch?v=UPiNtMem9tM >> 点击此处获取视频演示
.group
step
#completewith next
>> 拾取|cRXP_LOOT_远古之卵|r
.complete 4787,1 
step
#label Hitahya
.goto The Hinterlands,57.8,86.8
>> 击杀|cRXP_ENEMY_看守者希坦亚|r. 拾取她的|cRXP_LOOT_钥匙|r
.complete 7846,1 
.unitscan Hitah'ya the Keeper
.group 5
step
.goto The Hinterlands,57.60,86.79
>> 拾取|cRXP_LOOT_远古之卵|r
.complete 4787,1 
step
.goto The Hinterlands,59.6,77.9
>> 击杀|cRXP_ENEMY_邪枝精英卫兵|r
.complete 7861,2 
.mob Vilebranch Aman'zasi Guard
.group 5
step
#label ReKey
.goto The Hinterlands,59.6,77.9
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_断齿长者|r
.turnin 7846 ,t Recover the Key!
.accept 7847 ,a Back to Primal Torntusk
.target Elder Torntusk
.group
step
#label Vilebranchs
.goto The Hinterlands,60.6,65.4
>> 完成击杀|cRXP_ENEMY_邪枝巨魔|r
>> |cRXP_ENEMY_邪枝噬魂者|r|cRXP_WARN_在第二层.|r|cRXP_ENEMY_狂战士|r|cRXP_WARN_在第三层.|r|cRXP_ENEMY_饮血者|r|cRXP_WARN_和|r|cRXP_ENEMY_暗影猎手|r|cRXP_WARN_在第四和第五层|r
.complete 7862,4 
.complete 7862,1 
.complete 7862,3 
.complete 7862,2 
.mob Vilebranch Soul Eater
.mob Vilebranch Berserker
.mob Vilebranch Blood Drinker
.mob Vilebranch Shadow Hunter
.group 5
step
.goto The Hinterlands,67.9,73.4
>> 完成拾取地上的|cRXP_LOOT_腐化之血|r
>> |cRXP_WARN_无需担心完成此步; 你在后续的步骤中仍有机会完成它|r
.complete 7850,1 
.group 5
step

.goto The Hinterlands,49.30,37.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 485 ,a Find OOX-09/HL!
.turnin 485 ,t Find OOX-09/HL!
.target Homing Robot OOX-09/HL
.itemcount 8704,1 
.group
step
.goto The Hinterlands,49.35,37.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r以开始护送任务
>> |cRXP_WARN_此护送任务可能会很危险. 如果你置身于危险中了, 不要犹豫直接跑路|r
.accept 836 ,a Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
.isQuestTurnedIn 485
.group
step
.goto The Hinterlands,79.47,61.21
>> 护送|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r到海岸边
>> |cRXP_WARN_此护送任务可能会很危险. 如果你置身于危险中了, 不要犹豫直接跑路|r
>> |cRXP_WARN_3只级的46|r|cRXP_ENEMY_狂暴的枭兽|r|cRXP_WARN_会刷新在骷髅石南边的路上. 他们会在低血量时狂暴, 所以尽量一只只杀|r
>> |cRXP_WARN_3只级的47|r|cRXP_ENEMY_邪枝伏击者|r|cRXP_WARN_会刷新在辛萨罗北部的树林里. 他们会在你低于20%血量时使用斩杀. 如果可以就用长CD技能应对, 并让小鸡坦住1到2只怪直到它半血左右|r
.complete 836,1 
.target Homing Robot OOX-09/HL
.mob Marauding Owlbeast
.unitscan Vilebranch Ambusher
.isQuestTurnedIn 485
.group
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >> 前往恶齿村
step
.goto The Hinterlands,78.80,78.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7862 ,t Job Opening: Guard Captain of Revantusk Village
.turnin 7861 ,t Wanted: Vile Priestess Hexx and Her Minions
.target Mystic Yayo'jin
.isQuestComplete 7862
.isQuestComplete 7861
.group
step
.goto The Hinterlands,78.80,78.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7861 ,t Wanted: Vile Priestess Hexx and Her Minions
.target Mystic Yayo'jin
.isQuestComplete 7861
.group
step
.goto The Hinterlands,78.80,78.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7862 ,t Job Opening: Guard Captain of Revantusk Village
.target Mystic Yayo'jin
.isQuestComplete 7862
.group
step
.goto The Hinterlands,79.16,79.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_猎人马克霍尔|r
.turnin 7849 ,t Separation Anxiety
.target Huntsman Markhor
.isQuestComplete 7849
.group
step
#completewith next
.goto The Hinterlands,78,14,81.38,25,0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔德|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Lard
.group
step
.goto The Hinterlands,78.20,81.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_断齿族长|r
.turnin 7845 ,t Kidnapped Elder Torntusk!
.turnin 7850 ,t Dark Vessels
.turnin 7847 ,t Back to Primal Torntusk
.target Primal Torntusk
.isOnQuest 7845
.isQuestComplete 7850
.isOnQuest 7847
.group
step
.goto The Hinterlands,78.20,81.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_断齿族长|r
.turnin 7845 ,t Kidnapped Elder Torntusk!
.target Primal Torntusk
.isOnQuest 7845
.group
step
.goto The Hinterlands,78.20,81.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_断齿族长|r
.turnin 7850 ,t Dark Vessels
.target Primal Torntusk
.isQuestComplete 7850
.group
step
.goto The Hinterlands,78.20,81.18
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_断齿族长|r
.turnin 7847 ,t Back to Primal Torntusk
.target Primal Torntusk
.isOnQuest 7847
.group
step
#completewith next
.goto The Hinterlands,81.70,81.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卡斯|r
.fly Hammerfall >> 飞往落锤镇
.target Gorkas
.skill firstaid,<260,1
step
.goto Arathi Highlands,73.41,36.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里高利·维克托医生|r
.train 18629 >> 学习符文绷带
.target Doctor Gregory Victor
.skill firstaid,<260,1
step << !Mage
.goto Arathi Highlands,73.10,32.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤尔达|r
.fly Undercity >> 飞往幽暗城
.target Urda
.zoneskip Arathi Highlands,1
step << !Mage
.goto The Hinterlands,81.70,81.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格卡斯|r
.fly Undercity >> 飞往幽暗城
.target Gorkas
.zoneskip The Hinterlands
step << Mage
#completewith next
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >> 购买至少4个|cRXP_BUY_传送符文|r
.collect 17031,4 
.target Hannah Akeley
step
.goto Undercity,73.50,32.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰·蛇绕|r
.turnin 2995 ,t Lines of Communication
.turnin 2782 ,t Rin'ji's Secret
.accept 8273 ,a Oran's Gratitude
.turnin 8273 ,t Oran's Gratitude
.target Oran Snakewrithe
step
.goto Undercity,48.50,71.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师科雷|r
.accept 3568 ,a Seeping Corruption
.target Chemist Cuely
step
.abandon 7862 ,ab Job Opening: Guard Captain of Revantusk Village
.isOnQuest 7862
step
.abandon 7861 ,ab Wanted: Vile Priestess Hexx and Her Minions
.isOnQuest 7861
step
.abandon 7849 ,ab Separation Anxiety
.isOnQuest 7849
step
.abandon 7845 ,ab Kidnapped Elder Torntusk!
.isOnQuest 7845
step
.abandon 7850 ,ab Dark Vessels
.isOnQuest 7850
step
.abandon 7846 ,ab Recover the Key!
.isOnQuest 7846
step
.hs >> 炉石回塔纳利斯
.use 6948
step
#completewith next
.goto Tanaris,52.63,28.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戴格·迅斩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Dirge Quikcleave
step
.goto Tanaris,51.10,26.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普琳科|r
.turnin 2641 ,t Sprinkle's Secret Ingredient
.accept 2661 ,a Delivery for Marin
.target Sprinkle
step
.goto Tanaris,51.80,28.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马林·诺格弗格|r
.turnin 2661 ,t Delivery for Marin
.accept 2662 ,a Noggenfogger Elixir
.turnin 2662 ,t Noggenfogger Elixir
.collect 8529,60 >> |cRXP_WARN_备上1组|r|T134863:0|t[诺格弗格药剂]|cRXP_WARN_是个很好的选择. 购买额外2组并存入银行|r
.target Marin Noggenfogger
step
.goto Tanaris,66.989,22.354
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 4787 ,t The Ancient Egg
.target Yeh'kinya
.isQuestComplete 4787
.dungeon ZF
step
#sticky
#completewith EnterMaraudon
.subzone 2100 >> 现在你应该开始寻找前往玛拉顿的副本队伍
.dungeon MARA
step
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Shadowprey Village >> 飞往葬影村
.target Bulkrek Ragefist
.zoneskip Feralas
.dungeon MARA
step
.goto Desolace,23.22,70.33
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在棚屋顶部对话|cRXP_FRIENDLY_瓦克·战痕|r
.accept 7029 ,a Vyletongue Corruption
.target Vark Battlescar
.dungeon MARA
step
.goto Desolace,26.87,77.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟琳德拉|r
.accept 7064 ,a Corruption of Earth and Seed
.target Selendra
.dungeon MARA
step
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_半人马贱民|r
>> |cRXP_WARN_|cRXP_FRIENDLY_半人马贱民|r在南凄凉之地小范围巡逻|r
.accept 7067 ,a The Pariah's Instructions
.target Centaur Pariah
.dungeon MARA
step
.goto Desolace,62.194,39.624
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维洛|r
.accept 7028 ,a Twisted Evils
.target Willow
.dungeon MARA
step
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >> 前往玛拉顿
.dungeon MARA
step
#completewith EnterMaraudon
>> 击杀玛拉顿内所有的|cRXP_ENEMY_怪物|r. 拾取|cRXP_LOOT_瑟莱德丝水晶雕像|r
>> |cRXP_WARN_此步在副本内外都能完成. 不要尝试现在就完成|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
>> 击杀|cRXP_ENEMY_无名预言者|r. 拾取|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>> |cRXP_WARN_此步在副本外完成. |cRXP_ENEMY_无名预言者|r有可能会巡逻|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
.dungeon MARA
step
#completewith next
>> 击杀|cRXP_ENEMY_裂影击碎者|r和|cRXP_ENEMY_裂影巡游者|r. 拾取|cRXP_LOOT_暗影残片|r
>> |cRXP_WARN_他们只会出现在副本外的紫色区域|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>> |cRXP_WARN_对|r|cRXP_FRIENDLY_格尔克之灵|r|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>> 击杀|cRXP_ENEMY_格尔克之灵|r. 拾取|T134104:0|t[|cRXP_LOOT_第二可汗的宝石|r]
>> |cRXP_WARN_此步在副本外完成|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>> 击杀|cRXP_ENEMY_裂影击碎者|r和|cRXP_ENEMY_裂影巡游者|r. 拾取|cRXP_LOOT_暗影残片|r
>> |cRXP_WARN_他们只会出现在副本外的紫色区域|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.497,57.721
>> |cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]|cRXP_WARN_对|r|cRXP_FRIENDLY_考尔克之灵|r
>> 击杀|cRXP_ENEMY_考尔克之灵|r. 拾取|T134129:0|t[|cRXP_LOOT_第一可汗的宝石|r]
>> |cRXP_WARN_此步在副本外完成|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.77,58.12
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_半人马贱民|r
.accept 7044 ,a Legends of Maraudon
.target Cavindra
.dungeon MARA
step
.goto 1414,38.928,58.354
>> |cRXP_WARN_在橙色水池里使用|r|T134865:0|t[天蓝水瓶]
.complete 7029,2 
.use 17693 
.isOnQuest 7029
.dungeon MARA
step
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>> |cRXP_WARN_对|r|cRXP_FRIENDLY_玛格拉之灵|r|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>> 击杀|cRXP_ENEMY_玛格拉之灵|r. 拾取|T134135:0|t[|cRXP_LOOT_第三可汗的宝石|r]
>> |cRXP_WARN_此步在副本外完成|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
.dungeon MARA
step
#label EnterMaraudon
.goto 1414,39.266,58.205
.zone 280 >> 从橙门进入玛拉顿
.dungeon MARA
step
#completewith CrystalCarving
>> 击杀玛拉顿内所有的|cRXP_ENEMY_怪物|r. 拾取|cRXP_LOOT_瑟莱德丝水晶雕像|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
#completewith next
>> |cRXP_WARN_对橙门内的小花/植物使用|r|T134804:0|t[装满水的天蓝水瓶]
>> 击杀召唤出的|cRXP_ENEMY_诺克赛恩幼体|r
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>> |cRXP_WARN_对|r|cRXP_FRIENDLY_温格之灵|r|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>> 击杀|cRXP_ENEMY_温格之灵|r. 拾取|T134116:0|t[|cRXP_LOOT_第五可汗的宝石|r]
>> |cRXP_ENEMY_温格之灵|r|cRXP_WARN_在玛拉顿橙门内巡逻(副本内)|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
.dungeon MARA
step
>> |cRXP_WARN_对橙门内的小花/植物|r|cRXP_WARN_使用|r|T134804:0|t[装满水的天蓝水瓶]
>> 击杀召唤出的|cRXP_ENEMY_诺克赛恩幼体|r
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>> 击杀|cRXP_ENEMY_诺克赛恩|r. 拾取|cRXP_LOOT_塞雷布拉斯魔棒|r
>> 击杀|cRXP_ENEMY_维利塔恩领主|r. 拾取|cRXP_LOOT_塞雷布拉斯钻石|r
>> |cRXP_ENEMY_诺克赛恩|r|cRXP_WARN_在橙区, |cRXP_ENEMY_维利塔恩领主|r在紫区|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
.dungeon MARA
step
>> |cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]|cRXP_WARN_对|r|cRXP_FRIENDLY_玛劳杜斯之灵|r
>> 击杀|cRXP_ENEMY_玛劳杜斯之灵|r. 拾取|T134132:0|t[|cRXP_LOOT_第四可汗的宝石|r]
>> |cRXP_ENEMY_玛劳杜斯之灵|r|cRXP_WARN_在玛拉顿紫门内巡逻(副本内)|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
.dungeon MARA
step
>> |cRXP_WARN_右键使用任意|r|T134129:0|t|T134104:0|t|T134135:0|t|T134132:0|t|T134116:0|t[|cRXP_LOOT_可汗的宝石|r]|cRXP_WARN_生成|r|T133277:0|t[|cRXP_LOOT_联合坠饰|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
.dungeon MARA
step
>> 击杀|cRXP_ENEMY_被诅咒的塞雷布拉斯|r 然后对话|cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.turnin 7044 ,t Legends of Maraudon
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
.dungeon MARA
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.accept 7046 ,a The Scepter of Celebras
.timer 14,塞雷布拉斯的咒语剧情
.target Celebras the Redeemed
.isQuestTurnedIn 7044
.dungeon MARA
step
.cast 6477 >> 点击地上的|cRXP_PICK_塞雷布拉斯的咒语|r
.timer 34,塞雷布拉斯节杖剧情
.isQuestTurnedIn 7044
.dungeon MARA
step
>> |cRXP_WARN_等待剧情结束|r
.complete 7046,1 
.isQuestTurnedIn 7044
.dungeon MARA
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.turnin 7046 ,t The Scepter of Celebras
.isQuestTurnedIn 7044
.target Celebras the Redeemed
.dungeon MARA
step
>> 击杀|cRXP_ENEMY_瑟莱德丝公主|r
.complete 7064,1 
.mob Princess Theradras
.isOnQuest 7064
.dungeon MARA
step
#label CrystalCarving
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔塔的灵魂|r
.accept 7066 ,a Seed of Life
.target Zaetar's Spirit
.dungeon MARA
step
>> 击杀玛拉顿内所有的|cRXP_ENEMY_怪物|r. 拾取|cRXP_LOOT_瑟莱德丝水晶雕像|r
>> |cRXP_WARN_此步在副本内外都能完成|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
.zone Desolace >> 离开玛拉顿副本
step
.goto Desolace,26.87,77.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟琳德拉|r
.turnin 7064 ,t Corruption of Earth and Seed
.target Selendra
.isQuestComplete 7064
.dungeon MARA
step
.goto Desolace,23.22,70.33
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在棚屋顶部对话|cRXP_FRIENDLY_瓦克·战痕|r
.turnin 7029 ,t Vyletongue Corruption
.target Vark Battlescar
.isQuestComplete 7029
.dungeon MARA
step
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_半人马贱民|r
>> |cRXP_WARN_|cRXP_FRIENDLY_半人马贱民|r在南凄凉之地小范围巡逻|r
.turnin 7067 ,t The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
.dungeon MARA
step
.goto Desolace,62.194,39.624
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维洛|r
.turnin 7028 ,t Twisted Evils
.target Willow
.isQuestComplete 7028
.dungeon MARA
step
.hs >> 炉石回塔纳利斯
.use 6948
.dungeon MARA
step
#completewith next
.goto Tanaris,52.63,28.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戴格·迅斩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Dirge Quikcleave
.dungeon MARA
step
.goto Tanaris,51.60,25.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Feralas>> 飞往菲拉斯
.target Bulkrek Ragefist
.zoneskip Feralas
step
.abandon 7029 ,ab Vyletongue Corruption
.isOnQuest 7029
.dungeon MARA
step
.abandon 7064 ,ab Corruption of Earth and Seed
.isOnQuest 7064
.dungeon MARA
step
.abandon 7067 ,ab Pariah's Instructions
.isOnQuest 7067
.dungeon MARA
step
.abandon 7028 ,ab Twisted Evils
.isOnQuest 7028
.dungeon MARA
step
.abandon 7068 ,ab Shadowshard Fragments
.isOnQuest 7068
.dungeon MARA
step
.abandon 7044 ,ab Legends of Maraudon
.isOnQuest 7044
.dungeon MARA
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#name 50-51 菲拉斯
#next 51-52 荆棘谷/诅咒之地
step
.goto Feralas,76.06,43.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25布隆克|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Bronk
step
.goto Feralas,76.20,43.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔罗·刺蹄|r
.accept 3063 ,a Vengeance on the Northspring
.accept 3062 ,a Dark Heart
.target Talo Thornhoof
.group
step
.goto Feralas,76.20,43.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔罗·刺蹄|r
.accept 3063 ,a Vengeance on the Northspring
.target Talo Thornhoof
step
.goto Feralas,74.50,42.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杉多尔·迅蹄|r
.accept 7734 ,a Improved Quality
.target Jangdor Swiftstrider
step
.goto Feralas,74.50,43.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3123 ,t Testing the Vessel
.accept 3124 ,a Hippogryph Muisek
.accept 3128 ,a Natural Materials
.target Witch Doctor Uzer'i
step
#completewith next
.goto Feralas,58.0,53.1,50,0
.goto Feralas,54.2,68.6,0
.subzone 1106 >> 向西南前往乱羽高地
step
.loop 25,Feralas,55.6,60.6,55.4,64.2,53.8,66.8,54.6,68.6,54.0,71.6,54.2,72.6,55.6,75.2,57.0,74.8,56.0,72.4,55.0,70.6,56.2,66.0,56.8,65.6,57.4,62.6,55.6,60.6
.use 9619 >> 击杀|cRXP_ENEMY_乱羽角鹰兽|r. 拾取|cRXP_LOOT_碎片|r
>> 对它们的尸体使用|T133841:0|t[角鹰兽灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 3124,1 
.complete 3128,4 
.mob Frayfeather Stagwing
.mob Frayfeather Skystormer
.mob Frayfeather Hippogryph
.mob Frayfeather Patriarch
step
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >> 前往莫沙彻营地
step
.goto Feralas,74.42,43.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3124 ,t Hippogryph Muisek
.accept 3125 ,a Faerie Dragon Muisek
.target Witch Doctor Uzer'i
step
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95,50,0
.goto Feralas,66.57,47.74,50,0
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95
.use 9620 >> 击杀|cRXP_ENEMY_小精龙|r. 拾取|cRXP_LOOT_包壳矿石|r.
>> 对它们的尸体使用|T133841:0|t[精灵龙灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 3125,1 
.complete 3128,2 
.mob Sprite Darter
step
.goto Feralas,74.42,43.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3125 ,t Faerie Dragon Muisek
.accept 3126 ,a Treant Muisek
.target Witch Doctor Uzer'i
step
.goto Feralas,69.4,44.6,70,0
.goto Feralas,70.6,41.8,70,0
.goto Feralas,75.0,38.6,70,0
.goto Feralas,77.4,40.8,70,0
.goto Feralas,78.6,42.4,70,0
.goto Feralas,79.6,45.4,70,0
.goto Feralas,69.4,44.6
.line Feralas,55.8,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >> 击杀|cRXP_ENEMY_森林漫游者|r. 拾取|cRXP_LOOT_断裂的原木|r
>> 对它们的尸体使用|T133841:0|t[树人灵魂精华容器]
>> |cRXP_WARN_箭头会引导你到他们的巡逻路线, 同时也会标记在你的世界地图上. 此任务物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.collect 9590,1 
.collect 9593,1 
.unitscan Wandering Forest Walker
step
.goto Feralas,67.97,59.99,70,0
.goto Feralas,68.99,60.19,70,0
.goto Feralas,69.57,59.39,70,0
.goto Feralas,70.42,57.76,70,0
.goto Feralas,71.48,58.00,70,0
.goto Feralas,72.27,59.39,70,0
.goto Feralas,72.71,58.54,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,74.72,56.33,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,72.89,57.66,70,0
.goto Feralas,72.67,56.02,70,0
.goto Feralas,73.44,54.87,70,0
.goto Feralas,73.60,53.79,70,0
.goto Feralas,73.97,53.33,70,0
.goto Feralas,74.26,53.12,70,0
.goto Feralas,73.94,51.66,70,0
.goto Feralas,72.80,50.88,70,0
.line Feralas,55.8.,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >> 击杀|cRXP_ENEMY_森林漫游者|r. 拾取|cRXP_LOOT_断裂的原木|r
>> 对它们的尸体使用|T133841:0|t[树人灵魂精华容器]
>> |cRXP_WARN_箭头会引导你到他们的巡逻路线, 同时也会标记在你的世界地图上. 此任务物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.collect 9590,2 
.collect 9593,2 
.unitscan Wandering Forest Walker
step
.goto Feralas,58.6,52.0,70,0
.goto Feralas,60.0,48.8,70,0
.goto Feralas,57.8,48.0,70,0
.goto Feralas,55.6,47.0,70,0
.goto Feralas,53.2,46.6,70,0
.goto Feralas,51.6,49.0,70,0
.goto Feralas,58.6,52.0
.line Feralas,55.8.,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >> 击杀|cRXP_ENEMY_森林漫游者|r. 拾取|cRXP_LOOT_断裂的原木|r
>> 对它们的尸体使用|T133841:0|t[树人灵魂精华容器]
>> |cRXP_WARN_箭头会引导你到他们的巡逻路线, 同时也会标记在你的世界地图上. 此任务物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.collect 9593,3 
.unitscan Wandering Forest Walker
step
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >> 前往莫沙彻营地
step
.goto Feralas,74.42,43.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3126 ,t Treant Muisek
.accept 3127 ,a Mountain Giant Muisek
.target Witch Doctor Uzer'i
step
#completewith next
.goto Feralas,51.89,49.82,30,0
.goto Feralas,48.82,45.15,30,0
.goto Feralas,45.67,46.94,30,0
.subzone 1108 >> 向西前往被遗忘的海岸
step
.goto Feralas,44.81,43.43
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔宾·范达瑟|r
.accept 7003 ,a Zapped Giants
.target Zorbin Fandazzle
step
#completewith next
>> 留意|T134362:0|t[|cFF00BCD4完美的雪人毛皮|r]
>> |cRXP_WARN_暂时不要接受这个任务! 如果|cRXP_LOOT_怒痕雪人的毛皮|r全部收集齐了还没打到就先跳过这步|r
.collect 18972,1 
step
.goto Feralas,52.05,31.82,40,0
.loop 25,Feralas,52.06,30.72,52.50,29.74,53.09,30.80,52.05,31.82,53.11,31.79,54.33,32.54,55.07,32.27,55.43,33.53,55.81,33.0,54.34,33.21,54.81,33.86,54.34,33.21,55.81,33.0,55.43,33.53,55.07,32.27,54.33,32.54,53.11,31.79,52.05,31.82,52.06,30.72
>> 击杀|cRXP_ENEMY_狂暴的怒痕雪人|r. 拾取|cRXP_LOOT_毛皮|r
.complete 7734,1 
.mob Ferocious Rage Scar
.mob Rage Scar Yeti
.mob Elder Rage Scar
step
.loop 25,Feralas,41.08,24.52,39.36,24.29,38.38,22.21,38.52,20.83,39.47,22.04,41.08,24.52
.use 18904 >> 对|cRXP_ENEMY_大地行者|r和|cRXP_ENEMY_峭壁巨人|r使用|T133003:0|t[索尔宾的超级压缩器]. 击杀并拾取他们的|cRXP_LOOT_残渣|r
.use 9621 >> 对它们的尸体使用|T133841:0|t[山岭巨人灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 3127,1 
.collect 18956,8 
.mob Land Walker
.mob Cliff Giant
step
#completewith next
.goto Feralas,40.9,12.0,0
.subzone 1114 >> 向北前往鸦风废墟
step
#completewith next
>> 击杀|cRXP_ENEMY_北泉鹰身人|r. 拾取|T134228:0|t[艾丹娜的角]
>> |cRXP_WARN_艾丹娜的角掉率较低, 可能会需要较长时间才能掉落|r
.complete 3063,1 
.complete 3063,2 
.complete 3063,3 
.complete 3063,4 
.collect 9530,1 
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
.group 2
step
.goto Feralas,40.56,8.58
.use 9530 >> 使用|T134228:0|t[艾丹娜的角]来召唤|cRXP_ENEMY_艾丹娜·邪爪|r. 击杀并拾取她的|cRXP_LOOT_心|r
.complete 3062,1 
.unitscan Edana of Hatetalon
.group 2
step
.loop 25,Feralas,38.62,13.35,38.61,14.64,39.78,14.09,39.95,12.41,40.98,11.09,39.70,11.09,38.83,10.87,38.07,12.04,38.62,13.35
>> 击杀|cRXP_ENEMY_北泉鹰身人|r
.complete 3063,1 
.complete 3063,2 
.complete 3063,3 
.complete 3063,4 
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
step
.goto Feralas,38.1,14.4
.xp 51 >> 刷到51级

step
.loop 25,Feralas,41.08,24.52,39.36,24.29,38.38,22.21,38.52,20.83,39.47,22.04,41.08,24.52
.use 18904 >> 对|cRXP_ENEMY_大地行者|r和|cRXP_ENEMY_峭壁巨人|r使用|T133003:0|t[索尔宾的超级压缩器]. 击杀并拾取他们的|cRXP_LOOT_残渣|r
.use 9621 >> 对它们的尸体使用|T133841:0|t[山岭巨人灵魂精华容器]
>> |cRXP_WARN_此物品有CD并且每次只能生效一次, 即使你把他们拉在一起|r
.complete 3127,1 
.complete 7003,1 
.mob Land Walker
.mob Cliff Giant
step
#completewith next
.goto Feralas,44.8,44.0,0
.subzone 1108 >> 向南前往被遗忘的海岸
step
.goto Feralas,44.81,43.43
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔宾·范达瑟|r
.turnin 7003 ,t Zapped Giants
.target Zorbin Fandazzle
step
#completewith next
.hs >> 炉石回加基森
.use 6948
step
.goto Tanaris,52.63,28.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戴格·迅斩|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Dirge Quikcleave
step
.goto Tanaris,52.70,45.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3380 ,t The Sunken Temple
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,27.00,55.66,150,0
.goto Tanaris,27.00,50.21
.zone Un'Goro Crater >> 前往安戈洛环形山
step
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4289 ,a The Apes of Un'Goro
.accept 4290 ,a The Fare of Lar'korwi
.target Torwa Pathfinder
step
#completewith Scent
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>> 击杀|cRXP_ENEMY_暴掠龙|r. 拾取|cRXP_LOOT_爪子|r
>> |cRXP_WARN_不用专注于此任务, 如果它们挡你路了就杀了它们|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarch
.isOnQuest 4300
step
#completewith BoneBlade
.goto Un'Goro Crater,70.60,53.26,0
>> 在你做任务时, 保留拾取的25份|cRXP_LOOT_安戈洛的泥土|r
.collect 11018,25 
step
#completewith BoneBlade
.goto Un'Goro Crater,73.06,51.57,0
>> 在你做任务时, 拾取7块各类颜色的|cRXP_LOOT_能量水晶|r
.collect 11186,7 
.collect 11188,7 
.collect 11185,7 
.collect 11184,7 
step
.goto Un'Goro Crater,63.10,68.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_破碎的木筏|r
.accept 3844 ,a It's a Secret to Everybody
step
.goto Un'Goro Crater,63.10,69.00
>> |TInterface/GossipFrame/HealerGossipIcon:0|t潜入水下, 然后点击|cRXP_PICK_小背包|r
.turnin 3844 ,t It's a Secret to Everybody
.accept 3845 ,a It's a Secret to Everybody
step
.goto Un'Goro Crater,68.80,56.80
>> 拾取|cRXP_PICK_新鲜的蛇颈龙肉|r获得1块|cRXP_LOOT_蛇颈龙肉块|r
.complete 4290,1 
step
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4290 ,t The Fare of Lar'korwi
.accept 4291 ,a The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.30,73.10,20,0
.goto Un'Goro Crater,66.60,66.70
>> 站上小蛋巢来召唤|cRXP_ENEMY_拉克维的配偶|r. 击杀并拾取|cRXP_LOOT_信息素|r
.complete 4291,1 
.unitscan Lar'Korwi Mate
step
#label Scent
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4291 ,t The Scent of Lar'korwi
.target Torwa Pathfinder
step
#label BoneBlade
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>> 击杀|cRXP_ENEMY_暴掠龙|r. 拾取|cRXP_LOOT_爪子|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarchaw
.isOnQuest 4300
step 
>> 拾取7块各类颜色的|cRXP_LOOT_能量水晶|r
.collect 11186,7 
.collect 11188,7 
.collect 11185,7 
.collect 11184,7 
step
#completewith next
.goto Un'Goro Crater,44.70,8.10
.use 11107 >> 打开|T133653:0|t[小背包]获得下列物品:
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
step
#completewith next
.goto Un'Goro Crater,44.6,8.2
.subzone 541 >> 向北前往马绍尔营地
step
.goto Un'Goro Crater,44.70,8.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3845 ,t It's a Secret to Everybody
.accept 3908 ,a It's a Secret to Everybody
.target Linken
step
#completewith next
.destroy 11107 >> 摧毁|T133653:0|t[小背包]
.destroy 3108 >> 摧毁|T135427:0|t[重型飞刀]
.destroy 11108 >> 摧毁|T11108:0|t[褪色的照片]
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.accept 4284 ,a Crystals of Power
.turnin 4284 ,t Crystals of Power
.target J.D. Collie
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t离开洞穴, 然后对话|cRXP_FRIENDLY_葛莱夫|r
.fp Marshal >> 开启安戈洛环形山飞行点
.fly Camp Mojache >> 飞往莫沙彻营地
.target Gryfe
step
.goto Feralas,74.42,43.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3128 ,t Natural Materials
.turnin 3127 ,t Mountain Giant Muisek
.accept 3129 ,a Weapons of Spirit
.target Witch Doctor Uzer'i
step
.goto Feralas,74.43,42.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 7734 ,t Improved Quality
.target Jangdor Swiftstrider
step
.goto Feralas,74.43,42.91
.use 18972 >> 使用|T134362:0|t[|cFF00BCD4完美的雪人毛皮|r]来接受任务
.accept 7738 ,a Perfect Yeti Hide
.itemcount 18972,1
step
.goto Feralas,74.43,42.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 7738 ,t Perfect Yeti Hide
.target Jangdor Swiftstrider
.isOnQuest 7738
step
.goto Feralas,76.18,43.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔罗·刺蹄|r
.turnin 3063 ,t Vengeance on the Northspring
.accept 4120 ,a The Strength of Corruption
.turnin 3062 ,t Dark Heart
.target Talo Thornhoof
.isQuestComplete 3062
.group
step
.goto Feralas,76.18,43.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔罗·刺蹄|r
.turnin 3063 ,t Vengeance on the Northspring
.accept 4120 ,a The Strength of Corruption
.target Talo Thornhoof
step
.goto Feralas,74.42,43.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医尤克里|r
.turnin 3129 ,t Weapons of Spirit
.target Witch Doctor Uzer'i
step
.goto Feralas,76.06,43.28
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25布隆克|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Bronk
step << Druid
.goto Feralas,76.0,42.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25加诺斯·轻蹄|r
.train 9884 >> 学习职业技能
.target Jannos Lighthoof
.xp <50,1
.xp >52,1
step << Druid
.goto Feralas,76.0,42.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25加诺斯·轻蹄|r
.train 9894 >> 学习职业技能
.target Jannos Lighthoof
.xp <52,1
step << Shaman
.goto Feralas,75.45,44.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25夏恩|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Shyn
step << Shaman
.goto Orgrimmar,38.66,35.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25萨格尼|r
.accept 8410 ,a Elemental Mastery
.target Sagorne Creststrider
step << Shaman
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >> 飞往棘齿城
.target Doras
step << !Shaman
.goto Feralas,75.45,44.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25夏恩|r
.fly Ratchet >> 飞往棘齿城
.target Shyn
step
.abandon 3062 ,ab Dark Heart
.isOnQuest 3062
step
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 51-52 荆棘谷/诅咒之地
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 52-53 灼热峡谷/燃烧平原
step
.goto The Barrens,62.50,38.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.accept 4502 ,a Volcanic Activity
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.60
>> 拾取建筑外的|cRXP_PICK_玛尔冯的箱子|r获得|cRXP_LOOT_石环|r
.complete 3444,1 
step
.goto The Barrens,62.05,39.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维尔雷|r
.home >> 绑定炉石到棘齿城
.target Innkeeper Wiley
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往荆棘谷
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,23.60,72.00
>> 击杀|cRXP_ENEMY_摩卡什|r. 拾取|T133694:0|t[|cFF00BCD4刺着字母的腰带|r]. 使用并接受任务
.collect 3985,1,8552 
.accept 8552 ,a The Monogrammed Sash
.use 3985
.group 4
step
.goto Stranglethorn Vale,28.40,76.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 ,t Rescue OOX-17/TN!
.target Oglethorpe Obnoticus
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.40,76.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 836 ,t Rescue OOX-09/HL!
.target Oglethorpe Obnoticus
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.40,76.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 ,t Rescue OOX-22/FE!
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.40,76.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.accept 3721 ,a An OOX of Your Own
.turnin 3721 ,t An OOX of Your Own
.target Oglethorpe Obnoticus
.isQuestTurnedIn 648
.isQuestTurnedIn 836
.isQuestTurnedIn 2767
step
.goto Stranglethorn Vale,26.70,73.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8552 ,t The Monogrammed Sash
.target Captain Hecklebury Smotts
.isOnQuest 8552
.group
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r和|cRXP_FRIENDLY_斯普罗格|r
.accept 615 ,a The Captain's Cutlass
.goto Stranglethorn Vale,26.69,73.62
.turnin 615 ,t The Captain's Cutlass
.goto Stranglethorn Vale,26.66,73.64
.target Captain Hecklebury Smotts
.target Sprogger
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普罗格|r
.accept 8554 ,a Facing Negolash
.target Sprogger
.group
step
#completewith next
.goto Stranglethorn Vale,26.55,76.57
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r
.bankwithdraw 4306,15 >> 从银行取出15块|T132905:0|t[丝绸]
.target Viznik
step
.goto Stranglethorn Vale,27.70,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘海狼’麦克基雷|r
.turnin 2874 ,t Deliver to MacKinley
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.10,77.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威士忌·狡黠|r
.turnin 580 ,t Whiskey Slim's Lost Grog
.target Whiskey Slim
step
.goto Stranglethorn Vale,27.10,77.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1122 ,t Report Back to Fizzlebub
.target Crank Fizzlebub
step
#ah
.goto Stranglethorn Vale,27.04,77.17,0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼克拉克斯·菲拉莫格|r
>> |cRXP_WARN_如果你或者你的队友没有从之前的步骤获得|r|T133974:0|t[烧烤秃鹰翅膀]|cRXP_WARN_, 就跳过此步|r
.vendor >> 在|cRXP_FRIENDLY_尼克拉克斯·菲拉莫格|r处购买|cRXP_BUY_密林葡萄酒|r
.collect 4457,10 
.collect 4595,5 
.target Nixxrax Fillamug
.group
step
#completewith next
.goto Stranglethorn Vale,29.83,72.25,50,0
.goto Stranglethorn Vale,33.66,75.05,50,0
.subzone 43 >> 向北离开藏宝海湾, 然后向东抵达海滩
.group
step
#ah
.goto Stranglethorn Vale,32.5,81.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_破损的救生艇|r
.accept 619 ,a Facing Negolash
.turnin 619 ,t Facing Negolash
.group
step
#ah
.goto Stranglethorn Vale,32.50,81.94
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_破损的救生艇|r来召唤|cRXP_ENEMY_奈古拉什|r. 击杀并拾取|cRXP_LOOT_斯莫特的弯刀|r
>> |cRXP_WARN_如果你或者你的队友没有从之前的步骤获得|r|T133974:0|t[烧烤秃鹰翅膀]|cRXP_WARN_, 就跳过此步|r
.collect 4457,10 
.collect 4595,5 
.complete 8554,1 
.unitscan Negolash
.group 4
step
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
>> 沿着东南海岸线拾取|cRXP_PICK_半埋的瓶子|r
.collect 4098,1,594
.accept 594 ,a Message in a Bottle
step
.goto Stranglethorn Vale,38.53,80.57
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普巴尔公主|r
.turnin 594 ,t Message in a Bottle
.accept 630 ,a Message in a Bottle
.target Princess Poobah
.group
step
.goto Stranglethorn Vale,40.94,83.89
>> 击杀|cRXP_ENEMY_穆克拉|r. 拾取他的|cRXP_LOOT_钥匙|r
>> |cRXP_WARN_清出场地对付|r|cRXP_ENEMY_穆克拉|r|cRXP_WARN_, 他会恐惧|r
.complete 630,1 
.unitscan King Mukla
.group 4
step
.goto Stranglethorn Vale,38.53,80.57
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普巴尔公主|r
.turnin 630 ,t Message in a Bottle
.target Princess Poobah
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普罗格|r
.turnin 8554 ,t Facing Negolas
.target Sprogger
.group
step << Shaman
.goto Stranglethorn Vale,26.55,76.57
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r
.bankwithdraw 7069,7068,7067,7070 >> 从银行取出以下物品:
+|T135805:0|t[元素火焰]
+|T134714:0|t[元素之水]
+|T134572:0|t[元素之土]
+|T136107:0|t[元素空气]
.target Viznik
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_伊安·斯托姆|r
.train 8643 >> 学习职业技能
.target Ian Strom
.xp <50,1
.xp >52,1
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_伊安·斯托姆|r
.train 11342 >> 学习职业技能
.target Ian Strom
.xp <52,1
step
.goto Stranglethorn Vale,26.87,77.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Stonard>> 飞往斯通纳德
.target Gringer
step
.goto Swamp of Sorrows,47.90,55.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费泽卢尔|r
.turnin 1444 ,t back to Fel'Zerul
.target Fel'zerul
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧格鲁姆|r
.train 13554 >> 学习职业技能
.target Ogrom
.xp <50,1
.xp >52,1
step << Hunter
.goto Swamp of Sorrows,47.27,53.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧格鲁姆|r
.train 13543 >> 学习职业技能
.target Ogrom
.xp <52,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡托什|r
.train 17925 >> 学习职业技能
.target Kartosh
.xp <50,1
.xp >52,1
step << Warlock
.goto Swamp of Sorrows,48.64,55.64
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡托什|r
.train 11675 >> 学习职业技能
.target Kartosh
.xp <52,1
step << Warlock
.goto Swamp of Sorrows,48.59,55.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.vendor >> 购买所有买得起的宠物升级书
.target Greshka
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.train 10437 >> 学习职业技能
.target Haromm
.xp <50,1
.xp >52,1
step << Shaman
.goto Swamp of Sorrows,48.19,57.94
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷沙卡|r
.train 10467 >> 学习职业技能
.target Haromm
.xp <52,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马尔罗什|r
.train 1719 >> 学习职业技能
.target Malosh
.xp <50,1
.xp >52,1
step << Warrior
.goto Swamp of Sorrows,44.89,57.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马尔罗什|r
.train 11551 >> 学习职业技能
.target Malosh
.xp <52,1
step
.goto Swamp of Sorrows,45.78,52.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25苏塔佐尔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cFF00FF25拉尔塔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Rartar
step << Warrior
.goto Swamp of Sorrows,34.20,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8423 ,a Warrior Kinship
.target Fallen Hero of the Horde
step << Warrior
.loop 25,Blasted Lands,53.6,37.2,54.6,41.4,55.6,43.2,52.8,41.8,50.2,38.6,48.0,37.6,46.6,40.2,44.6,37.0,44.6,33.8,48.0,34.4,50.8,36.0,53.6,37.2
>> 在诅咒之地击杀|cRXP_ENEMY_地狱野猪|r
.complete 8423,1 
.mob Helboar
step << Warrior
.goto Swamp of Sorrows,34.20,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8423 ,t Warrior Kinship
.accept 8424 ,a War on the Shadowsworn
.target Fallen Hero of the Horde
step
#completewith LuckyFragment
>> 做任务时留意是否拾取到|T134089:0|t[|cFF00BCD4不完美的德莱尼水晶碎片|r]和|T134564:0|t[|cFF00BCD4无暇的德莱尼水晶球|r]
.collect 10593,1,3501,1 
.collect 8244,1,3501,1 
step << Hunter/Rogue
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>> 击杀|cRXP_ENEMY_蝎子|r, |cRXP_ENEMY_秃鹰|r和|cRXP_ENEMY_野猪|r. 拾取|cRXP_LOOT_蝎钳|r, |cRXP_LOOT_胃囊|r和|cRXP_LOOT_肺|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.mob Scorpok Stinger
.mob Black Slayer
.mob Ashmane Boar
step << Hunter/Rogue
.goto Blasted Lands,50.55,14.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2585 ,a The Decisive Striker
.turnin 2585 ,t The Decisive Striker
.target Bloodmage Drazial
step << Druid/Warrior/Shaman
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>> 击杀|cRXP_ENEMY_土狼|r, |cRXP_ENEMY_野猪|r和|cRXP_ENEMY_蝎子|r. 拾取|cRXP_LOOT_颚骨|r, |cRXP_LOOT_肺|r和|cRXP_LOOT_蝎钳|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Warrior/Shaman
.goto Blasted Lands,50.55,14.21
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2581 ,a Snickerfang Jowls
.turnin 2581 ,t Snickerfang Jowls
.target Bloodmage Drazial
step << Hunter/Rogue
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>> 击杀|cRXP_ENEMY_土狼|r, |cRXP_ENEMY_野猪|r, |cRXP_ENEMY_蝎子|r, |cRXP_ENEMY_秃鹰|r和|cRXP_ENEMY_蜥蜴|r. 拾取以下物品:
.collect 8391,5 
.collect 8392,5 
.collect 8393,3 
.collect 8396,12 
.collect 8394,11 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Ashmane Boar
.mob Scorpok Stinger
.mob Black Slayer
.mob Redstone Basilisk
.mob Redstone Crystalhide
step << Druid/Warrior/Shaman
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>> 击杀|cRXP_ENEMY_土狼|r, |cRXP_ENEMY_野猪|r, |cRXP_ENEMY_蝎子|r, |cRXP_ENEMY_秃鹰|r和|cRXP_ENEMY_蜥蜴|r. 拾取以下物品:
.collect 8391,2 
.collect 8392,4 
.collect 8393,5 
.collect 8396,14 
.collect 8394,11 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Ashmane Boar
.mob Scorpok Stinger
.mob Black Slayer
.mob Redstone Basilisk
.mob Redstone Crystalhide
step << !Hunter !Rogue !Druid !Warrior !Shaman
.goto Blasted Lands,48.00,20.13,80,0
.goto Blasted Lands,44.61,24.93,80,0
.goto Blasted Lands,44.72,33.85,80,0
.goto Blasted Lands,50.40,37.51,80,0
.goto Blasted Lands,54.88,44.05,80,0
.goto Blasted Lands,56.54,37.12,80,0
.goto Blasted Lands,62.30,28.86,80,0
.goto Blasted Lands,50.40,37.51
>> 击杀|cRXP_ENEMY_土狼|r, |cRXP_ENEMY_野猪|r, |cRXP_ENEMY_蝎子|r, |cRXP_ENEMY_秃鹰|r和|cRXP_ENEMY_蜥蜴|r. 拾取以下物品:
.collect 8391,5 
.collect 8392,6 
.collect 8393,6 
.collect 8396,14 
.collect 8394,11 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Ashmane Boar
.mob Scorpok Stinger
.mob Black Slayer
.mob Redstone Basilisk
.mob Redstone Crystalhide
step
#label LuckyFragment
.goto Blasted Lands,51.8,35.6
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘收藏家’库米沙|r
.accept 3501 ,a Everything Counts In Large Amounts
.turnin 3501 ,t Everything Counts In Large Amounts
.target Kum'isha the Collector
.itemcount 10593,1
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师德拉吉亚|r和|cRXP_FRIENDLY_血法师莱诺雷|r
.accept 2585 ,a The Decisive Striker << !Rogue !Hunter
.turnin 2585 ,t The Decisive Striker << !Rogue !Hunter
.accept 2583 ,a A Boar's Vitality
.turnin 2583 ,t A Boar's Vitality
.accept 2581 ,a Snickerfang Jowls << !Druid !Warrior !Shaman
.turnin 2581 ,t Snickerfang Jowls << !Druid !Warrior !Shaman
.goto Blasted Lands,50.55,14.21
.accept 2601 ,a The Basilisk's Bite
.turnin 2601 ,t The Basilisk's Bite
.accept 2603 ,a Vulture's Vigor
.turnin 2603 ,t Vulture's Vigor
.goto Blasted Lands,50.64,14.30
.target Bloodmage Drazial
.target Bloodmage Lynnore
step << Warrior
.loop 25,Blasted Lands,62.4,39.4,62.4,43.0,64.6,47.8,64.0,45.6,63.6,42.6,63.6,39.2,62.4,39.4
.loop 25,Blasted Lands,65.02,32.94,64.15,30.73,63.79,34.18,65.85,34.46,65.02,32.94,65.85,31.97,66.29,30.40,67.39,31.77,68.32,31.21,67.61,29.06,68.32,31.21,67.39,31.77,66.29,30.40,65.85,31.97,65.02,32.94
.complete 8424,1 
.complete 8424,2 
.complete 8424,3 
>> |CRXP_WARN_如果你要进入洞穴, 就注意两端的精英|r
step << Warrior
.goto Swamp of Sorrows,34.20,66.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8424 ,t War on the Shadowsworn
.target Fallen Hero of the Horde
step
#completewith next
.subzone 75 >> 前往斯通纳德
.subzoneskip 75
step
.goto Swamp of Sorrows,45.78,52.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25苏塔佐尔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Thultazor
step
.goto Swamp of Sorrows,45.38,56.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话旅店内的|cFF00FF25拉尔塔|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]|cRXP_BUY_如果有库存的话|r
.target Rartar
step
.goto Swamp of Sorrows,46.10,54.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布雷依克|r
.fly Badlands>> 飞往荒芜之地
.target Breyk
step
.abandon 8554 ,ab Facing Negolash
.isOnQuest 8554
step
.abandon 630 ,ab Message in a Bottle
.isOnQuest 630
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 52-53 灼热峡谷/燃烧平原
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 53-54 艾萨拉
step
.goto Badlands,2.80,45.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高恩|r
.accept 793 ,a Broken Alliances
.target Gorn
.group
step
#completewith next
.goto Badlands,79.97,36.57,50,0
.subzone 339 >> 向东前往莱瑟罗峡谷
.isOnQuest 793
.group
step
.goto Badlands,72.30,66.80
>> 拾取|cRXP_PICK_玛瑙石柱|r获取|cRXP_LOOT_玛瑙符石|r
.collect 4844,1 
.isOnQuest 793
.group 4
step
.goto Badlands,81.30,64.20
>> 拾取|cRXP_PICK_紫水晶石柱|r获取|cRXP_LOOT_紫水晶符石|r
.collect 4843,1 
.isOnQuest 793
.group 4
step
.goto Badlands,83.50,32.90
>> 拾取|cRXP_PICK_钻石柱|r获取|cRXP_LOOT_星钻符石|r
.collect 4845,1 
.isOnQuest 793
.group 4
step
.goto Badlands,81.70,49.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t收集齐3块符石后, 点击|cRXP_PICK_大地封印|r来召唤|cRXP_ENEMY_布莱克拉什|r和|cRXP_ENEMY_赫玛图斯|r
.accept 795 ,a Seal of the Earth
.turnin 795 ,t Seal of the Earth
.isOnQuest 793
.group
step
.goto Badlands,81.70,49.90
>> 击杀|cRXP_ENEMY_布莱克拉什|r和|cRXP_ENEMY_赫玛图斯|r. 拾取|cRXP_LOOT_护腕|r和|cRXP_LOOT_锁链|r
>> |cRXP_WARN_你可以通过优先击杀|r|cRXP_ENEMY_赫玛图斯|r|cRXP_WARN_来简化此战斗, 因为他的烈焰打击会强化|r|cRXP_ENEMY_布莱克拉什|r的|cRXP_WARN_火焰吐息|r
.complete 793,1 
.complete 793,2 
.mob Blacklash
.mob Hematus
.isOnQuest 793
.group 4
step
>> 如果你没有15块丝绸, 可以从苦痛堡垒或者铁趾挖掘场的|cRXP_ENEMY_暗炉矮人|r身上收集
>> |cRXP_WARN_你将在后面的任务用到这些丝绸. 荒芜之地的小怪比灼热峡谷的小怪有更高的概率掉落丝绸|r
.collect 4306,15 
.group
step
.goto Badlands,2.80,45.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高恩|r
.turnin 793 ,t Broken Alliances
.target Gorn
.isQuestComplete 793
.group
step
.goto Badlands,3.40,48.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨特拉克·长齿|r
>> |cRXP_WARN_你可能需要等待|r|cRXP_FRIENDLY_萨特拉克·长齿|r|cRXP_WARN_完成他的剧情. 跟着他就行|r
.accept 3821 ,a Dreadmaul Rock
.target Thal'trak Proudtusk
step
#completewith HoardO
>> 如果你没有15块丝绸, 可以从火烟洞穴的|cRXP_ENEMY_火烟食人魔|r身上收集
>> |cRXP_WARN_你将在后面的任务用到这些丝绸. 荒芜之地的小怪比灼热峡谷的小怪有更高的概率掉落丝绸|r
.collect 4306,15 
step
.goto Badlands,3.62,61.88,50,0
.goto Searing Gorge,72.34,55.47
.zone Searing Gorge >> 前往灼热峡谷
step
.goto Searing Gorge,65.55,62.15
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_木制厕所|r
.accept 4449 ,a Caught!
step
.goto Searing Gorge,63.43,60.91,20,0
.goto Searing Gorge,69.29,33.39
>> 击杀|cRXP_ENEMY_黑铁地质学家|r
>> |cRXP_WARN_你可能需要在北部的营地和南部的挖掘场之间来回走来完成此任务|r
.complete 4449,1 
.mob Dark Iron Geologist
step
.goto Searing Gorge,39.10,39.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r, 然后完成他的对话
.accept 3441 ,a Divine Retribution
.complete 3441,1 
.target Velarok Windblade
.skipgossip
step
.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3441 ,t Divine Retribution
.accept 3442 ,a The Flawless Flame
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >> 向西爬上小山抵达瑟银哨塔
step
.goto Searing Gorge,34.84,30.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞沙|r
.fp Thorium >> 开启灼热峡谷飞行点
.target Grisha
step
.goto Searing Gorge,38.58,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉瑟尔·重拳|r
.accept 7723 ,a Curse These Fat Fingers
.accept 7724 ,a Fiery Menace!
.accept 7727 ,a 熏火龙? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.goto Searing Gorge,37.64,26.47
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_通缉/失踪/失物招领|r告示板
.accept 7728 ,a STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 ,a JOB OPPORTUNITY: Culling the Competition
step
#completewith Spiders
>> 击杀|cRXP_ENEMY_战争魔像|r和|cRXP_ENEMY_火元素|r. 拾取|cRXP_LOOT_烈焰之心|r和|cRXP_LOOT_傀儡之油|r
>> |cRXP_WARN_击杀所有你遇到的|r|cRXP_ENEMY_熔岩元素|r|cRXP_WARN_. 它们能掉落上面两种任务物品|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
#completewith Elementals
.goto Searing Gorge,32.6,55.0,40,0
.goto Searing Gorge,36.2,61.6,40,0
.goto Searing Gorge,44.6,62.6,40,0
.goto Searing Gorge,52.4,57.8,40,0
.goto Searing Gorge,51.4,55.8,40,0
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith Elementals
.goto Searing Gorge,38.0,49.8,40,0
.goto Searing Gorge,40.8,49.8,40,0
.goto Searing Gorge,42.8,51.6
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#label Spiders
.loop 25,Searing Gorge,33.0,39.6,28.8,43.8,27.6,52.0,30.8,59.8,26.6,69.4,22.6,74.0,25.0,76.2,29.6,75.8,30.6,71.8,31.8,66.4,30.8,59.8,27.6,52.0,28.8,43.8,33.0,39.6,
>> 沿着西边/西南方的山脉击杀|cRXP_ENEMY_巨型熔岩蜘蛛|r
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>> 击杀|cRXP_ENEMY_重型战争魔像|r
.complete 7723,1 
.mob Heavy War Golem
step
#label Elementals
.loop 25,Searing Gorge,44.0,38.2,46.6,37.8,47.0,41.4,43.6,44.6,40.6,44.8,36.8,47.6,33.2,52.2,34.0,59.6,36.6,62.8,32.6,70.6,30.6,64.6,28.4,64.0,25.6,53.6,32.4,53.6,33.8,47.4,35.6,41.2,37.6,44.6,40.6,42.8,44.0,38.2
>> 完成击杀|cRXP_ENEMY_战争魔像|r和|cRXP_ENEMY_元素|r. 拾取|cRXP_LOOT_烈焰之心|r和|cRXP_LOOT_傀儡之油|r
>> |cRXP_WARN_击杀所有你遇到的|r|cRXP_ENEMY_熔岩元素|r|cRXP_WARN_. 它们能掉落上面两种任务物品|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
#label WarGolems
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98,70,0
.goto Searing Gorge,50.66,39.23,70,0
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98
>> 击杀|cRXP_ENEMY_重型战争魔像|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3442 ,t The Flawless Flame
.accept 3443 ,a Forging the Shaft
.target Velarok Windblade
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉瑟尔·重拳|r
.turnin 7724 ,t Fiery Menace!
.turnin 7723 ,t Curse These Fat Fingers
.goto Searing Gorge,38.58,27.80
.target Hansel Heavyhands
step
.goto Searing Gorge,37.64,26.47
.accept 7701 ,a WANTED: Overseer Maltorius
.group
step
.goto Searing Gorge,38.58,27.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大铁匠博恩奈特|r
.accept 7722 ,a What the Flux?
.target Master Smith Burninate
.group
step
.goto Searing Gorge,47.54,46.89,30 >> 跳到平台上并进入洞穴
step
.goto Searing Gorge,51.49,36.55,40,0
.loop 25,Searing Gorge,51.36,32.24,50.35,24.24,46.76,20.91,44.04,25.41,48.64,27.42,49.68,31.63,51.36,32.24
>> 下到洞穴底层, 然后击杀|cRXP_ENEMY_熏火龙|r
.complete 7727,1 
.mob Incendosaur
step
#completewith Shanksinnit
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >> 离开洞穴, 然后沿着平台上去并再次进入洞穴上层
step
#completewith Shanksinnit
>> 击杀|cRXP_ENEMY_黑铁监工|r和|cRXP_ENEMY_黑铁奴隶贩子|r
.complete 7729,1 
.complete 7729,2 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
.goto Searing Gorge,40.45,35.75
>> 再次离开洞穴并从洞穴右侧再次进入
>> 击杀|cRXP_ENEMY_监督者玛托留斯|r. 拾取他的|cRXP_LOOT_头|r并拾取|cRXP_PICK_秘密设计图：炽热助熔剂|r
>> |cRXP_WARN_这是一次充满挑战的战斗. 在获取设计图前把整个房间的怪清干净以方便风筝或是逃跑.|r
.complete 7722,1 
.complete 7701,1 
.unitscan Overseer Maltorius
.isOnQuest 7701
.group 3
step
#label Shanksinnit
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>> 击杀所有的|cRXP_ENEMY_黑铁矮人|r和|cRXP_ENEMY_奴隶工|r. 拾取|cRXP_LOOT_匕首|r
.complete 3443,1 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
step
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>> 继续击杀|cRXP_ENEMY_黑铁矮人|r直到你拾取到|T134246:0|t[|cFF00BCD4格里塞特厕所钥匙|r]
>> |cRXP_WARN_暂时不要接受此任务! 这可能让你任务日志超出限额|r
.collect 11818,1,4451 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
step
#completewith next
.goto Searing Gorge,35.45,23.51,50 >> 登出跳过离开洞穴. 有许多不同地点可以做到(此操作已被修复)
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> 点击此处获取演示
step
.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3443 ,t Forging the Shaft
.accept 3452 ,a The Flame's Casing
.target Velarok Windblade
.group
step
.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3443 ,t Forging the Shaft
.target Velarok Windblade
step
.goto Searing Gorge,26.56,35.03,70,0
.loop 25,Searing Gorge,24.56,39.25,22.50,39.77,22.18,36.45,24.52,34.62,25.02,31.00,25.74,29.39,22.33,26.85,25.73,25.38,27.43,24.93,25.74,29.39,25.02,31.00,24.52,34.62,24.56,39.25
>> 击杀|cRXP_ENEMY_暮光之锤小怪|r. 拾取|cRXP_LOOT_拉格纳罗斯符记|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
.isOnQuest 3452
.group 3
step

.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3452 ,t The Flame's Casing
.target Velarok Windblade
.isQuestComplete 3542
.group
step
.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r, 然后等待他完成剧情
.accept 3453 ,a The Torch of Retribution
.turnin 3453 ,t The Torch of Retribution
.accept 3454 ,a The Torch of Retribution
.target Velarok Windblade
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,39.04,39.24
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击惩戒火炬
.turnin 3454 ,t The Torch of Retribution
.isQuestTurnedIn 3452
.group
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r和|cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3462 ,a Squire Maltrake
.goto Searing Gorge,39.06,38.99
.turnin 3462 ,t Squire Maltrake
.accept 3463 ,a Set Them Ablaze!
.goto Searing Gorge,39.17,39.00
.target Velarok Windblade
.target Squire Maltrake
.isQuestTurnedIn 3452
.group
step
#completewith OuthouseAndy
.goto Searing Gorge,34.08,53.99,0
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith WarGolems
.goto Searing Gorge,40.90,50.31,0
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>> 击杀|cRXP_ENEMY_重型战争魔像|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,33.30,54.47
.use 10515 >> 装备|T135466:0|t[惩戒火炬], 然后爬上塔楼并点击|cRXP_PICK_岗哨火盆|r
.complete 3463,4 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
#label WarGolems
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98,70,0
.goto Searing Gorge,50.66,39.23,70,0
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98
>> 击杀|cRXP_ENEMY_重型战争魔像|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,42.91,51.73,50,0
.goto Searing Gorge,40.43,49.37,50,0
.goto Searing Gorge,37.81,49.66,50,0
.goto Searing Gorge,40.43,49.37
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
.goto Searing Gorge,35.66,60.68
.use 10515 >> 装备|T135466:0|t[惩戒火炬], 然后爬上塔楼并点击|cRXP_PICK_岗哨火盆|r
.complete 3463,1 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,44.03,60.90
.use 10515 >> 装备|T135466:0|t[惩戒火炬], 然后爬上塔楼并点击|cRXP_PICK_岗哨火盆|r
.complete 3463,2 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
#label OuthouseAndy
.goto Searing Gorge,65.59,62.17
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_木制厕所|r
.turnin 4449 ,t Caught!
step
.goto Searing Gorge,65.59,62.17
>> 使用|T134246:0|t[|cFF00BCD4格里塞特厕所钥匙|r]来接受任务
.collect 11818,1,4451 
.accept 4451 ,a The Key to Freedom
.use 11818
step
.goto Searing Gorge,65.59,62.17
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_木制厕所|r
.turnin 4451 ,t The Key to Freedom
step
#label OuthouseAndy
.goto Searing Gorge,50.10,54.70
.use 10515 >> 装备|T135466:0|t[惩戒火炬], 然后爬上塔楼并点击|cRXP_PICK_岗哨火盆|r
.complete 3463,3 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,34.08,53.99
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,2 
.mob Dark Iron Lookout
step
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>> 击杀|cRXP_ENEMY_黑铁监工|r和|cRXP_ENEMY_黑铁奴隶贩子|r
.complete 7729,1 
.complete 7729,2 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
#completewith next
.goto Searing Gorge,39.05,38.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_侍卫玛特拉克|r
.turnin 3463 ,t Set Them Ablaze!
.target Squire Maltrake
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,38.85,38.99
>> |TInterface/GossipFrame/HealerGossipIcon:0|t两次打开地上的箱子, 然后打开|cRXP_PICK_黑龙军团宝箱|r并拾取|cRXP_LOOT_黑龙皮|r
.accept 3481 ,a Trinkets...
.turnin 3481 ,t Trinkets...
.isQuestTurnedIn 3452
.group
step
.goto Searing Gorge,37.60,26.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵鲁鲁|r
.turnin 7701 ,t WANTED: Overseer Maltorius
.target Lookout Captain Lolo Longstriker
.isQuestComplete 7701
.group
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >> 前往瑟银哨塔
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉瑟尔·重拳|r和|cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7723 ,t Curse These Fat Fingers
.turnin 7724 ,t Fiery Menace!
.turnin 7727 ,t 熏火龙? Whateverosaur is More Like It
.goto Searing Gorge,38.58,27.80
.turnin 7728 ,t STOLEN: Smithing Tuyere and Lookout's Spyglass
.goto Searing Gorge,38.98,27.50
.target Hansel Heavyhands
.target Taskmaster Scrange
step
.goto Searing Gorge,38.80,28.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大铁匠博恩奈特|r
.turnin 7722 ,t What the Flux?
.target Master Smith Burninate
.isQuestComplete 7722
.group
step
.goto Searing Gorge,38.80,28.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7729 ,t JOB OPPORTUNITY: Culling the Competition
.target Taskmaster Scrange
.isQuestComplete 7729
step
#completewith next
.goto Searing Gorge,69.2,71.6,50,0
.goto Searing Gorge,73.2,76.0,50,0
.goto Searing Gorge,73.61,82.93
+前往灼热峡谷东南部, 你能在这找到|cRXP_ENEMY_狂暴的玛尔戈|r. 等待他从洞穴中巡逻出来, 然后跳到后面的蘑菇上登出跳过.(此操作已被修复) << Druid/Shaman
>>小心 as |cRXP_ENEMY_狂暴的玛尔戈|r is IMMUNE to nature spells << Shaman/Druid
+前往灼热峡谷东南部, 你能在这找到|cRXP_ENEMY_狂暴的玛尔戈|r. 等待他从洞穴中巡逻出来 (或者杀了他), 然后跳到后面的蘑菇上登出跳过.(此操作已被修复) << !Druid !Shaman
.link https://www.youtube.com/watch?v=0_g2SY2JKt8 >> 点击此处获取演示
step
.goto Burning Steppes,28.43,17.70
.zone Burning Steppes >> 前往燃烧平原, 要么登出跳过操作(已修复)要么走黑石山
step
.goto Burning Steppes,65.69,24.23
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦格鲁克|r
.fp Flame Crest >> 开启燃烧平原飞行点
.target Vahgruk
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁奇·斯迪波尔|r和|cRXP_FRIENDLY_麦克斯沃特·尤柏格林|r
.accept 4726 ,a Broodling Essence
.goto Burning Steppes,65.24,24.01
.accept 4296 ,a Tablet of the Seven
.goto Burning Steppes,65.15,23.94
.target Tinkee Steamboil
.target Maxwort Uberglint
step
#completewith HoardO
.use 12284 >> 使用你的|T133001:0|t[龙灵采集器900型]对|cRXP_ENEMY_黑色小龙|r, 然后击杀它们并从它们尸体上的|cRXP_PICK_红色方尖碑|r拾取|cRXP_LOOT_雏龙精华|r
.complete 4726,1 
.mob Black Broodling
step
.goto Burning Steppes,54.10,40.70
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击矮人雕像前的|cRXP_PICK_石头标牌|r获取|cRXP_LOOT_石板拓文|r
.complete 4296,1 
step
.goto Burning Steppes,77.68,38.23,60,0
.goto Burning Steppes,79.80,45.60
>> |TInterface/GossipFrame/HealerGossipIcon:0|t穿过桥, 然后爬上山. 点击祭坛上的|cRXP_PICK_沙妮·长齿的遗骸|r
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙妮·长齿|r
>> |cRXP_WARN_小心|r|cRXP_ENEMY_火腹蛮兵|r的|cRXP_WARN_击退, 有可能把你打到山下去|r
.turnin 3821 ,t Dreadmaul Rock
.accept 3822 ,a Krom'Grul
.target Sha'ni Proudtusk
step
.goto Burning Steppes,77.20,47.50,25,0
.goto Burning Steppes,82.70,38.90,25,0
.goto Burning Steppes,81.60,48.20
>> 击杀|cRXP_ENEMY_克罗格卢尔|r. 拾取|cRXP_LOOT_沙妮的鼻环|r
>> |cRXP_WARN_他可能刷在3个洞穴的任意一个里面; 你可能需要找一下. 小心|r|cRXP_ENEMY_火腹蛮兵|r的|cRXP_WARN_击退, 有可能把你打到山下去|r
.complete 3822,1 
.target Krom'Grul
step
#label HoardO
.goto Burning Steppes,95.09,31.56
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>> |cRXP_WARN_打开你的|r|T132595:0|t[黑龙军团宝箱]|cRXP_WARN_如果你还没这么做的话|r
.accept 4022 ,a A Taste of Flame
.turnin 4022 ,t A Taste of Flame
.target Cyrus Therepentous
.isQuestTurnedIn 3452
.group
step
.loop 25,Burning Steppes,81.8,27.8,85.8,30.2,90.6,29.8,92.0,39.4,90.6,49.4,88.8,56.2,85.2,61.4,82.0,61.6,84.6,56.0,89.4,52.6,88.6,44.8,91.6,38.4,89.8,33.6,86.4,32.0,81.8,27.8
.use 12284 >> 对|cRXP_ENEMY_黑色小龙|r使用你的|T133001:0|t[龙灵采集器900型]. 击杀它们并从它们尸体上的|cRXP_PICK_红色方尖碑|r拾取|cRXP_LOOT_雏龙精华|r
.complete 4726,1 
.mob Black Broodling
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁奇·斯迪波尔|r和|cRXP_FRIENDLY_麦克斯沃特·尤柏格林|r
.turnin 4726 ,t Broodling Essence
.accept 4808 ,a Felnok Steelspring
.goto Burning Steppes,65.24,24.01
.turnin 4296 ,t Tablet of the Seven
.goto Burning Steppes,65.15,23.94
.target Tinkee Steamboil
.target Maxwort Uberglint
step
.goto Burning Steppes,65.70,24.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦格鲁克|r
.fly Badlands >> 飞往荒芜之地
.target Vahgruk
.zoneskip Badlands
step
#completewith next
.goto Badlands,2.81,45.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板舒尔卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Shul'kar
step
.goto Badlands,3.40,48.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨特拉克·长齿|r
>> |cRXP_WARN_你可能需要等待萨特拉克·长齿完成他的剧情. 跟着他就行|r
.turnin 3822 ,t Krom'Grul
.target Thal'trak Proudtusk
step << Rogue/Shaman
.goto Badlands,4.00,44.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里克|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Gorrik
.zoneskip Hillsbrad Foothills
step << Rogue
.goto Hillsbrad Foothills,75.49,23.96,30,0
.goto Hillsbrad Foothills,75.61,19.52,30,0
.goto Hillsbrad Foothills,77.68,22.59,30,0
.goto Hillsbrad Foothills,77.58,19.61,30,0
.goto Alterac Mountains,86.02,78.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔拉齐·拉文霍德领主|r
.accept 8234 ,a Sealed Azure Bag
.target Lord Jorach Ravenholdt
step << Shaman
.goto Alterac Mountains,80.50,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 8410 ,t Elemental Mastery
.accept 8412 ,a Spirit Totem
.target Bath'rah the Windwatcher
step << Shaman

.loop 25,Western Plaguelands,34.6,65.8,33.6,63.2,31.8,63.6,32.0,59.6,30.8,50.2,32.8,56.0,36.0,58.4,34.0,61.8,34.6,65.8
>> 向北进入西瘟疫之地, 然后向西. 小心联盟营地. 游过水域.
>> 击杀|cRXP_ENEMY_毒雾潜伏者|r, |cRXP_ENEMY_食腐秃鹰|r和|cRXP_ENEMY_染病的黑熊|r. 拾取|cRXP_LOOT_眼睛|r和|cRXP_LOOT_爪子|r
.complete 8412,1 
.complete 8412,2 
.mob Carrion Vulture
.mob Venom Mist Lurker
.mob Diseased Black Bear
step << Shaman
.goto Alterac Mountains,80.50,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 8412 ,t Spirit Totem
.target Bath'rah the Windwatcher
step << Shaman
.goto Alterac Mountains,80.50,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.accept 8413 ,a Da Voodoo
.target Bath'rah the Windwatcher
.isQuestTurnedIn 8412
.dungeon ST
step << Rogue/Shaman
.goto Hillsbrad Foothills,60.14,18.63
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦格鲁克|r
.fly Undercity >> 飞往幽暗城
.target Vahgruk
.zoneskip Undercity
step << !Rogue !Shaman
.goto Badlands,4.00,44.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里克|r
.fly Undercity >> 飞往幽暗城
.target Vahgruk
.zoneskip Undercity
step
.goto Undercity,47.46,73.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_化学家弗雷|r
.accept 4293 ,a A Sample of Slime...
.accept 4294 ,a ... and a Match of Ooze
.target Chemist Fuely
step << Druid
#completewith DruidTraining8
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9894 >> 学习职业技能
.target Loganaar
.xp <52,1
.xp >54,1
step << Druid
#label DruidTraining8
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9904 >> 学习职业技能
.target Loganaar
.xp <54,1
step << !Mage
#completewith next
.hs >> 炉石回棘齿城
.use 6948
step << !Mage
.goto The Barrens,63.08,37.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Bragok
.zoneskip Orgrimmar
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step
.abandon 795 ,ab Seal of the Earth
.isOnQuest 795
step
.abandon 793 ,ab Broken Alliances
.isOnQuest 793
step
.abandon 7701 ,ab WANTED: Overseer Maltorius
.isOnQuest 7701
step
.abandon 7722 ,ab What the Flux?
.isOnQuest 7722
step
.abandon 3452 ,ab Flame's Casing
.isOnQuest 3452
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 53-54 艾萨拉
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 54-54 费伍德森林
step
.goto Orgrimmar,54.10,68.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25旅店老板格雷什卡|r
.home >> 绑定炉石到奥格瑞玛
.target Innkeeper Gryshka
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10467 >> 学习职业技能
.target Kardris Dreamseeker
.xp <52,1
.xp >54,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10408 >> 学习职业技能
.target Kardris Dreamseeker
.xp <54,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 13543 >> 学习职业技能
.target Ormak Grimshot
.xp <52,1
.xp >54,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14290 >> 学习职业技能
.target Ormak Grimshot
.xp <54,1
step << Hunter
.goto Orgrimmar,66.33,14.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖祖|r
.train 24631 >> 学习宠物技能
.target Xao'tsu
.xp <54,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11551 >> 学习职业技能
.target Grezz Ragefist
.xp <52,1
.xp >54,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11605 >> 学习职业技能
.target Grezz Ragefist
.xp <54,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11342 >> 学习职业技能
.target Ormok
.xp <52,1
.xp >54,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11294 >> 学习职业技能
.target Ormok
.xp <54,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warlock
.goto Undercity,48.47,45.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25泽弗洛斯特|r
.trainer >> 学习职业技能
.accept 8419 ,a An Imp's Request
.target Zevrost
step << Warlock
.goto Orgrimmar,47.55,46.77
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25库古尔|r
.vendor >> 升级你的宠物技能
.target Kurgul
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10186 >> 学习职业技能
.target Pephredo
.xp <52,1
.xp >54,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10199 >> 学习职业技能
.target Pephredo
.xp <54,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10946 >> 学习职业技能
.target Ur'kyo
.xp <52,1
.xp >54,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 15267 >> 学习职业技能
.target Ur'kyo
.xp <54,1
step
.goto Orgrimmar,59.40,36.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德兰·杜佛斯|r
.turnin 81 ,t Ripple Delivery
.target Dran Droffers
step
.goto Orgrimmar,55.60,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 4300 ,t Bone-Bladed Weapons
.target Jes'rimon
.isQuestComplete 4300
step
.goto Orgrimmar,75.00,34.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 3504 ,a Betrayed
.target Belgrom Rockmaul
step
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >> 飞往碎木岗哨
.target Doras
.zoneskip Ashenvale
step
#completewith next
.goto Ashenvale,75.37,64.73,20,0
.goto Ashenvale,79.07,55.41,30,0
.goto Ashenvale,91.24,46.47,30,0
.goto Ashenvale,95.33,48.38,15,0
.subzone 879 >> 前往艾萨拉
.target Doras
step
.goto Azshara,10.40,74.90,40,0
.goto Azshara,11.40,78.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗哈图|r
.accept 5535 ,a Spiritual Unrest
.accept 5536 ,a A Land Filled with Hatred
.target Loh'atu
step
#completewith next
>> 击杀|cRXP_ENEMY_上层精灵的幻影|r和|cRXP_ENEMY_上层精灵鬼巫|r << !Priest
>> 击杀|cRXP_ENEMY_上层精灵的幻影|r和|cRXP_ENEMY_上层精灵鬼巫|r. 为你的职业任务保留一个|T134437:0|t[亡灵腐液] << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.loop 25,Azshara,19.4,64.0,19.6,60.8,21.2,60.8,20.6,63.6,19.4,64.0
>> 击杀|cRXP_ENEMY_哈达尔萨特|r, |cRXP_ENEMY_哈达尔欺诈者|r和|cRXP_ENEMY_哈达尔魔仆|r
.complete 5536,1 
.complete 5536,2 
.complete 5536,3 
.mob Haldarr Satyr
.mob Haldarr Trickster
.mob Haldarr Felsworn
step
.loop 25,Azshara,17.8,67.8,16.6,71.8,14.6,73.6,13.6,72.6,16.6,68.6,17.2,66.0,17.8,67.8
>> 击杀|cRXP_ENEMY_上层精灵的幻影|r和|cRXP_ENEMY_上层精灵鬼巫|r << !Priest
>> 击杀|cRXP_ENEMY_上层精灵的幻影|r和|cRXP_ENEMY_上层精灵鬼巫|r. 为你的职业任务保留一个|T134437:0|t[亡灵腐液] << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,11.36,78.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗哈图|r
.turnin 5535 ,t Spiritual Unrest
.turnin 5536 ,t A Land Filled with Hatred
.target Loh'atu
step
#completewith next
.goto Azshara,22.00,49.70,30,0
.subzone 1237 >> 向东北前往瓦罗莫克
step
.goto Azshara,22.00,49.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克隆姆|r
.fp Azshara >> 开启艾萨拉飞行点
.target Kroum
step
.goto Azshara,22.20,51.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿格图·血拳|r
.turnin 3504 ,t Betrayed
.target Ag'tor Bloodfist
.isOnQuest 3504
step
.goto Azshara,22.20,51.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿格图·血拳|r
.accept 3505 ,a Betrayed
.target Ag'tor Bloodfist
.isQuestTurnedIn 3504
step
.goto Azshara,22.50,51.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.accept 3517 ,a Stealing Knowledge
.target Jediga
step << Rogue
.goto Azshara,44.20,22.40
>> 偷取|cRXP_ENEMY_木喉萨满|r直到你获得一个|cRXP_LOOT_密封的蓝袋子|r
.complete 8234,1 
.mob Timbermaw Shaman
step << Rogue/Mage
.goto Azshara,28.11,50.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25萨纳斯|r
.turnin 3503 ,t Meeting with the Master
.target Sanath Lim-yo
step << Rogue
.goto Azshara,27.64,41.49,30,0
.goto Azshara,29.7,40.4
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师克希雷姆|r
>> |cRXP_WARN_大法师克希雷姆在塔里巡逻|r
.turnin 8234 ,t Sealed Azure Bag
.accept 8235 ,a Encoded Fragments
.target Archmage Xylem
step << Mage
.goto Azshara,29.2,40.2
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师克希雷姆|r
>> |cRXP_WARN_大法师克希雷姆在塔里巡逻|r
.accept 8251 ,a Magic Dust
.target Archmage Xylem
step << Rogue/Mage
.goto Azshara,26.47,46.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25尼瑞尔|r
.turnin 3421 ,t Return Trip
.target Nyrill
step << Hunter/Priest
#completewith next
.goto Azshara,41.61,42.68,50 >> 前往|cRXP_FRIENDLY_奥汀克|r处, 他在一座小山峰上
step << Hunter/Priest
.goto Azshara,42.40,42.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
>> |cRXP_WARN_小心别掉下去了; 他的位置有点危险|r
.accept 8153 ,a Coursers Antlers << Hunter
.accept 8255 ,a Of Coursers We Know << Priest
.target Ogtinc
step << Hunter/Priest
.loop 25,Azshara,48.4,33.2,48.4,16.4,55.2,17.0,59.6,22.9,70.6,28.4,83.2,25.0,76.6,27.3,67.8,27.4,61.4,23.3,55.3,25.3,50.2,25.4,48.4,33.2
>> 击杀|cRXP_ENEMY_苔蹄快步者|r. 拾取|cRXP_LOOT_鹿角|r << Hunter
>> 击杀|cRXP_ENEMY_苔蹄快步者|r. 拾取|cRXP_LOOT_信息素|r << Priest
>> |cRXP_ENEMY_苔蹄快步者|r|cRXP_WARN_与角鹰兽和奇美拉共享刷新|r
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Hunter
.goto Azshara,42.40,42.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8153 ,t Coursers Antlers
.accept 8231 ,a Wavethrashing
.target Ogtinc
step
.goto Azshara,53.45,21.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基姆加尔|r
.accept 3601 ,a Kim'jael Indeed!
.target Kim'jael
step
#completewith Magus
>> 拾取散落在营地的|cRXP_PICK_基姆加尔的设备|r
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << !Mage
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
>> 击杀|cRXP_ENEMY_血精灵搜寻者|r和|cRXP_ENEMY_血精灵勘测员|r
>> |cRXP_WARN_小心!|r|cRXP_ENEMY_勘测员|r|cRXP_WARN_会短CD火焰新星, |r|cRXP_ENEMY_搜寻者|r|cRXP_WARN_会高伤害的火球术|r
.complete 3505,1 
.complete 3505,2 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
.isOnQuest 3505
step << Mage
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
>> 击杀|cRXP_ENEMY_血精灵搜寻者|r和|cRXP_ENEMY_血精灵勘测员|r. 拾取|cRXP_LOOT_尘埃|r
>> |cRXP_WARN_小心!|r|cRXP_ENEMY_勘测员|r|cRXP_WARN_会短CD火焰新星, |r|cRXP_ENEMY_搜寻者|r|cRXP_WARN_会高伤害的火球术|r
.complete 3505,1 
.complete 3505,2 
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
.isOnQuest 3505
step
.goto Azshara,59.40,31.20
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在召唤法阵的基座上点击|cRXP_PICK_卡多雷召唤宝典|r
.complete 3505,3 
.complete 3505,4 
.turnin 3505 ,t Betrayed
.isOnQuest 3505
step
.goto Azshara,59.50,31.20
>> |TInterface/GossipFrame/HealerGossipIcon:0|t再次点击|cRXP_PICK_卡多雷召唤宝典|r
.accept 3506 ,a Betrayed
.isQuestTurnedIn 3505
step
#label Magus
.goto Azshara,59.50,31.40
>> 摧毁一块|cRXP_PICK_奥术集中水晶|r. 这将召唤一名|cRXP_ENEMY_血精灵防卫者|r
>> 13秒后|cRXP_ENEMY_魔导师雷姆托里|r会刷出来. 击杀并拾取她的|cRXP_LOOT_头|r
.complete 3506,1 
.isQuestTurnedIn 3505
.mob Blood Elf Defender
.unitscan Magus Rimtori
step
.goto Azshara,57.02,29.45
.loop 25,Azshara,58.5,25.0,58.9,28.3,59.6,30.9,57.0,29.9,56.5,28.4,58.5,25.0
>> 拾取散落在营地的|cRXP_PICK_基姆加尔的设备|r
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
.xp 54 >> 刷到54级
step
.goto Azshara,53.45,21.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基姆加尔|r
.turnin 3601 ,t Kim'jael Indeed!
.accept 5534 ,a Kim'jael's "Missing" Equipment
.target Kim'jael
step << Hunter
.loop 25,Azshara,87.2,23.0,89.8,22.6,89.8,27.4,90.8,31.0,90.2,35.6,88.0,32.0,87.6,30.0,84.6,30.8,84.2,27.8,87.2,23.0
>> 击杀所有类型的|cRXP_ENEMY_碎浪多头蛇|r. 拾取|cRXP_LOOT_鳞片|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Rogue
.loop 25,Azshara,66.6,25.2,69.0,25.6,71.6,29.2,71.6,24.6,80.8,24.6,86.6,19.6,74.6,12.6,66.6,25.2
>> 击杀|cRXP_ENEMY_森林软泥怪|r. 拾取|cRXP_LOOT_密文碎片|r
.complete 8235,1 
.unitscan Forest Ooze
step << Mage
.goto Azshara,28.11,50.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25萨纳斯|r
.turnin 3503 ,t Meeting with the Master
.target Sanath Lim-yo
step << Mage
.goto Azshara,29.2,40.2
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师克希雷姆|r
>> |cRXP_WARN_大法师克希雷姆在塔里巡逻|r
.turnin 8251 ,t Magic Dust
.accept 8252 ,a The Siren's Coral
.target Archmage Xylem
step << Mage
.goto Azshara,28.11,50.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25萨纳斯|r
.turnin 3503 ,t Meeting with the Master
.target Sanath Lim-yo
step
#completewith Tablets
>> 击杀所有的|cRXP_ENEMY_恶鞭娜迦|r. 拾取|cRXP_LOOT_魔化珊瑚|r和|cRXP_LOOT_一些符文|r << Mage
>> |cRXP_LOOT_魔化珊瑚|r|cRXP_WARN_只掉落于|r|cRXP_ENEMY_恶鞭海妖|r << Mage
>> 击杀所有的|cRXP_ENEMY_恶鞭娜迦|r. 拾取|cRXP_LOOT_一些符文|r << !Mage
.complete 5534,1 
.complete 8252,1 << Mage 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.unitscan Spitelash Siren << Mage
step
.goto Azshara,47.80,60.80
.use 10687 >> 跳入小池塘并使用|T132793:0|t[空瓶子#1]
.complete 3568,1 
step
.goto Azshara,47.80,51.30
.use 10688 >> 跳入小池塘并使用|T132793:0|t[空瓶子#2]
.complete 3568,2 
step
.goto Azshara,48.70,48.50
.use 10689 >> 跳入小池塘并使用|T132793:0|t[空瓶子#3]
.complete 3568,3 
step
.goto Azshara,47.50,46.20
.use 10870 >> 跳入小池塘并使用|T132793:0|t[空瓶子#4]
.complete 3568,4 
step
#label Tablets
.goto Azshara,39.80,46.81,40,0
.goto Azshara,39.86,48.72,40,0
.goto Azshara,37.30,48.12,40,0
.goto Azshara,38.55,54.58,40,0
.goto Azshara,40.97,55.00,40,0
.goto Azshara,40.81,62.69,40,0
.goto Azshara,42.95,63.76,40,0
.goto Azshara,38.70,63.30,40,0
.goto Azshara,36.35,58.75,40,0
.goto Azshara,35.92,57.55,40,0
.goto Azshara,34.89,53.93,40,0
.goto Azshara,35.86,53.49
>> 拾取散布于废墟的|cRXP_PICK_闪光石板|r
.complete 3517,1 
.complete 3517,2 
.complete 3517,3 
.complete 3517,4 
step
.loop 25,Azshara,44.0,48.2,45.6,43.8,47.0,41.6,48.8,45.0,47.4,49.0,48.2,54.0,48.2,59.8,48.6,64.8,46.2,61.0,45.6,57.8,46.0,52.8,44.0,48.2
>> 击杀所有的|cRXP_ENEMY_恶鞭娜迦|r. 拾取|cRXP_LOOT_魔化珊瑚|r和|cRXP_LOOT_一些符文|r << Mage
>> 击杀所有的|cRXP_ENEMY_恶鞭娜迦|r. 拾取|cRXP_LOOT_一些符文|r << !Mage
>> |cRXP_LOOT_魔化珊瑚|r|cRXP_WARN_只掉落于|r|cRXP_ENEMY_恶鞭海妖|r << Mage
.complete 5534,1 
.complete 8252,1 << Mage 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.unitscan Spitelash Siren << Mage
step << Hunter/Priest
.goto Azshara,42.40,42.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8231 ,t Wavethrashing << Hunter
.turnin 8255 ,t Accept Of Coursers We Know << Priest
.accept 8256 ,a The 亡灵腐液 << Priest
.turnin 8256 ,t The 亡灵腐液 << Priest
.target Ogtinc
step << Hunter/Priest
.goto Azshara,42.400,42.619
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.accept 8232 ,a The Green Drake << Hunter
.accept 8257 ,a Blood of Morphaz << Priest
.target Ogtinc
.isQuestTurnedIn 8231 << Hunter
.isQuestTurnedIn 8256 << Priest
.dungeon ST
step
.goto Azshara,45.55,37.79,50,0
.goto Azshara,53.45,21.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上山丘离开废墟, 然后对话|cRXP_FRIENDLY_基姆加尔|r
.turnin 5534 ,t Kim'jael's "Missing" Equipment
.target Kim'jael
step
.goto Azshara,22.60,51.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.turnin 3517 ,t Stealing Knowledge
.accept 3561 ,a Delivery to Archmage Xylem
.accept 3518 ,a Delivery to Magatha
.accept 3541 ,a Delivery to Jes'rimon
.target Jediga
step
.goto Azshara,22.26,51.47
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿格图·血拳|r
.turnin 3506 ,t Betrayed
.accept 3507 ,a Betrayed
.target Ag'tor Bloodfist
.isQuestTurnedIn 3505
step
.goto Azshara,28.11,50.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 ,t Meeting with the Master
.target Sanath Lim-yo
step
.goto Azshara,29.7,40.4
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师克希雷姆|r
.turnin 3561 ,t Delivery to Archmage Xylem
.accept 3565 ,a Xylem's Payment to Jediga
.turnin 8252 ,t The Siren's Coral << Mage
.turnin 8235 ,t Encoded Fragments << Rogue
.target Archmage Xylem
step << Mage/Rogue
.goto Azshara,29.248,40.210
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔上对话|cRXP_FRIENDLY_大法师克希雷姆|r
.accept 8253 ,a Destroy Morphaz << Mage
.accept 8236 ,a The Azure Key << Rogue
.target Archmage Xylem
.isQuestTurnedIn 8252 << Mage
.isQuestTurnedIn 8235 << Rogue
.dungeon ST
step
.goto Azshara,26.47,46.27
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼瑞尔|r
.turnin 3421 ,t Return Trip
.target Nyrill
step
.goto Azshara,22.56,51.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.turnin 3565 ,t Xylem's Payment to Jediga
.target Jediga
step
.goto Azshara,21.96,49.61
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克隆姆|r
.fly Splintertree Post >> 飞往碎木岗哨
.target Kroum
.zoneskip Ashenvale
step
.goto Ashenvale,55.78,28.12
.zone Felwood >> 前往费伍德森林
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 54-54 费伍德森林
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 54-56 安戈洛环形山
step
#completewith next
#sticky
.abandon 3504 
.abandon 3568 
step
.goto Felwood,51.00,85.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格拉兹|r
.accept 8460 ,a Timbermaw Ally
.target Grazle
step
.goto Felwood,50.90,81.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔诺恩·红羽|r
.accept 5156 ,a Verifying the Corruption
.target Taronn Redfeather
step
.goto Felwood,51.20,82.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5155 ,a Forces of Jaedenar
.target Greta Mosshoof
step
.goto Felwood,46.70,83.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝丝·河风|r
.accept 4102 ,a Cleansing Felwood
.target Maybess Riverbreeze
step
#completewith next
.subzone 1763 >> 前往加德纳尔
step
.goto Felwood,38.45,60.72
>> 击杀|cRXP_ENEMY_加德纳尔恶犬|r, |cRXP_ENEMY_守护者|r, |cRXP_ENEMY_精兵|r和|cRXP_ENEMY_祭司|r
>> |cRXP_WARN_特别注意|r|cRXP_ENEMY_加德纳尔精兵|r|cRXP_WARN_; 他们会闪现, 高伤害火球术和火焰冲击|r
.complete 5155,1 
.complete 5155,2 
.complete 5155,3 
.complete 5155,4 
.mob Jaedenar Hound
.mob Jaedenar Guardian
.mob Jaedenar Adept
.mob Jaedenar Cultist
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >> 前往血毒岗哨
step
.goto Felwood,34.80,52.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德雷卡苏|r
.accept 6162 ,a A Husband's Last Battle
.target Dreka'Sur
step
.goto Felwood,34.20,52.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温娜·哈萨德|r
.accept 4505 ,a Well of Corruption
.target Winna Hazzard
step
.goto Felwood,34.40,53.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布拉卡尔|r
.fp Felwood >> 开启费伍德森林飞行点
.target Brakkar
step << Warlock
#completewith next
.goto Felwood,33.0,66.4,30,0
.goto Felwood,37.6,66.6,30,0
.goto Felwood,37.2,69.8,30,0
>> 击杀所有的|cRXP_ENEMY_碧火萨特|r直到你捡到1个|cRXP_LOOT_恶魔布|r
.collect 14256,1 
.mob Jadefire Rogue
.mob Jadefire Felsworn
.unitscan Jadefire Shadowstalker
step
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.30,66.60
.use 12566 >> 前往克斯特拉斯废墟中的绿色月亮井, 然后使用你的|T134870:0|t[坚硬的小瓶]
>> |cRXP_WARN_这里有能极大幅度降低你移速的潜行萨特. 有些还在巡逻, 所以小心点|r
.complete 4505,1 
.unitscan Jadefire Shadowstalker << !Warlock
step << Warlock
.goto Felwood,33.0,66.4,30,0
.goto Felwood,37.6,66.6,30,0
.goto Felwood,37.2,69.8
>> 击杀所有的|cRXP_ENEMY_碧火萨特|r直到你捡到1个|cRXP_LOOT_恶魔布|r
.collect 14256,1 
.mob Jadefire Rogue
.mob Jadefire Felsworn
.unitscan Jadefire Shadowstalker
step
#completewith next
>> 击杀|cRXP_ENEMY_死木战士|r, |cRXP_ENEMY_死木探险者|r和|cRXP_ENEMY_死木园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,48.20,94.30
>> 击杀|cRXP_ENEMY_洛尔主宰|r. 拾取他的|cRXP_LOOT_爪子|r
>> |cRXP_WARN_清空此区域再与他战斗否则你可能会被他的AOE恐惧技能恐到怪堆里形成及其复杂的局面|r
.complete 6162,1 
.unitscan Overlord Ror
step
.loop 25,Felwood,48.2,94.3,46.8,91.8,46.6,90.4,46.6,88.6,48.6,89.4,49.2,91.6,48.2,94.3
>> 击杀|cRXP_ENEMY_死木战士|r, |cRXP_ENEMY_死木探险者|r和|cRXP_ENEMY_死木园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,51.00,85.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格拉兹|r
.turnin 8460 ,t Timbermaw Ally
.accept 8462 ,a Speak to Nafien
.target Grazle
step
.goto Felwood,51.20,82.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5155 ,t Forces of Jaedenar
.accept 5157 ,a Collection of the Corrupt Water
.target Greta Mosshoof
step
#completewith next
.subzone 1763 >> 前往加德纳尔
step
.goto Felwood,35.20,59.80
.use 12922 >> 在绿色月亮井中使用你的|T132788:0|t[空壶]
>> |cRXP_WARN_特别注意加德纳尔精兵; 他们会闪现, 高伤害火球术和火焰冲击|r
.complete 5157,1 
.unitscan Jaedenar Adept
step << Warlock
.goto Felwood,37.6,68.4
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.turnin 8419 ,t An Imp's Request
.accept 8421 ,a The Wrong Stuff
.target Impsy
step << !Warlock
.loop 25,Felwood,41.2,45.4,43.4,48.2,42.6,50.2,39.6,54.0,40.8,59.8,40.8,66.0,40.2,68.6,38.8,71.6,41.6,71.6,42.0,67.8,40.8,66.0,40.8,59.8,39.6,54.0,41.2,50.6,38.6,49.6,43.4,48.2,41.2,45.4
>> 击杀|cRXP_ENEMY_被诅咒的软泥怪|r和|cRXP_ENEMY_受污染的软泥怪|r. 拾取|cRXP_LOOT_软泥怪样本|r
.collect 12230,30 
.mob Cursed Ooze
.mob Tainted Ooze
step << Warlock
.loop 25,Felwood,41.2,45.4,43.4,48.2,42.6,50.2,39.6,54.0,40.8,59.8,40.8,66.0,40.2,68.6,38.8,71.6,41.6,71.6,42.0,67.8,40.8,66.0,40.8,59.8,39.6,54.0,41.2,50.6,38.6,49.6,43.4,48.2,41.2,45.4
>> 击杀|cRXP_ENEMY_被诅咒的软泥怪|r和|cRXP_ENEMY_受污染的软泥怪|r. 拾取|cRXP_LOOT_软泥怪样本|r和|cRXP_LOOT_血毒精华|r
>> |cRXP_WARN_只有|r|cRXP_ENEMY_受污染的软泥怪|r|cRXP_WARN_能掉落|r|cRXP_LOOT_血毒精华|r
.collect 12230,30 
.complete 8421,2 
.mob Cursed Ooze
.mob Tainted Ooze
step
#completewith next
>> 进入一个火山口
.complete 5156,3 
step
.loop 25,Felwood,40.6,42.4,42.0,37.6,45.6,38.6,44.6,42.6,40.6,42.4
>> 击杀|cRXP_ENEMY_热能野兽|r和|cRXP_ENEMY_热能恐兽|r
>> |cRXP_WARN_他们共享刷新, 所以你可能需要击杀额外的小怪来完成此步|r
.complete 5156,1 
.complete 5156,2 
.complete 5156,3 
.mob Entropic Horror
.mob Entropic Beast
step
.goto Felwood,41.20,42.82
>> 进入一个火山口
.complete 5156,3 
step << Warlock
.loop 25,Felwood,49.6,30.0,46.4,24.6,49.2,19.8,53.0,20.4,52.0,24.8,49.6,30.0
>> 击杀|cRXP_ENEMY_枯萎的保卫者|, |cRXP_ENEMY_铁木践踏者|和|cRXP_ENEMY_铁木漫游者|. 拾取|cRXP_LOOT_腐烂的木头|r
.complete 8421,1 
.mob Withered Protector
.mob Irontree Stomper
.mob Irontree Wanderer
step << Warlock
.goto Felwood,37.6,68.4
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.turnin 8421 ,t The Wrong Stuff
.target Impsy
step << Warlock
.goto Felwood,41.52,44.99
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.accept 8422 ,a Trolls of a Feather
.target Impsy
.isQuestTurnedIn 8421
.dungeon ST
step
#completewith next
>> 击杀|cRXP_ENEMY_怒爪灰熊|r和|cRXP_ENEMY_魔爪劫毁者|r
.complete 4120,1 
.complete 4120,2 
.mob Angerclaw Grizzly
.mob Felpaw Ravager
step
.goto Felwood,56.6,17.4,40,0
.goto Felwood,57.8,19.2,40,0
.goto Felwood,57.6,21.8,40,0
.goto Felwood,59.2,20.4
>> 击杀|cRXP_ENEMY_扭木食苔者|r和|cRXP_ENEMY_扭木撕裂者|r. 拾取|cRXP_LOOT_血琥珀|r
.complete 4102,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
.loop 25,Felwood,56.0,22.2,53.2,28.0,56.8,26.4,56.0,22.2,58.6,15.6,64.6,20.0,58.6,15.6,56.2,8.6,50.8,12.6,53.6,15.6,56.0,22.2
>> 完成击杀|cRXP_ENEMY_怒爪灰熊|r和|cRXP_ENEMY_魔爪劫毁者|r
.complete 4120,1 
.complete 4120,2 
.mob Angerclaw Grizzly
.mob Felpaw Ravager
step
#completewith next
.goto Felwood,64.70,8.10,70 >> 前往木喉要塞入口
step
.goto Felwood,64.70,8.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
.turnin 8462 ,t Speak to Nafien
.target Nafien
step
#completewith next
.goto Felwood,65.37,6.92,20,0
.goto Felwood,64.89,5.82,20,0
.goto Felwood,64.56,3.46,20,0
.goto Felwood,65.41,2.77,20,0
.goto Felwood,65.38,1.08,20,0
.goto Felwood,65.98,0.64,20,0
.goto Kalimdor,52.27,22.95,20,0
.goto Kalimdor,52.33,22.62,20,0
.goto Kalimdor,52.23,22.49,20,0
.goto Kalimdor,52.27,22.35,20,0
.goto Kalimdor,52.33,22.34,20,0
.goto Moonglade,35.74,72.37,20,0
.zone Moonglade >> 进入通道, 然后选择北向的出口进入月光林地
.zoneskip Moonglade
.isOnQuest 7066
.dungeon MARA
step
.goto Moonglade,36.178,41.798
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 ,t Seed of Life
.target Keeper Remulos
.isOnQuest 7066
.dungeon MARA
step
#completewith next
.goto Felwood,65.44,2.81,20,0
.goto Felwood,66.51,2.98,20,0
.goto Felwood,67.82,4.33,20,0
.goto Felwood,67.93,5.11,20,0
.zone Winterspring >> 通过木喉要塞前往冬泉谷
step
.goto Winterspring,31.30,45.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5082 ,a Threat of the Winterfall
.target Donova Snowden
step
.goto Winterspring,31.30,45.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 3908 ,t It's a Secret to Everybody
.target Donova Snowden
step
#completewith next
>> 击杀|cRXP_ENEMY_冬泉谷熊怪|r直到你拾取到一瓶|T134865:0|t[|cFF00BCD4空的火酒瓶|r]. 使用并接受任务
.collect 12771,1,5083 
.accept 5083 ,a Winterfall Firewater
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.loop 25,Winterspring,31.0,36.8,30.0,35.8,31.0,34.8,33.6,37.0,31.0,36.8
>> 击杀|cRXP_ENEMY_冬泉探路者|r, |cRXP_ENEMY_冬泉巢穴守卫|r和|cRXP_ENEMY_冬泉图腾师|r
>> |cRXP_WARN_如果没怪了就去清了东南方向的营地|r
.complete 5082,1 
.complete 5082,2 
.complete 5082,3 
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.loop 25,Winterspring,39.0,42.8,41.8,44.6,42.4,42.4,39.0,42.8
>> 击杀|cRXP_ENEMY_冬泉谷熊怪|r直到你拾取到一瓶|T134865:0|t[|cFF00BCD4空的火酒瓶|r]. 使用并接受任务
.collect 12771,1,5083 
.accept 5083 ,a Winterfall Firewater
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5082 ,t Threat of the Winterfall
.turnin 5083 ,t Winterfall Firewater
.accept 5084 ,a Falling to Corruption
.accept 3909 ,a The Videre Elixir 
.target Donova Snowden
step
#completewith next
.subzone 2255 >> 前往永望镇
step
.goto Winterspring,61.60,38.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.turnin 4808 ,t Felnok Steelspring
.target Felnok Steelspring
step
.goto Winterspring,60.47,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤格雷克|r
.fp Everlook >> 开启永望镇飞行点
.fly Felwood >> 飞往费伍德森林
.target Yugrek
step
.goto Felwood,34.20,52.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温娜·哈萨德|r
.turnin 4505 ,t Well of Corruption
.target Winna Hazzard
step
.goto Felwood,34.80,52.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德雷卡苏|r
.turnin 6162 ,t A Husband's Last Battle
.target Dreka'Sur
step
.goto Felwood,46.60,83.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝丝·河风|r
.turnin 4102 ,t Cleansing Felwood
step
.goto Felwood,46.60,83.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_梅贝丝·河风|r以获取1个|T134249:0|t[塞纳里奥信标]
.collect 11511,1 
.target Maybess Riverbreeze
.skipgossip
step
.goto Felwood,51.20,82.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5157 ,t Collection of the Corrupt Water
.accept 5158 ,a Seeking Spiritual Aid
.target Greta Mosshoof
step
.goto Felwood,50.90,81.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔诺恩·红羽|r
.turnin 5156 ,t Verifying the Corruption
.target Taronn Redfeather
step
#completewith next
.hs >> 炉石回奥格瑞玛
.use 6948
step
.goto Orgrimmar,54.10,68.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
#ah
.goto Orgrimmar,55.59,62.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师萨苏恩|r
>> |cRXP_BUY_从拍卖行购买1个|r|T133021:0|t[秘银外壳]
.target Auctioneer Thathung
.collect 10561,1
step
.goto Orgrimmar,55.52,34.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 3541 ,t Delivery to Jes'rimon
.accept 3563 ,a Jes'rimon's Payment to Jediga
.target Jes'rimon
.isOnQuest 3541
step
.goto Orgrimmar,75.20,34.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 3507 ,t Betrayed
.target Belgrom Rockmaul
.isOnQuest 3507
step
.goto Orgrimmar,56.40,46.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.accept 4494 ,a March of the Silithid
.target Zilzibin Drumlore
step
.goto Orgrimmar,45.11,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >> 飞往陶拉祖营地
.target Doras
.zoneskip The Barrens
step
.goto The Barrens,45.58,59.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
.home >> 绑定炉石到陶拉祖营地
.target Innkeeper Byula
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 54-56 安戈洛环形山
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 56-57 费伍德森林/冬泉谷
step
.goto The Barrens,44.45,59.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Tanaris >> 飞往塔纳利斯
.target Omusa Thunderhorn
.zoneskip Tanaris
step
.goto Tanaris,50.90,27.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4494 ,t March of the Silithid
.accept 4496 ,a Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,52.70,45.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3444 ,t The Stone Circle
.target Marvon Rivetseeker
step
.goto Tanaris,51.60,25.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Un'Goro Crater>> 飞往安戈洛环形山
.target Bulkrek Ragefist
.zoneskip Un'Goro Crater
step
.goto Un'Goro Crater,43.89,7.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍莱伊·马绍尔|r
.accept 3883 ,a Alien Ecology
.target Hol'anyee Marshal
step
.goto Un'Goro Crater,43.50,7.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克·尼米尔|r
.accept 3882 ,a Roll the Bones
.target Spark Nilminer
step
.goto Un'Goro Crater,43.61,8.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普拉格·弗劳克|r
.accept 4501 ,a Beware of Pterrordax
.target Spraggle Frock
step
.goto Un'Goro Crater,45.53,8.72
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里安|r
.accept 4145 ,a Larion and Muigin
.target Larion
step
.goto Tanaris,12.80,8.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希兹尔|r
.accept 4503 ,a Shizzle's Flyer
.target Shizzle
step
#completewith Mighty
>> 击杀你遇到的所有|cRXP_ENEMY_软泥怪|r. 拾取|cRXP_LOOT_软泥怪样本|r和|cRXP_LOOT_安戈洛的泥土|r
.collect 11018,25 
.collect 12235,30 
.mob Muculent Ooze
.mob Glutinous Ooze
.mob Primal Ooze
step
#completewith FungalRock
.goto Un'Goro Crater,62.97,17.39,40,0
.subzone 542 >> 前往蘑菇石
step
#completewith next
.goto Un'Goro Crater,52.8,13.4,40,0
.goto Un'Goro Crater,53.0,17.6,40,0
.goto Un'Goro Crater,56.6,16.6,40,0
.goto Un'Goro Crater,60.6,20.6,40,0
>> 在你前往蘑菇石的路上, 击杀|cRXP_ENEMY_血瓣花撕掠者|r
>> |cRXP_WARN_它们的毒能造成很高的伤害. 不要专注于此. 你可以稍后再来完成|r << Warrior/Rogue
>> |cRXP_WARN_它们的毒能造成很高的伤害并能吸取法力. 不要专注于此. 你可以稍后再来完成|r << !Warrior !Rogue
.complete 4145,3 
.mob Bloodpetal Flayer
step
#label FungalRock
.goto Un'Goro Crater,61.85,17.71,50,0
.goto Un'Goro Crater,64.32,16.35,25,0
.goto Un'Goro Crater,65.83,15.61,20,0
.goto Un'Goro Crater,68.70,17.13,20,0
.goto Un'Goro Crater,69.52,16.82,20,0
.goto Un'Goro Crater,68.63,14.36,20,0
.goto Un'Goro Crater,68.51,13.27,20,0
.goto Un'Goro Crater,65.64,14.60,20,0
.goto Un'Goro Crater,65.06,16.70,20,0
.goto Un'Goro Crater,63.91,16.35,20,0
.goto Un'Goro Crater,62.86,18.17
>> 击杀|cRXP_ENEMY_安戈洛巨猩猩|r, |cRXP_ENEMY_安戈洛大猩猩|r. 和|cRXP_ENEMY_安戈洛猩猩|r. 拾取|cRXP_LOOT_皮毛|r
>> |cRXP_WARN_小心!|r|cRXP_ENEMY_安戈洛猩猩|r|cRXP_WARN_能呼叫90范围内的其他猩猩.|r|cRXP_ENEMY_安戈洛大猩猩|r|cRXP_WARN_会1个瞬时高伤害震击技能|r
.complete 4289,2 
.complete 4289,3 
.complete 4289,1 
.mob Un'Goro Thunderer
.mob Un'Goro Stomper
.mob Un'Goro Gorilla
step
#completewith Ucha
>> 击杀|cRXP_ENEMY_双帆龙|r. 拾取|cRXP_LOOT_骨头|r和|cRXP_LOOT_鳞片|r
>> |cRXP_WARN_小心|r|cRXP_ENEMY_老年双帆龙|r|cRXP_WARN_的拳击技能, 能打断施法|r << Warlock/Priest/Mage/Shaman/Druid
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.loop 25,Un'Goro Crater,57.6,36.8,64.4,30.8,68.2,24.0,71.2,31.0,74.2,39.6,76.0,47.4,74.2,39.6,69.4,38.0,66.6,35.6,60.0,39.4,57.6,36.8
>> 击杀|cRXP_ENEMY_血瓣花痛击者|r和|cRXP_ENEMY_血瓣花鞭笞者|r
>> |cRXP_WARN_它们的毒能造成很高的伤害并能缴械你|r << Warrior/Rogue/Shaman
>> |cRXP_WARN_它们的毒能造成很高的伤害并能吸取法力|r << !Warrior !Rogue !Shaman
.complete 4145,4 
.complete 4145,1 
.mob Bloodpetal Thresher
.mob Bloodpetal Lasher
step
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4289 ,t The Apes of Un'Goro
.accept 4292 ,a The Bait for Lar'korwi
.accept 4301 ,a The Mighty U'cha
.accept 9052 ,a Bloodpetal Poison << Druid
.target Torwa Pathfinder
step
.goto Un'Goro Crater,79.94,49.88
.use 11568 >> 打开|T133635:0|t[托尔瓦的麻袋]
.use 11569 >> 靠近大平石块站着, 然后使用|T133970:0|t[蛇颈龙肉]
.use 11570 >> 使用|T134743:0|t[恐龙信息素]
>> 当|cRXP_ENEMY_拉克维|r出现后击杀它. 拾取它的|cRXP_LOOT_头|r
.complete 4292,1 
.mob Lar'korwi
step
#label Ucha
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4292 ,t The Bait for Lar'korwi
.target Torwa Pathfinder
step << Druid
#sticky
#label bloodcap
>> 在此区域拾取|cRXP_PICK_血瓣花苗|r直到你有8个|cRXP_LOOT_血帽|r
.complete 9052,2 
step
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>> 击杀|cRXP_ENEMY_暴掠龙|r. 拾取|cRXP_LOOT_爪子|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarch
.isOnQuest 4300
step
#completewith next
.goto Un'Goro Crater,50.59,77.06,0
>> 击杀|cRXP_ENEMY_格里什异种蝎|r. 拾取|cRXP_LOOT_格里什信息素|r << !Druid
>> 击杀|cRXP_ENEMY_格里什异种蝎|r. 拾取|cRXP_LOOT_格里什信息素|r和|cRXP_LOOT_格里什钉刺|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
.goto Un'Goro Crater,49.97,81.36,40,0
.goto Un'Goro Crater,48.7,85.2
.use 11132 >> 进入异种蝎巢穴, 然后一直靠左走. 在圆形房间的中间使用你的|T134864:0|t[未使用的采集瓶]
.complete 3883,1 
step
.goto Un'Goro Crater,49.44,82.85,40,0
.goto Un'Goro Crater,50.35,79.55,50,0
.goto Un'Goro Crater,48.69,76.45,70,0
.goto Un'Goro Crater,47.58,81.58,70,0
.goto Un'Goro Crater,49.38,82.32,70,0
.goto Un'Goro Crater,52.38,84.31,70,0
.goto Un'Goro Crater,54.03,78.15,70,0
.goto Un'Goro Crater,51.74,75.36
>> 击杀|cRXP_ENEMY_格里什异种蝎|r. 拾取|cRXP_LOOT_格里什信息素|r << !Druid
>> 击杀|cRXP_ENEMY_格里什异种蝎|r. 拾取|cRXP_LOOT_格里什信息素|r和|cRXP_LOOT_格里什钉刺|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
.goto Un'Goro Crater,56.2,88.2,40,0
.goto Un'Goro Crater,57.0,92.6,40,0
.goto Un'Goro Crater,50.4,87.8,40,0
.goto Un'Goro Crater,50.6,89.8,40,0
.goto Un'Goro Crater,43.0,85.2,40,0
.goto Un'Goro Crater,43.6,92.4
>> 在南部的山壁中击杀|cRXP_ENEMY_翼手龙|r
.complete 4501,1 
.unitscan Pterrordax
step
#completewith BloodpetalTrappers
>> 击杀|cRXP_ENEMY_双帆龙|r. 拾取|cRXP_LOOT_骨头|r和|cRXP_LOOT_鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#completewith next
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>> 击杀|cRXP_ENEMY_狂怒的翼手龙|r. 拾取|cRXP_LOOT_鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#label BloodpetalTrappers
.goto Un'Goro Crater,35.49,43.91
>> 击杀|cRXP_ENEMY_血瓣花陷捕者|r
>> |cRXP_WARN_它们的毒能造成很高的伤害, 并且能施放缠绕根须|r << Warrior/Rogue/Shaman
>> |cRXP_WARN_它们的毒能造成很高的伤害并能吸取法力. 它们你施放缠绕根须|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#completewith next
>> 击杀|cRXP_ENEMY_狂怒的翼手龙|r. 拾取他们的|cRXP_LOOT_鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,29.0,54.8,40,0
.goto Un'Goro Crater,30.8,59.6,40,0
.goto Un'Goro Crater,33.0,65.6,40,0
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>> 击杀|cRXP_ENEMY_双帆龙|r. 拾取|cRXP_LOOT_骨头|r和|cRXP_LOOT_鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>> 击杀|cRXP_ENEMY_狂怒的翼手龙|r. 拾取它们的|cRXP_LOOT_鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
.subzone 541 >> 前往马绍尔营地
step
.goto Un'Goro Crater,43.61,8.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4501 ,t Beware of Pterrordax
.accept 4492 ,a Lost!
.target Spraggle Frock
step
.goto Un'Goro Crater,44.23,11.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希兹尔|r
.turnin 4503 ,t Shizzle's Flyer
.target Shizzle
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍莱伊·马绍尔|r和|cRXP_FRIENDLY_威利德·马绍尔|r
.turnin 3883 ,t Alien Ecology
.goto Un'Goro Crater,43.89,7.24
.accept 3881 ,a Expedition Salvation
.goto Un'Goro Crater,43.95,7.14
.target Hol'anyee Marshal
.target Williden Marshal
step
.goto Un'Goro Crater,43.50,7.42
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克·尼米尔|r
.turnin 3882 ,t Roll the Bones
.target Spark Nilminer
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.accept 4288 ,a The Western Pylon
.accept 4285 ,a The Northern Pylon
.accept 4287 ,a The Eastern Pylon
.target J.D. Collie
step
.goto Un'Goro Crater,45.53,8.72
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里安|r
.turnin 4145 ,t Larion and Muigin
.target Larion
step
.goto Un'Goro Crater,46.37,13.43
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔纳·雷塔维|r
.accept 4243 ,a Chasing A-Me 01
.target Karna Remtravel
step
.goto Un'Goro Crater,56.49,12.44
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_北部水晶塔|r
.complete 4285,1 
.isOnQuest 4285
step
.goto Un'Goro Crater,64.17,16.43,40,0
.goto Un'Goro Crater,67.66,16.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t进入洞穴后一直沿着右手边的墙壁走, 然后对话|cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 ,t Chasing A-Me 01
.target A-Me 01
step
.goto Un'Goro Crater,68.0,13.2
>> 在洞穴深处击杀|cRXP_ENEMY_尤尔查|r. 拾取他的|cRXP_LOOT_皮毛|r
.complete 4301,1 
.unitscan U'cha
step
#ah
.goto Un'Goro Crater,67.67,16.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_A-Me|r
.accept 4244 ,a Chasing A-Me 01
.turnin 4244 ,t Chasing A-Me 01
.accept 4245 ,a Chasing A-Me 01
.target A-Me 01
step
#ah
.goto Un'Goro Crater,67.67,16.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_A-Me|r
.accept 4245 ,a Chasing A-Me 01
.target A-Me 01
step
#ah
.goto Un'Goro Crater,46.37,13.43
>> 护送|cRXP_FRIENDLY_A-Me|r回到马绍尔营地
.complete 4245,1 
.isOnQuest 4245
step
#ah
.goto Un'Goro Crater,46.37,13.43
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔纳·雷塔维|r
.turnin 4245 ,t Chasing A-Me 01
.target Karna Remtravel
.isQuestComplete 4245
step
.goto Un'Goro Crater,68.54,36.54
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_食物箱|r
.complete 3881,1 
step
#requires bloodcap << Druid
.goto Un'Goro Crater,77.24,49.96
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_东部水晶塔|r
.complete 4287,1 
.isOnQuest 4287
step
#label Mighty
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4301 ,t The Mighty U'cha
.turnin 9052 ,t Bloodpetal Poison << Druid
.target Torwa Pathfinder
step << Druid
.goto Un'Goro Crater,71.64,75.96
>> |cRXP_WARN_当你做到此任务的完成阶段, 请仔细的阅读我们的指南. 此任务非常危险|r
.accept 9051 ,a Toxic Test
.target Torwa Pathfinder
step
.goto Un'Goro Crater,38.46,66.07
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_研究设备箱|r
.complete 3881,2 
step
.goto Un'Goro Crater,23.87,59.21
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_西部水晶塔|r
.complete 4288,1 
step
.goto Un'Goro Crater,30.94,50.44
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉兰克|r
.accept 974 ,a Finding the Source
.target Krakle
step << Druid 
>> 追踪一只|cRXP_ENEMY_魔暴龙|r或者|cRXP_ENEMY_铁皮魔暴龙|r
>> |cRXP_WARN_不要引到|r|cRXP霸王魔暴龙|r|cRXP_WARN_; 它们的恐惧非常致命|r
>> |cRXP_WARN_对|cRXP_ENEMY_魔暴龙|r无限使用休眠|r|cRXP_WARN_, 不要放其他技能. 如果醒了, 继续放休眠.|r
>> |cRXP_ENEMY_魔暴龙|r|cRXP_WARN_拥有170%的移速; 你无法跑脱战|r
.use 22432 >> 当它睡着后对它使用你的|T135125:0|t[魔暴龙之刺]
.complete 9051,1 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur,
.unitscan Tyrant Devilsaur
step << Druid
.goto Un'Goro Crater,71.64,75.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9051 ,t Toxic Test
.target Torwa Pathfinder
step << Druid
.goto Un'Goro Crater,71.639,75.960
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 9053 ,a A Better Ingredient
.target Torwa Pathfinder
.isQuestTurnedIn 9051
.dungeon ST
step
.goto Un'Goro Crater,46.60,62.37,70,0
.goto Un'Goro Crater,49.25,64.43,70,0
.goto Un'Goro Crater,50.93,67.97,70,0
.goto Un'Goro Crater,55.97,69.52,70,0
.goto Un'Goro Crater,57.84,63.53,70,0
.goto Un'Goro Crater,58.80,57.84,70,0
.goto Un'Goro Crater,58.43,52.67,70,0
.goto Un'Goro Crater,57.94,44.83,70,0
.goto Un'Goro Crater,50.93,67.97
>> 完成击杀|cRXP_ENEMY_软泥怪|r. 拾取|cRXP_LOOT_软泥怪样本|r和|cRXP_LOOT_安戈洛的泥土|r
>> |cRXP_WARN_南/西边的|cRXP_ENEMY_原生软泥怪|r最多, 但是小心在这边巡逻的|r|cRXP_ENEMY_魔暴龙|r
.collect 11018,25 
.collect 12235,30 
.mob Muculent Ooze
.mob Glutinous Ooze
.mob Primal Ooze
step
#completewith HotSpot
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.6,49.8,20 >> 火山西边的熔岩路是一条上山的捷径
step
#completewith next
>> 击杀|cRXP_ENEMY_火元素|r. 拾取|cRXP_LOOT_灰烬|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#label HotSpot
.goto Un'Goro Crater,49.6,45.7
.use 12472 >> 爬到火山顶, 然后使用|T132995:0|t[克拉兰克的温度计]
.complete 974,1 
step
.goto Un'Goro Crater,30.94,50.44
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉兰克|r
.turnin 974 ,t Finding the Source
.accept 980 ,a The New Springs
.target Krakle
step
.loop 25,Un'Goro Crater,46.7,53.2,49.8,53.9,52.2,54.2,51.2,51.6,53.1,50.4,52.6,45.3,51.5,46.3,50.3,47.7,51.3,49.4,50.3,47.7,49.5,47.3,47.8,50.9,46.7,53.2
>> 击杀|cRXP_ENEMY_火元素|r. 拾取|cRXP_LOOT_灰烬|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#completewith next
.goto Un'Goro Crater,52.42,51.00,30 >> 进入火山东边的山洞
step
.goto Un'Goro Crater,51.90,49.85
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林格|r
.turnin 4492 ,t Lost!
.accept 4491 ,a A Little Help From My Friends
.target Ringo
step
.goto Un'Goro Crater,43.62,8.50
.use 11804 >> 护送|cRXP_FRIENDLY_林格|r前往马绍尔营地. 如果他倒下了就对他使用|T132805:0|t[斯普拉格的水壶]
>> |cRXP_WARN_小心不要离林格太远|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.61,8.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4491 ,t A Little Help From My Friends
.target Spraggle Frock
step
.goto Un'Goro Crater,43.89,7.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威利德·马绍尔|r
.turnin 3881 ,t Expedition Salvation
.target Williden Marshal
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.9,2.6
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.turnin 4288 ,t the Western Pylon
.turnin 4285 ,t The Northern Pylon
.turnin 4287 ,t The Eastern Pylon
.accept 4321 ,a Making Sense of It
.turnin 4321 ,t Making Sense of It
.target J.D. Collie
step
.goto Un'Goro Crater,45.53,8.72
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里安|r
.accept 4147 ,a Marvon's Workshop
.target Larion
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Tanaris >> 飞往塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,50.90,27.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4496 ,t Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,52.707,45.923
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3446 ,a Into the Depths
.accept 3447 ,a Secret of the Circle
.target Marvon Rivetseeker
.isQuestTurnedIn 3444
.dungeon ST
step
.goto Tanaris,66.989,22.354
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.accept 3528 ,a The God Hakkar
.target Yeh'kinya
.isQuestTurnedIn 4787 
.dungeon ST
step
.goto Tanaris,51.60,25.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Feralas>> 飞往菲拉斯
.target Bulkrek Ragefist
.zoneskip Feralas
step
.goto Feralas,76.18,43.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔罗·刺蹄|r
.turnin 4120 ,t The Strength of Corruption
.target Talo Thornhoof
step
.goto Feralas,60.07,47.44,50,0
.goto Feralas,59.59,43.45,10 >> 沿着厄运之槌的外墙走. 这将在之后为你解锁一个任务
>> |cRXP_WARN_确保你的综合频道已切换到"综合 - 厄运之槌"|r
step
.goto Feralas,50.76,49.83,60,0
.goto Feralas,45.12,25.56
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷甘·山酒|r
>> |cRXP_BUY_从他那购买一些|r|T134006:0|t[诱饵]
.collect 11141,1,3909,1 
.target Gregan Brewspewer
step
.goto Feralas,44.60,10.19
>> 给守着|cRXP_LOOT_灵根草|r的|cRXP_ENEMY_米布隆·乱齿|r一些诱饵, 在废墟中拾取|cRXP_LOOT_灵根草|r
>> |cRXP_WARN_你也能从建筑的后方进入|r
.collect 11242,1,3909,1 
.unitscan Miblon Snarltooth
step
.goto Feralas,45.12,25.56
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷甘·山酒|r并给他|cRXP_LOOT_灵根草|r
.complete 3909,1 
.target Gregan Brewspewer
step
#completewith next
.hs >> 炉石回陶拉祖营地
.use 6948
step
.goto The Barrens,45.58,59.04
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板比鲁拉|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Byula
step << !Mage
.goto The Barrens,44.45,59.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Thunder Bluff >> 飞往雷霆崖
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10199 >> 学习职业技能
.target Thurston Xane
.xp <54,1
.xp >56,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10157 >> 学习职业技能
.target Thurston Xane
.xp <56,1
step
#sticky
#label BluffRunner
.goto Thunder Bluff,41.54,57.87,70,0
.goto Thunder Bluff,52.76,62.07,30,0
.goto Thunder Bluff,55.63,50.08,70,0
.goto Thunder Bluff,41.54,57.87,0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷霆崖信差斯塔德尔|r
>> |cRXP_WARN_他在雷霆崖上上下下巡逻, 你可能需要到处找他|r
.accept 1000 ,a The New Frontier
.accept 5095 ,a A Call to Arms: The Plaguelands!
.target Bluff Runner Windstrider
step
.goto Thunder Bluff,45.80,64.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
.accept 3762 ,a Assisting Arch Druid Runetotem
.target Innkeeper Pala
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14290 >> 学习职业技能
.target Urek Thunderhorn
.xp <54,1
.xp >56,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14305 >> 学习职业技能
.target Urek Thunderhorn
.xp <56,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24631 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <54,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 11605 >> 学习职业技能
.target Ker Ragetotem
.xp <54,1
.xp >56,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 20662 >> 学习职业技能
.target Ker Ragetotem
.xp <56,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 10408 >> 学习职业技能
.target Tigor Skychaser
.xp <54,1
.xp >56,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 10432 >> 学习职业技能
.target Tigor Skychaser
.xp <56,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10900 >> 学习职业技能
.target Malakai Cross
.xp <54,1
.xp >56,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10929 >> 学习职业技能
.target Malakai Cross
.xp <56,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9857 >> 学习职业技能
.target Turak Runetotem
.xp <54,1
.xp >56,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22829 >> 学习职业技能
.target Tura
.xp <56,1
step
.goto Thunder Bluff,78.50,28.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
.turnin 1000 ,t The New Frontier
.accept 1123 ,a Rabine Saturna
.turnin 3762 ,t Assisting Arch Druid Runetotem
.accept 3761 ,a Un'Goro Soil
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,77.30,22.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格德|r
.turnin 3761 ,t Un'Goro Soil
.target Ghede
step
.goto Thunder Bluff,78.40,28.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
.accept 3782 ,a Morrowgrain Research
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,70.20,30.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛加萨·恐怖图腾|r
.turnin 3518 ,t Delivery to Magatha
.target Magatha Grimtotem
.isOnQuest 3518
step
.goto Thunder Bluff,70.20,30.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛加萨·恐怖图腾|r
.accept 3562 ,a Magatha's Payment to Jediga
.target Magatha Grimtotem
.isQuestTurnedIn 3518
step
.goto Thunder Bluff,71.00,33.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴珊娜·符文图腾|r
.turnin 3782 ,t Morrowgrain Research
.target Bashana Runetotem
step
.goto Thunder Bluff,47.02,49.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Ratchet>> 飞往棘齿城
.target Tal
.zoneskip Thunder Bluff,1
step
#sticky
#completewith EnterST
.subzone 1417 >> 现在你应该开始寻找前往沉没的神庙的副本队伍
.dungeon ST
step
.goto The Barrens,62.50,38.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.turnin 4502 ,t Volcanic Activity
.turnin 4147 ,t Marvon's Workshop
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.accept 4146 ,a Zapper Fuel
.target Liv Rizzlefix
.isQuestTurnedIn 4147
.dungeon ST
step
.goto The Barrens,65.80,43.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 5158 ,t Seeking Spiritual Aid
.accept 5159 ,a Cleansed Water Returns to Felwood
.target Islen Waterseer
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 56-57 费伍德森林/冬泉谷
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 57-59 西瘟疫之地/东瘟疫之地
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往荆棘谷
.zoneskip Stranglethorn Vale
.dungeon ST
step
.goto Stranglethorn Vale,26.90,77.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格林戈|r
.fly Stonard>> 飞往斯通纳德
.target Gringer
.zoneskip Swamp of Sorrows
.dungeon ST
step
.goto Swamp of Sorrows,47.93,54.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费泽卢尔|r
.accept 1445 ,a The Temple of Atal'Hakkar
.isQuestTurnedIn 1444
.dungeon ST
step << Warrior
.goto Swamp of Sorrows,34.287,66.134
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8425 ,a Voodoo Feathers
.target Fallen Hero of the Horde
.isQuestTurnedIn 8424
.dungeon ST
step
.goto 1415,56.33,76.28
.subzone 1477 >> 前往沉没的神庙
.dungeon ST
step
#completewith next
>> 在沉没的神庙内击杀|cRXP_ENEMY_阿塔莱巨魔|r. 拾取|cRXP_LOOT_哈卡神像|r
>> |cRXP_WARN_神庙内外的巨魔都能掉落|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#label EnterST
.goto 1415,56.33,76.28,40,0
.goto 1415,56.46,75.54,20,0
.goto 1415,56.83,75.86,20,0
.goto 1415,56.94,76.03,15,0
.goto 1415,57.06,75.58,20,0
.goto 1415,56.76,75.35,15,0
.goto 1415,56.809,75.151
.subzone 1477,2 >> 进入沉没的神庙副本
.dungeon ST
step
#sticky
>> 在沉没的神庙内击杀|cRXP_ENEMY_阿塔莱巨魔|r. 拾取|cRXP_LOOT_哈卡神像|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#sticky
>> 击杀|cRXP_ENEMY_神庙深渊潜伏者|r, |cRXP_ENEMY_黑暗虫|r和|cRXP_ENEMY_深色软泥怪|r. 拾取|cRXP_LOOT_阿塔莱之雾|r
>> |cRXP_ENEMY_你可以在进本后向右下台阶后找到这些怪|r
.complete 4146,1 
.isOnQuest 4146
.dungeon ST
step << Druid
#completewith Altar
>> 击杀|cRXP_ENEMY_阿塔拉利恩|r. 拾取|cRXP_LOOT_腐烂藤蔓|r
>> |cRXP_ENEMY_阿塔拉利恩|r|cRXP_WARN_在神庙底层, 你需要通过点击平台上的各个|cRXP_PICK_阿塔莱塑像|r来召唤它|r
.complete 9053,1 
.isOnQuest 9053
.dungeon ST
step 
#completewith next
>> 点击|cRXP_PICK_哈卡祭坛|r
>> |cRXP_WARN_|cRXP_PICK_哈卡祭坛|r位于神庙下层|r
.turnin 3446 ,t Into the Depths
.isOnQuest 3446
.dungeon ST
step 
>> 点击|cRXP_PICK_哈卡神像|r
>> |cRXP_WARN_点击平台上所有的|cRXP_PICK_阿塔莱塑像|r就会激活|r|cRXP_PICK_哈卡神像|r
>> |cRXP_WARN_|cRXP_PICK_哈卡神像|r位于神庙下层|r
.turnin 3447 ,t Secret of the Circle
.isOnQuest 3447
.dungeon ST
step 
#label Altar
>> 点击|cRXP_PICK_哈卡祭坛|r
>> |cRXP_WARN_|cRXP_PICK_哈卡祭坛|r位于神庙下层|r
.turnin 3446 ,t Into the Depths
.isOnQuest 3446
.dungeon ST
step << Druid
>> 击杀|cRXP_ENEMY_阿塔拉利恩|r. 拾取|cRXP_LOOT_腐烂藤蔓|r
>> |cRXP_ENEMY_阿塔拉利恩|r|cRXP_WARN_在神庙下层, 你需要通过点击平台上的各个|cRXP_PICK_阿塔莱塑像|r来召唤它|r
.complete 9053,1 
.isOnQuest 9053
.dungeon ST
step << Shaman/Warrior/Warlock
>> 击杀|cRXP_ENEMY_加什尔|r和|cRXP_ENEMY_祖罗尔|r. 拾取|cRXP_LOOT_琥珀巫毒羽毛|r
>> 击杀|cRXP_ENEMY_米杉|r和|cRXP_ENEMY_胡库|r. 拾取|cRXP_LOOT_蓝色巫毒羽毛|r
>> 击杀|cRXP_ENEMY_祖罗|r和|cRXP_ENEMY_洛若尔|r. 拾取|cRXP_LOOT_绿色巫毒羽毛|r
>> |cRXP_WARN_此任务在沉没的神庙上层完成|r
.complete 8413,1 << Shaman 
.complete 8413,2 << Shaman 
.complete 8413,3 << Shaman 
.complete 8425,1 << Warrior 
.complete 8425,2 << Warrior 
.complete 8425,3 << Warrior 
.complete 8422,1 << Warlock 
.complete 8422,2 << Warlock 
.complete 8422,3 << Warlock 
.isOnQuest 8413 << Shaman
.isOnQuest 8425 << Warrior
.isOnQuest 8422 << Warlock
.dungeon ST
step
>> |cRXP_WARN_在飞龙骨架边上使用|r|T132834:0|t[哈卡之卵]|cRXP_WARN_, 然后完成事件|r
>> 击杀|cRXP_ENEMY_哈卡|r的小怪直到|cRXP_ENEMY_哈卡的化身|r出现
>> 击杀|cRXP_ENEMY_哈卡的化身|r. 拾取|T136148:0|t[|cRXP_LOOT_哈卡精华|r]
>> |cRXP_WARN_使用|r|T136148:0|t[|cRXP_LOOT_哈卡精华|r]|cRXP_WARN_装满|r|T132834:0|t[哈卡之卵]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
.isOnQuest 3528
.dungeon ST
step
>> 击杀|cRXP_ENEMY_‘预言者’迦玛兰|r. 拾取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_你必须击杀上层平台的6只|cRXP_ENEMY_巨魔|r才能解锁|r|cRXP_ENEMY_‘预言者’迦玛兰|r
.complete 1446,1 
.isOnQuest 1446
.dungeon ST
step << Hunter/Mage/Priest/Rogue
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_摩弗拉斯之牙|r << Hunter
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_奥术碎片|r << Mage
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_摩弗拉斯之血|r << Priest
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_碧蓝钥匙|r << Rogue
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.complete 8236,1 << Rogue 
.isOnQuest 8232 << Hunter
.isOnQuest 8253 << Mage
.isOnQuest 8257 << Priest
.isOnQuest 8236 << Rogue
.dungeon ST
step
>> 击杀|cRXP_ENEMY_伊兰尼库斯的阴影|r. 拾取|T135229:0|t[|cRXP_LOOT_伊兰尼库斯精华|r]
>> |cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_伊兰尼库斯精华|r]以开启任务|r
>> |cRXP_WARN_确保你已击杀上层平台的所有|cRXP_ENEMY_龙类|r小怪再击杀|cRXP_ENEMY_伊兰尼库斯的阴影|r, 否则它们都会加入战斗|r
.collect 10454,1,3373,1 
.accept 3373 ,a The Essence of Eranikus
.dungeon ST
step
>> 点击|cRXP_PICK_精华之泉|r
.turnin 3373 ,t The Essence of Eranikus
.isOnQuest 3373
.dungeon ST
step
.zone Swamp of Sorrows >> 离开沉没的神庙副本
step
.goto Swamp of Sorrows,47.93,54.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费泽卢尔|r
.turnin 1445 ,t The Temple of Atal'Hakkar
.isQuestComplete 1445
.dungeon ST
step << Warrior
.goto Swamp of Sorrows,34.287,66.134
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
>> |cRXP_WARN_强烈建议你选择|r|T132788:0|t[|cFF0070FF钻石水瓶|r]|cRXP_WARN_作为奖励. 尽管其他选项也很好, 但也无法替代|r|T132788:0|t[|cFF0070FF钻石水瓶|r]
.turnin 8425 ,t Voodoo Feathers
.target Fallen Hero of the Horde
.isQuestComplete 842
.dungeon ST
step
.hs >> 炉石回陶拉祖营地
.use 6948
.dungeon ST
step
#completewith next
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Un'Goro Crater>> 飞往安戈洛环形山
.target Omusa Thunderhorn
.zoneskip Un'Goro Crater
.isQuestComplete 4145
.dungeon ST
step
.goto Un'Goro Crater,45.53,8.72
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里安|r
.turnin 4145 ,t Zapper Fuel
.target Larion
.isQuestComplete 4145
.dungeon ST
step << Druid
#completewith next
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Un'Goro Crater>> 飞往安戈洛环形山
.target Omusa Thunderhorn
.zoneskip Un'Goro Crater
.isQuestComplete 9053
.dungeon ST
step << Druid
.goto Un'Goro Crater,71.639,75.960
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9053 ,t A Better Ingredient
.target Torwa Pathfinder
.isQuestComplete 9053
.dungeon ST
step
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Tanaris >> 飞往塔纳利斯
.target Omusa Thunderhorn
.subzoneskip 378,1
.isQuestComplete 3528
.dungeon ST
step
#completewith next
.goto Un'Goro Crater,45.23,5.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Tanaris >> 飞往塔纳利斯
.target Gryfe
.subzoneskip 541,1
.isQuestComplete 3528
.dungeon ST
step
.goto Tanaris,66.989,22.354
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 3528 ,t The God Hakkar
.target Yeh'kinya
.isQuestComplete 3528
.dungeon ST
step
.goto Un'Goro Crater,45.23,5.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Azshara >> 飞往艾萨拉
.target Gryfe
.subzoneskip 541,1
.dungeon ST
step
.goto Tanaris,51.60,25.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Azshara >> 飞往艾萨拉
.target Bulkrek Ragefist
.zoneskip Tanaris,1
.dungeon ST
step
.goto The Barrens,44.45,59.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_欧姆萨·雷角|r
.fly Azshara >> 飞往艾萨拉
.target Omusa Thunderhorn
.subzoneskip 378,1
step
.goto Azshara,22.50,51.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.turnin 3562 ,t Magatha's Payment to Jediga
.target Jediga
step
.goto Azshara,22.50,51.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.turnin 3563 ,t Jes'rimon's Payment to Jediga
.target Jediga
step
.goto Azshara,22.50,51.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.accept 3542 ,a Delivery to Andron Gant
.target Jediga
step << Hunter/Priest
.goto Azshara,42.400,42.619
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8232 ,t The Green Drake << Hunter
.turnin 8257 ,t Blood of Morphaz << Priest
.target Ogtinc
.isQuestComplete 8232 << Hunter
.isQuestComplete 8257 << Priest
.dungeon ST
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳斯|r
>> |cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 ,t Meeting with the Master
.target Sanath Lim-yo
.isQuestComplete 8253 << Mage
.isQuestComplete 8236 << Rogue
.dungeon ST
step << Mage/Rogue
.goto Azshara,29.248,40.210
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔上对话|cRXP_FRIENDLY_大法师克希雷姆|r
.turnin 8253 ,t Destroy Morphaz << Mage
.turnin 8236 ,t The Azure Key << Rogue
.target Archamge Xylem
.dungeon ST
.isQuestComplete 8253 << Mage
.isQuestComplete 8236 << Rogue
step << Mage/Rogue
.goto Azshara,26.466,46.271
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼瑞尔|r
>> |cRXP_WARN_这将把你传送下山|r
.turnin 3421 ,t Return Trip
.timer 8,Return Trip RP
.target Nyrill
.dungeon ST
.isQuestTurnedIn 8253 << Mage
.isQuestTurnedIn 8236 << Rogue
step
.goto Azshara,22.00,49.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克隆姆|r
.fly Felwood>> 飞往费伍德森林
.target Kroum
.zoneskip Felwood
step
.goto Felwood,34.30,52.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温娜·哈萨德|r
.accept 4506 ,a Corrupted Sabers
.target Winna Hazzard
step
.goto Felwood,34.80,52.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特卢尔·法贝恩|r
.accept 4521 ,a Wild Guardians
.target Trull Failbane
step << Warlock
.goto Felwood,41.52,44.99
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.turnin 8422 ,t Trolls of a Feather
.target Impsy
.isQuestComplete 8422
.dungeon ST
step
#completewith next
.subzone 2479 >> 前往翡翠圣地
step
.goto Felwood,51.20,82.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5159 ,t Cleansed Water Returns to Felwood
.target Greta Mosshoof
step
.goto Felwood,51.20,82.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5165 ,a Dousing the Flames of Protection
.target Greta Mosshoof
.group
step
.goto Felwood,46.70,83.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝丝·河风|r
>> |cRXP_WARN_选择:|r "我需要一个塞纳里奥信标"
.accept 5887 ,a Salve via Hunting
.collect 11511,1,5882,1 
.target Maybess Riverbreeze
step
#completewith eStart
.goto Felwood,35.367,58.376
.subzone 1770 >> 前往加德纳尔内的暗影堡
.group
step
#sticky
#label SoulShards
>> 收集|cRXP_LOOT_被污染的灵魂碎片|r. 所有费伍德森林的小怪都有几率掉落
.complete 5887,1 
step
#completewith next
>> 点击4个地上的|cRXP_PICK_火盆|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
.group 2
step
>> 击杀|cRXP_ENEMY_加德纳尔执行者|r, |cRXP_ENEMY_加德纳尔暗法师|r, |cRXP_ENEMY_加德纳尔术士|r和|cRXP_ENEMY_加德纳尔军团士兵|r. 拾取|T134235:0|t[|cRXP_LOOT_血红钥匙|r]
>> |cRXP_WARN_使用|r|T134235:0|t[|cRXP_LOOT_血红钥匙|r]|cRXP_WARN_开启任务|r
>> |cRXP_WARN_这将开始一个护送任务. 即使没完成灭火盆任务也做这个护送|r
.collect 13140,1,5202 
.accept 5202 ,a A Strange Red Key
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
.group 2
step
#label eStart
.goto Felwood,36.207,55.465
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_被俘虏的亚科纳琳|r
.turnin 5202 ,t A Strange Red Key
.accept 5203 ,a Rescue From Jaedenar
.target Captured Arko'narin
.group 2
step
#completewith next
>> 点击4个地上的|cRXP_PICK_火盆|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
.group 2
step
.goto Felwood,35.44,59.01
>> 护送|cRXP_FRIENDLY_亚科纳琳|r穿越暗影堡. 在|cRXP_FRIENDLY_亚科纳琳|r穿上装备后, 击杀3只刷新出来的|cRXP_ENEMY_恶魔守卫|r
>> |cRXP_FRIENDLY_亚科纳琳|r|cRXP_WARN_有6,000血; 让她坦住小怪. 在你前往入口的路上灭完火盆|r
>> 一旦|cRXP_FRIENDLY_亚科纳琳|r离开暗影堡, |cRXP_ENEMY_特雷·莱弗治之灵|r就会刷出来. 杀了他
>> |cRXP_WARN_小心ADD. 他会一个500伤害的震击技能并且A人非常疼. 如果有CD的话, 把你所有的防御技能都用在这|r
.complete 5203,1 
.group 2
step
>> 点击4个地上的|cRXP_PICK_火盆|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
.group 2
step
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.40,66.60
.use 12565 >> 在腐化的月亮井处使用|T132599:0|t[温娜的猫笼]
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >> 前往血毒岗哨
step
.goto Felwood,34.20,52.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t靠近|cRXP_FRIENDLY_温娜·哈萨德|r, 然后对话|cRXP_FRIENDLY_温娜·哈萨德|r
.turnin 4506 ,t Corrupted Sabers
.target Winna Hazzard
.skipgossip
step
#completewith next
.goto Felwood,64.70,8.10,70 >> 前往木喉要塞入口
step
.goto Felwood,64.70,8.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
.accept 8461 ,a Deadwood of the North
.target Nafien
step
#completewith next
.goto Felwood,62.68,8.06,0
>> 击杀|cRXP_ENEMY_死木守卫|r, |cRXP_ENEMY_死木复仇者|r和|cRXP_ENEMY_死木萨满|r
>> |cRXP_WARN_优先击杀|r|cRXP_ENEMY_死木复仇者|r|cRXP_WARN_. 如果你拉了多只, 他会在其他附近熊怪死亡时激怒|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Shaman
.mob Deadwood Avenger
step
.goto Felwood,60.20,5.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_死木蒸锅|r
.turnin 5084 ,t Falling to Corruption
.accept 5085 ,a Mystery Goo
step
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01,50,0
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01
>> 击杀|cRXP_ENEMY_死木守卫|r, |cRXP_ENEMY_死木复仇者|r和|cRXP_ENEMY_死木萨满|r
>> |cRXP_WARN_优先击杀|r|cRXP_ENEMY_死木复仇者|r|cRXP_WARN_. 如果你拉了多只, 他会在其他熊怪死亡时激怒|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Shaman
.mob Deadwood Avenger
step
.goto Felwood,64.70,8.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
.turnin 8461 ,t Deadwood of the North
.accept 8465 ,a Speak to Salfa
.target Nafien
step
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >> 通过木喉要塞前往冬泉谷
step
.goto Felwood,68.30,6.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔法|r
.turnin 8465 ,t Speak to Salfa
.accept 8464 ,a Winterfall Activity
.target Salfa
step
.goto Winterspring,31.30,45.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 980 ,t The New Springs
.accept 4842 ,a Strange Sources
.turnin 3909 ,t The Videre Elixir 
.accept 3912 ,a Meet at the Grave 
.turnin 5085 ,t Mystery Goo
.accept 5086 ,a Toxic Horrors
.target Donova Snowden









step
#completewith Ursius
>> 在你前往永望镇的路上, 击杀|cRXP_ENEMY_蓬毛枭兽|r
.complete 4521,2 
.mob Ragged Owlbeast
step
.goto Winterspring,61.36,38.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维兹奇|r
.home >> 绑定炉石到永望镇
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.88,37.61
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.accept 3783 ,a Are We There, Yeti?
.target Umi Rumplesnicker
step
.loop 25,Winterspring,57.8,34.6,56.6,32.4,56.0,28.6,58.8,27.4,60.6,29.8,59.6,31.4,60.6,33.6,58.6,33.2,57.8,34.6
>> 击杀|cRXP_ENEMY_蓬毛枭兽|r
.complete 4521,2 
.mob Ragged Owlbeast
step
#completewith ROwlbeasts
>> 击杀所有类型的|cRXP_ENEMY_冰蓟雪人|r. 拾取|cRXP_LOOT_毛皮|r
>> |cRXP_WARN_不要专注于此; 你可以稍后再来完成|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
#label ROwlbeasts
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41,70,0
.goto Winterspring,56.06,27.83,70,0
.goto Winterspring,55.97,30.25,70,0
.goto Winterspring,55.10,32.16,70,0
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41
>> 击杀|cRXP_ENEMY_狂怒的枭兽|r
.complete 4521,1 
.mob Raging Owlbeast
step
.loop 25,Winterspring,66.5,41.7,64.9,40.2,65.9,43.6,66.2,45.8,67.6,45.6,67.6,43.8,67.2,43.0,67.6,41.9,68.4,41.5,69.00,41.3,69.5,40.0,69.8,41.8,70.1,42.0,70.3,40.8,71.3,40.8,71.8,39.8,70.5,38.3,71.8,39.8,71.3,40.8,70.3,40.8,69.5,40.0,69.00,41.3,68.4,41.5,66.5,41.7
>> 击杀所有类型的|cRXP_ENEMY_冰蓟雪人|r. 拾取|cRXP_LOOT_毛皮|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step << Shaman
#completewith next
.hs >> 炉石或者星界传送回永望镇
step
.goto Winterspring,60.88,37.61
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.turnin 3783 ,t Are We There, Yeti?
.target Umi Rumplesnicker
step
.goto Winterspring,61.36,38.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.47,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>> 飞往费伍德森林
.target Yugrek
.zoneskip Felwood
step
.goto Felwood,34.70,52.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特卢尔·法贝恩|r
.turnin 4521 ,t Wild Guardians
.accept 4741 ,a Wild Guardians
.target Trull Failbane
step 
.goto Felwood,34.42,53.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布拉卡尔|r
.fly Tanaris>> 飞往塔纳利斯
.target Brakkar
.zoneskip Tanaris
step
.goto Tanaris,53.90,23.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加里杨|r
.turnin 3912 ,t Meet at the Grave 
.accept 3913 ,a A Grave Situation 
.target Gaeriyan
step
.goto Tanaris,53.80,29.10
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_明显的墓碑|r
.turnin 3913 ,t A Grave Situation 
.accept 3914 ,a Linken's Sword 
step
.goto Tanaris,51.60,25.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Un'Goro Crater >> 飞往安戈洛环形山
.target Bulkrek Ragefist
.zoneskip Un'Goro Crater
step
.goto Tanaris,13.10,6.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3914 ,t Linken's Sword 
.accept 3941 ,a A Gnome's Assistance 
.target Linken
step
.goto Tanaris,11.60,3.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.turnin 3941 ,t A Gnome's Assistance 
.accept 3942 ,a Linken's Memory 
.target J.D. Collie
step << Druid
#completewith DruidTraining9
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9857 >> 学习职业技能
.target Loganaar
.xp <54,1
.xp >56,1
step << Druid
#label DruidTraining9
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 22829 >> 学习职业技能
.target Loganaar
.xp <56,1
step
#completewith next
.hs >> 炉石回冬泉谷
.use 6948
.zoneskip Winterspring
step
.goto Winterspring,61.36,38.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,61.34,38.97
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷戈·格雷斯通|r
.accept 6029 ,a The Everlook Report
.accept 6030 ,a Duke Nicholas Zverenhoff
.accept 5601 ,a Sister Pamela
.target Gregor Greystone
step
.loop 25,Winterspring,63.6,22.6,63.4,20.8,65.2,19.6,63.6,16.2,65.2,19.6,66.0,18.6,66.6,21.4,66.8,24.6,65.4,22.6,63.6,22.6
>> 击杀|cRXP_ENEMY_月光枭兽|r
>> |cRXP_WARN_他们的月火术打人很疼并且他们的回春术也很厉害|r
.complete 4741,1 
.mob Moontouched Owlbeast
step
.goto Winterspring,60.09,73.34
>> 前往暗语峡谷的边界处
.complete 4842,1 
step
#completewith next
.subzone 2255 >> 前往永望镇
step
.goto Winterspring,60.47,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>> 飞往费伍德森林
.target Yugrek
.zoneskip Felwood
step
.goto Felwood,34.70,52.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特卢尔·法贝恩|r
.turnin 4741 ,t Wild Guardians
.accept 4721 ,a Wild Guardians
.target Trull Failbane
step
#requires SoulShards
.goto Felwood,46.70,83.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝丝·河风|r
.turnin 5887 ,t Salve via Hunting
.target Maybess Riverbreeze
step
#completewith LeaveFelwood
+从此刻开始你可以净化地上的|cRXP_PICK_被腐化的轻歌花|r了. 在净化后, 点击|cRXP_PICK_被腐化的轻歌花|r将会获得一个提高5%暴击并且提高所有属性15点, 持续1小时的Buff
>> 此步需要你使用2个|T132804:0|t[塞纳里奥植物药膏]
step
.goto Felwood,51.20,82.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5165 ,t Dousing the Flames of Protection
.accept 5242 ,a A Final Blow
.target Greta Mosshoof
.isQuestComplete 5165
.group
step
.goto Felwood,51.20,82.10
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5242 ,a A Final Blow
.target Greta Mosshoof
.isQuestTurnedIn 5165
.group
step
.goto Felwood,51.30,82.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5203 ,t Rescue From Jaedenar
.accept 5204 ,a Retribution of the Light
.target Jessir Moonbow
.isQuestComplete 5203
.group
step
.goto Felwood,51.30,82.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰希尔·月弓|r
.accept 5204 ,a Retribution of the Light
.target Jessir Moonbow
.isQuestTurnedIn 5203
.group
step
.goto Felwood,51.30,81.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 ,t Linken's Memory 
.accept 4084 ,a Silver Heart 
.target Eridan Bluewind
step
#completewith ShadowLordFelidan
.goto Felwood,35.367,58.376
.subzone 1770 >> 前往加德纳尔内的暗影堡
.group
step
#completewith ShadowLordFelidan
>> 击杀|cRXP_ENEMY_魔爪狼|r和|cRXP_ENEMY_怒爪熊|r. 拾取|cRXP_LOOT_爪子|r
>> 击杀|cRXP_ENEMY_铁木树人|r. 拾取|cRXP_LOOT_心|r
.complete 4084,1 
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Angerclaw Mauler
.mob Angerclaw Grizzly
.mob Angerclaw Bear
.mob Felpaw Wolf
.mob Felpaw Scavenger
.mob Felpaw Ravager
step
.goto Felwood,35.39,58.74,30,0
.goto Felwood,38.30,50.50
>> 深入暗影堡, 然后击杀|cRXP_ENEMY_拉凯雅|r
.complete 5204,1 
.unitscan Rakaiah
.group 2
step
.goto Felwood,38.50,50.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特雷·莱弗治的残骸|r
>> |cRXP_WARN_残骸周围的小怪可能会出bug让你一直在战斗中, 尽管不攻击你|r
.turnin 5204 ,t Retribution of the Light
.accept 5385 ,a The Remains of Trey Lightforge
.target Remains of Trey Lightforge
.isQuestTurnedIn 5203
.group
step
#label ShadowLordFelidan
.goto Felwood,38.90,46.80
>> 击杀|cRXP_ENEMY_暗影领主费尔丹|r, |cRXP_ENEMY_米莱恩|r和|cRXP_ENEMY_萨莉亚|r. 拾取|cRXP_ENEMY_暗影领主费尔丹|r获取他的|cRXP_LOOT_头|r
>> |cRXP_WARN_卡视角来躲暗影领主费尔丹的暗影箭. 当他开始放技能时, 躲出他的视线. 一旦他的施法结束/失败, 站回到他的视野中. 这样他就又会开始施法/不要跟他太近了|r
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
.mob Moora
.mob Salia
.unitscan Shadow Lord Felidan
.group 2
step
#completewith next
.goto Felwood,38.72,46.77
.goto Felwood,49.57,30.76,30 >> 进行登出跳过操作来传送出暗影堡(已修复)
.link https://youtu.be/SWBtPqm5M0Q?t=128 >> |cRXP_WARN_点击此处获取示范|r
step
.loop 25,Felwood,49.6,30.0,46.4,24.6,49.2,19.8,53.0,20.4,52.0,24.8,49.6,30.0
>> 击杀|cRXP_ENEMY_铁木树人|r. 拾取|cRXP_LOOT_心脏|r
.complete 4084,2 
.mob Irontree Stomper
.mob Irontree Wanderer
step
.goto Felwood,50.87,23.72,50,0
.goto Felwood,49.44,23.39,50,0
.goto Felwood,48.86,24.80,50,0
.goto Felwood,49.76,27.29,50,0
.goto Felwood,50.87,23.72,50,0
.goto Felwood,49.44,23.39
>> 击杀|cRXP_ENEMY_剧毒之水|r. 拾取|cRXP_LOOT_水滴|r
.complete 5086,1 
.mob Toxic Horror
step
.goto Felwood,53.75,28.06,90,0
.goto Felwood,58.03,17.83,90,0
.goto Felwood,63.27,19.15
>> 击杀|cRXP_ENEMY_魔爪狼|r和|cRXP_ENEMY_怒爪熊|r. 拾取|cRXP_LOOT_爪子|r
.complete 4084,1 
.mob Angerclaw Mauler
.mob Angerclaw Grizzly
.mob Angerclaw Bear
.mob Felpaw Wolf
.mob Felpaw Scavenger
.mob Felpaw Ravager
step
#label LeaveFelwood
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >> 通过木喉要塞前往冬泉谷
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 ,t Strange Sources
.turnin 5086 ,t Toxic Horrors
.accept 5087 ,a Winterfall Runners
.target Donova Snowden
step
.goto Winterspring,67.96,37.54,40,0
.goto Winterspring,66.16,33.66,40,0
.goto Winterspring,64.37,32.06,40,0
.goto Winterspring,62.41,25.53,40,0
.goto Winterspring,61.97,23.00,40,0
.goto Winterspring,57.30,28.05,40,0
.goto Winterspring,54.07,30.98,40,0
.goto Winterspring,53.49,34.13,40,0
.goto Winterspring,47.81,39.23,40,0
.goto Winterspring,39.36,41.28,40,0
.goto Winterspring,30.12,42.57,40,0
.goto Winterspring,28.01,34.60
>> 击杀|cRXP_ENEMY_冬泉信使|r
>> |cRXP_WARN_他们在木喉要塞和永望镇西北方的寒水村之间的路上游荡. 另外你也可以从通道跑回费伍德森林, 并在魔爪村的大锅处击杀信使|r
.complete 5087,1 
.unitscan Winterfall Runner
.zoneskip Felwood
step
.goto Felwood,60.20,5.90
>> 击杀|cRXP_ENEMY_冬泉信使|r
>> |cRXP_WARN_信使在魔爪村西北方位的大锅处|r
.complete 5087,1 
.unitscan Winterfall Runner
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5087 ,t Winterfall Runners
.target Donova Snowden
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5121 ,a High Chief Winterfall
.target Donova Snowden
.group
step << !Mage
.goto Winterspring,60.47,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>> 飞往费伍德森林
.target Yugrek
.zoneskip Felwood
step << Mage
#completewith next
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >> 飞往碎木岗哨
.target Doras
.zoneskip Ashenvale
step
#completewith next
.subzone 2479 >> 前往翡翠圣地
step
.goto Felwood,51.35,81.51
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 ,t Silver Heart 
.target Eridan Bluewind
step
.goto Felwood,51.23,82.15
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5242 ,t A Final Blow
.target Greta Mosshoof
.isQuestComplete 5242
.group
step
.goto Felwood,51.35,82.01
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5385 ,t The Remains of Trey Lightforge
.target Jessir Moonbow
.isQuestTurnedIn 5204
.group
step << !Mage
#completewith next
.subzone 431 >> 前往碎木岗哨
step << !Mage
.goto Ashenvale,73.18,61.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25乌尔格拉|r
.fly Orgrimmar>> 飞往奥格瑞玛
.target Vhulgra
.zoneskip Orgrimmar
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10157 >> 学习职业技能
.target Pephredo
.xp <56,1
.xp >58,1
step << Mage
.goto Orgrimmar,38.36,85.54
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 10054 >> 学习职业技能
.target Pephredo
.xp <58,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10929 >> 学习职业技能
.target Ur'kyo
.xp <56,1
.xp >58,1
step << Priest
.goto Orgrimmar,35.59,87.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 10947 >> 学习职业技能
.target Ur'kyo
.xp <58,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10432 >> 学习职业技能
.target Kardris Dreamseeker
.xp <56,1
.xp >58,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10473 >> 学习职业技能
.target Kardris Dreamseeker
.xp <58,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 20662 >> 学习职业技能
.target Grezz Ragefist
.xp <56,1
.xp >58,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
.train 11597 >> 学习职业技能
.target Grezz Ragefist
.xp <58,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11689 >> 学习职业技能
.target Mirket
.xp <56,1
.xp >58,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11713 >> 学习职业技能
.target Mirket
.xp <58,1
step << Warlock
.goto Orgrimmar,47.55,46.77
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25库古尔|r
.vendor >> 升级你的宠物技能
.target Kurgul
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11300 >> 学习职业技能
.target Ormok
.xp <56,1
.xp >58,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 11305 >> 学习职业技能
.target Ormok
.xp <58,1
step << Rogue
.goto Orgrimmar,42.09,49.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25雷库尔|r
.vendor >> 购买更多的|cRXP_BUY_闪光粉和毒药|r, 如果有必要的话
.target Rekkul
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14305 >> 学习职业技能
.target Ormak Grimshot
.xp <56,1
.xp >58,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥玛克|r
.train 14322 >> 学习职业技能
.target Ormak Grimshot
.xp <58,1
step
.goto Orgrimmar,55.60,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 4300 ,t Bone-Bladed Weapons
.target Jes'rimon
.isQuestComplete 4300
step << Mage
#completewith next
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >> |cRXP_BUY_购买至少2个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Tirisfal Glades >> 乘坐飞艇前往提瑞斯法林地
.zoneskip Tirisfal Glades
step << Shaman
#completewith next
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.isQuestComplete 8413
.dungeon ST
step << Shaman
.goto Alterac Mountains,80.50,66.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 8413 ,t Da Voodoo
.target Bath'rah the Windwatcher
.isQuestComplete 8413
.dungeon ST
step
#completewith next
.goto Undercity,63.27,48.55
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克·加勒特|r
.fly Tarren Mill >> 飞往塔伦米尔
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.zoneskip Alterac Mountains
.isQuestComplete 1446
.dungeon ST
step
.goto The Hinterlands,33.751,75.210
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1446 ,t Jammal'an the Prophet
.target Atal'ai Exile
.isQuestComplete 1446
.dungeon ST
step
.goto Hillsbrad Foothills,60.14,18.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札瑞斯|r
.fly Undercity >> 飞往幽暗城
.target Zarise
.zoneskip Undercity
.zoneskip Tirisfal Glades
.dungeon ST
step
.abandon 1446 ,ab Jammal'an the Prophet
.isOnQuest 1446
.dungeon ST
step
.abandon 3447 ,ab Secret of the Circle
.isOnQuest 3447
.dungeon ST
step
.abandon 3528 ,ab God Hakkar
.isOnQuest 3528
.dungeon ST
step
.abandon 4146 ,ab Zapper Fuel
.isOnQuest 4146
.dungeon ST
step
.abandon 1445 ,ab Temple of Atal'Hakkar
.isOnQuest 1445
.dungeon ST
step
.abandon 5165 ,ab Dousing the Flames of Protection
.isOnQuest 5165
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 57-59 西瘟疫之地/东瘟疫之地
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 59-59 冬泉谷/希利苏斯 I
step
#completewith next
.subzone 152 >> 前往亡灵壁垒
step
.goto Tirisfal Glades,83.15,68.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t前往亡灵壁垒, 然后对话|cRXP_FRIENDLY_高阶执行官德灵顿|r
.turnin 5095 ,t A Call to Arms: The Plaguelands!
.accept 5096 ,a Scarlet Diversions
.target High Executor Derrington
step
.goto Western Plaguelands,26.55,56.18
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击火堆边的|cRXP_PICK_火岩箱|r
.collect 12814,1 
step
.goto Tirisfal Glades,83.19,68.45
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_银色黎明军官加鲁什|r
.turnin 6029 ,t The Everlook Report
.turnin 5405 ,t Argent Dawn Commission
.target Argent Officer Garush
step
.goto Tirisfal Glades,83.30,72.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米克·莱文|r
.accept 5901 ,a A Plague Upon Thee
.target Mickey Levine
step 
.goto Western Plaguelands,40.5,51.8
.use 12807 >> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_指挥帐篷|r, 然后使用你的|T132484:0|t[天灾战旗]
>> |cRXP_WARN_这些小怪相对比较难并且容易联动, 所以请谨慎一点|r
.complete 5096,1 
step
.goto Tirisfal Glades,83.15,68.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官德灵顿|r
.turnin 5096 ,t Scarlet Diversions
.accept 5098 ,a All Along the Watchtowers
.accept 5228 ,a The Scourge Cauldrons
.target High Executor Derrington
step
.goto Tirisfal Glades,83.03,71.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5228 ,t The Scourge Cauldrons
.accept 5229 ,a Target: Felstone Field
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,37.12,57.18
>> 击杀|cRXP_ENEMY_护锅领主拜尔摩|r. 拾取他的|cRXP_LOOT_瘟疫之锅钥匙|r
.complete 5229,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.2,56.8
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击在台子上沸腾的|cRXP_PICK_天灾大锅|r
.turnin 5229 ,t Target: Felstone Field
.accept 5230 ,a Back to the Bulwark
step
.goto Western Plaguelands,38.40,54.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在房屋2层对话|cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.accept 5021 ,a Better Late Than Never
.target Janice Felstone
step
.goto Western Plaguelands,38.8,55.3
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在谷仓里点击|cRXP_PICK_詹妮丝的包裹|r
>> |cRXP_WARN_如果你想跳过里面的小怪, 可以穿过走廊墙壁点到它|r
.turnin 5021 ,t Better Late Than Never
.accept 5023 ,a Better Late Than Never
step
#completewith next
.subzone 152 >> 返回亡灵壁垒
step
.goto Tirisfal Glades,83.03,71.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5230 ,t Back to the Bulwark
.accept 5231 ,a Target: Dalson's Tears
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,46.04,52.33
>> 击杀|cRXP_ENEMY_护锅领主玛维诺斯|r. 拾取他的|cRXP_LOOT_瘟疫之锅钥匙|r
.complete 5231,1 
.unitscan Cauldron Lord Malvinious
step
.goto Western Plaguelands,46.2,52.0
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击在台子上沸腾的|cRXP_PICK_天灾大锅|r
.turnin 5231 ,t Target: Dalson's Tears
.accept 5232 ,a Back to the Bulwark
step
.goto Western Plaguelands,47.8,50.6
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_达尔松夫人的日记|r
.turnin 5058 ,t Mrs. Dalson's Diary
step
.goto Western Plaguelands,47.49,51.00
>> 击杀|cRXP_ENEMY_游荡的骷髅|r. 拾取它的|cRXP_LOOT_厕所钥匙|r
>> |cRXP_WARN_如果它没刷出来就刷白骨碎片|r
.collect 12738,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.2,49.7
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_厕所|r
.turnin 5059 ,t Locked Away
step
.goto Western Plaguelands,48.2,49.7
>> 击杀|cRXP_ENEMY_农夫达尔松|r. 拾取他的|cRXP_LOOT_橱柜钥匙|r
>> |cRXP_WARN_此小怪会痛击和激怒. 请非常小心|r
.collect 12739,1,5060 
.unitscan Farmer Dalson
step
.goto Western Plaguelands,47.4,49.7
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在房屋的顶层点击|cRXP_PICK_锁住的柜橱|r
.turnin 5060 ,t Locked Away
step
.goto Western Plaguelands,39.46,66.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_克罗米|r
.accept 4971 ,a A Matter of Time
.target Chromie
.group
step
.goto Western Plaguelands,40.15,71.50
.use 12815 >> 在哨塔门口的外面角落里使用你的|T135432:0|t[信号火炬]
>> |cRXP_WARN_不要引到里面的精英|r
.complete 5098,1 
step
.goto Western Plaguelands,42.28,66.05
.use 12815 >> 在哨塔门口的外面角落里使用你的|T135432:0|t[信号火炬]
>> |cRXP_WARN_不要引到里面的精英|r
.complete 5098,2 
step
.goto Western Plaguelands,44.24,63.06
.use 12815 >> 在哨塔门口的外面角落里使用你的|T135432:0|t[信号火炬]
>> |cRXP_WARN_不要引到里面的精英|r
.complete 5098,3 
step
.goto Western Plaguelands,45.8,63.3
.use 12627 >> 通过在闪光的筒仓附近使用你的|T134229:0|t[时光置换器]来刷出|cRXP_ENEMY_时光寄生虫|r
>> |cRXP_WARN_时光寄生虫刷的慢并且可能在寄生虫死亡时刷出新的. 如果你打不过的话随时准备跳到水里去; 它们不会游泳|r
.complete 4971,1 
.mob Temporal Parasite
.group 2
step
.goto Western Plaguelands,46.73,71.14
.use 12815 >> 在哨塔门口的外面角落里使用你的|T135432:0|t[信号火炬]
>> |cRXP_WARN_不要引到里面的精英|r
.complete 5098,4 
step
#completewith next
.subzone 152 >> 返回亡灵壁垒
step
.goto Tirisfal Glades,83.03,71.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5232 ,t Back to the Bulwark
.accept 5233 ,a Target: Writhing Haunt
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.15,68.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官德灵顿|r
.turnin 5098 ,t All Along the Watchtowers
.accept 838 ,a Scholomance
.target High Executor Derrington
step
.goto Tirisfal Glades,83.28,69.23
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 838 ,t Scholomance
.accept 964 ,a Skeletal Fragments
.target Apothecary Dithers
step
.goto Western Plaguelands,39.46,66.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_克罗米|r
.turnin 4971 ,t A Matter of Time
.accept 4972 ,a Counting Out Time
.target Chromie
.isQuestComplete 4971
.group
step
.goto Western Plaguelands,39.46,66.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_克罗米|r
.accept 4972 ,a Counting Out Time
.target Chromie
.isQuestTurnedIn 4971
.group
step
#completewith next
>> 在建筑废墟中拾取|cRXP_PICK_小箱子|r获取|cRXP_LOOT_安多哈尔怀表|r
.complete 4972,1 
.isOnQuest 4972
.group
step
.goto Western Plaguelands,45.8,65.8,40,0
.loop 25,Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
>> 在安多哈尔击杀所有的|cRXP_ENEMY_骷髅|r. 拾取|cRXP_LOOT_碎片|r
>> |cRXP_ENEMY_骷髅刽子手|r|cRXP_WARN_会斩杀|r
.complete 964,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
.mob Skeletal Warlord
.mob Skeletal Sorcerer
.mob Skeletal Flayer
.mob Skeletal Terror
step
.loop 25,Western Plaguelands,40.4,66.5,38.9,68.1,41.3,69.8,42.8,73.9,43.6,73.4,45.1,73.7,46.5,73.0,44.8,70.5,42.9,68.5,40.9,67.2,40.4,66.5
>> 在建筑废墟中拾取|cRXP_PICK_小箱子|r获取|cRXP_LOOT_安多哈尔怀表|r
.complete 4972,1 
.isOnQuest 4972
.group
step
.goto Western Plaguelands,39.46,66.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_克罗米|r
.turnin 4972 ,t Counting Out Time
.target Chromie
.isQuestComplete 4972
.group
step
.goto Western Plaguelands,53.07,65.97
>> 击杀|cRXP_ENEMY_护锅领主拉札奇|r. 拾取他的|cRXP_LOOT_瘟疫之锅钥匙|r
>> |cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会1个持续5秒的顺发AOE眩晕技能|r
.complete 5233,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.0,65.7
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击在台子上沸腾的|cRXP_PICK_天灾大锅|r
>> |cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会1个持续5秒的顺发AOE眩晕技能|r
.turnin 5233 ,t Target: Writhing Haunt
.accept 5234 ,a Back to the Bulwark
step
.goto Western Plaguelands,53.73,64.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子里对话|cRXP_FRIENDLY_穆格雷斯·深水|r
>> |cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会1个持续5秒的顺发AOE眩晕技能|r
.accept 4984 ,a The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith Businessman
>> 击杀|cRXP_ENEMY_染病的狼|r
>> |cRXP_ENEMY_染病的狼|r|cRXP_WARN_与|r|cRXP_ENEMY_腐虫潜伏者|r|cRXP_WARN_共享刷新. 如果有必要的话, 击杀他们来刷新区域|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,51.92,28.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6004 ,a Unfinished Business
.target Kirsta Deepshadow
step
#completewith next
>> 击杀|cRXP_ENEMY_血色法师|r和|cRXP_ENEMY_血色骑士|r
>> |cRXP_ENEMY_法师|r|cRXP_WARN_和|r|cRXP_ENEMY_骑士|r|cRXP_WARN_共享刷新. 如果有必要的话, 击杀他们来刷新区域|r
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12,70,0
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Mage
.mob Scarlet Knight
step
>> 击杀|cRXP_ENEMY_血色医师|r和|cRXP_ENEMY_血色猎人|r
>> |cRXP_ENEMY_医师|r|cRXP_WARN_和|r|cRXP_ENEMY_猎人|r|cRXP_WARN_能在营地中找到. 如果有必要的话, 击杀他们来刷新区域|r
.goto Western Plaguelands,51.77,44.13,70,0
.goto Western Plaguelands,40.83,52.30,70,0
.goto Western Plaguelands,47.35,51.54,0
.goto Western Plaguelands,51.77,44.13
.complete 6004,1 
.complete 6004,2 
.mob Scarlet Medic
.mob Scarlet Hunter
step
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12
>> 完成击杀|cRXP_ENEMY_血色法师|r和|cRXP_ENEMY_血色骑士|r
>> |cRXP_ENEMY_法师|r|cRXP_WARN_和|r|cRXP_ENEMY_骑士|r|cRXP_WARN_共享刷新. 如果有必要的话, 击杀他们来刷新区域|r
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Mage
.mob Scarlet Knight
step
.goto Western Plaguelands,51.92,28.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6004 ,t Unfinished Business
.accept 6023 ,a Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,57.83,36.10
>> 击杀|cRXP_ENEMY_猎人莱德雷|r
>> |cRXP_WARN_她周围的小怪很容易add. 血色缚法者会冰霜新星|r
.complete 6023,1 
.unitscan Huntsman Radley
step
.goto Western Plaguelands,54.64,23.71
>> 击杀|cRXP_ENEMY_骑士杜尔根|r
>> |cRXP_WARN_如果你等他巡逻到塔底在打他会让这场战斗容易很多. 他会顺发持续5s的眩晕|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
#label Businessman
.goto Western Plaguelands,51.92,28.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 ,t Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.0,36.8,40,0
.loop 25,Western Plaguelands,46.8,39.6,45.8,46.4,43.4,54.8,46.0,59.2,51.6,61.6,51.0,53.2,50.0,46.6,47.8,43.4,46.8,39.6
>> 击杀|cRXP_ENEMY_染病的狼|r
>> |cRXP_ENEMY_染病的狼|r|cRXP_WARN_与|r|cRXP_ENEMY_腐虫潜伏者|r|cRXP_WARN_共享刷新. 如果有必要的话, 击杀他们来刷新区域|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,53.73,64.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4984 ,t The Wildlife Suffers Too
.accept 4985 ,a The Wildlife Suffers Too
.target Mulgris Deepriver
step
.loop 25,Western Plaguelands,57.0,60.8,58.6,53.8,55.2,50.4,58.6,53.8,66.2,47.4,66.0,55.6,66.2,47.4,58.6,53.8,55.2,50.4,58.6,53.8,57.0,60.8
>> 击杀|cRXP_ENEMY_染病的灰熊|r
>> |cRXP_ENEMY_染病的灰熊|r|cRXP_WARN_与|r|cRXP_ENEMY_瘟疫潜伏者|r|cRXP_WARN_共享刷新. 如果有必要的话, 击杀他们来刷新区域|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.73,64.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4985 ,t The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith next
.goto Eastern Plaguelands,7.48,43.67,50 >> 前往东瘟疫之地的|cRXP_FRIENDLY_提里恩·弗丁|r处
step
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.accept 5542 ,a Demon Dogs
.accept 5543 ,a Blood Tinged Skies
.accept 5544 ,a Carrion Grubbage
.target Tirion Fordring
step
#completewith WormMeat
>> 击杀|cRXP_ENEMY_食腐虫|r. 拾取|cRXP_LOOT_肉块|r
.complete 5544,1 
.mob Carrion Worm
step
#completewith Pamela
>> 击杀|cRXP_ENEMY_瘟疫蝙蝠|r和|cRXP_ENEMY_瘟疫幼犬|r
.complete 5543,1 
.complete 5542,1 
.mob Plaguebat
.mob Plaguehound Runt
step
.goto Eastern Plaguelands,26.54,74.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.accept 6042 ,a Un-Life's Little Annoyances
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,36.46,90.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_帕米拉|r
.turnin 5601 ,t Sister Pamela
.accept 5149 ,a Pamela's Doll
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.25,92.23,40,0
.goto Eastern Plaguelands,39.58,92.60,40,0
.goto Eastern Plaguelands,39.63,90.12
>> 在建筑废墟的地上拾取3个|cRXP_PICK_洋娃娃零件|r
>> |cRXP_WARN_点击洋娃娃部件会刷新一些|r|cRXP_ENEMY_往日的鬼魂|r|cRXP_WARN_他们会冰甲术和冰霜震击|r
.collect 12886,1 
.collect 12887,1 
.collect 12888,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,36.4,90.8
.use 12886 >> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|T134164:0|t[帕米拉的洋娃娃的脑袋]以合成3个部件
.complete 5149,1 
step
#label Pamela
.goto Eastern Plaguelands,36.46,90.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_帕米拉|r
.turnin 5149 ,t Pamela's Doll
.accept 5152 ,a Auntie Marlene
.accept 5241 ,a Uncle Carlin
.target Pamela Redpath
step
.loop 25,Eastern Plaguelands,42.6,83.4,45.6,81.6,48.8,77.6,53.0,77.8,54.6,75.4,48.0,70.4,43.4,73.8,41.8,69.4,36.6,69.6,34.4,74.8,31.0,75.4,30.6,70.4,29.2,65.6,24.4,66.6,20.2,65.4,16.0,64.6,18.6,70.6,15.4,75.6,17.6,79.4,22.0,79.4,25.4,87.4,32.4,84.8,36.6,82.6,42.6,83.4
>> 击杀|cRXP_ENEMY_瘟疫蝙蝠|r和|cRXP_ENEMY_瘟疫幼犬|r
.complete 5543,1 
.complete 5542,1 
.mob Plaguebat
.mob Plaguehound Runt
step
.loop 25,Eastern Plaguelands,45.6,66.6,46.6,63.8,49.6,60.6,51.8,58.8,54.2,53.2,58.0,55.6,61.0,56.8,64.6,56.6,69.8,56.6,72.4,62.2,69.8,63.6,70.8,69.0,76.2,69.2,74.2,75.4,68.8,74.4,66.4,69.2,64.6,63.8,61.6,60.4,56.6,59.6,51.6,61.0,48.6,64.6,45.6,66.6
>> 击杀|cRXP_ENEMY_瘟疫犬|r和|cRXP_ENEMY_毒性瘟疫蝙蝠|r
.complete 5542,2 
.complete 6042,1 
.mob Plaguehound
.mob Noxious Plaguebat








step
#completewith next
.subzone 2268 >> 前往圣光之愿礼拜堂
step
.goto Eastern Plaguelands,80.2,57.0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔吉亚|r
.fp Light's Hope Chapel	>> 开启圣光之愿礼拜堂飞行点
.target Georgia
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r和|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 6030 ,t Duke Nicholas Zverenhoff
.goto Eastern Plaguelands,75.66,53.89
.turnin 5241 ,t Uncle Carlin
.accept 5211 ,a Defenders of Darrowshire
.goto Eastern Plaguelands,81.44,59.83
.target Duke Nicholas Zverenhoff
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.54,63.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_护理者奥林|r
.accept 6021 ,a Zaeldarr the Outcast
.accept 5281 ,a The Restless Souls
.target Caretaker Alen
step
.goto Eastern Plaguelands,77.11,48.00,90,0
.goto Eastern Plaguelands,67.85,41.13,90,0
.loop 25,Eastern Plaguelands,68.2,40.8,68.6,38.6,66.0,36.0,64.6,38.0,65.4,41.2,66.6,38.6,68.2,40.8
>> 击杀|cRXP_ENEMY_染病的撕掠者|r
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话在它们尸体上出现的|cRXP_FRIENDLY_达隆郡居民的灵魂|r
>> |cRXP_WARN_这些小怪与几种怪共享刷新, 所以在食尸鬼杀完后把其他所有的怪都清了|r
.complete 5211,1 
.mob Diseased Flayer
.skipgossip
step
#label WormMeat
.loop 25,Eastern Plaguelands,48.0,24.6,50.8,27.0,54.2,22.6,61.8,30.4,62.6,38.4,69.0,36.0,70.4,42.4,67.2,51.2,64.2,45.6,52.8,41.2,54.4,33.4,47.6,28.4,48.0,24.6
>> 击杀|cRXP_ENEMY_巨型瘟疫蝙蝠|r和|cRXP_ENEMY_狂怒的瘟疫犬|r
>> |cRXP_WARN_小心! |r|cRXP_ENEMY_巨型瘟疫蝙蝠|r|cRXP_WARN_能沉默近战范围10s|r << !Rogue !Warrior
.complete 6042,2 
.complete 5542,3 
.mob Monstrous Plaguebat
.mob Frenzied Plaguehound
step
.goto Eastern Plaguelands,53.81,37.82,90,0
.goto Eastern Plaguelands,48.90,27.18,90,0
.loop 25,Eastern Plaguelands,42.6,83.4,45.6,81.6,48.8,77.6,53.0,77.8,54.6,75.4,48.0,70.4,43.4,73.8,41.8,69.4,36.6,69.6,34.4,74.8,31.0,75.4,30.6,70.4,29.2,65.6,24.4,66.6,20.2,65.4,16.0,64.6,18.6,70.6,15.4,75.6,17.6,79.4,22.0,79.4,25.4,87.4,32.4,84.8,36.6,82.6,42.6,83.4
>> 击杀|cRXP_ENEMY_食腐虫|r. 拾取|cRXP_LOOT_肉块|r
.complete 5544,1 
.mob Carrion Worm
step
#completewith next
.subzone 2277 >> 前往病木林
step
.goto Eastern Plaguelands,35.94,16.67,50,0
.goto Eastern Plaguelands,32.58,17.02,50,0
.goto Eastern Plaguelands,21.85,19.43,50,0
.goto Eastern Plaguelands,18.48,21.90,50,0
.goto Eastern Plaguelands,21.69,32.83,50,0
.goto Eastern Plaguelands,28.30,30.72,50,0
.goto Eastern Plaguelands,32.88,29.14,50,0
.goto Eastern Plaguelands,34.61,29.90,50,0
.goto Eastern Plaguelands,36.41,26.66,50,0
.goto Eastern Plaguelands,35.94,16.67,50,0
.goto Eastern Plaguelands,32.58,17.02,50,0
.goto Eastern Plaguelands,21.85,19.43,50,0
.goto Eastern Plaguelands,18.48,21.90,50,0
.goto Eastern Plaguelands,21.69,32.83
>> 拾取10个|cRXP_PICK_大白蚁丘|r获得|cRXP_LOOT_白蚁|r
.complete 5901,1 
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t进入房屋, 然后对话|cRXP_FRIENDLY_伊根|r和|cRXP_FRIENDLY_精神失常的奥古斯图斯|r
.turnin 5281 ,t The Restless Souls
.goto Eastern Plaguelands,14.45,33.74
.accept 6164 ,a Augustus' Receipt Book
.goto Eastern Plaguelands,14.45,33.48
.target Egan
.target Augustus the Touched
step
.goto Eastern Plaguelands,17.43,31.08
>> 在旅店2楼拾取|cRXP_PICK_奥古斯图斯的收据册|r
.complete 6164,1 
step
.goto Eastern Plaguelands,14.45,33.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t回到房屋内对话|cRXP_FRIENDLY_精神失常的奥古斯图斯|r
.turnin 6164 ,t Augustus' Receipt Book
.target Augustus the Touched
step
.goto Eastern Plaguelands,14.45,33.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_精神失常的奥古斯图斯|r
>> |cRXP_WARN_把背包清理到有大量空间|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
step
#completewith next
.goto Eastern Plaguelands,27.59,43.33,40,0
.goto Eastern Plaguelands,24.43,41.00,40,0
.goto Eastern Plaguelands,23.33,42.30,40,0
.goto Eastern Plaguelands,21.80,40.36,40,0
.goto Eastern Plaguelands,19.58,42.98,40,0
.goto Eastern Plaguelands,18.71,40.81,40,0
.goto Eastern Plaguelands,16.37,42.00,40,0
.goto Eastern Plaguelands,10.99,47.75,40,0
+进行登出跳过操作来节省时间(已修复)
>> |cRXP_WARN_你必须有|r|T134863:0|t[诺格弗格药剂]|cRXP_WARN_在你包里才能这样做|r
.link https://www.youtube.com/watch?v=6VIULBxMyfU >> 点击此处获取演示
step
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5542 ,t Demon Dogs
.turnin 5543 ,t Blood Tinged Skies
.turnin 5544 ,t Carrion Grubbage
.accept 5742 ,a Redemption
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
>> |cRXP_WARN_当你听弗丁讲故事时输入/坐下. 你在马上也能这样做|r
.complete 5742,1 
.turnin 5742 ,t Redemption
.target Tirion Fordring
.skipgossip
step
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.accept 5781 ,a Of Forgotten Memories
.target Tirion Fordring
.group
step
.goto Eastern Plaguelands,26.54,74.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.accept 6133 ,a The Ranger Lord's Behest
.accept 6022 ,a in To Kill With Purpose
.turnin 6042 ,t Un-Life's Little Annoyances
.target Nathanos Blightcaller
.group
step
.goto Eastern Plaguelands,26.54,74.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.accept 6022 ,a in To Kill With Purpose
.turnin 6042 ,t Un-Life's Little Annoyances
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,28.31,86.90
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_松软的泥土堆|r来召唤|cRXP_ENEMY_米库提奥·肮脏吞咽者|r和3名|cRXP_ENEMY_墓穴劫盗者|r. 杀了他, 然后拾取他的|cRXP_LOOT_锤子|r
>> |cRXP_WARN_此任务非常危险. |r|cRXP_ENEMY_墓穴劫盗者|r|cRXP_WARN_很特殊; 他们需要很长时间才能重置并能在单拉出来后重新绑定|r
.complete 5781,1 
.mob Crypt Robber
.unitscan Mercutio Filthgorger
.group 2
step
.goto Eastern Plaguelands,27.47,84.85
>> 在墓穴内击杀|cRXP_ENEMY_‘流亡者’塞达尔|r. 拾取他的|cRXP_LOOT_头|r
.complete 6021,1 
.unitscan Zaeldarr the Outcast
step
.goto Eastern Plaguelands,27.28,85.23
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在墓穴内点击地上的|cRXP_PICK_破损的卷轴|r
.accept 6024 ,a Hameya's Plea
.group
step
#requires HameyaP
#label Memories
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5781 ,t Of Forgotten Memories
.accept 5845 ,a Of Lost Honor
.target Tirion Fordring
.isQuestComplete 5781
.group
step
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.accept 5845 ,a Of Lost Honor
.target Tirion Fordring
.isQuestTurnedIn 5781
.group
step
.goto Eastern Plaguelands,26.54,74.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.accept 6022 ,a To Kill With Purpose
.target Nathanos Blightcaller
step
#completewith RottingUndead
.subzone 2264 >> 前往考林路口
step
#completewith next
>> 击杀|cRXP_ENEMY_亡灵|r. 拾取|cRXP_LOOT_生命腐质|r.
>> |cRXP_WARN_一群群的精英在北面和东面的路上巡逻. 在考林路口内有隐身怪巡逻, 所以尽量把怪拉出来打|r
.collect 15447,7 
.mob Hate Shrieker
.mob Scourge Warder
.mob Stitched Horror
.mob Gibbering Ghoul
.mob Unseen Servant
.mob Dark Caster
step
#label RottingUndead
.loop 25,Eastern Plaguelands,58.2,70.2,60.4,71.6,61.0,69.4,61.4,66.4,59.4,66.4,58.0,67.6,58.2,70.2
.use 15454 >> 在生命腐质过期前使用|T133748:0|t[研钵和捣杵]
.complete 6022,1 
step
.goto Eastern Plaguelands,65.28,24.77,90,0
.goto Eastern Plaguelands,64.58,21.56,90,0
.goto Eastern Plaguelands,69.19,22.04,40,0
.goto Eastern Plaguelands,69.7,18.6
>> 击杀|cRXP_ENEMY_渗透者哈米亚|r. 拾取她的|cRXP_LOOT_钥匙|r
>> |cRXP_WARN_你应该能避开所有上山路上的小怪. 跳过他们并跑上山前往东边. 不要靠近墓穴|r
.complete 6024,1 
.unitscan Infiltrator Hameya
.group 2
step
#completewith next
.goto Eastern Plaguelands,52.2,18.4
>> 在长凳上拾取|cRXP_LOOT_奎尔萨拉斯名册|r
.complete 6133,4 
.group 2
step
.loop 25,Eastern Plaguelands,51.6,21.8,50.8,18.6,52.2,16.0,53.6,18.6,51.6,18.0,52.2,16.0,50.8,18.6,51.6,21.8
>> 击杀|cRXP_ENEMY_巡路者|r, |cRXP_ENEMY_游侠|r和|cRXP_ENEMY_护林者|r
>> |cRXP_WARN_这些怪相对于非精英来说打人非常疼|r << !Rogue !Druid
>> |cRXP_WARN_这些怪相对于非精英来说打人非常疼; 记住巡路者会精灵之火, 以防你需要跑路|r << Rogue/Druid
.complete 6133,1 
.complete 6133,2 
.complete 6133,3 
.mob Pathstrider
.mob Ranger
.mob Woodsman
.group 2
step
.goto Eastern Plaguelands,52.2,18.4
>> 在长凳上拾取|cRXP_LOOT_奎尔萨拉斯名册|r
.complete 6133,4 
.group 2
step
.goto Eastern Plaguelands,71.3,33.9
>> 在水下拾取|cRXP_LOOT_失落荣耀的象征|r
.complete 5845,1 
.isQuestTurnedIn 5781
.group
step
#completewith next
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_护理者奥林|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
>> |cRXP_WARN_在几部之内你将前往幽暗城并完成交布任务; 你将需要至少13个背包空间|r
.target Caretaker Alen
step
.goto Eastern Plaguelands,79.54,63.88
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_护理者奥林|r
.turnin 6021 ,t Zaeldarr the Outcast
.target Caretaker Alen
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5211 ,t Defenders of Darrowshire
.target Carlin Redpath
step << !Mage
.goto Eastern Plaguelands,80.2,57.1
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔吉亚|r
.fly Undercity >> 飞往幽暗城
.target Georgia
.zoneskip Undercity
step << Mage
#completewith next
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
step << Mage
.goto Undercity,85.15,10.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 10157 >> 学习职业技能
.target Anastasia Hartwell
.xp <56,1
.xp >58,1
step << Mage
.goto Undercity,85.15,10.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
.train 10054 >> 学习职业技能
.target Anastasia Hartwell
.xp <58,1
step
.goto Undercity,69.79,43.16
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皇家监督者巴哈乌斯|r
.turnin 5023 ,t Better Late Than Never
.accept 5049 ,a The Jeremiah Blues
.target Royal Overseer Bauhaus
step
.goto Undercity,67.61,44.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰雷米亚·派森|r
.turnin 5049 ,t The Jeremiah Blues
.accept 5050 ,a Good Luck Charm
.target Jeremiah Payson
step
#ah
#completewith UCClothTurnins
.goto Undercity,67.66,35.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师凯恩|r
>> |cRXP_BUY_从拍卖行购买240块各种布料|r
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
.target Auctioneer Cain
step
#ah
#completewith next
.goto Undercity,68.15,38.26,0
+前往邮箱并取回以下物品:
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
#label UCClothTurnins
.goto Undercity,71.66,29.25
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱斯顿·法斯雷|r
>> |cRXP_WARN_禁用其他带自动提交声望物品功能的插件, 否则你会需要再买布|r
.turnin 7813 ,t A Donation of Wool
.turnin 7814 ,t A Donation of Silk
.turnin 7817 ,t A Donation of Mageweave
.turnin 7818 ,t A Donation of Runecloth
.target Ralston Farnsley
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 11689 >> 学习职业技能
.target Richard Kerwin
.xp <56,1
.xp >58,1
step << Warlock
.goto Undercity,88.93,15.86
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
.train 11713 >> 学习职业技能
.target Richard Kerwin
.xp <58,1
step << Warlock
.goto Undercity,85.70,16.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Martha|r
.trainer >> 升级你的宠物技能
.target Martha Strain
step << Priest
.goto Undercity,47.55,18.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
.train 10929 >> 学习职业技能
.target Father Lazarus
.xp <56,1
.xp >58,1
step << Priest
.goto Undercity,47.55,18.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
.train 10947 >> 学习职业技能
.target Father Lazarus
.xp <58,1
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 20662 >> 学习职业技能
.target Angela Curthas
.xp <56,1
.xp >58,1
step << Warrior
.goto Undercity,48.32,15.98
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
.train 11597 >> 学习职业技能
.target Angela Curthas
.xp <58,1
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 11300 >> 学习职业技能
.target Carolyn Ward
.xp <56,1
.xp >58,1
step << Rogue
.goto Undercity,83.86,72.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
.train 11305 >> 学习职业技能
.target Carolyn Ward
.xp <58,1
step
.goto Undercity,48.50,71.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师科雷|r
.turnin 3568 ,t Seeping Corruption
.target Chemist Cuely
.isQuestComplete 3568
step
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师科雷|r和|cRXP_FRIENDLY_瑟尔萨·风歌|r
.accept 3569 ,a Seeping Corruption
.goto Undercity,48.71,71.40
.turnin 3569 ,t Seeping Corruption
.turnin 3570 ,t Seeping Corruption
.goto Undercity,49.03,70.81
.target Chemist Cuely
.target Thersa Windsong
.isQuestTurnedIn 3568
step
.goto Undercity,47.8,73.3
>> 使用|cRXP_PICK_测试仪器|r测试所有样本
.use 15103 >>打开你的|T134437:0|t[测试过的堕落样本]
.use 15102 >>打开你的|T134437:0|t[测试过的安戈洛样本]
.complete 4293,1 
.complete 4294,1 
step
.goto Undercity,48.50,71.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师科雷|r
.turnin 4293 ,t A Sample of Slime...
.turnin 4294 ,t ... and a Match of Ooze
.accept 4642 ,a Melding of Influences
.target Chemist Cuely
step
.goto Undercity,54.81,76.32
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德隆|r
.turnin 3542 ,t Delivery to Andron Gant
.accept 3564 ,a Andron's Payment to Jediga
.target Andron Gant
.isOnQuest 3542
step
.goto Undercity,54.81,76.32
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德隆|r
.accept 3564 ,a Andron's Payment to Jediga
.target Andron Gant
.isQuestComplete 3542
step
.goto Undercity,51.88,64.49,30,0
.goto Undercity,58.07,91.79
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔瓦娜斯|r
.accept 5961 ,a The Champion of the Banshee Queen
.target Lady Sylvanas Windrunner
step
.goto Undercity,55.22,90.88
.goto Undercity,67.90,15.28,30 >> |cRXP_WARN_通过将你的角色停在最下层台阶的最高部分直到看起来漂浮在空中来进行登出跳过操作, 然后登出并重新登入(此处已修复)|r
.link https://www.youtube.com/watch?v=jj85AXyF1XE >> |cRXP_WARN_点击此处获取示范|r
>> |cRXP_WARN_如果你做不到, 就正常跑出幽暗城|r
step
#completewith next
.goto Tirisfal Glades,61.85,66.59,60 >> 离开幽暗城
.zoneskip Tirisfal Glades
step
.goto Tirisfal Glades,83.28,69.23
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 964 ,t Skeletal Fragments
.target Apothecary Dithers
step
.goto Tirisfal Glades,83.03,71.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5234 ,t Back to the Bulwark
.accept 5235 ,a Target: Gahrron's Withering
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.29,72.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米克·莱文|r
.turnin 5901 ,t A Plague Upon Thee
.accept 5902 ,a A Plague Upon Thee
.target Mickey Levine
step
.goto Western Plaguelands,38.40,54.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上房屋顶层, 然后对话|cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5050 ,t Good Luck Charm
.accept 5051 ,a Two Halves Become One
.target Janice Felstone
step
.loop 25,Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
>> 击杀|cRXP_ENEMY_喋喋不休的食尸鬼|r. 拾取|cRXP_LOOT_好运护符|r
.complete 5051,1 
.unitscan Jabbering Ghoul
step
.goto Western Plaguelands,38.40,54.05
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在房屋的顶层对话|cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5051 ,t Two Halves Become One
.target Janice Felstone
step
.goto Western Plaguelands,49.13,78.53
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子里对话|cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
.turnin 5152 ,t Auntie Marlene
.accept 5153 ,a A Strange Historian
.target Marlene Redpath
step
.goto Western Plaguelands,49.69,76.75
>> 拾取|cRXP_PICK_约瑟夫·雷德帕斯的纪念碑|r获取|cRXP_LOOT_约瑟夫的结婚戒指|r
.complete 5153,1 
step
.goto Western Plaguelands,39.46,66.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_克罗米|r
.turnin 5153 ,t A Strange Historian
.accept 5154 ,a The Annals of Darrowshire
.target Chromie
step
.goto Western Plaguelands,43.4,69.6
>> 在城镇大厅内拾取|cRXP_PICK_发霉的书籍|r直到你拾取|cRXP_LOOT_达隆郡的历史|r
>> |cRXP_WARN_许多书都是假的并会在打开后刷出小怪. 真书全是白色的页面, 没有灰色/暗色的染色. 你可能需要点击假书来刷新真书|r
.complete 5154,1 
.link https://i.imgur.com/B2HDb6K.png >> 点击此处获取视频演示
step
.goto Western Plaguelands,39.46,66.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店顶层对话|cRXP_FRIENDLY_克罗米|r
.turnin 5154 ,t The Annals of Darrowshire
.accept 5210 ,a Brother Carlin
.target Chromie
step
.goto Western Plaguelands,53.73,64.66
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格雷斯·深水|r
.accept 4987 ,a Glyphed Oaken Branch
.target Mulgris Deepriver
step
.goto Western Plaguelands,62.80,58.76
>> 击杀|cRXP_ENEMY_护锅领主索瓦斯|r. 拾取他的|cRXP_LOOT_瘟疫之锅钥匙|r
>> |cRXP_WARN_此怪会一个持续10s的沉默疾病|r << !Priest
>> |cRXP_WARN_此怪会一个持续10s的沉默疾病; 提前施放驱除疾病并保持该效果|r << Priest
.complete 5235,1 
.unitscan Cauldron Lord Soulwrath
step
.goto Western Plaguelands,62.5,58.6
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击在台子上沸腾的|cRXP_PICK_天灾大锅|r
.turnin 5235 ,t Target: Gahrron's Withering
.accept 5236 ,a Back to the Bulwark
step
.goto Eastern Plaguelands,7.48,43.67
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5845 ,t Of Lost Honor
.accept 5846 ,a Of Love and Family
.target Tirion Fordring
.isQuestTurnedIn 5781
.group
step
#completewith next
.subzone 2261 >> 前往墓室
step
.goto Eastern Plaguelands,28.04,86.16
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击墓穴后的|cRXP_PICK_一堆泥土|r
.turnin 6024 ,t Hameya's Plea
.isQuestComplete 6024
.group
step
.goto Eastern Plaguelands,26.54,74.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.turnin 5961 ,t The Champion of the Banshee Queen
.turnin 6022 ,t To Kill With Purpose
.turnin 6133 >>The Ranger Lord's Behest
.target Nathanos Blightcaller
.group
step
.goto Eastern Plaguelands,26.54,74.73
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.turnin 5961 ,t The Champion of the Banshee Queen
.turnin 6022 ,t To Kill With Purpose
.target Nathanos Blightcaller
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 ,t Brother Carlin
.accept 5181 ,a Villains of Darrowshire
.accept 5168 ,a Heroes of Darrowshire
.target Carlin Redpath
.group
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 ,t Brother Carlin
.accept 5181 ,a Villains of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,46.56,44.39
>> 在湖中央拾取|cRXP_LOOT_霍古斯的颅骨|r
.complete 5181,1 
step
.goto Eastern Plaguelands,49.24,59.59
>> 在魔刃之痕里拾取|cRXP_LOOT_马杜克的破碎之剑|r
.complete 5181,2 
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 ,t Villains of Darrowshire
.target Carlin Redpath
.solo
step
.goto Western Plaguelands,63.80,57.18
>> 拾取|cRXP_LOOT_雷德帕斯之盾|r
.complete 5168,2 
.group
step
.goto Western Plaguelands,65.79,75.41
>> 游到凯尔达隆 << !Shaman/Priest
>> 使用水上行走前往凯尔达隆, 或者游过去 << Shaman
>> 使用漂浮前往凯尔达隆, 或者游过去 << Priest
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_画家瑞弗蕾|r
.turnin 5846 ,t Of Love and Family
.target Artist Renfray
.isOnQuest 5846
.group
step
#completewith next
.subzone 192 >> 前往北山伐木场
step
.goto Western Plaguelands,48.35,32.00
>> |TInterface/GossipFrame/HealerGossipIcon:0|t进入伐木场. 点击|cRXP_PICK_北山伐木场箱子|r, 然后点击|cRXP_PICK_白蚁桶|r
.turnin 5902 ,t A Plague Upon Thee
.accept 6390 ,a A Plague Upon Thee
step
.goto Western Plaguelands,51.92,28.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6025 ,a Unfinished Business
.target Kirsta Deepshadow
.group
step
.goto Western Plaguelands,47.94,21.43,60,0
.goto Western Plaguelands,43.31,17.34,50,0
.goto Western Plaguelands,45.6,18.6
>> 进入壁炉谷并跟随箭头来重置小怪
>> 前往哨塔顶部. 小心外面的骑士能治疗. 你可以尝试跳过他们或是群控他们并跑到塔顶
>> |cRXP_WARN_注意这些怪没有Z轴攻击范围. 如果他们在你正下方就可以在塔底打到你|r
.complete 6025,1 
.group 2
step
.goto Western Plaguelands,42.53,18.99
>> 在教堂里拾取|cRXP_LOOT_达维的圣契|r
>> |cRXP_WARN_小心, 里面有许多精英|r
.complete 5168,1 
.group 5
step
.goto Western Plaguelands,51.92,28.06
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t离开壁炉谷, 然后对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6025 ,t Unfinished Business
.target Kirsta Deepshadow
.isQuestComplete 6025
.group
step
.goto Tirisfal Glades,83.03,71.91
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5236 ,t Back to the Bulwark
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.30,72.34
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米克·莱文|r
.turnin 6390 ,t A Plague Upon Thee
.target Mickey Levine
step
.goto Tirisfal Glades,83.15,68.92
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶执行官德灵顿|r
.turnin 5238 ,t Mission Accomplished!
.target High Executor Derrington
step
#completewith next
.subzone 2268 >> 回到圣光之愿礼拜堂
.group
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 ,t Villains of Darrowshire
.turnin 5168 ,t Heroes of Darrowshire
.target Carlin Redpath
.isQuestComplete 5168
.group
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 ,t Villains of Darrowshire
.target Carlin Redpath
.group
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5206 ,a Marauders of Darrowshire
.target Carlin Redpath
.isQuestTurnedIn 5181
.isQuestTurnedIn 5168
.group
step
.goto Eastern Plaguelands,70.72,44.77,50,0
.goto Eastern Plaguelands,75.19,37.98,50,0
.loop 25,Eastern Plaguelands,76.15,35.65,77.24,32.70,78.73,33.25,78.69,35.40,79.42,36.94,81.09,38.93,78.56,40.18,77.06,39.10,75.36,37.99,76.15,35.65
>> 击杀|cRXP_ENEMY_天灾勇士|r. 拾取|T133728:0|t[|cFF00BCD4恶臭颅骨|r]
.use 13156 >> 对|T133728:0|t[|cFF00BCD4恶臭颅骨|r]使用你的|T134095:0|t[秘法水晶]以制作|cRXP_LOOT_共鸣颅骨|r
.complete 5206,1 
.mob Scourge Champion
.isQuestTurnedIn 5206
.group
step
.goto Eastern Plaguelands,81.52,59.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5206 ,a Marauders of Darrowshire
.target Carlin Redpath
.isQuestComplete 5206
.group
step
.hs >> 炉石回永望镇
.use 6948
.zoneskip Winterspring
step
.abandon 4971 ,ab A Matter of Time
.isOnQuest 4971
step
.abandon 5781 ,ab Of Forgotten Memories
.isOnQuest 5781
step
.abandon 6133 ,ab Ranger Lord's Behest
.isOnQuest 6133
step
.abandon 6024 ,ab Hameya's Plea
.isOnQuest 6024
step
.abandon 5168 ,ab Heroes of Darrowshire
.isOnQuest 5168
step
.abandon 6025 ,ab Unfinished Business
.isOnQuest 6025
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 59-59 冬泉谷/希利苏斯 I
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#next 59-60 冬泉谷/希利苏斯 II
step
.goto Winterspring,61.60,38.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.accept 4809 ,a Chillwind Horns
.target Felnok Steelspring
step
.goto Winterspring,60.90,37.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.accept 977 ,a Are We There, Yeti?
.target Umi Rumplesnicker
step
.loop 25,Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
>> 击杀|cRXP_ENEMY_狂暴枭兽|r. 拾取|T133298:0|t[|cFF00BCD4蓝羽项链|r]. 使用并接受任务
.complete 4721,1 
.collect 12558,1 
.accept 4882 ,a Guarding Secrets
.use 12558
.mob Berserk Owlbeast
step
#completewith next
>> 击杀|cRXP_ENEMY_冬泉巨熊怪|r, |cRXP_ENEMY_冬泉萨满|r和|cRXP_ENEMY_冬泉巢穴守卫|r
>> |cRXP_WARN_如果这里人太多了就跳过这步|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.goto Winterspring,69.62,38.31
>> 击杀|cRXP_ENEMY_冬泉酋长|r. 拾取他的|T133740:0|t[|cFF00BCD4潦草的日志|r]. 使用并接受任务
>> |cRXP_WARN_优先击杀|r|cRXP_ENEMY_冬泉萨满|r|cRXP_WARN_并在之后重置以确保安全. 如果可以的话使用你的防御技能; 他的冰霜震击打人很疼|r
.complete 5121,1 
.collect 12842,1,5123 
.accept 5123 ,a The Final Piece
.use 12842
.mob Winterfall Shaman
.unitscan High Chief Winterfall
.group 2
step
.loop 25,Winterspring,67.6,34.1,66.4,34.3,65.9,35.3,66.6,36.3,67.5,35.5,68.4,35.7,68.3,37.3,67.5,37.9,66.8,37.3,65.6,37.7,66.7,39.1,68.0,39.4,68.8,37.7,68.4,35.7,67.6,34.1
>> 击杀|cRXP_ENEMY_冬泉巨熊怪|r, |cRXP_ENEMY_冬泉萨满|r和|cRXP_ENEMY_冬泉巢穴守卫|r
>> |cRXP_WARN_如果这里人太多了就跳过这步|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.loop 25,Winterspring,66.5,41.7,64.9,40.2,65.9,43.6,66.2,45.8,67.6,45.6,67.6,43.8,67.2,43.0,67.6,41.9,68.4,41.5,69.00,41.3,69.5,40.0,69.8,41.8,70.1,42.0,70.3,40.8,71.3,40.8,71.8,39.8,70.5,38.3,71.8,39.8,71.3,40.8,70.3,40.8,69.5,40.0,69.00,41.3,68.4,41.5,66.5,41.7
>> 击杀|cRXP_ENEMY_冰蓟雪人王和女王|r直到你获得一个|cRXP_LOOT_完美的雪人角|r
.complete 977,1 
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
.loop 25,Winterspring,67.6,48.2,66.2,52.4,63.6,47.2,61.6,45.0,58.2,45.0,57.4,46.6,55.4,49.0,55.2,46.4,48.6,45.0,44.8,42.2,44.0,36.0,48.0,36.6,49.4,34.4,54.0,36.8,56.6,25.6,55.6,22.4,58.0,19.8,60.6,23.6,66.4,26.8,65.6,32.6,62.4,36.2,61.2,41.6,67.6,48.2
>> 在永望镇北边击杀所有的|cRXP_ENEMY_冰风奇美拉|r. 拾取|cRXP_LOOT_角|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step << Shaman
#completewith next
.hs >> 炉石或者星界传送回永望镇
step
.goto Winterspring,61.6,38.6
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.turnin 4809 ,t Chillwind Horns
.target Felnok Steelspring
step
.goto Winterspring,60.90,37.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.turnin 977 ,t Are We There, Yeti?
.accept 5163 ,a Are We There, Yeti?
.target Umi Rumplesnicker
step
.goto Winterspring,61.50,38.60
.use 12928 >> 对|cRXP_FRIENDLY_莱加奇|r使用|T133003:0|t[机械雪人]
.complete 5163,1 
.target Legacki
step
.goto Winterspring,61.36,38.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5121 ,t High Chief Winterfall
.turnin 5123 ,t The Final Piece
.accept 5128 ,a Words of the High Chief
.target Donova Snowden
.isQuestComplete 5121
.group
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5123 ,t The Final Piece
.accept 5128 ,a Words of the High Chief
.target Donova Snowden
.isOnQuest 5123
.group
step
.goto Winterspring,31.30,45.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5128 ,a Words of the High Chief
.target Donova Snowden
.isQuestTurnedIn 5128
.group
step
.goto Felwood,68.30,6.07
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔法|r
.turnin 8464 ,t Winterfall Activity
.target Salfa
.isQuestComplete 8464
step << !Druid
#completewith RabineSaturna
.goto Winterspring,27.40,33.64,40,0
.goto Winterspring,25.70,31.93,40,0
.goto Winterspring,25.35,31.36,40,0
.goto Winterspring,26.36,28.04,40,0
.goto Winterspring,26.61,24.49,40,0
.goto Winterspring,26.59,24.17
.zone Moonglade >> 进入通道, 然后选择北向的出口进入月光林地
step << Druid
#completewith RabineSaturna
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 22829 >> 学习职业技能
.target Loganaar
.xp <56,1
.xp >58,1
step << Druid
#label DruidTraining10
.goto Moonglade,52.53,40.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.train 9850 >> 学习职业技能
.target Loganaar
.xp <58,1
step
#label RabineSaturna
.goto Moonglade,51.70,45.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 1123 ,t Rabine Saturna
.accept 1124 ,a Wasteland
.target Rabine Saturna
step
.goto Moonglade,51.68,45.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r, 并完成他的对话
>> |cRXP_WARN_如果厄运之槌对话不可用就跳过此步. 如果你之前去过厄运之槌副本外/发现了厄运之槌, 这个对话就会出现|r
.accept 5527 ,a A 净化之匣
.target Rabine Saturna
.skipgossip
step
.goto Moonglade,32.10,66.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法斯托恩|r
.fp Moonglade >> 开启月光林地飞行点 << !Druid
.fly Felwood>> 飞往费伍德森林
.target Faustron
step
.goto Felwood,34.80,52.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特卢尔·法贝恩|r
.turnin 4721 ,t Wild Guardians
.turnin 4882 ,t Guarding Secrets
.accept 4883 ,a Guarding Secrets
.target Trull Failbane
.isQuestComplete 4721
step
.goto Felwood,34.80,52.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特卢尔·法贝恩|r
.turnin 4882 ,t Guarding Secrets
.accept 4883 ,a Guarding Secrets
.target Trull Failbane
step
.goto Felwood,51.14,81.76
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科雷克·望天|r
.turnin 5128 ,t Words of the High Chief
.target Kelek Skykeeper
.isQuestTurnedIn 5123
.group
step
.goto Felwood,51.35,81.51
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 ,t Silver Heart
.accept 4005 ,a Aquementas 
.target Eridan Bluewind
step
#completewith next
.hs >> 炉石回冬泉谷
.use 6948
.cooldown item,6948,>0,1
step
.goto Winterspring,60.47,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤格雷克|r
.fly Azshara>> 飞往艾萨拉
.target Yugrek
.cooldown item,6948,>0,1
.zoneskip Azshara
step
#completewith next
.subzone 431 >> 前往碎木岗哨
.cooldown item,6948,<0,1
step
.goto Ashenvale,73.18,61.59
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25乌尔格拉|r
.fly Azshara>> 飞往艾萨拉
.target Vhulgra
.cooldown item,6948,<0,1
.zoneskip Azshara
step
.goto Azshara,22.50,51.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰迪加|r
.turnin 3564 ,t Andron's Payment to Jediga
.target Jediga
.isOnQuest 3564
step << !Mage
.goto Azshara,22.00,49.70
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克隆姆|r
.fly Thunder Bluff>> 飞往雷霆崖
.target Kroum
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >> 施放|T135765:0|t[传送: 雷霆崖]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10157 >> 学习职业技能
.target Thurston Xane
.xp <56,1
.xp >58,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10054 >> 学习职业技能
.target Thurston Xane
.xp <58,1
step
#ah
#completewith next
.goto Thunder Bluff,45.22,59.40
+如果之前你购买了足够的布匹, 前往邮箱并取回以下物品:
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
.goto Thunder Bluff,43.3,42.8
>> |cRXP_WARN_禁用其他带自动提交声望物品功能的插件, 否则你会需要再买布|r
>> 如果你没有足够的布料捐赠就从拍卖行购买3组各种布料
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉姆斯塔格|r
.turnin 7820 ,t A Donation of Wool
.turnin 7821 ,t A Donation of Silk
.turnin 7822 ,t A Donation of Mageweave
.turnin 7823 ,t A Donation of Runecloth
.target Auctioneer Stampi
.target Rumstag Proudstrider
step
.goto Thunder Bluff,75.80,31.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳拉·蛮鬃|r
.turnin 4987 ,t Glyphed Oaken Branch
.turnin 4883 ,t Guarding Secrets
.target Nara Wildmane
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14305 >> 学习职业技能
.target Urek Thunderhorn
.xp <56,1
.xp >58,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14322 >> 学习职业技能
.target Urek Thunderhorn
.xp <58,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 20662 >> 学习职业技能
.target Ker Ragetotem
.xp <56,1
.xp >58,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 11597 >> 学习职业技能
.target Ker Ragetotem
.xp <58,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 10432 >> 学习职业技能
.target Tigor Skychaser
.xp <56,1
.xp >58,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提戈尔·逐星|r
.train 10473 >> 学习职业技能
.target Tigor Skychaser
.xp <58,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10929 >> 学习职业技能
.target Malakai Cross
.xp <56,1
.xp >58,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10947 >> 学习职业技能
.target Malakai Cross
.xp <58,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22829 >> 学习职业技能
.target Turak Runetotem
.xp <56,1
.xp >58,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9850 >> 学习职业技能
.target Tura
.xp <58,1
step
.goto Thunder Bluff,47.02,49.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Tanaris>> 飞往塔纳利斯
.target Tal
.zoneskip Tanaris
step
.goto Tanaris,51.56,26.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 4504 ,a Super Sticky
.target Tran'rek
step
.goto Tanaris,51.10,26.90
.use 12928 >> 对|cRXP_FRIENDLY_斯普琳科|r使用|T133003:0|t[机械雪人]
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,50.90,27.00
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4507 ,a Pawn Captures Queen
.target Alchemist Pestlezugg
.group
step
.goto Tanaris,70.40,49.90
.use 11617 >> 穿过落帆海湾. 在路上从|T133647:0|t[艾瑞丹的补给品]中拿出所有物品
.use 11169 >> 进入石环并使用|T133742:0|t[阿奎尔之书]
>> 击杀|cRXP_ENEMY_亚奎门塔斯|r
.complete 4005,1 
.unitscan Aquementas
step
.goto Tanaris,51.60,25.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Un'Goro Crater >> 飞往安戈洛环形山
.target Bulkrek Ragefist
.zoneskip Un'Goro Crater
step
.goto Un'Goro Crater,41.92,2.69
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.turnin 4005 ,t Aquementas 
.accept 3961 ,a Linken's Adventure 
.target J.D. Collie
step
.goto Un'Goro Crater,44.66,8.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3961 ,t Linken's Adventure 
.accept 3962 ,a It's Dangerous to Go Alone 
.target Linken
.isQuestTurnedIn 4005
.group
step
.goto Un'Goro Crater,44.66,8.11
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3961 ,t Linken's Adventure 
.target Linken
step
.goto Un'Goro Crater,43.70,9.40
.use 12928 >> 对|cRXP_FRIENDLY_奎克希尔|r使用|T133003:0|t[机械雪人]
.complete 5163,3 
.target Quixxil
step
.loop 25,Un'Goro Crater,47.2,14.7,48.1,17.7,49.8,20.6,51.3,23.9,53.6,22.7,54.5,27.0,52.2,27.6,49.2,31.2,48.0,36.3,46.6,30.5,48.2,24.7,47.8,20.5,43.7,21.1,41.3,21.0,42.8,15.9,47.2,14.7
>> 击杀各种|cRXP_ENEMY_焦油兽|r. 拾取|cRXP_LOOT_极度粘稠的沥青|r
>> |cRXP_WARN_小心|r|cRXP_ENEMY_焦油兽王|r|cRXP_WARN_会缠绕根须.|r << !Warrior !Rogue !Shaman
>> |cRXP_WARN_小心|r|cRXP_ENEMY_焦油兽王|r|cRXP_WARN_会缠绕根须.|r|cRXP_ENEMY_焦油兽|r|cRXP_WARN_可能在你击中他们时缴械你4s|r << Warrior/Rogue/Shaman
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lord
.mob Tar Lurker
step
.goto Un'Goro Crater,51.6,34.8,40,0
.goto Un'Goro Crater,51.6,30.6,40,0
.goto Un'Goro Crater,47.6,26.8,40,0
.goto Un'Goro Crater,45.2,22.8,40,0
.goto Un'Goro Crater,54.0,18.6,40,0
.goto Un'Goro Crater,56.6,18.4,40,0
.use 12288 >> 让1只|cRXP_ENEMY_原生软泥怪|r在战斗中攻击你, 然后使用|T132622:0|t[堕落软泥怪]
>> 击杀|cRXP_ENEMY_巨大的软泥怪|r. 拾取它的|cRXP_LOOT_融合的软泥怪样本|r
>> |cRXP_WARN_你只能使用1次任务物品. 让软泥怪先攻击你再放出你自己的软泥怪|r
.complete 4642,1 
.mob Primal Ooze
.unitscan Gargantuan Ooze





step
.goto Un'Goro Crater,52.90,44.38,30,0
.goto Un'Goro Crater,51.49,47.28,30,0
.goto Un'Goro Crater,49.13,48.80,30,0
.goto Un'Goro Crater,49.52,49.47
.use 11522 >> 装备|T135467:0|t[亚奎门塔斯的银图腾], 然后对|cRXP_ENEMY_火焰使者|r使用并击杀他
.complete 3962,1 
.unitscan Blazerunner
.group 3
step
.goto Un'Goro Crater,50.28,49.98
>> 拾取洞穴深处的|cRXP_PICK_华丽的箱子|r获得|cRXP_LOOT_金色火焰|r
.complete 3962,2 
.group
step
.goto Un'Goro Crater,50.15,79.98,40,0
.goto Un'Goro Crater,49.74,82.52,30,0
.goto Un'Goro Crater,45.19,82.20,30,0
.goto Un'Goro Crater,43.41,80.98
>> 深入异种蝎巢穴, 直到你抵达圆形房间中的高水晶处
.use 11833 >> 使用你的|T134809:0|t[格里什皇后诱引剂]来召唤|cRXP_ENEMY_格里什蜂后|r. 击杀她, 然后拾取她的|cRXP_LOOT_格里什皇后的大脑|r
>> |cRXP_WARN_把小怪拉到通道可以避免引到新刷出的小怪. 根据你杀怪的速度, 在第二波后通道中可能会刷新一只巡逻怪|r
.complete 4507,1 
.group 2
step
#completewith next
.goto Silithus,88.09,23.43,70,0
.goto Un'Goro Crater,30.15,10.41,70,0
.goto Un'Goro Crater,25.14,12.71,70,0
.goto Silithus,81.87,18.93
.zone Silithus >> 前往希利苏斯
step
.goto Silithus,81.87,18.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 ,t Wasteland
.accept 1125 ,a The Spirits of Southwind
.target Layo Starstrike
step
#completewith end
.xpto60hc >> 当你有足够的经验升到60级就跳到教程的第二部分

step
#phase 4
.goto Silithus,51.80,38.51
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店2楼对话|cRXP_FRIENDLY_比提克斯·斯巴格|r
.accept 8277 ,a Deadly Desert Venom
.target Beetix Ficklespragg
step
#phase 4
.goto Silithus,51.30,38.20
>> |TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_通缉告示|r
.accept 8283 ,a Wanted - Deathclasp, Terror of the Sands
.group
step
#phase 4
#completewith next
.goto Silithus,51.15,38.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.accept 8280 ,a Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.60,37.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_地理学家拉克斯班|r
.accept 8284 ,a The Twilight Mystery
.target Geologist Larksbane
step
#phase 4
.goto Silithus,49.20,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官玛尔利斯|r
.accept 8304 ,a Dearest Natalia
.target Commander Mar'alith
step
#phase 4
.goto Silithus,48.57,37.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲍尔·蛮鬃|r
.accept 8318 ,a Secret Communication
.target Bor Wildmane
step
#phase 4
#completewith s1
>> 击杀|cRXP_ENEMY_掘泥打击者|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
#completewith s1
>> 击杀|cRXP_ENEMY_石鞭蝎|r和|cRXP_ENEMY_掠沙诱捕者|r. 拾取|cRXP_LOOT_钉刺|r和|cRXP_LOOT_牙齿|r
.complete 8277,1 
.complete 8277,2 
.mob Stonelash Scorpid
.mob Sand Skitterer
step
#completewith Spirits
.use 20461 >>注意|T133463:0|t[|cFF00BCD4布莱恩·铜须的信件|r]. 如果掉落了, 就使用并接受任务
.collect 20461,1,8308 
.accept 8308 ,a Brann Bronzebeard's Lost Letter
step
#completewith next
>> 击杀|cRXP_ENEMY_被折磨的德鲁伊|r和|cRXP_ENEMY_被折磨的哨兵|r
>> |cRXP_WARN_他们死后有很高的概率刷出1只|r|cRXP_ENEMY_亚什雄蝎|r
.complete 1125,1 
.complete 1125,2 
.mob Tortured Druid
.mob Tortured Sentinel
step
.goto Silithus,63.22,55.35
>> 在小屋内拾取|cRXP_PICK_覆满灰尘的箱子|r获取|cRXP_LOOT_净化之匣|r
.complete 5527,1 
.isOnQuest 5527
step
#label Spirits
.loop 25,Silithus,61.6,48.6,63.8,48.6,63.6,51.6,62.6,55.6,62.6,58.6,60.0,55.8,60.6,52.8,61.6,48.6
>> 击杀|cRXP_ENEMY_被折磨的德鲁伊|r和|cRXP_ENEMY_被折磨的哨兵|r
>> |cRXP_WARN_他们死后有很高的概率刷出1只|r|cRXP_ENEMY_亚什雄蝎|r
.complete 1125,1 
.complete 1125,2 
.mob Tortured Druid
.mob Tortured Sentinel
step
.goto Silithus,81.87,18.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1125 ,t The Spirits of Southwind
.target Layo Starstrike
step
.goto Silithus,81.87,18.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.accept 1126 ,a Hive in the Tower
.target Layo Starstrike
.group
step
#completewith next
.use 20461 >>注意|T133463:0|t[|cFF00BCD4布莱恩·铜须的信件|r]. 如果掉落了, 使用并接受任务
.collect 20461,1,8308 
.accept 8308 ,a Brann Bronzebeard's Lost Letter
step
.goto Silithus,60.22,52.55
>> |TInterface/GossipFrame/HealerGossipIcon:0|t在塔顶点击|cRXP_PICK_粘稠的巢穴|r
>> 击杀2只刷出来的|cRXP_ENEMY_亚什伏击者|r. 拾取|cRXP_LOOT_异种蝎粘液包裹的物体|r
>> |cRXP_WARN_当你进入哨塔底层时3只|r|cRXP_ENEMY_亚什雄蝎|r|cRXP_WARN_会刷出来|r
.complete 1126,1 
.mob Hive'Ashi Drone
.mob Hive'Ashi Ambusher
.group 2
step
.goto Silithus,81.87,18.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1126 ,t Hive in the Tower
.accept 6844 ,a Umber, Archivist
.target Layo Starstrike
.isQuestComplete 1126
.group
step
.goto Silithus,81.87,18.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.accept 6844 ,a Umber, Archivist
.target Layo Starstrike
.isQuestTurnedIn 1126
.group
step
#phase 4
#label s1
.goto Silithus,30.0,28.0,50,0
.loop 25,Silithus,19.5,21.1,20.1,15.5,21.5,12.8,21.7,9.4,24.1,9.8,26.6,13.3,24.1,15.5,21.5,22.0
>> 拾取地上的蓝色|cRXP_PICK_闪光的石板|r获得|cRXP_LOOT_暮光石板碎片|r
.complete 8284,1 
step
#phase 4
#completewith next
>> 击杀|cRXP_ENEMY_掘泥打击者|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.loop 25,Silithus,51.6,16.4,54.6,13.2,58.4,13.6,62.6,16.6,61.4,21.6,63.2,24.0,64.8,28.2,67.6,32.0,60.6,30.6,56.4,32.8,53.0,28.0,54.8,21.8,51.6,16.4
>> 击杀|cRXP_ENEMY_石鞭蝎|r和|cRXP_ENEMY_掠沙诱捕者|r. 拾取|cRXP_LOOT_钉刺|r和|cRXP_LOOT_牙齿|r
.complete 8277,1 
.complete 8277,2 
.mob Stonelash Scorpid
.mob Sand Skitterer
step
#phase 4
.loop 25,Silithus,51.6,16.4,54.6,13.2,58.4,13.6,62.6,16.6,61.4,21.6,63.2,24.0,64.8,28.2,67.6,32.0,60.6,30.6,56.4,32.8,53.0,28.0,54.8,21.8,51.6,16.4
>> 击杀|cRXP_ENEMY_掘泥打击者|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.goto Silithus,49.70,37.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_地理学家拉克斯班|r
.turnin 8284 ,t The Twilight Mystery
.accept 8285 ,a The Deserter
.target Geologist Larksbane
step
#phase 4
.goto Silithus,51.15,38.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.turnin 8280 ,t Securing the Supply Lines
.accept 8281 ,a Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.80,38.51
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比提克斯·斯巴格|r
.turnin 8277 ,t Deadly Desert Venom
.accept 8278 ,a Noggle's Last Hope
.target Beetix Ficklespragg
step
#phase 4
#completewith Deserter
.goto Silithus,39.31,53.33,0
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r
>> |cRXP_WARN_不要专注于此; 你可以稍后再来完成|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
#completewith Deserter
.goto Silithus,62.52,64.00,0
.goto Silithus,50.73,55.99,0
>> 击杀|cRXP_ENEMY_石鞭撕掠者|r和|cRXP_ENEMY_石鞭巨钳蝎|r. 拾取|cRXP_LOOT_钉刺|r
>> 击杀|cRXP_ENEMY_石行蜘蛛|r. 拾取|cRXP_LOOT_牙齿|r
>> |cRXP_WARN_不要专注于此; 你可以稍后再来完成|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,41.30,88.50,10,0
.goto Silithus,40.80,88.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特加尔·塑纹者|r和|cRXP_FRIENDLY_法兰克尔·石桥|r
.complete 8304,2 
.complete 8304,1 
.target Rutgar Glyphshaper
.target Frankal Stonebridge
.skipgossip
step
.goto Silithus,41.30,88.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_鲁特加尔·塑纹者|r
.turnin 8308 ,t Brann Bronzebeard's Lost Letter
.target Rutgar Glyphshaper
.isOnQuest 8308
step
#phase 4
#label Deserter
.goto Silithus,67.19,69.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_隐士奥泰尔|r
.turnin 8285 ,t The Deserter
.accept 8279 ,a The Twilight Lexicon
.target Hermit Ortell
step
#phase 4
#completewith next
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
.loop 25,Silithus,62.2,63.2,57.0,59.2,50.8,58.0,47.8,54.6,40.8,50.2,34.6,49.4,36.2,39.4,33.6,34.6,27.8,43.4,33.0,49.0,34.6,53.6,34.6,60.4,34.2,65.4,39.4,64.6,42.6,61.4,48.8,62.4,52.8,63.0,59.0,64.4,62.6,66.2,62.2,63.2
>> 击杀|cRXP_ENEMY_石鞭巨钳蝎|r. 拾取|cRXP_LOOT_钉刺|r
.complete 8278,2 
.mob Stonelash Pincer
step
#phase 4
.loop 25,Silithus,62.2,63.2,57.0,59.2,50.8,58.0,47.8,54.6,40.8,50.2,34.6,49.4,36.2,39.4,33.6,34.6,27.8,43.4,33.0,49.0,34.6,53.6,34.6,60.4,34.2,65.4,39.4,64.6,42.6,61.4,48.8,62.4,52.8,63.0,59.0,64.4,62.6,66.2,62.2,63.2
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
.loop 25,Silithus,42.6,86.4,38.6,87.4,38.2,83.2,34.0,76.6,32.0,81.0,27.6,85.2,24.6,82.0,23.4,77.2,27.6,76.4,31.6,74.8,34.6,71.4,38.6,69.2,43.0,68.4,46.8,69.6,44.2,75.6,45.4,80.2,45.4,85.6,42.6,86.4
>> 击杀|cRXP_ENEMY_石鞭撕掠者|r和|cRXP_ENEMY_石行蜘蛛|r. 拾取|cRXP_LOOT_钉刺|r和|cRXP_LOOT_牙齿|r
.complete 8278,1 
.complete 8278,3 
.mob Stonelash Flayer
.mob Rock Stalker
step
#phase 4
.goto Silithus,51.15,38.29
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.turnin 8281 ,t Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比提克斯·斯巴格|r和|cRXP_FRIENDLY_诺格·斯巴格|r
.turnin 8278 ,t Noggle's Last Hope
.goto Silithus,51.80,38.51
.accept 8282 ,a Noggle's Lost Satchel
.goto Silithus,51.62,38.50
.target Beetix Ficklespragg
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,49.20,34.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官玛尔利斯|r
.turnin 8304 ,t Dearest Natalia
.target Commander Mar'alith
step
#phase 4
#completewith LexiconChapter2
>> 击杀|cRXP_ENEMY_暮光信徒|r. 拾取|cRXP_LOOT_暮光密文信|r
>> |cRXP_ENEMY_暮光守护者|r|cRXP_WARN_,|r|cRXP_ENEMY_主宰|r|cRXP_WARN_和|r|cRXP_ENEMY_大师|r|cRXP_WARN_有非常高的可能性会爆发|r
.collect 20404,10,8323,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,40.86,42.22
>> 击杀|cRXP_ENEMY_暮光守护者哈弗斯·灵刃|r. 拾取他的|cRXP_LOOT_暮光词典章节|r
>> 他在营地东边巡逻, 就在塞纳里奥堡垒的西南部
>> |cRXP_WARN_小心, 他的爆发很高|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.34,36.62
>> 击杀|cRXP_ENEMY_暮光守护者玛恩纳|r. 拾取她的|cRXP_LOOT_暮光词典章节|r
>> 她在塞纳里奥堡垒最西边的营地巡逻
>> |cRXP_WARN_小心, 她会心灵尖啸(顺发恐惧技能)|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#phase 4
#label LexiconChapter2
.goto Silithus,16.08,86.37
>> 击杀|cRXP_ENEMY_暮光守护者巴灵顿·埃克斯特|r. 拾取他的|cRXP_LOOT_暮光词典章节|r
>> 他在塞纳里奥堡垒最西南处的营地后面/安其拉的西北边
>> |cRXP_WARN_小心, 他会眩晕和致死打击|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
#completewith next
>> 拾取|cRXP_LOOT_诺格的背包|r
.complete 8282,1 
.unitscan Deathclasp
.group
step
#phase 4
.goto Silithus,45.00,92.20
>> 单拉出与|cRXP_ENEMY_死亡弯钩|r一起巡逻的小怪. 风筝它们直到|cRXP_ENEMY_死亡弯钩|r重置, 然后击杀它们
>> 击杀|cRXP_ENEMY_死亡弯钩|r. 拾取他的|cRXP_LOOT_蝎钳|r. 极尽所能的防止它进入近战范围
>> |cRXP_WARN_此任务怪攻击非常高并且拥有能晕你8s的毒. 如果你不熟悉/没准备好的话, 此任务将非常危险; 如果有必要就跳过|r
.complete 8283,1 
.mob Stonelash Flayer
.unitscan Deathclasp
.group 3
step
#phase 4
.goto Silithus,44.50,91.40
>> 拾取地上的|cRXP_LOOT_诺格的背包|r
.complete 8282,1 
.unitscan Deathclasp
.group
step
#phase 4
.goto Silithus,44.50,91.40
>> 拾取地上的|cRXP_LOOT_诺格的背包|r
>> |cRXP_WARN_小心不要引到死亡弯钩|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step
#phase 4
.goto Silithus,67.20,69.80
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_隐士奥泰尔|r
.turnin 8279 ,t The Twilight Lexicon
.accept 8287 ,a A Terrible Purpose
.accept 8323 ,a True Believers
.turnin 8323 ,t True Believers
.target Hermit Ortell
step

step
#phase 4
.goto Silithus,50.80,33.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯·库鲁兹|r
.turnin 8283 ,t Wanted - Deathclasp, Terror of the Sands
.target Vish Kozus
.isQuestComplete 8283
.group
step
#phase 4
.goto Silithus,51.62,38.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺格·斯巴格|r
.turnin 8282 ,t Noggle's Lost Satchel
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,49.20,34.20
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官玛尔利斯|r
.turnin 8287 ,t A Terrible Purpose
.target Commander Mar'alith
step
#phase 4
.loop 25,Silithus,38.8,45.4,38.2,43.8,38.8,42.6,40.4,42.4,41.4,45.6,40.0,46.2,38.8,45.4
>> 击杀|cRXP_ENEMY_暮光信徒|r. 拾取|cRXP_LOOT_暮光密文信|r
>> |cRXP_ENEMY_暮光守护者|r|cRXP_WARN_,|r|cRXP_ENEMY_主宰|r|cRXP_WARN_和|r|cRXP_ENEMY_大师|r|cRXP_WARN_有非常高的可能性会爆发|r
.complete 8318,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,48.57,37.78
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲍尔·蛮鬃|r
.turnin 8318 ,t Secret Communication
.target Bor Wildmane
step
.goto Silithus,48.69,36.67,0
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁克·驯风者|r
.fly Un'Goro >> 飞往安戈洛环形山
.target Runk Windtamer
.zoneskip Un'Goro Crater
step
.goto Un'Goro Crater,44.65,8.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3962 ,t It's Dangerous to Go Alone 
.target Linken
.isQuestComplete 3962
.group
step
#completewith end
.goto Un'Goro Crater,45.23,5.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Tanaris >> 飞往塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,51.56,26.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 ,t Super Sticky
.target Tran'rek
step
.goto Tanaris,50.88,26.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 ,t Pawn Captures Queen
.accept 4509 ,a Calm Before the Storm
.target Alchemist Pestlezugg
.isQuestComplete 4507
.group
step
#label end
.goto Tanaris,50.88,26.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4509 ,a Calm Before the Storm
.target Alchemist Pestlezugg
.isQuestTurnedIn 4507
.group
]])
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#name 59-60 冬泉谷/希利苏斯 II
step
#completewith next
.goto Tanaris,51.60,25.50
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Un'Goro Crater >> 飞往安戈洛环形山
.target Bulkrek Ragefist
.zoneskip Un'Goro Crater
step
.goto Un'Goro Crater,44.65,8.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3962 ,t It's Dangerous to Go Alone
.target Linken
.isQuestComplete 3962
.group
step
#completewith tanaris
.goto Un'Goro Crater,45.23,5.82
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Tanaris >> 飞往塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,50.88,26.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 ,t Pawn Captures Queen
.accept 4509 ,a Calm Before the Storm
.target Alchemist Pestlezugg
.isQuestComplete 4507
.group
step
.goto Tanaris,50.88,26.96
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4509 ,a Calm Before the Storm
.target Alchemist Pestlezugg
.isQuestTurnedIn 4507
.group
step
#label tanaris
.goto Tanaris,51.56,26.75
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 ,t Super Sticky
.target Tran'rek
step
#completewith next
.hs >> 炉石回永望镇
.use 6948
.zoneskip Winterspring
step
.goto Winterspring,61.36,38.83
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >> |cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >> |cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.88,37.61
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.turnin 5163 ,t Are We There, Yeti?
.target Umi Rumplesnicker
step << Druid
.cast 18960 >> 施放|T135758:0|t[传送: 月光林地]
.zoneskip Moonglade
step << !Druid
#label moonglade
.goto Winterspring,60.47,36.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤格雷克|r
.fly Moonglade>> 飞往月光林地
.target Yugrek
.zoneskip Moonglade
step
.goto Moonglade,44.88,35.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿姆伯尔|r
.turnin 6844 ,t Umber, Archivist
.accept 6845 ,a Uncovering Past Secrets
.target Umber
.isQuestTurnedIn 1126
.group
step
.goto Moonglade,51.68,45.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6845 ,t Uncovering Past Secrets
.target Rabine Saturna
.isQuestTurnedIn 1126
.group
step
.goto Moonglade,51.68,45.09
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 5527 ,t A 净化之匣
.target Rabine Saturna
.isQuestComplete 5527
step
.goto Moonglade,44.87,35.62
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿姆伯尔|r
.accept 1185 ,a Under the Chitin Was...
.turnin 1185 ,t Under the Chitin Was...
.target Umber
.isQuestTurnedIn 1126
.group
step << !Mage
.goto Moonglade,32.10,66.60
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法斯托恩|r
.fly Orgrimmar>> 飞往奥格瑞玛
.target Faustron
.zoneskip Orgrimmar
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step
.goto Orgrimmar,56.50,46.40
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 4509 ,t Calm Before the Storm
.accept 4511 ,a Calm Before the Storm
.target Zilzibin Drumlore
.isQuestTurnedIn 4507
.group
step
#ah
.goto Orgrimmar,63.62,51.24
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱什纳·刺藤|r
>> |cRXP_WARN_禁用其他带自动提交声望物品功能的插件, 否则你会需要再买布|r
.turnin 7826 ,t A Donation of Wool
.turnin 7827 ,t A Donation of Silk
.turnin 7831 ,t A Donation of Mageweave
.turnin 7824 ,t A Donation of Runecloth
.target Rashona Straglash
step
#ah
#completewith next
.goto Orgrimmar,50.68,70.37,0
>> 如果你之前购买了足够的布就去邮箱取出以下物品:
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
.goto Orgrimmar,37.69,87.92
>> |cRXP_WARN_禁用其他带自动提交声望物品功能的插件, 否则你会需要再买布|r
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维赫纳|r
.turnin 7833 ,t A Donation of Wool
.turnin 7834 ,t A Donation of Silk
.turnin 7835 ,t A Donation of Mageweave
.turnin 7836 ,t A Donation of Runecloth
.target Vehena
step
.goto Orgrimmar,49.70,69.30
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡鲁斯|r
.turnin 4511 ,t Calm Before the Storm
.target Karus
.isQuestTurnedIn 4507
.group
step
.goto Orgrimmar,54.10,68.41
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.home >> 绑定炉石到奥格瑞玛
.target Innkeeper Gryshka
step << Mage
.cast 3563 >> 施放|T135766:0|t[传送: 幽暗城]
.zoneskip Undercity
step << !Mage
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Tirisfal Glades >> 乘坐飞艇前往提瑞斯法林地
.zoneskip Tirisfal Glades
step
.goto Undercity,48.50,71.90
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师科雷|r
.turnin 4642 ,t Melding of Influences
.target Chemist Cuely
step
#completewith next
.goto Tirisfal Glades,61.9,59.1
.zone Stranglethorn Vale >> 乘坐飞艇前往格罗姆高营地
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,32.5,29.3
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯塔|r
.fly Stonard>> 飞往斯通纳德
.target Thysta
.zoneskip Swamp of Sorrows
step
.goto Swamp of Sorrows,34.29,66.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 2681 ,a The Stones That Bind Us
.target Fallen Hero of the Horde
step
#completewith Stonesthat
+把|cRXP_ENEMY_仆从|r拉到|cRXP_PICK_禁锢之石|r附近, 然后把他们打到1%血量
+|TInterface/GossipFrame/HealerGossipIcon:0|t当|cRXP_ENEMY_仆从|r处于放逐状态时点击|cRXP_PICK_禁锢之石|r, 然后杀死他们
step
#completewith next
>> 击杀|cRXP_ENEMY_奥利斯塔的仆从|r
.complete 2681,3,1 
.mob Servant of Allistarj
step
.goto Blasted Lands,43.6,11.8,50,0
.goto Blasted Lands,41.6,14.2,50,0
.goto Blasted Lands,49.4,43.6
>> 击杀|cRXP_ENEMY_戈洛尔的仆从|r
.complete 2681,2,1 
.mob Servant of Grol
step
#completewith next
.goto Blasted Lands,43.4,40.4,50,0
.goto Blasted Lands,41.6,39.6,50,0
.goto Blasted Lands,38.6,34.0
>> 击杀|cRXP_ENEMY_奥利斯塔的仆从|r
.complete 2681,3,1 
.mob Servant of Allistarj
step
.loop 25,Blasted Lands,53.2,59.6,51.8,56.8,53.8,53.6,55.6,51.0,60.0,50.6,62.2,51.6,63.8,55.8,62.2,51.6,60.0,50.6,55.6,51.0,53.8,53.6,51.8,56.8,53.2,59.6
>> 击杀|cRXP_ENEMY_拉瑟莱克的仆从|r
.complete 2681,1 
.mob Servant of Razelikh
step
#label Stonesthat
.goto Blasted Lands,64.6,46.6,50,0
.goto Blasted Lands,64.0,40.6,50,0
.goto Blasted Lands,64.8,34.6
>> 击杀|cRXP_ENEMY_瑟温妮的仆从|r
.complete 2681,4,1 
.mob Servant of Sevine
step
#completewith next
.zone Swamp of Sorrows >> 前往悲伤沼泽
step
.goto Blasted Lands,52.76,2.93
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2681 ,t The Stones That Bind Us
.accept 2702 ,a Heroes of Old
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.29,66.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2702 ,t Heroes of Old
.accept 2701 ,a Heroes of Old
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.29,66.14
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t最后一次对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2701 ,t Heroes of Old
.target Fallen Hero of the Horde
step
.hs >> 炉石回奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step
.goto Orgrimmar,45.13,63.89
>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多拉斯|r
.fly Azshara >> 飞往艾萨拉
.target Doras
.zoneskip Azshara
step
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
.xp 60 >> 刷到60级
]])
