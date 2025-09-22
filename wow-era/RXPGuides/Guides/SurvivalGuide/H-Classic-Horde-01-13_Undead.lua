local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 1-6 亡灵
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#defaultfor Undead
#next 6-13 亡灵

step << !Undead
    #completewith next
    +|cRXP_WARN_你选择了亡灵升级指南. 建议你选择对应种族起始地的升级指南.|r
step
    #completewith Zombies
	.destroy 6948 >> 摧毁包里的|T134414:0|t[炉石], 你暂时用不到
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >>从坟里出来找|cRXP_FRIENDLY_管理员摩尔多|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员摩尔多|r
    .accept 363 ,, Rude Awakening
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_击杀|cRXP_ENEMY_食腐狼幼崽|r和|cRXP_ENEMY_夜行蝙蝠|r. 刷到你有60铜价值的垃圾(包括你身上的装备)|r << Mage
    +|cRXP_WARN_击杀|cRXP_ENEMY_食腐狼幼崽|r和|cRXP_ENEMY_夜行蝙蝠|r. 刷到你有50铜价值的垃圾(包括你身上的装备)|r << Priest
    +|cRXP_WARN_击杀|cRXP_ENEMY_食腐狼幼崽|r和|cRXP_ENEMY_夜行蝙蝠|r. 刷到你有10铜价值的垃圾(包括你身上的装备)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> 进入屋子
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水]
    .vendor >> 清理背包
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温雅·玛山德|r和|cRXP_FRIENDLY_暗影牧师萨维斯|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r << Mage
    .accept 1470 ,, Piercing the Veil << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 ,, Rude Awakening
    .accept 364 ,, The Mindless Ones
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 ,, The Damned
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊莎贝拉|r
    .train 1459 >> 学习|T135932:0|t[奥术智慧]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·斯密瑟|r
    .vendor >> 清理背包
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马克希米林|r
    .train 348 >> 学习|T135817:0|t[献祭]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r
    .turnin 363 ,, Rude Awakening
    .accept 364 ,, The Mindless Ones
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 ,, The Damned
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿基巴德|r
    .vendor >> 清理背包
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .train 6673 >> 学习|T132333:0|t[战吼]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    .goto Tirisfal Glades,31.35,66.21,10,0
    .loop 25,Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
    >> 击杀|cRXP_ENEMY_断骨骷髅|r. 拾取|cRXP_LOOT_断骨骷髅的颅骨|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_击杀|cRXP_ENEMY_无脑的僵尸|r和|cRXP_ENEMY_丑陋的僵尸|r. 刷到你有25铜价值的垃圾(包括你身上的装备)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] 
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温雅·玛山德|r
    .turnin 1470 ,, Piercing the Veil
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r|T136218:0|t[召唤小鬼]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .loop 25,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.8,33.55,64.57,33.29,64.96,31.72,63.98
    >> 击杀|cRXP_ENEMY_无脑的僵尸|r和|cRXP_ENEMY_丑陋的僵尸|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_击杀|cRXP_ENEMY_无脑的僵尸|r和|cRXP_ENEMY_丑陋的僵尸|r. 刷到你有33铜价值的垃圾(包括你身上的装备)|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] 
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> 清理背包
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] 
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> 清理背包
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r和|cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, 和|cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, 和|cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, 和|cRXP_FRIENDLY_黑暗教士杜斯滕|r << Priest
    .turnin 364 ,, The Mindless Ones
    .accept 3095 ,, Simple Scroll << Warrior
    .accept 3096 ,, Encrypted Scroll << Rogue
    .accept 3097 ,, Hallowed Scroll << Priest
    .accept 3098 ,, Glyphic Scroll << Mage
    .accept 3099 ,, Tainted Scroll << Warlock
    .accept 3901 ,, Rattling the Rattlecages
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 ,, The Damned
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 ,, Tainted Scroll << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .turnin 3098 ,, Glyphic Scroll << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 ,, Hallowed Scroll << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] 
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79
    >> 击杀|cRXP_ENEMY_食腐狼幼崽|r和|cRXP_ENEMY_蓬毛食腐狼|r. 拾取|cRXP_LOOT_食腐狼的爪子|r
    >> 击杀|cRXP_ENEMY_夜行蝙蝠|r和|cRXP_ENEMY_癞皮夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠翼|r
    >>|cRXP_WARN_尽量避开|cRXP_ENEMY_癞皮夜行蝙蝠|r, 他们比|cRXP_ENEMY_夜行蝙蝠|r难杀多了|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob Young Scavenger
    .mob Ragged Scavenger
    .mob Duskbat
    .mob Mangy Duskbat
step
    .loop 25,Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
    >> 击杀|cRXP_ENEMY_断骨骷髅|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som
    .loop 25,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,32.38,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.8,33.55,64.57,33.29,64.96,31.72,63.98
    .xp 3+480 >> 刷到3级多480经验 480+/1400xp << Warrior/Rogue
    .xp 3+560 >> 刷到3级多560经验 560+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    .loop 25,Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,32.38,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.8,33.55,64.57,33.29,64.96,31.72,63.98
    .xp 3+940 >>刷到3级多940经验 940+/1400xp << Warrior/Rogue
    .xp 3+980 >>刷到3级多980经验 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] 
    >>|cRXP_WARN_身上至少留1银|r << Mage/Warlock/Priest
    .collect 159,15,380,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .money >0.0075
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师萨维斯|r和|cRXP_FRIENDLY_新兵艾尔雷斯|r
    .turnin 3901 ,, Rattling the Rattlecages
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 ,, The Damned
    .accept 6395 ,, Marla's Last Wish
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士杜斯滕|r
    .train 589 >> 学习职业技能
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士杜斯滕|r
    .train 2052 >> 学习|T135929:0|t[次级治疗术 (等级 2)]
    .train 589 >> 学习|T136207:0|t[暗言术: 痛]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士杜斯滕|r
    .train 1243 >> 学习|T135987:0|t[真言术: 韧]
    .train 589 >> 学习|T136207:0|t[暗言术: 痛]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士杜斯滕|r
    .train 589 >> 学习|T136207:0|t[暗言术: 痛]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马克希米林|r
    .train 172 >> 学习|T136118:0|t[腐蚀术]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊莎贝拉|r
    .train 116 >> 学习|T135846:0|t[寒冰箭]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵萨尔坦|r和|cRXP_FRIENDLY_执行官阿伦|r
    .accept 3902 ,, Scavenging Deathknell
    .goto Tirisfal Glades,31.61,65.62
    .accept 380 ,, Night Web's Hollow
    .goto Tirisfal Glades,32.15,66.01
    .target Deathguard Saltain
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿基巴德|r
    .vendor >> 清理背包
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 ,, Simple Scroll
    .train 100 >> 学习|T132337:0|t[冲锋]
    .train 772 >> 学习|T132155:0|t[撕裂]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 ,, Simple Scroll
    .train 772 >> 学习|T132155:0|t[撕裂]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大卫·提亚斯|r
    .turnin 3096 ,, Encrypted Scroll
    .train 53 >> 学习|T132090:0|t[背刺]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大卫·提亚斯|r
    .turnin 3096 ,, Encrypted Scroll
    .target David Trias
step
    >>打开地上的|cRXP_PICK_物资箱|r. 拾取|cRXP_LOOT_破烂装备|r
    .loop 12,Tirisfal Glades,32.37,64.37,32.81,64.39,32.89,64.60,33.01,65.38,33.79,64.57,33.13,63.08,32.79,63.11,31.86,61.49,31.75,61.96,31.70,62.53,31.34,62.44,32.37,64.37
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    .goto Tirisfal Glades,29.29,59.38,50,0
    .goto Tirisfal Glades,29.94,57.33,50,0
    .loop 25,Tirisfal Glades,29.94,57.33,29.82,56.03,29.25,55.77,28.40,56.51,27.68,57.10,28.29,58.31,28.25,59.41,28.80,59.53,29.29,59.40,29.67,58.53,29.94,57.33
    >> 击杀|cRXP_ENEMY_小夜行蜘蛛|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    .goto Tirisfal Glades,27.86,58.98,40,0
    .loop 25,Tirisfal Glades,28.25,58.27,28.42,59.07,27.86,60.57,27.17,59.18,27.30,57.97,26.94,56.42,27.51,56.00,28.25,58.27
    >> 击杀入口处的|cRXP_ENEMY_小夜行蜘蛛|r
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>进入洞穴
step
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54
    >> 击杀洞内的|cRXP_ENEMY_小夜行蜘蛛|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_施放|r|T136218:0|t[召唤小鬼]
