local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< BloodElf
#name 1-6 永歌森林
#version 1
#group RestedXP 部落 1-30
#defaultfor BloodElf
#next 6-10 永歌森林


step << !BloodElf
    #completewith next
    +|cRXP_WARN_您选择了一本针对血精灵的指南。我们不建议进行 1-6 区域，因为那里没有针对非血精灵的任务。您应该选择与您开始的相同的起始区域|r
step
    .goto Eversong Woods,38.2,20.8 << tbc
    .goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erona|r
    .accept 8325 >>接任务: |cRXP_LOOT_夺回逐日岛|r
    .target Magistrix Erona
--VV need to update waypoint for tbc
step << Warlock wotlk
    #completewith Reclaim
    +|cRXP_WARN_升级 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们，直到你有价值 75 铜的供应商物品。你也可以以 13 铜的价格出售你的装备|r << Warlock wotlk
    .money >0.0075
--VV other classes in other expansions should not need to go out of their way to grind for money
step
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r
    .complete 8325,1 --Kill Mana Wyrm (x8)
    .mob Mana Wyrm
--VV Vendorable item value command
step
    #label Reclaim
    .goto Eversong Woods,38.2,20.8 << tbc
	.goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erona|r
    .turnin 8325 >>交任务: |cRXP_FRIENDLY_夺回逐日岛|r
    .accept 8326 >>接任务: |cRXP_LOOT_令人遗憾的措施|r
    .accept 8328 >>接任务: |cRXP_LOOT_法师训练|r << Mage
    .accept 8563 >>接任务: |cRXP_LOOT_术士训练|r << Warlock
    .accept 8564 >>接任务: |cRXP_LOOT_牧师训练|r << Priest
    .accept 9392 >>接任务: |cRXP_LOOT_潜行者训练|r << Rogue
	.accept 9393 >>接任务: |cRXP_LOOT_猎人训练|r << Hunter
    .accept 9676 >>接任务: |cRXP_LOOT_圣骑士训练|r << Paladin
    .target Magistrix Erona
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[粗箭] |cRXP_BUY_直到你的|r |T134409:0|t[箭筒] |cRXP_BUY_已满|r << Hunter
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r << Warlock TBC/Mage TBC/Priest TBC
    .vendor >>供应商垃圾
    .collect 159,10,8336,1 << Priest TBC/Warlock TBC/Mage TBC --Collect Refreshing Spring Water (x10)
    .target Shara Sunwing
    .money >0.1 << WOTLK !Hunter/!Hunter !Priest !Warlock !Mage TBC
--VV skip vendoring if you have 10s (character likely has additional bags)
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia|r
    .turnin 8328 >>交任务: |cRXP_FRIENDLY_法师训练|r
    .accept 10068 >>接任务: |cRXP_LOOT_护井者索兰尼亚|r
    .train 1459 >>训练你的职业法术
    .target Julia Sunstriker
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8563 >>交任务: |cRXP_FRIENDLY_术士训练|r
    .accept 10073 >>接任务: |cRXP_LOOT_护井者索兰尼亚|r
    .accept 8344 >>接任务: |cRXP_WARN_[Windows to the Source]|r << tbc
    .train 688 >>训练你的职业法术
    .target Summoner Teli'Larien
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arena|r
    .turnin 8564 >>交任务: |cRXP_FRIENDLY_牧师训练|r
    .accept 10072 >>接任务: |cRXP_LOOT_护井者索兰尼亚|r
    .train 1243 >>训练你的职业法术
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avokor|r
    .turnin 9392 >>交任务: |cRXP_FRIENDLY_潜行者训练|r
    .accept 10071 >>接任务: |cRXP_LOOT_护井者索兰尼亚|r
    .target Pathstalker Avokor
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠萨琳娜|r
    .turnin 9393 >>交任务: |cRXP_FRIENDLY_猎人训练|r
    .accept 10070 >>接任务: |cRXP_LOOT_护井者索兰尼亚|r
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶泰尼斯·射日者|r
    .turnin 9676 >>交任务: |cRXP_FRIENDLY_圣骑士训练|r
    .accept 10069 >>接任务: |cRXP_LOOT_护井者索兰尼亚|r
    .target Jesthenis Sunstriker
step << Warlock wotlk
	#completewith Collars
	.cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step
    #completewith next
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>上楼去
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护井者索兰尼亚|r, |cRXP_FRIENDLY_奥术师伊塔纳斯|r, |cRXP_FRIENDLY_奥术师赫里恩|r
    .turnin 10068 >>交任务: |cRXP_FRIENDLY_护井者索兰尼亚|r << Mage
    .turnin 10069 >>交任务: |cRXP_FRIENDLY_护井者索兰尼亚|r << Paladin
    .turnin 10070 >>交任务: |cRXP_FRIENDLY_护井者索兰尼亚|r << Hunter
    .turnin 10071 >>交任务: |cRXP_FRIENDLY_护井者索兰尼亚|r << Rogue
    .turnin 10072 >>交任务: |cRXP_FRIENDLY_护井者索兰尼亚|r << Priest
    .turnin 10073 >>交任务: |cRXP_FRIENDLY_护井者索兰尼亚|r << Warlock
    .accept 8330 >>接任务: |cRXP_LOOT_索兰尼亚的物品|r
    .accept 8345 >>接任务: |cRXP_LOOT_达斯雷玛的神龛|r
    .goto Eversong Woods,38.76,19.36
    .accept 8336 >>接任务: |cRXP_LOOT_奥术薄片|r
    .goto Eversong Woods,38.27,19.13
    .accept 8346 >>接任务: |cRXP_LOOT_无尽的渴求|r
    .goto Eversong Woods,37.18,18.94
    .target Well Watcher Solanian
    .target 奥术师伊萨纳斯
    .target 奥术师赫利昂
step << Warlock tbc
    #completewith next
    >>施放 |T135738:0|t[法力挖掘] 并杀死 |cRXP_ENEMY_Mana Wyrms|r 和 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob 野性温柔
step << Warlock tbc
    #completewith next
    >>杀死 |cRXP_ENEMY_Springpaw Lynxes|r 和 |cRXP_ENEMY_Springpaw Cubs|r。掠夺它们的 |cRXP_LOOT_Collars|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step << Warlock tbc
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>跑上坡道
step << Warlock tbc
    #requires RunRamp
    #completewith next
    >>施放 |T135738:0|t[法力分流] 并杀死 |cRXP_ENEMY_Arcane Wraiths|r 和 |cRXP_ENEMY_Tainted Arcane Wraiths|r。掠夺 |cRXP_ENEMY_Arcane Wraiths|r 以获取其 |cRXP_LOOT_Essences|r 并掠夺两者以获取其 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock tbc
	#label ArcaneSliver
    .goto Eversong Woods,31.57,29.31,30,0
    .goto Eversong Woods,31.25,27.07,30,0
    .goto Eversong Woods,30.90,27.66,30,0
    .goto Eversong Woods,30.55,26.98,30,0
    .goto Eversong Woods,31.10,26.83
    >>杀死 |cRXP_ENEMY_Tainted Arcane Wraith|r。拾取其 |cRXP_LOOT_Essence|r 和 |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r]。
    >>|cRXP_WARN_使用 |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r] 开始任务|r
    .complete 8344,2 --Tainted Wraith Essence (1)
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>接任务: |cRXP_LOOT_被污染的奥术薄片|r
    .mob Tainted Arcane Wraith
    .use 20483
step << Warlock tbc
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52
    >>施放 |T135738:0|t[法力分流] 并杀死 |cRXP_ENEMY_Arcane Wraiths|r 和 |cRXP_ENEMY_Tainted Arcane Wraiths|r。掠夺 |cRXP_ENEMY_Arcane Wraiths|r 以获取其 |cRXP_LOOT_Essences|r 并掠夺两者以获取其 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock tbc
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52
    .xp 3+200 >>升级至 200+/1400xp
step << Warlock tbc
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师赫里恩|r, |cRXP_FRIENDLY_奥术师伊塔纳斯|r
    .turnin 8346 >>交任务: |cRXP_FRIENDLY_无尽的渴求|r
    .turnin 8338 >>交任务: |cRXP_FRIENDLY_被污染的奥术薄片|r
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>交任务: |cRXP_FRIENDLY_奥术薄片|r
    .goto Eversong Woods,38.27,19.13
    .target 奥术师赫利昂
    .target 奥术师伊萨纳斯
step << Warlock tbc
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r
    .vendor >>供应商垃圾
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << Warlock tbc
    .xp 4 >>升级至 4
--VV Needs to be changed to a properly calculated xp gate when TBC rolls back around
step << Warlock tbc
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8344 >>交任务: |cRXP_FRIENDLY_[Windows to the Source]|r
    .train 172 >>训练你的职业法术
    .target Summoner Teli'Larien
step << Warlock tbc
	#completewith Measures
	.cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[召唤小鬼]
step << Warlock tbc
    .goto Eversong Woods,38.86,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚斯米·泰利拉雷|r
    >>|cRXP_BUY_从她那里购买|r |T133738:0|t[血契魔典] |cRXP_BUY_|r
    .collect 16321,1,8327,1 --Grimoire of Blood Pact (1)
    .target Yasmine Teli'Larien
step << Warlock tbc
    #completewith Measures
	.cast 20397 >>使用你的 |T133738:0|t[血契魔典]
	.use 16321
step << wotlk
    #completewith RedOrb
    >>当处于 |cRXP_ENEMY_Mana Wyrm|r 的近战范围内时施放 |T136222:0|t[Arcane Torrent]
    .complete 8346,1 --Mana Tap creature (1)
step
    #label Collars
    >>杀死 |cRXP_ENEMY_Springpaw Lynxes|r 和 |cRXP_ENEMY_Springpaw Cubs|r。掠夺它们的 |cRXP_LOOT_Collars|r
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22,35,0
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22
    .complete 8326,1 --Collect Lynx Collar (x8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step
    #label Measures
    .goto Eversong Woods,38.2,20.8 << tbc
	.goto Eversong Woods,38.02,21.01 << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erona|r
    .turnin 8326 >>交任务: |cRXP_FRIENDLY_令人遗憾的措施|r
    .accept 8327 >>接任务: |cRXP_LOOT_向兰萨恩·派雷隆报到|r
    .target Magistrix Erona
step << !Warlock tbc
    #completewith Journal
    >>施放 |T135738:0|t[法力挖掘] 并杀死 |cRXP_ENEMY_Mana Wyrms|r 和 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob 野性温柔
step << wotlk
    #completewith Journal
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r 和 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob 野性温柔
step
    #label Report
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰萨恩·派雷隆|r
    .turnin 8327 >>交任务: |cRXP_FRIENDLY_向兰萨恩·派雷隆报到|r
    .accept 8334 >>接任务: |cRXP_LOOT_攻势|r
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>拾取地面上的 |cRXP_PICK_Journal|r
    .complete 8330,3 --Collect Solanian's Journal (x1)
step << wotlk/!Warlock tbc
    #completewith next
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r << wotlk
    >>施放 |T135738:0|t[法力挖掘] 并杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 << tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Tenders|r 和 |cRXP_ENEMY_野性温柔s|r << Warlock tbc
    >>杀死 |cRXP_ENEMY_Tenders|r 和 |cRXP_ENEMY_野性温柔s|r。掠夺 |cRXP_ENEMY_野性温柔s|r 以获取其 |cRXP_LOOT_Slivers|r << wotlk
    >>杀死 |cRXP_ENEMY_Tenders|r 和 |cRXP_ENEMY_野性温柔s|r。对 |cRXP_ENEMY_野性温柔s|r 施放 |T135738:0|t[法力分流]。掠夺 |cRXP_ENEMY_野性温柔s|r 以获取其 |cRXP_LOOT_Slivers|r << !Warlock tbc
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill 野性温柔 (x7)
    .complete 8336,1,1 << wotlk/!Warlock tbc --Collect Arcane Sliver (x6)
    .complete 8346,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Tender
    .mob 野性温柔
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>拾取平台上的 |cRXP_PICK_Scrying Orb|r
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step
#loop
	.line Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
	.goto Eversong Woods,33.92,26.49,40,0
    >>杀死 |cRXP_ENEMY_Tenders|r 和 |cRXP_ENEMY_野性温柔s|r << Warlock tbc
    >>杀死 |cRXP_ENEMY_Tenders|r 和 |cRXP_ENEMY_野性温柔s|r。掠夺 |cRXP_ENEMY_野性温柔s|r 以获取其 |cRXP_LOOT_Slivers|r << wotlk
    >>杀死 |cRXP_ENEMY_Tenders|r 和 |cRXP_ENEMY_野性温柔s|r。对 |cRXP_ENEMY_野性温柔s|r 施放 |T135738:0|t[法力分流]。掠夺 |cRXP_ENEMY_野性温柔s|r 以获取其 |cRXP_LOOT_Slivers|r << !Warlock tbc
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill 野性温柔 (x7)
    .complete 8336,1,1 << wotlk/!Warlock tbc --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
step << !Warlock tbc/wotlk
    #completewith next
    >>杀死 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r << wotlk
    >>施放 |T135738:0|t[法力分流] 并杀死 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob 野性温柔
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰萨恩·派雷隆|r
    .turnin 8334 >>交任务: |cRXP_FRIENDLY_攻势|r
    .accept 8335 >>接任务: |cRXP_LOOT_放逐者菲伦德雷|r
    .target Lanthan Perilon
step << !Warlock tbc
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r << wotlk
    >>施放 |T135738:0|t[法力挖掘] 并杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
step << !Warlock tbc
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    .xp 4-360 >>升级至 1740+/2100xp << !Warlock tbc
    .xp 4-610 >>升级至 1490+/2100xp << wotlk
step << !Warlock !Mage !Priest tbc
    #completewith next
    .vendor >>供应商垃圾
step << !Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师赫里恩|r, |cRXP_FRIENDLY_奥术师伊塔纳斯|r
    .turnin 8346 >>交任务: |cRXP_FRIENDLY_无尽的渴求|r
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>交任务: |cRXP_FRIENDLY_奥术薄片|r
    .goto Eversong Woods,38.27,19.13
    .target 奥术师赫利昂
    .target 奥术师伊萨纳斯
step << Mage tbc/Priest tbc
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_购买|r |T132794:0|t[清爽泉水] |cRXP_BUY_来自她|r
    .vendor >>供应商垃圾
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << !Mage tbc/!Priest tbc/!Warlock tbc/Paladin
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shara|r
    .vendor >>供应商垃圾
    .target Shara Sunwing
    .money >0.1 << !Mage tbc/!Priest tbc/!Warlock tbc/Paladin
step << Mage tbc
    .goto Eversong Woods,38.56,20.98,10,0 << wotlk
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia|r
    .train 116 >>训练你的职业法术
    .target Julia Sunstriker
step << skip
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teli'Larien|r
    .train 172 >>训练你的职业法术
    .target Summoner Teli'Larien
--Warlock WOTLK
step << Priest tbc
    .goto Eversong Woods,38.56,20.98,10,0 << wotlk
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arena|r
    .train 589 >>训练你的职业法术
    .target Matron Arena
step << Hunter tbc
    .goto Eversong Woods,38.56,20.98,10,0 << wotlk
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠萨琳娜|r
    .train 1978 >>训练你的职业法术
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶泰尼斯·射日者|r
    .train 20271 >>训练你的职业法术
    .target Jesthenis Sunstriker
--VV Training is all tbc, since the only class that really benefits from sacrificing an extra 400 yards of running to be able to kill 11+ 圣骑士是更快的怪物
step << wotlk
    #completewith Shrine
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r 和 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob 野性温柔
step << wotlk
    .goto Eversong Woods,34.05,18.96
    >>当处于 |cRXP_ENEMY_Mana Wyrm|r 的近战范围内时施放 |T136222:0|t[Arcane Torrent]
    .complete 8346,1 --Mana Tap creature (1)
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>点击 |cRXP_PICK_达斯雷玛神殿|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step << wotlk
    #completewith RunRamp
    >>杀死 |cRXP_ENEMY_野性温柔s|r。掠夺他们的 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob 野性温柔
step
    .goto Eversong Woods,31.33,22.74
    >>拾取地面上的 |cRXP_PICK_Scroll|r
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>跑上坡道
step << wotlk/!Warlock tbc
    #completewith Academy
    >>杀死 |cRXP_ENEMY_Tainted Arcane Wraith|r。拾取其 |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r]。
    >>|cRXP_WARN_使用 |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r] 开始任务|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>接任务: |cRXP_LOOT_被污染的奥术薄片|r
    .mob Tainted Arcane Wraith
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>前往学院时杀死 |cRXP_ENEMY_Arcane Wraiths|r 和 |cRXP_ENEMY_Tainted Arcane Wraiths|r。掠夺他们的 |cRXP_LOOT_Slivers|r << wotlk
    >>前往学院时杀死 |cRXP_ENEMY_Arcane Wraiths|r 和 |cRXP_ENEMY_Tainted Arcane Wraiths|r << tbc
    >>杀死顶部的 |cRXP_ENEMY_Felendren the Banished|r。搜刮他的 |cRXP_LOOT_Head|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8336,1 << wotlk--Collect Arcane Sliver (x6)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step << wotlk/!Warlock tbc
    .goto Eversong Woods,30.84,27.13
    >>杀死 |cRXP_ENEMY_Tainted Arcane Wraith|r。拾取其 |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r]。
    >>|cRXP_WARN_使用 |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r] 开始任务|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>接任务: |cRXP_LOOT_被污染的奥术薄片|r
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
step << wotlk
    #completewith next
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step << wotlk
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    >>当处于 |cRXP_ENEMY_Mana Wyrm|r 的近战范围内时施放 |T136222:0|t[Arcane Torrent]
    .complete 8346,1 --Mana Tap creature (1)
    .mob Mana Wyrm
step << wotlk
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59
    >>杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r << wotlk
    >>施放 |T135738:0|t[法力挖掘] 并杀死 |cRXP_ENEMY_Mana Wyrms|r。掠夺它们的 |cRXP_LOOT_Slivers|r << tbc
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1,1 << !Warlock tbc --Mana Tap creature (x6)
    .mob Mana Wyrm
step << wotlk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师赫里恩|r, |cRXP_FRIENDLY_奥术师伊塔纳斯|r
    .turnin 8346 >>交任务: |cRXP_FRIENDLY_无尽的渴求|r
    .turnin 8338 >>交任务: |cRXP_FRIENDLY_被污染的奥术薄片|r
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>交任务: |cRXP_FRIENDLY_奥术薄片|r
    .goto Eversong Woods,38.27,19.13
    .target 奥术师赫利昂
    .target 奥术师伊萨纳斯
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>上楼去
step
    #label SolanianB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护井者索兰尼亚|r, |cRXP_FRIENDLY_奥术师赫里恩|r << !Warlock tbc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护井者索兰尼亚|r << Warlock tbc/wotlk
    .turnin 8330 >>交任务: |cRXP_FRIENDLY_索兰尼亚的物品|r
    .turnin 8345 >>交任务: |cRXP_FRIENDLY_达斯雷玛的神龛|r
    .goto Eversong Woods,38.76,19.36
    .turnin 8338 >>交任务: |cRXP_FRIENDLY_被污染的奥术薄片|r << !Warlock tbc
    .goto Eversong Woods,37.18,18.94 << !Warlock tbc
    .target Well Watcher Solanian
    .target 奥术师赫利昂 << !Warlock tbc
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰萨恩·派雷隆|r
    .turnin 8335 >>交任务: |cRXP_FRIENDLY_放逐者菲伦德雷|r
    .accept 8347 >>接任务: |cRXP_LOOT_帮助信使|r
    .target Lanthan Perilon
step
#loop
	.line Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
	.goto Eversong Woods,33.92,26.49,40,0
    .xp 5+1800 >>升级至 1800+/2800xp
step
    #completewith next
    .goto Eversong Woods,38.91,30.27,30,0
    .goto Eversong Woods,40.41,32.21,30 >>过桥
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使奥拉莉恩|r
    .turnin 8347 >>交任务: |cRXP_FRIENDLY_帮助信使|r
    .accept 9704 >>接任务: |cRXP_LOOT_失心者的牺牲品|r
    .target Outrunner Alarion
step
    #xprate >1.4999
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Outrunner|r's corpse on the ground
    .turnin 9704 >>交任务: |cRXP_FRIENDLY_失心者的牺牲品|r
    .target Slain Outrunner
step
    #xprate <1.5
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Outrunner|r's corpse on the ground
    .turnin 9704 >>交任务: |cRXP_FRIENDLY_失心者的牺牲品|r
    .accept 9705 >>接任务: |cRXP_LOOT_找回包裹|r
    .target Slain Outrunner
step
    #xprate <1.5
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使奥拉莉恩|r
    .turnin 9705 >>交任务: |cRXP_FRIENDLY_找回包裹|r
    .accept 8350 >>接任务: |cRXP_LOOT_送信|r
    .target Outrunner Alarion
step
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2690 >>升级至 2690+/2800xp
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< BloodElf/Undead
#name 6-10 永歌森林
#version 1
#group RestedXP 部落 1-30
#next 10-12 永歌森林 << !Warrior
#next 10-13 杜隆塔尔 << Warrior

step
    .goto Eversong Woods,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >>接任务: |cRXP_LOOT_失效的傀儡|r
    .target Magister Jaronis
step
    #completewith FalconHS
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅馆
step << BloodElf
    #xprate <1.5
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    .turnin 8350 >>交任务: |cRXP_FRIENDLY_送信|r
    .home >>将你的炉石设定为鹰翼广场
    .target Innkeeper Delaniel
step << BloodElf
    #xprate >1.4999
    #label FalconHS
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    .home >>将你的炉石设定为鹰翼广场
    .target Innkeeper Delaniel
step << !BloodElf
    #label FalconHS
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    .home >>将你的炉石设定为鹰翼广场
    .target Innkeeper Delaniel
step << Priest/Mage/Warlock/Warrior tbc/Rogue tbc
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼去
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珀纳瑞斯|r, 他在楼上
    .accept 9489 >>接任务: |cRXP_LOOT_清理死亡之痕|r << BloodElf
    .train 591 >>训练你的职业法术
    .target Ponaris
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳黛尔|r, 他在楼上
    .train 143 >>训练你的职业法术
    .target Garridel
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 695 >>训练你的职业法术
    .target Celoenus
step << Warrior tbc/Rogue tbc
    .goto Eversong Woods,48.58,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡娜莉亚|r, 他在楼上
    .train 3273 >>列车 |T135966:0|t[急救]
    .target Kanaria
step << Mage/Warlock/Priest
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,5,8468,1 --Ice Cold Milk (5)
    .money <0.0119
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,47.86,47.76,8,0
    .goto Eversong Woods,47.79,47.35,8 >>出去
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Wanted Poster, |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .accept 8468 >>接任务: |cRXP_LOOT_通缉：饥饿者泰里斯|r
    .goto Eversong Woods,48.18,46.31
    .accept 8463 >>接任务: |cRXP_LOOT_不稳定的法力水晶|r
    .goto Eversong Woods,48.17,46.00
    .target Aeldon Sunbrand
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺尔蕾妮|r
    .train 639 >>训练你的职业法术
    .target Noellene
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔娜莉亚|r, 他在楼上
    .train 1757 >>训练你的职业法术
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉诺维亚|r
    .train 3044 >>训练你的职业法术
    .target Hannovia
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斗技者拉雷尼斯|r
    .train 201 >>训练 1h 剑 << Rogue
    .train 202 >>训练 2h 剑 << Undead Warrior tbc
    .target Duelist Larenis
    .money <0.11
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135321:0|t[Gladius] (5s 9c)。如果你的钱不够，可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135321:0|t[Gladius] |cRXP_BUY_|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (6s 66c)。如果你还没有足够的钱，你以后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (3s 82c)。如果你还没有足够的钱，你可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Paladin tbc/Rogue
    #completewith Thaelis
    +装备 |T135321:0|t[短剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    #completewith Thaelis
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Thaelis
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>拾取地面上的 |cRXP_PICK_不稳定的法力水晶盒|r
    >>杀死 |cRXP_ENEMY_Arcane Patrollers|r。掠夺他们的 |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>杀死 |cRXP_ENEMY_Thaelis the Hungerer|r。掠夺他以获取 |cRXP_LOOT_Thaelis's Head|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob Thaelis the Hungerer
step
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49
    >>拾取地面上的 |cRXP_PICK_不稳定的法力水晶盒|r
    >>杀死 |cRXP_ENEMY_Arcane Patrollers|r。掠夺他们的 |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Jarondis, |cRXP_FRIENDLY_坎雷中士|r, |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8472 >>交任务: |cRXP_FRIENDLY_失效的傀儡|r
    .accept 8895 >>接任务: |cRXP_LOOT_送往北部圣殿的信|r
    .goto Eversong Woods,47.26,46.31
    .turnin 8468 >>交任务: |cRXP_FRIENDLY_通缉：饥饿者泰里斯|r
    .goto Eversong Woods,47.77,46.58
    .turnin 8463 >>交任务: |cRXP_FRIENDLY_不稳定的法力水晶|r
    .accept 9352 >>接任务: |cRXP_LOOT_达纳苏斯的侵扰|r
    .goto Eversong Woods,48.17,46.00
    .target Magister Jaronis
    .target Sergeant Kan'ren
    .target Aeldon Sunbrand
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺尔蕾妮|r
    .train 853 >>训练你的职业法术
    .target Noellene
	.xp <8,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔娜莉亚|r, 他在楼上
    .train 6760 >>训练你的职业法术
    .target Tannaria
	.xp <8,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉诺维亚|r
    .train 5116 >>训练你的职业法术
    .target Hannovia
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅馆
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼去
	.xp <8,1
step << skip
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珀纳瑞斯|r, 他在楼上
    .train 139 >>训练你的职业法术
    .target Ponaris
	.xp <8,1
--VV Priest not needed. add Priest to other travel steps
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳黛尔|r, 他在楼上
    .train 5143 >>训练你的职业法术
    .target Garridel
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 980 >>训练你的职业法术
    .target Celoenus
	.xp <8,1
step << Warlock tbc
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戴丝特拉|r, 他在楼上
    >>|cRXP_BUY_从她那里购买|r |T133738:0|t[火箭魔典（等级 2）] |cRXP_BUY_|r
    .collect 16302,1,8476,1 --Grimoire of Firebolt Rank 2
    .target Daestra
	.xp <8,1
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斗技者拉雷尼斯|r
    .train 201 >>训练 1h 剑 << Rogue
    .train 202 >>训练 2h 剑 << Undead Warrior tbc
    .target Duelist Larenis
    .money <0.11
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135321:0|t[Gladius] (5s 9c)。如果你的钱不够，可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135321:0|t[Gladius] |cRXP_BUY_|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (6s 66c)。如果你还没有足够的钱，你以后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (3s 82c)。如果你还没有足够的钱，你可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Paladin tbc/Rogue
    #completewith Thaelis
    +装备 |T135321:0|t[短剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    #completewith Caidanis
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith BuyFood1
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅馆
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰牛奶] |cRXP_BUY_和|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #label BuyFood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰牛奶] |cRXP_BUY_和|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>前往卡伊达尼斯
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔网监护者凯丹尼斯|r
    .turnin 8895 >>交任务: |cRXP_FRIENDLY_送往北部圣殿的信|r
    .accept 9119 >>接任务: |cRXP_LOOT_西部圣殿的麻烦|r
    .target Ley-Keeper Caidanis
step
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒拉尔雷|r
    .accept 9035 >>接任务: |cRXP_LOOT_打探匪情|r
    .target Apprentice Ralen
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒梅雷多尔|r
    .turnin 9035 >>交任务: |cRXP_FRIENDLY_打探匪情|r
    .accept 9062 >>接任务: |cRXP_LOOT_浸水的书页|r
    .target Apprentice Meledor
step
    #xprate <1.5
    .goto Eversong Woods,44.34,62.00
    >>在水下掠夺 |cRXP_PICK_Grimoire|r
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒梅雷多尔|r
    .turnin 9062 >>交任务: |cRXP_FRIENDLY_浸水的书页|r
    .accept 9064 >>接任务: |cRXP_LOOT_学徒的欺瞒|r
    .target Apprentice Meledor
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒拉尔雷|r
    .accept 9035 >>接任务: |cRXP_LOOT_打探匪情|r
    .target Apprentice Ralen
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒梅雷多尔|r
    .turnin 9035 >>交任务: |cRXP_FRIENDLY_打探匪情|r
    .accept 9062 >>接任务: |cRXP_LOOT_浸水的书页|r
    .target Apprentice Meledor
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,44.34,62.00
    >>在水下掠夺 |cRXP_PICK_Grimoire|r
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step << !Warrior/Undead !Warlock/Undead !Hunter/Undead !Rogue/Undead
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒梅雷多尔|r
    .turnin 9062 >>交任务: |cRXP_FRIENDLY_浸水的书页|r
    .accept 9064 >>接任务: |cRXP_LOOT_学徒的欺瞒|r
    .target Apprentice Meledor
step << BloodElf Priest
    #completewith next
    >>|cRXP_WARN_对 |cRXP_FRIENDLY_Eversong Rangers 施放|r |T135987:0|t[真言术：韧]|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .accept 8475 >>接任务: |cRXP_LOOT_死亡之痕|r
    .target Ranger Jaela
step << BloodElf Priest
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .accept 8475 >>接任务: |cRXP_LOOT_死亡之痕|r
    .target Ranger Jaela
step << BloodElf Priest
    .goto Eversong Woods,50.19,50.88,-1
    .goto Eversong Woods,50.24,50.96,-1
    .goto Eversong Woods,50.29,51.02,-1
    .goto Eversong Woods,50.34,51.04,-1
    .goto Eversong Woods,50.41,51.00,-1
    .goto Eversong Woods,50.46,50.91,-1
    >>|cRXP_WARN_对 |cRXP_FRIENDLY_Eversong Rangers 施放|r |T135987:0|t[真言术：韧]|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #xprate <1.5
    #completewith next
    >>杀死 |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step << BloodElf Priest/Undead
    #xprate >1.4999
    #completewith next
    >>杀死 |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9064 >>交任务: |cRXP_FRIENDLY_学徒的欺瞒|r
    .accept 9066 >>接任务: |cRXP_LOOT_导师的训诫|r
    .target Instructor Antheol
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9064 >>交任务: |cRXP_FRIENDLY_学徒的欺瞒|r
    .accept 9066 >>接任务: |cRXP_LOOT_导师的训诫|r
    .target Instructor Antheol
step
    #xprate <1.5
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96
    >>杀死 |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96
    >>杀死 |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .turnin 8475 >>交任务: |cRXP_FRIENDLY_死亡之痕|r
    .target Ranger Jaela
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .turnin 8475 >>交任务: |cRXP_FRIENDLY_死亡之痕|r
    .target Ranger Jaela
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>对 |cRXP_FRIENDLY_Ralen|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << BloodElf Priest/Undead
    #xprate >1.4999
    .goto Eversong Woods,45.19,56.43
    >>对 |cRXP_FRIENDLY_Ralen|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>对 |cRXP_FRIENDLY_Meledor|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step << BloodElf Priest/Undead Mage/Undead Priest
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>对 |cRXP_FRIENDLY_Meledor|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔网监护者薇兰妮亚|r
    .turnin 9119 >>交任务: |cRXP_FRIENDLY_西部圣殿的麻烦|r
    .accept 8486 >>接任务: |cRXP_LOOT_不稳定的奥术|r
    .target Ley-Keeper Velania
step
    #completewith next
    >>杀死 |cRXP_ENEMY_魔灵s|r 和 |cRXP_ENEMY_法力追猎者s|r
    .complete 8486,1 --Kill 魔灵 (x5)
    .complete 8486,2 --Kill 法力追猎者 (x5)
    .mob 魔灵
    .mob 法力追猎者
step
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49
    >>杀死一名 |cRXP_ENEMY_Darnassian Scout|r。搜刮他的 |T133464:0|t[|cRXP_LOOT_Incriminating Documents|r]
    >>|cRXP_WARN_使用 |T133464:0|t[|cRXP_LOOT_Incriminating Documents|r] 开始任务|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482,1 --Incriminating Documents (1)
    .accept 8482 >>接任务: |cRXP_LOOT_秘密文件|r
    .mob Darnassian Scout
    .use 20765
step
#loop
	.line Eversong Woods,35.57,61.41,34.41,60.64,35.02,56.58,35.82,58.36,36.20,60.28,35.57,61.41
	.goto Eversong Woods,35.57,61.41,40,0
	.goto Eversong Woods,34.41,60.64,40,0
	.goto Eversong Woods,35.02,56.58,40,0
	.goto Eversong Woods,35.82,58.36,40,0
	.goto Eversong Woods,36.20,60.28,40,0
	.goto Eversong Woods,35.57,61.41,40,0
    >>杀死 |cRXP_ENEMY_魔灵s|r 和 |cRXP_ENEMY_法力追猎者s|r
    .complete 8486,1 --Kill 魔灵 (x5)
    .complete 8486,2 --Kill 法力追猎者 (x5)
    .mob 魔灵
    .mob 法力追猎者
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔网监护者薇兰妮亚|r
    .turnin 8486 >>交任务: |cRXP_FRIENDLY_不稳定的奥术|r
    .turnin 9352 >>交任务: |cRXP_FRIENDLY_达纳苏斯的侵扰|r
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯温里奥|r
    .accept 8884 >>接任务: |cRXP_LOOT_鱼头......|r
    .target Hathvelion Sungaze
step
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29
    >>杀死 |cRXP_ENEMY_Grimscale Foragers|r 和 |cRXP_ENEMY_Grimscale Seers|r。掠夺他们的 |cRXP_LOOT_Murloc Heads|r 和 |T134939:0|t[|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r]
    >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r] 开始任务|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887,1 --Captain Kelisendra's Lost Rutters
    .accept 8887 >>接任务: |cRXP_LOOT_凯莉森德拉船长的航海图|r
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29
    .xp 7+3195 >>升级至 3195+/4500xp
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯温里奥|r
    .turnin 8884 >>交任务: |cRXP_FRIENDLY_鱼头......|r
    .accept 8885 >>接任务: |cRXP_LOOT_呜啦哇啦的戒指|r
    .target Hathvelion Sungaze
