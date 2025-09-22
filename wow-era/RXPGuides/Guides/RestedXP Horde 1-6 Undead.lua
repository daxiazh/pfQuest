local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 1-6 提瑞斯法林地
#version 1
#group RestedXP 部落 1-30
#defaultfor Scourge
#next 6-10 永歌森林

step << !Undead
    #completewith next
    +|cRXP_WARN_您已选择一本针对亡灵的指南。建议您选择与您开始的相同起始区域|r
step
    #completewith Zombies
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
step << tbc
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >>跑出墓穴，朝 |cRXP_FRIENDLY_Mordo|r 跑去
step
    .goto Tirisfal Glades,30.22,71.65 << tbc
    .goto Tirisfal Glades,29.99,71.89 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_送葬者摩尔多|r
    .accept 363 >>接任务: |cRXP_LOOT_突然醒来|r
    .target Undertaker Mordo
step << wotlk
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.32,72.32,10 >>跑出墓穴
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_杀死 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_Duskbats|r。掠夺他们，直到你拥有价值 60 铜的供应商物品（包括你的盔甲）|r << Mage tbc
    +|cRXP_WARN_杀死 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_Duskbats|r。掠夺他们，直到你拥有价值 50 铜的供应商物品（包括你的盔甲）|r << Priest tbc
    +|cRXP_WARN_杀死 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_Duskbats|r。掠夺他们，直到你拥有价值 34 铜的商贩物品（包括你的盔甲）|r << Mage wotlk/Warlock wotlk
    +|cRXP_WARN_杀死 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_Duskbats|r。掠夺他们直到你拥有价值 24 铜的商贩物品（包括你的盔甲）|r << Priest wotlk
    +|cRXP_WARN_杀死 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_Duskbats|r。掠夺他们直到你拥有价值 10 铜的供应商物品（包括你的盔甲）|r << Warrior/Warlock tbc
    .mob 年轻清道夫
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage/Warlock wotlk
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >>进入大楼
step << Priest/Mage/Warlock wotlk
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .vendor >>供应商垃圾
	.collect 159,10,383,1 << tbc --Collect Refreshing Spring Water (10)
	.collect 159,5,383,1 << wotlk --Collect Refreshing Spring Water (5)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温雅·玛山德|r, |cRXP_FRIENDLY_暗影牧师萨维斯|r << Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r << Warlock wotlk/Mage
    .accept 1470 >>接任务: |cRXP_LOOT_控制小鬼|r << Warlock tbc
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock tbc
    .turnin 363 >>交任务: |cRXP_FRIENDLY_突然醒来|r
    .accept 364 >>接任务: |cRXP_LOOT_无脑的僵尸|r
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand << tbc
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Isabella
step << Warlock tbc
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kayla|r
    .vendor >>供应商垃圾
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r
    .turnin 363 >>交任务: |cRXP_FRIENDLY_突然醒来|r
    .accept 364 >>接任务: |cRXP_LOOT_无脑的僵尸|r
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56 << tbc
    .goto Tirisfal Glades,32.66,65.61 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .train 6673 >>训练 |T132333:0|t[战斗呐喊]
    .target Dannal Stern
step << Warlock tbc
    #requires Piercing
    .goto Tirisfal Glades,31.35,66.21,10,0
#loop
	.line Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
	.goto Tirisfal Glades,31.82,61.48,40,0
	.goto Tirisfal Glades,31.11,60.71,40,0
	.goto Tirisfal Glades,32.07,60.17,40,0
	.goto Tirisfal Glades,32.26,59.21,40,0
	.goto Tirisfal Glades,33.28,59.53,40,0
	.goto Tirisfal Glades,33.66,60.76,40,0
	.goto Tirisfal Glades,33.94,61.81,40,0
	.goto Tirisfal Glades,34.21,63.05,40,0
	.goto Tirisfal Glades,33.01,63.01,40,0
	.goto Tirisfal Glades,31.82,61.48,40,0
    >>杀死 |cRXP_ENEMY_Rattlecage Skeletons|r。掠夺他们的 |cRXP_LOOT_Rattlecage Skulls|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock tbc
    #completewith next
    +|cRXP_WARN_杀死 |cRXP_ENEMY_无脑僵尸s|r 和 |cRXP_ENEMY_可怜的僵尸s|r。掠夺它们，直到你拥有价值 24 铜的供应商物品（包括你的盔甲）|r
    .mob 无脑僵尸
    .mob 可怜的僵尸
    .money >0.0024