step
    #hardcore
    #completewith next
    >>|cRXP_WARN_跳到洞内的某个东西上让自己看起来悬空, 然后点击小退宏|r
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >> |cRXP_WARN_点击此处查看演示|r
    .link /camp >> |cRXP_WARN_点击此处查看宏命令|r
    >>|cRXP_WARN_如何创建宏命令: 游戏内输入 /macro 然后点击"新建", 命名宏命令, 然后输入 /camp 到命令框内. 把刚做好的宏拖到动作栏|r
    .goto Tirisfal Glades,31.08,64.88,30 >> 回到丧钟镇
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵萨尔坦|r
    .turnin 3902 ,, Scavenging Deathknell
    .target Deathguard Saltain
step
    #sticky
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官阿伦|r
    .turnin 380 ,, Night Web's Hollow
    .accept 381 ,, The Scarlet Crusade
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿基巴德|r
    .vendor >> 清理背包
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·基恩|r
    >>|cRXP_BUY_购买|r|T132794:0|t[清凉的泉水] 
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> 清理背包
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    .loop 25,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    >> 击杀|cRXP_ENEMY_血色新兵|r和|cRXP_ENEMY_血色信徒|r. 拾取|cRXP_LOOT_血色十字军臂章|r
    >>|cRXP_WARN_暂时不要击杀|cRXP_ENEMY_迈文·考加尔|r|r
    >>|cRXP_WARN_尽量避开|cRXP_ENEMY_血色新兵|r. 他们会|r|T135843:0|t[霜甲术]|cRXP_WARN_(降低攻击者的攻击速度)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >> 击杀|cRXP_ENEMY_塞缪尔·菲普斯|r. 拾取|cRXP_LOOT_塞缪尔的遗骸|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    .goto Tirisfal Glades,31.17,65.08
	>> 点击地上的|cRXP_PICK_玛拉的坟墓|r
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_施放|r|T136218:0|t[召唤小鬼]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_新兵艾尔雷斯|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_新兵艾尔雷斯|r和|cRXP_FRIENDLY_黑暗教士杜斯滕|r << Priest
    .turnin 6395 ,, Marla's Last Wish
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 ,, In Favor of Darkness << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Novice Elreth
    .target Dark Cleric Duesten << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官阿伦|r
    .turnin 381 ,, The Scarlet Crusade
    .accept 382 ,, The Red Messenger
    .target Executor Arren
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿基巴德|r
    .vendor >> 清理背包
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >> 击杀|cRXP_ENEMY_迈文·考加尔|r. 拾取|cRXP_LOOT_血色十字军文件|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官阿伦|r
    .turnin 382 ,, The Red Messenger
    .accept 383 ,, Vital Intelligence
    .target Executor Arren
step
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
    .loop 25,Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
    .xp 5+2350 >>刷到5级多2350经验 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔文·蒙泰古|r
    .accept 8 ,, A Rogue's Deal
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 6-13 亡灵
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#defaultfor Undead
#next 13-15 银松森林

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵希米尔|r
    .accept 365 ,, Fields of Grief
    .target Deathguard Simmer
step
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    .goto Tirisfal Glades,42.04,55.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛尔多|r. 他是一只沿着路往布瑞尔巡逻的憎恶
    .accept 5481 ,, Gordo's Task
    .target Gordo
    .unitscan Gordo
step << Priest/Warlock
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博文·布里斯博埃斯|r
    .train 3908 >> 学习|T136249:0|t[裁缝]. 注意保留|T132889:0|t[亚麻布]. 一会要做魔杖
    .target Bowen Brisboise
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r和|cRXP_FRIENDLY_执行官塞加德|r
    .accept 404 ,, A Putrid Task
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 ,, Vital Intelligence
    .accept 427 ,, At War With The Scarlet Crusade
    .goto Tirisfal Glades,60.59,51.77
    .target Deathguard Dillinger
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_温特斯夫人|r|cRXP_BUY_. 购买|r|T135421:0|t[增重飞斧]
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥利弗·德沃尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135641:0|t[卷刃的剑] (4s 01c). 钱不够就稍后再来
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑] 
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Claws
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Claws
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥利弗·德沃尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135321:0|t[步兵剑] (5s 36c). 钱不够就稍后再来
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_. 购买|r|T135321:0|t[步兵剑] 
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith Claws
    +装备|T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    .turnin 8 ,, A Rogue's Deal
    .home >> 绑定炉石到布瑞尔
    .target Innkeeper Renee
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士贝里尔|r, 他在二楼
    .turnin 5651 ,, In Favor of Darkness
    .accept 5650 ,, Garments of Darkness
	.train 591 >> 学习|T135924:0|t[惩击]
    .train 17 >> 学习|T135940:0|t[真言术: 盾]
    .train 2052 >> 学习|T135929:0|t[次级治疗术 (等级 2)]
    .target Dark Cleric Beryl
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·火歌|r, 他在二楼
    .train 143 >> 学习|T135812:0|t[火球术]
    .train 2136 >> 学习|T135807:0|t[火焰冲击]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 3126 >> 学习|T132269:0|t[招架]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马里恩·考尔|r, 他在二楼
    .train 1757 >> 学习|T136189:0|t[邪恶攻击]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉娜·朗恩|r, 他在二楼
    >>|cRXP_BUY_购买|r|T133738:0|t[魔典：血契（等级 1）]
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >> 清理背包
    .target Gina Lang
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 695 >> 学习|T136197:0|t[暗影箭]
    .train 1454 >> 学习|T136126:0|t[生命分流]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 695 >> 学习|T136197:0|t[暗影箭]
    .target Rupert Boch
step << Warlock
    #completewith Claws
    .train 20397 >> 使用|T133738:0|t[魔典：血契（等级 1）]
    .itemcount 16321,1
    .use 16321
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_范斯·安德格鲁姆|r
    .train 7411 >> 学习|T136244:0|t[附魔]. 与|T136249:0|t[裁缝]一起配合可以制作魔杖
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Priest
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇] <<Warrior/Rogue
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r|T134532:0|t[红斑蘑菇] << Warlock
    .vendor >> 清理背包
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师乔汉|r
    .accept 367 ,, A New Plague
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >> 对|cRXP_FRIENDLY_亡灵卫兵科尔|r施放|T135929:0|t[次级治疗术]和|T135987:0|t[真言术: 韧]
    >>|cRXP_WARN_你需在这个任务中使用次级治疗术 (等级 2)|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >> 拾取地上的|cRXP_PICK_阴暗草|r
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith next
    >> 击杀所以遇到的|cRXP_ENEMY_衰老的黑暗犬|r. 拾取|cRXP_LOOT_黑暗犬的血液|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #label Claws
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25
    .goto Tirisfal Glades,52.63,56.98
    >> 击杀|cRXP_ENEMY_腐烂的死者|r和|cRXP_ENEMY_破碎的尸体|r. 拾取|cRXP_LOOT_腐烂的爪子|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
step
    #completewith next
    >> 拾取地上的|cRXP_PICK_阴暗草|r
    .complete 5481,1 --Gloom Weed (3)
step
    .goto Tirisfal Glades,44.41,56.83,100,0
    .goto Tirisfal Glades,42.64,53.40,100,0
    .goto Tirisfal Glades,40.84,46.59,100,0
    .goto Tirisfal Glades,38.69,44.10,100,0
    .goto Tirisfal Glades,38.63,39.44,100,0
    .goto Tirisfal Glades,41.70,44.01
    >> 击杀所以遇到的|cRXP_ENEMY_衰老的黑暗犬|r. 拾取|cRXP_LOOT_黑暗犬的血液|r
    >>|cRXP_WARN_避开|r|cRXP_ENEMY_被诅咒的黑暗犬|r|cRXP_WARN_. 它们等级更高|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33
    >> 完成拾取|cRXP_PICK_阴暗草|r
    .complete 5481,1 --Gloom Weed (3)
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_开始搜集3组|r|T132889:0|t[亚麻布]|cRXP_WARN_. 这将用来为你制作魔杖|r
    .collect 2589,60 --亚麻布 (60)