step << Paladin/Priest/Mage
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,35.50,55.70,30 >>跑向西圣殿正北方向
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,35.50,55.70
    .deathskip >>死亡并在 |cRXP_FRIENDLY_Spirit Healer|r 处重生（确保您的子区域是 Eversong Woods 而不是 West Sanctum）
    .target Spirit Healer
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    #completewith next
    .goto Eversong Woods,46.70,49.09,20,0
    .goto Eversong Woods,46.69,48.02,20 >>前往艾尔登
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8482 >>交任务: |cRXP_FRIENDLY_秘密文件|r
    .accept 8483 >>接任务: |cRXP_LOOT_矮人间谍|r
    .target Aeldon Sunbrand
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斗技者拉雷尼斯|r
    .train 201 >>训练 1h 剑 << Rogue
    .train 202 >>训练 2h 剑 << Undead Warrior tbc
    .target Duelist Larenis
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔娜莉亚|r, 他在楼上
    .train 6760 >>训练你的职业法术
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉诺维亚|r
    .train 5116 >>训练你的职业法术
    .target Hannovia
step << Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅馆
step << Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼去
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 980 >>训练你的职业法术
    .target Celoenus
step << Warlock tbc
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戴丝特拉|r, 他在楼上
    >>|cRXP_BUY_从她那里购买|r |T133738:0|t[火箭魔典（等级 2）] |cRXP_BUY_|r
    .collect 16302,1,8475,1 --Grimoire of Firebolt Rank 2
    .target Daestra
step << Warrior tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135321:0|t[Gladius] (5s 9c)。如果你的钱不够，可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135321:0|t[Gladius] |cRXP_BUY_|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (6s 66c)。如果你还没有足够的钱，你以后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (3s 82c)。如果你还没有足够的钱，你可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Rogue
    #completewith Caidanis
    +装备 |T135321:0|t[短剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk
    #completewith Caidanis
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>对话: |cRXP_FRIENDLY_勘测员安威瓦尔德|r
    .timer 28,Prospector Anvilward RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Warrior/Warlock/Hunter/Rogue
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cRXP_WARN_等待 RP|r
    >>杀死 |cRXP_ENEMY_Prospector Anvilward|r。掠夺他的 |cRXP_LOOT_Head|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>对 |cRXP_FRIENDLY_Ralen|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>对 |cRXP_FRIENDLY_Meledor|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒拉尔雷|r
    .accept 9035 >>接任务: |cRXP_LOOT_打探匪情|r
    .target Apprentice Ralen
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒梅雷多尔|r
    .turnin 9035 >>交任务: |cRXP_FRIENDLY_打探匪情|r
    .accept 9062 >>接任务: |cRXP_LOOT_浸水的书页|r
    .target Apprentice Meledor
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,44.34,62.00
    >>在水下拾取 |cRXP_PICK_Grimoire|r
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step << !Undead Warrior/!Undead Warlock/!Undead Hunter/!Undead Rogue
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒梅雷多尔|r
    .turnin 9062 >>交任务: |cRXP_FRIENDLY_浸水的书页|r
    .accept 9064 >>接任务: |cRXP_LOOT_学徒的欺瞒|r
    .target Apprentice Meledor
step << Undead !Mage !Priest
    #xprate >1.4999
    .goto Eversong Woods,44.88,61.03
    >>对 |cRXP_FRIENDLY_Meledor|r 使用 |T135147:0|t[惩戒之杖]
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    #completewith next
    .goto Eversong Woods,44.04,70.35,0
    >>|cRXP_BUY_购买|r |T133634:0|t[小棕色袋子] |cRXP_BUY_来自|r |cRXP_FRIENDLY_Halis|r |cRXP_BUY_如果你需要袋子|r
    .vendor >>供应商垃圾
    .target Halis Dawnstrider
--VV Bag check command
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan|r and |cRXP_FRIENDLY_Landra|r
    .accept 8491 >>接任务: |cRXP_LOOT_收集豹皮|r
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >>接任务: |cRXP_LOOT_萨瑟利尔庄园|r
    .accept 9254 >>接任务: |cRXP_LOOT_外出的学徒|r
    .goto Eversong Woods,44.03,70.76
    .target Velan Brightoak
    .target Magistrix Landra Dawnstrider
--VV     .accept 9395 >>接任务: |cRXP_LOOT_萨瑟利尔庄园|r << !BloodElf/!Hunter
step
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan|r and |cRXP_FRIENDLY_Landra|r
    .accept 8491 >>接任务: |cRXP_LOOT_收集豹皮|r
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >>接任务: |cRXP_LOOT_萨瑟利尔庄园|r
    .accept 9254 >>接任务: |cRXP_LOOT_外出的学徒|r
    .goto Eversong Woods,44.03,70.76
    .target Velan Brightoak
    .target Magistrix Landra Dawnstrider
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>上楼去
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戴戈利恩|r
    .accept 8892 >>接任务: |cRXP_LOOT_阳帆港|r
    .target Ranger Degolien
step
    #completewith next
    .goto Eversong Woods,43.67,71.31,8 >>下楼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尼尔·琥珀之光|r, |cRXP_FRIENDLY_阿尔德恩·河风|r
    .accept 9358 >>接任务: |cRXP_LOOT_游侠萨蕾恩|r
    .goto Eversong Woods,43.67,71.31
    .accept 9258 >>接任务: |cRXP_LOOT_焦痕谷|r
    .goto Eversong Woods,43.58,71.20
    .target Marniel Amberlight
    .target Ardeyn Riverwind
--VV .isOnQuest 8885 << BloodElf Hunter
--VV     .home >>将你的炉石设为清风村 << BloodElf Hunter
step
    #xprate <1.5
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
--VV !BloodElf/!Hunter on coords
step
    #xprate >1.4999
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #xprate <1.5
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨瑟利尔男爵|r
    .turnin 9395 >>交任务: |cRXP_FRIENDLY_萨瑟利尔庄园|r
    .accept 9067 >>接任务: |cRXP_LOOT_无尽的宴会|r
    .target Lord Saltheril
    --VV !BloodElf/!Hunter (Need to test BE route)
step
    #xprate >1.4999
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨瑟利尔男爵|r
    .turnin 9395 >>交任务: |cRXP_FRIENDLY_萨瑟利尔庄园|r
    .accept 9067 >>接任务: |cRXP_LOOT_无尽的宴会|r
    .target Lord Saltheril
step
    #label Sunsail
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯莉森德拉船长|r, |cRXP_FRIENDLY_维雷迪斯·雪晨|r
    .turnin 8887 >>交任务: |cRXP_FRIENDLY_凯莉森德拉船长的航海图|r
    .accept 8886 >>接任务: |cRXP_LOOT_暗鳞强盗！|r
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >>接任务: |cRXP_LOOT_失落的军备|r
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #completewith Aldaron
    >>杀死 |cRXP_ENEMY_可怜的暴徒s|r 和 |cRXP_ENEMY_可恶的流氓s|r
    .complete 8892,1 --Kill 可怜的暴徒 (x5)
    .complete 8892,2 --Kill 可恶的流氓 (x5)
    .mob 可怜的暴徒
    .mob 可恶的流氓
step
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51
    >>抢劫 |cRXP_ENEMY_Wretched|r 附近地面上和建筑物内的 |cRXP_PICK_Armament Boxes|r
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维雷迪斯·雪晨|r
    .turnin 8480 >>交任务: |cRXP_FRIENDLY_失落的军备|r
    .accept 9076 >>接任务: |cRXP_LOOT_失心者的领袖|r
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>爬到楼顶
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>杀死顶部的 |cRXP_ENEMY_鲁莽的阿尔达隆|r。从他身上搜刮 |cRXP_LOOT_阿尔达隆的头颅|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51
    >>杀死 |cRXP_ENEMY_可怜的暴徒s|r 和 |cRXP_ENEMY_可恶的流氓s|r
    .complete 8892,1 --Kill 可怜的暴徒 (x5)
    .complete 8892,2 --Kill 可恶的流氓 (x5)
    .mob 可怜的暴徒
    .mob 可恶的流氓
step
    #completewith next
    .goto Eversong Woods,29.53,72.32,40,0
    .goto Eversong Woods,27.73,71.83,40,0
    .goto Eversong Woods,26.53,74.16,40,0
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>杀死 |cRXP_ENEMY_Grimscale Murlocs|r 和 |cRXP_ENEMY_Grimscale Oracles|r。掠夺他们的 |cRXP_LOOT_Cargo|r
    >>拾取地面上的 |cRXP_PICK_Cargo Barrels|r
    >>|cRXP_WARN_使用|r |T136222:0|t[奥术洪流] |cRXP_WARN_打断|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[快速治疗] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66
    >>杀死 |cRXP_ENEMY_Mmmrrrggglll|r。从他身上搜刮 |cRXP_LOOT_Mmmrrrggglll 之戒|r
    >>|cRXP_WARN_他稍微巡视了一下|r
    >>|cRXP_WARN_Use|r |T136222:0|t[奥术洪流] |cRXP_WARN_打断|r |cRXP_ENEMY_Mmmrrrggglll|r's |T136052:0|t[治疗波] << BloodElf
    .complete 8885,1 --Collect 戒指 of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66
    >>杀死 |cRXP_ENEMY_Grimscale Murlocs|r 和 |cRXP_ENEMY_Grimscale Oracles|r。掠夺他们的 |cRXP_LOOT_Cargo|r
    >>拾取地面上的 |cRXP_PICK_Cargo Barrels|r
    >>|cRXP_WARN_使用|r |T136222:0|t[奥术洪流] |cRXP_WARN_打断|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[快速治疗] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈斯温里奥|r
    .turnin 8885 >>交任务: |cRXP_FRIENDLY_呜啦哇啦的戒指|r
    .target Hathvelion Sungaze
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯莉森德拉船长|r, |cRXP_FRIENDLY_维雷迪斯·雪晨|r
    .turnin 8886 >>交任务: |cRXP_FRIENDLY_暗鳞强盗！|r
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >>交任务: |cRXP_FRIENDLY_失心者的领袖|r
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step << skip
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,35.94,72.10,40,0
    .goto Eversong Woods,34.61,74.85,40,0
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target Springpaw Stalker
--VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉莉亚娜·河风|r
    .turnin 9258 >>交任务: |cRXP_FRIENDLY_焦痕谷|r
    .accept 8473 >>接任务: |cRXP_LOOT_痛苦的抉择|r
    .target Larianna Riverwind
    --VV BloodElf Hunter
step << skip
    #completewith next
    #xprate <1.5
    >>杀死 |cRXP_ENEMY_Withered Green Keepers|r
    >>|cRXP_WARN_施放时请小心|r |T132282:0|t[打击]，|cRXP_WARN_立即造成双倍伤害|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    .use 8474 >>杀死 |cRXP_ENEMY_Old Whitebark|r。从他身上搜刮 |T133280:0|t[|cRXP_LOOT_Old Whitebark 的吊坠|r]。|cRXP_WARN_使用它来开始任务|r
    >>|cRXP_ENEMY_Old Whitebark|r |cRXP_WARN_重生时间为 7 分 30 秒|r
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >>接任务: |cRXP_LOOT_怀特巴克的坠饰|r
    .mob Old Whitebark
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
#loop
	.line Eversong Woods,36.07,83.10,36.21,85.47,33.24,87.69,32.05,87.25,32.63,83.57,33.46,81.99,34.47,83.08,36.07,83.10
	.goto Eversong Woods,36.07,83.10,40,0
	.goto Eversong Woods,36.21,85.47,40,0
	.goto Eversong Woods,33.24,87.69,40,0
	.goto Eversong Woods,32.05,87.25,40,0
	.goto Eversong Woods,32.63,83.57,40,0
	.goto Eversong Woods,33.46,81.99,40,0
	.goto Eversong Woods,34.47,83.08,40,0
	.goto Eversong Woods,36.07,83.10,40,0
    >>杀死 |cRXP_ENEMY_Withered Green Keepers|r
    >>|cRXP_WARN_施放时请小心|r |T132282:0|t[打击]，|cRXP_WARN_立即造成双倍伤害|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉莉亚娜·河风|r
    .turnin 8473 >>交任务: |cRXP_FRIENDLY_痛苦的抉择|r
    .turnin 8474 >>交任务: |cRXP_FRIENDLY_怀特巴克的坠饰|r
    .accept 10166 >>接任务: |cRXP_LOOT_怀特巴克的记忆|r
    .target Larianna Riverwind
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,37.73,86.30
    .cast 33980 >>使用 |T133280:0|t[|cRXP_LOOT_Pendant|r] 召唤 |cRXP_ENEMY_Whitebark 的灵魂|r
    .use 28209
    .isOnQuest 10166
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    .goto Eversong Woods,37.73,86.30
    >>击败 |cRXP_ENEMY_Whitebark 的灵魂|r
    >>对话: |cRXP_FRIENDLY_怀特巴克的灵魂|r
    .turnin 10166 >>交任务: |cRXP_FRIENDLY_怀特巴克的记忆|r
    .target Whitebark's Spirit
    .use 28209
    --VV BloodElf Hunter
step << skip
    #xprate <1.5
    #completewith Sareyn
#loop
	.line Eversong Woods,36.07,83.10,36.21,85.47,33.24,87.69,32.05,87.25,32.63,83.57,33.46,81.99,34.47,83.08,36.07,83.10
	.goto Eversong Woods,36.07,83.10,40,0
	.goto Eversong Woods,36.21,85.47,40,0
	.goto Eversong Woods,33.24,87.69,40,0
	.goto Eversong Woods,32.05,87.25,40,0
	.goto Eversong Woods,32.63,83.57,40,0
	.goto Eversong Woods,33.46,81.99,40,0
	.goto Eversong Woods,34.47,83.08,40,0
	.goto Eversong Woods,36.07,83.10,40,0
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
    --VV BloodElf Hunter
step << skip
    #xprate >1.4999
    #completewith Sareyn
    .goto Eversong Woods,34.71,68.09,20,0
    .goto Eversong Woods,32.79,70.56
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
    --VV BloodElf Hunter
step
    #completewith Sareyn
    .goto Eversong Woods,34.71,68.09,20,0
    .goto Eversong Woods,32.79,70.56
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step << skip
    .goto Eversong Woods,37.84,66.61,40,0
    .goto Eversong Woods,37.45,65.60,40,0
    .goto Eversong Woods,39.71,63.80,40,0
    .goto Eversong Woods,40.64,66.89,40,0
    .goto Eversong Woods,41.94,66.65,40,0
    .goto Eversong Woods,42.83,66.14,40,0
    .goto Eversong Woods,43.38,64.67,40,0
    .goto Eversong Woods,43.86,65.58,40,0
    .goto Eversong Woods,45.33,65.92,40,0
    .goto Eversong Woods,45.44,67.76,40,0
    .goto Eversong Woods,46.07,67.01,40,0
    .goto Eversong Woods,46.69,67.31,40,0
    .goto Eversong Woods,47.12,68.81,40,0
    .goto Eversong Woods,37.84,66.61
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
--VV !BloodElf/!Hunter
step << skip
    #xprate >1.4999
    .goto Eversong Woods,37.84,66.61,40,0
    .goto Eversong Woods,37.45,65.60,40,0
    .goto Eversong Woods,39.71,63.80,40,0
    .goto Eversong Woods,40.64,66.89,40,0
    .goto Eversong Woods,41.94,66.65,40,0
    .goto Eversong Woods,42.83,66.14,40,0
    .goto Eversong Woods,43.38,64.67,40,0
    .goto Eversong Woods,43.86,65.58,40,0
    .goto Eversong Woods,45.33,65.92,40,0
    .goto Eversong Woods,45.44,67.76,40,0
    .goto Eversong Woods,46.07,67.01,40,0
    .goto Eversong Woods,46.69,67.31,40,0
    .goto Eversong Woods,47.12,68.81,40,0
    .goto Eversong Woods,37.84,66.61
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
--VV BloodElf Hunter
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_购买|r |T132382:0|t[粗箭] |cRXP_BUY_和|r |T132382:0|t[锋利的箭] |cRXP_BUY_从他那里|r。|cRXP_BUY_购买|r |T133634:0|t[棕色小袋] |cRXP_BUY_从她那里|r |cRXP_BUY_如果你需要袋子|r
    .collect 2512,200,9252,1 << Hunter --Rough Arrow (200)
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
    .itemcount 2512,<200
	.xp >10,1
--VV Bag check command
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_购买|r |T132382:0|t[锋利的箭] |cRXP_BUY_从她那里|r。|cRXP_BUY_购买|r |T133634:0|t[棕色小袋] |cRXP_BUY_从他那里|r |cRXP_BUY_如果你需要袋子|r
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
--VV Bag check command
step << !Hunter
    #completewith Sareyn
    .goto Eversong Woods,44.04,70.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_如果你需要袋子的话，就从他那里购买|r |T133634:0|t[棕色小袋子] |cRXP_BUY_|r
    .vendor >>供应商垃圾
    .target Halis Dawnstrider
--VV Bag check command
--VV !BloodElf/!Hunter
step
    #xprate >1.4999
    .goto Eversong Woods,44.03,70.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landra|r
    .accept 9144 >>接任务: |cRXP_LOOT_迷失在幽魂之地|r
    .target Magistrix Landra Dawnstrider
    .xp <10,1
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>上楼去
    --VV !Hunter
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戴戈利恩|r
    .turnin 8892 >>交任务: |cRXP_FRIENDLY_阳帆港|r
    .accept 9359 >>接任务: |cRXP_LOOT_远行者居所|r
    .target Ranger Degolien
    --VV !Hunter
step
    #completewith next
    .goto Eversong Woods,43.70,71.56,8 >>下楼
    --VV !Hunter
step
    .goto Eversong Woods,43.70,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨希尔|r
    .vendor 16261 >>供应商和维修
    .target Sathiel
    .isOnQuest 9358
    .money >1.00
    --VV !Hunter
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >>交任务: |cRXP_FRIENDLY_收集豹皮|r
    .target Velan Brightoak
    .isQuestComplete 8491
--VV !Hunter
step
    #label Sareyn
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠萨蕾恩|r
    .turnin 9358 >>交任务: |cRXP_FRIENDLY_游侠萨蕾恩|r
    .accept 9252 >>接任务: |cRXP_LOOT_保卫晴风村|r
    .target Ranger Sareyn
step
    #completewith Notes
    >>杀死 |cRXP_ENEMY_Rotlimb Marauders|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Rotlimb Marauders|r |cRXP_WARN_cast|r |T136128:0|t[疾病之触] (|cRXP_WARN_15 伤害瞬发法术|r)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32
    >>杀死|cRXP_ENEMY_Darkwraiths|r
    >>|cRXP_WARN_要小心，因为|r |cRXP_ENEMY_Darkwraiths|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_（增加伤害和攻击速度）在低生命值时|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒米尔维达|r
    .turnin 9254 >>交任务: |cRXP_FRIENDLY_外出的学徒|r
    .accept 8487 >>接任务: |cRXP_LOOT_被腐蚀的土地|r
    .target Apprentice Mirveda
step
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    >>战利品 |cRXP_PICK_Tainted Soil Piles|r 在地面上
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒米尔维达|r
    >>|cRXP_WARN_等待 RP|r
    .turnin 8487 >>交任务: |cRXP_FRIENDLY_被腐蚀的土地|r
    .timer 9,Corrupted Soil RP
    .accept 8488 >>接任务: |cRXP_LOOT_出人意料的结果|r
    .target Apprentice Mirveda
step
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>杀死 |cRXP_ENEMY_Gharsul the Remorseless|r 和 |cRXP_ENEMY_Angershades|r 以保护 |cRXP_FRIENDLY_Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
step
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒米尔维达|r
    .turnin 8488 >>交任务: |cRXP_FRIENDLY_出人意料的结果|r
    .accept 9255 >>接任务: |cRXP_LOOT_研究笔记|r
    .target Apprentice Mirveda
step
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    >>杀死 |cRXP_ENEMY_Rotlimb Marauders|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Rotlimb Marauders|r |cRXP_WARN_cast|r |T136128:0|t[疾病之触] (|cRXP_WARN_15 伤害瞬发法术|r)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step << Paladin/Priest/Mage/Hunter
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    .xp 9+5875 >>升级至 5875+/6500xp
step << Warrior/Warlock/Rogue !Undead/!Warlock !Paladin !Priest !Mage
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    .xp 9+5700 >>升级至 5700+/6500xp
step << Undead Warlock
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03
    .xp 9+5950 >>升级至 5950+/6500xp
step << !Warlock/!Undead
    #completewith ExitFalcon
    .hs >>炉边至鹰翼广场
--VV !Hunter x2
step << Undead Warlock
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9066 >>交任务: |cRXP_FRIENDLY_导师的训诫|r
    .target Instructor Antheol
step << Undead Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
step << Undead Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅馆
step << Undead Warlock
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_从他那里购买 a|r |T132798:0|t[Suntouched Special Reserve] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << Undead Warlock
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .isQuestAvailable 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>乘电梯前往幽暗城
    .isQuestAvailable 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>前往 |cRXP_FRIENDLY_Carendin|r
    .isQuestAvailable 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .accept 1473 >>接任务: |cRXP_LOOT_虚空中的生物|r
    .target Carendin Halgar
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 707 >>训练你的职业法术
    .target Richard Kerwin
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
    .train 705 >>训练你的职业法术
    .target Richard Kerwin
    .xp <12,1
step << Undead Warlock
    #completewith next
    .goto Undercity,82.36,15.31
    .goto Undercity,67.90,15.29,30 >>|cRXP_WARN_前往右侧的试剂供应商并执行“跳过登出”操作，方法是将你的角色定位在最低楼梯的最高处，直到看起来像是漂浮起来，然后登出并重新登录|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>|cRXP_WARN_点击此处查看示例|r
    >>|cRXP_WARN_如果你做不到这一点，就正常跑出幽暗城|r
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .isOnQuest 1473
step << Undead Warlock
    .goto Tirisfal Glades,51.44,67.69,15,0
    .goto Tirisfal Glades,51.06,67.57
    >>抢劫地面上的 |cRXP_PICK_虚空宝箱中的生物|r
    .complete 1473,1 --Creature of the Void (1)
step << Undead Warlock
    #completewith next
    .goto Undercity,66.16,1.05,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>向左转，到达幽暗城
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>前往 |cRXP_FRIENDLY_Carendin|r
    .isOnQuest 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1473 >>交任务: |cRXP_FRIENDLY_虚空中的生物|r
    .accept 1471 >>接任务: |cRXP_LOOT_誓缚|r
    .target Carendin Halgar
step << Undead Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>在召唤圈使用 |T134416:0|t[召唤符文]
    .use 6284
step << Undead Warlock
    .goto Undercity,86.64,27.10
    >>杀死|cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦丁·哈加尔|r
    .turnin 1471 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Carendin Halgar
step << Undead Warlock
    #completewith ExitFalcon
    .hs >>炉边至鹰翼广场
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰牛奶] |cRXP_BUY_和|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #label Buyfood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板德兰妮尔|r
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从她那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从她那里购买|r |T132815:0|t[冰牛奶] |cRXP_BUY_和|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8482 >>交任务: |cRXP_FRIENDLY_秘密文件|r
    .accept 8483 >>接任务: |cRXP_LOOT_矮人间谍|r
    .target Aeldon Sunbrand
step << Paladin/Priest/Mage
    #xprate >1.4999
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8482 >>交任务: |cRXP_FRIENDLY_秘密文件|r
    .target Aeldon Sunbrand
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>对话: |cRXP_FRIENDLY_勘测员安威瓦尔德|r
    .timer 28,Prospector Anvilward RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cRXP_WARN_等待 RP|r
    >>杀死 |cRXP_ENEMY_Prospector Anvilward|r。掠夺他的 |cRXP_LOOT_Head|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8483 >>交任务: |cRXP_FRIENDLY_矮人间谍|r
    .target Aeldon Sunbrand
--VV !Hunter
step
    .goto Eversong Woods,45.02,37.68
    .xp 10 >>升级至 10 级
    --VV !Hunter
step << !Paladin !Priest !Mage
    #xprate >1.4999
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8483 >>交任务: |cRXP_FRIENDLY_矮人间谍|r
    .target Aeldon Sunbrand
step << Warrior tbc/Rogue
    +装备 |T135274:0|t[轻微使用的游侠之刃]
    .use 23396
    .itemcount 23396,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Paladin
    #xprate <1.5
    +装备 |T135274:0|t[轻微使用的游侠之刃]
    .use 23396
    .itemcount 23396,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Undead Warrior tbc/Rogue
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斗技者拉雷尼斯|r
    .train 201 >>训练 1h 剑 << Rogue
    .train 202 >>训练 2h 剑 << Undead Warrior tbc
    .target Duelist Larenis
    .money <0.11
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果你的钱足够买一把 |T135321:0|t[Gladius] (5s 9c)。如果你的钱不够，可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior tbc/Paladin tbc/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135321:0|t[Gladius] |cRXP_BUY_|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T133053:0|t[木槌] (6s 66c)。如果你还没有足够的钱，你以后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior wotlk/Paladin wotlk
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T133053:0|t[木槌] |cRXP_BUY_|r
    .collect 2493,1,8476,1 --Collect Wooden Mallet (1)
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    .vendor >>卖掉你的武器，如果它能给你足够的钱买一把 |T135641:0|t[Stiletto] (3s 82c)。如果你还没有足够的钱，你可以稍后再回来
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖隆|r
    >>|cRXP_BUY_从他那里购买 a|r |T135641:0|t[Stiletto] |cRXP_BUY_|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Warrior tbc/Paladin tbc/Rogue
    #completewith Antheol2
    +装备 |T135321:0|t[短剑]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior wotlk/Paladin wotlk
    #completewith Antheol2
    +装备 |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Antheol2
    +装备 |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺尔蕾妮|r
    .train 633 >>训练你的职业法术
    .target Noellene
	.xp <10,1
    .xp >12,1
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺尔蕾妮|r
    .accept 9677 >>接任务: |cRXP_LOOT_骑士领主布拉德瓦罗的召唤|r
    .train 19834 >>训练你的职业法术
    .target Noellene
	.xp <12,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔娜莉亚|r, 他在楼上
    .train 2983 >>训练你的职业法术
    .target Tannaria
	.xp <10,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉诺维亚|r
    .train 13165 >>训练你的职业法术
    .target Hannovia
	.xp <10,1
	.xp >12,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉诺维亚|r
    .train 14281 >>训练你的职业法术
    .target Hannovia
	.xp <12,1
step << Mage/Priest/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅馆
	.xp <10,1
step << Mage/Priest/Warlock
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼去
	.xp <10,1
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珀纳瑞斯|r, 他在楼上
    .turnin 9489 >>接任务: |cRXP_LOOT_清理死亡之痕|r << BloodElf
    .train 8092 >>训练你的职业法术
    .target Ponaris
	.xp <10,1
    .xp >12,1
step << Priest
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珀纳瑞斯|r, 他在楼上
    .turnin 9489 >>接任务: |cRXP_LOOT_清理死亡之痕|r << BloodElf
    .train 592 >>训练你的职业法术
    .target Ponaris
	.xp <12,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳黛尔|r, 他在楼上
    .train 7300 >>训练你的职业法术
    .target Garridel
	.xp <10,1
    .xp >12,1
step << Mage
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳黛尔|r, 他在楼上
    .train 145 >>训练你的职业法术
    .target Garridel
	.xp <12,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 707 >>训练你的职业法术
    .target Celoenus
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    #label MaPrWaTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 705 >>训练你的职业法术
    .target Celoenus
    .xp <12,1
step
    #label ExitFalcon
    #completewith Antheol2
    .goto Eversong Woods,46.65,49.13,40 >>退出鹰翼广场
step << !Undead !BloodElf/!Priest
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .accept 8475 >>接任务: |cRXP_LOOT_死亡之痕|r
    .target Ranger Jaela
    .xp >11,1
step << !Undead !BloodElf/!Priest
    #xprate >1.4999
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96
    >>杀死 |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
    .isOnQuest 8475
step << !Undead !BloodElf/!Priest
    #xprate >1.4999
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尔拉|r
    .turnin 8475 >>交任务: |cRXP_FRIENDLY_死亡之痕|r
    .target Ranger Jaela
    .isQuestComplete 8475