step << Warlock tbc
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock tbc
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温雅·玛山德|r
    .turnin 1470 >>交任务: |cRXP_FRIENDLY_控制小鬼|r
    .target Venya Marthand
step << Warlock tbc
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
#loop
	.line Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
	.goto Tirisfal Glades,31.72,63.98,40,0
    >>杀死 |cRXP_ENEMY_无脑僵尸s|r 和 |cRXP_ENEMY_可怜的僵尸s|r << tbc
    >>杀死 |cRXP_ENEMY_无脑僵尸s|r 和 |cRXP_ENEMY_Wretched Ghouls|r << wotlk
    .complete 364,1 --Kill 无脑僵尸 (x8) // --Kill 无脑僵尸 (x5) wotlk
    .complete 364,2 --Kill 可怜的僵尸 (x8) // --Kill Wretched Ghoul (x5) wotlk
    .mob 无脑僵尸
    .mob 可怜的僵尸 << tbc
    .mob Wretched Ghoul << wotlk
step << Mage/Warlock tbc/Priest
    #completewith Vendor2
    +|cRXP_WARN_杀死 |cRXP_ENEMY_无脑僵尸s|r 和 |cRXP_ENEMY_可怜的僵尸s|r。掠夺它们，直到你拥有价值 33 铜的供应商物品（包括你的盔甲）|r
    .mob 无脑僵尸
    .mob 可怜的僵尸
    .money >0.0033
step << Mage/Warlock tbc/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>供应商垃圾
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock tbc/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >>供应商垃圾
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step << Warlock wotlk
    #completewith next
    >>杀死 |cRXP_ENEMY_年轻清道夫s|r。掠夺他们的 |cRXP_LOOT_Scavenger Paws|r
    >>杀死 |cRXP_ENEMY_Duskbats|r。掠夺他们的 |cRXP_LOOT_Duskbat Wings|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob 年轻清道夫
    .mob Duskbat
    .isOnQuest 376
step << Warlock wotlk
    #completewith next
    .goto Tirisfal Glades,30.19,65.32,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.19,65.32,40,0
    .goto Tirisfal Glades,29.10,67.66,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.92,70.30
    +|cRXP_WARN_升级 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_Duskbats|r。掠夺他们直到你有价值 78 铜的供应商物品（包括你的盔甲）|r
    >>|cRXP_WARN_一旦你有 78 铜，就跳过这一步|r
    .mob 年轻清道夫
    .mob Duskbat
	.money >0.0078
    .isOnQuest 364
step << Warlock wotlk
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_WARN_请勿购买任何|r |T132794:0|t[清爽泉水]
    .vendor >>供应商垃圾
    .target Joshua Kien
    .isOnQuest 364
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_马克希米林|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_伊莎贝拉|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest
    .turnin 364 >>交任务: |cRXP_FRIENDLY_无脑的僵尸|r
    .accept 3095 >>接任务: |cRXP_LOOT_简易卷轴|r << Warrior
    .accept 3096 >>接任务: |cRXP_LOOT_密文卷轴|r << Rogue
    .accept 3097 >>接任务: |cRXP_LOOT_神圣卷轴|r << Priest
    .accept 3098 >>接任务: |cRXP_LOOT_雕文卷轴|r << Mage
    .accept 3099 >>接任务: |cRXP_LOOT_被污染的卷轴|r << Warlock
    .accept 3901 >>接任务: |cRXP_LOOT_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >>接任务: |cRXP_LOOT_被诅咒者|r
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >>交任务: |cRXP_FRIENDLY_被污染的卷轴|r << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
	.train 688 >>训练 |T136218:0|t[召唤小鬼] << Warlock wotlk
    .goto Tirisfal Glades,30.91,66.34 << Warlock wotlk
    .turnin 3098 >>交任务: |cRXP_FRIENDLY_雕文卷轴|r << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >>交任务: |cRXP_FRIENDLY_神圣卷轴|r << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .target Maximillion << Warlock
    .target Isabella << Mage
    .target Dark Cleric Duesten << Priest
step << Warlock wotlk
	#completewith next
	.cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step << Mage/Warlock tbc/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
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
    >>杀死 |cRXP_ENEMY_年轻清道夫s|r 和 |cRXP_ENEMY_衣衫褴褛的清道夫s|r。掠夺他们的 |cRXP_LOOT_Scavenger Paws|r
    >>杀死 |cRXP_ENEMY_Duskbats|r 和 |cRXP_ENEMY_肮脏的杜斯克巴特s|r。掠夺他们的 |cRXP_LOOT_Duskbat Wings|r
    >>|cRXP_WARN_如果可以的话尽量避开 |cRXP_ENEMY_肮脏的杜斯克巴特s|r 因为它们比 |cRXP_ENEMY_Duskbats|r 更难杀死|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob 年轻清道夫
    .mob 衣衫褴褛的清道夫
    .mob Duskbat
    .mob 肮脏的杜斯克巴特