step
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >> 拾取田里的|cRXP_LOOT_提瑞斯法南瓜|r.
    .complete 365,1 --Tirisfal Pumpkin (10)
step
    .loop 25,Tirisfal Glades,33.73,49.34,33.65,51.07,31.78,51.36,30.02,50.48,29.91,49.24,30.62,47.53,31.01,46.50,32.15,44.83,33.73,45.29,34.10,47.88,33.73,49.34
    >> 击杀|cRXP_ENEMY_血色战士|r << !Rogue !Warrior
    >>|cRXP_WARN_击杀|r|cRXP_ENEMY_血色战士|r|cRXP_WARN_. 注意! 当它们施放防御姿态后会提高50%招架几率|r  << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #completewith BrillTurnin1
    .hs >> 炉石回布瑞尔
    .use 6948
    .subzoneskip 159
    .cooldown item,6948,>0
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士贝里尔|r, 他在二楼
    .turnin 5650 ,, Garments of Darkness
    .train 591 >> 学习|T135924:0|t[惩击]
    .train 17 >> 学习|T135940:0|t[真言术: 盾]
    .target Dark Cleric Beryl
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_药剂师乔汉|r和|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 427 ,, At War With The Scarlet Crusade
    .accept 370 ,, At War With The Scarlet Crusade
    .goto Tirisfal Glades,60.58,51.77
    .turnin 367 ,, A New Plague
    .turnin 365 ,, Fields of Grief
    .accept 368 ,, A New Plague
    .accept 407 ,, Fields of Grief
    .goto Tirisfal Glades,59.45,52.40
    .turnin 404 ,, A Putrid Task
    .accept 426 ,, The Mills Overrun
    .goto Tirisfal Glades,58.20,51.43
    .target Deathguard Dillinger
    .target Executor Zygand
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_初级药剂师霍兰德|r, 他在墓园里巡逻.
    .turnin 5481 ,, Gordo's Task
    .accept 5482 ,, Doom Weed
    .target Junior Apothecary Holland
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥利弗·德沃尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135641:0|t[卷刃的剑] (4s 01c). 钱不够就稍后再来
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑] 
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith ZeptoDurotar
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥利弗·德沃尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135321:0|t[步兵剑] (5s 36c). 钱不够就稍后再来
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_奥利弗·德沃尔|r|cRXP_BUY_. 购买|r|T135321:0|t[步兵剑] 
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #completewith ZeptoDurotar
    +装备|T135321:0|t[步兵剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.97,51.29
    >>|cRXP_WARN_进入旅店老板身后的房间然后下楼|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血色十字军俘虏|r
    .turnin 407 ,, Fields of Grief
    .target Captured Scarlet Zealot
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Priest
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇] <<Warrior/Rogue
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r|T134532:0|t[红斑蘑菇] << Warlock
    .vendor >> 清理背包
    .collect 1179,20,818,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,10,818,1 << Rogue/Warrior/Warlock --Red-speckled Mushroom (10)
    .collect 1179,10,818,1 << Warlock --Ice Cold Milk (10)
    .money <0.025 << Rogue/Warrior
    .money <0.050 << Warlock/Mage/Priest
    .target Innkeeper Renee
step
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >> 爬上飞艇塔
    .zone Durotar >> 坐飞艇前往杜隆塔尔. 你稍后会有机会回来完成提瑞斯法林地的任务
    .zoneskip Durotar
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 ,, Winds in the Desert
    .target Rezlak
step
    #completewith next
    .goto Durotar,47.40,22.57,60,0
    .goto Durotar,49.08,28.48,60,0
    .goto Durotar,52.19,33.49,120,0
    .goto Durotar,52.25,40.17,60 >>前往剃刀岭
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜克|r
    .train 2020 >> 学习|T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >> 学习|T136248:0|t[采矿]. 这样就能在矿脉里找到|T135232:0|t[劣质的石头]并用来制|T135248:0|t[磨刀石] (30分钟的+2武器伤害临时附魔)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_沃克|r处|cRXP_BUY_购买|r|T134708:0|t[矿工锄]
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    .home >> 绑定炉石到剃刀岭
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]  << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排]  << Rogue/Warrior
    .vendor >> 清理背包
    .collect 1179,10,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.025
step
    >>|cRXP_WARN_你能从碉堡的外面或者顶上与|r|cRXP_FRIENDLY_加索克|r对话
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r和|cRXP_FRIENDLY_厨师托尔卡|r
    .accept 784 ,, Vanquish the Betrayers
    .accept 837 ,, Encroachment
    .goto Durotar,51.95,43.50
    .accept 815 ,, Break a Few Eggs
    .goto Durotar,51.09,42.49
    .target Gar'thok
    .target Cook Torka
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >> 前往塔楼
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >> 爬上塔楼与塔楼找弗恩·凝眉
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗恩·凝眉|r
    .accept 791 ,, Carry Your Weight
    .target Furl Scornbrow
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_施放|r|T136025:0|t[寻找矿物] |cRXP_WARN_并在采集矿物过程中收集|r|T135232:0|t[劣质的石头]|cRXP_WARN_用来制作|r|T135248:0|t[磨刀石]
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .skill mining,<1,1
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >> 前往森金村
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌克尔|r
    .accept 2161 ,, A Peon's Burden
    .target Ukor
    step
    .goto Durotar,54.3,73.3,25,0
    .goto Durotar,54.5,75.0,25,0
    .goto Durotar,54.1,76.6,25,0
    .goto Durotar,54.1,76.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔·猎齿|r. 他在附近巡逻
    .accept 786 ,, Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔林·长牙|r, |cRXP_FRIENDLY_沃纳尔大师|r和|cRXP_FRIENDLY_加德林大师|r
    .accept 817 ,, Practical Prey
    .goto Durotar,55.95,73.93
    .accept 818 ,, A Solvent Spirit
    .goto Durotar,55.94,74.40
    .accept 808 ,, Minshina's Skull
    .accept 826 ,, Zalazane
    .accept 823 ,, Report to Orgnil
    .goto Durotar,55.94,74.72
    .target Master Vornal
    .target Master Gadrin
    .target Vel'rin Fang
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_克瓦埃|r|cRXP_BUY_. 购买|r|T135421:0|t[增重飞斧]
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135641:0|t[卷刃的剑] (4s 01c). 钱不够就稍后再来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑] 
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T132401:0|t[双刃战斧] (4s 84c). 钱不够就稍后再来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T132401:0|t[双刃战斧] 
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135421:0|t[小手斧] (5s 40c). 钱不够就稍后再来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135421:0|t[小手斧] 
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Bonfire
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Bonfire
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Bonfire
    +装备|T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Bonfire
    +装备|T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安苏瓦|r
    .train 143 >> 学习|T135812:0|t[火球术]
    .train 2136 >> 学习|T135807:0|t[火焰冲击]
    .target Un'Thuwa
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >> 沿着海滩一直走. 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r. 不需要现在就完成这一步.
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >> 抵达海滩终点
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >> 进入科卡尔营地
    .isOnQuest 786
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_小心!如果9级稀有精英|r|cRXP_ENEMY_督军科卡尼斯|r|cRXP_WARN_刷新了. 你可能需要使用|r|T134829:0|t[初级治疗药水]
    .unitscan Warlord Kolkanis
step
    >>烧毁帐篷内地上的|cRXP_PICK_进攻计划:试炼谷|r
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>烧毁帐篷内地上的|cRXP_PICK_进攻计划:森金村|r
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: 森金村 destroyed (1)
step
    #label Bonfire
    >>烧毁帐篷内地上的|cRXP_PICK_进攻计划:奥格瑞玛|r
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>离开科卡尔营地
    .isQuestComplete 786