step << BloodElf Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅馆
step << BloodElf Warlock
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_从他那里购买 a|r |T132798:0|t[Suntouched Special Reserve] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << BloodElf Warlock
    #completewith TheStone
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
    .isQuestAvailable 9529
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .accept 9529 >>接任务: |cRXP_LOOT_虚空石|r
    .train 707 >>训练你的职业法术
    .target Talionia
    .xp <10,1
    .xp >12,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .accept 9529 >>接任务: |cRXP_LOOT_虚空石|r
    .train 705 >>训练你的职业法术
    .target Talionia
    .xp <12,1
step << BloodElf Warlock
    #label TheStone
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .accept 9529 >>接任务: |cRXP_LOOT_虚空石|r
    .target Talionia
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Eversong Woods,56.66,50.11
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
step
    #xprate <1.5
    #label Antheol2
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9066 >>交任务: |cRXP_FRIENDLY_导师的训诫|r
    .accept 9402 >>接任务: |cRXP_LOOT_捞瓶子|r << Mage
step
    #xprate >1.4999
    #label Antheol2
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9064 >>交任务: |cRXP_FRIENDLY_学徒的欺瞒|r << !Undead !BloodElf/!Priest !Undead
    .turnin 9066 >>交任务: |cRXP_FRIENDLY_导师的训诫|r << BloodElf Priest/Undead
    .accept 9402 >>接任务: |cRXP_LOOT_捞瓶子|r << Mage
    .target Instructor Antheol
step << Mage
    .goto Eversong Woods,54.69,56.23
    >>在水下拾取 |cRXP_PICK_Azure Phial|r
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9402 >>交任务: |cRXP_FRIENDLY_捞瓶子|r
    .accept 9403 >>接任务: |cRXP_LOOT_最纯净的水|r
    .target Instructor Antheol
step << Warrior
    #completewith next
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step << Warrior
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .isQuestAvailable 834
step << Warrior
    #completewith WarrTraining2
    .goto Tirisfal Glades,61.58,52.99,8,0
    .goto Tirisfal Glades,61.74,52.77,8 >>进入旅馆
step << Warrior
    .goto Tirisfal Glades,61.85,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 2687 >>训练你的职业法术
    .target Austil de Mon
    .xp <10,1
    .xp >12,1
step << Warrior
    #label WarrTraining2
    .goto Tirisfal Glades,61.85,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥斯蒂尔·德·蒙|r
    .train 5242 >>训练你的职业法术
    .target Austil de Mon
    .xp <12,1
step << Warrior
    #completewith Winds
    .abandon 1818 >>放弃与迪林杰交谈
step << Warrior
    #completewith Winds
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>登上齐柏林飞艇塔
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Warrior
    #label Winds
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷兹拉克|r
    .accept 834 >>接任务: |cRXP_LOOT_沙漠之风|r
    .target Rezlak
step << Warrior
    .goto Durotar,49.10,22.59,20,0
    .goto Durotar,49.71,21.89,20,0
    .goto Durotar,50.10,24.51,20,0
    .goto Durotar,50.85,25.92,20,0
    .goto Durotar,49.86,26.87,20,0
    .goto Durotar,50.51,31.82,30,0
    .goto Durotar,49.63,32.12,20,0
    .goto Durotar,49.42,33.74,20,0
    .goto Durotar,48.09,34.38,20,0
    .goto Durotar,47.91,33.08,20,0
    .goto Durotar,47.18,29.67,20,0
    .goto Durotar,49.10,22.59,20,0
    .goto Durotar,49.71,21.89,20,0
    .goto Durotar,50.10,24.51,20,0
    .goto Durotar,50.85,25.92,20,0
    .goto Durotar,49.86,26.87,20,0
    .goto Durotar,50.51,31.82,30,0
    .goto Durotar,49.63,32.12,20,0
    .goto Durotar,49.42,33.74,20,0
    .goto Durotar,48.09,34.38,20,0
    .goto Durotar,47.91,33.08,20,0
    .goto Durotar,47.18,29.67,20,0
    >>掠夺地面上的 |cRXP_PICK_补给袋|r
    .complete 834,1 --Sack of Supplies (5)
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 10-12 永歌森林
#next 12-16 幽冥之地
#version 1
#group RestedXP 部落 1-30

step << Orc Hunter/Troll Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>前往 |cRXP_FRIENDLY_Ileda|r
step << Orc Hunter/Troll Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊蕾达|r
    .train 202 >>训练 2h 剑
    .target Ileda
    .money <0.1000
step << Orc/Troll/Tauren
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,75.63,58.34,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,73.22,59.91,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
step << Orc/Troll/Tauren
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛拉米|r
    .fp Silvermoon >>获取银月城飞行路线
    .target Skymistress Gloaming
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .accept 9403 >>接任务: |cRXP_LOOT_最纯净的水|r
    .target Instructor Antheol
step << Troll Mage
    .goto Eversong Woods,54.69,56.23
    >>在水下拾取 |cRXP_PICK_Azure Phial|r
    .complete 9402,1 --Azure Phial (1)
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9402 >>交任务: |cRXP_FRIENDLY_捞瓶子|r
    .accept 9403 >>接任务: |cRXP_LOOT_最纯净的水|r
    .target Instructor Antheol
step << Undead/BloodElf
    #completewith next
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step << Undead/BloodElf
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨蕾妮·晨光|r
    >>|cRXP_BUY_从她那里购买|r |T133974:0|t[Springpaw Appetizers] |cRXP_BUY_|r
    .collect 22776,1,9067,1 --Collect Springpaw Appetizers
    .target Zalene Firstlight
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9359 >>交任务: |cRXP_FRIENDLY_远行者居所|r << !Tauren !Troll !Orc
    .accept 8476 >>接任务: |cRXP_LOOT_阿曼尼的进犯|r
    .accept 9484 >>接任务: |cRXP_LOOT_驯服野兽|r << BloodElf Hunter
    .target Lieutenant Dawnrunner
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派尔拉林|r
    >>|cRXP_BUY_从他那里购买一把|r |T135489:0|t[层压反曲弓] |cRXP_BUY_和|r |T132382:0|t[锋利箭] |cRXP_BUY_|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .collect 2515,2000,9144,1 --Sharp Arrow (2000)
    .target Paelarin
    .money <0.2252 << Orc/Troll
    .money <0.2144 << BloodElf
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
--VV Paelarin doesn't talk to Trolls
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派尔拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132382:0|t[利箭] |cRXP_BUY_|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Paelarin
    .money <0.0500 << Orc/Troll
    .money <0.0480 << BloodElf
step << !Troll Hunter
    #completewith Otembe
    +装备 |T135489:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉瑟尔|r
    .train 2018 >>训练 |T136241:0|t[锻造]。稍后您将获得 |T136248:0|t[采矿]，这将允许您制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 1 小时） << Paladin/BloodElf Rogue/Undead Rogue
    >>|cRXP_WARN_你可以跳过|r |T136241:0|t[Blacksmithing] |cRXP_WARN_如果你愿意的话|r << Paladin/BloodElf Rogue/Undead Rogue
    .accept 8477 >>接任务: |cRXP_LOOT_制矛师之锤|r
    .target Arathel Sunforge
step << BloodElf Hunter
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86,40,0
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86
    >>使用 |T132164:0|t[驯兽棒] 从最大范围攻击 |cRXP_ENEMY_Crazed Dragonhawk|r
    >>|cRXP_WARN_不要杀死任何|r |cRXP_ENEMY_Elder Springpaws|r
    .complete 9484,1 --Tame a Crazed Dragonhawk
    .mob Crazed Dragonhawk
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9484 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 9486 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24
    >>使用 |T132164:0|t[驯兽棒] 从最大范围攻击 |cRXP_ENEMY_Elder Springpaw|r
    .complete 9486,1 --Tame an Elder Springpaw
    .mob Elder Springpaw
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9486 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 9485 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Lieutenant Dawnrunner
step << Undead/BloodElf
    #completewith Otembe
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step << Mage
    .goto Eversong Woods,64.16,72.62
    >>使用瀑布下的|T134776:0|t[Azure Phial]
    .complete 9403,1 --Filled Azure Phial (1)
    .use 23566
step << Orc Hunter wotlk / Troll Hunter wotlk
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24
    .tame 15652 >>驯服 |cRXP_ENEMY_Elder Springpaw|r
    .mob Elder Springpaw
step
    #completewith Marosh
    >>杀死 |cRXP_ENEMY_Amani 狂战士|r 和 |cRXP_ENEMY_Amani 斧头投掷者|r
    >>|cRXP_WARN_要小心|r |cRXP_ENEMY_Amani 狂战士|r |cRXP_WARN_cast|r |T136224:0|t[激怒] |cRXP_WARN_(增加伤害和攻击速度) 在低生命值时|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob Amani Berserker
    .mob Amani Axe Thrower
step
    .goto Eversong Woods,70.10,72.28
    >>杀死 |cRXP_ENEMY_Spearcrafter Otembe|r。掠夺他的 |cRXP_LOOT_Hammer|r
    >>|cRXP_ENEMY_矛匠奥特姆贝|r |cRXP_WARN_有 100% 的几率掉落白色或绿色物品|r << Paladin/Rogue/Warrior
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob Spearcrafter Otembe
    .itemStat 16,QUALITY,<7 << Paladin/Rogue/Warrior
step
    #label Otembe
    .goto Eversong Woods,70.10,72.28
    >>杀死 |cRXP_ENEMY_Spearcrafter Otembe|r。掠夺他的 |cRXP_LOOT_Hammer|r
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob Spearcrafter Otembe
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_文亚什|r
    .accept 8479 >>接任务: |cRXP_LOOT_祖玛洛什|r
    .target Ven'jashi
step
    #completewith next
    .goto Eversong Woods,62.57,79.72,15,0
    .goto Eversong Woods,62.25,80.08,8,0
    .goto Eversong Woods,61.83,79.89,8,0
    .goto Eversong Woods,61.90,79.63,8 >>爬上小屋，前往 |cRXP_ENEMY_Zul'Marosh|r
step
    .goto Eversong Woods,62.51,79.68
    >>杀死 |cRXP_ENEMY_Chieftain Zul'Marosh|r。搜刮他的 |cRXP_LOOT_Head|r 和 |T134946:0|t[|cRXP_LOOT_Amani Invasion Plans|r]
    >>|cRXP_WARN_使用 |T134946:0|t[|cRXP_LOOT_Amani 入侵计划|r] 开始任务|r
    >>|cRXP_ENEMY_酋长祖玛洛什|r |cRXP_WARN_有 100% 的几率掉落白色或绿色物品|r << Paladin/Rogue/Warrior
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360,1 --Collect Amani Invasion Plans (x1)
    .accept 9360 >>接任务: |cRXP_LOOT_阿曼尼的入侵|r
    .mob Chieftain Zul'Marosh
    .use 23249
    .itemStat 16,QUALITY,<7
step
    .goto Eversong Woods,62.51,79.68
    >>杀死 |cRXP_ENEMY_Chieftain Zul'Marosh|r。夺取他的 |cRXP_LOOT_Head|r 和 |T134946:0|t[|cRXP_LOOT_Amani Invasion Plans|r]
    >>|cRXP_WARN_使用 |T134946:0|t[|cRXP_LOOT_Amani 入侵计划|r] 开始任务|r
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360,1 --Collect Amani Invasion Plans (x1)
    .accept 9360 >>接任务: |cRXP_LOOT_阿曼尼的入侵|r
    .mob Chieftain Zul'Marosh
    .use 23249
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_文亚什|r
    >>|cRXP_WARN_如果你想的话，杀掉 |cRXP_ENEMY_Spearcrafter Otembe|r。他有 100% 的几率掉落白色或绿色物品|r << Paladin/Rogue/Warrior
    .turnin 8479 >>交任务: |cRXP_FRIENDLY_祖玛洛什|r
    .mob Spearcrafter Otembe
    .target Ven'jashi
    .itemStat 16,QUALITY,<7
step
    #label Marosh
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_文亚什|r
    .turnin 8479 >>交任务: |cRXP_FRIENDLY_祖玛洛什|r
    .target Ven'jashi
step
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15,40,0
    .goto Eversong Woods,69.23,74.08,40,0
    .goto Eversong Woods,69.39,76.51,40,0
    .goto Eversong Woods,71.65,76.95,40,0
    .goto Eversong Woods,71.45,78.94,40,0
    .goto Eversong Woods,70.49,81.45,40,0
    .goto Eversong Woods,70.43,82.60,40,0
    .goto Eversong Woods,68.82,83.40,40,0
    .goto Eversong Woods,68.89,80.37,40,0
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15
    >>杀死 |cRXP_ENEMY_Amani 狂战士|r 和 |cRXP_ENEMY_Amani 斧头投掷者|r
    >>|cRXP_WARN_要小心|r |cRXP_ENEMY_Amani 狂战士|r |cRXP_WARN_cast|r |T136224:0|t[激怒] |cRXP_WARN_(增加伤害和攻击速度) 在低生命值时|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob Amani Berserker
    .mob Amani Axe Thrower
step << skip
    .use 30105
    .goto Ghostlands,45.6,21.1
    .complete 9485,1 --Tame a Mistbat
--VV BloodElf Hunter
step << skip
    .goto Ghostlands,46.3,28.8
    .accept 9327 >>接任务: |cRXP_LOOT_被遗忘者|r
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,44.774,32.450
    .turnin 9327 >>交任务: |cRXP_FRIENDLY_被遗忘者|r
    .accept 9758 >>接任务: |cRXP_LOOT_返回奥术师范迪瑞尔身边|r
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,47.3,28.9
    .accept 9130 >>接任务: |cRXP_LOOT_银月城的货物|r
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,47.0,28.5
    .accept 9152 >>接任务: |cRXP_LOOT_托博尔的补给品|r
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,46.3,28.4
    .turnin 9758 >>交任务: |cRXP_FRIENDLY_返回奥术师范迪瑞尔身边|r
    --VV BloodElf Hunter
step << skip
    .goto Ghostlands,46.3,28.6
    .accept 9138 >>接任务: |cRXP_LOOT_日冕村|r
    --VV BloodElf Hunter
step << skip
    #completewith next
    .goto Ghostlands,45.5,30.5
    .fp Tranquillien >>获取 Tranquillien 飞行路径
    --VV BloodElf Hunter
step << skip
    >>不要飞往银月城
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >>交任务: |cRXP_FRIENDLY_银月城的货物|r
    .accept 9133 >>接任务: |cRXP_LOOT_飞往银月城|r
    --VV BloodElf Hunter
step << skip
    #completewith next
    .goto Eversong Woods,44.0,70.7
    .hs >>炉边到清风村
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,44.0,70.7
    .turnin 9255 >>交任务: |cRXP_FRIENDLY_研究笔记|r
    .accept 9144 >>接任务: |cRXP_LOOT_迷失在幽魂之地|r
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,44.7,69.7
    .turnin 8491 >>交任务: |cRXP_FRIENDLY_收集豹皮|r
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,46.928,71.789
    .turnin 9252 >>交任务: |cRXP_FRIENDLY_保卫晴风村|r
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,46.9,71.6
    .accept 9253 >>接任务: |cRXP_LOOT_符文看守者德尔雅|r
    --VV BloodElf Hunter
step << skip
    .use 22473 >>使用你背包中的惩戒棒对付梅勒多尔
.goto Eversong Woods,44.9,61.0
    .complete 9066,1 --Apprentice Meledor Disciplined
    --VV BloodElf Hunter
step << skip
    .use 22473 >>使用背包中的惩戒棒对付拉伦
.goto Eversong Woods,45.2,57.0
    .complete 9066,2 --Apprentice Ralen Disciplined
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,48.2,46.0
    .turnin 8482 >>交任务: |cRXP_FRIENDLY_秘密文件|r
    .accept 8483 >>接任务: |cRXP_LOOT_矮人间谍|r
    --VV BloodElf Hunter
step << skip
    .goto Eversong Woods,48.3,46.1
    .trainer >>训练你的职业法术
step << skip
    .goto Eversong Woods,44.8,53.1
    >>与勘探员安维尔沃德交谈，等待角色扮演活动结束。然后杀死他并掠夺他。
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .skipgossip
    .timer 28,Prospector Anvilward RP
step << skip
    .goto Eversong Woods,48.2,46.0
.target Aeldon Sunbrand
>>对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .turnin 8483 >>交任务: |cRXP_FRIENDLY_矮人间谍|r
step << skip
    .goto Eversong Woods,55.700,54.509
.target Instructor Antheol
>>对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9066 >>交任务: |cRXP_FRIENDLY_导师的训诫|r
step << Undead/BloodElf
    #completewith next
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 8476 >>交任务: |cRXP_FRIENDLY_阿曼尼的进犯|r
    .turnin 9360 >>交任务: |cRXP_FRIENDLY_阿曼尼的入侵|r
    .accept 9363 >>接任务: |cRXP_LOOT_警告晴风村|r
    .turnin 9485 >>交任务: |cRXP_FRIENDLY_驯服野兽|r << BloodElf Hunter
    .accept 9673 >>接任务: |cRXP_LOOT_野兽训练|r << BloodElf Hunter
    .target Lieutenant Dawnrunner
step << Undead/BloodElf
    #completewith MagiApp
    +|cRXP_WARN_切记不要出售你的|r |T133974:0|t[Springpaw Appetizers] |cRXP_WARN_and|r |T132798:0|t[Suntouched Special Reserve] << Warlock
    +|cRXP_WARN_切记不要出售你的|r |T133974:0|t[Springpaw Appetizers] << !Warlock
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派尔拉林|r
    >>|cRXP_BUY_购买 a|r |T135489:0|t[层压反曲弓] |cRXP_BUY_from|r |cRXP_FRIENDLY_Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << !Troll Hunter
    #completewith HunterTrain
    +装备 |T135489:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉瑟尔|r
    .turnin 8477 >>交任务: |cRXP_FRIENDLY_制矛师之锤|r
    .target Arathel Sunforge
step << Rogue
    +装备 |T135274:0|t[游侠小刀]
    .use 22963
    .itemcount 22963,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.3
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >>沿着斜坡向上前往 |cRXP_FRIENDLY_Duskwither|r
step
    #label MagiApp
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duskwither|r
    .accept 8888 >>接任务: |cRXP_LOOT_魔导师的学徒|r
    .target Magister Duskwither
step << BloodElf/Undead
    #completewith next
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r 和 |cRXP_ENEMY_Elder Springpaws|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒罗拉塔莉丝|r
    .turnin 8888 >>交任务: |cRXP_FRIENDLY_魔导师的学徒|r
    .accept 8889 >>接任务: |cRXP_LOOT_关闭高塔|r
    .accept 9394 >>接任务: |cRXP_LOOT_维林森去哪了？|r
    .target Apprentice Loralthalis
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者维林森|r
    .turnin 9394 >>交任务: |cRXP_FRIENDLY_维林森去哪了？|r
    .accept 8894 >>接任务: |cRXP_LOOT_清理广场|r
    .target Groundskeeper Wyllithen
step
#loop
	.line Eversong Woods,69.15,50.56,70.02,50.62,70.58,48.16,69.97,46.28,69.50,44.69,68.29,43.31,67.61,45.28,67.13,48.48,69.01,48.22,69.15,50.56
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
	.goto Eversong Woods,69.15,50.56,40,0
    >>杀死 |cRXP_ENEMY_Mana Serpents|r 和 |cRXP_ENEMY_Ether Fiends|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob Mana Serpent
    .mob Ether Fiend
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者维林森|r
    .turnin 8894 >>交任务: |cRXP_FRIENDLY_清理广场|r
    .target Groundskeeper Wyllithen
step
    #completewith next
    .goto Eversong Woods,68.95,51.95
    .cast 26566 >>点击楼梯顶部的传送球
step
    .goto Eversong Woods,68.24,51.56,15,0
    .goto Eversong Woods,68.57,51.61,15,0
    .goto Eversong Woods,68.96,51.95
    >>点击|cRXP_PICK_Floating Green Crystal|r
    .complete 8889,1 --First Power Source Deactivated (x1)
step
    #completewith next
    .goto Eversong Woods,69.16,52.01,8,0
    .goto Eversong Woods,69.09,51.74,8,0
    .goto Eversong Woods,68.93,51.69,8 >>上楼去
step
    #sticky
    #label Journalt
    .goto Eversong Woods,69.24,52.11,0,0
    >>点击表格上的 |cRXP_PICK_Journal|r
    .accept 8891 >>接任务: |cRXP_LOOT_被放弃的研究|r
step
    >>点击|cRXP_PICK_Floating Green Crystal|r
    .complete 8889,2 --Second Power Source Deactivated (x1)
    .goto Eversong Woods,68.80,52.00,8,0
    .goto Eversong Woods,68.96,51.94
step
    #requires Journalt
    #completewith next
    .goto Eversong Woods,69.57,52.12,12,0
    .goto Eversong Woods,69.82,52.50,12,0
    .goto Eversong Woods,69.76,52.98,12,0
    .goto Eversong Woods,69.64,53.35,15 >>上楼去
step
    #requires Journalt
    .goto Eversong Woods,69.64,53.35
    >>点击|cRXP_PICK_Floating Green Crystal|r
    >>|cRXP_WARN_暂时不要点击传送球|r
    .complete 8889,3 --Third Power Source Deactivated (x1)
step
    .goto Eversong Woods,69.61,53.47
    .cast 26572 >>点击传送球来传送回去
    .isOnQuest 8889
step << !BloodElf/!Warlock
#loop
	.line Eversong Woods,69.15,50.56,70.02,50.62,70.58,48.16,69.97,46.28,69.50,44.69,68.29,43.31,67.61,45.28,67.13,48.48,69.01,48.22,69.15,50.56
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
	.goto Eversong Woods,69.15,50.56,40,0
    .xp 11+6375 >>升级至 6375+/8700xp
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒罗拉塔莉丝|r
    .turnin 8889 >>交任务: |cRXP_FRIENDLY_关闭高塔|r
    .accept 8890 >>接任务: |cRXP_LOOT_塔中的消息|r
    .target Apprentice Loralthalis
step << BloodElf/Undead
    .goto Eversong Woods,66.28,57.66,40,0
    .goto Eversong Woods,64.60,61.15,40,0
    .goto Eversong Woods,63.72,64.26,40,0
    .goto Eversong Woods,62.22,65.24,40,0
    .goto Eversong Woods,60.20,65.87,40,0
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r 和 |cRXP_ENEMY_Elder Springpaws|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
step << Undead/BloodElf
    #completewith Spire
    +|cRXP_WARN_切记不要出售你的|r |T133974:0|t[Springpaw Appetizers] |cRXP_WARN_and|r |T132798:0|t[Suntouched Special Reserve] << Warlock
    +|cRXP_WARN_切记不要出售你的|r |T133974:0|t[Springpaw Appetizers] << !Warlock