step
#loop
	.line Tirisfal Glades,31.82,61.48,31.11,60.71,32.07,60.17,32.26,59.21,33.28,59.53,33.66,60.76,33.94,61.81,34.21,63.05,33.01,63.01,31.82,61.48
	.goto Tirisfal Glades,31.82,61.48,40,0
	.goto Tirisfal Glades,31.11,60.71,40,0
	.goto Tirisfal Glades,32.07,60.17,40,0
	.goto Tirisfal Glades,32.26,59.21,40,0
	.goto Tirisfal Glades,33.28,59.53,40,0
	.goto Tirisfal Glades,33.66,60.76,40,0
	.goto Tirisfal Glades,33.94,61.81,40,0
	.goto Tirisfal Glades,34.21,63.05,40,0
	.goto Tirisfal Glades,33.01,63.01,40,0
	.goto Tirisfal Glades,31.82,61.48,40,0
    >>杀死 |cRXP_ENEMY_Rattlecage Skeletons|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
#loop
	.line Tirisfal Glades,31.72,63.98,30.69,63.88,30.90,62.20,30.73,61.66,31.14,61.41,31.80,61.83,32.85,32.38,63.02,32.90,63.54,33.41,63.06,33.75,62.86,33.51,63.82,33.55,64.57,33.29,64.96,31.72,63.98
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,32.38,40,0
	.goto Tirisfal Glades,63.02,32.90,40,0
	.goto Tirisfal Glades,63.54,33.41,40,0
	.goto Tirisfal Glades,63.06,33.75,40,0
	.goto Tirisfal Glades,62.86,33.51,40,0
	.goto Tirisfal Glades,63.82,33.55,40,0
	.goto Tirisfal Glades,64.57,33.29,40,0
	.goto Tirisfal Glades,64.96,31.72,40,0
    .xp 3+980 >>升级至 980+/1400xp
    .mob 无脑僵尸
    .mob 可怜的僵尸 << tbc
    .mob Wretched Ghoul << wotlk
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    >>|cRXP_WARN_不要低于 95 铜|r << Mage/Warlock/Priest
    .vendor >>供应商垃圾
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师萨维斯|r, |cRXP_FRIENDLY_新兵艾尔雷斯|r
    .turnin 3901 >>交任务: |cRXP_FRIENDLY_断骨骷髅|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >>交任务: |cRXP_FRIENDLY_被诅咒者|r
    .accept 6395 >>接任务: |cRXP_LOOT_玛拉的遗愿|r
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .train 589 >>训练你的职业法术
    .target Dark Cleric Duesten
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .train 172 >>列车 |T136118:0|t[腐败]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莎贝拉|r
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r, |cRXP_FRIENDLY_执行官阿伦|r
    .accept 3902 >>接任务: |cRXP_LOOT_捡破烂|r
    .goto Tirisfal Glades,31.61,65.62
    .accept 380 >>接任务: |cRXP_LOOT_夜行蜘蛛洞穴|r
    .goto Tirisfal Glades,32.15,66.01
    .target 死亡守卫萨尔坦
    .target 执行官阿伦
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56 << tbc
    .goto Tirisfal Glades,32.66,65.61 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56 << tbc
    .goto Tirisfal Glades,32.66,65.61 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹纳尔·斯特恩|r
    .turnin 3095 >>交任务: |cRXP_FRIENDLY_简易卷轴|r
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .train 53 >>训练 |T132090:0|t[背刺]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David|r
    .turnin 3096 >>交任务: |cRXP_FRIENDLY_密文卷轴|r
    .target David Trias
step
    >>打开地面上的 |cRXP_PICK_Equipment Boxes|r。从中获取 |cRXP_LOOT_Scavenged Goods|r
#loop
	.line Tirisfal Glades,32.37,64.37,32.81,64.39,32.89,64.60,33.01,65.38,33.79,64.57,33.13,63.08,32.79,63.11,31.86,61.49,31.75,61.96,31.70,62.53,31.34,62.44,32.37,64.37
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
	.goto Tirisfal Glades,32.37,64.37,12,0
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    .goto Tirisfal Glades,29.29,59.38,50,0
    .goto Tirisfal Glades,29.94,57.33,50,0