step
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔·猎齿|r. 他在附近巡逻
    .turnin 786 ,, Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃纳尔大师|r
    .turnin 818 ,, A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海赞|r
    .vendor 3933 >> 清理背包
    .target Hai'zan
    .money >0.025 << Warrior/Rogue/Shaman
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海赞|r
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排]|cRXP_BUY_并清理背包|r
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135641:0|t[卷刃的剑] (4s 01c). 钱不够就稍后再来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑] 
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T132401:0|t[双刃战斧] (4s 84c). 钱不够就稍后再来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T132401:0|t[双刃战斧] 
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135421:0|t[小手斧] (5s 40c). 钱不够就稍后再来
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特莱耶克|r|cRXP_BUY_. 购买|r|T135421:0|t[小手斧] 
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith TravelToTiragarde
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith TravelToTiragarde
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith TravelToTiragarde
    +装备|T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith TravelToTiragarde
    +装备|T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >>前往提拉加德城堡
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_小心!如果9级稀有精英|r|cRXP_ENEMY_指挥官萨拉菲尔|r|cRXP_WARN_刷新了. 你可能需要使用|r|T134829:0|t[初级治疗药水]
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> 前往城堡二楼
step
    #completewith AgedEnvelope
    >> 击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >> 击杀|cRXP_ENEMY_本尼迪克上尉|r. 拾取|cRXP_LOOT_本尼迪克的钥匙|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >> 前往楼上并打开|cRXP_PICK_本尼迪克的箱子|r拾取|T133471:0|t[|cFF00BCD4旧信封|r]并接受任务
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 ,, The Admiral's Orders
    .use 4881
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >> 击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .complete 784,2 --Kul Tiras Marine (8)
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >> 击杀|cRXP_ENEMY_库尔提拉斯水手|r和|cRXP_ENEMY_库尔提拉斯水兵|r and 拾取|cRXP_LOOT_帆布脚料|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+2180 >> 刷到7级多2200经验 2200+/4500xp
step << Priest
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97
    .xp 7+1730 >> 刷到7级多1730经验 1750+/4500xp
step
    #completewith next
    .goto Durotar,52.38,43.77,120 >>前往剃刀岭
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r和|cRXP_FRIENDLY_厨师托尔卡|r
    .turnin 823 ,, Report to Orgnil
    .accept 806 ,, Dark Storms
    .goto Durotar,52.25,43.18
    .turnin 784 ,, Vanquish the Betrayers
    .turnin 830 ,, The Admiral's Orders
    .accept 825 ,, From The Wreckage....
    .accept 831 ,, The Admiral's Orders
    .accept 837 ,, Encroachment
    .goto Durotar,51.95,43.50
    .accept 815 ,, Break a Few Eggs
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r, |cRXP_FRIENDLY_加索克|r和|cRXP_FRIENDLY_厨师托尔卡|r
    .turnin 823 ,, Report to Orgnil
    .goto Durotar,52.25,43.18
    .turnin 784 ,, Vanquish the Betrayers
    .turnin 830 ,, The Admiral's Orders
    .accept 825 ,, From The Wreckage....
    .accept 831 ,, The Admiral's Orders
    .accept 837 ,, Encroachment
    .goto Durotar,51.95,43.50
    .accept 815 ,, Break a Few Eggs
    .goto Durotar,51.09,42.49
    .target Orgnil Soulscar
    .target Gar'Thok
    .target Cook Torka
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >> 前往塔楼
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >> 爬上塔楼找弗恩·凝眉
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗恩·凝眉|r
    .turnin 791 ,, Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克鲁恩|r
    .train 2575 >> 学习|T136248:0|t[采矿]. 这样就能在矿脉里找到|T135232:0|t[劣质的石头]以制作|T135248:0|t[磨刀石] (30分钟的+2武器伤害临时附魔)
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃克|r
    >>|cRXP_BUY_购买|r|T134708:0|t[矿工锄] |cRXP_BUY_从|r|cRXP_FRIENDLY_沃克|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜克|r
    .train 2020 >> 学习|T136241:0|t[锻造]
    .target Dwukk
    .skill blacksmithing,1,1
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135641:0|t[卷刃的剑] (4s 01c). 钱不够就稍后再来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T135641:0|t[卷刃的剑] 
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T132401:0|t[双刃战斧] (4s 84c). 钱不够就稍后再来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T132401:0|t[双刃战斧] 
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤加尔|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T135421:0|t[小手斧] (5s 40c). 钱不够就稍后再来
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_尤加尔|r|cRXP_BUY_. 购买|r|T135421:0|t[小手斧] 
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith Toolboxes
    +装备|T135421:0|t[增重飞斧]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #completewith Toolboxes
    +装备|T135641:0|t[卷刃的剑]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #completewith Toolboxes
    +装备|T132401:0|t[双刃战斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #completewith Toolboxes
    +装备|T135421:0|t[小手斧]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 284 >> 学习职业技能
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 980 >> 学习职业技能
    .target Dhugru Gorelust
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY__基萨|r并购买|T133738:0|t[魔典：火焰箭（等级 2）]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >> 使用|T133738:0|t[魔典：火焰箭（等级 2）]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 6760 >> 学习职业技能
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .train 139 >> 学习职业技能
    .target Tai'jin
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]  << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排]  << Rogue/Warrior
    .home >> 绑定炉石到剃刀岭
    .turnin 2161 ,, A Peon's Burden
    .collect 1179,10,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (10)
    .collect 2287,10,818,1 << Rogue/Warrior --Haunch of Meat (10)
    .target Innkeeper Grosk
    .money <0.025
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉乌克|r
    .train 3273 >> 学习|T135966:0|t[急救]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加尔克|r
    >>|cRXP_BUY_购买|r|T133634:0|t[棕色小包]
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >> 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r. 你不需要现在就完成这一步
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label Tools
    >> 在沉船里外拾取|cRXP_PICK_侏儒的工具|r
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> 游往小岛
step
    #completewith Fur
    >> 击杀|cRXP_ENEMY_杜隆塔尔猛虎|r. 拾取|cRXP_LOOT_杜隆塔尔虎皮|r. 你不用现在就完成这个任务
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >> 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #label TaillasherEggs
    .loop 25,Durotar,67.74,69.86,67.04,71.40,67.66,73.86,68.67,74.47,69.76,74.69,70.29,73.31,70.23,70.84,69.69,70.35,69.21,69.69,67.74,69.86
    >> 拾取地上的|cRXP_PICK_鞭尾龙的蛋|r. 通常会有|cRXP_ENEMY_血爪鞭尾龙|r守在边上
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >> 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >> 游往主岛
step
    #completewith MinshinasSkull
    >>击杀|cRXP_ENEMY_妖术巨魔|r和|cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_巫毒巨魔|r|cRXP_WARN_会|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >>击杀|cRXP_ENEMY_扎拉赞恩|r. 拾取|cRXP_LOOT_扎拉赞恩的头颅|r
    >>|cRXP_WARN_注意留|T136026:0|t[地震术] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_注意留|T132155:0|t[凿击] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_小心! 他会|r|T136052:0|t[治疗波]|cRXP_WARN_. 如果有必要就使用|r|T134829:0|t[治疗药水]|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >> 拾取地上的|cRXP_LOOT_颅骨|r
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>击杀|cRXP_ENEMY_扎拉赞恩|r. 拾取|cRXP_LOOT_扎拉赞恩的头颅|r
    >>|cRXP_WARN_注意留|T136026:0|t[地震术] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Shaman
    >>|cRXP_WARN_注意留|T132155:0|t[凿击] |cRXP_WARN_打断|r|T136052:0|t[治疗波] << Rogue
    >>|cRXP_WARN_小心! 他会|r|T136052:0|t[治疗波]|cRXP_WARN_. 如果有必要就使用|r|T134829:0|t[治疗药水]|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>击杀|cRXP_ENEMY_杜隆塔尔猛虎|r. 拾取|cRXP_LOOT_杜隆塔尔虎皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    .loop 25,Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
    >>击杀|cRXP_ENEMY_妖术巨魔|r和|cRXP_ENEMY_巫毒巨魔|r.
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_巫毒巨魔|r|cRXP_WARN_会|r|T136052:0|t[治疗波]
    .complete 826,1 --Hexed Troll (8)
    .complete 826,2 --Voodoo Troll (8)
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #completewith next
    >> 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44
    >>击杀|cRXP_ENEMY_杜隆塔尔猛虎|r. 拾取|cRXP_LOOT_杜隆塔尔虎皮|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    .goto Durotar,59.64,73.84
    >> 击杀|cRXP_ENEMY_螃蟹|r和|cRXP_ENEMY_龙虾人|r. 拾取|cRXP_LOOT_蟹胶|r和|cRXP_LOOT_龙虾人的眼球|r
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
    .mob Pygmy Surf Crawler
    .mob Makrura Shellhide
    .mob Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>前往森金村
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特莱耶克|r
    .vendor >> 清理背包并修理装备. 你能在棚屋外与他对话
    .target Trayexir
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安苏瓦|r
    .train 118 >> 学习职业技能
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加德林大师|r, |cRXP_FRIENDLY_沃纳尔大师|r和|cRXP_FRIENDLY_维尔林·长牙|r
    .turnin 808 ,, Minshina's Skull
    .turnin 826 ,, Zalazane
    .goto Durotar,55.95,74.73
    .turnin 818 ,, A Solvent Spirit
    .goto Durotar,55.95,74.39
    .turnin 817 ,, Practical Prey
    .goto Durotar,55.95,73.93
    .goto Durotar,54.1,76.6
    .target Master Gadrin
    .target Master Vornal
    .target Vel'rin Fang