step << !Troll Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_派尔拉林|r
    >>|cRXP_BUY_购买 a|r |T135489:0|t[层压反曲弓] |cRXP_BUY_from|r |cRXP_FRIENDLY_Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << !Troll Hunter
    #completewith HunterTrain
    +装备 |T135489:0|t[层压反曲弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >>沿着斜坡向上前往 |cRXP_FRIENDLY_Duskwither|r
step
    #label Spire
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duskwither|r
    .turnin 8890 >>交任务: |cRXP_FRIENDLY_塔中的消息|r
    .turnin 8891 >>交任务: |cRXP_FRIENDLY_被放弃的研究|r
    .target Magister Duskwither
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9403 >>交任务: |cRXP_FRIENDLY_最纯净的水|r
    .accept 9404 >>接任务: |cRXP_LOOT_活动的树木|r
    .target Instructor Antheol
step << !Warlock
    #completewith SMtraining01
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈雷尼·平原行者|r
    .train 8936 >>训练你的职业法术
    .target Harene Plainwalker
	.xp <12,1
	.xp >14,1
step << Druid
    #label SMtraining01
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈雷尼·平原行者|r
    .train 782 >>训练你的职业法术
    .target Harene Plainwalker
	.xp <14,1
step << !Orc !Troll !Tauren !Warlock !Rogue
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅馆
step << !Orc !Troll !Tauren !Warlock !Rogue
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_从他那里购买|r |T132798:0|t[Suntouched Special Reserve] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << !BloodElf Hunter
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅馆。从另一边出去
step << BloodElf Hunter
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>从旅馆另一边退出
step << Priest/Mage
    #completewith SMtraining01
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前往 |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前往 |cRXP_FRIENDLY_Zaedana|r << Mage
    .cooldown item,6948,<0
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 1244 >>训练你的职业法术
    .target Lotheolan
    .cooldown item,6948,<0
	.xp <12,1
	.xp >14,1
step << Priest
    #label SMtraining01
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 8122 >>训练你的职业法术
    .target Lotheolan
    .cooldown item,6948,<0
	.xp <14,1
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞伊丹纳|r
    .train 145 >>训练你的职业法术
    .cooldown item,6948,<0
	.xp <12,1
	.xp >14,1
step << Mage
    #label SMtraining01
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞伊丹纳|r
    .train 1460 >>训练你的职业法术
    .cooldown item,6948,<0
	.xp <14,1
step << Rogue
    #completewith Zelanis
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前往 |cRXP_FRIENDLY_Zelanis|r
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r |T133644:0|t[扒窃] |cRXP_WARN_和|r |T132320:0|t[隐身] |cRXP_WARN_以便稍后完成任务|r
    .accept 9532 >>接任务: |cRXP_LOOT_找到克尔图斯·暗叶|r
    .train 2983 >>训练你的职业法术
    .target Zelanis
    .train 2983,1
    .xp <10,1
    .xp >14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r |T133644:0|t[扒窃] |cRXP_WARN_和|r |T132320:0|t[隐身] |cRXP_WARN_以便稍后完成任务|r
    .accept 9532 >>接任务: |cRXP_LOOT_找到克尔图斯·暗叶|r
    .train 1758 >>训练你的职业法术
    .target Zelanis
    .train 1758,1
    .xp <14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r |T133644:0|t[扒窃] |cRXP_WARN_和|r |T132320:0|t[隐身] |cRXP_WARN_以便稍后完成任务|r
    .accept 9532 >>接任务: |cRXP_LOOT_找到克尔图斯·暗叶|r
    .target Zelanis
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .train 921 >>训练 |T133644:0|t[Pick Pocket] 以便稍后执行任务
    .train 1784 >>训练 |T132320:0|t[隐身] 以便稍后完成任务
    .train 921,1
    .train 1784,1
    .target Zelanis
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .train 1784 >>训练 |T132320:0|t[隐身] 以便稍后完成任务
    .target Zelanis
step << BloodElf Rogue
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .train 921 >>训练 |T133644:0|t[Pick Pocket] 以便稍后执行任务
    .target Zelanis
step << !BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .train 2983 >>训练你的职业法术
    .target Zelanis
    .xp <10,1
    .xp >14,1
step << !BloodElf Rogue
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .train 1758 >>训练你的职业法术
    .target Zelanis
    .xp <14,1
step << Rogue
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >>进入旅馆
step << Rogue
    #label SMtraining01
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suntouched|r
    >>|cRXP_BUY_从他那里购买 a|r |T132798:0|t[Suntouched Special Reserve] |cRXP_BUY_|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
step << Rogue
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>从旅馆另一边退出
step << Paladin/Rogue
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>前往 |cRXP_FRIENDLY_Belil|r
step << Paladin/Rogue
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利尔|r
    .train 2580 >>训练 |T136248:0|t[采矿]。这将允许您从节点找到 |T135232:0|t|cRXP_LOOT_[原石]|r，以便制作 |T135248:0|t[磨刀石]（+2 武器伤害，持续 1 小时） << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
    .skill blacksmithing,1
step << Paladin/Rogue
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泽兰|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Zelan|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Zelan
    .skill blacksmithing,1
    .skill mining,1
step << Paladin/Rogue
    #completewith Defending
    .cast 2580 >>施放 |T136025:0|t[寻找矿物]
step << Paladin
    #completewith FirstTrialB
    .goto Silvermoon City,89.02,37.03,12,0
    .goto Silvermoon City,89.26,35.20,15 >>前往 |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9677 >>交任务: |cRXP_FRIENDLY_骑士领主布拉德瓦罗的召唤|r
    .accept 9678 >>接任务: |cRXP_LOOT_第一项试炼|r
    .target Knight-Lord Bloodvalor
    .isOnQuest 9677
step << Paladin
    #label FirstTrialB
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .accept 9678 >>接任务: |cRXP_LOOT_第一项试炼|r
    .target Knight-Lord Bloodvalor
step << Paladin
    #label SMtraining01
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 19834 >>训练你的职业法术
	.target Ithelis
	.target Osselan
	.xp <12,1
	.xp >14,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 647 >>训练你的职业法术
	.target Ithelis
	.target Osselan
	.xp <14,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>前往 |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMtraining01
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>前往 |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>前往 |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,<1
step << BloodElf Hunter
    .goto Silvermoon City,82.20,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈森尼斯|r
    .turnin 9673 >>交任务: |cRXP_FRIENDLY_野兽训练|r
    .train 4187 >>训练你的宠物法术 << tbc
    .target Halthenis
step << Hunter
    #label SMtraining01
    .goto Silvermoon City,82.39,26.09 << BloodElf
    .goto Silvermoon City,84.71,28.05 << !BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔纳|r << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪恩|r << !BloodElf
    >>|cRXP_WARN_将|r |T132162:0|t[野兽训练] |cRXP_WARN_拖到你的动作栏上。向你的宠物传授技能|r << BloodElf tbc
    .train 14281 >>训练你的职业法术
    .target Tana << BloodElf
    .target Zandine << !BloodElf
	.xp <12,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Rogue
    #completewith Louis
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Louis
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买两把|r |T135346:0|t[弯刀] |cRXP_BUY_|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买 a|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买两把|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买 a|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买两把|r |T135346:0|t[弯刀] |cRXP_BUY_|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 2027,<2 --Scimitar (2)
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Louis
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买 a|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 2027,<1 --Scimitar (1)
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    +在你的主手和副手中装备 |T135346:0|t[弯刀]
    .use 851
    .itemcount 851,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    +在你的主手中装备 |T135346:0|t[弯刀]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << skip
    +在你的副手中装备 |T135346:0|t[弯刀]
    .use 851
    .itemcount 851,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
--VV WIP
step << Rogue
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step << Rogue
    #completewith Defending
    .hs >>炉边至鹰翼广场
    .cooldown item,6948,>0
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20 >>乘电梯返回银月城
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << BloodElf Hunter skip
    .goto Silvermoon City,53.926,71.029
    >>建筑内部
    .turnin 9133 >>交任务: |cRXP_FRIENDLY_飞往银月城|r
    .accept 9134 >>接任务: |cRXP_LOOT_葛拉米|r
step << BloodElf Hunter skip
    .goto Eversong Woods,54.4,50.8
    >>前往: |cRXP_PICK_永歌森林|r
    .turnin 9134 >>交任务: |cRXP_FRIENDLY_葛拉米|r
    .accept 9135 >>接任务: |cRXP_LOOT_返回军需官雷米尔身边|r
step << BloodElf Hunter skip
    #completewith next
    .goto Eversong Woods,54.4,50.8
    .fly Tranquillien >>飞往 特兰奎利恩
step << BloodElf Hunter skip
    .goto Ghostlands,47.3,29.1
    .turnin 9135 >>交任务: |cRXP_FRIENDLY_返回军需官雷米尔身边|r
step << !Orc !Troll !Tauren !Rogue/!BloodElf Warlock
    #completewith SGrove
    .hs >>炉边至鹰翼广场
    .cooldown item,6948,>0
step << !Warlock
    #completewith SGrove
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
    .cooldown item,6948,<0 << Undead/BloodElf
step << Mage/Priest/Undead Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >>进入旅馆
    .cooldown item,6948,>0
	.xp <12,1
step << Mage/Priest/Undead Warlock
    #completewith FalconPMTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >>上楼去
    .cooldown item,6948,>0
	.xp <12,1
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珀纳瑞斯|r, 他在楼上
    .train 1244 >>训练你的职业法术
    .target Ponaris
    .cooldown item,6948,>0
	.xp <12,1
    .xp >14,1
step << Priest
    #label FalconPMTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珀纳瑞斯|r, 他在楼上
    .train 8122 >>训练你的职业法术
    .target Ponaris
    .cooldown item,6948,>0
	.xp <14,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳黛尔|r, 他在楼上
    .train 7300 >>训练你的职业法术
    .target Garridel
    .cooldown item,6948,>0
	.xp <12,1
    .xp >14,1
step << Mage
    #label FalconPMTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳黛尔|r, 他在楼上
    .train 145 >>训练你的职业法术
    .target Garridel
    .cooldown item,6948,>0
	.xp <14,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 705 >>训练你的职业法术
    .target Celoenus
    .cooldown item,6948,>0
    .xp <12,1
    .xp >14,1
step << Undead Warlock
    #completewith FalconPMTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞罗努斯|r, 他在楼上
    .train 6222 >>训练你的职业法术
    .target Celoenus
    .cooldown item,6948,>0
    .xp <14,1
step << BloodElf/Undead
    .goto Eversong Woods,46.63,63.83,40,0
    .goto Eversong Woods,45.04,65.51,40,0
    .goto Eversong Woods,46.57,65.84,40,0
    .goto Eversong Woods,45.24,67.85,40,0
    .goto Eversong Woods,46.66,67.71,40,0
    .goto Eversong Woods,47.05,68.83,40,0
    .goto Eversong Woods,42.89,65.47,40,0
    .goto Eversong Woods,38.45,65.63
    >>杀死 |cRXP_ENEMY_Springpaw Stalkers|r。掠夺他们的 |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target Springpaw Stalker
step << Undead/BloodElf
    #label Defending
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠萨蕾恩|r
    .turnin 9252 >>交任务: |cRXP_FRIENDLY_保卫晴风村|r
    .accept 9253 >>接任务: |cRXP_LOOT_符文看守者德尔雅|r
    .target Ranger Sareyn
--VV BloodElf !Hunter
step << Undead/BloodElf
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >>交任务: |cRXP_FRIENDLY_收集豹皮|r
    .target Velan Brightoak
--VV !Hunter
step << Undead/BloodElf
    .goto Eversong Woods,44.0,70.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_从他那里购买|r |T134285:0|t[一捆烟花] |cRXP_BUY_|r
    .collect 22777,1 --Bundle of Fireworks (1)
    .target Halis Dawnstrider
--VV !Hunter
step << Undead/BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Landra|r, |cRXP_FRIENDLY_Degolien|r upstairs, and |cRXP_FRIENDLY_Ardeyn, 他在楼下
    .accept 9144 >>接任务: |cRXP_LOOT_迷失在幽魂之地|r
    .turnin 9255 >>交任务: |cRXP_FRIENDLY_研究笔记|r
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务: |cRXP_FRIENDLY_警告晴风村|r
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>接任务: |cRXP_LOOT_焦痕谷|r
    .goto Eversong Woods,43.58,71.20
    .target Magistrix Landra Dawnstrider
    .target Ranger Degolien
    .target Ardeyn Riverwind
    .isQuestAvailable 9144
    --VV !Hunter
    --VV 9144 and 9258 need to hide if in qlog
step << Undead/BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Landra|r, |cRXP_FRIENDLY_Degolien|r upstairs, and |cRXP_FRIENDLY_Ardeyn, 他在楼下
    .turnin 9255 >>交任务: |cRXP_FRIENDLY_研究笔记|r
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务: |cRXP_FRIENDLY_警告晴风村|r
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>接任务: |cRXP_LOOT_焦痕谷|r
    .goto Eversong Woods,43.58,71.20
    .target Magistrix Landra Dawnstrider
    .target Ranger Degolien
    .target Ardeyn Riverwind
    --VV !Hunter
    --VV 9258 needs to hide if in qlog
step << !Undead !BloodElf
    #label Defending
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Landra|r, |cRXP_FRIENDLY_Degolien|r upstairs, and |cRXP_FRIENDLY_Ardeyn, 他在楼下
    .accept 9144 >>接任务: |cRXP_LOOT_迷失在幽魂之地|r
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>交任务: |cRXP_FRIENDLY_警告晴风村|r
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>接任务: |cRXP_LOOT_焦痕谷|r
    .goto Eversong Woods,43.58,71.20
    .target Magistrix Landra Dawnstrider
    .target Ranger Degolien
    .target Ardeyn Riverwind
step << Undead/BloodElf
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨瑟利尔男爵|r
    .turnin 9067 >>交任务: |cRXP_FRIENDLY_无尽的宴会|r
    .target Lord Saltheril
step << Undead/BloodElf
    #completewith next
    .destroy 23500 >>摧毁: |cRXP_ENEMY_萨瑟利尔庄园的宴会邀请函|r, 它在你的背包中. 不再需要它了
step
    #label SGrove
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉莉亚娜·河风|r
    .turnin 9258 >>交任务: |cRXP_FRIENDLY_焦痕谷|r
    .accept 8473 >>接任务: |cRXP_LOOT_痛苦的抉择|r
    .target Larianna Riverwind
    --VV !BloodElf/!Hunter
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Withered Green Keepers|r
    >>|cRXP_WARN_小心他们有|r |T132282:0|t[打击] |cRXP_WARN_这会造成两倍于正常伤害|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV !BloodElf/!Hunter
step
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    >>杀死 |cRXP_ENEMY_Old Whitebark|r。掠夺他以获得 |T133280:0|t[|cRXP_LOOT_Old Whitebark 的吊坠|r]
    >>|cRXP_WARN_使用 |T133280:0|t[|cRXP_LOOT_Old Whitebark's Pendant|r] 开始任务|r
    >>|cRXP_ENEMY_Old Whitebark|r |cRXP_WARN_重生时间为 7 分 30 秒|r
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >>接任务: |cRXP_LOOT_怀特巴克的坠饰|r
    .mob Old Whitebark
    .use 23228
    --VV !BloodElf/!Hunter
step
#loop
	.line Eversong Woods,36.07,83.10,36.21,85.47,33.24,87.69,32.05,87.25,32.63,83.57,33.46,81.99,34.47,83.08,36.07,83.10
	.goto Eversong Woods,36.07,83.10,40,0
	.goto Eversong Woods,36.21,85.47,40,0
	.goto Eversong Woods,33.24,87.69,40,0
	.goto Eversong Woods,32.05,87.25,40,0
	.goto Eversong Woods,32.63,83.57,40,0
	.goto Eversong Woods,33.46,81.99,40,0
	.goto Eversong Woods,34.47,83.08,40,0
	.goto Eversong Woods,36.07,83.10,40,0
    >>杀死 |cRXP_ENEMY_Withered Green Keepers|r
    >>|cRXP_WARN_小心他们有|r |T132282:0|t[打击] |cRXP_WARN_这会造成两倍于正常伤害|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
    --VV !BloodElf/!Hunter
step
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉莉亚娜·河风|r
    .turnin 8473 >>交任务: |cRXP_FRIENDLY_痛苦的抉择|r
    .turnin 8474 >>交任务: |cRXP_FRIENDLY_怀特巴克的坠饰|r
    .accept 10166 >>接任务: |cRXP_LOOT_怀特巴克的记忆|r
    .target Larianna Riverwind
    --VV !BloodElf/!Hunter
step << Rogue
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    #completewith next
    .goto Eversong Woods,37.79,86.25
    .cast 33980 >>使用 |T133280:0|t[|cRXP_LOOT_Old Whitebark's Pendant|r] 召唤 |cRXP_ENEMY_Whitebark's Spirit|r
    .use 28209
    .isOnQuest 10166
    --VV !BloodElf/!Hunter
step
    .goto Eversong Woods,37.79,86.25
    >>击败 |cRXP_ENEMY_Whitebark 的灵魂|r
    >>对话: |cRXP_FRIENDLY_怀特巴克的灵魂|r
    .turnin 10166 >>交任务: |cRXP_FRIENDLY_怀特巴克的记忆|r
    .target Whitebark's Spirit
    .use 28209
step << Undead/BloodElf
    .goto Eversong Woods,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_符文看守者德尔雅|r
    .turnin 9253 >>交任务: |cRXP_FRIENDLY_符文看守者德尔雅|r
    .target Runewarden Deryan
step << Mage
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22,40,0
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22
    >>杀死 |cRXP_ENEMY_Eversong Green Keepers|r。掠夺他们的 |cRXP_LOOT_Living Branch|r
    .complete 9404,1 --Living Branch (x1)
    .mob Eversong Green Keeper
step << Undead/BloodElf
    .abandon 8490 >>放弃增强我们的防御能力
    --VV Undead/BloodElf !Hunter
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 12-16 幽冥之地
#next 16-20 幽灵之地
#version 1
#group RestedXP 部落 1-30

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Dawnstrider, |cRXP_FRIENDLY_药剂师瑟德拉|r
    .turnin 9144 >>交任务: |cRXP_FRIENDLY_迷失在幽魂之地|r
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >>接任务: |cRXP_LOOT_倒下的信使|r
    .goto Eversong Woods,49.02,89.05
    .target Courier Dawnstrider
    .target Apothecary Thedra
step << Rogue
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step << BloodElf Warlock
    #completewith next
    >>杀死 |cRXP_ENEMY_Starving Ghostclaws|r 和 |cRXP_ENEMY_Mistbats|r。掠夺他们的 |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step << BloodElf Warlock
    .goto Ghostlands,43.66,15.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Purple Shard|r on the ground
    .accept 9619 >>接任务: |cRXP_LOOT_召唤符文|r
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,27.51,15.75,10,0
    .goto Ghostlands,27.35,15.01,8,0
    .goto Ghostlands,26.17,15.61,8,0
    .goto Ghostlands,26.09,14.56,8,0
    .goto Ghostlands,26.44,14.24,8,0
    .goto Ghostlands,26.74,14.38,8 >>上楼去
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,26.99,15.24
    .cast 30208 >>使用 |T134078:0|t[虚空石] 召唤一个 |cRXP_ENEMY_Summoned Voidwalker|r
    .use 23732
step << BloodElf Warlock
    .goto Ghostlands,26.99,15.24
    >>杀死|cRXP_ENEMY_Summoned Voidwalker|r
    .complete 9619,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 23732
step
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    .goto Ghostlands,46.75,13.42,40,0
    .goto Ghostlands,45.74,14.35,40,0
    .goto Ghostlands,44.94,16.92,40,0
    .goto Ghostlands,44.84,18.84,40,0
    .goto Ghostlands,45.36,19.92,40,0
    .goto Ghostlands,47.43,20.19,40,0
    .goto Ghostlands,48.56,19.02,40,0
    .goto Ghostlands,49.52,17.34,40,0
    .goto Ghostlands,51.08,16.71,40,0
    .goto Ghostlands,52.00,18.05,40,0
    .goto Ghostlands,55.22,14.72,40,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66
    >>杀死 |cRXP_ENEMY_Starving Ghostclaws|r 和 |cRXP_ENEMY_Mistbats|r。掠夺他们的 |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师瑟德拉|r, Dawnstrider
    .turnin 9147 >>交任务: |cRXP_FRIENDLY_倒下的信使|r
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >>接任务: |cRXP_LOOT_送往塔奎林的信件|r
    .goto Eversong Woods,48.98,88.99
    .target Apothecary Thedra
    .target Courier Dawnstrider
step << Rogue
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r
    .turnin 9148 >>交任务: |cRXP_FRIENDLY_送往塔奎林的信件|r
    .accept 9327 >>接任务: |cRXP_LOOT_被遗忘者|r << BloodElf
    .accept 9329 >>接任务: |cRXP_LOOT_被遗忘者|r << !BloodElf
    .target Arcanist Vandril
step << skip
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fp Tranquillien >>获取 Tranquillien 飞行路径
    .target Skymaster Sunwing
--VV !BloodElf/!Hunter
step << !BloodElf/!Warlock
    #xprate <1.5
    .goto Ghostlands,45.17,32.37,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_军需官雷米尔|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r << !BloodElf
    .turnin 9327 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << BloodElf
    .turnin 9329 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << !BloodElf
    .accept 9758 >>接任务: |cRXP_LOOT_返回奥术师范迪瑞尔身边|r
    .goto Ghostlands,44.77,32.44
    .accept 9130 >>接任务: |cRXP_LOOT_银月城的货物|r << BloodElf
    .goto Ghostlands,47.34,29.26 << BloodElf
    .accept 9152 >>接任务: |cRXP_LOOT_托博尔的补给品|r
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >>交任务: |cRXP_FRIENDLY_返回奥术师范迪瑞尔身边|r
    .accept 9138 >>接任务: |cRXP_LOOT_日冕村|r
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target High Executor Mavren
    .target Quartermaster Lymel
    .target Rathis Tomber
    .target Arcanist Vandril
step << BloodElf Warlock
    #xprate <1.5
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官玛尔伦|r
    .turnin 9327 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << BloodElf
    .turnin 9329 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << !BloodElf
    .accept 9758 >>接任务: |cRXP_LOOT_返回奥术师范迪瑞尔身边|r
    .target High Executor Mavren
step << BloodElf Warlock
    #xprate >1.4999
    .goto Ghostlands,45.17,32.37,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_顾问瓦尔文|r
    .accept 9199 >>接任务: |cRXP_LOOT_巨魔的邪符|r
    .goto Ghostlands,44.74,32.28
    .turnin 9327 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << BloodElf
    .turnin 9329 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << !BloodElf
    .accept 9758 >>接任务: |cRXP_LOOT_返回奥术师范迪瑞尔身边|r
    .goto Ghostlands,44.77,32.44
    .accept 9193 >>接任务: |cRXP_LOOT_调查阿曼尼墓穴|r
    .goto Ghostlands,44.84,32.81
    .target Deathstalker Maltendis
    .target High Executor Mavren
    .target Advisor Valwyn
step << !BloodElf/!Warlock
    #xprate >1.4999
    .goto Ghostlands,45.17,32.37,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_顾问瓦尔文|r, |cRXP_FRIENDLY_军需官雷米尔|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_顾问瓦尔文|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r << !BloodElf
    .accept 9199 >>接任务: |cRXP_LOOT_巨魔的邪符|r
    .goto Ghostlands,44.74,32.28
    .turnin 9327 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << BloodElf
    .turnin 9329 >>交任务: |cRXP_FRIENDLY_被遗忘者|r << !BloodElf
    .accept 9758 >>接任务: |cRXP_LOOT_返回奥术师范迪瑞尔身边|r
    .goto Ghostlands,44.77,32.44
    .accept 9193 >>接任务: |cRXP_LOOT_调查阿曼尼墓穴|r
    .goto Ghostlands,44.84,32.81
    .accept 9130 >>接任务: |cRXP_LOOT_银月城的货物|r << BloodElf
    .goto Ghostlands,47.34,29.26 << BloodElf
    .accept 9152 >>接任务: |cRXP_LOOT_托博尔的补给品|r
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >>交任务: |cRXP_FRIENDLY_返回奥术师范迪瑞尔身边|r
    .accept 9138 >>接任务: |cRXP_LOOT_日冕村|r
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target Deathstalker Maltendis
    .target High Executor Mavren
    .target Advisor Valwyn
    .target Quartermaster Lymel << !BloodElf
    .target Rathis Tomber
    .target Arcanist Vandril
step << BloodElf Warlock
    #sticky
    #label WPoster
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 9156 >>接任务: |cRXP_LOOT_通缉：纳克雷洛特和卢兹兰|r
    .goto Ghostlands,48.35,31.67
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    .home >>将你的炉石设置为宁静
    .target Innkeeper Kalarin
step << BloodElf Warlock
    #requires WPoster
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官雷米尔|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r
    .accept 9130 >>接任务: |cRXP_LOOT_银月城的货物|r
    .goto Ghostlands,47.34,29.26
    .accept 9152 >>接任务: |cRXP_LOOT_托博尔的补给品|r
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >>交任务: |cRXP_FRIENDLY_返回奥术师范迪瑞尔身边|r
    .accept 9138 >>接任务: |cRXP_LOOT_日冕村|r
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target Quartermaster Lymel
    .target Rathis Tomber
    .target Arcanist Vandril
step << BloodElf Warlock
    #requires WPoster
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官雷米尔|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r << !BloodElf
    .accept 9130 >>接任务: |cRXP_LOOT_银月城的货物|r << BloodElf
    .goto Ghostlands,47.34,29.26 << BloodElf
    .accept 9152 >>接任务: |cRXP_LOOT_托博尔的补给品|r
    .goto Ghostlands,47.27,28.59,10,0
    .goto Ghostlands,47.14,28.30
    .turnin 9758 >>交任务: |cRXP_FRIENDLY_返回奥术师范迪瑞尔身边|r
    .accept 9138 >>接任务: |cRXP_LOOT_日冕村|r
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    .target Quartermaster Lymel
    .target Rathis Tomber
    .target Arcanist Vandril
step << skip
    >>不要飞往银月城。与飞行管理员交谈。
    .goto Ghostlands,45.5,30.6
    .turnin 9130 >>交任务: |cRXP_FRIENDLY_银月城的货物|r
    .accept 9133 >>接任务: |cRXP_LOOT_飞往银月城|r
--BloodElf !Hunter !Warlock
step << BloodElf
    #xprate <1.5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .turnin 9130 >>交任务: |cRXP_FRIENDLY_银月城的货物|r
    .accept 9133 >>接任务: |cRXP_LOOT_飞往银月城|r << Warlock/Priest
    .target Skymaster Sunwing
step << BloodElf
    #xprate >1.4999
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .turnin 9130 >>交任务: |cRXP_FRIENDLY_银月城的货物|r
    .accept 9133 >>接任务: |cRXP_LOOT_飞往银月城|r << Priest
    .target Skymaster Sunwing
step << BloodElf Warlock
    #completewith RuneOS
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
step << BloodElf Warlock
    #completewith RuneOS
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
step << BloodElf Warlock
    #xprate <1.5
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨斯雷·蓝空|r
    .turnin 9133 >>交任务: |cRXP_FRIENDLY_飞往银月城|r
    .accept 9134 >>接任务: |cRXP_LOOT_葛拉米|r
    .target Sathren Azuredawn
step << BloodElf Warlock
    #xprate <1.5
    #completewith RuneOS
    .goto Silvermoon City,66.92,59.84,30,0
    .goto Silvermoon City,69.32,59.09,20,0
    .goto Silvermoon City,73.50,58.21,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
step << BloodElf Warlock
    #xprate >1.4999
    #completewith RuneOS
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .turnin 9619 >>交任务: |cRXP_FRIENDLY_召唤符文|r
    .train 705 >>训练你的职业法术
    .target Talionia
    .xp <12,1
    .xp >14,1
    .train 705,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .turnin 9619 >>交任务: |cRXP_FRIENDLY_召唤符文|r
    .train 6222 >>训练你的职业法术
    .target Talionia
    .xp <14,1
    .xp >16,1
    .train 6222,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .turnin 9619 >>交任务: |cRXP_FRIENDLY_召唤符文|r
    .train 1455 >>训练你的职业法术
    .target Talionia
    .xp <16,1
    .train 1455,1
step << BloodElf Warlock
    #label RuneOS
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .turnin 9619 >>交任务: |cRXP_FRIENDLY_召唤符文|r
    .target Talionia
step << BloodElf Warlock
    #completewith next
    .hs >>炉火至宁静
step << Rogue
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    .goto Ghostlands,57.54,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_濒死的血精灵|r
    .accept 9315 >>接任务: |cRXP_LOOT_阿诺克苏塔|r
    .target Dying Blood Elf
step << !Paladin
    #completewith next
    >>杀死|cRXP_ENEMY_Nerubis 守卫|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith FirstT
    >>杀死|cRXP_ENEMY_Nerubis 守卫|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    .goto Ghostlands,59.47,12.43,20,0
    .goto Ghostlands,59.83,10.22,20,0
    .goto Ghostlands,58.92,9.19,20,0
    .goto Ghostlands,60.72,9.46,20,0
    .goto Ghostlands,61.74,9.63,20,0
    .goto Ghostlands,62.86,11.04,20,0
    .goto Ghostlands,63.26,9.50,20,0
    .goto Ghostlands,62.76,12.68,20,0
    .goto Ghostlands,63.52,13.39,20,0
    .goto Ghostlands,62.00,14.21,20,0
    .goto Ghostlands,60.70,14.39,20,0
    .goto Ghostlands,60.34,16.13,20,0
    .goto Ghostlands,59.92,13.83,20,0
    .goto Ghostlands,62.86,11.04
    >>杀死 |cRXP_ENEMY_Anok'suten|r。他沿城镇道路逆时针巡逻，并进入建筑物
    >>|cRXP_WARN_他向|r |cRXP_ENEMY_Nerubis Guards|r |cRXP_WARN_寻求帮助，范围为 60 码，生命值低于 50%|r
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r
    .complete 9315,1 --Kill Anok'suten (x1)
    .unitscan Anok'suten
step << !Paladin
#loop
	.line Ghostlands,59.47,12.43,59.83,10.22,58.92,9.19,60.72,9.46,61.74,9.63,62.86,11.04,63.26,9.50,62.76,12.68,63.52,13.39,62.00,14.21,60.70,14.39,60.34,16.13,59.92,13.83,62.86,11.04,59.47,12.43
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,59.47,12.43,30,0
    >>杀死|cRXP_ENEMY_Nerubis 守卫|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith next
    >>游到岛上
    .goto Ghostlands,68.53,8.66,20 >>进入洞穴
step << Paladin
    #completewith next
    .goto Ghostlands,68.41,7.42
    .cast 3365 >>点击 |cRXP_PICK_Gilded Brazier|r 召唤 |cRXP_ENEMY_Sangrias Stillblade|r
step << Paladin
    #label FirstT
    .goto Ghostlands,68.50,9.77
    >>杀死 |cRXP_ENEMY_Sangrias Stillblade|r
    .complete 9678,1 --Undergo the First Trial
    .mob Sangrias Stillblade
step << Paladin
#loop
	.line Ghostlands,68.61,10.24,69.93,9.00,70.52,5.81,69.54,4.65,68.63,4.93,66.76,5.54,66.70,6.58,67.41,9.70,68.61,10.24
	.goto Ghostlands,68.61,10.24,30,0
	.goto Ghostlands,69.93,9.00,30,0
	.goto Ghostlands,70.52,5.81,30,0
	.goto Ghostlands,69.54,4.65,30,0
	.goto Ghostlands,68.63,4.93,30,0
	.goto Ghostlands,66.76,5.54,30,0
	.goto Ghostlands,66.70,6.58,30,0
	.goto Ghostlands,67.41,9.70,30,0
	.goto Ghostlands,68.61,10.24,30,0
    >>杀死|cRXP_ENEMY_Nerubis 守卫|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠瓦兰娜|r
    .accept 9143 >>接任务: |cRXP_LOOT_塞布索雷的巨魔|r
    .target Ranger Valanna
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格兰尼斯·月晨|r
    .accept 9157 >>接任务: |cRXP_LOOT_被遗忘的仪祭|r
    .target Geranis Whitemorn
step
#loop
	.line Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
	.goto Ghostlands,73.64,14.43,30,0
    >>杀死 |cRXP_ENEMY_Shadowpine Rippers|r 和 |cRXP_ENEMY_Shadowpine Witches|r。掠夺他们的 |cRXP_LOOT_Troll Ears|r
    .complete 9143,1 --Collect Zeb'Sora Troll Ear (x6)
    .mob Shadowpine Ripper
    .mob Shadowpine Witch
step
    .goto Ghostlands,73.48,32.15,15,0
    .goto Ghostlands,72.50,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远行者塞蒂娜|r
    .accept 9158 >>接任务: |cRXP_LOOT_瘟疫的使者|r
    .target Farstrider Sedina
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_和|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r << Paladin
    .collect 1179,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0500 << Priest/Mage/Warlock/Druid
    .money <0.0540 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_和|r |T133918:0|t[长颚泥鲷] |cRXP_BUY_|r << Paladin
    .collect 1179,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0250 << Priest/Mage/Warlock/Druid
    .money <0.0290 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133970:0|t[羊排] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[瓜汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.2000 << !Paladin
-- .money <0.3000 << Paladin
--VV Would cause too many potential money issues
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133970:0|t[羊排] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[瓜汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.1000 << !Paladin
-- .money <0.2000 << Paladin
--VV Would cause too many potential money issues
step
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    .goto Ghostlands,72.68,41.63
    >>杀死 |cRXP_ENEMY_Ghostclaw Lynxes|r
    .complete 9158,1 --Kill Ghostclaw Lynx (x10)
    .mob Ghostclaw Lynx
step
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远行者塞蒂娜|r, Solanna, Wanted Poster, |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9158 >>交任务: |cRXP_FRIENDLY_瘟疫的使者|r
    .accept 9159 >>接任务: |cRXP_LOOT_控制瘟疫|r
    .goto Ghostlands,72.50,32.14
    .accept 9276 >>接任务: |cRXP_LOOT_进攻塞布提拉|r
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>接任务: |cRXP_LOOT_克尔加什的徽记！|r
    .goto Ghostlands,72.24,31.14
    .accept 9214 >>接任务: |cRXP_LOOT_暗松巨魔的武器|r
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
    .xp <15,1
step
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远行者塞蒂娜|r, Solanna, Wanted Poster, |cRXP_FRIENDLY_游侠克雷安|r, |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9158 >>交任务: |cRXP_FRIENDLY_瘟疫的使者|r
    .accept 9159 >>接任务: |cRXP_LOOT_控制瘟疫|r
    .goto Ghostlands,72.50,32.14
    .accept 9276 >>接任务: |cRXP_LOOT_进攻塞布提拉|r
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>接任务: |cRXP_LOOT_克尔加什的徽记！|r
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>接任务: |cRXP_LOOT_水中鬼魂|r
    .goto Ghostlands,72.21,29.78
    .accept 9214 >>接任务: |cRXP_LOOT_暗松巨魔的武器|r
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
    .xp <15,1
step
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远行者塞蒂娜|r, Wanted Poster, |cRXP_FRIENDLY_游侠克雷安|r
    .turnin 9158 >>交任务: |cRXP_FRIENDLY_瘟疫的使者|r
    .accept 9159 >>接任务: |cRXP_LOOT_控制瘟疫|r
    .goto Ghostlands,72.50,32.14
    .accept 9215 >>接任务: |cRXP_LOOT_克尔加什的徽记！|r
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>接任务: |cRXP_LOOT_水中鬼魂|r
    .goto Ghostlands,72.21,29.78
    .target Farstrider Sedina
    .target Ranger Krenn'an
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133970:0|t[羊排] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[瓜汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.2000 << !Paladin
-- .money <0.3000 << Paladin
--VV Would cause too many potential money issues
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133970:0|t[羊排] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[瓜汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
-- .money <0.1000 << !Paladin
-- .money <0.2000 << Paladin
--VV Would cause too many potential money issues
step << Rogue
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step
    #xprate <1.7
    #completewith Aquantion
    >>杀死 |cRXP_ENEMY_Ravening Apparitions|r 和 |cRXP_ENEMY_Vengeful Apparitions|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,71.31,15.24,30,0
    .goto Ghostlands,71.11,15.38,30,0
    .goto Ghostlands,71.16,13.76,30,0
    .goto Ghostlands,70.65,13.67,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88
    >>在水下 |cRXP_PICK_Glistening Mules|r 中获取 |cRXP_PICK_Wavefront Medallions|r
    .complete 9157,1 --Collect Wavefront Medallion (x8)
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格兰尼斯·月晨|r
    .turnin 9157 >>交任务: |cRXP_FRIENDLY_被遗忘的仪祭|r
    .accept 9174 >>接任务: |cRXP_LOOT_消灭阿奎艾森|r
    .target Geranis Whitemorn
step
    #completewith next
    .goto Ghostlands,71.32,14.93
    .cast 28226 >>点击 |cRXP_PICK_Altar|r 来召唤 |cRXP_ENEMY_Aquantion|r
step
    .goto Ghostlands,71.31,14.58
    >>杀死 |cRXP_ENEMY_Aquantion|r
    >>|cRXP_WARN_他拥有精英级别的生命值，并且能造成冰霜伤害|r
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] |cRXP_WARN_并且|r |T135963:0|t[正义之锤] << BloodElf Paladin
    >>|cRXP_WARN_他免疫|r |T135963:0|t[正义之锤] << !BloodElf Paladin
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] |cRXP_WARN_并且|r |T136183:0|t[恐惧] << BloodElf Warlock
    >>|cRXP_WARN_他对|r |T136183:0|t[恐惧]免疫 << !BloodElf Warlock
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] |cRXP_WARN_并且|r |T136184:0|t[心灵尖啸] << BloodElf Priest
    >>|cRXP_WARN_他对|r |T136184:0|t[心灵尖啸]免疫 << !BloodElf Priest
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流]、|T135846:0|t[寒冰箭]、|T135848:0|t[寒冰新星]、|cRXP_WARN_以及|r |T135843:0|t[寒冰护甲] << BloodElf Mage
    >>|cRXP_WARN_他免疫|r |T135846:0|t[冰霜箭]、|T135848:0|t[冰霜新星]、|cRXP_WARN_和|r |T135843:0|t[冰霜护甲] << !BloodElf Mage
    >>|cRXP_WARN_在召唤他之前，一定要先用|r |T136006:0|t[抑制魔法] |cRXP_WARN_增强自己|r << Mage
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] |cRXP_WARN_并且|r |T132155:0|t[凿击] << BloodElf Rogue
    >>|cRXP_WARN_他免疫|r |T132155:0|t[凿击] << !BloodElf Rogue
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] << BloodElf Hunter
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .train 8122,3 << Priest
    .train 604,3 << Mage
step << Priest/Mage
    .goto Ghostlands,71.31,14.58
    >>杀死 |cRXP_ENEMY_Aquantion|r
    >>|cRXP_WARN_他拥有精英级别的生命值，并且能造成冰霜伤害|r
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流] << BloodElf Priest
    >>|cRXP_WARN_他免疫|r |T136222:0|t[奥术洪流]、|T135846:0|t[寒冰箭]、|T135848:0|t[寒冰新星]、|cRXP_WARN_以及|r |T135843:0|t[寒冰护甲] << BloodElf Mage
    >>|cRXP_WARN_他免疫|r |T135846:0|t[冰霜箭]、|T135848:0|t[冰霜新星]、|cRXP_WARN_和|r |T135843:0|t[冰霜护甲] << !BloodElf Mage
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
step
    #label Aquantion
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格兰尼斯·月晨|r
    .turnin 9174 >>交任务: |cRXP_FRIENDLY_消灭阿奎艾森|r
    .target Geranis Whitemorn