#loop
	.line Tirisfal Glades,29.94,57.33,29.82,56.03,29.25,55.77,28.40,56.51,27.68,57.10,28.29,58.31,28.25,59.41,28.80,59.53,29.29,59.40,29.67,58.53,29.94,57.33
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
	.goto Tirisfal Glades,29.94,57.33,40,0
    >>杀死 |cRXP_ENEMY_年轻的夜网蜘蛛|r
    .complete 380,1,5 << WOTLK --Kill Young Night Web Spider (8)
    .complete 380,1,6 << TBC --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    .goto Tirisfal Glades,27.86,58.98,40,0
#loop
	.line Tirisfal Glades,28.25,58.27,28.42,59.07,27.86,60.57,27.17,59.18,27.30,57.97,26.94,56.42,27.51,56.00,28.25,58.27
	.goto Tirisfal Glades,28.25,58.27,40,0
	.goto Tirisfal Glades,28.42,59.07,40,0
	.goto Tirisfal Glades,27.86,60.57,40,0
	.goto Tirisfal Glades,27.17,59.18,40,0
	.goto Tirisfal Glades,27.30,57.97,40,0
	.goto Tirisfal Glades,26.94,56.42,40,0
	.goto Tirisfal Glades,27.51,56.00,40,0
	.goto Tirisfal Glades,28.25,58.27,40,0
    >>杀死靠近洞穴入口的 |cRXP_ENEMY_Young Night Web Spiders|r
    .complete 380,1 << WOTLK --Kill Young Night Web Spider (8)
    .complete 380,1 << TBC --Kill Young Night Web Spider (10)
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
    >>杀死洞穴内的 |cRXP_ENEMY_Young Night Web Spiders|r
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step << Warlock
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵萨尔坦|r
    .turnin 3902 >>交任务: |cRXP_FRIENDLY_捡破烂|r
    .target 死亡守卫萨尔坦
step
    #sticky
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 380 >>交任务: |cRXP_FRIENDLY_夜行蜘蛛洞穴|r
    .accept 381 >>接任务: |cRXP_LOOT_血色十字军|r
    .target 执行官阿伦
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒|r
    >>|cRXP_BUY_从他那里购买|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
	.collect 159,15,383,1 << Warlock tbc/Mage tbc/Priest tbc --Collect Refreshing Spring Water (15)
	.collect 159,5,383,1 << warlock wotlk/Mage wotlk/Priest wotlk --Collect Refreshing Spring Water (5)
    .vendor >>供应商垃圾
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15 << tbc
    .itemcount 159,<5 << wotlk
step
    #requires NightWebH
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
	.goto Tirisfal Glades,36.13,68.74,40,0
    >>杀死 |cRXP_ENEMY_Scarlet 新兵|r 和 |cRXP_ENEMY_Scarlet 皈依者|r。掠夺他们的 |cRXP_LOOT_Scarlet 臂章|r
    >>|cRXP_WARN_先别杀 |cRXP_ENEMY_Meven Korgal|r|r
    >>|cRXP_WARN_如果可以的话尽量避免 |cRXP_ENEMY_Scarlet Converts|r 因为他们有|r |T135843:0|t[Frost Armor] |cRXP_WARN_(减慢你的攻击速度)|r << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>杀死 |cRXP_ENEMY_Samuel|r。掠夺他以获取 |cRXP_LOOT_Samuel 的遗物|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    .goto Tirisfal Glades,31.17,65.08
	>>点击地面上的 |cRXP_PICK_Marla's Grave|r
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r << !Priest/Priest wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_新兵艾尔雷斯|r, |cRXP_FRIENDLY_黑暗牧师杜斯滕|r << Priest tbc
    .turnin 6395 >>交任务: |cRXP_FRIENDLY_玛拉的遗愿|r
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >>接任务: |cRXP_LOOT_黑暗的恩赐|r << Priest tbc
    .goto Tirisfal Glades,31.11,66.02 << Priest tbc
    .target Novice Elreth
    .target Dark Cleric Duesten << Priest tbc
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 381 >>交任务: |cRXP_FRIENDLY_血色十字军|r
    .accept 382 >>接任务: |cRXP_LOOT_十字军信使|r
    .target 执行官阿伦
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
    .vendor >>供应商垃圾
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>杀死 |cRXP_ENEMY_Meven|r。从他身上搜刮 |cRXP_LOOT_Scarlet Crusade Documents|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官阿伦|r
    .turnin 382 >>交任务: |cRXP_FRIENDLY_十字军信使|r
    .accept 383 >>接任务: |cRXP_LOOT_重要情报|r
    .target 执行官阿伦