step
    #completewith Stolensupplies
    +|cRXP_WARN_为|r|T133728:0|t[微光颅骨]|cRXP_WARN_和|r|T134712:0|t[强力胶水]设置键位|cRXP_WARN_. 以应对紧急情况|r
step
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >> 击杀|cRXP_ENEMY_钢鬃野猪人|r和|cRXP_ENEMY_钢鬃斥候|r
    .complete 837,1 --Razormane Quilboar (4)
    .complete 837,2 --Razormane Scout (4)
    .mob Razormane Quilboar
    .mob Razormane Scout
step
    #completewith next
    .goto Durotar,51.12,42.46,150 >> 前往剃刀岭
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_厨师托尔卡|r和|cRXP_FRIENDLY_加索克|r
    .turnin 815 ,, Break a Few Eggs
    .goto Durotar,51.12,42.46
    .turnin 825 ,, From The Wreckage....
    .goto Durotar,51.95,43.50
    .target Cook Torka
    .target Gar'Thok
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉乌克|r
    .train 3273 >> 学习|T135966:0|t[急救]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >> 学习职业技能
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120 >> 学习职业技能
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY__基萨|r并购买|T133738:0|t[魔典：火焰箭（等级 2）]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    .train 20270 >> 使用|T133738:0|t[魔典：火焰箭（等级 2）]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 674 >> 学习职业技能
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .accept 5654 ,, Hex of Weakness << Troll
    .accept 5660 ,, Touch of Weakness << Undead
    .trainer >> 学习职业技能
    .target Tai'jin
    .xp <10,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 ,, Conscript of the Horde
    .target Takrin Pathseeker
    .xp <10,1
step
    .loop 25,Durotar,44.45,39.74,44.49,37.47,43.30,37.32,41.70,37.09,41.64,38.27,41.94,40.46,43.30,40.40,44.45,39.74
    >> 击杀|cRXP_ENEMY_钢鬃传令兵|r和|cRXP_ENEMY_钢鬃卫兵|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_钢鬃传令兵|r|cRXP_WARN_施放回春术而|r|cRXP_ENEMY_钢鬃卫兵|r|cRXP_WARN_非常肉|r
    .complete 837,3 --Razormane Dustrunner (4)
    .complete 837,4 --Razormane Battleguard (4)
    .mob Razormane Dustrunner
    .mob Razormane Battleguard
step
    #label Stolensupplies
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    .goto Durotar,47.92,33.10
    >> 从地上拾取|cRXP_PICK_被偷走的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >>前往雷兹拉克处
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 ,, Winds in the Desert
    .target Rezlak
step
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    .goto Durotar,49.70,21.90
    >> 从地上拾取|cRXP_PICK_被偷走的补给袋|r
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 ,, Winds in the Desert
    .accept 835 ,, Securing the Lines
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> 穿过洞穴
    .solo
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >> 击杀|cRXP_ENEMY_尘风暴徒|r和|cRXP_ENEMY_尘风雷巫||r
    >>|cRXP_WARN_这里的怪会逃跑. 小心不要ADD|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_任务奖励选择|r|T135158:0|t[斑纹木杖] |cRXP_WARN_. 你将在奥格瑞玛学习法杖技能|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 ,, Securing the Lines
    .target Rezlak
    .solo
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>从此处跳入雷霆山 << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_施放|r|T136095:0|t[解散野兽] |cRXP_WARN_再跳入雷霆山|r << Hunter
    >>|cRXP_WARN_解散小鬼再跳入雷霆山|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>击杀|cRXP_ENEMY_费索·暗雷|r并拾取|cRXP_LOOT_费索的爪子|r
    >>|cRXP_WARN_请万分小心. 在击杀他之前杀死身后巡逻的|r|cRXP_ENEMY_火刃狂热者|r|cRXP_WARN_和|r|cRXP_ENEMY_闪电蜥蜴|r
    >>|cRXP_WARN_把他拉到你刚杀死的|r|cRXP_ENEMY_闪电蜥蜴|r|cRXP_WARN_处. 否则你可能会引到不必要的怪|r
    >>|cRXP_WARN_优先击杀小鬼. 使用|r|T132155:0|t[凿击] |cRXP_WARN_打断|r|T136169:0|t[灵魂虹吸] << Rogue
    >>|cRXP_WARN_优先击杀小鬼. 使用|r|T136026:0|t[地震术] |cRXP_WARN_打断|r|T136169:0|t[灵魂虹吸] << Shaman
    >>|cRXP_WARN_你可以先|r|T136071:0|t[羊] |cRXP_WARN_掉|r|cRXP_ENEMY_费索·暗雷|r|cRXP_WARN_再击杀|r|cRXP_ENEMY_小鬼|r << Mage
    >>|cRXP_WARN_优先击杀小鬼.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_如果需要, 使用|r|T134829:0|t[初级治疗药水]和|r|T133728:0|t[微光颅骨]|cRXP_WARN_来击杀他 << !Warlock
    >>|cRXP_WARN_如果需要, 使用|r|T134829:0|t[初级治疗药水], |T133728:0|t[初级治疗石]和|r|T133728:0|t[微光颅骨]|cRXP_WARN_来击杀他 << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >> 炉石回剃刀岭
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 362
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板格罗斯克|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]  << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_购买|r|T133974:0|t[肉排]  << Rogue/Warrior
    .vendor >> 清理背包
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 806 ,, Dark Storms
    .accept 828 ,, Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再次对话|cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .accept 828 ,, Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加索克|r
    .turnin 837 ,, Encroachment
    .target Gar'Thok
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔绍尔·锯痕|r
    .train 6546 >> 学习职业技能
    .target Tarshaw Jaggedscar
    .group
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜格鲁·血怒|r
    .train 1120 >> 学习职业技能
    .target Dhugru Gorelust
    .group
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY__基萨|r并购买|T133738:0|t[魔典：火焰箭（等级 2）]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡普拉克|r
    .train 674 >> 学习职业技能
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰金|r
    .train 8092 >> 学习职业技能
    .target Tai'jin
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >>前往|cRXP_FRIENDLY_玛高兹|r处
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛高兹|r
    .turnin 828 ,, Margoz
    .accept 827 ,, Skull Rock
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> 前往尘风洞穴
    .isQuestTurnedIn 806
    .group
step
    #label Collars1
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >> 击杀|cRXP_ENEMY_火刃暴徒|r, |cRXP_ENEMY_火刃新兵|r和|cRXP_ENEMY_火刃祭司|r. 拾取|cRXP_LOOT_灼热项圈|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>前往|cRXP_FRIENDLY_玛高兹|r处
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛高兹|r
    .turnin 827 ,, Skull Rock
    .accept 829 ,, Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> 穿过洞穴
    .group