step
    #xprate <1.7
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88
    >>杀死 |cRXP_ENEMY_Ravening Apparitions|r 和 |cRXP_ENEMY_Vengeful Apparitions|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob Ravening Apparition
    .mob Vengeful Apparition
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠瓦兰娜|r
    .turnin 9143 >>交任务: |cRXP_FRIENDLY_塞布索雷的巨魔|r
    .accept 9146 >>接任务: |cRXP_LOOT_向赫里奥斯中尉报到|r
    .target Ranger Valanna
step
    #xprate <1.5
#loop
	.line Ghostlands,59.47,12.43,59.83,10.22,58.92,9.19,60.72,9.46,61.74,9.63,62.86,11.04,63.26,9.50,62.76,12.68,63.52,13.39,62.00,14.21,60.70,14.39,60.34,16.13,59.92,13.83,62.86,11.04,59.47,12.43
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,59.47,12.43,30,0
    .xp 13+10150 >>升级至 9275+/11000xp
step << Paladin
    #xprate 1.49-1.58
#loop
	.line Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
	.goto Ghostlands,73.64,14.43,30,0
    .xp 15+8267 >>升级至 8267+/13600xp
step << !Rogue
    #xprate 1.59-1.68
#loop
	.line Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
	.goto Ghostlands,73.64,14.43,30,0
    .xp 15+10840 >>升级至 10840+/13600xp << !Paladin
    .xp 15+7912 >>升级至 7912+/13600xp << Paladin
    .train 1460,1 << Mage
    .train 6222,1 << Warlock
step << !Rogue
    #xprate >1.6999
#loop
	.line Ghostlands,73.64,14.43,73.77,11.83,74.70,11.89,74.75,9.70,75.89,8.49,76.87,8.54,78.20,9.68,77.70,12.61,75.88,10.23,76.00,13.71,73.64,14.43
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
	.goto Ghostlands,73.64,14.43,30,0
    .xp 15+10668 >>升级至 10668+/13600xp << !Paladin
    .xp 15+7557 >>升级至 7557+/13600xp << Paladin
    .train 1460,1 << Mage
    .train 6222,1 << Warlock
step << Priest/Mage/Warlock/Rogue/Druid
    #xprate <1.5
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step << !Rogue
    #xprate >1.4999
    #completewith next
    .goto Ghostlands,73.65,10.38,1,0
    .goto Ghostlands,69.46,10.04
    >>|cRXP_WARN_确保你死在巨魔镇最西北边，或者岛上|r
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
    .train 1460,1 << Mage
    .train 6222,1 << Warlock
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, Wanted Poster << !BloodElf/!Warlock
    .turnin 9315 >>交任务: |cRXP_FRIENDLY_阿诺克苏塔|r
    .turnin 9138 >>交任务: |cRXP_FRIENDLY_日冕村|r
    .accept 9139 >>接任务: |cRXP_LOOT_金雾村|r
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >>接任务: |cRXP_LOOT_通缉：纳克雷洛特和卢兹兰|r << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
    .isQuestComplete 9315
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, Wanted Poster << !BloodElf/!Warlock
    .turnin 9138 >>交任务: |cRXP_FRIENDLY_日冕村|r
    .accept 9139 >>接任务: |cRXP_LOOT_金雾村|r
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >>接任务: |cRXP_LOOT_通缉：纳克雷洛特和卢兹兰|r << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
step
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, Wanted Poster << !BloodElf/!Warlock
    .turnin 9315 >>交任务: |cRXP_FRIENDLY_阿诺克苏塔|r
    .turnin 9138 >>交任务: |cRXP_FRIENDLY_日冕村|r
    .accept 9139 >>接任务: |cRXP_LOOT_金雾村|r
    .goto Ghostlands,46.55,28.38,10,0 << Rogue
    .goto Ghostlands,46.08,28.33 << Rogue
    .goto Ghostlands,46.08,28.33,10,0 << !Rogue
    .goto Ghostlands,46.55,28.38 << !Rogue
    .accept 9156 >>接任务: |cRXP_LOOT_通缉：纳克雷洛特和卢兹兰|r << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
    .isQuestComplete 9315
step
    #xprate >1.4999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, Wanted Poster << !BloodElf/!Warlock
    .turnin 9138 >>交任务: |cRXP_FRIENDLY_日冕村|r
    .accept 9139 >>接任务: |cRXP_LOOT_金雾村|r
    .goto Ghostlands,46.55,28.38,10,0 << Rogue
    .goto Ghostlands,46.08,28.33 << Rogue
    .goto Ghostlands,46.08,28.33,10,0 << !Rogue
    .goto Ghostlands,46.55,28.38 << !Rogue
    .accept 9156 >>接任务: |cRXP_LOOT_通缉：纳克雷洛特和卢兹兰|r << !BloodElf/!Warlock
    .goto Ghostlands,48.35,31.67 << !BloodElf/!Warlock
    .target Arcanist Vandril
step << Rogue
    #xprate <1.5
    +在你的主手和副手上装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,2
    .itemStat 16,QUALITY,<7
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #xprate <1.5
    +在你的主手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << skip
    #xprate <1.5
    +在你的副手中装备 |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
--VV WIP
step << skip
    >>与主厨 Mouldier 交谈
>>对话: |cRXP_FRIENDLY_大厨师莫迪尔|r
    .accept 9171 >>接任务: |cRXP_LOOT_松脆蜘蛛腿|r
    .goto Ghostlands,48.43,30.93
    .target Master Chef Mouldier
step << !BloodElf/!Warlock
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    .home >>将你的炉石设置为宁静
    .target Innkeeper Kalarin
step << Mage/Priest/Warlock
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132562:0|t[学徒靴] |cRXP_BUY_|r
    .collect 22991,1,9281,1 --Collect Apprentice Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter wotlk
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132538:0|t[沼泽行者靴] |cRXP_BUY_|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132538:0|t[沼泽行者靴] |cRXP_BUY_和|r |T135277:0|t[宁静火焰] |cRXP_BUY_|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .collect 28164,1,9281,1 << Hunter tbc --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter TBC
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132538:0|t[沼泽行者靴] |cRXP_BUY_|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T135277:0|t[Tranquillien Flamberge] |cRXP_BUY_|r
    .collect 28164,1,9281,1 << Hunter tbc --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << skip
    #sticky
    #completewith Poster13
    .money <0.1300
    >>如果你之前负担不起 2 小时的剑术训练，可以飞往银月城接受武器训练
    .goto Silvermoon City,91.2,38.7
    .train 202 >>训练 2h 剑
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132535:0|t[志愿者胫甲] |cRXP_BUY_和|r |T135277:0|t[宁静的火焰] |cRXP_BUY_|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemStat 8,LEVEL,<15
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132535:0|t[志愿者的胫甲] |cRXP_BUY_|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T135277:0|t[Tranquillien Flamberge] |cRXP_BUY_|r
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Mage/Priest/Warlock
    #completewith ManaEssence
    +装备 |T132562:0|t[学徒靴]
    .use 22991
    .itemcount 22991,1
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter wotlk
    #completewith ManaEssence
    +装备 |T132538:0|t[沼泽行者之靴]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    #label Huntertbc1
    #completewith ManaEssence
    +装备 |T132538:0|t[沼泽行者之靴] 和 |T135277:0|t[宁静之焰]
    .use 22992
    .use 28164
    .itemcount 22992,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter tbc
    #label Huntertbc2
    #requires Huntertbc1
    #completewith ManaEssence
    +装备 |T132538:0|t[沼泽行者之靴]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter tbc
    #requires Huntertbc2
    #completewith ManaEssence
    +装备 |T135277:0|t[宁静火焰]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    #label Paladinwep1
    #completewith ManaEssence
    +装备 |T132535:0|t[志愿者胫甲] 和 |T135277:0|t[宁静火焰]
    .use 22993
    .use 28164
    .itemcount 22993,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin
    #label Paladinwep2
    #requires Paladinwep1
    #completewith ManaEssence
    +装备 |T132535:0|t[志愿者胫甲]
    .use 22993
    .itemcount 22993,1
    .itemStat 8,LEVEL,<15
step << Paladin
    #requires Paladinwep2
    #completewith ManaEssence
    +装备 |T135277:0|t[宁静火焰]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step
    #completewith ManaEssence
    .abandon 9315 >>抛弃阿诺克苏滕
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r
    .accept 9149 >>接任务: |cRXP_LOOT_瘟疫海岸|r
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan01
    #completewith ManaEssence
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan01
    #completewith ManaEssence
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan01
    #completewith ManaEssence
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r, |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, |cRXP_FRIENDLY_顾问瓦尔文|r, Dame, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .accept 9149 >>接任务: |cRXP_LOOT_瘟疫海岸|r
    .goto Ghostlands,47.67,34.87
    .accept 9155 >>接任务: |cRXP_LOOT_前往死亡之痕|r
    .goto Ghostlands,46.02,33.58
    .accept 9193 >>接任务: |cRXP_LOOT_调查阿曼尼墓穴|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>接任务: |cRXP_LOOT_调查安达洛斯|r
    .goto Ghostlands,44.88,32.51
    .accept 9199 >>接任务: |cRXP_LOOT_巨魔的邪符|r
    .accept 9192 >>接任务: |cRXP_LOOT_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>接任务: |cRXP_LOOT_重建历史|r
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Advisor Valwyn
    .target Dame Auriferous
    .target Deathstalker Maltendis
    .target Magister Darenis
--VV 9193 and 9199 need to hide if in qlog
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, |cRXP_FRIENDLY_顾问瓦尔文|r, Dame, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .accept 9155 >>接任务: |cRXP_LOOT_前往死亡之痕|r
    .goto Ghostlands,46.02,33.58
    .accept 9193 >>接任务: |cRXP_LOOT_调查阿曼尼墓穴|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>接任务: |cRXP_LOOT_调查安达洛斯|r
    .goto Ghostlands,44.88,32.51
    .accept 9199 >>接任务: |cRXP_LOOT_巨魔的邪符|r
    .accept 9192 >>接任务: |cRXP_LOOT_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>接任务: |cRXP_LOOT_重建历史|r
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Advisor Valwyn
    .target Dame Auriferous
    .target Deathstalker Maltendis
    .target Magister Darenis
    --VV 9193 and 9199 need to hide if in qlog
step << Druid
	#completewith DruidTrain1
	.cast 18960 >>施法传送：月光林地
	.zoneskip Moonglade
	.xp <14,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 782 >>训练你的职业法术
	.target Loganaar
    .cooldown item,6948,>0
	.xp <14,1
    .xp >16,1
step << Druid
    #label DruidTrain1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 783 >>训练你的职业法术 << wotlk
    .train 8925 >>训练你的职业法术 << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
step << !Shaman !Warrior !Druid !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith SMTraining2
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
step << !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate >1.4999
    #completewith SMTraining2
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
    .xp <16,1 << Rogue
step << !Shaman !Warrior !Druid !Mage !BloodElf/!Warlock !Paladin
    #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
step << !Shaman !Warrior !Druid !Mage !BloodElf/!Warlock
    #xprate >1.4999
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .xp <16,1 << Rogue
step << Rogue
    .abandon 9491 >>抛弃贪婪
step << Rogue
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前往 |cRXP_FRIENDLY_Zelanis|r
    .xp <16,1
step << Rogue
    #label SMTraining2
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .accept 10372 >>接任务: |cRXP_LOOT_谨慎的询问|r
    .train 6761 >>训练你的职业法术
    .target Zelanis
    .xp <16,1
step << Rogue
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买两把|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买 a|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <16,1
step << Rogue
    #completewith Clearing
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .xp <16,1
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>乘电梯返回银月城
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .xp <16,1
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .xp <16,1
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前往 |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9678 >>交任务: |cRXP_FRIENDLY_第一项试炼|r
    .accept 9681 >>接任务: |cRXP_LOOT_掌握力量|r
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇士巴卡希|r
    .train 647 >>训练你的职业法术 << wotlk
    .target Champion Bachi
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇士巴卡希|r
    .train 7294 >>训练你的职业法术 << tbc
    .train 62124 >>训练你的职业法术 << wotlk
    .target Champion Bachi
	.xp <16,1
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>|cRXP_WARN_跳下|r |cRXP_FRIENDLY_Bachi 后面的洞|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师阿斯塔洛·血誓|r
    .turnin 9681 >>交任务: |cRXP_FRIENDLY_掌握力量|r
    .accept 9684 >>接任务: |cRXP_LOOT_驾驭圣光|r << wotlk
    .accept 63866 >>接任务: |cRXP_LOOT_驾驭圣光|r << tbc
    .target Magister Astalor Bloodsworn
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    #xprate >1.4999
    .goto Silvermoon City,92.61,36.80
    >>在 |cRXP_FRIENDLY_Magister|r 上使用 |T134867:0|t[闪光容器]
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target Blood Elf Magister
    .use 24157
step << Paladin tbc
    #xprate >1.4999
    .goto Silvermoon City,92.61,36.80
    >>在 |cRXP_FRIENDLY_M'uru|r 上使用 |T134867:0|t[闪光容器]
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target M'uru
    .use 185956
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>跑回 |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9684 >>交任务: |cRXP_FRIENDLY_驾驭圣光|r << wotlk
    .turnin 63866 >>交任务: |cRXP_FRIENDLY_驾驭圣光|r << tbc
    .accept 9685 >>接任务: |cRXP_LOOT_救赎死者|r
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 647 >>训练你的职业法术
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate >1.4999
    #label SMTraining2
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 7294 >>训练你的职业法术 << tbc
    .train 62124 >>训练你的职业法术 << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>进入旅馆
step << Paladin
    #xprate >1.4999
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>前往 |cRXP_FRIENDLY_Stillblade|r
step << Paladin
    #xprate >1.4999
    .goto Silvermoon City,80.16,60.24
    >>在 |cRXP_FRIENDLY_Stillblade|r 上使用 |T134723:0|t[Filled Shimmering Vessel]
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target Blood Knight Stillblade
    .use 24184
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9404 >>交任务: |cRXP_FRIENDLY_活动的树木|r
    .train 1460,1
    .target Instructor Antheol
 step << Mage
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .train 1460,1
step << BloodElf Priest
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨斯雷·蓝空|r
    .turnin 9133 >>交任务: |cRXP_FRIENDLY_飞往银月城|r
    .accept 9134 >>接任务: |cRXP_LOOT_葛拉米|r
    .target Sathren Azuredawn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师维纳|r
    >>|cRXP_BUY_如果便宜的话，从 AH 购买 a|r |T135144:0|t[高级魔杖] |cRXP_BUY_|r
    >>|cRXP_WARN_如果它们都太贵，请跳过此步骤|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << BloodElf Priest
    .abandon 9133 >>放弃飞往银月城
step << Priest/Mage
    #completewith SMTraining2
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前往 |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前往 |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 8122 >>训练你的职业法术
    .target Lotheolan
	.xp <14,1
	.xp >16,1
step << Priest
    #label SMTraining2
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 8102 >>训练你的职业法术
    .target Lotheolan
	.xp <16,1
step << Mage
    #label SMtraining2
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞伊丹纳|r
    .train 1460 >>训练你的职业法术
	.xp <14,1
step << !BloodElf Warlock
    #completewith SMTraining2
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
step << !BloodElf Warlock
    #label SMTraining2
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .train 6222 >>训练你的职业法术
    .target Talionia
    .xp <14,1
step << !Shaman !Warrior !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith ManaEssence
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Shaman !Warrior !Druid !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
    .zoneskip Ghostlands
    .cooldown item,6948,<0
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Shaman !Warrior !Druid !BloodElf/!Warlock !Paladin
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛拉米|r
    .fly Tranquillien >>飞往 特兰奎利恩
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Rogue !Shaman !Warrior !BloodElf/!Warlock
    #xprate >1.4999
    #completewith ManaEssence
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
step << !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate >1.4999
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
    .zoneskip Ghostlands
    .cooldown item,6948,<0
    .xp <16,1 << Rogue
step << BloodElf Priest
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛拉米|r
    .turnin 9134 >>交任务: |cRXP_FRIENDLY_葛拉米|r
    .accept 9135 >>接任务: |cRXP_LOOT_返回军需官雷米尔身边|r
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
step << !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate >1.4999
    #completewith SanctumOTM
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛拉米|r
    .fly Tranquillien >>飞往 特兰奎利恩
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
    .xp <16,1 << Rogue
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << BloodElf Priest
    .goto Ghostlands,47.34,29.26
>>对话: |cRXP_FRIENDLY_军需官雷米尔|r
    .turnin 9135 >>交任务: |cRXP_FRIENDLY_返回军需官雷米尔身边|r
    .target Quartermaster Lymel
    .isQuestComplete 9135
step << BloodElf Priest
    .abandon 9134 >>抛弃天空女王格洛明
step
    #completewith SanctumOTM
    >>杀死 |cRXP_ENEMY_Luzran|r |cRXP_WARN_如果你能找到一个队伍来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Gangled Cannibals|r 和 |cRXP_ENEMY_Risen Hungerers|r。掠夺 |cRXP_ENEMY_Risen Hungerers|r 以获取他们的 |cRXP_LOOT_Rotting Hearts|r
    >>|cRXP_WARN_要小心|r |cRXP_ENEMY_Gangled Cannibals|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_(增加伤害和攻击速度) 在低生命值时|r
    >>|cRXP_WARN_请小心|r |cRXP_ENEMY_Risen Hungerers|r |cRXP_WARN_cast|r |T132278:0|t[吸血] |cRXP_WARN_(10 点伤害吸血)|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1,-1 --Rotting Hearts (10)
    .mob Risen Hungerer
    .mob Gangled Cannibal
step
    #label SanctumOTM
    .goto Ghostlands,35.18,32.85,100 >>前往月神殿
    .isOnQuest 9150
step
    #label ManaEssence
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93,40,0
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93
    >>杀死 |cRXP_ENEMY_Arcane Devourers|r 和 |cRXP_ENEMY_Mana Shifters|r。掠夺他们的 |cRXP_LOOT_Mana Essence|r
    .complete 9150,1 --Collect Crystallized Mana Essence (x8)
    .mob Arcane Devourer
    .mob Mana Shifter
step
    .goto Ghostlands,33.55,26.55
    >>抢劫商队中的 |cRXP_PICK_补给箱|r
    .complete 9152,1 --Collect Rathis Tomber's Supplies (x1)
step << !BloodElf/!Rogue
    #completewith Andaroth
    .goto Ghostlands,37.69,20.68,40,0
    >>杀死 |cRXP_ENEMY_Spindleweb Spiders|r。掠夺它们的 |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step << BloodElf Rogue
    #completewith KeltusD
    .goto Ghostlands,37.69,20.68,40,0
    >>杀死 |cRXP_ENEMY_Spindleweb Spiders|r。掠夺它们的 |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith Andaroth
    >>杀死 |cRXP_ENEMY_Sentinel 间谍|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step << BloodElf Rogue
    #label KeltusD
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克尔图斯·暗叶|r
    >>|cRXP_WARN_不要杀死|r |cRXP_ENEMY_Sentinel Leader|r
    >>|cRXP_FRIENDLY_Keltus|r|cRXP_WARN_ 的相位可能存在问题。如果他不在那里，那么游到永歌森林再回来|r
    .turnin 9532 >>交任务: |cRXP_FRIENDLY_找到克尔图斯·暗叶|r
    .accept 9460 >>接任务: |cRXP_LOOT_窃取情报|r
    .target Keltus Darkleaf
step << BloodElf Rogue
    #completewith next
    >>前往 |cRXP_PICK_Shrine|r
    .complete 9160,2 --Investigate An'daroth
step << BloodElf Rogue
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48,30,0
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48
    >>|T132320:0|t[隐身] |cRXP_WARN_然后|r |T133644:0|t[扒窃] |cRXP_WARN_这个|r |cRXP_ENEMY_哨兵首领|r |cRXP_WARN_为她|r |cRXP_LOOT_蕾丝手帕|r
    >>|cRXP_WARN_如果你激怒了她，就逃跑并重置她|r
    .complete 9460,1 --Lacy Handkerchief (x1)
    .mob Sentinel Leader
step
    #label Andaroth
    .goto Ghostlands,36.94,15.73
    >>前往 |cRXP_PICK_Shrine|r
    .complete 9160,2 --Investigate An'daroth
step
#loop
	.line Ghostlands,38.21,17.44,36.67,17.00,35.87,14.42,34.77,12.01,35.94,11.58,38.51,13.19,37.50,14.67,38.21,17.44
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
	.goto Ghostlands,38.21,17.44,35,0
    >>杀死 |cRXP_ENEMY_Sentinel 间谍|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step
    #xprate <1.5
#loop
	.line Ghostlands,38.21,17.44,36.67,17.00,35.87,14.42,34.77,12.01,35.94,11.58,38.51,13.19,37.50,14.67,38.21,17.44
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
	.goto Ghostlands,38.21,17.44,35,0
    .xp 14+5200 >>升级至 5200+/12300xp
step << BloodElf Rogue
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克尔图斯·暗叶|r
    .turnin 9460 >>交任务: |cRXP_FRIENDLY_窃取情报|r
    .accept 9618 >>接任务: |cRXP_LOOT_交回报告|r
    >>|cRXP_FRIENDLY_Keltus|r|cRXP_WARN_ 的相位可能存在问题。如果他不在那里，那么游到永歌森林再回来|r
    .target Keltus Darkleaf
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_如果你能找到一个小组来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48,30,0
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48
    >>杀死 |cRXP_ENEMY_Quel'dorei 幽灵|r 和 |cRXP_ENEMY_Quel'dorei 幽灵|r
    >>|cRXP_WARN_当他们施放|r |T136205:0|t[逃避] |cRXP_WARN_(增加躲避几率)时要小心，因为他们的生命值低于 50%|r << Rogue/Paladin
    .complete 9139,1 --Kill Quel'dorei Ghost (x6)
    .complete 9139,2 --Kill Quel'dorei Wraith (x4)
    .mob Quel'dorei Ghost
    .mob Quel'dorei Wraith
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Spindleweb Spiders|r。掠夺它们的 |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith next
    .goto Ghostlands,18.88,13.73,80 >>前往海岸
step
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17
    >>杀死 |cRXP_ENEMY_Zombified Grimscales|r 和 |cRXP_ENEMY_Withered Grimscales|r。掠夺他们的 |cRXP_LOOT_Plagued Murloc Spines|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Zombified Grimscale|r's|r |T136066:0|t[发烧疲劳] |cRXP_WARN_（降低智力和精神 6 点，持续 10 分钟）|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Withered Grimscale|r's|r |T135914:0|t[Decayed Agility] |cRXP_WARN_（降低敏捷 18 点，持续 5 分钟）|r  << !Mage !Priest !Warlock
    >>|cRXP_WARN_移出近战范围以避免|r
    .complete 9149,1 --Collect Plagued Murloc Spine (x6)
    .mob Zombified Grimscale
    .mob Withered Grimscale
step
    #completewith SLurker
    >>杀死 |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_如果你能找到一个小组来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Spindleweb Spiders|r。掠夺它们的 |cRXP_LOOT_Spider Legs|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    .goto Ghostlands,27.40,38.73,100 >>穿过河流前往 |cRXP_ENEMY_Spindleweb Lurkers|r
    .isOnQuest 9159
step
    #completewith SLurker
    >>杀死 |cRXP_ENEMY_Vampiric Mistbats|r
    >>|cRXP_WARN_小心他们的|r |T136130:0|t[Draining Touch] |cRXP_WARN_Lifesteal 法术|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
#loop
	.line Ghostlands,26.17,37.11,24.52,39.78,25.64,42.73,25.18,44.78,27.23,44.19,27.81,42.02,29.30,41.97,31.41,42.20,32.04,43.60,34.11,42.43,35.24,41.73,35.69,38.63,32.27,39.40,29.89,36.61,26.17,37.11
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
	.goto Ghostlands,26.17,37.11,40,0
    >>杀死 |cRXP_ENEMY_Spindleweb Lurkers|r。掠夺他们的 |cRXP_LOOT_Spider Legs|r
    >>|cRXP_WARN_小心他们的|r |T136016:0|t[毒药]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .collect 22644,5,9171,1,-1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Lurker
    .itemcount 22644,<5
step
    #label SLurker
#loop
	.line Ghostlands,26.17,37.11,24.52,39.78,25.64,42.73,25.18,44.78,27.23,44.19,27.81,42.02,29.30,41.97,31.41,42.20,32.04,43.60,34.11,42.43,35.24,41.73,35.69,38.63,32.27,39.40,29.89,36.61,26.17,37.11
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
	.goto Ghostlands,26.17,37.11,40,0
    >>杀死 |cRXP_ENEMY_Spindleweb Lurkers|r
    >>|cRXP_WARN_小心他们的|r |T136016:0|t[毒药]
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .mob Spindleweb Lurker
    .itemcount 22644,5
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Blackpaw Gnolls|r、|cRXP_ENEMY_Blackpaw Scavengers|r 和 |cRXP_ENEMY_Blackpaw Shamans|r
    >>|cRXP_WARN_暂时不要关注这一点|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob Blackpaw Gnoll
    .mob Blackpaw Scavenger
    .mob Blackpaw Shaman
step
    .goto Ghostlands,31.44,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒沙塔瑞亚|r
    .accept 9207 >>接任务: |cRXP_LOOT_幽光矿石样本|r
    .target Apprentice Shatharia
step
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    .goto Ghostlands,30.72,46.23
    >>杀死 |cRXP_ENEMY_Blackpaw Gnolls|r、|cRXP_ENEMY_Blackpaw Scavengers|r 和 |cRXP_ENEMY_Blackpaw Shamans|r。掠夺他们的 |cRXP_LOOT_Underlight Ore|r
    >>|cRXP_WARN_你也可以开采|r |cRXP_PICK_Underlight Ore|r |cRXP_WARN_from Underlight Mines 中的节点|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .complete 9207,1 --Collect Underlight Ore (x6)
    .mob Blackpaw Gnoll
    .mob Blackpaw Scavenger
    .mob Blackpaw Shaman
    .skill mining,1
step
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    .goto Ghostlands,30.72,46.23
    >>杀死 |cRXP_ENEMY_Blackpaw Gnolls|r、|cRXP_ENEMY_Blackpaw Scavengers|r 和 |cRXP_ENEMY_Blackpaw Shamans|r。掠夺他们的 |cRXP_LOOT_Underlight Ore|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .complete 9207,1 --Collect Underlight Ore (x6)
    .mob Blackpaw Gnoll
    .mob Blackpaw Scavenger
    .mob Blackpaw Shaman
