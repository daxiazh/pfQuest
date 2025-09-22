local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#version 1
#group RestedXP 部落 1-30
#defaultfor Orc/Troll
#name 1-6 杜隆塔尔
#next 6-10 杜隆塔尔
step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_您已选择一本针对兽人和巨魔的指南。您应该选择与您开始的相同的起始区|r
step
    .goto Durotar,43.33,68.61 << wotlk
    .goto Durotar,43.29,68.53 << tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔图克|r
    .accept 4641 >>接任务: |cRXP_LOOT_起点|r
    .target Kaltunk
step << Warrior/Shaman tbc/Warlock tbc
    #completewith next
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 34 铜的供应商物品（包括你的盔甲）|r << Warlock
    +|cRXP_WARN_杀死 |cRXP_ENEMY_Mottled Boars|r。掠夺它们直到你拥有价值 10 铜的供应商物品（包括你的盔甲）|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,50,0 << Warlock
    .goto Durotar,44.19,65.34,50,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock tbc
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .accept 1485 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warrior/Shaman tbc
    .goto Durotar,43.49,67.35,30,0
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << Warlock/Shaman wotlk
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman tbc
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 4641 >>交任务: |cRXP_FRIENDLY_起点|r
    .accept 788 >>接任务: |cRXP_LOOT_小试身手|r
    .target Gornek
step << Warrior/Shaman tbc
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r << Shaman tbc
    .train 6673 >>训练 |T132333:0|t[战斗呐喊] << Warrior
    .train 8017 >>训练 |T136086:0|t[石化武器] << Shaman tbc
    .target Frang << Warrior
    .target Shikrik << Shaman tbc
step << Warlock tbc
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock tbc
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock tbc
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
    .money >0.01
step << Warlock tbc
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Hunter
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,30,6394,1 << !Hunter tbc --Refreshing Spring Water (30)
    .collect 159,10,6394,1 << !Hunter wotlk --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter tbc
    .money <0.0048 << !Hunter wotlk
    .money <0.0040 << Hunter
step << Warlock tbc
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0024
step << Warlock tbc
    #completewith next
    .goto Durotar,43.57,67.28,25,0
    >>在前往 Burning Blade Coven 的途中杀死 |cRXP_ENEMY_Mottled Boars|r
    >>|cRXP_WARN_尝试先达到 2 级再到达那里|r
    >>|cRXP_WARN_尽量不要使用你的|r |T132794:0|t[清爽泉水] |cRXP_WARN_yet|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock tbc
    .goto Durotar,45.30,56.42,100 >>前往火刃女巫会
    .isOnQuest 1485
step << Warlock tbc
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,50,0
	.goto Durotar,44.53,58.62,50,0
	.goto Durotar,45.18,58.42,50,0
	.goto Durotar,45.83,58.59,50,0
	.goto Durotar,45.79,57.43,50,0
	.goto Durotar,46.46,57.57,50,0
	.goto Durotar,47.19,57.12,50,0
	.goto Durotar,46.21,56.69,50,0
	.goto Durotar,46.28,56.11,50,0
	.goto Durotar,45.65,56.90,50,0
	.goto Durotar,45.35,56.32,50,0
	.goto Durotar,44.77,56.87,50,0
	.goto Durotar,44.58,56.10,50,0
	.goto Durotar,44.27,56.59,50,0
	.goto Durotar,43.85,55.52,50,0
	.goto Durotar,43.87,58.42,50,0
    >>杀死 |cRXP_ENEMY_Vile Familiars|r。掠夺它们以获得 |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,25,0 << !Warlock/wotlk
    .goto Durotar,43.89,65.84,45,0 << !Warlock/wotlk
    >>杀死 |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .accept 790 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
    #label Sarkoth
	.goto Durotar,40.88,66.41,40,0
	.goto Durotar,40.41,66.64,40,0
	.goto Durotar,40.43,67.36,40,0
	.goto Durotar,40.72,67.39,40,0
#loop
	.line Durotar,40.88,66.41,40.41,66.64,40.43,67.36,40.72,67.39,40.88,66.41
	.goto Durotar,40.88,66.41,20,0
	.goto Durotar,40.41,66.64,20,0
	.goto Durotar,40.43,67.36,20,0
	.goto Durotar,40.72,67.39,20,0
	.goto Durotar,40.88,66.41,20,0
    >>杀死 |cRXP_ENEMY_Sarkoth|r。从他身上搜刮 |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳祖|r
    .turnin 790 >>交任务: |cRXP_FRIENDLY_萨科斯|r
    .accept 804 >>接任务: |cRXP_LOOT_萨科斯|r
    .target Hana'zua
step
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    >>杀死 |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock tbc
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+685 >>升级至 685+/1400xp
    .mob Mottled Boar
step << Warlock tbc/wotlk
    #xprate 1.48-1.58
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+845 >>升级至 845+/1400xp << wotlk
    .xp 3+372 >>升级至 372+/1400xp << Warlock tbc
    .mob Mottled Boar
--Cutting Teeth gives 50 more xp in wotlk
step << wotlk
    #xprate 1.58-1.68
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+808 >>升级至 808+/1400xp
    .mob Mottled Boar
step << wotlk
    #xprate >1.6999
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 3+771 >>升级至 771+/1400xp
    .mob Mottled Boar
step << !Warlock
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 2+520 >>升级至 520+/900xp << wotlk
    .xp 2+570 >>升级至 570+/900xp << tbc
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Duokna2 << wotlk
    #completewith Ruzan2 << tbc
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你有价值 95 铜的供应商物品。你也可以以 13 铜的价格出售你的装备|r
	.money >0.0095
    .mob Mottled Boar
step << Warlock
    #xprate >1.4999
    #completewith Duokna2 << wotlk
    #completewith Ruzan2 << tbc
	>>|cRXP_WARN_升级 |cRXP_ENEMY_Mottled Boars|r。掠夺它们，直到你拥有价值 1 银 90 铜的供应商物品。你也可以以 13 铜的价格出售你的装备|r
	.money >0.0190
    .mob Mottled Boar
step << Rogue/Warlock wotlk
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
step << !Rogue !Warrior
    #label Duokna2
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_WARN_不要购买任何|r |T132794:0|t[清爽泉水] |cRXP_WARN_yet|r << !Hunter !Shaman
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1
step << Warlock tbc
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁赞|r
    .turnin 1485 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 1499 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Ruzan
step << Warlock tbc
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step << Warlock tbc
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 1499 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_LOOT_火刃奖章|r
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 788 >>交任务: |cRXP_FRIENDLY_小试身手|r
    .accept 789 >>接任务: |cRXP_LOOT_工蝎的尾巴|r
    .accept 2383 >>接任务: |cRXP_LOOT_简易羊皮纸|r << Orc Warrior
    .accept 3065 >>接任务: |cRXP_LOOT_普通石板|r << Troll Warrior
    .accept 3082 >>接任务: |cRXP_LOOT_风蚀石板|r << Troll Hunter
    .accept 3083 >>接任务: |cRXP_LOOT_密文石板|r << Troll Rogue
    .accept 3084 >>接任务: |cRXP_LOOT_符文石板|r << Troll Shaman
    .accept 3085 >>接任务: |cRXP_LOOT_神圣石板|r << Troll Priest
    .accept 3086 >>接任务: |cRXP_LOOT_雕文石板|r << Troll Mage
    .accept 3087 >>接任务: |cRXP_LOOT_风蚀羊皮纸|r << Orc Hunter
    .accept 3088 >>接任务: |cRXP_LOOT_密文羊皮纸|r << Orc Rogue
    .accept 3089 >>接任务: |cRXP_LOOT_符文羊皮纸|r << Orc Shaman
    .accept 3090 >>接任务: |cRXP_LOOT_被污染的羊皮纸|r << Orc Warlock
    .turnin 804 >>交任务: |cRXP_FRIENDLY_萨科斯|r
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前往 |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #xprate >1.4999
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .train 53 >>训练 |T132090:0|t[背刺]
    .money <0.04
    .target Rwag
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .turnin 3083 >>交任务: |cRXP_FRIENDLY_密文石板|r << Troll Rogue
    .turnin 3088 >>交任务: |cRXP_FRIENDLY_密文羊皮纸|r << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
    .money <0.01 << tbc
step << Warlock tbc
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock tbc
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    .vendor >>供应商垃圾
    .target Hraug
    .money >0.01
--95c for imp
step << Warlock tbc
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .train 172 >>列车 |T136118:0|t[腐败]
	.train 688 >>训练召唤小鬼 << wotlk
    .target Nartok
step << Warlock wotlk
    #xprate >1.4999
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
    .train 172 >>列车 |T136118:0|t[腐败]
	.train 688 >>训练 |T136218:0|t[召唤小鬼]
    .target Nartok
step << Warlock wotlk
    #xprate <1.5
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .turnin 3090 >>交任务: |cRXP_FRIENDLY_被污染的羊皮纸|r
	.train 688 >>训练 |T136218:0|t[召唤小鬼]
    .target Nartok
step << Warlock wotlk
    #completewith next
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step
    #sticky
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .accept 4402 >>接任务: |cRXP_LOOT_戈加尔的清凉果|r
    .target Galgar
step
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman tbc --Refreshing Spring Water (15)
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman wotlk --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman wotlk
    .itemcount 2512,<600 << Hunter
step
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman tbc --Refreshing Spring Water (15)
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman wotlk --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.0177 << Priest tbc/Mage tbc
    .money <0.0145 << Hunter
    .money <0.0129 << Priest wotlk/Mage wotlk
    .money <0.0072 << Warlock tbc
    .money <0.0024 << Warlock wotlk
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman tbc
    .itemcount 2512,<600 << Hunter
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.0115
    .itemcount 2512,<200
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>供应商垃圾
    .target Duokna
    .money <0.0105
    .itemcount 2512,<200
step << Priest
    #xprate >1.4999
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业法术
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.02
    .target Ken'jai
step << Priest
    #xprate >1.4999
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.0105
    .target Ken'jai
step << Priest
    #xprate >1.4999
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money <0.0095
    .target Ken'jai
step << skip
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .money >0.1
    .target Ken'jai
--VV stam is useless at the start
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .turnin 3085 >>交任务: |cRXP_FRIENDLY_神圣石板|r
    .target Ken'jai