step
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >> 击杀|cRXP_ENEMY_尘风暴徒|r和|cRXP_ENEMY_尘风雷巫||r
    >>|cRXP_WARN_这里的怪会逃跑. 小心不要ADD|r
    .complete 835,1 --Dustwind Savage (12)
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_任务奖励选择|r|T135158:0|t[斑纹木杖] |cRXP_WARN_. 你将在奥格瑞玛学习法杖技能|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 ,, Securing the Lines
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >> 刷到10级
    --VV Enter loop coords
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> 进入奥格瑞玛
    .zoneskip Orgrimmar
    .zoneskip Orgrimmar
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_特拉克根|r|cRXP_BUY_. 购买|r|T135419:0|t[锋利的飞斧]
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #completewith ZeptoUC1
    +到达11级就装备|T135421:0|t[锋利的飞斧]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .turnin 5654 ,, Hex of Weakness
    .trainer >> 学习职业技能
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_乌尔库|r
    .turnin 5652 ,, Hex of Weakness
    .trainer >> 学习职业技能
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮菲瑞多|r
    .train 122 >> 学习职业技能
    .target Pephredo
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳兹格雷尔|r
    .turnin 831 ,, The Admiral's Orders
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟祖克|r
	.accept 1963 ,, The Shattered Hand << Orc Rogue/Troll Rogue
    .target Therzok
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 ,, Neeru Fireblade
    .accept 809 ,, Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米尔科特|r
    .train 1120 >> 学习职业技能
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >>前往荣誉谷
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷兹·怒拳|r
    .train 6546 >> 学习职业技能
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈纳什|r
    .train 227 >> 学习法杖
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_森度吉安|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #completewith ZeptoUC1
    +到达11级就装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌萨罗|r
    .vendor >> 清理背包. 钱够的话就卖掉武器购买|T132395:0|t[大板斧](22s 14c). 钱不够就稍后再来
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_乌萨罗|r|cRXP_BUY_. 购买|r|T132395:0|t[大板斧]
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #completewith ZeptoUC1
    +装备|T132395:0|t[大板斧]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >> 离开奥格瑞玛
    .zoneskip Durotar
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >> 爬上飞艇塔
    .zone Tirisfal Glades >> 坐飞艇前往提瑞斯法林地
    .zoneskip Tirisfal Glades
step
    #completewith next
    .goto Tirisfal Glades,61.52,53.20,80 >>前往布瑞尔
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆中的|cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .accept 354 ,, Deaths in the Family
    .accept 362 ,, The Haunted Mills
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 ,, The Chill of Death
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .maxlevel 12
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .accept 1818 ,, Speak with Dillinger
    .target Austil de Mon << Warrior
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_埃格隆·卡加尔|r对话
    .accept 1478 ,, Halgar's Summons
    .target Ageron Kargal
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_马里恩·考尔|r对话
    .accept 1885 ,, Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r, |cRXP_FRIENDLY_格莉丝·戴玛|r和|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r对话
    .accept 1881 ,, Speak with Anatasia
    .target Anastasia Hartwell
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Priest/Shaman
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇] <<Warrior/Rogue
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r|T134532:0|t[红斑蘑菇] << Warlock
    .vendor >> 清理背包
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_通缉告示|r和屋子里的|cRXP_FRIENDLY_执政官塞弗伦|r
    .accept 374 ,, Proof of Demise
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 ,, Wanted: Maggot Eye
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 ,, Graverobbers
    .goto Tirisfal Glades,61.26,50.84
    .target Magistrate Sevren
    .target Deathguard Burgess
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1818 ,, Speak with Dillinger
    .accept 1819 ,, Ulag the Cleaver
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_点击地上的颅骨. 召唤并击杀|r|cRXP_ENEMY_‘斩击者’奥拉格.|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r
    .turnin 1819 ,, Ulag the Cleaver
    .accept 1820 ,, Speak with Coleman
    .target Deathguard Dillinger
step << Warlock/Mage/Priest
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock/Mage/Priest
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_凯伦丁·哈加尔|r对话
    .turnin 1478 ,, Halgar's Summons
    .accept 1473 ,, Creature of the Void
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r对话
    .turnin 1881 ,, Speak with Anatasia
    .accept 1882 ,, The Balnir Farmstead
    .target Anastasia Hartwell
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾萨莱斯特|r
    .turnin 5660 ,, Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5660
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾萨莱斯特|r
    .accept 5658 ,, Touch of Weakness
    .turnin 5658 ,, Touch of Weakness
    .target Aelthalyste
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3023
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .money <0.3023
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 ,, Mennet Carkad
    .accept 1886 ,, The Deathstalkers
    .target Mennet Carkad
    .money <0.3023
step << Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与战士区的|r|cRXP_FRIENDLY_阿基巴德|r对话
    .train 201 >> 学习单手剑
    .target Archibald
    .money <0.3023
step << Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_查理斯·希顿|r|cRXP_BUY_对话. 购买|r|T135346:0|t[斗士短剑]
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith ScarletCrusade1
    +装备|T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #optional
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_如果你看到了|r|cRXP_FRIENDLY_阿斯托·哈德恩|r|cRXP_WARN_, 跟他对话然后击杀他. 拾取阿斯托的介绍信. 他沿路在布瑞尔跟瑟伯切尔之间巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
step << Warlock/Mage/Rogue/Priest
    #completewith ScarletCrusade1
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> 从下水道离开幽暗城
    .zoneskip Tirisfal Glades
step
    #completewith ScarletCrusade1
    >>收集|cRXP_LOOT_血色十字军徽记之戒|r. 你不必现在就完成这个任务
    .complete 374,1 --Scarlet Insignia Ring (10)
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>点击|cRXP_PICK_派瑞恩的箱子|r拾取|T133733:0|t[埃加林的魔典]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    .loop 25,Tirisfal Glades,50.07,68.87,50.23,66.94,51.16,65.73,51.75,66.04,52.93,67.62,52.72,69.33,51.96,69.57,51.03,69.55
    >>击杀|cRXP_ENEMY_派瑞恩队长|r, |cRXP_ENEMY_血色狂热者|r和|cRXP_ENEMY_血色传教士|r.
    .complete 370,1 --Captain Perrine (1)
    .complete 370,2 --Scarlet Zealot (3)
    .complete 370,3 --Scarlet Missionary (3)
    .mob Captain Perrine
    .mob Scarlet Zealot
    .mob Scarlet Missionary
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>点击地上的|cRXP_PICK_派瑞恩的箱子|r拾取|T133733:0|t[埃加林的魔典]
    .complete 1473,1 --Egalin's Grimoire (1)
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.07,71.51,50,0
    .zone Undercity >> 从下水道回到幽暗城
step << Warlock
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_凯伦丁·哈加尔|r对话
    .turnin 1473 ,, Creature of the Void
    .accept 1471 ,, The Binding
    .target Carendin Halgar
step << Warlock
    #completewith next
    .cast 9221 >>>>在召唤圈内使用|T134416:0|t[召唤符文]
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>击杀|cRXP_ENEMY_召唤的虚无行者|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1471 ,, The Binding
    .target Carendin Halgar
step << Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_快速离开幽暗城: 在法师区把你的角色停在最下面楼梯的最高处直到他看起来像悬浮在空中, 然后登出再登入.|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_点击这里查看演示|r
    >>|cRXP_WARN_如果不会就直接跑出幽暗城|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> 离开幽暗城
    .zoneskip Tirisfal Glades
step
    #completewith next
    >>击杀遇见的所以|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto Tirisfal Glades,47.60,44.03,150 >> 前往西北方的阿加曼德磨坊
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cFF00BCD4萨尔曼的信件|r] |cRXP_WARN_可能会出. 如果出了就接受任务|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 ,, A Letter Undelivered
    .use 2839