step << Warrior
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
	.goto Tirisfal Glades,36.13,68.74,40,0
    .xp 5+2350 >>升级至 2350+/2800xp
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔文·蒙泰古|r
    .accept 8 >>接任务: |cRXP_LOOT_潜行者的交易|r
    .target Calvin Montague
----
step
    .goto Tirisfal Glades,38.96,55.74,20,0
    .goto Tirisfal Glades,41.57,57.66,110 >>奔向提瑞斯法林地
    .isOnQuest 8
step
    #completewith next
    >>|cRXP_WARN_确保您的子区域是梦魇谷|r
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_执行官塞加德|r
    .turnin 383 >>交任务: |cRXP_FRIENDLY_重要情报|r
    .target Executor Zygand
step
    #completewith next
    .goto Tirisfal Glades,61.58,52.99,8,0
    .goto Tirisfal Glades,61.75,52.72,8 >>进入旅馆
step
    .goto Tirisfal Glades,61.71,52.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板瑞尼|r
    .turnin 8 >>交任务: |cRXP_FRIENDLY_潜行者的交易|r
    .home << 将你的炉石设为 Brill << Priest tbc
    .vendor >>供应商垃圾 << Warrior
    .isQuestAvailable 8463 << Warrior
step << Warrior
    .xp 6 >>升级至 6
step << Warrior
    .goto Tirisfal Glades,61.85,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .trainer >>训练你的职业法术
    .target Austil de Mon
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .turnin 5651 >>交任务: |cRXP_FRIENDLY_黑暗的恩赐|r
    .accept 5650 >>接任务: |cRXP_LOOT_黑暗之衣|r
    .train 2052 >>训练 |T135929:0|t[次级治疗 2 级]
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .turnin 5651 >>交任务: |cRXP_FRIENDLY_黑暗的恩赐|r
    .accept 5650 >>接任务: |cRXP_LOOT_黑暗之衣|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .target Dark Cleric Beryl
    .train 1243,1
 step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .turnin 5651 >>交任务: |cRXP_FRIENDLY_黑暗的恩赐|r
    .accept 5650 >>接任务: |cRXP_LOOT_黑暗之衣|r
    .train 2052 >>训练 |T135929:0|t[次级治疗 2 级]
    .target Dark Cleric Beryl
    .train 2052,1
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .turnin 5651 >>交任务: |cRXP_FRIENDLY_黑暗的恩赐|r
    .accept 5650 >>接任务: |cRXP_LOOT_黑暗之衣|r
    .target Dark Cleric Beryl
step << Priest tbc
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>退出旅馆
step << Priest tbc
    .goto Tirisfal Glades,59.18,46.49,50 >>前往 |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest tbc
    #sticky
    #label Kel1
    .goto Tirisfal Glades,59.18,46.49
    .cast 2052 >>对 |cRXP_FRIENDLY_Kel|r 施放 |T135929:0|t[次级治疗术 2 级]
    .isOnQuest 5650
step << Priest tbc
    #sticky
    #requires Kel1
    #completewith next
    .goto Tirisfal Glades,59.18,46.49
    .cast 1243 >>对 |cRXP_FRIENDLY_Kel|r 施放 |T135987:0|t[真言术：韧]
step << Priest tbc
    .goto Tirisfal Glades,59.18,46.49
    >>治愈然后强化 |cRXP_FRIENDLY_Kel|r
    .complete 5650,1 --Heal and fortify Deathguard Kel
    .target Deathguard Kel
step << Priest tbc
    #completewith next
    .hs >>从炉火到辉煌
step << Priest tbc
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r upstairs
    .turnin 5650 >>交任务: |cRXP_FRIENDLY_黑暗之衣|r
    .target Dark Cleric Beryl
step
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>退出旅馆
step
    #completewith next
    .goto Undercity,65.87,1.48,15,0
    .goto Undercity,65.82,5.44,15,0
    .goto Undercity,62.76,11.02,12,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
 step
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
step
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛拉米|r
    .fp Silvermoon >>获取银月城飞行路线
    .target Skymistress Gloaming
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .accept 8475 >>接任务: |cRXP_LOOT_死亡之痕|r
    .target Ranger Jaela
step
    .goto Eversong Woods,46.68,49.10,40 >>前往鹰翼广场
    .isQuestAvailable 8463
]])