step << Shaman
    #xprate >1.4999
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .train 8017 >>训练 |T136086:0|t[石化武器] << wotlk
    .train 8042 >>列车 |T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 3084 >>交任务: |cRXP_FRIENDLY_符文石板|r << Troll
    .turnin 3089 >>交任务: |cRXP_FRIENDLY_符文羊皮纸|r << Orc
    .train 8017 >>训练 |T136086:0|t[石化武器] << wotlk
    .target Shikrik
step << Mage
    #xprate >1.4999
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Mai'ah
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 3086 >>交任务: |cRXP_FRIENDLY_雕文石板|r << Troll
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .target Mai'ah
step << !Warlock/wotlk
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .accept 792 >>接任务: |cRXP_LOOT_邪灵劣魔|r
    .target Zureetha Fargaze
step << Hunter
    #xprate >1.4999
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .turnin 3082 >>交任务: |cRXP_FRIENDLY_风蚀石板|r << Troll
    .turnin 3087 >>交任务: |cRXP_FRIENDLY_风蚀羊皮纸|r << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.4999
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.0190
step << Warrior
    #xprate >1.4999
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .train 100 >>列车 |T132337:0|t[收费]
    .target Frang
    .money <0.0095
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .turnin 2383 >>交任务: |cRXP_FRIENDLY_简易羊皮纸|r << Orc
    .turnin 3065 >>交任务: |cRXP_FRIENDLY_普通石板|r << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .accept 5441 >>接任务: |cRXP_LOOT_懒惰的苦工|r
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>拾取仙人掌附近的 |cRXP_LOOT_Cactus 苹果|r
    .complete 4402,1 --Cactus Apple (10) Vanilla/TBC, (6) WOTLK
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>在睡觉时使用 |T133486:0|t[Foreman's Blackjack] |cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock/wotlk
    #completewith Imps
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |cRXP_LOOT_Scorpid 工人尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10) Vanilla/TBC, (8) WOTLK
    .mob Scorpid Worker
step << !Warlock/wotlk
    #label Imps
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,45,0
	.goto Durotar,44.53,58.62,45,0
	.goto Durotar,45.18,58.42,45,0
	.goto Durotar,45.83,58.59,45,0
	.goto Durotar,45.79,57.43,45,0
	.goto Durotar,46.46,57.57,45,0
	.goto Durotar,47.19,57.12,45,0
	.goto Durotar,46.21,56.69,45,0
	.goto Durotar,46.28,56.11,45,0
	.goto Durotar,45.65,56.90,45,0
	.goto Durotar,45.35,56.32,45,0
	.goto Durotar,44.77,56.87,45,0
	.goto Durotar,44.58,56.10,45,0
	.goto Durotar,44.27,56.59,45,0
	.goto Durotar,43.85,55.52,45,0
	.goto Durotar,43.87,58.42,45,0
    >>杀死 |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12) Vanilla/TBC, (8) WOTLK
    .mob Vile Familiar
step
    #label Tails
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,45,0
	.goto Durotar,42.81,58.41,45,0
	.goto Durotar,41.90,58.35,45,0
	.goto Durotar,41.97,59.20,45,0
	.goto Durotar,41.36,60.35,45,0
	.goto Durotar,40.66,61.27,45,0
	.goto Durotar,40.07,61.35,45,0
	.goto Durotar,39.42,61.29,45,0
	.goto Durotar,39.46,62.17,45,0
	.goto Durotar,39.55,63.10,45,0
	.goto Durotar,40.13,64.04,45,0
	.goto Durotar,40.84,64.06,45,0
	.goto Durotar,40.74,65.86,45,0
	.goto Durotar,39.93,66.03,45,0
	.goto Durotar,40.04,66.99,45,0
	.goto Durotar,40.09,67.66,45,0
	.goto Durotar,40.13,68.50,45,0
	.goto Durotar,40.72,68.55,45,0
	.goto Durotar,41.30,67.84,45,0
	.goto Durotar,41.37,66.72,45,0
	.goto Durotar,41.89,66.05,45,0
	.goto Durotar,41.27,65.71,45,0
	.goto Durotar,41.36,64.07,45,0
	.goto Durotar,41.33,63.12,45,0
	.goto Durotar,41.35,61.98,45,0
	.goto Durotar,41.49,61.25,45,0
	.goto Durotar,41.90,60.24,45,0
	.goto Durotar,42.51,59.34,45,0
	.goto Durotar,43.08,59.62,45,0
	.goto Durotar,43.91,59.33,45,0
	.goto Durotar,45.15,59.46,45,0
	.goto Durotar,45.81,59.30,45,0
	.goto Durotar,45.85,60.34,45,0
	.goto Durotar,46.46,61.11,45,0
	.goto Durotar,47.09,62.24,45,0
	.goto Durotar,47.08,63.15,45,0
	.goto Durotar,47.14,64.08,45,0
	.goto Durotar,47.58,64.04,45,0
	.goto Durotar,47.08,63.15,45,0
	.goto Durotar,47.09,62.24,45,0
	.goto Durotar,46.90,61.15,45,0
	.goto Durotar,46.98,60.18,45,0
	.goto Durotar,47.07,59.34,45,0
	.goto Durotar,46.47,58.28,45,0
	.goto Durotar,45.81,59.30,45,0
	.goto Durotar,45.15,59.46,45,0
	.goto Durotar,43.91,59.33,45,0
	.goto Durotar,43.26,58.28,45,0
    >>杀死 |cRXP_ENEMY_Scorpid 工人|r。掠夺他们以获得 |cRXP_LOOT_Scorpid 工人尾巴|r
    .complete 789,1 --Scorpid Worker Tail (10) Vanilla/TBC, (8) WOTLK
    .mob Scorpid Worker