step
    #completewith Hungerers
    >>杀死 |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_如果你能找到一个小组来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #completewith Hungerers
    >>杀死 |cRXP_ENEMY_Luzran|r |cRXP_WARN_如果你能找到一个队伍来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #label Hungerers
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98,40,0
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98
    >>杀死 |cRXP_ENEMY_Gangled Cannibals|r 和 |cRXP_ENEMY_Risen Hungerers|r。掠夺 |cRXP_ENEMY_Risen Hungerers|r 以获取他们的 |cRXP_LOOT_Rotting Hearts|r
    >>|cRXP_WARN_要小心|r |cRXP_ENEMY_Gangled Cannibals|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_(增加伤害和攻击速度) 在低生命值时|r
    >>|cRXP_WARN_请小心|r |cRXP_ENEMY_Risen Hungerers|r |cRXP_WARN_cast|r |T132278:0|t[吸血] |cRXP_WARN_(10 点伤害吸血)|r
    >>|cRXP_ENEMY_Gangled Cannibals|r |cRXP_WARN_and |cRXP_ENEMY_Risen Hungerers|r 彼此共享刷新。杀死两者即可刷新您需要的刷新|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1,-1 --Rotting Hearts (10)
    .mob Risen Hungerer
    .mob Gangled Cannibal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, |cRXP_FRIENDLY_拉提斯·托博尔|r, |cRXP_FRIENDLY_大厨师莫迪尔|r
    .turnin 9139 >>交任务: |cRXP_FRIENDLY_金雾村|r
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >>接任务: |cRXP_LOOT_风行村|r
    .turnin 9152 >>交任务: |cRXP_FRIENDLY_托博尔的补给品|r
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .accept 9171 >>接任务: |cRXP_LOOT_松脆蜘蛛腿|r
    .turnin 9171 >>交任务: |cRXP_FRIENDLY_松脆蜘蛛腿|r
    .goto Ghostlands,48.43,30.93
    .target Arcanist Vandril
    .target Rathis Tomber
    .target Master Chef Mouldier
    .itemcount 22644,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, |cRXP_FRIENDLY_拉提斯·托博尔|r
    .turnin 9139 >>交任务: |cRXP_FRIENDLY_金雾村|r
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >>接任务: |cRXP_LOOT_风行村|r
    .turnin 9152 >>交任务: |cRXP_FRIENDLY_托博尔的补给品|r
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .target Arcanist Vandril
    .target Rathis Tomber
    .itemcount 22644,<5
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132492:0|t[宁静防御者腰带] |cRXP_BUY_|r
    .collect 28162,1,9281,1 --Collect Tranquillien Defender's Girdle (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Paladin
    #completewith Clearing
    +装备 |T132492:0|t[宁静防御者腰带]
    .use 28162
    .itemcount 28162,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132498:0|t[蝙蝠皮腰带] |cRXP_BUY_|r
    .collect 28158,1,9281,1 --Collect Batskin Belt (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    #completewith Clearing
    +装备 |T132498:0|t[蝙蝠皮腰带]
    .use 28158
    .itemcount 28158,1
    .itemStat 6,LEVEL_SHORT,<5
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r
    .turnin 9149 >>交任务: |cRXP_FRIENDLY_瘟疫海岸|r
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan1
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan1
    #completewith Clearing
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan1
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r, |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9149 >>交任务: |cRXP_FRIENDLY_瘟疫海岸|r
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .turnin 9156 >>交任务: |cRXP_FRIENDLY_通缉：纳克雷洛特和卢兹兰|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
    .xp <17,1
 step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r, |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9149 >>交任务: |cRXP_FRIENDLY_瘟疫海岸|r
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .xp <17,1
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r, |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9149 >>交任务: |cRXP_FRIENDLY_瘟疫海岸|r
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .turnin 9156 >>交任务: |cRXP_FRIENDLY_通缉：纳克雷洛特和卢兹兰|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r, |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9149 >>交任务: |cRXP_FRIENDLY_瘟疫海岸|r
    .goto Ghostlands,47.67,34.87
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .goto Ghostlands,46.02,31.95
    .target Apothecary Renzithen
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .turnin 9156 >>交任务: |cRXP_FRIENDLY_通缉：纳克雷洛特和卢兹兰|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
    .xp <17,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .xp <17,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .turnin 9156 >>交任务: |cRXP_FRIENDLY_通缉：纳克雷洛特和卢兹兰|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
    .isQuestComplete 9156
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r, Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r, |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .turnin 9155 >>交任务: |cRXP_FRIENDLY_前往死亡之痕|r
    .goto Ghostlands,46.02,33.58
    .turnin 9160 >>交任务: |cRXP_FRIENDLY_调查安达洛斯|r
    .accept 9163 >>接任务: |cRXP_LOOT_深入敌境|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .accept 9173 >>接任务: |cRXP_LOOT_夺回风行者之塔|r
    .goto Ghostlands,44.77,32.44
    .turnin 9192 >>交任务: |cRXP_FRIENDLY_幽光矿洞的麻烦|r
    .goto Ghostlands,44.74,32.28
    .turnin 9150 >>交任务: |cRXP_FRIENDLY_重建历史|r
    .goto Ghostlands,46.02,31.95
    .target Deathstalker Rathiel
    .target Dame Auriferous
    .target High Executor Mavren
    .target Deathstalker Maltendis
    .target Magister Darenis
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .target Apothecary Renzithen
    .target Magister Darenis
    .xp <17,1
step << Druid
	#completewith DruidTrain2
	.cast 18960 >>施法传送：月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 783 >>训练你的职业法术 << wotlk
    .train 8925 >>训练你的职业法术 << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain2
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8938 >>训练你的职业法术
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
step << !Druid !Shaman !Warrior !Paladin
    #xprate >1.4999
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
    .train 6761,1 << Rogue
step << !Druid !Shaman !Warrior
    #xprate <1.5
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
    .train 6761,1 << Rogue
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9404 >>交任务: |cRXP_FRIENDLY_活动的树木|r
    .train 3140,1
    .target Instructor Antheol
step << !Druid !Shaman !Warrior !Paladin
    #xprate >1.4999
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .train 6761,1 << Rogue
step << !Druid !Shaman !Warrior
    #xprate <1.5
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .train 6761,1 << Rogue
step << Rogue
    #completewith SMTraining3
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前往 |cRXP_FRIENDLY_Zelanis|r
    .train 6761,1 << Rogue
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .turnin 9618 >>交任务: |cRXP_FRIENDLY_交回报告|r << BloodElf
    .accept 10372 >>接任务: |cRXP_LOOT_谨慎的询问|r
    .train 6761 >>训练你的职业法术
    .target Zelanis
    .train 6761,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r|T136058:0|t[撬锁]|cRXP_WARN_以便稍后完成任务|r
    .turnin 9618 >>交任务: |cRXP_FRIENDLY_交回报告|r << BloodElf
    .accept 10372 >>接任务: |cRXP_LOOT_谨慎的询问|r
    .train 1804 >>训练你的职业法术
    .target Zelanis
    .train 1804,1
step << Rogue
    #label SMTraining3
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .turnin 9618 >>交任务: |cRXP_FRIENDLY_交回报告|r << BloodElf
    .accept 10372 >>接任务: |cRXP_LOOT_谨慎的询问|r
    .target Zelanis
step << Rogue
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买两把|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买 a|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Clearing
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>乘电梯返回银月城
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest/Mage
    #completewith SMTraining3
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前往 |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前往 |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 8102 >>训练你的职业法术
    .target Lotheolan
	.xp <16,1
	.xp >18,1
step << Priest
    #label SMTraining3
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 970 >>训练你的职业法术
    .target Lotheolan
    .train 8102,1
	.xp <18,1
step << Mage
    #label SMTraining3
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞伊丹纳|r
    .train 3140 >>训练你的职业法术
    .target Zaedana
	.xp <18,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>前往 |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r
    .itemcount 3026,1
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r
    .itemcount 3026,<1
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪恩|r
    .train 13795 >>训练你的职业法术 << tbc
    .train 5118 >>训练你的职业法术 << wotlk
    .target Zandine
	.xp <16,1
	.xp >18,1
step << Hunter
    #label SMTraining3
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪恩|r
    .train 14318 >>训练你的职业法术
    .target Zandine
	.xp <18,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Warlock
    #completewith SMTraining3
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .train 6222 >>训练你的职业法术
    .target Talionia
    .xp <14,1
    .xp >18,1
step << Warlock
    #label SMTraining3
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .train 1014 >>训练你的职业法术
    .target Talionia
    .xp <18,1
step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前往 |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9678 >>交任务: |cRXP_FRIENDLY_第一项试炼|r
    .accept 9681 >>接任务: |cRXP_LOOT_掌握力量|r
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇士巴卡希|r
    .train 647 >>训练你的职业法术
    .target Champion Bachi
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate <1.5
    #label SMTraining3
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇士巴卡希|r
    .train 7294 >>训练你的职业法术 << tbc
    .train 62124 >>训练你的职业法术 << wotlk
    .target Champion Bachi
	.xp <16,1
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>|cRXP_WARN_跳下|r |cRXP_FRIENDLY_Bachi 后面的洞|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师阿斯塔洛·血誓|r
    .turnin 9681 >>交任务: |cRXP_FRIENDLY_掌握力量|r
    .accept 9684 >>接任务: |cRXP_LOOT_驾驭圣光|r << wotlk
    .accept 63866 >>接任务: |cRXP_LOOT_驾驭圣光|r << tbc
    .target Magister Astalor Bloodsworn
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    #xprate <1.5
    .goto Silvermoon City,92.61,36.80
    >>在 |cRXP_FRIENDLY_Magister|r 上使用 |T134867:0|t[闪光容器]
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target Blood Elf Magister
    .use 24157
step << Paladin tbc
    #xprate <1.5
    .goto Silvermoon City,92.61,36.80
    >>在 |cRXP_FRIENDLY_M'uru|r 上使用 |T134867:0|t[闪光容器]
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target M'uru
    .use 185956
step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>跑回 |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9684 >>交任务: |cRXP_FRIENDLY_驾驭圣光|r << wotlk
    .turnin 63866 >>交任务: |cRXP_FRIENDLY_驾驭圣光|r << tbc
    .accept 9685 >>接任务: |cRXP_LOOT_救赎死者|r
    .target Knight-Lord Bloodvalor
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 647 >>训练你的职业法术
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    #xprate <1.5
    #label SMTraining3
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 7294 >>训练你的职业法术 << tbc
    .train 62124 >>训练你的职业法术 << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
 step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>进入旅馆
step << Paladin
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>前往 |cRXP_FRIENDLY_Stillblade|r
step << Paladin
    #xprate <1.5
    .goto Silvermoon City,80.16,60.24
    >>在 |cRXP_FRIENDLY_Stillblade|r 上使用 |T134723:0|t[Filled Shimmering Vessel]
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target Blood Knight Stillblade
    .use 24184
step << !Shaman !Warrior !Rogue
    #completewith Clearing
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >>前往: |cRXP_PICK_永歌森林|r
    .zoneskip Ghostlands
    .cooldown item,6948,<0
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛拉米|r
    .fly Tranquillien >>飞往 特兰奎利恩
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
step << Paladin
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132492:0|t[宁静防御者腰带] |cRXP_BUY_|r
    .collect 28162,1,9281,1 --Collect Tranquillien Defender's Girdle (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Paladin
    #completewith Clearing
    +装备 |T132492:0|t[宁静防御者腰带]
    .use 28162
    .itemcount 28162,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132498:0|t[蝙蝠皮腰带] |cRXP_BUY_|r
    .collect 28158,1,9281,1 --Collect Batskin Belt (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    #completewith Clearing
    +装备 |T132498:0|t[蝙蝠皮腰带]
    .use 28158
    .itemcount 28158,1
    .itemStat 6,LEVEL,<17
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    .turnin 10372 >>交任务: |cRXP_FRIENDLY_谨慎的询问|r
    .accept 9491 >>接任务: |cRXP_LOOT_贪婪|r
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    .accept 9491 >>接任务: |cRXP_LOOT_贪婪|r
    .target Eralan
    .isQuestTurnedIn 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
--VV Eralan steps need reviewing (doesn't work if you don't have either weapon+钱不够只能买弯刀或者喉咙P)
step << Rogue
    #label Eralan2
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan2
    #completewith Clearing
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan2
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith SpireT01
    .cast 29348 >>使用 |T134721:0|t[金雾特酿] 获得健康增益
    .use 23444
step
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28,40,0
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28
    >>杀死 |cRXP_ENEMY_Vampiric Mistbats|r
    >>|cRXP_WARN_小心他们的|r |T136130:0|t[Draining Touch] |cRXP_WARN_Lifesteal 法术|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
    #label Clearing
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒沃尔伊|r
    .accept 9281 >>接任务: |cRXP_LOOT_清理道路|r
    .target Apprentice Vor'el
step
    #xprate <1.5
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r。掠夺 |cRXP_ENEMY_Greater Spindlewebs|r 以获取其 |cRXP_LOOT_Spider Legs|r
    >>|cRXP_WARN_由于等级差异，这些怪物可能很难对付，因此请小心|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate <1.5
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r
    >>|cRXP_WARN_由于等级差异，这些怪物可能很难对付，因此请小心|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step << Druid/Shaman/Warrior/Paladin
    #xprate >1.4999
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r。掠夺 |cRXP_ENEMY_Greater Spindlewebs|r 以获取其 |cRXP_LOOT_Spider Legs|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step << Druid/Shaman/Warrior/Paladin
    #xprate >1.4999
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step << !Druid !Shaman !Warrior !Paladin
    #xprate >1.4999
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
step
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Luzran|r |cRXP_WARN_如果你能找到一个队伍来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #xprate <1.7
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Risen Stalkers|r。掠夺他们的 |cRXP_LOOT_Rotting Hearts|r
    >>杀死 |cRXP_ENEMY_Dreadbone Sentinels|r 和 |cRXP_ENEMY_Deathcage Sorcerers|r。掠夺他们的 |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Dreadbone Sentinels|r 施放 |r |T132357:0|t[Shield Bash] |cRXP_WARN_(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob Risen Stalker
    .mob Dreadbone Sentinel
    .mob Deathcage Sorcerer
step
    #xprate >1.4999
    #completewith SpireT01
    >>杀死 |cRXP_ENEMY_Risen Stalkers|r。掠夺他们的 |cRXP_LOOT_Rotting Hearts|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob Risen Stalker
step
    #label SpireT01
    .goto Ghostlands,34.06,57.57,80 >>跨越死亡伤痕
    .isOnQuest 9173
step
    #completewith SpireT
    >>杀死 |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_如果你能找到一个小组来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #xprate <1.5
    #completewith SpireT
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r。掠夺 |cRXP_ENEMY_Greater Spindlewebs|r 以获取其 |cRXP_LOOT_Spider Legs|r
    >>|cRXP_WARN_由于等级差异，这些怪物可能很难对付，因此请小心|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate <1.5
    #completewith SpireT
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r
    >>|cRXP_WARN_由于等级差异，这些怪物可能很难对付，因此请小心|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
 step
    #xprate >1.4999
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r。掠夺 |cRXP_ENEMY_Greater Spindlewebs|r 以获取其 |cRXP_LOOT_Spider Legs|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate >1.4999
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #label SpireT
    .goto Ghostlands,17.21,58.09,80 >>前往风行者之塔
    .isOnQuest 9173
step
    #completewith next
    >>掠夺 |cRXP_ENEMY_Fallen Rangers|r 和 |cRXP_ENEMY_Deatholme Acolytes|r 以获得 |T133303:0|t[|cRXP_LOOT_The Lady's Necklace|r]
    >>|cRXP_WARN_使用 |T133303:0|t[|cRXP_LOOT_The Lady's Necklace|r] 开始任务|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >>接任务: |cRXP_LOOT_女王的项链|r
    .use 22597
step
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47
    >>杀死 |cRXP_ENEMY_Fallen Rangers|r 和 |cRXP_ENEMY_Deatholme Acolytes|r
    >>|cRXP_WARN_要小心，因为这些怪物很难对付|r
    .complete 9173,1 --Deatholme Acolyte (8)
    .complete 9173,2 --Fallen Ranger (10)
    .mob Deatholme Acolyte
    .mob Fallen Ranger
step
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47
    >>杀死 |cRXP_ENEMY_Fallen Rangers|r 和 |cRXP_ENEMY_Deatholme Acolytes|r。掠夺他们以获得 |T133303:0|t[|cRXP_LOOT_The Lady's Necklace|r]
    >>|cRXP_WARN_使用 |T133303:0|t[|cRXP_LOOT_The Lady's Necklace|r] 开始任务|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >>接任务: |cRXP_LOOT_女王的项链|r
    .use 22597
step
    #xprate <1.5
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r。掠夺 |cRXP_ENEMY_Greater Spindlewebs|r 以获取其 |cRXP_LOOT_Spider Legs|r
    >>|cRXP_WARN_由于等级差异，这些怪物可能很难对付，因此请小心|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestAvailable 9171
step
    #xprate <1.5
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57,50,0
    .goto Ghostlands,18.75,60.74,50,0
    .goto Ghostlands,23.38,59.90,50,0
    .goto Ghostlands,28.23,58.65,50,0
    .goto Ghostlands,30.77,60.23,50,0
    .goto Ghostlands,34.06,57.57
    >>杀死 |cRXP_ENEMY_Greater Spindlewebs|r 和 |cRXP_ENEMY_Ghostclaw Ravagers|r
    >>|cRXP_WARN_由于等级差异，这些怪物可能很难对付，因此请小心|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob Greater Spindleweb
    .mob Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_如果你能找到一个小组来载你|r。抢夺他的 |cRXP_LOOT_Head|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    .goto Ghostlands,21.10,47.74,30,0
    .goto Ghostlands,19.58,45.15,45,0
    .goto Ghostlands,21.99,43.70,30,0
    .goto Ghostlands,20.01,40.51,30,0
    .goto Ghostlands,18.38,42.74,30,0
    .goto Ghostlands,15.89,42.54,30,0
    .goto Ghostlands,16.93,46.43,30,0
    .goto Ghostlands,16.46,48.48,30,0
    .goto Ghostlands,18.20,53.81,30,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76
    >>杀死 |cRXP_ENEMY_Phantasmal Seekers|r 和 |cRXP_ENEMY_Stonewing Slayers|r。掠夺他们的 |cRXP_LOOT_Phantasmal Subtance|r 和 |cRXP_LOOT_Gargoyle Fragments|r
    .complete 9140,1 --Collect Phantasmal Substance (x6)
    .complete 9140,2 --Collect Gargoyle Fragment (x4)
    .mob Phantasmal Seeker
    .mob Stonewing Slayer
step
    #completewith next
    .cast 7840 >>在水中使用 |T134754:0|t[游泳加速药水] 可以更快地游过水面
    .use 6372
    .itemcount 6372,1
step
    >>在地面上、帐篷内或桌子上拾取 |cRXP_PICK_暗夜精灵计划|r
    .complete 9163,2 --Collect Night Elf Plans: An'owyn (x1)
    .goto Ghostlands,12.80,25.09,8,0
    .goto Ghostlands,12.54,24.81,8,0
    .goto Ghostlands,12.85,23.93
    .complete 9163,1 --Collect Night Elf Plans: An'daroth (x1)
    .goto Ghostlands,14.77,26.61,8,0
    .goto Ghostlands,13.70,26.83,8,0
    .goto Ghostlands,12.53,26.51
step
    #completewith next
    .goto Ghostlands,10.13,23.77,12,0
    .goto Ghostlands,10.12,23.04,12,0
    .goto Ghostlands,10.44,22.58,12 >>跑到船顶
step
    .goto Ghostlands,10.44,22.58
    >>拾取桌子上的 |cRXP_PICK_暗夜精灵计划|r
    >>|cRXP_WARN_请小心，因为 |cRXP_ENEMY_达纳苏斯女猎手|r 施法|r |T132282:0|t[攻击] |cRXP_WARN_（立即施法攻击，造成双倍伤害）|r
    .complete 9163,3 --Collect Night Elf Plans: Scrying on the Sin'dorei (x1)
step << Priest/Druid/Rogue/Paladin
#loop
	.line Ghostlands,14.71,26.66,13.06,26.15,11.63,26.63,12.51,24.81,9.43,23.77,10.47,22.51,14.71,26.66
	.goto Ghostlands,14.71,26.66,30,0
	.goto Ghostlands,13.06,26.15,30,0
	.goto Ghostlands,11.63,26.63,30,0
	.goto Ghostlands,12.51,24.81,30,0
	.goto Ghostlands,9.43,23.77,30,0
	.goto Ghostlands,10.47,22.51,30,0
	.goto Ghostlands,14.71,26.66,30,0
    .xp 15+10600 >>升级至 10600+/13600
step
    #completewith WindrunnerV
    .deathskip >>在灵魂治疗师处死亡并重生
    .train 1758,1 << !BloodElf Rogue
    .train 1460,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8122,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
    .isOnQuest 9461 << BloodElf Rogue
step
    #completewith WindrunnerV
    .hs >>炉火至宁静
    .cooldown item,6948,>0
    .train 1758,3 << !BloodElf Rogue
    .train 1460,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8122,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
    .isOnQuest 10372 << BloodElf Rogue
step
    #completewith WindrunnerV
    .cast 7840 >>在水中使用 |T134754:0|t[游泳加速药水] 可以更快地游回来
    .use 6372
    .itemcount 6372,1
    .cooldown item,6948,<0
    .train 1758,3 << !BloodElf Rogue
    .train 1460,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8122,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
    .isOnQuest 10372 << BloodElf Rogue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大厨师莫迪尔|r, |cRXP_FRIENDLY_奥术师范迪瑞尔|r
    .accept 9171 >>接任务: |cRXP_LOOT_松脆蜘蛛腿|r
    .turnin 9171 >>交任务: |cRXP_FRIENDLY_松脆蜘蛛腿|r
    .goto Ghostlands,48.43,30.93
    .turnin 9140 >>交任务: |cRXP_FRIENDLY_风行村|r
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .target Master Chef Mouldier
    .target Arcanist Vandril
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,>0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r, |cRXP_FRIENDLY_大厨师莫迪尔|r
    .turnin 9140 >>交任务: |cRXP_FRIENDLY_风行村|r
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9171 >>接任务: |cRXP_LOOT_松脆蜘蛛腿|r
    .turnin 9171 >>交任务: |cRXP_FRIENDLY_松脆蜘蛛腿|r
    .goto Ghostlands,48.43,30.93
    .target Arcanist Vandril
    .target Master Chef Mouldier
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,<0
step
    #label WindrunnerV
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师范迪瑞尔|r
    .turnin 9140 >>交任务: |cRXP_FRIENDLY_风行村|r
    .target Arcanist Vandril
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师戴伦尼斯|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .target Magister Darenis
    .xp <17,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Dame, |cRXP_FRIENDLY_高级执行官玛尔伦|r
    .turnin 9163 >>交任务: |cRXP_FRIENDLY_深入敌境|r
    .accept 9166 >>接任务: |cRXP_LOOT_返回安泰拉斯|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .turnin 9173 >>交任务: |cRXP_FRIENDLY_夺回风行者之塔|r
    .turnin 9175 >>交任务: |cRXP_FRIENDLY_女王的项链|r
    .accept 9177 >>接任务: |cRXP_LOOT_幽暗城之旅|r << !BloodElf
    .accept 9180 >>接任务: |cRXP_LOOT_幽暗城之旅|r << BloodElf
    .goto Ghostlands,44.77,32.44
    .target Dame Auriferous
    .target High Executor Mavren
step << Druid
	#completewith DruidTrain3
	.cast 18960 >>施法传送：月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 783 >>训练你的职业法术 << wotlk
    .train 8925 >>训练你的职业法术 << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain3
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8938 >>训练你的职业法术
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
    .train 1460,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8122,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << skip
    >>前往银月城
    .goto Silvermoon City,72.4,85.7,40,0
    .goto Silvermoon City,53.926,71.029
    .turnin 9133 >>交任务: |cRXP_FRIENDLY_飞往银月城|r
--VV BloodElf Paladin/BloodElf Rogue
step << skip
    #xprate <1.5
    .goto Silvermoon City,53.926,71.029
    .accept 9134 >>接任务: |cRXP_LOOT_葛拉米|r
    --VV BloodElf Paladin/BloodElf Rogue
step << skip
    >>不要飞离飞行管理员的任何地方。返回银月城外。
    .goto Eversong Woods,54.4,50.7
    .turnin 9134 >>交任务: |cRXP_FRIENDLY_葛拉米|r
    .accept 9135 >>接任务: |cRXP_LOOT_返回军需官雷米尔身边|r
    .isOnQuest 9134
    --VV BloodElf Priest/BloodElf Rogue/BloodElf Paladin
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith SMTraining4
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .train 1460,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8122,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << Rogue
    .abandon 9491 >>抛弃贪婪
    .isQuestAvailable 10372
step << Rogue
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前往 |cRXP_FRIENDLY_Zelanis|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r|T136058:0|t[撬锁]|cRXP_WARN_以便稍后完成任务|r
    .turnin 9618 >>交任务: |cRXP_FRIENDLY_交回报告|r << BloodElf
    .accept 10372 >>接任务: |cRXP_LOOT_谨慎的询问|r
    .train 1804 >>训练你的职业法术
    .target Zelanis
    .train 1804,1
    .xp <16,1
step << Rogue
    #label SMTraining4
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    .turnin 9618 >>交任务: |cRXP_FRIENDLY_交回报告|r << BloodElf
    .accept 10372 >>接任务: |cRXP_LOOT_谨慎的询问|r
    .target Zelanis
step << Rogue
    #completewith Scimitars2
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Scimitars2
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>乘电梯前往幽暗城
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买两把|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Scimitars2
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_从他那里购买 a|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>乘电梯返回银月城
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,59,91,11.32,20,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师维纳|r
    >>|cRXP_BUY_如果便宜的话，从 AH 购买 a|r |T135144:0|t[高级魔杖] |cRXP_BUY_|r
    >>|cRXP_WARN_如果它们都太贵，请跳过此步骤|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .train 8122,1
step << Priest/Mage
    #completewith SMTraining4
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前往 |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前往 |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 8102 >>训练你的职业法术
    .target Lotheolan
	.xp <16,1
	.xp >18,1
step << Priest
    #label SMTraining4
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 970 >>训练你的职业法术
    .target Lotheolan
    .train 8102,1
	.xp <18,1
step << Mage
    #label SMTraining4
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞伊丹纳|r
    .train 3140 >>训练你的职业法术
    .target Zaedana
	.xp <18,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>前往 |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r
    .itemcount 3026,<1
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪恩|r
    .train 13795 >>训练你的职业法术 << tbc
    .train 5118 >>训练你的职业法术 << wotlk
    .target Zandine
	.xp <16,1
	.xp >18,1
step << Hunter
    #label SMTraining4
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪恩|r
    .train 14318 >>训练你的职业法术
    .target Zandine
	.xp <18,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Warlock
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托利安|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[牺牲魔典] |cRXP_BUY_和|r |T133738:0|t[消耗阴影魔典] |cRXP_BUY_|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .target Torian
    .train 20381,1
    .train 17767,1
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托利安|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[魔典：吞噬阴影] |cRXP_BUY_|r
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .target Torian
    .train 17767,1
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托利安|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[牺牲魔典] |cRXP_BUY_|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .target Torian
    .train 20381,1
step << Warlock TBC
    +使用 |T133738:0|t[牺牲魔典] 和 |T133738:0|t[消耗暗影魔典]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +使用 |T133738:0|t[牺牲魔法书]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +使用 |T133738:0|t[消耗阴影魔典]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .train 6222 >>训练你的职业法术
    .target Talionia
    .xp <14,1
    .xp >18,1
step << Warlock
    #label SMTraining4
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .train 1014 >>训练你的职业法术
    .target Talionia
    .xp <18,1
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前往 |cRXP_FRIENDLY_Bloodvalor|r
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9685 >>交任务: |cRXP_FRIENDLY_救赎死者|r
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
    .target Knight-Lord Bloodvalor
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 647 >>训练你的职业法术
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    #label SMTraining4
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 7294 >>训练你的职业法术 << tbc
    .train 62124 >>训练你的职业法术 << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
step << !Rogue
    .hs >>炉火至宁静
    .cooldown item,6948,>0
    .zoneskip Ghostlands
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Horde !Warrior !Shaman
#name 16-20 幽灵之地
#next 22-26 希尔斯布莱德丘陵 JJ;20-23 石爪山 / 贫瘠之地
#version 1
#group RestedXP 部落 1-30

step << skip
    .goto Ghostlands,47.3,29.3
    .turnin -9135 >>交任务: |cRXP_FRIENDLY_返回军需官雷米尔身边|r
--VV BloodElf Priest/BloodElf Rogue/BloodElf Paladin
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    .turnin 10372 >>交任务: |cRXP_FRIENDLY_谨慎的询问|r
    .accept 9491 >>接任务: |cRXP_LOOT_贪婪|r
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    .accept 9491 >>接任务: |cRXP_LOOT_贪婪|r
    .target Eralan
    .isQuestTurnedIn 10372
step << Rogue wotlk
    #completewith Clearing
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药] |cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan3
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan3
    #completewith Clearing
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan3
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师奎尔林提斯|r, |cRXP_FRIENDLY_魔导师坎迪瑞斯|r
    .turnin 9207 >>交任务: |cRXP_FRIENDLY_幽光矿石样本|r
    .goto Ghostlands,54.95,48.49
    .accept 9282 >>接任务: |cRXP_LOOT_远行者营地|r
    .goto Ghostlands,55.07,48.83
    .target Magister Quallestis
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼去
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师伊东尼斯|r
    .turnin 9151 >>交任务: |cRXP_FRIENDLY_太阳圣殿|r
    .accept 9220 >>接任务: |cRXP_LOOT_戴索姆之战|r
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师伊东尼斯|r
    .accept 9220 >>接任务: |cRXP_LOOT_戴索姆之战|r
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith next
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,57.04,45.01,40,0
    .goto Ghostlands,60.07,42.43,40,0
    .goto Ghostlands,60.29,35.63,40 >>前往 |cRXP_FRIENDLY_Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师塞拉斯托|r
    .turnin 9166 >>交任务: |cRXP_FRIENDLY_返回安泰拉斯|r
    .accept 9169 >>接任务: |cRXP_LOOT_关闭安欧维恩|r
    .target Magister Sylastor
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳瑞娜|r
    >>|cRXP_BUY_从她那里购买|r |T135346:0|t[强化弓] |cRXP_BUY_和|r |T132382:0|t[锐箭] |cRXP_BUY_|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.4101 << BloodElf
    .money <0.4312 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳瑞娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135346:0|t[强化弓] |cRXP_BUY_|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Narina
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳瑞娜|r
    >>|cRXP_BUY_从她那里购买|r |T132382:0|t[利箭] |cRXP_BUY_|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.0480 << BloodElf
    .money <0.0500 << Troll/Orc
step
    #xprate <1.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远行者塞蒂娜|r, Solanna, |cRXP_FRIENDLY_游侠克雷安|r, |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9159 >>交任务: |cRXP_FRIENDLY_控制瘟疫|r
    .goto Ghostlands,72.50,32.14
    .accept 9276 >>接任务: |cRXP_LOOT_进攻塞布提拉|r
    .goto Ghostlands,72.33,31.24
    .turnin 9274 >>交任务: |cRXP_FRIENDLY_水中鬼魂|r
    .goto Ghostlands,72.21,29.78
    .turnin 9146 >>交任务: |cRXP_FRIENDLY_向赫里奥斯中尉报到|r
    .goto Ghostlands,72.37,29.64
    .accept 9214 >>接任务: |cRXP_LOOT_暗松巨魔的武器|r
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
step
    #xprate >1.6999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_远行者塞蒂娜|r, Solanna, |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9159 >>交任务: |cRXP_FRIENDLY_控制瘟疫|r
    .goto Ghostlands,72.50,32.14
    .accept 9276 >>接任务: |cRXP_LOOT_进攻塞布提拉|r
    .goto Ghostlands,72.33,31.24
    .turnin 9146 >>交任务: |cRXP_FRIENDLY_向赫里奥斯中尉报到|r
    .goto Ghostlands,72.37,29.64
    .accept 9214 >>接任务: |cRXP_LOOT_暗松巨魔的武器|r
    .goto Ghostlands,72.37,29.64
    .target Farstrider Sedina
    .target Farstrider Solanna
    .target Ranger Krenn'an
    .target Captain Helios
--VV 9276 and 9214 need to hide if in qlog. remove extra coords in this step and above once possible
step
    .abandon 9274 >>抛弃溺亡者的灵魂
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>走东边的斜坡
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师温努图斯|r
    .accept 9275 >>接任务: |cRXP_LOOT_香料|r
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>沿西侧坡道上行
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师维纳|r
    .turnin 9282 >>交任务: |cRXP_FRIENDLY_远行者营地|r
    .accept 9161 >>接任务: |cRXP_LOOT_叛徒之影|r
    .target Ranger Vynna
step
    #completewith TrollR1
    >>杀死 |cRXP_ENEMY_Mummified Headhunters|r 和 |cRXP_ENEMY_Shadowpine Oracles|r。掠夺他们的 |cRXP_LOOT_Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,68.08,29.39,50,0
    .goto Ghostlands,66.24,28.55,12 >>进入墓穴
    .isOnQuest 9199
step << Rogue
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>|T136058:0|t[撬锁] 墓穴内地面上的 |cRXP_PICK_Burial Chests|r。将其抢走可获得 |cRXP_LOOT_Gold Band|r
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    .skill lockpicking,18 >>你的 |T136058:0|t[开锁] 技能等级达到 18
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
    .skill lockpicking,18,1
step << !Rogue
    #completewith next
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,62.91,30.75,12,0
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,62.91,31.77
    >>跑进篝火房
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #label TrollR1
#loop
	.line Ghostlands,62.60,31.00,62.41,31.34,62.32,31.81,62.41,32.23,62.63,32.56,63.22,32.55,63.44,32.18,63.50,31.74,63.43,31.29,63.21,30.98,62.60,31.00
	.goto Ghostlands,62.60,31.00,12,0
	.goto Ghostlands,62.41,31.34,12,0
	.goto Ghostlands,62.32,31.81,12,0
	.goto Ghostlands,62.41,32.23,12,0
	.goto Ghostlands,62.63,32.56,12,0
	.goto Ghostlands,63.22,32.55,12,0
	.goto Ghostlands,63.44,32.18,12,0
	.goto Ghostlands,63.50,31.74,12,0
	.goto Ghostlands,63.43,31.29,12,0
	.goto Ghostlands,63.21,30.98,12,0
	.goto Ghostlands,62.60,31.00,12,0
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    >>|cRXP_WARN_请勿与|r |cRXP_FRIENDLY_Lilatha|r |cRXP_WARN_yet 交谈|r
    >>|cRXP_WARN_检查主房间，看篝火房是否没有遗迹|r
    .complete 9193,1,8 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>杀死 |cRXP_ENEMY_Mummified Headhunters|r 和 |cRXP_ENEMY_Shadowpine Oracles|r。掠夺他们的 |cRXP_LOOT_Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,62.93,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠莉拉恩萨|r
    .accept 9212 >>接任务: |cRXP_LOOT_逃离墓穴|r
    .target Ranger Lilatha
step
    #completewith TrollR
    >>杀死 |cRXP_ENEMY_Mummmified Headhunters|r 和 |cRXP_ENEMY_Shadowpine Oracles|r。掠夺他们的 |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #label PittedG
    #completewith Lilatha
    >>|T136058:0|t[撬锁] 墓穴内地面上的 |cRXP_PICK_埋葬箱|r。从中抢走 |cRXP_LOOT_带坑的金戒指|r
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    >>|cRXP_WARN_确保在离开地下墓穴之前完成此操作|r
    .skill lockpicking,20 >>你的 |T136058:0|t[开锁] 技能等级达到 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Rogue
    #requires PittedG
    #completewith Lilatha
    >>|T136058:0|t[撬锁] 墓穴内地面上的 |cRXP_PICK_Burial Chests|r，等待 |cRXP_FRIENDLY_Lilatha|r。这些箱子里可能装有食物、药水和飞刀
step << !Rogue
    #completewith Lilatha
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    >>|cRXP_WARN_确保在离开地下墓穴之前完成此操作|r
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Paladin/Druid/Priest
    #completewith Lilatha
    .cast 19834 >>增益 |cRXP_FRIENDLY_Lilatha|r 带有 |T135906:0|t[力量祝福] << Paladin
    .cast 5232 >>增益 |cRXP_FRIENDLY_Lilatha|r 带有 |T136078:0|t[野性印记] << Druid
    .cast 1244 >>增益 |cRXP_FRIENDLY_Lilatha|r 带有 |T135987:0|t[真言术：坚毅] << Priest
    .target Ranger Lilatha
step
    #label Lilatha
    >>|cRXP_WARN_护送|r |cRXP_FRIENDLY_Lilatha|r
    >>|cRXP_WARN_离开地下墓穴后约 60 码处，|cRXP_ENEMY_Shadowpine Oracle|r 和 |cRXP_ENEMY_Mummified Headhunter|r 将在 |cRXP_FRIENDLY_Lilatha|r 上生成|r
    .goto Ghostlands,67.93,28.98,40,0
    .goto Ghostlands,71.09,32.01,40,0
    .goto Ghostlands,72.24,30.10
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
step << Rogue
    #label TrollR
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>|T136058:0|t[撬锁] 墓穴内地面上的 |cRXP_PICK_埋葬箱|r。从中抢走 |cRXP_LOOT_带坑的金戒指|r
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    .skill lockpicking,20 >>你的 |T136058:0|t[开锁] 技能等级达到 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step << !Rogue
    #label TrollR
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>点击地面上的 |cRXP_PICK_Mummified Troll Remains|r 来烧毁它们
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58
    >>杀死 |cRXP_ENEMY_Mummified Headhunters|r 和 |cRXP_ENEMY_Shadowpine Oracles|r。掠夺他们的 |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #completewith SadT
    +装备 |T135427:0|t[大型飞刀]
    .use 25874
    .itemcount 25874,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.0 << wotlk
step
    .goto Ghostlands,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9212 >>交任务: |cRXP_FRIENDLY_逃离墓穴|r
    .target Captain Helios
step << Warlock TBC
    +使用 |T133738:0|t[牺牲魔典] 和 |T133738:0|t[消耗暗影魔典]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +使用 |T133738:0|t[牺牲魔法书]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +使用 |T133738:0|t[消耗阴影魔典]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Rogue
    #completewith SadT
    .hs >>炉火至宁静
    .cooldown item,6948,>0
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药] |cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    #label SadT
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    .turnin 9491 >>交任务: |cRXP_FRIENDLY_贪婪|r
    .accept 10548 >>接任务: |cRXP_LOOT_悲伤的事实|r
    .target Eralan
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    .accept 10548 >>接任务: |cRXP_LOOT_悲伤的事实|r
    .target Eralan
    .isQuestTurnedIn 9491
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan4
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan4
    #completewith Clearing
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan4
    #completewith Clearing
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .goto Ghostlands,78.82,19.81,15,0
    .goto Ghostlands,80.04,20.58,10,0
    .goto Ghostlands,80.27,19.82,10,0
    .goto Ghostlands,79.88,18.97,10,0
    .goto Ghostlands,79.63,18.58,10,0
    .goto Ghostlands,79.63,17.57,10 >>前往大楼顶层
step
    .goto Ghostlands,79.63,17.57
    >>点击地面上的 |cRXP_PICK_Book|r
    .turnin 9161 >>交任务: |cRXP_FRIENDLY_叛徒之影|r
    .accept 9162 >>接任务: |cRXP_LOOT_往日的线索|r
step << Rogue
    #completewith next
    >>|T136058:0|t[撬锁] 废墟附近地面上的 |cRXP_PICK_原始宝箱|r。从中抢走 |cRXP_LOOT_考古学家的萎缩头颅|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27,40,0
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27
    >>杀死 |cRXP_ENEMY_Shadowpine Shadowcasters|r 和 |cRXP_ENEMY_Shadowpine Headhunters|r。掠夺他们的 |cRXP_LOOT_Shadowcaster Maces|r 和 |cRXP_LOOT_Headhunter Axes|r
    .complete 9276,1 --Kill Shadowpine Shadowcaster (x8)
    .complete 9276,2 --Kill Shadowpine Headhunter (x8)
    .complete 9214,2 --Collect Shadowcaster Mace (x3)
    .complete 9214,1 --Collect Headhunter Axe (x3)
    .mob Shadowpine Shadowcaster
    .mob Shadowpine Headhunter
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133970:0|t[羊排] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[瓜汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .isOnQuest 9276
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133970:0|t[羊排] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[瓜汁] |cRXP_BUY_和|r |T133970:0|t[羊排] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .isOnQuest 9276
    .xp <15,1
    .xp >30,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solanna|r
    .turnin 9276 >>交任务: |cRXP_FRIENDLY_进攻塞布提拉|r
    .accept 9277 >>接任务: |cRXP_LOOT_突袭塞布努瓦|r
    .goto Ghostlands,72.33,31.24
    .target Farstrider Solanna
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>沿西侧坡道上行
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师维纳|r
    .turnin 9162 >>交任务: |cRXP_FRIENDLY_往日的线索|r
    .accept 9172 >>接任务: |cRXP_LOOT_向魔导师坎迪瑞斯报到|r
    .target Ranger Vynna
step << Rogue
    #completewith KelGash
    >>|T136058:0|t[撬锁] 地面上的 |cRXP_PICK_原始宝箱|r。从宝箱中拾取 |cRXP_LOOT_考古学家的萎缩头颅|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #completewith KelGash
    .goto Ghostlands,69.63,50.08,50,0
    .goto Ghostlands,69.64,51.43,50,0
    .goto Ghostlands,69.63,52.41,50,0
    .goto Ghostlands,67.54,50.89,50,0
    .goto Ghostlands,65.73,53.82,50,0
    .goto Ghostlands,68.41,54.61,50,0
    >>杀死 |cRXP_ENEMY_Shadowpine Catlords|r 和 |cRXP_ENEMY_Shadowpine Hexxers|r。掠夺他们的 |cRXP_LOOT_Catlord Claws|r 和 |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step
    .goto Ghostlands,67.60,57.98,12,0
    .goto Ghostlands,68.25,57.78
    >>点击 |cRXP_PICK_鲜鱼架|r
    .complete 9275,3 --Poison the Fresh Fish Rack (x1)
step
    .goto Ghostlands,65.11,66.74
    >>点击 |cRXP_PICK_生肉架|r
    .complete 9275,1 --Poison the Raw Meat Rack (x1)
step
    .goto Ghostlands,63.04,74.99
    >>点击 |cRXP_PICK_熏肉架|r
    .complete 9275,2 --Poison the Smoked Meat Rack (x1)
step
    #xprate <1.5
#loop
	.line Ghostlands,61.16,75.58,60.28,73.66,61.68,71.27,61.81,71.16,61.46,68.82,64.27,73.63,64.34,73.03,61.46,73.38,64.22,73.82,63.93,73.70,63.90,72.99,64.87,70.28,65.31,70.32,64.70,67.70,65.42,66.39,64.66,64.07,61.16,75.58
	.goto Ghostlands,61.16,75.58,50,0
	.goto Ghostlands,60.28,73.66,50,0
	.goto Ghostlands,61.68,71.27,50,0
	.goto Ghostlands,61.81,71.16,50,0
	.goto Ghostlands,61.46,68.82,50,0
	.goto Ghostlands,64.27,73.63,50,0
	.goto Ghostlands,64.34,73.03,50,0
	.goto Ghostlands,61.46,73.38,50,0
	.goto Ghostlands,64.22,73.82,50,0
	.goto Ghostlands,63.93,73.70,50,0
	.goto Ghostlands,63.90,72.99,50,0
	.goto Ghostlands,64.87,70.28,50,0
	.goto Ghostlands,65.31,70.32,50,0
	.goto Ghostlands,64.70,67.70,50,0
	.goto Ghostlands,65.42,66.39,50,0
	.goto Ghostlands,64.66,64.07,50,0
	.goto Ghostlands,61.16,75.58,50,0
    .xp 18 >>练到18级
step
    #completewith next
    .goto Ghostlands,65.29,79.31,12,0
    .goto Ghostlands,65.77,79.73,8,0
    .goto Ghostlands,65.93,80.68,8,0
    .goto Ghostlands,65.59,80.72,8 >>上楼去
step
    .goto Ghostlands,65.29,79.46
    >>杀死 |cRXP_ENEMY_邪恶的克尔加什|r。掠夺他的 |cRXP_LOOT_Head|r
    >>通过在柱子周围瞄准他来躲避 |cRXP_ENEMY_Kel'gash the Wicked|r 的 |T136048:0|t[闪电] 和 |T136121:0|t[缩小]，这样他就可以取消每个法术
    >>|cRXP_WARN_确保你有可用的冷却时间，并在需要时使用|r|T134831:0|t[治疗药水]|cRXP_WARN_|r
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .itemcount 929,1
    .isOnQuest 9215
step
    .goto Ghostlands,65.29,79.46
    >>杀死 |cRXP_ENEMY_邪恶的克尔加什|r。掠夺他的 |cRXP_LOOT_Head|r
    >>通过在柱子周围瞄准他来躲避 |cRXP_ENEMY_Kel'gash the Wicked|r 的 |T136048:0|t[闪电] 和 |T136121:0|t[缩小]，这样他就可以取消每个法术
    >>|cRXP_WARN_确保你有可用的冷却时间，并在需要时使用|r |T134830:0|t[次级治疗药水] |cRXP_WARN_|r
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .itemcount 858,1
    .isOnQuest 9215
step
    #label KelGash
    .goto Ghostlands,65.29,79.46
    >>杀死 |cRXP_ENEMY_邪恶的克尔加什|r。掠夺他的 |cRXP_LOOT_Head|r
    >>躲避 |cRXP_ENEMY_Kel'gash the Wicked|r 的 |T136048:0|t[闪电] 和 |T136121:0|t[缩小]，将他绕柱子看向远处（视线），这样他就能取消每个法术。确保你有可用的冷却时间
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .isOnQuest 9215
step << Rogue
    #completewith next
    .goto Ghostlands,69.63,50.08,40,0
    .goto Ghostlands,69.64,51.43,40,0
    .goto Ghostlands,69.63,52.41,40,0
    .goto Ghostlands,67.54,50.89,40,0
    .goto Ghostlands,65.73,53.82,40,0
    .goto Ghostlands,68.41,54.61,40,0
    >>杀死 |cRXP_ENEMY_Shadowpine Catlords|r 和 |cRXP_ENEMY_Shadowpine Hexxers|r。掠夺他们的 |cRXP_LOOT_Catlord Claws|r 和 |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step << Rogue
    .goto Ghostlands,61.16,75.58,10,0
    .goto Ghostlands,60.28,73.66,10,0
    .goto Ghostlands,61.68,71.27,10,0
    .goto Ghostlands,61.81,71.16,10,0
    .goto Ghostlands,61.46,68.82,10,0
    .goto Ghostlands,64.27,73.63,10,0
    .goto Ghostlands,64.34,73.03,8,0
    .goto Ghostlands,61.46,73.38,10,0
    .goto Ghostlands,64.22,73.82,8,0
    .goto Ghostlands,63.93,73.70,8,0
    .goto Ghostlands,63.90,72.99,10,0
    .goto Ghostlands,64.87,70.28,10,0
    .goto Ghostlands,65.31,70.32,10,0
    .goto Ghostlands,64.70,67.70,10,0
    .goto Ghostlands,65.42,66.39,10,0
    .goto Ghostlands,64.66,64.07,10,0
    .goto Ghostlands,61.16,75.58
    >>|T136058:0|t[撬锁] 废墟附近地面上的 |cRXP_PICK_原始宝箱|r。从中抢走 |cRXP_LOOT_考古学家的萎缩头颅|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    .goto Ghostlands,61.23,75.22,40,0
    .goto Ghostlands,61.50,71.88,40,0
    .goto Ghostlands,61.76,67.88,40,0
    .goto Ghostlands,63.70,64.30,40,0
    .goto Ghostlands,65.33,66.10,40,0
    .goto Ghostlands,64.67,67.30,40,0
    .goto Ghostlands,65.10,70.20,40,0
    .goto Ghostlands,63.84,73.07,40,0
    .goto Ghostlands,63.04,74.16,40,0
    .goto Ghostlands,64.51,77.99,40,0
    .goto Ghostlands,61.23,75.22
    >>杀死 |cRXP_ENEMY_Shadowpine Catlords|r 和 |cRXP_ENEMY_Shadowpine Hexxers|r。掠夺他们的 |cRXP_LOOT_Catlord Claws|r 和 |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .complete 9214,3 --Collect Catlord Claws (x3)
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob Shadowpine Catlord
    .mob Shadowpine Hexxer
step
#loop
	.line Ghostlands,57.70,67.55,58.19,67.07,58.89,65.55,58.37,62.88,57.24,63.00,56.35,65.01,56.49,68.12,57.70,67.55
	.goto Ghostlands,57.70,67.55,30,0
	.goto Ghostlands,58.19,67.07,30,0
	.goto Ghostlands,58.89,65.55,30,0
	.goto Ghostlands,58.37,62.88,30,0
	.goto Ghostlands,57.24,63.00,30,0
	.goto Ghostlands,56.35,65.01,30,0
	.goto Ghostlands,56.49,68.12,30,0
	.goto Ghostlands,57.70,67.55,30,0
    >>杀死 |cRXP_ENEMY_Sentinel Infiltrators|r。掠夺他们以获得 |cRXP_LOOT_Controlling Orb|r
    .collect 23191,1,9169,1 --Collect Crystal Controlling Orb (x1)
    .mob Sentinel Infiltrator
step
    .goto Ghostlands,58.18,65.14
    >>点击|cRXP_PICK_Moon Crystal|r
    .complete 9169,1 --Collect Night Elf Moon Crystal Deactivated (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Solanna, |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9277 >>交任务: |cRXP_FRIENDLY_突袭塞布努瓦|r
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >>交任务: |cRXP_FRIENDLY_暗松巨魔的武器|r
    .turnin 9215 >>交任务: |cRXP_FRIENDLY_克尔加什的徽记！|r
    .goto Ghostlands,72.37,29.64
    .target Farstrider Solanna
    .target Captain Helios
    .isQuestComplete 9215
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Solanna, |cRXP_FRIENDLY_赫里奥斯中尉|r
    .turnin 9277 >>交任务: |cRXP_FRIENDLY_突袭塞布努瓦|r
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >>交任务: |cRXP_FRIENDLY_暗松巨魔的武器|r
    .goto Ghostlands,72.37,29.64
    .target Farstrider Solanna
    .target Captain Helios
step
    .abandon 9215 >>放弃！把克尔加什的头给我带来！
step << Paladin/Rogue/Warrior
    #completewith StoneOL
    +装备 |T135275:0|t[精工剑]
    .use 23410
    .itemcount 23410,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.2
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>走东边的斜坡
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师温努图斯|r
    .turnin 9275 >>交任务: |cRXP_FRIENDLY_香料|r
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,65.22,38.14,15,0
    .goto Ghostlands,63.85,38.10,15,0
    .goto Ghostlands,60.29,35.63,40 >>前往 |cRXP_FRIENDLY_Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师塞拉斯托|r
    .turnin 9169 >>交任务: |cRXP_FRIENDLY_关闭安欧维恩|r
    .target Magister Sylastor
step << !Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,45.17,32.37,50 >>返回 Traquillien
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,47.67,34.87,40 >>返回 Traquillien
    .isQuestAvailable 9151
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药] |cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .vendor >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .vendor >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .vendor >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #label Eralan5
    #completewith Truth
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan5
    #completewith Truth
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan5
    #completewith Truth
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师戴伦尼斯|r, |cRXP_FRIENDLY_顾问瓦尔文|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r
    .accept 9151 >>接任务: |cRXP_LOOT_太阳圣殿|r
    .goto Ghostlands,46.02,31.95
    .turnin 9193 >>交任务: |cRXP_FRIENDLY_调查阿曼尼墓穴|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务: |cRXP_FRIENDLY_巨魔的邪符|r
    .goto Ghostlands,44.74,32.28
    .target Magister Darenis
    .target Advisor Valwyn
    .target Deathstalker Maltendis
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #label Truth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_顾问瓦尔文|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r
    .turnin 9193 >>交任务: |cRXP_FRIENDLY_调查阿曼尼墓穴|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务: |cRXP_FRIENDLY_巨魔的邪符|r
    .goto Ghostlands,44.74,32.28
    .target Advisor Valwyn
    .target Deathstalker Maltendis
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Paladin wotlk
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
    .xp <20,1
step << Paladin wotlk
    #completewith SMTraining44
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
    .xp <20,1
step << Paladin wotlk
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前往 |cRXP_FRIENDLY_Bloodvalor|r
    .xp <20,1
step << Paladin wotlk
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9685 >>交任务: |cRXP_FRIENDLY_救赎死者|r
    .target Knight-Lord Bloodvalor
    .xp <20,1
step << Paladin wotlk
    #label SMTraining44
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 34769 >>训练 |T136103:0|t[召唤战马]
	.target Ithelis
	.target Osselan
    .xp <20,1
step << Warlock TBC
    +使用 |T133738:0|t[牺牲魔典] 和 |T133738:0|t[消耗暗影魔典]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    +使用 |T133738:0|t[牺牲魔法书]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    +使用 |T133738:0|t[消耗阴影魔典]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Druid
	#completewith DruidTrain5
	.cast 18960 >>施法传送：月光林地
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 783 >>训练你的职业法术 << wotlk
    .train 8925 >>训练你的职业法术 << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 8938 >>训练你的职业法术
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrain5
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
    .train 6756 >>训练你的职业法术
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << Druid/Paladin wotlk
    #completewith ReportMK
    .hs >>炉火至宁静
    .zoneskip Ghostlands
    .cooldown item,6948,>0
step << Paladin wotlk
    #completewith ReportMK
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T136103:0|t[Thalassian Warhorse] |cRXP_WARN_拖到你的动作栏上|r
    .cast 34769 >>骑上你的 |T136103:0|t[萨拉斯战马]
    .train 34769,3
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132660:0|t[药剂师长袍] |cRXP_BUY_|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132716:0|t[死亡猎手背心] |cRXP_BUY_|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #completewith StoneOL
    +装备 |T132660:0|t[药剂师长袍]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +装备 |T132716:0|t[死亡猎手背心]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << skip
    .goto Ghostlands,47.3,29.3
    .turnin 9135 >>交任务: |cRXP_FRIENDLY_返回军需官雷米尔身边|r
--VV BloodElf Mage
step
    #label ReportMK
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师坎迪瑞斯|r
    .turnin 9172 >>交任务: |cRXP_FRIENDLY_向魔导师坎迪瑞斯报到|r
    .accept 9176 >>接任务: |cRXP_LOOT_通灵双塔|r
    .goto Ghostlands,55.07,48.83
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼去
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师伊东尼斯|r
    .turnin 9151 >>交任务: |cRXP_FRIENDLY_太阳圣殿|r
    .accept 9220 >>接任务: |cRXP_LOOT_戴索姆之战|r
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师伊东尼斯|r
    .accept 9220 >>接任务: |cRXP_LOOT_戴索姆之战|r
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith Hearts
    >>杀死 |cRXP_ENEMY_Knucklerot|r。掠夺他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_如果需要，可以帮他找个组。如果你找不到组，或者无法单独带他，可以跳过此步骤|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
step
    #completewith Deatholme1
    >>杀死 |cRXP_ENEMY_Luzran|r。掠夺他的 |cRXP_LOOT_Head|r
    >>|cRXP_WARN_如果需要，可以帮他找个组。如果你找不到组，或者无法单独带他，可以跳过此步骤|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #completewith next
    .goto Ghostlands,40.57,48.56,12,0
    .goto Ghostlands,40.42,49.40,10 >>进入金字形神塔
step
    .goto Ghostlands,40.37,49.75
    >>掠夺里面的 |cRXP_PICK_Worn Chest|r 以获得 |cRXP_LOOT_Stone|r
    .complete 9176,1 --Collect Stone of Flame (x1)
step
    #completewith next
    .goto Ghostlands,34.34,48.77,12,0
    .goto Ghostlands,34.31,48.03,10 >>进入金字形神塔
step
    #label StoneOL
    .goto Ghostlands,34.30,47.67
    >>掠夺里面的 |cRXP_PICK_Worn Chest|r 以获得 |cRXP_LOOT_Stone|r
    .complete 9176,2 --Collect Stone of Light (x1)
step
    #xprate <1.7
    #label Hearts
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35
    >>杀死 |cRXP_ENEMY_Risen Stalkers|r。掠夺他们的 |cRXP_LOOT_Rotting Hearts|r
    >>杀死 |cRXP_ENEMY_Dreadbone Sentinels|r 和 |cRXP_ENEMY_Deathcage Sorcerers|r。掠夺他们的 |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Dreadbone Sentinels|r 施放 |r |T132357:0|t[Shield Bash] |cRXP_WARN_(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob Risen Stalker
    .mob Dreadbone Sentinel
    .mob Deathcage Sorcerer
step
    #xprate >1.6999
    #label Hearts
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35
    >>杀死 |cRXP_ENEMY_Risen Stalkers|r。掠夺他们的 |cRXP_LOOT_Rotting Hearts|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob Risen Stalker
    .itemcount 22641,4
step
    #label Deatholme1
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >>跑进戴索姆
    .isOnQuest 9220
step << Paladin/Druid/Shaman
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05
    >>杀死 |cRXP_ENEMY_Eyes of Dar'Khan|r、|cRXP_ENEMY_Nerubis Centurions|r 和 |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Nerubis Centurions|r的|T136067:0|t[致命毒药] |cRXP_WARN_因为它每 5 秒造成 31 点伤害（可叠加）。施放|r |T135949:0|t[净化] |cRXP_WARN_以将其移除|r << Paladin
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Nerubis Centurions|r的|T136067:0|t[致命毒药] |cRXP_WARN_因为它每 5 秒造成 31 点伤害（可叠加）。施放|r |T136067:0|t[解毒] |cRXP_WARN_以将其移除|r << Druid
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Nerubis Centurions|r的|T136067:0|t[致命毒药] |cRXP_WARN_因为它每 5 秒造成 31 点伤害（可叠加）。施放|r |T136067:0|t[治愈毒素] |cRXP_WARN_以将其移除|r << Shaman
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .complete 9220,3 --Kill Wailer (x6)
    .mob Eye of Dar'Khan
    .mob Nerubis Centurion
    .mob Wailer
    .train 1152,3 << Paladin
    .train 8946,3 << Druid
    .train 526,3 << Shaman
step
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05
    >>杀死 |cRXP_ENEMY_Eyes of Dar'Khan|r、|cRXP_ENEMY_Nerubis Centurions|r 和 |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_小心|r |cRXP_ENEMY_Nerubis Centurions|r 的 |T136067:0|t[致命毒药] |cRXP_WARN_因为它每 5 秒造成 31 点伤害（可叠加）|r
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .complete 9220,3 --Kill Wailer (x6)
    .mob Eye of Dar'Khan
    .mob Nerubis Centurion
    .mob Wailer
step
    #completewith RDraught
    .hs >>炉火至宁静
    .cooldown item,6948,>0
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板卡拉林|r
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_从他那里购买|r |T133978:0|t[Snapvine 西瓜] |cRXP_BUY_|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_从他那里购买|r |T132796:0|t[甜瓜汁] |cRXP_BUY_并|r |T133978:0|t[Snapvine西瓜] |cRXP_BUY_|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .cooldown item,6948,>0
    .xp <15,1
    .xp >30,1
step
    #xprate <1.7
    #completewith Aminel
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >>上楼去
step
    #xprate <1.7
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师艾米妮尔|r
    .accept 9216 >>接任务: |cRXP_LOOT_腐烂精华|r
    .turnin 9216 >>交任务: |cRXP_FRIENDLY_腐烂精华|r
    .accept 9218 >>接任务: |cRXP_LOOT_脊骨之尘|r
    .turnin 9218 >>交任务: |cRXP_FRIENDLY_脊骨之尘|r
    .target Magistrix Aminel
    .itemcount 22641,10
    .itemcount 22642,10
step
    #xprate <1.7
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师艾米妮尔|r
    .accept 9218 >>接任务: |cRXP_LOOT_脊骨之尘|r
    .turnin 9218 >>交任务: |cRXP_FRIENDLY_脊骨之尘|r
    .target Magistrix Aminel
    .itemcount 22642,10
step
    #label Aminel
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师艾米妮尔|r
    .accept 9216 >>接任务: |cRXP_LOOT_腐烂精华|r
    .turnin 9216 >>交任务: |cRXP_FRIENDLY_腐烂精华|r
    .target Magistrix Aminel
    .itemcount 22641,10
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132660:0|t[药剂师长袍] |cRXP_BUY_|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T132716:0|t[死亡猎手背心] |cRXP_BUY_|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Mage/Warlock/Priest
    #completewith StoneOL
    +装备 |T132660:0|t[药剂师长袍]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +装备 |T132716:0|t[死亡猎手背心]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step
    #label Truth2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_顾问瓦尔文|r, |cRXP_FRIENDLY_亡灵哨兵玛尔特迪斯|r
    .turnin 9193 >>交任务: |cRXP_FRIENDLY_调查阿曼尼墓穴|r
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >>交任务: |cRXP_FRIENDLY_巨魔的邪符|r
    .goto Ghostlands,44.74,32.28
    .target Advisor Valwyn
    .target Deathstalker Maltendis
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r
    .turnin 9156 >>交任务: |cRXP_FRIENDLY_通缉：纳克雷洛特和卢兹兰|r
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step << Rogue wotlk
    #completewith Eralan6
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药] |cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .vendor >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .vendor >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .vendor >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_WARN_保留|r |T135662:0|t[叶刃匕首] |cRXP_WARN_for 稍后你将需要它来完成任务|r << tbc
    .turnin 10548,1 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << tbc
    .turnin 10548 >>交任务: |cRXP_FRIENDLY_[The Sad Truth]|r << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #label Eralan6
    #completewith Jurion
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan6
    #completewith Jurion
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan6
    #completewith Jurion
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label TwinZ
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师坎迪瑞斯|r
    .turnin 9176 >>交任务: |cRXP_FRIENDLY_通灵双塔|r
    .accept 9167 >>接任务: |cRXP_LOOT_叛徒的毁灭|r
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼去
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师伊东尼斯|r, |cRXP_FRIENDLY_奥术师亚尼达|r
    .turnin 9220 >>交任务: |cRXP_FRIENDLY_戴索姆之战|r
    .accept 9170 >>接任务: |cRXP_LOOT_达尔坎的军官|r
    .goto Ghostlands,54.87,48.55
    .accept 9877 >>接任务: |cRXP_LOOT_疗伤药膏|r
    .goto Ghostlands,54.82,48.35
    .target Magister Idonis
    .target Arcanist Janeda
step
    #label RDraught
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师雷兹特恩|r
    .turnin 9877 >>交任务: |cRXP_FRIENDLY_疗伤药膏|r
    .accept 9164 >>接任务: |cRXP_LOOT_戴索姆的俘虏|r
    .target Apothecary Renzithen
step
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒沃尔伊|r
    .turnin 9281 >>交任务: |cRXP_FRIENDLY_清理道路|r
    .target Apprentice Vor'el
step
    #completewith Varnis
    .cast 28486 >>使用|T134754:0|t[天灾克星药剂]
    .use 22779
    .itemcount 22779,1
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Luzran|r。掠夺他的 |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_spawns 在流血的（西部）通灵塔，沿着死亡之痕巡逻，然后返回直到他到达河流|r
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,50,0
    .goto Ghostlands,40.76,47.73,50,0
    .goto Ghostlands,41.84,46.91,50,0
    .goto Ghostlands,41.49,45.52,50,0
    .goto Ghostlands,39.69,46.64,50,0
    .goto Ghostlands,39.27,47.41,50,0
    .goto Ghostlands,37.53,49.81,50,0
    .goto Ghostlands,36.15,51.63,50,0
    .goto Ghostlands,35.26,52.16,50,0
    .goto Ghostlands,33.69,52.57,50,0
    .goto Ghostlands,31.89,54.85,50,0
    .goto Ghostlands,30.16,55.32,50,0
    .goto Ghostlands,27.71,55.36,50,0
    .goto Ghostlands,25.79,55.11,50,0
    .goto Ghostlands,24.53,53.16,50,0
    .goto Ghostlands,23.79,51.34,50,0
    .goto Ghostlands,22.22,48.11,50,0
    .goto Ghostlands,21.93,46.53,50,0
    .goto Ghostlands,22.05,44.27,50,0
    .goto Ghostlands,22.14,42.83,50,0
    .goto Ghostlands,22.10,40.09,50,0
    .goto Ghostlands,22.66,38.42,50,0
    .goto Ghostlands,23.67,37.62,50,0
    .goto Ghostlands,26.79,37.49,50,0
    .goto Ghostlands,27.94,38.01,50,0
    .goto Ghostlands,29.05,37.85,50,0
    .goto Ghostlands,30.25,36.63,50,0
    .goto Ghostlands,29.87,34.81,50,0
    .goto Ghostlands,27.12,26.04,50,0
    .goto Ghostlands,25.31,15.03,50,0
    .goto Ghostlands,40.58,48.42
    >>杀死 |cRXP_ENEMY_Knucklerot|r。掠夺他的 |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_spawns 在嚎叫（东部）通灵塔，沿着通往风行者村的道路，穿过月亮圣殿附近的河流，然后进入金雾村|r
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Knucklerot|r|cRXP_WARN_ 的 |T136016:0|t[腐蚀毒药] 通过使用 |r |T135963:0|t[正义之锤] 来打断它 << Paladin
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Knucklerot|r|cRXP_WARN_ 的 |T136016:0|t[腐蚀毒药] 通过使用 |r |T132219:0|t[踢腿] 来打断它 << Rogue
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
--VV 28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
step
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,50,0
    .goto Ghostlands,34.18,50.75,50,0
    .goto Ghostlands,34.27,52.13,50,0
    .goto Ghostlands,35.59,52.11,50,0
    .goto Ghostlands,36.15,51.60,50,0
    .goto Ghostlands,37.01,52.90,50,0
    .goto Ghostlands,37.70,59.57,50,0
    .goto Ghostlands,37.30,63.89,50,0
    .goto Ghostlands,36.97,68.06,50,0
    .goto Ghostlands,36.39,68.31,50,0
    .goto Ghostlands,36.77,65.23,50,0
    .goto Ghostlands,37.87,60.95,50,0
    .goto Ghostlands,38.12,57.42,50,0
    .goto Ghostlands,38.20,53.38,50,0
    .goto Ghostlands,37.93,49.52,50,0
    .goto Ghostlands,37.65,48.77,50,0
    .goto Ghostlands,37.57,44.63,50,0
    .goto Ghostlands,37.95,41.65,50,0
    .goto Ghostlands,38.66,38.08,50,0
    .goto Ghostlands,39.29,33.57,50,0
    .goto Ghostlands,39.64,31.98,50,0
    .goto Ghostlands,34.35,49.33
    >>杀死 |cRXP_ENEMY_Luzran|r。掠夺他的 |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_spawns 在流血的（西部）通灵塔，沿着死亡之痕巡逻，然后返回直到他到达河流|r
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >>跑进戴索姆
    .isOnQuest 9164
step
    #completewith next
    .goto Ghostlands,31.70,73.64,10,0
    .goto Ghostlands,31.78,72.91,10 >>进入墓穴
step
    #label Jurion
    .goto Ghostlands,32.19,73.08,8,0
    >>杀死 |cRXP_ENEMY_欺骗者Jurion|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师恩尼斯|r
    .complete 9170,3 --Kill Jurion the Deceiver (x1)
    .goto Ghostlands,32.10,74.45,-1
    .complete 9164,1 --Apothecary Enith Rescued
    .goto Ghostlands,32.15,73.95,-1
    .mob Jurion the Deceiver
    .target Apothecary Enith
    .skipgossip
step
    #completewith next
    .goto Ghostlands,32.19,73.08,8,0
    .goto Ghostlands,31.78,72.91,10,0
    .goto Ghostlands,31.70,73.64,10 >>退出墓穴
step
    .goto Ghostlands,37.36,79.33
    >>杀死 |cRXP_ENEMY_堕落者Mirdoran|r
    .complete 9170,1 --Kill Mirdoran the Fallen (x1)
    .mob Mirdoran the Fallen
step
    #completewith Varnis
    .goto Ghostlands,37.51,84.18,30,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,40.98,83.22,15 >>前往 |cRXP_FRIENDLY_Varnis|r
step
    #completewith next
    .goto Ghostlands,41.24,83.04,15,0
    >>杀死 |cRXP_ENEMY_Borgoth the Bloodletter|r 如果他在 |cRXP_FRIENDLY_Varnis|r 旁边
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Varnis
    .goto Ghostlands,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒瓦尼斯|r
    .complete 9164,2 --Apprentice Varnis Rescued
    .target Apprentice Varnis
    .skipgossip
step
    #completewith next
    .goto Ghostlands,35.24,88.23,15,0
    .goto Ghostlands,35.77,89.13,15,0
    >>检查第一个金字塔内的 |cRXP_ENEMY_Masophet the Black|r。如果他出现，就杀死他
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    #completewith Vedoran
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.79,89.93,15 >>前往 |cRXP_FRIENDLY_Vedoran|r
 step
    #completewith next
    >>杀死 |cRXP_ENEMY_Borgoth the Bloodletter|r 如果他在 |cRXP_FRIENDLY_Vedoran|r 旁边
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Vedoran
    .goto Ghostlands,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠维多兰|r
    .complete 9164,3 --Ranger Vedoran Rescued
    .target Ranger Vedoran
    .skipgossip
step
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13
    >>杀死任一金字塔内的 |cRXP_ENEMY_Masophet the Black|r
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04
    >>杀死任一屠宰场内的 |cRXP_ENEMY_Borgoth the Bloodletter|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    .goto Ghostlands,32.25,82.18,10,0
    .goto Ghostlands,32.80,82.45,10,0
    .goto Ghostlands,32.65,83.15,8 >>进入中央金字塔。杀死里面所有的 |cRXP_ENEMY_Eyes of Dar'Khan|r 和 |cRXP_ENEMY_Deatholme Necromancers|r
    .mob Eye of Dar'Khan
    .mob Deatholme Necromancer
    .isOnQuest 9167
step
    .goto Ghostlands,32.80,82.39,10,0
    .goto Ghostlands,33.04,81.25
    >>杀死位于神塔底部的 |cRXP_ENEMY_Dar'Khan Drathir|r
    >>|cRXP_WARN_LoS his|r |T136118:0|t[腐败] |cRXP_WARN_and|r |T136197:0|t[暗影箭] 通过在通灵塔周围放风筝来
    >>|cRXP_WARN_确保周围没有其他怪物，否则他会对你施放|r|T136183:0|t[恐惧]|cRXP_WARN_|r
    >>|cRXP_WARN_使用|r |T135738:0|t[法力分流] |cRXP_WARN_将|r |cRXP_ENEMY_死灵法师|r |cRXP_WARN_拉出房间|r << BloodElf Paladin tbc/BloodElf Rogue tbc
    >>|cRXP_WARN_如果需要的话，为他找一个小组|r << !Hunter !Warlock
    .complete 9167,1 --Collect Dar'Khan's Head (x1)
    .mob Dar'Khan Drathir
step
    #xprate 1.49-1.58
    .goto Ghostlands,32.80,82.45
    .xp 21+14900 >>升级至 14900+/22400xp
    .isOnQuest 9156
step
    #xprate 1.49-1.58
    .goto Ghostlands,32.80,82.45
    .xp 21+18650 >>升级至 18650+/22400xp
    .isQuestTurnedIn 9156
step
    #xprate 1.58-1.68
    .goto Ghostlands,32.80,82.45
    .xp 21+14400 >>升级至 14400+/22400xp
    .isOnQuest 9156
step
    #xprate 1.58-1.68
    .goto Ghostlands,32.80,82.45
    .xp 21+18400 >>升级至 18400+/22400xp
    .isQuestTurnedIn 9156
step
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师坎迪瑞斯|r
    .turnin 9167 >>交任务: |cRXP_FRIENDLY_叛徒的毁灭|r
    .accept 9328 >>接任务: |cRXP_LOOT_辛多雷的英雄|r << BloodElf
    .accept 9811 >>接任务: |cRXP_LOOT_辛多雷的朋友|r << !BloodElf
    .target Magister Kaendris
    .isQuestComplete 9167
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师坎迪瑞斯|r
    .accept 9328 >>接任务: |cRXP_LOOT_辛多雷的英雄|r << BloodElf
    .accept 9811 >>接任务: |cRXP_LOOT_辛多雷的朋友|r << !BloodElf
    .target Magister Kaendris
    .isQuestTurnedIn 9167
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>上楼去
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师伊东尼斯|r, |cRXP_FRIENDLY_奥术师亚尼达|r
    .turnin 9170 >>交任务: |cRXP_FRIENDLY_达尔坎的军官|r
    .goto Ghostlands,54.87,48.55
    .turnin 9164 >>交任务: |cRXP_FRIENDLY_戴索姆的俘虏|r
    .goto Ghostlands,54.82,48.35
    .target Magister Idonis
    .target Arcanist Janeda
step << !Troll/!wotlk !Orc/!wotlk
    #completewith KnuLuz
    .hs >>炉火至宁静
    .cooldown item,6948,>0
step
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补给官弗雷迪加|r
    >>|cRXP_BUY_从他那里购买|r |T133759:0|t[Tranquillien Champion's 披风] |cRXP_BUY_|r
    .collect 22990,1,496,1 --Collect Tranquillien Champion's 披风 (1)
    .target Provisioner Vredigar
    .itemStat 15,LEVEL,<21
    .isQuestTurnedIn 9167
step << Rogue wotlk
    #completewith SMTraining5
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药] |cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_和|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_（如果它们涨价的话）|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果价格上涨，请从她那里购买|r |T135344:0|t[邪恶弯刀] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾拉兰|r
    >>|cRXP_BUY_如果有的话，从她那里购买|r |T135427:0|t[喉咙穿孔器] |cRXP_BUY_|r
    .vendor 16268 >>供应商垃圾
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #label Eralan7
    #completewith SMTraining5
    +装备 |T135427:0|t[喉咙穿刺者] 和 |T135344:0|t[邪恶弯刀]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #requires Eralan7
    #completewith SMTraining5
    +装备 |T135344:0|t[邪恶弯刀]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #requires Eralan7
    #completewith SMTraining5
    +装备 |T135427:0|t[喉咙穿刺器]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label KnuLuz
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵拉提尔|r
    .turnin 9156 >>交任务: |cRXP_FRIENDLY_通缉：纳克雷洛特和卢兹兰|r
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step
    #xprate <1.5
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35
    .xp 20 >>升级至 20
step
    #completewith SMTraining5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阳翼|r
    .fly Silvermoon >>飞往银月城
    .target Skymaster Sunwing
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指导者安瑟隆|r
    .turnin 9404 >>交任务: |cRXP_FRIENDLY_活动的树木|r
    .target Instructor Antheol
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佩拉斯卡米|r
    .skill riding,75 >>从他那里训练|T136103:0|t[学徒骑术]
	.target Perascamin
    .money <4.5 << Rogue
    .money <4.693 << !Rogue
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维奈丝特拉|r
    +|cRXP_BUY_从她那里购买任何|r |T132228:0|t[Hawkstrider] |cRXP_BUY_你喜欢的东西|r
	.target Winaestra
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9025 << Rogue
    .money <1.083 << !Rogue
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用 |T132227:0|t[红色陆行鸟] 来学习它
    .use 28927
    .itemcount 28927,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用 |T132229:0|t[蓝色陆行鸟] 来学习它
    .use 29220
    .itemcount 29220,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用 |T132228:0|t[黑色陆行鸟] 来学习
    .use 29221
    .itemcount 29221,1
step << BloodElf !Warlock !Paladin wotlk
    .cast 55884 >>使用 |T132231:0|t[紫色陆行鸟] 来学习
    .use 29222
    .itemcount 29222,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132227:0|t[Red Hawkstrider] |cRXP_WARN_拖到你的动作栏上|r
    .cast 34795 >>骑上你的 |T132227:0|t[红色陆行鸟]
    .train 34795,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132229:0|t[蓝色陆行鸟] |cRXP_WARN_拖到你的动作栏上|r
    .cast 35020 >>骑上你的 |T132229:0|t[蓝色陆行鸟]
    .train 35020,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132228:0|t[黑色鹰行者] |cRXP_WARN_拖到你的动作栏上|r
    .cast 29221 >>骑上你的 |T132228:0|t[黑色陆行鸟]
    .train 29221,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132231:0|t[紫色 Hawkstrider] |cRXP_WARN_拖到你的动作栏上|r
    .cast 29222 >>骑上你的 |T132231:0|t[紫色陆行鸟]
    .train 29222,3
step << Mage/Priest/Warlock/Hunter/Paladin
    #completewith SMTraining5
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>前往: |cRXP_PICK_银月城|r
step << Priest
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师维纳|r
    >>|cRXP_BUY_如果便宜的话，从 AH 购买 a|r |T135144:0|t[高级魔杖] |cRXP_BUY_|r
    >>|cRXP_WARN_如果它们都太贵，请跳过此步骤|r
    .collect 11288,1,496,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #completewith SMTraining5
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >>前往 |cRXP_FRIENDLY_Lotheolan|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >>前往 |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    #label SMTraining5
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛塞兰|r
    .train 7128 >>训练你的职业法术
    .target Lotheolan
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞伊丹纳|r
    .train 1953 >>训练你的职业法术
step << Mage
    #label SMTraining5
    .goto Silvermoon City,58.07,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳林斯|r
    .train 32272 >>火车 |T135761:0|t[传送：银月城]
    .target Narinth
    .money <0.5000
step << Hunter
    #completewith SMTraining5
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>前往 |cRXP_FRIENDLY_Zandine|r
step << Hunter
    #label SMTraining5
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪恩|r
    .train 14282 >>训练你的职业法术
    .target Zandine
 step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T135489:0|t[重型反曲弓] |cRXP_BUY_|r
    .collect 3027,1,496,1 --Reinforced Bow (1)
    .target Celana
    .money <0.6032 << BloodElf
    .money <0.6336 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.7
step << Warlock
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>进入大楼，然后下楼
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托利安|r
    >>|cRXP_BUY_从他那里购买|r |T133738:0|t[魔典：折磨 (等级 2)] |cRXP_BUY_|r
    .collect 16346,1,496,1 --Grimoire of Torment Rank 2
    .target Torian
    .train 20317,1
step << Warlock TBC
    +使用 |T133738:0|t[折磨魔典 (等级 2)]
    .use 16346
    .itemcount 16346,1
    .train 20317,1
step << Warlock
    #label SMTraining5
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莱尼娅|r
    .train 5784 >>训练 |T136103:0|t[召唤地狱战马] << wotlk
    .train 706 >>训练你的职业法术 << tbc
    .target Talionia
step << Warlock wotlk
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T136103:0|t[Felsteed] |cRXP_WARN_拖到你的操作栏上|r
    .cast 5784 >>骑上你的 |T136103:0|t[地狱战马]
    .train 5784,3
step << Paladin wotlk
    #completewith SMTraining5
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,20 >>前往 |cRXP_FRIENDLY_Ithelis|r 和 |cRXP_FRIENDLY_Osselan|r
    .isQuestTurnedIn 9685
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>前往 |cRXP_FRIENDLY_Bloodvalor|r
--   .train 647,1 << Paladin tbc
--  .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_骑士领主布拉德瓦罗|r
    .turnin 9685 >>交任务: |cRXP_FRIENDLY_救赎死者|r
    .target Knight-Lord Bloodvalor
step << Paladin wotlk
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_跳到下面的长凳上，避免走上楼梯|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瑟里斯|r, |cRXP_FRIENDLY_欧塞兰|r
    .train 34769 >>训练 |T136103:0|t[召唤战马]
	.target Ithelis
	.target Osselan
    .train 34769,1
step << Paladin
    #completewith LorThemar
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T136103:0|t[Thalassian Warhorse] |cRXP_WARN_拖到你的动作栏上|r
    .cast 34769 >>骑上你的 |T136103:0|t[萨拉斯战马]
    .train 34769,3
step << Rogue
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>前往 |cRXP_FRIENDLY_Zelanis|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[破裂] |cRXP_WARN_以便稍后完成任务|r << tbc
    .accept 10794 >>接任务: |cRXP_LOOT_碎手盗贼|r
    .train 8676 >>列车 |T132282:0|t[伏击] << tbc
    .train 1943 >>列车 |T132302:0|t[破裂] << tbc
    .train 1943 >>训练你的职业法术 << wotlk
    .target Zelanis
    .xp <20,1
    .xp >22,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[破裂] |cRXP_WARN_以便稍后完成任务|r << tbc
    .accept 10794 >>接任务: |cRXP_LOOT_碎手盗贼|r
    .train 8676 >>列车 |T132282:0|t[伏击] << tbc
    .train 1943 >>列车 |T132302:0|t[破裂] << tbc
    .train 1759 >>训练你的职业法术
    .target Zelanis
    .xp <22,1
    .xp >24,1
step << Rogue
    #label SMTraining5
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟兰尼斯|r
    >>|cRXP_WARN_确保你已经训练过|r |T132282:0|t[伏击] |cRXP_WARN_和|r |T132302:0|t[破裂] |cRXP_WARN_以便稍后完成任务|r << tbc
    .accept 10794 >>接任务: |cRXP_LOOT_碎手盗贼|r
    .train 8676 >>列车 |T132282:0|t[伏击] << tbc
    .train 1943 >>列车 |T132302:0|t[破裂] << tbc
    .train 6762 >>训练你的职业法术 << wotlk
    .target Zelanis
    .xp <24,1
step << Rogue wotlk
    .goto Silvermoon City,80.47,51.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔莉亚|r
    >>|cRXP_BUY_从她那里购买|r |T132273:0|t[速效毒药] |cRXP_BUY_|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Darlia
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈雷尼·平原行者|r
    .train 8938 >>训练你的职业法术
    .target Harene Plainwalker
	.xp <18,1
	.xp >20,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈雷尼·平原行者|r
    .train 6756 >>训练你的职业法术
    .target Harene Plainwalker
	.xp <20,1
	.xp >22,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈雷尼·平原行者|r
    .train 8926 >>训练你的职业法术
    .target Harene Plainwalker
	.xp <22,1
step << skip
    .goto Silvermoon City,53.926,71.029
    .turnin 9134 >>交任务: |cRXP_FRIENDLY_葛拉米|r
--VV BloodElf Paladin
step << Warlock
    .abandon 10605 >>放弃卡伦丁召唤
step
    #completewith UndercitySM
    .goto Silvermoon City,75.76,58.26,20,0 << Druid
    .goto Silvermoon City,75.35,51.78,30,0 << Druid
    .goto Silvermoon City,79.93,33.54,30,0 << Paladin wotlk
    .goto Silvermoon City,77.32,33.43,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,74.47,36.83,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,63.47,31.98,20,0
    .goto Silvermoon City,57.48,24.49,20,0
    .goto Silvermoon City,53.80,20.23,50 >>前往 |cRXP_FRIENDLY_Lor'themar|r
step
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛瑟玛·塞隆|r
    .turnin 9328 >>交任务: |cRXP_FRIENDLY_辛多雷的英雄|r << BloodElf
    .accept 9621 >>接任务: |cRXP_LOOT_部落的特使|r << BloodElf
    .turnin 9811 >>交任务: |cRXP_FRIENDLY_辛多雷的朋友|r << !BloodElf
    .accept 9812 >>接任务: |cRXP_LOOT_部落的特使|r << !BloodElf
    .target Lor'themar Theron
    .isOnQuest 9328 << BloodElf
    .isOnQuest 9811 << !BloodElf
step
    #label LorThemar
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛瑟玛·塞隆|r
    .accept 9621 >>接任务: |cRXP_LOOT_部落的特使|r << BloodElf
    .accept 9812 >>接任务: |cRXP_LOOT_部落的特使|r << !BloodElf
    .target Lor'themar Theron
    .isQuestTurnedIn 9328 << BloodElf
    .isQuestTurnedIn 9811 << !BloodElf
step
    #completewith UndercitySM
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    #completewith UndercitySM
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0 << !Undead/!Mage
    .goto Undercity,71.33,44.14,10,0 << Undead Mage
    .goto Undercity,60.07,47.70,10 >>乘电梯前往幽暗城 << !Undead/!Mage
    .goto Undercity,71.88,40.45,10 >>乘电梯前往幽暗城 << Undead Mage
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
    .fp Undercity >>获取幽暗城飞行路线
    .target Michael Garrett
step
    #xprate >1.4999
    .goto Undercity,67.73,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norman|r
    .home >>将你的炉石设置为幽暗城
    .target Innkeeper Norman
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >>前往 |cRXP_FRIENDLY_Hannah|r
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
    >>|cRXP_BUY_从她那里购买 a|r |T134419:0|t[传送符文] |cRXP_BUY_|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .money <0.3000 << Troll
    .money <0.2850 << !Troll
    .target Hannah Akeley
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱克斯顿·莫泰姆|r, 他在楼上
    .train 3563 >>火车 |T135766:0|t[传送：幽暗城]
    .money <0.2000 << Troll
    .money <0.1900 << !Troll
    .target Lexington Mortaim
step << Rogue
    .goto Undercity,77.49,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathaniel|r
    >>|cRXP_BUY_从他那里购买|r |T135423:0|t[致命飞斧] |cRXP_BUY_|r
    .collect 25875,1,496,1 --Deadly Throwing Axe (1)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<2
    .isQuestAvailable 496
step << Rogue
    #completewith next
    +装备 |T135423:0|t[致命飞斧]
    .use 25875
    .itemcount 25875,1
    .itemStat 18,QUALITY,<2
step
    #completewith UndercitySM
    .goto Undercity,63.84,47.17,5,0 << !Mage
    .goto Undercity,65.50,56.75,20,0 << !Mage
    .goto Undercity,64.42,64.62,20,0 << !Mage
    .goto Undercity,51.88,64.84,20,0
    .goto Undercity,46.28,73.10,15,0
    .goto Undercity,45.31,78.24,15,0
    .goto Undercity,46.18,83.63,15,0
    .goto Undercity,48.80,87.63,15,0
    .goto Undercity,52.45,89.49,15,0
    .goto Undercity,58.06,91.79,20 >>前往皇家区内的 |cRXP_FRIENDLY_Sylvanas|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Sylvanas, |cRXP_FRIENDLY_银月大使欧诺·炎伤|r
    .turnin 9621 >>交任务: |cRXP_FRIENDLY_部落的特使|r << BloodElf
    .accept 9626 >>接任务: |cRXP_LOOT_觐见酋长|r << BloodElf
    .turnin 9180 >>交任务: |cRXP_FRIENDLY_幽暗城之旅|r << BloodElf
    .turnin 9812 >>交任务: |cRXP_FRIENDLY_部落的特使|r << !BloodElf
    .accept 9813 >>接任务: |cRXP_LOOT_觐见酋长|r << !BloodElf
    .turnin 9177 >>交任务: |cRXP_FRIENDLY_幽暗城之旅|r << !BloodElf
    .goto Undercity,58.06,91.79
    .accept 9425 >>接任务: |cRXP_LOOT_前往塔伦米尔|r << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .target Lady Sylvanas Windrunner
    .target Ambassador Sunsorrow << BloodElf
    .isOnQuest 9621 << BloodElf
    .isOnQuest 9812 << !BloodElf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Sylvanas, |cRXP_FRIENDLY_银月大使欧诺·炎伤|r
    .accept 9626 >>接任务: |cRXP_LOOT_觐见酋长|r << BloodElf
    .turnin 9180 >>交任务: |cRXP_FRIENDLY_幽暗城之旅|r << BloodElf
    .accept 9813 >>接任务: |cRXP_LOOT_觐见酋长|r << !BloodElf
    .turnin 9177 >>交任务: |cRXP_FRIENDLY_幽暗城之旅|r << !BloodElf
    .goto Undercity,58.06,91.79
    .accept 9425 >>接任务: |cRXP_LOOT_前往塔伦米尔|r << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .target Lady Sylvanas Windrunner
    .target Ambassador Sunsorrow << BloodElf
    .isQuestTurnedIn 9621 << BloodElf
    .isQuestTurnedIn 9812 << !BloodElf
step
    #label UndercitySM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Sylvanas, |cRXP_FRIENDLY_银月大使欧诺·炎伤|r
    .turnin 9177 >>交任务: |cRXP_FRIENDLY_幽暗城之旅|r << !BloodElf
    .turnin 9180 >>交任务: |cRXP_FRIENDLY_幽暗城之旅|r << BloodElf
    .goto Undercity,58.06,91.79
    .accept 9425 >>接任务: |cRXP_LOOT_前往塔伦米尔|r << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .target Lady Sylvanas Windrunner
    .target Ambassador Sunsorrow << BloodElf
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞希娅·黎明玫瑰|r
    .train 879 >>训练你的职业法术
	.target Champion Cyssa Dawnrose
    .xp <20,1
    .xp >22,1
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞希娅·黎明玫瑰|r
    .train 19835 >>训练你的职业法术
	.target Champion Cyssa Dawnrose
    .xp <22,1
    .xp >24,1
step << Paladin
    #label SMTraining5
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞希娅·黎明玫瑰|r
    .train 5588 >>训练你的职业法术
	.target Champion Cyssa Dawnrose
    .xp <24,1
step
    #completewith ExitUC
    .goto Undercity,55.20,90.91
    .goto Undercity,67.88,14.97,30 >>|cRXP_WARN_前往皇家区主平台的边缘。执行“跳过登出”操作，将角色定位到看起来像漂浮的状态，然后登出并重新登录|r
    .link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_点击这里|r
step
    .abandon 9156 >>通缉遗弃者：Knucklerot 和 Luzran
    .abandon 9167 >>抛弃叛徒的破坏
    .isOnQuest 9156
    .isOnQuest 9167
step
    .abandon 9156 >>通缉遗弃者：Knucklerot 和 Luzran
    .isOnQuest 9156
step
    .abandon 9167 >>抛弃叛徒的破坏
    .isOnQuest 9167
step
    #label ExitUC
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
    .isQuestAvailable 496
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velma|r
    .skill riding,75 >>训练 |T136103:0|t[学徒骑术] 来自她
    .target Velma Warnam
    .money <4.5
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_撒迦利亚·普斯特|r
    +|cRXP_BUY_从他那里购买任何你喜欢的|r |T132264:0|t[骷髅马] |cRXP_BUY_|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[红色骷髅马]来学习它
    .use 13331
    .itemcount 13331,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[蓝色骷髅马]来学习它
    .use 13332
    .itemcount 13332,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用 |T132264:0|t[棕色骷髅马] 来学习它
    .use 13333
    .itemcount 13333,1
step << !Warlock Undead wotlk
    .cast 55884 >>使用|T132264:0|t[黑色骷髅马]来学习它
    .use 46308
    .itemcount 46308,1
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132264:0|t[红色骷髅马] |cRXP_WARN_拖到你的动作栏上|r
    .cast 17462 >>骑上你的 |T132264:0|t[红色骷髅马]
    .train 17462,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132264:0|t[蓝色骷髅马] |cRXP_WARN_拖到你的动作栏上|r
    .cast 17463 >>骑上你的 |T132264:0|t[蓝色骷髅马]
    .train 17463,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132264:0|t[棕色骷髅马] |cRXP_WARN_拖到你的动作栏上|r
    .cast 17464 >>骑上你的 |T132264:0|t[棕色骷髅马]
    .train 17464,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132264:0|t[黑色骷髅马] |cRXP_WARN_拖到你的动作栏上|r
    .cast 64977 >>骑上你的 |T132264:0|t[黑色骷髅马]
    .train 64977,3
step
    #xprate <1.5
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>登上齐柏林飞艇塔
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>登上齐柏林飞艇塔
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .money <4.5
step << !Warlock Orc wotlk
    #xprate >1.4999
    #completewith next
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.73,60.94,30,0
    .goto Orgrimmar,52.15,58.31,30,0
    .goto Orgrimmar,63.08,39.25,30,0
    .goto Orgrimmar,64.31,38.12,30,0
    .goto Orgrimmar,66.07,40.04,30,0
    .goto Orgrimmar,72.25,21.42,30,0
    .goto Orgrimmar,69.41,13.11,20 >>前往 |cRXP_FRIENDLY_Kildar|r
    .money <4.5
step << !Warlock Orc wotlk
    #xprate >1.4999
    .goto Orgrimmar,69.41,13.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r
    .skill riding,75 >>从他那里训练|T136103:0|t[学徒骑术]
    .target Kildar
    .money <4.5
step << !Warlock Orc wotlk
    #xprate >1.4999
    .goto Orgrimmar,69.38,12.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥古纳罗|r
    +|cRXP_BUY_从他那里购买任何|r |T132224:0|t[Wolf] |cRXP_BUY_你喜欢的东西|r
	.target Ogunaro Wolfrunner
    .itemcount 1132,<1 --Horn of the Timber Wolf
    .itemcount 5665,<1 --Horn of the Dire Wolf
    .itemcount 5668,<1 --Horn of the Brown Wolf
    .itemcount 46099,<1 --Horn of the Black Wolf
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >>使用 |T132224:0|t[森林狼之角] 来学习它
    .use 1132
    .itemcount 1132,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >>使用 |T132266:0|t[恐狼之角] 来学习它
    .use 5665
    .itemcount 5665,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >>使用 |T132224:0|t[棕狼之角] 来学习它
    .use 5668
    .itemcount 5668,1
step << !Warlock Orc wotlk
    #xprate >1.4999
    .cast 55884 >>使用|T132224:0|t[黑狼之角]来学习它
    .use 46099
    .itemcount 46099,1
step << Troll Mage wotlk
    #xprate >1.4999
    #completewith next
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,41.94,64.39,15,0
    .goto Orgrimmar,38.78,77.83,15,0
    .goto Orgrimmar,38.72,83.38,12,0
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>前往 |cRXP_FRIENDLY_Thuul|r
    .money <4.7125
step << Troll Mage wotlk
    #xprate >1.4999
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索乌|r
    .train 3567 >>火车 |T135759:0|t[传送：奥格瑞玛]
    .target Thuul
    .money <4.7125
step << Troll Mage wotlk
    #xprate >1.4999
    #completewith next
    .goto Orgrimmar,42.49,73.39,40,0
    .goto Orgrimmar,52.03,85.17,30,0
    .goto Orgrimmar,52.20,88.80,30,0
    .goto Orgrimmar,49.32,91.05,30,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>前往 |cRXP_FRIENDLY_Xar'Ti|r
    .train 3567,3
    .money <4.5
step << Troll wotlk
    #xprate >1.4999
    #completewith next
    .goto Durotar,49.41,20.97,35,0
    .goto Durotar,50.21,26.30,35,0
    .goto Durotar,49.93,28.80,35,0
    .goto Durotar,52.26,34.68,35,0
    .goto Durotar,55.28,75.48,50 >>前往 |cRXP_FRIENDLY_Xar'Ti|r
    .money <4.5
step << Troll wotlk
    #xprate >1.4999
    .goto Durotar,55.28,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r
    .skill riding,75 >>训练 |T136103:0|t[学徒骑术] 来自她
    .target Xar'Ti
    .money <4.5
step << Troll wotlk
    #xprate >1.4999
    .goto Durotar,55.23,75.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖尼尔|r
    +|cRXP_BUY_从他那里购买任何你喜欢的|r |T132253:0|t[猛禽哨子] |cRXP_BUY_|r
	.target Zjolnir
    .itemcount 8588,<1 --Whistle of the Emerald Raptor
    .itemcount 8591,<1 --Whistle of the Turquoise Raptor
    .itemcount 8592,<1 --Whistle of the Violet Raptor
    .money <0.9025
    .skill riding,<75,1
step << Troll wotlk
    #xprate >1.4999
    .cast 55884 >>使用 |T132253:0|t[翡翠迅猛龙的哨子] 来学习
    .use 8588
    .itemcount 8588,1
step << Troll wotlk
    #xprate >1.4999
    .cast 55884 >>使用 |T132253:0|t[青绿色迅猛龙的哨子] 来学习
    .use 8591
    .itemcount 8591,1
step << Troll wotlk
    #xprate >1.4999
    .cast 55884 >>使用 |T132253:0|t[紫色迅猛龙的哨子] 来学习它
    .use 8592
    .itemcount 8592,1
---
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    .hs >>从炉火到幽暗城
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132224:0|t[Timber Wolf] |cRXP_WARN_拖到你的操作栏上|r
    .cast 580 >>骑上你的 |T132224:0|t[森林狼]
    .train 580,3
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132266:0|t[Dire Wolf] |cRXP_WARN_拖到你的动作栏上|r
    .cast 6653 >>骑上你的 |T132266:0|t[恐狼]
    .train 6653,3
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132224:0|t[Brown Wolf] |cRXP_WARN_拖到你的操作栏上|r
    .cast 6654 >>骑上你的|T132224:0|t[棕狼]
    .train 6654,3
step << Orc wotlk !Warlock
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132224:0|t[Black Wolf] |cRXP_WARN_拖到你的动作栏上|r
    .cast 64658 >>骑上你的|T132224:0|t[黑狼]
    .train 64658,3
step << Troll wotlk
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132253:0|t[Emerald Raptor] |cRXP_WARN_拖到你的动作栏上|r
    .cast 8395 >>骑上你的 |T132253:0|t[翡翠猛禽]
    .train 8395,3
step << Troll wotlk
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132253:0|t[Turquoise Raptor] |cRXP_WARN_拖到你的动作栏上|r
    .cast 10796 >>骑上你的 |T132253:0|t[绿松石猛禽]
    .train 10796,3
step << Troll wotlk
    #xprate >1.4999
    #completewith Lift
    >>|cRXP_WARN_按“Shift+P”打开“挂载”选项卡|r
    >>|cRXP_WARN_将|r |T132253:0|t[Violet Raptor] |cRXP_WARN_拖到你的动作栏上|r
    .cast 10799 >>骑上你的 |T132253:0|t[紫色猛禽]
    .train 10799,3
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    #label Lift
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30 >>乘电梯返回提瑞斯法
    .zoneskip Tirisfal Glades
step << Troll wotlk/Orc wotlk !Warlock
    #xprate >1.4999
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
]])