step
    #sticky
    #label MillsOverun
    >> 击杀|cRXP_ENEMY_骷髅兵|r和|cRXP_ENEMY_暗眼骸骨法师|r. 拾取|cRXP_LOOT_锯齿肋骨|r和|cRXP_LOOT_焦黑的颅骨|r
    .complete 426,1 --Notched Rib (5)
    .complete 426,2 --Blackened Skull (3)
    .mob Rattlecage Soldier
    .mob Darkeye Bonecaster
    .mob Cracked Skull Soldier
step
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >> 击杀|cRXP_ENEMY_代弗林·阿加曼德|r. 拾取|cRXP_LOOT_代弗林的遗骸|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >> 击杀|cRXP_ENEMY_妮萨·阿加曼德|r. 拾取|cRXP_LOOT_妮萨的遗骸|r. 她可能刷在建筑内
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15
    >> 击杀|cRXP_ENEMY_萨尔曼·阿加曼德|r和|cRXP_ENEMY_格里高·阿加曼德|r. 拾取|cRXP_LOOT_他们的遗骸|r. 他们在附近巡逻
    .complete 354,3 --Thurman's Remains (1)
    .complete 354,1 --Gregor's Remains (1)
    .unitscan Thurman Agamand
    .unitscan Gregor Agamand
step
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> 从这下山.
    >>|cRXP_WARN_小心! 不要承受太多的坠落伤害. 跟随指示以保证安全|r
step
    #requires MillsOverun
    #completewith next
    >> 击杀|cRXP_ENEMY_腐皮豺狼人|r和|cRXP_ENEMY_混血腐皮豺狼人|r. 拾取|cRXP_LOOT_防腐剂|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
step
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >> 击杀|cRXP_ENEMY_蛆眼|r. 拾取|cRXP_LOOT_蛆眼的爪子|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >> 击杀|cRXP_ENEMY_鱼人|r. 拾取|cRXP_LOOT_邪鳍鱼人的鳞片|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #completewith RotHideGnolls
    >>击杀遇见的所以|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith next
    >> 击杀|cRXP_ENEMY_混血腐皮豺狼人|r和|cRXP_ENEMY_盗墓贼|r. 拾取|cRXP_LOOT_防腐剂|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
step
    #optional
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95
    >> 拾取地上的|cRXP_PICK_末日草|r. 你能在豺狼人区域的树木附近找到它们
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
step
    #label RotHideGnolls
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >> 击杀|cRXP_ENEMY_混血腐皮豺狼人|r和|cRXP_ENEMY_盗墓贼|r. 拾取|cRXP_LOOT_防腐剂|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
step
    #optional
    .goto Tirisfal Glades,59.26,46.73,30,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,57.71,48.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_初级药剂师霍兰德|r, 他在墓园里巡逻.
    .turnin 5482 ,, Doom Weed
    .target Junior Apothecary Holland
    .isOnQuest 5482
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵迪林格尔|r, |cRXP_FRIENDLY_药剂师乔汉|r, |cRXP_FRIENDLY_执行官塞加德|r和|cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 426 ,, The Mills Overrun
    .goto Tirisfal Glades,58.19,51.44
    .turnin 368 ,, A New Plague
    .accept 369 ,, A New Plague
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 ,, Wanted: Maggot Eye
    .turnin 370 ,, At War With The Scarlet Crusade
    .accept 371 ,, At War With The Scarlet Crusade
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 ,, Graverobbers
    .accept 359 ,, Forsaken Duties
    .goto Tirisfal Glades,61.26,50.84
    .target Deathguard Dillinger
    .target Apothecary Johaan
    .target Executor Zygand
    .target Magistrate Sevren
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_为|r|T133849:0|t[沉睡之砂]设置键位|cRXP_WARN_. 以应对紧急情况|r
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿比盖尔·沙伊尔|r
    >>|cRXP_BUY_购买|r|T132891:0|t[粗线]
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 ,, A Letter Undelivered
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 1821 ,, Agamand Heirlooms << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 ,, The Chill of Death
    .goto Tirisfal Glades,61.89,52.73
    .target Yvette Farthing
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 1821 ,, Agamand Heirlooms << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 ,, The Chill of Death
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r和|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 ,, A Letter Undelivered
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 1821 ,, Agamand Heirlooms << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 1821 ,, Agamand Heirlooms << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r, |cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 ,, A Letter Undelivered
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 ,, The Chill of Death
    .goto Tirisfal Glades,61.89,52.73
    .target Yvette Farthing
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r和|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 ,, The Chill of Death
    .goto Tirisfal Glades,61.89,52.73
    .target Coleman Farthing
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_伊维特·法席恩|r和|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    >>|cRXP_FRIENDLY_格莉丝·戴玛|r|cRXP_WARN_在二楼|r
    .turnin 361 ,, A Letter Undelivered
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Yvette Farthing
    .target Coleman Farthing
    .isOnQuest 361
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 354 ,, Deaths in the Family
    .turnin 362 ,, The Haunted Mills
    .turnin 1820 ,, Speak with Coleman << Warrior
    .accept 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_黑暗教士贝里尔|r对话, 他在二楼
	.train 588 >> 学习|T135926:0|t[心灵之火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·火歌|r, 他在二楼
    .train 145 >> 学习|T135812:0|t[火球术 等级3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >> 学习|T132223:0|t[压制]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马里恩·考尔|r, 他在二楼
    .train 1766 >> 学习|T132219:0|t[脚踢]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 755 >> 学习|T136168:0|t[生命通道]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板芮妮|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Priest
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇] <<Warrior/Rogue
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶]|cRXP_BUY_和|r|T134532:0|t[红斑蘑菇] << Warlock
    .vendor >> 清理背包
    .collect 1179,20,359,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock
    .money <0.075 << Warlock
    .target Innkeeper Renee
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵林奈|r
    .turnin 359 ,, Forsaken Duties
    .accept 360 ,, Return to the Magistrate
    .accept 356 ,, Rear Guard Patrol
    .target Deathguard Linnea
step
    #completewith HorrorsandSpirits
    >>击杀遇见的所以|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Mage
    #completewith next
    >> 击杀|cRXP_ENEMY_可怕的血僵尸|r和|cRXP_ENEMY_游荡的幽灵|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>拾取地上的|cRXP_PICK_巴尼尔金鱼草|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #label HorrorsandSpirits
    .loop 25,Tirisfal Glades,74.31,60.98,74.45,59.64,75.08,58.56,76.45,58.67,77.41,58.66,78.55,60.43,77.45,61.46,76.79,62.60,74.99,61.98,74.31,60.98
    >> 击杀|cRXP_ENEMY_可怕的血僵尸|r和|cRXP_ENEMY_游荡的幽灵|r
    .complete 356,1 --Bleeding Horror (8)
    .complete 356,2 --Wandering Spirit (8)
    .mob Bleeding Horror
    .mob Wandering Spirit
step << Priest/Warlock
    #completewith Scarletrings
    >>|cRXP_WARN_收集3组|r|T132889:0|t[亚麻布] |cRXP_WARN_以获得次级魔杖. 这是你去银松森林前最后的机会了.|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>收集|cRXP_LOOT_血色十字军徽记之戒|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>击杀|cRXP_ENEMY_瓦松队长|r和|cRXP_ENEMY_血色苦行修士|r
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_血色苦行修士|r|cRXP_WARN_会|r|T135929:0|t[次级治疗术]
    .complete 371,1 --Captain Vachon (1)
    .complete 371,2 --Scarlet Friar (5)
    .mob Captain Vachon
    .mob Scarlet Friar
    .isOnQuest 371
step
    #label ScarletRings
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>收集|cRXP_LOOT_血色十字军徽记之戒|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40
    >>|cRXP_WARN_收集3组|r|T132889:0|t[亚麻布] |cRXP_WARN_以获得次级魔杖. 这是你去银松森林前最后的机会了.|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >> 击杀遇见的所以|cRXP_ENEMY_夜行蝙蝠|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .loop 25,Tirisfal Glades,83.50,55.56,85.03,54.72,86.56,54.51,88.06,54.99,88.94,53.56,89.70,51.88,90.92,50.56,90.87,48.33,89.87,46.65,85.04,46.68,84.52,49.29,83.46,52.09
    >> 击杀|cRXP_ENEMY_邪恶的夜行蜘蛛|r. 拾取|cRXP_LOOT_邪恶的夜行蜘蛛的毒液|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
