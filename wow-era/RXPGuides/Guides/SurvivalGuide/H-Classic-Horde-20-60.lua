RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 35-37 凄凉之地 部落
#version 7
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#next 37-39 北荆棘谷
step
.goto Stonetalon Mountains,46.00,60.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1088 ,t Ordanus
.target Braelyn Firehand
.isQuestComplete 1088
.group
step
.abandon 1088 ,ab Ordanus
.isOnQuest 1088
step
.abandon 2841 ,ab Rig Wars
.isOnQuest 2841
step
.goto Stonetalon Mountains,44.63,61.55,60,0
.goto Stonetalon Mountains,38.77,68.65,60,0
.goto Stonetalon Mountains,30.22,75.61,60,0
.goto Stonetalon Mountains,29.29,79.69
.zone Desolace >> 朝西南前往山路. 沿着山路进入焦炭谷. 从此处往南进入凄凉之地
.zoneskip Desolace
step
.goto Desolace,55.80,30.10
>> 击杀并拾取|cRXP_ENEMY_燃刃氏族|r成员直到你获得|T134253:0|t[|cFF00BCD4恶魔之皮|r]
.collect 20310,1,1480 
.accept 1480 ,a The Corrupter
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,38.90,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.accept 5741 ,a Sceptre of Light
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >> 前往幽灵岗哨
step
.goto Desolace,55.40,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳塔卡·长角|r
.turnin 5361 ,t Family Tree
.target Nataka Longhorn
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1432 ,t Alliance Relations
.accept 1433 ,a Alliance Relations
.accept 1434 ,a Befouled by Satyr
.target Takata Steelblade
step
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫林·碎骨者|r
.turnin 1433 ,t Alliance Relations
.accept 1435 ,a The Burning of Spirits
.turnin 1480 ,t The Corrupter
.accept 1481 ,a The Corrupter
.target Maurin Bonesplitter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费古尔·双刃|r和|cRXP_FRIENDLY_古尔达·怒痕|r
.accept 1365 ,a Khan Dez'hepah
.goto Desolace,56.19,59.56
.accept 1368 ,a Gelkis Alliance
.goto Desolace,56.29,59.67
.target Felgur Twocuts
.target Gurda Wildmane
step
.goto Desolace,73.20,41.80,60,0
.goto Desolace,73.00,46.80,60,0
.goto Desolace,74.80,48.80,60,0
.goto Desolace,73.20,41.80,0
.goto Desolace,73.00,46.80,0
.goto Desolace,74.80,48.80
>> 击杀|cRXP_ENEMY_戴兹帕可汗|r. 拾取他的|cFF00BCD4头颅|r
>>|cRXP_WARN_他会在营地中3处地点刷新|r
.complete 1365,1 
.unitscan Khan Dez'hepah
step
.loop 25,Desolace,70.12,50.27,71.63,50.57,73.10,50.24,74.11,49.66,74.43,47.40,73.85,44.44,73.21,42.47,71.53,41.20,70.05,41.17,68.76,43.33,68.56,45.72,68.52,47.77,68.57,50.14,70.12,50.27
.xp 35+33550>> 刷到35级半
step
#completewith next
>> 击杀|cRXP_ENEMY_怨怒巡影者|r. 拾取|cFF00BCD4头皮|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step
.loop 25,Desolace,75.26,27.91,76.77,27.73,77.54,26.68,78.20,25.63,78.90,24.60,78.74,23.15,79.33,20.96,79.69,18.92,79.36,16.18,77.43,15.44,75.96,15.89,74.52,15.66,72.81,16.83,71.58,17.94,71.50,20.22,72.36,21.23,73.04,22.41,73.09,24.41,73.79,25.72,75.26,27.91
>> 击杀|cRXP_ENEMY_怨怒萨特|r. 优先击杀|cRXP_ENEMY_怨怒盗贼|r
.complete 1434,1 
.complete 1434,2 
.complete 1434,3 
.complete 1434,4 
.unitscan Hatefury Rogue
step
.loop 25,Desolace,75.26,27.91,76.77,27.73,77.54,26.68,78.20,25.63,78.90,24.60,78.74,23.15,79.33,20.96,79.69,18.92,79.36,16.18,77.43,15.44,75.96,15.89,74.52,15.66,72.81,16.83,71.58,17.94,71.50,20.22,72.36,21.23,73.04,22.41,73.09,24.41,73.79,25.72,75.26,27.91
>> 击杀|cRXP_ENEMY_怨怒巡影者|r. 拾取|cFF00BCD4头皮|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比布里·弗斯巴克|r
.accept 5501 ,a Bone Collector
.target Bibbly F'utzbuckle
step
#completewith next
.goto Desolace,56.30,57.07,100 >> 前往幽灵岗哨
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1434 ,t Befouled by Satyr
.target Takata Steelblade
step
.goto Desolace,52.20,53.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫林·碎骨者|r
.turnin 1481 ,t The Corrupter
.accept 1482 ,a The Corrupter
.target Maurin Bonesplitter
step
.goto Desolace,51.20,53.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈诺尔|r
.vendor >>|cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Harnor
step
.goto Desolace,56.20,59.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1365 ,t Khan Dez'hepah
.accept 1366 ,a Centaur Bounty
.target Felgur Twocuts
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.accept 5561 ,a Kodo Roundup
.target Smeed Scrabblescrew
step
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
>> 击杀|cRXP_ENEMY_玛格拉姆半人马|r. 拾取他们的|cFF00BCD4耳朵|r
.complete 1366,1 
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
>> 继续刷|cRXP_ENEMY_玛格拉姆半人马|r直到你与|cRXP_FRIENDLY_吉尔吉斯半人马|r的声望达到友善
.reputation 92,Friendly >> 把吉尔吉斯半人马的声望刷到友善
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
.goto Desolace,56.20,59.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1366 ,t Centaur Bounty
.target Felgur Twocuts
step
#completewith next
.goto Desolace,49.7,57.2,0
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在科多坟场拾取地上的|cRXP_LOOT_科多兽骨|r
>>|cRXP_WARN_注意!在拾取了|cRXP_LOOT_科多兽骨|r后, 会刷新1只高等级的|cRXP_ENEMY_科多兽|r|r << !Rogue !Druid
>>|cRXP_WARN_注意!在拾取了|cRXP_LOOT_科多兽骨|r后, 会刷新1只高等级的|cRXP_ENEMY_科多兽|r|r|cRXP_WARN_. 拾取后立马潜行在大多数时候可以避免它们攻击你|r << Rogue/Druid
.complete 5501,1 
step
.goto Desolace,60.86,61.86,0
>> 对|cRXP_FRIENDLY_科多兽|r使用|T132488:0|t[科多兽诱引器], 然后护送它们回到|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r处
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在每次护送科多兽到位后对话1次|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.complete 5561,1 
.use 13892
.target Dying Kodo
.target Aged Kodo
.target Ancient Kodo
.target Smeed Scrabblescrew
step
.goto Desolace,54.42,63.79,30,0
.goto Desolace,54.38,62.87,30,0
.goto Desolace,53.31,61.24,30,0
.goto Desolace,54.39,60.38,30,0
.goto Desolace,53.90,58.17,30,0
.goto Desolace,52.88,57.13,30,0
.goto Desolace,52.14,58.56,30,0
.goto Desolace,51.13,59.97,30,0
.goto Desolace,50.81,58.72,30,0
.goto Desolace,49.70,57.15,30,0
.goto Desolace,48.90,58.86,30,0
.goto Desolace,48.98,60.05,30,0
.goto Desolace,53.31,61.24
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在科多坟场拾取地上的|cRXP_LOOT_科多兽骨|r
>>|cRXP_WARN_注意!在拾取了|cRXP_LOOT_科多兽骨|r后, 会刷新1只高等级的|cRXP_ENEMY_科多兽|r|r << !Rogue !Druid
>>|cRXP_WARN_注意!在拾取了|cRXP_LOOT_科多兽骨|r后, 会刷新1只高等级的|cRXP_ENEMY_科多兽|r|r|cRXP_WARN_. 拾取后立马潜行在大多数时候可以避免它们攻击你|r << Rogue/Druid
.complete 5501,1 
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.turnin 5561 ,t Kodo Roundup
.target Smeed Scrabblescrew
step
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1368 ,t Gelkis Alliance
.accept 1370 ,a Stealing Supplies
.target Uthek the Wise
step
#completewith next
.goto Desolace,25.26,71.61,150 >> 前往葬影村
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰迦·慧鬃|r
.accept 5381 ,a Hand of Iruxos
.target Taiga Wisemane
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦拉斯|r
.accept 6142 ,a Clam Bait
.target Mai'Lahii
step
.goto Desolace,23.30,72.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜泽加尔|r
.accept 6143 ,a Other Fish to Fry
.target Drulzegar Skraghook
step
.goto Desolace,21.60,74.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在码头尽头对话|cRXP_FRIENDLY_萨隆|r
.fp Shadowpray Village >> 开启葬影村飞行点
.target Thalon
step
#ah
.loop 25,Desolace,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4,23.3,77.1,22.4,75.1,20.7,75.0,20.0,73.6,19.8,76.1,17.9,76.3,18.7,77.2,24.3,77.4
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_贝壳陷阱|r拾取|cFF00BCD4贝壳|r
.use 5996 >> 饮用1瓶|T134797:0|t[水下呼吸药剂]
.collect 13545,10 
.mob Drysnap Crawler
.mob Drysnap Pincer
.itemcount 5996,1
step
#ah
.goto Desolace,22.44,73.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉纳泽林|r
.collect 13546,2 
.turnin 5421 ,t Fish in a Bucket
.target Jinar'Zillen
.itemcount 13545,10 
step << Hunter
.goto Desolace,24.93,71.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图克|r
>>|cFF0E8312从他那购买|r|T132382:0|t[锐锋箭]
.collect 3030,2600,5741,1 
.target Tukk
step
#completewith next
.goto Desolace,62.30,39.00,150 >> 前往凄凉之地北部
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比布里·弗斯巴克|r
.turnin 5501 ,t Bone Collector
.target Bibbly F'utzbuckle
step
#completewith next
.use 6436 >> 使用|T134095:0|t[燃烧宝石]来击杀|cRXP_ENEMY_燃刃氏族|r成员
.complete 1435,1 
step
.goto Desolace,55.20,30.10
>> 在塔顶击杀|cRXP_ENEMY_燃刃先知|r. 拾取|cFF00BCD4节杖|r
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.use 6436 >> 使用|T134095:0|t[燃烧宝石]来击杀|cRXP_ENEMY_燃刃氏族|r成员
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,55.31,27.55,12,0
.goto Desolace,54.62,27.54,10,0
.goto Desolace,54.43,27.22,10,0
.goto Desolace,54.93,26.67
>> 进入大一些的建筑物, 然后对|cRXP_PICK_艾诺索斯之手水晶|r使用|T136248:0|t[恶魔之锄]
>> 在刷新后击杀|cRXP_ENEMY_恶魔灵魂|r. 拾取|cFF00BCD4盒子|r
.complete 5381,1 
.mob Demon Spirit
step
.goto Desolace,55.58,28.70,50,0
.goto Desolace,56.82,29.95,50,0
.goto Desolace,57.21,27.86,50,0
.goto Desolace,57.62,26.30,50,0
.goto Desolace,57.26,22.39,50,0
.goto Desolace,56.41,21.57,50,0
.goto Desolace,56.82,29.95
.use 6436 >> 完成使用|T134095:0|t[燃烧宝石]击杀|cRXP_ENEMY_燃刃氏族|r成员
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,38.90,27.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_阿佐尔·奥达蒙特|r处
.turnin 5741 ,t Sceptre of Light
.accept 6027 ,a Book of the Ancients
.target Azore Aldamort
step
.goto Desolace,36.07,30.40
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击木桶上的|cRXP_PICK_拉克摩尔的日志|r
.accept 6161 ,a Claim Rackmore's Treasure!
step
#ah
#completewith next
.use 5996 >> 饮用1瓶|T134797:0|t[水下呼吸药剂]
.itemcount 5996,1
step
#completewith Rackmore
>> 击杀|cRXP_ENEMY_滑刃神谕者|r. 拾取|cFF00BCD4神谕水晶|r
>>|cRXP_ENEMY_滑刃神谕者|r|cRXP_WARN_与其他|r|cRXP_ENEMY_滑刃娜迦|r|cRXP_WARN_共享刷新; 你可能必须全部击杀他们|r
.complete 1482,1 
.mob Slitherblade Oracle
step
#completewith BookoftheAncients
>> 击杀|cRXP_ENEMY_滑刃娜迦|r. 拾取|cFF00BCD4金钥匙|r
.complete 6161,2 
step
#completewith ClamMeat
>> 击杀|cRXP_ENEMY_枯钳巨螯龙虾人|r和|cRXP_ENEMY_枯钳龙虾人|r. 拾取|cFF00BCD4银钥匙|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith Rackmore
>> 击杀|cRXP_ENEMY_滑刃娜迦|r, |cRXP_ENEMY_滑刃侍从|r,和|cRXP_ENEMY_滑刃巫女|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
#label ClamMeat
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58
>>|TInterface/GossipFrame/HealerGossipIcon:0|t拾取|cRXP_PICK_巨型软壳蚌|r获得|cFF00BCD4肉|r
>>|cRXP_ENEMY_暴怒的暗礁蟹|r|cRXP_WARN_也会掉落|r|cRXP_PICK_巨型软壳蚌|r
.complete 6142,1 
.mob Enraged Reef Crawler
step
#label SilverKey
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58
>> 击杀|cRXP_ENEMY_枯钳巨螯龙虾人|r和|cRXP_ENEMY_枯钳龙虾人|r. 拾取|cFF00BCD4银钥匙|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
.goto Desolace,30.00,8.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_拉克摩尔的箱子|r
.turnin 6161 ,t Claim Rackmore's Treasure!
.isQuestComplete 6161
step
#label BookoftheAncients
.goto Desolace,28.20,6.60
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_毒蛇雕像|r来召唤|cRXP_ENEMY_柯拉加鲁领主|r. 击杀并拾取他的|cFF00BCD4书|r
>>|cRXP_WARN_先清理干净毒蛇雕像周围的小怪!|r
.complete 6027,1 
.mob Lord Kragaru
step
.loop 25,Desolace,28.48,11.14,27.24,10.26,27.81,7.83,27.87,5.71,28.66,6.74,30.07,6.86,30.96,7.87,30.33,8.98,29.99,11.23,28.48,11.14
>> 击杀|cRXP_ENEMY_滑刃娜迦|r. 拾取|cFF00BCD4金钥匙|r
.complete 6161,2 
step
#label Rackmore
.goto Desolace,30.00,8.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|t点击|cRXP_PICK_拉克摩尔的箱子|r
.turnin 6161 ,t Claim Rackmore's Treasure!
step
#completewith next
>> 击杀|cRXP_ENEMY_滑刃娜迦|r, |cRXP_ENEMY_滑刃侍从|r,和|cRXP_ENEMY_滑刃巫女|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
.loop 25,Desolace,28.48,11.14,27.24,10.26,27.81,7.83,27.87,5.71,28.66,6.74,30.07,6.86,30.96,7.87,30.33,8.98,29.99,11.23,28.48,11.14
>> 击杀|cRXP_ENEMY_滑刃神谕者|r. 拾取|cFF00BCD4神谕水晶|r
>>|cRXP_ENEMY_滑刃神谕者|r|cRXP_WARN_与其他|r|cRXP_ENEMY_滑刃娜迦|r|cRXP_WARN_共享刷新; 你可能必须全部击杀他们|r
.complete 1482,1 
.mob Slitherblade Oracle
step
.loop 25,Desolace,32.41,23.00,34.99,21.73,36.86,20.16,39.13,18.74,40.44,20.40,37.70,20.85,36.64,23.40,34.67,24.12,32.41,23.00
>> 击杀|cRXP_ENEMY_滑刃娜迦|r, |cRXP_ENEMY_滑刃侍从|r,和|cRXP_ENEMY_滑刃巫女|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_阿佐尔·奥达蒙特|r处
.turnin 6027 ,t Book of the Ancients
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >> 前往幽灵岗哨
step
.goto Desolace,52.24,53.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_莫林·碎骨者|r处
.turnin 1435 ,t The Burning of Spirits
.turnin 1482 ,t The Corrupter
.accept 1484 ,a The Corrupter
.target Maurin Bonesplitter
step
#ah
.goto Desolace,55.41,55.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳塔卡·长角|r
.accept 5386 ,a Catch of the Day
.turnin 5386 ,t Catch of the Day
.target Nataka Longhorn
.itemcount 13546,2 
step
.goto Desolace,52.56,54.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_塔卡塔·钢刃|r处
.turnin 1484 ,t The Corrupter
.accept 1488 ,a The Corrupter
.accept 1436 ,a Alliance Relations
.target Takata Steelblade
step
.goto Desolace,69.22,77.24,30,0
.goto Desolace,70.01,78.60,30,0
.goto Desolace,70.92,75.43,30,0
.goto Desolace,73.18,75.11,30,0
.goto Desolace,73.57,74.21,30,0
.goto Desolace,73.67,72.90,30,0
>>|TInterface/GossipFrame/HealerGossipIcon:0|t在玛格拉姆村落附近拾取|cRXP_PICK_一袋肉|r获得|cFF00BCD4肉|r
.complete 1370,1 
step
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1370 ,t Stealing Supplies
.accept 1373 ,a Ongeku
.target Uthek the Wise
step << Hunter
#completewith next
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_安伯达|r
.stable >> 存放你的宠物. 你很快就会抓一只|cRXP_ENEMY_荒土鞭尾蝎|r
.target Aboda
step << Hunter
.goto Desolace,38.24,74.30,50,0
.goto Desolace,42.45,70.19,50,0
.goto Desolace,43.34,60.43,50,0
.goto Desolace,42.45,70.19
.cast 1515 >> |cRXP_WARN_对1只|cRXP_ENEMY_荒土鞭尾蝎|r|cRXP_WARN_施放|r|T132164:0|t[驯服野兽]来驯服它|r
.train 16831 >>|cRXP_WARN_跟它一起刷怪来学习|r|T132140:0|t[爪击 (等级 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处以获取更多关于宠物训练的信息|r
.mob Scorpashi Lasher
step << Hunter
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_安伯达|r
.stable >> 放弃|cRXP_ENEMY_荒土鞭尾蝎|r并换回你的常规宠物
.target Aboda
step
.goto Desolace,25.10,72.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁恩·蛮鬃|r
.accept 5763 ,a Hunting in Stranglethorn
.target Roon Wildmane
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_泰迦·慧鬃|r处
.turnin 5381 ,t Hand of Iruxos
.target Taiga Wisemane
step
.goto Desolace,23.40,72.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_杜泽加尔|r处
.turnin 6143 ,t Other Fish to Fry
.target Drulzegar Skraghook
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到|cRXP_FRIENDLY_麦拉斯|r处
.turnin 6142 ,t Clam Bait
.target Mai'Lahii
step
#completewith next
.hs >> 炉石回雷霆崖
.use 6948
step
.goto Thunder Bluff,45.81,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板帕拉|r
.vendor >>|cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Pala





step << !Undead 
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贤者图希克|r
.accept 1049 ,a Compendium of the Fallen
.target Sage
.dungeon SM
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9493 >> 学习职业技能
.target Turak Runetotem
.xp <36,1
.xp >38,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图拉克·符文图腾|r
.train 5201 >> 学习职业技能
.target Turak Runetotem
.xp <38,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14303 >> 学习职业技能
.target Urek Thunderhorn
.xp <36,1
.xp >38,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14320 >> 学习职业技能
.target Urek Thunderhorn
.xp <38,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24560 >> 学习宠物技能
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 1680 >> 学习职业技能
.target Ker Ragetotem
.xp <36,1
.xp >38,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔·狂暴图腾|r
.train 8820 >> 学习职业技能
.target Ker Ragetotem
.xp <38,1
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >> 飞往奥格瑞玛
.target Tal
.zoneskip Orgrimmar
step << Mage
.cast 3567 >> 施放|T135759:0|t[传送: 奥格瑞玛]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8427 >> 学习职业技能
.target Pephredo
.xp <36,1
.xp >38,1
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_皮菲瑞多|r
.train 8413 >> 学习职业技能
.target Pephredo
.xp <38,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_霍苏斯|r|cRXP_BUY_. 从他那购买至少2个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Horthus
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10412 >> 学习职业技能
.target Kardris Dreamseeker
.xp <36,1
.xp >38,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡德里斯|r
.train 10391 >> 学习职业技能
.target Kardris Dreamseeker
.xp <38,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8691 >> 学习职业技能
.target Ormok
.xp <36,1
.xp >38,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫克|r
.train 8621 >> 学习职业技能
.target Ormok
.xp <38,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_雷库尔|r|cRXP_BUY_. 从他那购买|r|T134387:0|t[闪光粉]
.collect 5140,20,2479,1 
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 2362 >> 学习职业技能
.target Mirket
.xp <36,1
.xp >38,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
.train 11711 >> 学习职业技能
.target Mirket
.xp <38,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库古尔|r
.vendor >> 购买你买得起的宠物技能
.target Kurgul
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 6066 >> 学习职业技能
.target Ur'kyo
.xp <36,1
.xp >38,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
.train 6078 >> 学习职业技能
.target Ur'kyo
.xp <38,1
step
.goto Orgrimmar,22.40,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔丹|r
.turnin 1436 ,t Alliance Relations
.target Keldran
step
.goto Orgrimmar,75.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1184 ,t Parts of the Swarm
.target Belgrom Rockmaul
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 10592,3 >> |cRXP_BUY_从拍卖行购买3瓶|r|T134816:0|t[猫眼药剂]
.target Auctioneer Thathung
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格雷什卡|r
.home >> 绑定炉石到奥格瑞玛
.vendor >>|cRXP_BUY_清包并补充必要的吃喝|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_清包并补充必要的食物|r << Rogue/Warrior
.target Innkeeper Gryshka
step
#completewith next
.zone Durotar >> 离开奥格瑞玛
.zoneskip Durotar
step
.goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
.zone Stranglethorn Vale >> 乘坐飞艇前往荆棘谷
.zoneskip Stranglethorn Vale
]])