step
#loop
	.line Durotar,44.98,69.13,45.64,65.70,47.37,65.67,46.74,60.66,47.09,57.90,43.90,57.79,42.70,57.25,41.27,58.95,40.91,60.41,38.83,61.84,44.98,69.13
	.goto Durotar,44.98,69.13,40,0
	.goto Durotar,45.64,65.70,40,0
	.goto Durotar,47.37,65.67,40,0
	.goto Durotar,46.74,60.66,40,0
	.goto Durotar,47.09,57.90,40,0
	.goto Durotar,43.90,57.79,40,0
	.goto Durotar,42.70,57.25,40,0
	.goto Durotar,41.27,58.95,40,0
	.goto Durotar,40.91,60.41,40,0
	.goto Durotar,38.83,61.84,40,0
	.goto Durotar,44.98,69.13,40,0
    >>在睡觉时使用 |T133486:0|t[Foreman's Blackjack] |cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
#loop
	.line Durotar,41.30,65.03,41.92,64.74,42.66,64.92,43.31,65.02,43.90,65.96,44.54,65.96,45.16,65.77,45.72,65.93,45.72,65.04,45.21,63.95,45.83,63.01,45.81,62.17,45.78,61.14,45.15,60.20,44.50,59.45,43.86,60.43,43.07,60.24,42.58,60.09,42.02,61.19,42.02,62.15,42.00,62.92,41.99,64.03,41.30,65.03
	.goto Durotar,41.30,65.03,50,0
	.goto Durotar,41.92,64.74,50,0
	.goto Durotar,42.66,64.92,50,0
	.goto Durotar,43.31,65.02,50,0
	.goto Durotar,43.90,65.96,50,0
	.goto Durotar,44.54,65.96,50,0
	.goto Durotar,45.16,65.77,50,0
	.goto Durotar,45.72,65.93,50,0
	.goto Durotar,45.72,65.04,50,0
	.goto Durotar,45.21,63.95,50,0
	.goto Durotar,45.83,63.01,50,0
	.goto Durotar,45.81,62.17,50,0
	.goto Durotar,45.78,61.14,50,0
	.goto Durotar,45.15,60.20,50,0
	.goto Durotar,44.50,59.45,50,0
	.goto Durotar,43.86,60.43,50,0
	.goto Durotar,43.07,60.24,50,0
	.goto Durotar,42.58,60.09,50,0
	.goto Durotar,42.02,61.19,50,0
	.goto Durotar,42.02,62.15,50,0
	.goto Durotar,42.00,62.92,50,0
	.goto Durotar,41.99,64.03,50,0
	.goto Durotar,41.30,65.03,50,0
    .xp 4 >>磨练至 4 级
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << !Rogue !Warrior !Hunter
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 159,<2 << Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高内克|r
    .turnin 789 >>交任务: |cRXP_FRIENDLY_工蝎的尾巴|r
    .target Gornek
step << Shaman
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 8042 >>列车 |T136026:0|t[地震]
    .goto Durotar,42.39,69.00
    .accept 1516 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #xprate <1.5
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target Mai'ah
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练你的职业法术
    .money <0.02
    .target Ken'jai
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.0105
    .target Ken'jai
step << Priest
    #xprate <1.5
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .money <0.0095
    .target Ken'jai
step << !Warlock/wotlk
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 792 >>交任务: |cRXP_FRIENDLY_邪灵劣魔|r
    .accept 794 >>接任务: |cRXP_LOOT_火刃奖章|r
    .target Zureetha Fargaze
step << Hunter
    #xprate <1.5
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
    .target Jen'shan
 step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Frang
    .money <0.0190
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 100 >>列车 |T132337:0|t[收费]
    .target Frang
    .money <0.0095
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 5441 >>交任务: |cRXP_FRIENDLY_懒惰的苦工|r
    .accept 6394 >>接任务: |cRXP_LOOT_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >>升级至 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    .goto Durotar,44.67,64.92,25,0
    .goto Durotar,43.45,62.96,25,0
    .goto Durotar,43.82,62.72,25,0
    .goto Durotar,44.85,61.54,25,0
    .goto Durotar,44.88,59.66,25,0
    .goto Durotar,44.61,58.20,25,0
    .goto Durotar,45.46,58.49,25,0
    .goto Durotar,45.93,60.62,25,0
    .goto Durotar,46.87,60.36,25,0
    .goto Durotar,47.28,62.80,25,0
    .goto Durotar,46.08,62.98,25,0
#loop
	.line Durotar,44.67,64.92,43.45,62.96,43.82,62.72,44.85,61.54,44.88,59.66,44.61,58.20,45.46,58.49,45.93,60.62,46.87,60.36,47.28,62.80,46.08,62.98,44.67,64.92
	.goto Durotar,44.67,64.92,25,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>拾取仙人掌附近的 |cRXP_LOOT_Cactus 苹果|r
    .complete 4402,1 --Cactus Apple (10) Vanilla/TBC, (6) WOTLK
step << !Warrior !Rogue !Shaman/wotlk
    #xprate <1.5
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,45,0
	.goto Durotar,44.53,58.62,45,0
	.goto Durotar,45.18,58.42,45,0
	.goto Durotar,45.83,58.59,45,0
	.goto Durotar,45.79,57.43,45,0
	.goto Durotar,46.46,57.57,45,0
	.goto Durotar,47.19,57.12,45,0
	.goto Durotar,46.21,56.69,45,0
	.goto Durotar,46.28,56.11,45,0
	.goto Durotar,45.65,56.90,45,0
	.goto Durotar,45.35,56.32,45,0
	.goto Durotar,44.77,56.87,45,0
	.goto Durotar,44.58,56.10,45,0
	.goto Durotar,44.27,56.59,45,0
	.goto Durotar,43.85,55.52,45,0
	.goto Durotar,43.87,58.42,45,0
    .xp 4+1720 >>升级至 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman/wotlk
    #xprate <1.5
#loop
	.line Durotar,43.87,58.42,44.53,58.62,45.18,58.42,45.83,58.59,45.79,57.43,46.46,57.57,47.19,57.12,46.21,56.69,46.28,56.11,45.65,56.90,45.35,56.32,44.77,56.87,44.58,56.10,44.27,56.59,43.85,55.52,43.87,58.42
	.goto Durotar,43.87,58.42,45,0
	.goto Durotar,44.53,58.62,45,0
	.goto Durotar,45.18,58.42,45,0
	.goto Durotar,45.83,58.59,45,0
	.goto Durotar,45.79,57.43,45,0
	.goto Durotar,46.46,57.57,45,0
	.goto Durotar,47.19,57.12,45,0
	.goto Durotar,46.21,56.69,45,0
	.goto Durotar,46.28,56.11,45,0
	.goto Durotar,45.65,56.90,45,0
	.goto Durotar,45.35,56.32,45,0
	.goto Durotar,44.77,56.87,45,0
	.goto Durotar,44.58,56.10,45,0
	.goto Durotar,44.27,56.59,45,0
	.goto Durotar,43.85,55.52,45,0
	.goto Durotar,43.87,58.42,45,0
    .xp 5 >>磨练至 5 级
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>进入洞穴
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>前往 |cRXP_LOOT_Thazz'ril 的选择|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>杀死 |cRXP_ENEMY_Felstalkers|r。掠夺他们以获得 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>战利品 |cRXP_LOOT_Thazz'ril 的选择|r 靠墙
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.33,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>前往 |cRXP_ENEMY_Yarrog Baneshadow|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>杀死 |cRXP_ENEMY_Yarrog Baneshadow|r。从他身上夺取 |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>杀死 |cRXP_ENEMY_Felstalkers|r。掠夺他们以获得 |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #xprate <1.5
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1635 >>升级至 1635+/2800xp << !Shaman
    .xp 5+645 >>升级至 645+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
#loop
	.line Durotar,42.70,52.99,42.97,51.14,43.56,52.05,43.74,52.65,44.13,52.85,44.82,52.51,44.83,53.40,44.78,54.57,45.14,55.02,45.51,55.23,45.14,55.02,44.51,55.03,44.21,54.12,43.92,54.30,43.87,55.22,43.46,55.56,43.05,55.24,42.38,54.22,42.53,53.48,43.27,53.82,42.70,52.99
	.goto Durotar,42.70,52.99,25,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1255 >>升级至 1255+/2800xp << !Shaman
    .xp 5+265 >>升级至 265+/2800xp << Shaman
    .isOnQuest 4402
step
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_通过将你的角色定位在岩石边缘直到看起来像漂浮起来，执行注销跳过，然后注销并重新登录|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>点击这里
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_你可以在堡垒外面或堡垒顶部与他交谈|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
    .target Gar'thok
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>前往塔楼
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>爬上塔楼前往 Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
    .target Furl Scornbrow
step
    #completewith next
    .hs >>试炼之谷
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #xprate >1.4999
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
    .xp 5+1795,1 << !Shaman
    .xp 5+310,1 << Shaman
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈加尔|r
    .turnin 4402 >>交任务: |cRXP_FRIENDLY_戈加尔的清凉果|r
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多克纳|r
    .vendor >>供应商垃圾
    .target Duokna
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖雷萨|r
    .turnin 794 >>交任务: |cRXP_FRIENDLY_火刃奖章|r
    .accept 805 >>接任务: |cRXP_LOOT_去森金村报到|r
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
	.accept 5649 >>接任务: |cRXP_LOOT_部族的传统|r
	.train 591 >>列车 |T135924:0|t[重击]
    .train 17 >>训练 |T135940:0|t[真言术：盾]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .train 143 >>火车 |T135812:0|t[火球]
    .train 2136 >>列车 |T135807:0|t[火焰冲击]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r, |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .turnin 1516 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1517 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Jen'shan
    .money <0.0190
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3126 >>列车 |T132269:0|t[格挡]
    .train 6343 >>列车 |T136105:0|t[雷霆一击]
    .train 34428 >>列车 |T132342:0|t[胜利冲刺] << wotlk
    .target Frang
    .money <0.0285 << wotlk
    .money <0.0190 << tbc
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗朗恩|r
    .train 3126 >>列车 |T132269:0|t[格挡]
    .train 34428 >>列车 |T132342:0|t[胜利冲刺] << wotlk
    .target Frang
    .money <0.0190 << wotlk
    .money <0.0095 << tbc
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>前往 |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>列车 |T136189:0|t[邪恶力量]
    .train 1776 >>列车 |T132155:0|t[凿击]
    .target Rwag
    .money <0.0190
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁瓦格|r
    .train 1757 >>列车 |T136189:0|t[邪恶力量]
    .target Rwag
    .money <0.0095
step << Warlock wotlk
    #completewith Nartok3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>前往 |cRXP_FRIENDLY_Nartok|r
step << Warlock tbc
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>前往 |cRXP_FRIENDLY_Hraug|r
step << Warlock tbc
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫劳格|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[血契魔典] |cRXP_BUY_|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>供应商垃圾
    .target Hraug
    .money <0.0285
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .train 1454 >>列车 |T136126:0|t[生命之流]
    .target Nartok
    .money <0.0190
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .train 695 >>训练 |T136197:0|t[暗影箭]
    .target Nartok
    .money <0.0095
step << Warlock tbc
    #completewith Leave
    .train 20397 >>使用 |T133738:0|t[血契魔典]
    .itemcount 16321,1
    .use 16321
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>前往 |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>使用 |T134743:0|t[地球 Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .accept 1518 >>接任务: |cRXP_LOOT_大地的召唤|r
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎纳甘·地鸣|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .train 332 >>训练 |T136052:0|t[治疗波]
    .target Shikrik
step
    #xprate >1.4999
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头塔兹利尔|r
    .turnin 6394 >>交任务: |cRXP_FRIENDLY_塔兹利尔的镐|r
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>走出试炼之谷
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 6-10 杜隆塔尔
#version 1
#group RestedXP 部落 1-30
#next 10-13 杜隆塔尔 << Warrior/Shaman
#next 10-12 永歌森林 << !Warrior !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌克尔|r
    .accept 2161 >>接任务: |cRXP_LOOT_苦工的重担|r
    .target Ukor
step
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6,15,0
    .goto Durotar,54.3,73.3,15,0
    .goto Durotar,54.5,75.0,15,0
    .goto Durotar,54.1,76.6
    >>与 Lar Prowltusk 交谈。他在 3 个点之间巡逻
.target Lar Prowltusk
>>对话: |cRXP_FRIENDLY_拉尔·猎齿|r
    .accept 786 >>接任务: |cRXP_LOOT_科卡尔半人马的进攻|r
    .unitscan Lar Prowltusk
step
    >>与小屋里的维尔林·弗昂交谈
.target Vel'rin Fang
>>对话: |cRXP_FRIENDLY_维尔林·长牙|r
    .accept 817 >>接任务: |cRXP_LOOT_生活所需的虎皮|r
    .goto Durotar,56.0,73.9
    >>与沃纳尔大师和加德林在池边交谈
.target Master Vornal
>>对话: |cRXP_FRIENDLY_沃纳尔大师|r
    .accept 818 >>接任务: |cRXP_LOOT_沃纳尔大师|r
    .goto Durotar,55.9,74.4
>>对话: |cRXP_FRIENDLY_加德林大师|r
    .turnin 805 >>交任务: |cRXP_FRIENDLY_去森金村报到|r
    .goto Durotar,55.9,74.7
.target Master Gadrin
    .accept 808 >>接任务: |cRXP_LOOT_明希纳的颅骨|r
    .accept 826 >>接任务: |cRXP_LOOT_扎拉赞恩|r
    .accept 823 >>接任务: |cRXP_LOOT_向奥戈尼尔报告|r
step << Shaman
    .goto Durotar,56.5,73.1
    .vendor >>卖掉你的武器，如果它能给你足够的钱买手杖（4s 80c）。如果你还没有足够的钱，你以后再回来
step << Shaman
    .goto Durotar,56.5,73.1
    .money <0.0480
    >>购买手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Rogue
.goto Durotar,56.5,73.1
.vendor >>卖掉你的武器，如果它能给你足够的钱买 Stiletto（3s 82c）。如果你还没有足够的钱，你以后再回来
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>购买细高跟鞋并装备它
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .goto Durotar,56.5,73.1
.vendor >>卖掉你的武器，如果它能给你足够的钱买一把大斧（4s 60c）。如果你还没有足够的钱，你以后再回来
step << Orc Warrior
    .goto Durotar,56.5,73.1
    .money <0.0460
    >>购买大斧并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
.vendor >>卖掉你的武器。如果你的武器能给你足够的钱买一把 Gladius（5s 9c），就卖掉它。如果你还没有足够的钱，你以后再回来
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>购买一把 Gladius 并装备它
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
.vendor >>卖掉你的武器，如果它能给你足够的钱买霍恩伍德反曲弓（2s 71c）。如果你还没有足够的钱，你以后再回来
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >>购买霍恩伍德反曲弓并装备它
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
#sticky
#completewith next
.goto Durotar,59.7,71.7,0
    .goto Durotar,57.6,77.9,0
    >>沿着海滩奔跑，杀死尽可能多的爬行者和龙虾，以获取粘液和眼睛。此任务可以稍后完成。
    .complete 818,2 --Crawler Mucus (8)
    .complete 818,1 --Intact Makrura Eye (4)
step
    .goto Durotar,52.1,83.3,75 >>到达海滩尽头
step
.goto Durotar,50.9,79.2,15 >>进入科卡尔基地
step
    #sticky
    #completewith Bonfire
    +如果督军科尔卡尼斯 (Warlord Kolkanis) 出现并阻止计划，请在您达到 7 级时杀死他。务必使用仙人掌苹果惊喜来获得 +2 耐力，并使用之前的治疗药水。
    .unitscan Warlord Kolkanis
step
    .goto Durotar,49.81,81.29
    >>在地面上的帐篷里烧掉 |cRXP_PICK_Attack Plan|r
    .complete 786,1 --Attack Plan: 试炼之谷 destroyed (1)
step
    >>将 |cRXP_PICK_Attack Plan|r 烧毁在地上
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
.goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith bonfireskip
    .deathskip >>在篝火旁死亡并在灵魂治疗师处重生，或跑回森金村
step << Shaman
    .goto Durotar,56.6,73.1
    .money <0.0480
    >>与外面楼梯下面的 Traxexir 交谈
    >>购买手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    >>与外面楼梯下面的 Traxexir 交谈
    >>购买细高跟鞋并装备它
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    .money <0.0460
    .goto Durotar,56.5,73.1
    >>与外面楼梯下面的 Traxexir 交谈
    >>购买大斧并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    .goto Durotar,56.5,73.1
    .money <0.0509
    >>与外面楼梯下面的 Traxexir 交谈
    >>购买一把 Gladius 并装备它
    .collect 2488,1 --Collect Gladius
step << Hunter
    .goto Durotar,56.5,73.1
    .money <0.0271
    >>购买霍恩伍德反曲弓并装备它
    .collect 2506,1 --Collect Hornwood Recurve Bow
step
    >>掩体顶层内部
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>对话: |cRXP_FRIENDLY_加索克|r
    .accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
step
    #completewith next
    .goto Durotar,50.2,43.1,15 >>沿着这条路走
step
    >>上塔和 Furl Scornbrow 交谈
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>对话: |cRXP_FRIENDLY_弗恩·凝眉|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
step
    #sticky
    #label KulTiras
    .goto Durotar,59.2,58.3
>>杀死库尔提拉斯怪物。掠夺他们的碎片
    .complete 784,1 --库尔提拉斯水手 (10)
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .complete 791,1 --Canvas Scraps (8)
step
    #label bonfireskip
    .goto Durotar,59.7,58.3
    >>前往要塞顶层。杀死本尼迪克特中尉并夺取他的钥匙 - 小心他使用盾牌猛击（打断）
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step
.goto Durotar,59.8,57.8,8 >>从这里上楼梯
step
.goto Durotar,59.9,57.5,8 >>从这里上楼梯
step
>>抢劫宝箱。接受物品中的任务
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
    .use 4881
.accept 830 >>接任务: |cRXP_LOOT_将军的命令|r
step
    .goto Durotar,58.4,57.2
.xp 7+2195 >>升级至 2195+/4500xp
step
    #requires KulTiras
    #completewith next
.deathskip >>死亡后在灵魂治疗师处重生，或者跑回剃刀岭
step
    .goto Durotar,51.9,43.5
>>对话: |cRXP_FRIENDLY_加索克|r
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
.target Gar'Thok
    .accept 825 >>接任务: |cRXP_LOOT_海底沉船|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .accept 837 >>接任务: |cRXP_LOOT_野猪人的进犯|r
step
    .isOnQuest 823
    .goto Durotar,52.24,43.15
.target Orgnil Soulscar
>>对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
step << Shaman/Warrior
    .goto Durotar,52.24,43.15
>>对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
.target Orgnil Soulscar
    .accept 806 >>接任务: |cRXP_LOOT_黑暗风暴|r
step << !Shaman !Warrior
    #xprate <1.5
    .goto Durotar,52.24,43.15
.target Orgnil Soulscar
>>对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
step << Warlock/Shaman/Warrior
    #xprate <1.5
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>对话: |cRXP_FRIENDLY_加索克|r
.accept 831 >>接任务: |cRXP_LOOT_将军的命令|r
step
    #xprate <1.5
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>对话: |cRXP_FRIENDLY_弗恩·凝眉|r
    .turnin 791 >>交任务: |cRXP_FRIENDLY_新的背包|r
step
    >>与厨师托尔卡交谈
    .goto Durotar,51.1,42.4
.target Cook Torka
>>对话: |cRXP_FRIENDLY_厨师托尔卡|r
    .accept 815 >>接任务: |cRXP_LOOT_恐龙蛋大餐|r
step << !Shaman !Warrior
    #xprate <1.5
    .abandon 806 >>抛弃黑暗风暴
step << Shaman
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0480
    >>购买手杖并装备它
    .collect 2495,1 --Collect Walking Stick
step << Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0382
    >>购买细高跟鞋并装备它
    .collect 2494,1 --Collect Stiletto
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0460
    >>购买大斧并装备它
    .collect 2491,1 --Collect Large Axe
step << Paladin
    #xprate <1.5
    .goto Durotar,52.0,40.5
    .money <0.0509
    >>购买一把 Gladius 并装备它
    .collect 2488,1 --Collect Gladius
step << Hunter
    #xprate <1.5
    .goto Durotar,53.0,41.0
    .money <0.0271
    >>购买霍恩伍德反曲弓并装备它
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2020 >>训练锻造技能。锻造技能可以让你制造磨刀石（+2 武器伤害，持续 1 小时）。如果你愿意，你可以跳过锻造和采矿
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #xprate <1.5
.goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >>火车采矿。
    .cast 2580 >>在你的法术书中施展“寻找矿物”
step << Warrior/Rogue
    #xprate <1.5
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >>购买采矿镐。留意矿脉，为你的武器制作磨刀石
step << Shaman
    #xprate <1.5
    .goto Durotar,54.419,42.588
    .train 2484 >>训练地缚图腾
    .train 324 >>列车闪电盾
    .train 8044 >>列车地球冲击r2
    .train 8018 >>训练 Rockbiter 武器 r2
step << Priest
    #xprate <1.5
    .goto Durotar,54.3,42.9
    .train 139 >>列车更新
    .train 2052 >>训练次级治疗 r2
>>对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5649 >>接任务: |cRXP_LOOT_部族的传统|r
.target Tai'jin
    .accept 5648 >>接任务: |cRXP_LOOT_灵魂之衣|r
step << Priest
    .goto Durotar,53.1,46.5
    .cast 2052 >>对步兵科加施放次级治疗术（等级 2）
    .cast 1243 >>对步兵科加施放真言术：韧（等级 1）
    .complete 5648,1 --Heal and cast Fortify on Grunt Kor'ja
step << Priest
    .goto Durotar,54.3,42.9
.target Tai'jin
>>对话: |cRXP_FRIENDLY_泰金|r
    .turnin 5648 >>接任务: |cRXP_LOOT_灵魂之衣|r
step << Warrior
.goto Durotar,54.190,42.468
    .train 284 >>训练英雄打击 r2
    .train 1715 >>训练腿筋
step << Hunter
    .goto Durotar,51.8,43.5
    .train 5116 >>训练震荡射击
step << Rogue
.goto Durotar,52.0,43.7
    .train 6760 >>训练 剔骨 r2
    .train 5277 >>躲避火车
step << Warlock
    .goto Durotar,54.4,41.2
    .train 980 >>训练痛苦诅咒
    .train 5782 >>列车恐惧
step << Warrior/Rogue
    .goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>训练急救
step
    .goto Durotar,54.4,42.2
    .money <0.1184
.vendor >>从 Jark 处购买一个 6 格包
step << Priest/Mage/Warlock/Shaman/Druid
    .goto Durotar,51.5,41.6
    >>与旅店老板交谈
.target Innkeeper Grosk
>>对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .home >>将炉石设置为剃刀岭
    .vendor >>尽可能多地购买冰牛奶
step << Warrior/Rogue/Hunter
    .goto Durotar,51.5,41.6
    >>与旅店老板交谈
.target Innkeeper Grosk
>>对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .home >>将炉石设置为剃刀岭
    .vendor >>尽可能多地购买腿肉
step << Paladin
    .goto Durotar,51.5,41.6
    >>与旅店老板交谈
.target Innkeeper Grosk
>>对话: |cRXP_FRIENDLY_旅店老板格罗斯克|r
    .turnin 2161 >>交任务: |cRXP_FRIENDLY_苦工的重担|r
    .home >>将炉石设置为剃刀岭
step << Warrior/Rogue/Paladin
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >>购买采矿镐。留意矿脉，用锻造技术为你的武器制作磨刀石
step << Paladin
    .goto Orgrimmar,49.1,94.7,20 >>冲进奥格瑞玛
step << Paladin
    .goto Orgrimmar,32.272,35.794
    .trainer >>去训练你的职业法术
step << Paladin
    #completewith next
    .goto Durotar,59.2,58.3,15
    .hs >>炉石到剃刀岭
step
    #sticky
    #requires KulTiras
    #completewith Tools
    >>在前往其他任务的途中，杀死一些龙虾以获取眼睛和爬行动物以获取粘液。您不需要在这里完成它。
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #completewith next
    >>检查离岸最近的船上是否有工具箱。如果找不到这些产卵点，请检查其他船只。它们可能有点难看到
    .goto Durotar,61.9,55.5,10 >>在水下的窗户里
    .goto Durotar,62.3,56.3,10 >>水下
    .goto Durotar,61.4,56.1,10 >>靠近海岸
step
    .goto Durotar,61.9,55.5,10,0
    .goto Durotar,62.3,56.3,10,0
    .goto Durotar,61.4,56.1,10,0
    .complete 825,1 --Gnomish Tools (3)
step
    #requires KulTiras
    #label Tools
    .goto Durotar,67.2,70.0,125 >>游到岛上
step
    #sticky
    #completewith Fur
    >>杀死你看到的所有老虎，获取它们的皮毛
    .complete 817,1 --Durotar Tiger Fur (4)
step
    >>在该岛的地面上拾取尾龙蛋。它们通常由尾龙守卫
    .goto Durotar,68.8,71.5
    .complete 815,1 --Taillasher Egg (3)
step
    #sticky
    #completewith Swim
    >>杀死一些龙虾以获取眼睛/爬行动物以获取粘液
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step
    #label Swim
.goto Durotar,66.9,80.0,80 >>游到另一个岛
step
    #sticky
    #completewith Trolls
    >>杀死该区域的巨魔。小心伏都教巨魔的治疗
    .complete 826,1 --被诅咒的巨魔 (8)
    .complete 826,2 --巫毒巨魔 (8)
step << Shaman
    .goto Durotar,67.4,87.8
    >>杀死扎拉赞恩。留着他施放治疗波时使用大地震击。夺走他的头颅
    .complete 826,3 --Zalazane's Head (1)
step << Rogue
    .goto Durotar,67.4,87.8
    >>杀死扎拉赞恩。留着凿击，等他施放治疗波时再使用。抢走他的头颅
    .complete 826,3 --Zalazane's Head (1)
step << !Rogue !Shaman
    .goto Durotar,67.4,87.8
    >>杀死扎拉赞恩。小心，因为他可以治愈（你可能需要治疗药水）。抢走他的头
    .complete 826,3 --Zalazane's Head (1)
step
    #label Trolls
.goto Durotar,67.4,87.8
    >>拾取地上的一个头骨
    .complete 808,1 --Minshina's Skull (1)
step
    #label Fur
>>杀死其余的巨魔。小心伏都教巨魔的治疗
    .complete 826,1 --被诅咒的巨魔 (8)
    .complete 826,2 --巫毒巨魔 (8)
step
>>获得剩余的虎皮
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .goto Durotar,64.7,88.5,30,0
    .goto Durotar,65.2,80.8,30,0
    .goto Durotar,59.9,83.6,30,0
    .complete 817,1 --Durotar Tiger Fur (4)
step
     #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者跑回森金村
step
    >>从 Makrura 和 Crawlers 处获取剩余物品
        .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9,50,0
    .goto Durotar,59.7,71.7,50,0
    .goto Durotar,57.6,77.9
    .complete 818,1 --Intact Makrura Eye (4)
    .complete 818,2 --Crawler Mucus (8)
step << Mage
    >>进入帐篷
.goto Durotar,56.3,75.1
    .train 205 >>训练冰霜箭 r2
.train 118 >>训练变形术
step
    >>返回森金村。保存微光骷髅以供日后使用
.goto Durotar,55.9,74.7
.target Master Gadrin
>>对话: |cRXP_FRIENDLY_加德林大师|r
    .turnin 808 >>交任务: |cRXP_FRIENDLY_明希纳的颅骨|r
    .turnin 826,1 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << Warrior
    turnin 826 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r << !Warrior
step
    >>与沃纳尔大师、维尔林和拉尔·普罗塔斯克交谈
.target Master Vornal
>>对话: |cRXP_FRIENDLY_沃纳尔大师|r
    .turnin 818 >>交任务: |cRXP_FRIENDLY_沃纳尔大师|r
    .goto Durotar,56.0,74.3
.target Vel'rin Fang
>>对话: |cRXP_FRIENDLY_维尔林·长牙|r
    .turnin 817 >>交任务: |cRXP_FRIENDLY_生活所需的虎皮|r
    .goto Durotar,56.0,73.9
    .unitscan Lar Prowltusk
.target Lar Prowltusk
>>对话: |cRXP_FRIENDLY_拉尔·猎齿|r
    .turnin 786 >>交任务: |cRXP_FRIENDLY_科卡尔半人马的进攻|r
    .goto Durotar,54.3,73.3
step
    #completewith next
    .goto Durotar,48.9,48.5
    .hs >>回到剃刀岭
step
    .goto Durotar,48.9,48.5
    >>杀死该区域的野猪人和斥候
    .complete 837,1 --钢鬃野猪人 (4)
    .complete 837,2 --钢鬃斥候 (4)
step
    .goto Durotar,43.8,39.1
    >>杀死该区域的 Dustrunners 和 Battleguards。Dustrunners 拥有 Rejuvenation（治疗）技能，而 Battleguards 则很厉害
    .complete 837,3 --钢鬃尘行者 (4)
    .complete 837,4 --钢鬃战斗卫士 (4)
step
    .goto Durotar,43.8,39.1
    .xp 9+5175 >>升级至 4550+/6500xp
step
    .goto Durotar,51.9,43.5
    >>前往掩体
.target Gar'Thok
>>对话: |cRXP_FRIENDLY_加索克|r
    .turnin 784 >>交任务: |cRXP_FRIENDLY_背信弃义的人类|r
    .turnin 830 >>交任务: |cRXP_FRIENDLY_将军的命令|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
step << Hunter
    .xp <10,1
    .goto Durotar,51.8,43.5
.target Thotar
>>对话: |cRXP_FRIENDLY_索塔尔|r
    .accept 6062 >>接任务: |cRXP_LOOT_驯服野兽|r
    .train 13165 >>训练鹰之守护
    .train 13549 >>蟠蛇钉刺 r2
step << Warlock/Shaman/Warrior/Hunter
    #xprate >1.499
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>对话: |cRXP_FRIENDLY_加索克|r
.accept 831 >>接任务: |cRXP_LOOT_将军的命令|r
step
    >>与厨师托尔卡交谈
    .goto Durotar,51.1,42.4
.target Cook Torka
>>对话: |cRXP_FRIENDLY_厨师托尔卡|r
        .turnin 815 >>交任务: |cRXP_FRIENDLY_恐龙蛋大餐|r
step << Hunter
    .isOnQuest 6062
    .use 15917 >>将包里的驯兽棒对准野猪。尽量在最大范围内（30 码）进行操作
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
step << !Shaman !Warrior
    .abandon 806 >>抛弃黑暗风暴
step
    .goto Durotar,43.8,39.1
    .xp 10 >>升级至 10
step << Paladin
    #sticky
    #completewith next
    +如果你害怕永歌森林的竞争，那么现在手动选择 10-13 杜隆塔尔->13-23 贫瘠之地
step << Shaman
    .goto Durotar,54.4,42.5
.target Swart
>>对话: |cRXP_FRIENDLY_斯瓦特|r
    .accept 2983 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .train 8075 >>训练大地之力图腾
    .train 8050 >>列车火焰冲击
step << Priest
    .goto Durotar,54.3,42.9
    .train 2053 >>训练次级治疗 r3
    .train 8092 >>训练心灵爆破
.train 594 >>训练 暗言术：痛 r2
step << Orc Warrior/Troll Warrior/Undead Warrior
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>对话: |cRXP_FRIENDLY_克朗·石蹄|r
-->>对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
-->>对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
    .train 2687 >>训练血怒
    .train 6546 >>火车 Rend r2
step << Rogue
    .goto Durotar,52.0,43.7
    .train 2983 >>火车冲刺
    .train 674 >>训练双持
    .train 6770 >>火车萨普
    .train 1784 >>秘密训练
step << Rogue
    .goto Durotar,56.5,73.1
    .money <0.0382
    .vendor >>购买另一把 Stiletto 并装备它
step << Warrior/Rogue/Paladin
.goto Durotar,54.2,41.9
    .money <0.0095
    .train 3273 >>训练急救
step << Warlock
    .goto Durotar,54.4,41.2
.target Ophek
>>对话: |cRXP_FRIENDLY_奥菲克|r
    .accept 1506 >>接任务: |cRXP_LOOT_甘鲁尔的召唤|r
step << Warlock
    .goto Durotar,54.4,41.2
    .train 1120 >>训练吸取灵魂
    .train 6201 >>训练创造健康石
    .train 696 >>训练恶魔皮肤r2
    .train 707 >>训练献祭 r2
step << Hunter
    .goto Durotar,51.8,43.5
.target Thotar
>>对话: |cRXP_FRIENDLY_索塔尔|r
    .accept 6062 >>接任务: |cRXP_LOOT_驯服野兽|r
    .train 13165 >>训练鹰之守护
    .train 13549 >>蟠蛇钉刺 r2
step << Hunter
    .goto Durotar,53.0,41.0
    .vendor >>销售并储备 10 级箭
step << Hunter
    .use 15917 >>将包里的驯兽棒对准野猪。尽量在最大范围内（30 码）进行操作
.goto Durotar,51.5,50.0
.complete 6062,1 --Tame a Dire Mottled Boar
    .unitscan Dire Mottled Boar
step << Hunter
    .goto Durotar,51.8,43.5
>>对话: |cRXP_FRIENDLY_索塔尔|r
.turnin 6062 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Thotar
.accept 6083 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
    .use 15919 >>不要杀死你看到的装甲蝎，因为你接下来需要驯服一只。向北前往海滩并驯服一只冲浪爬行者。
.goto Durotar,59.3,27.6
.complete 6083,1 --Tame a 冲浪爬行者
    .unitscan 冲浪爬行者
step << Hunter
    >>返回剃刀岭
    .goto Durotar,51.8,43.5
>>对话: |cRXP_FRIENDLY_索塔尔|r
.turnin 6083 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Thotar
.accept 6082 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
    .use 15920 >>将包里的驯兽棒点击在蝎子身上。尽量在最大范围内（30 码）进行操作
    .goto Durotar,59.3,27.6
    .complete 6082,1 --Tame an Armored Scorpid
    .unitscan Armored Scorpid
step << Hunter
    >>返回托塔尔
    .goto Durotar,51.8,43.5
>>对话: |cRXP_FRIENDLY_索塔尔|r
    .turnin 6082 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Thotar
    .accept 6081 >>接任务: |cRXP_LOOT_训练野兽|r
step << Hunter
    >>沿着路往北走，和 Rezlak 交谈
    .goto Durotar,46.4,22.9
.target Rezlak
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_LOOT_沙漠之风|r
step << Warlock/Hunter
    .goto Orgrimmar,49.0,94.2,20 >>冲进奥格瑞玛
step << Hunter
    >>前往荣誉谷与 Ormak Grimshot 交谈
    .goto Orgrimmar,66.046,18.526
.target Ormak Grimshot
>>对话: |cRXP_FRIENDLY_奥玛克|r
    .turnin 6081 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << Hunter tbc
    >>在你的栏上放上“野兽训练”。记得稍后教你的宠物技能
.goto Orgrimmar,66.3,14.8
    .train 4195 >>锻炼耐力
    .train 24547 >>训练天然护甲
step << Warlock
.goto Orgrimmar,48.246,45.281
>>对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
.turnin 1506 >>交任务: |cRXP_FRIENDLY_甘鲁尔的召唤|r
.target Gan'rul Bloodeye
.accept 1501 >>接任务: |cRXP_LOOT_虚空中的生物|r
step << Warlock/Hunter
    .goto Orgrimmar,34.340,36.328
.target Vol'jin
>>对话: |cRXP_FRIENDLY_沃金|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
step << Warlock
.goto Orgrimmar,31.62,37.82
.target Thrall
>>对话: |cRXP_FRIENDLY_萨尔|r
.accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
step << Warlock
    #sticky
    #completewith next
.goto Orgrimmar,36.0,37.7
>>点掉恶魔皮肤增益。跑到火盆上，使用生命分流来死亡。在奥格瑞玛外重生
step << Warlock/Hunter
.goto Orgrimmar,49.0,94.2,275 >>前往: |cRXP_PICK_杜隆塔尔|r
step << Warlock
.goto Durotar,55.0,9.7,25 >>进入骷髅岩
step << Warlock
    #sticky
    #label Collars
>>杀死火刃氏族怪物直到中尉徽章掉落
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Warlock
    #sticky
    #label Eye
    #completewith Skull
    .use 4945 >>或者，您可以杀死 Gazz'uz（14 级术士）以获取任务物品。务必使用您之前的骷髅、任何您拥有的药水或粘胶粘住虚空行者。您可以 LoS（视线）Gazz'uz 来避开他的暗影箭，并恐惧他的宠物。如果您无法杀死他，请尝试潜行过去，或者在水中死亡并重生。
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cRXP_LOOT_燃影之眼|r
    .unitscan Gazz'uz
step << Warlock
    .goto Durotar,53.6,8.5,10,0
    .goto Durotar,51.8,8.1,10,0
    .goto Durotar,51.6,9.8
    >>进入洞穴的右侧路径。继续沿着洞穴前进，然后在洞穴尽头抢劫宝箱
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #label Skull
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者逃往奥格瑞玛
step << Warlock
.goto Orgrimmar,49.0,94.2,20 >>冲进奥格瑞玛
step << Warlock
.goto Orgrimmar,31.62,37.82
>>对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
.target Thrall
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r
step << Warlock
    .goto Orgrimmar,48.246,45.281
>>对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1501 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
.target Gan'rul Bloodeye
    .accept 1504 >>接任务: |cRXP_LOOT_誓缚|r
step << Warlock
    .isOnQuest 832
.goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 832 >>交任务: |cRXP_FRIENDLY_燃影之眼|r
step << Warlock
    >>与 Neeru 交谈并完成他的八卦选项
.goto Orgrimmar,49.473,50.589
    .skipgossip
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade (1)
step << Warlock
    .goto Orgrimmar,49.5,50.0
    .use 7464>>使用召唤符文召唤虚空行者。杀死它
    .complete 1504,1 --Summoned Voidwalker (1)
step << Warlock
    >>你现在可以召唤虚空行者
.goto Orgrimmar,48.246,45.281
.target Gan'rul Bloodeye
>>对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
    .turnin 1504 >>交任务: |cRXP_FRIENDLY_誓缚|r
step << Warlock
.goto Orgrimmar,31.62,37.82
.target Thrall
>>对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5727 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
step << Warlock
    #sticky
    #completewith next
    .goto Orgrimmar,36.0,37.7
    >>点掉恶魔皮肤增益。跑到火盆上，使用生命分流来死亡。在奥格瑞玛外重生
step << Warlock
    .goto Orgrimmar,49.0,94.2,275 >>前往: |cRXP_PICK_杜隆塔尔|r
step << !Shaman !Warrior !Warlock !Hunter
    .goto Durotar,46.4,22.9
.target Rezlak
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_LOOT_沙漠之风|r
step << !Shaman !Warrior !Warlock
    >>抢走地上的小袋子
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >>返回雷兹拉克
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
.target Rezlak
    .accept 835 >>接任务: |cRXP_LOOT_保卫商路|r
step << !Shaman !Warrior !Warlock
    .goto Durotar,51.9,27.4,20 >>穿过这里的洞穴
step << !Shaman !Warrior !Warlock
    >>杀死该区域内的哈皮斯
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .complete 835,1 --尘风野蛮人 (12)
    .complete 835,2 --尘风风暴女巫 (8)
step << !Shaman !Warrior !Warlock
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者跑回雷兹拉克
step << !Shaman !Warrior !Warlock
    .goto Durotar,46.4,22.9
    >>返回雷兹拉克
.target Rezlak
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835,2 >>交任务: |cRXP_FRIENDLY_保卫商路|r << Hunter
    .turnin 835 >>交任务: |cRXP_FRIENDLY_保卫商路|r << !Hunter
step << Hunter tbc
    .goto Durotar,57.2,12.0
    .tame 3108 >>驯服一只外壳坚硬的海浪爬行者 (它们的爪子等级为 3)
step << !Shaman !Warrior
    #sticky
    #completewith next
+前往齐柏林塔。乘坐齐柏林飞艇前往幽暗城
    .goto Durotar,50.8,13.8
step << !Shaman !Warrior
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step << !Shaman !Warrior
.goto Undercity,66.2,1.1,18 >>前往幽暗城
step << !Shaman !Warrior
.goto Undercity,62.0,11.3,18 >>从这里上楼梯
step << !Shaman !Warrior
    .goto Undercity,54.63,11.28
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .zoneskip Eversong Woods
step << Paladin
    #completewith next
    .goto Silvermoon City,91.2,36.9
    .trainer >>去训练你的职业法术
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde
#name 10-13 杜隆塔尔
#version 1
#group RestedXP 部落 1-30
#defaultfor Warrior !Tauren/Shaman !Tauren
#next 13-22 贫瘠之地
step
    .goto Durotar,50.8,43.6
.target Takrin Pathseeker
>>对话: |cRXP_FRIENDLY_塔克林·寻路者|r
    .accept 840 >>接任务: |cRXP_LOOT_部落的新兵|r
step << Undead Warrior
    >>登上塔
.goto Durotar,49.9,40.3
.target Furl Scornbrow
>>对话: |cRXP_FRIENDLY_弗恩·凝眉|r
    .accept 791 >>接任务: |cRXP_LOOT_新的背包|r
step << Undead Warrior
    .goto Durotar,52.0,40.7
    .money <0.0020
    .train 2020 >>训练锻造技能。锻造技能可以让你制造磨刀石（+2 武器伤害，持续 1 小时）。如果你愿意，你可以跳过锻造和采矿
    .skill blacksmithing,1,1
step << Undead Warrior
    .goto Durotar,51.8,40.9
    .money <0.0010
    .train 2580 >>火车采矿。
    .cast 2580 >>在你的法术书中施展“寻找矿物”
step << Undead Warrior
    .goto Durotar,53.0,42.0
    .money <0.0077
.collect 2901,1 >>购买采矿镐。留意矿脉，用锻造技术为你的武器制作磨刀石
step << Undead Warrior
    .goto Durotar,54.190,42.468
.target Sorek
.target Tarshaw Jaggedscar
.target Krang Stonehoof
>>对话: |cRXP_FRIENDLY_克朗·石蹄|r
-->>对话: |cRXP_FRIENDLY_塔绍尔·锯痕|r
-->>对话: |cRXP_FRIENDLY_索瑞克|r
    .accept 1505 >>接任务: |cRXP_LOOT_老兵犹塞克|r
step << Undead Warrior
>>掩体内部，顶层
.goto Durotar,51.9,43.5
.target Gar'Thok
>>对话: |cRXP_FRIENDLY_加索克|r
.accept 784 >>接任务: |cRXP_LOOT_背信弃义的人类|r
step << Undead Warrior
    #sticky
    #label KulTiras
>>杀死库尔提拉斯怪物。掠夺他们的碎片
    .complete 784,1 --库尔提拉斯水手 (10)
    .complete 784,2 --库尔提拉斯海军陆战队 (8)
    .complete 791,1 --Canvas Scraps (8)
step << Undead Warrior
.goto Durotar,59.2,58.3,15 >>进入城堡
step << Undead Warrior
    .goto Durotar,59.7,58.3
    >>前往要塞顶层。杀死本尼迪克特中尉并夺取他的钥匙 - 小心他使用盾牌猛击（打断）
.complete 784,3 --Lieutenant Benedict (1)
.collect 4882,1 --Collect Benedict's Key (1)
step << Undead Warrior
.goto Durotar,59.8,57.8,8 >>从这里上楼梯
step << Undead Warrior
.goto Durotar,59.9,57.5,8 >>从这里上楼梯
step << Undead Warrior
>>抢劫宝箱。接受物品中的任务
.goto Durotar,59.3,57.6
.collect 4881,1,830 --Collect Aged Envelope (1)
.accept 830 >>接任务: |cRXP_LOOT_将军的命令|r
step << Undead Warrior
    >>跑到森金那里
.goto Durotar,55.9,74.7
.target Master Gadrin
>>对话: |cRXP_FRIENDLY_加德林大师|r
    .accept 808 >>接任务: |cRXP_LOOT_明希纳的颅骨|r
    .accept 826 >>接任务: |cRXP_LOOT_扎拉赞恩|r
    .accept 823 >>接任务: |cRXP_LOOT_向奥戈尼尔报告|r
step << Undead Warrior
    .goto Durotar,67.3,87.1,350 >>游到岛上
step << Undead Warrior
    #sticky
    #completewith Trolls
    >>杀死该区域的巨魔。小心伏都教巨魔的治疗
    .complete 826,1 --被诅咒的巨魔 (8)
    .complete 826,2 --巫毒巨魔 (8)
step << Undead Warrior
    .goto Durotar,67.4,87.8
    >>杀死扎拉赞恩。小心，因为他可以治愈（你可能需要治疗药水）。抢走他的头
    .complete 826,3 --Zalazane's Head (1)
step << Undead Warrior
    #label Trolls
.goto Durotar,67.4,87.8
    >>拾取地上的一个头骨
    .complete 808,1 --Minshina's Skull (1)
step << Undead Warrior
>>杀死其余的巨魔。小心伏都教巨魔的治疗
    .complete 826,1 --被诅咒的巨魔 (8)
    .complete 826,2 --巫毒巨魔 (8)
step << Undead Warrior
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者跑回森金村
step << Undead Warrior
    >>保存微弱发光的头骨以供日后使用
.goto Durotar,55.9,74.7
.target Master Gadrin
>>对话: |cRXP_FRIENDLY_加德林大师|r
    .turnin 808 >>交任务: |cRXP_FRIENDLY_明希纳的颅骨|r
    .turnin 826 >>交任务: |cRXP_FRIENDLY_扎拉赞恩|r
step << Undead Warrior
    >>跑回剃刀岭
    .goto Durotar,52.24,43.15
>>对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 823 >>交任务: |cRXP_FRIENDLY_向奥戈尼尔报告|r
.target Orgnil Soulscar
    .accept 806 >>接任务: |cRXP_LOOT_黑暗风暴|r
step
    #xprate >1.499
    .goto Durotar,48.9,48.5
    >>杀死该区域的野猪人和斥候
    .complete 837,1 --钢鬃野猪人 (4)
    .complete 837,2 --钢鬃斥候 (4)
step
    #xprate >1.499
    .goto Durotar,43.8,39.1
    >>杀死该区域的 Dustrunners 和 Battleguards。Dustrunners 拥有 Rejuvenation（治疗）技能，而 Battleguards 则很厉害
    .complete 837,3 --钢鬃尘行者 (4)
    .complete 837,4 --钢鬃战斗卫士 (4)
step
    .goto The Barrens,62.2,19.4
>>对话: |cRXP_FRIENDLY_卡加尔·战痕|r
    .turnin 840 >>交任务: |cRXP_FRIENDLY_部落的新兵|r
.target Kargal Battlescar
    .accept 842 >>接任务: |cRXP_LOOT_十字路口征兵|r
step
    .goto The Barrens,62.2,19.4
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step << Warrior
    .goto The Barrens,61.4,21.1
>>对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1505 >>交任务: |cRXP_FRIENDLY_老兵犹塞克|r
.target Uzzek
    .accept 1498 >>接任务: |cRXP_LOOT_防御之道|r
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.8,20.0
>>对话: |cRXP_FRIENDLY_卡纳尔·菲斯|r
    .turnin 2983 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Kranal Fiss
    .accept 1524 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.0,30.5,150 >>跑到十字路口
step << Orc/Troll
#xprate <1.5
    .goto The Barrens,52.5,29.8
.target Zargh
>>对话: |cRXP_FRIENDLY_扎尔夫|r
    .accept 6365 >>接任务: |cRXP_LOOT_送往奥格瑞玛的肉|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.0
>>对话: |cRXP_FRIENDLY_瑟格拉·黑棘|r
    .turnin 842 >>交任务: |cRXP_FRIENDLY_十字路口征兵|r
.target Sergra Darkthorn
    .accept 844 >>接任务: |cRXP_LOOT_平原陆行鸟的威胁|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .accept 870 >>接任务: |cRXP_LOOT_遗忘之池|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.9,30.3
.target Gazrog
>>对话: |cRXP_FRIENDLY_加兹罗格|r
    .accept 869 >>接任务: |cRXP_LOOT_偷钱的迅猛龙|r
step << !Tauren
#xprate <1.5
    #completewith next
    .goto The Barrens,52.3,32.0
    .vendor >>根据需要购买 6 格包
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.8
.target Thork
>>对话: |cRXP_FRIENDLY_索克|r
    .accept 871 >>接任务: |cRXP_LOOT_野猪人的袭击|r
    .accept 5041 >>接任务: |cRXP_LOOT_十字路口的补给品|r
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.4
    .fp >>获取十字路口飞行路线
step << Orc/Troll
#xprate <1.5
    >>不要飞往奥格瑞玛
.goto The Barrens,51.5,30.3
>>对话: |cRXP_FRIENDLY_迪弗拉克|r
    .turnin 6365 >>交任务: |cRXP_FRIENDLY_送往奥格瑞玛的肉|r
.target Devrak
    .accept 6384 >>接任务: |cRXP_LOOT_飞往奥格瑞玛|r
step << !Tauren
#xprate <1.5
.goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .accept 1492 >>接任务: |cRXP_LOOT_码头管理员迪兹维格|r
        .accept 848 >>接任务: |cRXP_LOOT_菌类孢子|r
step << !Tauren
#xprate <1.5
    #sticky
    #completewith next
    >>收集被遗忘之池周围的白色蘑菇。尽量避免遇到怪物。
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
#xprate <1.5
>>潜入水下气泡裂缝处
.goto The Barrens,45.1,22.5
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
#xprate <1.5
>>收集被遗忘之池周围的白色蘑菇。尽量避免遇到怪物。
.goto The Barrens,45.2,23.3,40,0
.goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
.complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren tbc
#xprate <1.5
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或跑回十字路口
step << !Tauren
#xprate <1.5
    .goto The Barrens,51.5,30.1
    >>与 Helbrim 交谈。药剂师 Zamah 是一个限时任务，如果您在交任务前必须离开，请注销。
>>对话: |cRXP_FRIENDLY_药剂师赫布瑞姆|r
    .turnin 848 >>交任务: |cRXP_FRIENDLY_菌类孢子|r
.target Apothecary Helbrim
    .accept 853 >>接任务: |cRXP_LOOT_药剂师扎玛|r
    .timer 2700,Timer to reach Thunder Bluff
step << !Tauren
#xprate <1.5
    #completewith CampTaurajoFP
 +药剂师扎玛 (Apothecary Zamah) 是一个限时任务，如果您在交任务之前的任何时候必须离开，请注销。
step << !Tauren
#xprate <1.5
    .goto The Barrens,52.2,31.8
>>对话: |cRXP_FRIENDLY_图加·符文图腾|r
    .turnin 870 >>交任务: |cRXP_FRIENDLY_遗忘之池|r
.target Tonga Runetotem
    .accept 877 >>接任务: |cRXP_LOOT_死水绿洲|r
step << !Tauren
    #label CampTaurajoFP
#xprate <1.5
    >>沿着道路奔跑
.goto The Barrens,44.4,59.2
    .fp Camp Taurajo >>获取陶拉祖营地飞行路线
--X add the actual flight path name to each .fp command. MAKE SURE to check it on the flight map itself as it may differ from the name of the subzone
step << !Tauren
#xprate <1.5
    .line Mulgore,69.0,60.0,58.4,61.7,51.9,59.3
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    >>任务发布者沿着整条道路巡逻
    .unitscan Morin Cloudstalker
.target Morin Cloudstalker
>>对话: |cRXP_FRIENDLY_摩林·云行者|r
    .accept 749 >>接任务: |cRXP_LOOT_不幸的商队|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.2,53.4
.target Ahab Wheathoof
>>对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .accept 11129 >>接任务: |cRXP_LOOT_凯雷失踪了！|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,53.7,48.1
    >>穿过湖泊然后抢劫商队中间的箱子
    .turnin 749 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
    .accept 751 >>接任务: |cRXP_LOOT_不幸的商队|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,55.5,55.8
    >>杀死一只平原陆行鸟，获得嫩陆行鸟肉
    .collect 33009,1 --Collect Tender Strider Meat (1)
step << !Tauren
#xprate <1.5
    .line Mulgore,51.9,59.3,58.4,61.7,69.0,60.0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
    .goto Mulgore,51.4,59.2,50,0
    .goto Mulgore,59.6,62.4,50,0
        .goto Mulgore,51.4,59.2
    .unitscan Morin Cloudstalker
.target Morin Cloudstalker
>>对话: |cRXP_FRIENDLY_摩林·云行者|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_不幸的商队|r
step << !Tauren
#xprate <1.5
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009 >>找到狂暴凯尔。他在整个城镇中顺时针巡逻（所以逆时针走）。走到他面前，使用嫩鳐鱼肉
    .unitscan Kyle the Frenzied
.complete 11129,1 --Kyle Fed (1)
step << !Tauren
#xprate <1.5
    .goto Mulgore,48.3,53.3
.target Ahab Wheathoof
>>对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .turnin 11129 >>交任务: |cRXP_FRIENDLY_凯雷失踪了！|r
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,32.0,66.9,20 >>跑到电梯处，乘电梯前往雷霆崖
step << !Tauren !Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 227 >>火车五线谱 << !Shaman wotlk
    .train 199 >>训练 2h Maces
step << Paladin
#xprate <1.5
    .goto Thunder Bluff,40.9,62.7
    .train 199 >>训练 2h Maces
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,45.6,52.0,15 >>登上塔
step << !Tauren
#xprate <1.5
    >>前往塔顶
.goto Thunder Bluff,46.8,49.9
    .fp >>获取雷霆崖飞行路线
step << !Tauren
#xprate <1.5
.goto Thunder Bluff,29.6,29.7,15 >>跳进洞穴
step << !Tauren
#xprate <1.5
    .goto Thunder Bluff,23.0,21.1
.target Apothecary Zamah
>>对话: |cRXP_FRIENDLY_药剂师扎玛|r
    .turnin 853 >>交任务: |cRXP_FRIENDLY_药剂师扎玛|r
step << !Tauren
#xprate <1.5
    #completewith next
    .hs >>炉石到剃刀岭
step
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>对话: |cRXP_FRIENDLY_米莎·托克伦|r
    .accept 816 >>接任务: |cRXP_LOOT_丢失的孩子|r
step
    .goto Durotar,46.4,22.9
.target Rezlak
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_LOOT_沙漠之风|r
step
    >>抢走地上的小袋子
.goto Durotar,51.7,27.7
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.4,22.9
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 834 >>交任务: |cRXP_FRIENDLY_沙漠之风|r
.target Rezlak
    .accept 835 >>接任务: |cRXP_LOOT_保卫商路|r
step << wotlk
    .goto Durotar,42.103,15.0161
.target Rhinag
>>对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
step << tbc
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_这将启动任务的 45 分钟计时器。接下来的 5 分钟内请勿离开或退出|r
    >>对话: |cRXP_FRIENDLY_林纳格|r
    .accept 812 >>接任务: |cRXP_LOOT_救命如救火|r
    .target Rhinag
step
.goto Orgrimmar,49.0,94.2,20 >>冲进奥格瑞玛
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,54.2,68.6
>>对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
    .turnin 6384 >>交任务: |cRXP_FRIENDLY_飞往奥格瑞玛|r
.target Innkeeper Gryshka
    .accept 6385 >>接任务: |cRXP_LOOT_双足飞龙管理员多拉斯|r
step << Orc/Troll
#xprate <1.5
    .goto Orgrimmar,45.120,63.889
     >>交任务但不要飞回十字路口
>>对话: |cRXP_FRIENDLY_多拉斯|r
    .turnin 6385 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员多拉斯|r
.target Doras
    .accept 6386 >>接任务: |cRXP_LOOT_返回十字路口|r
step << Orc/Troll
    .goto Orgrimmar,34.340,36.328
    >>从航道塔穿过桥梁
.target Vol'jin
>>对话: |cRXP_FRIENDLY_沃金|r
    .turnin 831 >>交任务: |cRXP_FRIENDLY_将军的命令|r
step
    .goto Orgrimmar,31.62,37.82
.target Thrall
>>对话: |cRXP_FRIENDLY_萨尔|r
    .accept 5726 >>接任务: |cRXP_LOOT_隐藏的敌人|r
step << Paladin
    .goto Orgrimmar,32.272,35.794
    .trainer >>去训练你的职业法术
step
    .goto Orgrimmar,47.24,53.58
    >>进入阴影裂隙
.target Kor'ghan
>>对话: |cRXP_FRIENDLY_考格汉|r
    .accept 813 >>接任务: |cRXP_LOOT_寻找解毒剂|r
step
    #completewith Fizzle
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
	.xp >11,1
--/dump C_Map.GetBestMapForUnit("player")
step
    #completewith Fizzle
    .deathskip >>在灵魂治疗师处死亡并重生
	.xp >11,1
--If player is 10 or lower
step
    #completewith next
    .goto Orgrimmar,49.0,94.2
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
	.xp <11,1
--If player is 11 or higher
step
    #label Fizzle
    >>杀死 Fizzle 并抢走他的爪子。尽量清除周围营地的怪物以腾出空间
    .goto Durotar,41.9,26.0
    .complete 806,1 --Fizzle's Claw (1)
step << !Warrior
    #completewith next
.goto Durotar,39.2,32.3,30 >>离开雷霆岭
step << Warrior
    .goto Durotar,39.2,32.3
    >>杀死闪电皮，获得烧焦的鳞片。同时按照箭头指向出口的方向操作。
    .complete 1498,1 --Singed Scale (5)
step << Warrior
    .isQuestComplete 1498
    #sticky
    #completewith next
.goto Durotar,39.2,32.3,30 >>离开雷霆岭
step
    #completewith kronsamu
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #label kronsamu
>>开始杀死鳄鱼以获取护身符
    >>向南走的时候杀了他们。我们接下来要执行你的图腾任务 << Troll Shaman/Orc Shaman
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8,60,0
    .goto Durotar,35.2,27.5,60,0
    .goto Durotar,35.7,57.8
    .complete 816,1 --Kron's Amulet (1)
step << Troll Shaman/Orc Shaman
    #completewith shamancallfire
    .complete 813,1 --Venomtail Poison Sac (4)
step << Troll Shaman/Orc Shaman
    #label shamancallfire
.goto Durotar,36.6,58.0,15 >>沿着山路跑
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.6,59.0
>>对话: |cRXP_FRIENDLY_泰尔夫·祖拉姆|r
    .turnin 1524 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Telf Joolam
    .accept 1525 >>接任务: |cRXP_LOOT_火焰的召唤|r
step
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者跑回剃刀岭
step
.goto Durotar,52.24,43.15
>>对话: |cRXP_FRIENDLY_奥戈尼尔·魂痕|r
    .turnin 806 >>交任务: |cRXP_FRIENDLY_黑暗风暴|r
.target Orgnil Soulscar
    .accept 828 >>接任务: |cRXP_LOOT_玛高兹|r
step << Shaman
    #sticky
    #completewith next
    #level 12
    .trainer >>如果你要和其他人一起玩，请训练祖先之灵
step << Shaman
    #level 12
    .goto Durotar,54.3,42.4
    .train 547 >>训练治疗波 r3
    .train 1535 >>火车火新星图腾
step << Warrior
    #level 12
    .goto Durotar,54.3,42.4
    .train 5242 >>列车战斗呐喊 r2
    .train 7384 >>火车压制
step << !Warrior
    .goto Durotar,54.4,42.2
.vendor >>从 Jark 购买 6 格包，直到无法装备新包为止
step
    #xprate >1.499
    .goto Durotar,51.9,43.5
.target Gar'Thok
>>对话: |cRXP_FRIENDLY_加索克|r
    .turnin 837 >>交任务: |cRXP_FRIENDLY_野猪人的进犯|r
step
    >>离开剃刀岭向东走，然后一直向北走
    .goto Durotar,55.6,36.6,80,0
    .goto Durotar,56.4,20.1
>>对话: |cRXP_FRIENDLY_玛高兹|r
    .turnin 828 >>交任务: |cRXP_FRIENDLY_玛高兹|r
.target Margoz
    .accept 827 >>接任务: |cRXP_LOOT_骷髅石|r
step
    #sticky
    #completewith next
    >>旅行时杀死蝎子以获取毒囊
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
    #sticky
    #label Collars2
   .goto Durotar,51.8,10.0
>>杀死骷髅岩中的火刃氏族怪物以获取灼热项圈，直到中尉徽章掉落
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
step << Orc Shaman/Troll Shaman/Orc Warrior/Troll Shaman/Troll Warrior
    .use 4945 >>杀死加兹乌兹，获得燃烧阴影之眼。他可能在洞穴的多个区域。使用之前保存的微弱发光的骷髅，在虚空行者身上涂上胶水以减少受到的伤害，使用治疗药水恢复健康。使用 LoS（视线）来避开他的暗影箭。如果这意味着杀死并抢劫加兹乌兹，不要害怕死亡
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cRXP_LOOT_燃影之眼|r
    .unitscan Gazz'uz
step << Tauren Shaman/Tauren Warrior/Undead Warrior/Paladin
    .use 4945 >>杀死加兹乌兹，获得燃烧阴影之眼。他可能在洞穴的多个区域。如果有治疗药水，请使用它们来恢复健康。使用 LoS（视线）来避开他的暗影箭。如果这意味着杀死并抢劫加兹乌兹，不要害怕死亡
.goto Durotar,51.8,10.0
.collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>接任务: |cRXP_LOOT_燃影之眼|r
    .unitscan Gazz'uz
step
    #requires Collars2
    #sticky
    #completewith harpingme
    >>旅行时杀死蝎子以获取毒囊
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step
.goto Durotar,56.4,20.1
>>对话: |cRXP_FRIENDLY_玛高兹|r
    .turnin 827 >>交任务: |cRXP_FRIENDLY_骷髅石|r
.target Margoz
    .accept 829 >>接任务: |cRXP_LOOT_尼尔鲁·火刃|r
step << Shaman
    .isOnQuest 1525
    .goto Durotar,56.3,28.0,60,0
    .goto Durotar,52.8,28.7,20 >>向南走，然后进入位于哈皮斯区域上方的洞穴
step << Shaman
    >>杀死火刃邪教徒，获得试剂袋
.goto Durotar,52.5,26.7
    .complete 1525,2 --Reagent Pouch (1)
step << Shaman
    .isOnQuest 1525
    .goto Durotar,52.8,28.7,20 >>离开洞穴
step
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    .goto Durotar,54.0,27.7,30,0
    .goto Durotar,51.3,23.5,30,0
    .goto Durotar,51.5,19.1,30,0
    >>杀死该区域内的哈皮斯
    .complete 835,1 --尘风野蛮人 (12)
    .complete 835,2 --尘风风暴女巫 (8)
step
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生，或者跑回雷兹拉克
step
    >>返回雷兹拉克
    .goto Durotar,46.4,22.9
.target Rezlak
>>对话: |cRXP_FRIENDLY_雷兹拉克|r
    .turnin 835 >>交任务: |cRXP_FRIENDLY_保卫商路|r
step
    >>杀死蝎子获取毒囊
    .goto Durotar,55.7,15.7
    .complete 813,1 --Venomtail Poison Sac (4)
step << Warrior/Rogue
	.goto Orgrimmar,81.2,19.0
	.collect 25873,1 >>从 Zendo'jian 购买一把锋利的飞刀
step
.goto Orgrimmar,31.62,37.82
>>对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 5726 >>交任务: |cRXP_FRIENDLY_隐藏的敌人|r
.target Thrall
    .accept 5727 >>接任务: |cRXP_LOOT_隐藏的敌人|r << Shaman
step
    .goto Orgrimmar,47.24,53.58
.target Kor'ghan
>>对话: |cRXP_FRIENDLY_考格汉|r
    .turnin 813 >>交任务: |cRXP_FRIENDLY_寻找解毒剂|r
step
    .goto Orgrimmar,49.473,50.589
>>对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 829 >>交任务: |cRXP_FRIENDLY_尼尔鲁·火刃|r
.target Neeru Fireblade
    .accept 809 >>接任务: |cRXP_LOOT_雅克塞罗斯|r
step
    .isOnQuest 832
    .goto Orgrimmar,49.473,50.589
.target Neeru Fireblade
>>对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
    .turnin 832 >>交任务: |cRXP_FRIENDLY_燃影之眼|r
step << Shaman
    .goto Orgrimmar,49.473,50.589
    >>与 Neeru Fireblade 交谈
    .complete 5727,1
    .skipgossip 3216,1
--If NPC has an active quest accept/turnin (available or unavailable) you must add NPCID,X (X being the TALK ONLY gossip, which is 1 99% of the time)
step
    #completewith LostBut
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>进入怒焰裂谷
step
    #completewith LostBut
    .deathskip >>在灵魂治疗师处死亡并重生
step << tbc
    .goto Durotar,41.6,18.7
    >>即使显示“缺少先决条件”，你仍然可以提交此任务
.target Rhinag
>>对话: |cRXP_FRIENDLY_林纳格|r
    .turnin 812 >>交任务: |cRXP_FRIENDLY_救命如救火|r
step << wotlk
    .goto Durotar,42.103,15.0161
    >>即使显示“缺少先决条件”，你仍然可以提交此任务
.target Rhinag
>>对话: |cRXP_FRIENDLY_林纳格|r
    .turnin 812 >>交任务: |cRXP_FRIENDLY_救命如救火|r
step
    #label LostBut
    .goto Durotar,43.1,30.3
.target Misha Tor'kren
>>对话: |cRXP_FRIENDLY_米莎·托克伦|r
    .turnin 816 >>交任务: |cRXP_FRIENDLY_丢失的孩子|r
step
    .goto The Barrens,62.3,20.1
>>对话: |cRXP_FRIENDLY_雅克塞罗斯|r
    .turnin 809 >>交任务: |cRXP_FRIENDLY_雅克塞罗斯|r
.target Ak'Zeloth
    .accept 924 >>接任务: |cRXP_LOOT_恶魔之种|r
step
    .goto The Barrens,62.3,20.0
    >>拾取 Ak'Zeloth 旁边的紫色石头。此物品有 30 分钟的计时器，所以一定要快
    .collect 4986,1
    .turnin 926 >>交任务: |cRXP_FRIENDLY_有瑕疵的能量石|r
step << Warrior
    .goto The Barrens,61.4,21.1
>>对话: |cRXP_FRIENDLY_犹塞克|r
    .turnin 1498 >>交任务: |cRXP_FRIENDLY_防御之道|r
.target Uzzek
    .accept 1502 >>接任务: |cRXP_LOOT_索恩格瑞姆·火眼|r
]])