step
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> 返回亡灵卫兵林奈处
step
    #completewith next
    >> 完成击杀|cRXP_ENEMY_夜行蝙蝠s|r. 拾取|cRXP_LOOT_夜行蝙蝠的毛皮|r
    >>|cRXP_WARN_实在打不到就跳过|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿比盖尔·沙伊尔|r
    >>|cRXP_BUY_购买|r|T132891:0|t[粗线]
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 374 ,, Proof of Demise
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 ,, At War With The Scarlet Crusade
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 ,, Return to the Magistrate
    .turnin 355 ,, Speak with Sevren
    .accept 408 ,, The Family Crypt
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 ,, A New Plague
    .accept 492 ,, A New Plague
    .accept 445 ,, Delivery to Silverpine Forest
    .goto Tirisfal Glades,59.45,52.39
    .target Deathguard Burgess
    .target Executor Zygand
    .target Magistrate Sevren
    .target Apothecary Johaan
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵伯吉斯|r, |cRXP_FRIENDLY_执行官塞加德|r, |cRXP_FRIENDLY_执政官塞弗伦|r和|cRXP_FRIENDLY_药剂师乔汉|r
    .turnin 374 ,, Proof of Demise
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 ,, At War With The Scarlet Crusade
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 ,, Return to the Magistrate
    .turnin 355 ,, Speak with Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 ,, A New Plague
    .accept 492 ,, A New Plague
    .accept 445 ,, Delivery to Silverpine Forest
    .goto Tirisfal Glades,59.45,52.39
    .target Deathguard Burgess
    .target Executor Zygand
    .target Magistrate Sevren
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_格莉丝·戴玛|r对话
    .turnin 375 ,, The Chill of Death
    .target Gretchen Dedmar
    .isOnQuest 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士贝里尔|r, 他在二楼
	.train 588 >> 学习|T135926:0|t[心灵之火]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·火歌|r, 他在二楼
    .train 145 >> 学习|T135812:0|t[火球术 等级3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384 >> 学习|T132223:0|t[压制]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马里恩·考尔|r, 他在二楼
    .train 1766 >> 学习|T132219:0|t[脚踢]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 755 >> 学习|T136168:0|t[生命通道]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> 前往阿加曼德磨坊的墓穴
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >> 拾取地上的|cRXP_PICK_阿加曼德家族武器|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >> 击杀|cRXP_ENEMY_哀嚎的鬼魂|r和|cRXP_ENEMY_腐烂的古尸|r
    >>|cRXP_WARN_小心! 墓穴里的怪物动态刷新!|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >> 击杀|cRXP_ENEMY_达高尔队长|r. 拾取|cRXP_LOOT_达高尔的颅骨|r. 他在墓穴的底部
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >> 拾取地上的|cRXP_PICK_阿加曼德家族武器|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    .loop 25,Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
    >> 击杀|cRXP_ENEMY_哀嚎的鬼魂|r和|cRXP_ENEMY_腐烂的古尸|r
    >>|cRXP_WARN_小心! 墓穴里的怪物动态刷新!|r
    .complete 408,1 --Wailing Ancestor (8)
    .complete 408,2 --Rotting Ancestor (8)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .isOnQuest 408
    .group 2
step << Warrior
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87
    >> 拾取地上的|cRXP_PICK_阿加曼德家族武器|r
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_跳到武器架上, 直到看起来悬空然后登出再登入.|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_点击这里查看演示|r
    .isQuestComplete 408
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_执政官塞弗伦|r
    .turnin 408 ,, The Family Crypt
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 1821 ,, Agamand Heirlooms
    .turnin 1822 ,, Heirloom Weapon
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅馆内与|cRXP_FRIENDLY_库勒曼·法席恩|r对话
    .turnin 1822 ,, Heirloom Weapon
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与旅馆地下室的|cRXP_FRIENDLY_被俘虏的巡山人|r对话
    .turnin 492 ,, A New Plague
    .target Captured Mountaineer
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士贝里尔|r, 他在二楼
	.train 588,1 >> 学习|T135926:0|t[心灵之火]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗教士贝里尔|r, 他在二楼
	.train 6074 >> 学习职业技能
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·火歌|r, 他在二楼
    .train 145,1 >> 学习|T135812:0|t[火球术 等级3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯恩·火歌|r, 他在二楼
    .train 2137 >> 学习职业技能
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 7384,1 >> 学习|T132223:0|t[压制]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 1160 >> 学习职业技能
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马里恩·考尔|r, 他在二楼
    .train 1766,1 >> 学习|T132219:0|t[脚踢]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马里恩·考尔|r, 他在二楼
    .train 1758 >> 学习职业技能
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 755,1 >> 学习|T136168:0|t[生命通道]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁伯特·鲍什|r
    .train 6222 >> 学习职业技能
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与法师区的|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r对话
    .turnin 1882 ,, The Balnir Farmstead
    .target Anastasia Hartwell
step << Undead Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
step << !Undead
    #label UCflightpath
    .goto Undercity,63.25,48.56
    .fp Undercity >> 开启幽暗城飞行点
    .target Michael Garrett
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1885 ,, Mennet Carkad
    .accept 1886 ,, The Deathstalkers
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与战士区的|r|cRXP_FRIENDLY_阿基巴德|r对话
    .train 201 >> 学习单手剑
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与盗贼区的|r|cRXP_FRIENDLY_查理斯·希顿|r|cRXP_BUY_对话. 购买|r|T135346:0|t[斗士短剑] 
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #completewith Entersilverpine
    +装备|T135346:0|t[斗士短剑]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20 >> 进入幽暗城
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> 坐电梯进入幽暗城
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_本尼亚·芬奈尔|r|cRXP_BUY_. 购买|r|T135154:0|t[短杖]
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #completewith Entersilverpine
    +装备|T135154:0|t[短杖]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Priest/Warlock
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉玟妮雅·克洛威|r
    .train 7411 >> 学习|T136244:0|t[附魔]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克多·瓦德|r
    .train 3908 >> 学习|T136249:0|t[裁缝]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_把所有|r|T132889:0|t[亚麻布] |cRXP_WARN_做成|r|T132890:0|t[亚麻布卷]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克多·瓦德|r
    .train 7623 >>学习|T132662:0|t[棕色亚麻长袍]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米利尔·格里高利|r
    >>|cRXP_BUY_购买|r|T132891:0|t[粗线]
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_尽可能多的做|r|T132662:0|t[棕色亚麻长袍]
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_萨德乌斯·韦伯|r|cRXP_BUY_. 购买|r|T133942:0|t[铜棒] |cRXP_BUY_和|r|T135435:0|t[普通木柴]
    >>|cRXP_WARN_分解所以刚刚做的|r|T132662:0|t[棕色亚麻长袍] |cRXP_WARN_并制作一根|r|T135225:0|t[Runed 铜棒]
    >>|cRXP_WARN_如果你没得到|r|T132867:0|t[次级魔法精华] |cRXP_WARN_就从|r|cRXP_FRIENDLY_萨德乌斯·韦伯|r|cRXP_WARN_那买, 他那没有存货就稍后再完成这步.|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛考布·威恩|r
    .train 14293 >> 学习|T135139:0|t[次级魔法杖]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_制作一根|r|T135139:0|t[次级魔法杖]
    >>|cRXP_WARN_如果你没得到|r|T132867:0|t[次级魔法精华] |cRXP_WARN_就从|r|cRXP_FRIENDLY_萨德乌斯·韦伯|r|cRXP_WARN_那买, 他那没有存货就稍后再完成这步.|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #completewith Entersilverpine
    +装备|T135139:0|t[次级魔法杖]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    .abandon 806 ,, Dark Storms
    .isOnQuest 806
step
    .abandon 408 ,, The Family Crypt
    .isOnQuest 408
step << Warrior
    .abandon 1821 ,, Agamand Heirlooms
    .isOnQuest 1821
step
    #label LeaveUndercity3
    #completewith next
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >> 从下水道离开幽暗城
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >>前往银松森林
    .zoneskip Silverpine Forest

]])
