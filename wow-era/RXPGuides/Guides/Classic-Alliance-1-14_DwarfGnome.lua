local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#season 0,1
#version 1
<< Alliance
#group RestedXP 联盟 1-20
#name 1-6 寒脊山谷
#displayname 1-6 寒脊山谷 << !SoD
#displayname 1-7 寒脊山谷 << SoD
#next 6-11 丹莫罗 << !Hunter
#next 6-11 丹莫罗 (猎人);6-11 丹莫罗 << Hunter
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +您已选择一本针对侏儒和矮人的指南。您应该选择与您开始的相同的起始区
step << Mage
    #completewith next
    +请注意，您已选择单目标法师指南。单目标比 AoE 法师安全得多，但速度要慢得多
step << !Gnome Mage
    #season 2
    #completewith next
    +在探索季节，你不应该以法师的身份在你的种族起始区之外开始游戏，因为你将无法在这里获得你的第一个符文 (|T133816:0|t[雕刻手套 - 冰枪])
step << !Warlock
    #season 2 << Warrior
    #optional
    #completewith WolfMeat
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
--XX Everyone except Warlocks, Era warriors drop HS
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .accept 179 >>接任务: |cRXP_LOOT_矮人的交易|r
    .target Sten Stoutarm
step << Warlock
#sticky
#label wlrune1
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的 |cRXP_PICK_Rockjaw 储物柜|r。拾取其中的 |T134419:0|t|cRXP_LOOT_[鬼影符文]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
#requires wlrune1
#sticky
    #season 2
    .train 403919 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[鬼影符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 鬼影]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
--XX Era Level 1 Warrior/Warlock training, Era Warlock imp accept start
step << Warrior/Warlock
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_杀死并掠夺 |cRXP_ENEMY_Ragged Young Wolves|r 直到你有 10 铜或更多的供应商垃圾|r
    >>|cRXP_WARN_解除你的|r |T132665:0|t[侍僧长袍]|cRXP_WARN_、|r |T135005:0|t[侍僧衬衫]|cRXP_WARN_、|r |T134581:0|t[侍僧裤子]|cRXP_WARN_和|r |T132535:0|t[侍僧鞋子] |cRXP_WARN_装备，这样你就可以将它们卖给 4 铜|r << Warlock
    >>|cRXP_WARN_解除你的|r |T135009:0|t[新兵衬衫]|cRXP_WARN_、|r |T134582:0|t[新兵裤子]|cRXP_WARN_和|r |T132540:0|t[新兵靴子]|cRXP_WARN_装备，这样你就可以将它们卖给 3 铜|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Warrior/Warlock
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格伦德尔·哈金|r, 他在里面
    .vendor >>供应商垃圾
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348.1 << Warlock
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰·库尔曼|r, 他在里面
    .train 6673 >>训练 |T132333:0|t[战斗呐喊]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r, 他在里面
    .train 348 >>列车 |T135817:0|t[献祭]
    .accept 1599 >>接任务: |cRXP_LOOT_开端|r
    .target Alamar Grimm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >>炉石到寒脊山谷
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
--XX Era Warriors, Era Softcore Warlocks drop HS
step << Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >>离开安威玛尔
    .subzoneskip 77,1
--XX Era Level 1 Warrior/Warlock training, warlock imp accept end
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>杀死 |cRXP_ENEMY_Ragged Young Wolves|r。掠夺他们的 |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >>升级至 2 级
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock
    #season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾
    >>|cRXP_BUY_从他那里购买 15|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你没有足够的钱，可以额外升级|cRXP_ENEMY_Ragged Young Wolves|r|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾
    >>|cRXP_BUY_从他那里购买 15|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你没有足够的钱，可以额外升级|cRXP_ENEMY_Ragged Young Wolves|r|r
    >>|cRXP_WARN_确保你节省了 10c 以备后用|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾 << Hunter
    >>|cRXP_BUY_从他那里购买 600|r |T132384:0|t[Light Shots] |cRXP_BUY_|r << Hunter
    .vendor >>|cRXP_WARN_供应商垃圾|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
    .accept 233 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .accept 3106 >>接任务: |cRXP_LOOT_简易符文|r << Dwarf Warrior
    .accept 3107 >>接任务: |cRXP_LOOT_神圣符文|r << Dwarf Paladin
    .accept 3108 >>接任务: |cRXP_LOOT_风蚀符文|r << Dwarf Hunter
    .accept 3109 >>接任务: |cRXP_LOOT_密文符文|r << Dwarf Rogue
    .accept 3110 >>接任务: |cRXP_LOOT_神圣符文|r << Dwarf Priest
    .accept 3112 >>接任务: |cRXP_LOOT_简易备忘录|r << Gnome Warrior
    .accept 3113 >>接任务: |cRXP_LOOT_密文备忘录|r << Gnome Rogue
    .accept 3114 >>接任务: |cRXP_LOOT_雕文备忘录|r << Gnome Mage
    .accept 3115 >>接任务: |cRXP_LOOT_被污染的备忘录|r << Gnome Warlock
    .target Sten Stoutarm
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
    .target Balir Frosthammer
--XX SoD level 2 Training/Rune quest accept start (-Paladin, they don't need to yet)
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r 和 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的 |cRXP_PICK_Rockjaw 储物柜|r。拾取其中的 |T136222:0|t|cRXP_LOOT_[困扰侍僧的记忆]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Mage
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的 |cRXP_PICK_Rockjaw 储物柜|r。拾取其中的 |T134939:0|t|cRXP_LOOT_[法术注释：CALE ENCI]|r
    >>|cRXP_WARN_注意：你将无法在此处训练|r |T133816:0|t[雕刻手套 - 冰枪] |cRXP_WARN_，因为你只能在你种族的起始区获得|r |T133736:0|t[理解入门] |cRXP_WARN_|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << !Paladin !Hunter
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >>进入安威玛尔 << Rogue/Warlock/Mage
    .goto 1426,28.939,68.387,12 >>进入安威玛尔 << !Rogue !Warlock !Mage
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r, 他在楼上
    .accept 1599 >>接任务: |cRXP_LOOT_开端|r
    .turnin 3115 >>交任务: |cRXP_FRIENDLY_被污染的备忘录|r << Gnome
    .accept 77666 >>接受偷来的电力 << Gnome
    .turnin 77666 >>交出偷来的电力 << Gnome
    .train 348 >>列车 |T135817:0|t[献祭]
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰·库尔曼|r, 他在里面
    .turnin 3106 >>交任务: |cRXP_FRIENDLY_简易符文|r << Dwarf
    .turnin 3112 >>交任务: |cRXP_FRIENDLY_简易备忘录|r << Gnome
    .accept 77655 >>接受失落的符文 << Dwarf
    .accept 77656 >>接受失落的符文 << Gnome
    .train 6673 >>训练 |T132333:0|t[战斗呐喊]
    .trainer >>训练你的职业法术
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索姆·哈格林|r, 他在里面
    .turnin 3109 >>交任务: |cRXP_FRIENDLY_密文符文|r << Dwarf
    .turnin 3113 >>交任务: |cRXP_FRIENDLY_密文备忘录|r << Gnome
    .accept 77658 >>接受“三次被盗” << Dwarf
    .accept 77659 >>接受“三次被盗” << Gnome
    .train 1784 >>列车 |T132320:0|t[隐身]
    .target Solm Hargrin
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r, 他在里面
    >>|cRXP_WARN_训练|r |T135987:0|t[真言术：坚毅] |cRXP_WARN_as 你很快就会需要它来完成一个职业任务|r << Dwarf
    .turnin 3110 >>交任务: |cRXP_FRIENDLY_神圣符文|r << Dwarf
    .accept 5626 >>接任务: |cRXP_LOOT_圣光的恩赐|r << Dwarf
    .accept 77661 >>接受光的冥想 << Dwarf
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .target Branstock Khalder
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_瞄准里面的 |cRXP_FRIENDLY_光之祭坛|r 来接收|r |T135934:0|t[光之冥想] |cRXP_WARN_buff|r
    >>|cRXP_WARN_如果这不起作用，请输入 /kneel 并以 |cRXP_FRIENDLY_Altar of the Light|r 为目标|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >>|cRXP_WARN_使用|r |T136222:0|t|cRXP_LOOT_[陷入困境的侍僧的记忆]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 忏悔]
    .aura -410935
    .use 205951
step << Dwarf Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r, 他在里面
    .turnin 77661 >>交出光之冥想
    .target Branstock Khalder
    .isQuestComplete 77661
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equip the|r |T132961:0|t[破烂的布手套]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock/Dwarf Priest
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_将你的|r |T132961:0|t[破烂布手套] 雕刻成|r |T133816:0|t[雕刻手套 - 困扰] << Warlock
    .engrave 10 >>|cRXP_WARN_将你的|r |T132961:0|t[破烂布手套] 雕刻成|r |T133816:0|t[雕刻手套 - 忏悔] << Priest
    .train 402862,3 << Priest
    .train 403919,3 << Warlock

step << Warlock
    #season 0,1
    #requires FrostmaneC1
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>在途中杀死 |cRXP_ENEMY_Rockjaw Troggs|r、|cRXP_ENEMY_Burly Rockjaw Troggs|r、|cRXP_ENEMY_Ragged Young Wolves|r 和 |cRXP_ENEMY_Ragged Timber Wolves|r
    >>|cRXP_WARN_尽量避免|r |cRXP_ENEMY_Frostmane 巨魔幼龙|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >>进入霜鬃洞穴
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >>前往 |cRXP_ENEMY_Frostmane Novices|r 里面
step << Warlock
    #season 0,1
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>杀死里面的 |cRXP_ENEMY_Frostmane Novices|r。掠夺他们的 |cRXP_LOOT_Feather Charms|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >>炉石到寒脊山谷
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >>摧毁: |cRXP_ENEMY_炉石|r, 它在你的背包中. 不再需要它了
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔 << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r, 他在楼上
    .turnin 1599 >>交任务: |cRXP_FRIENDLY_开端|r
    .turnin -3115 >>交任务: |cRXP_FRIENDLY_被污染的备忘录|r
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >>离开安威玛尔
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r 和 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 0,1
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
    .accept 183 >>接任务: |cRXP_LOOT_猎杀野猪|r
    .accept 234 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .target Talin Keeneye
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
    .accept 234 >>接任务: |cRXP_LOOT_寒脊山谷的送信任务|r
    .target Talin Keeneye
step
#season 0,1
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>杀死 |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
#season 0,1
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 183 >>交任务: |cRXP_FRIENDLY_猎杀野猪|r
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r 和 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >>升级至 1130+/1400xp
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >>升级至 995+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
    .target 格雷林·白胡子
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>杀死 |cRXP_ENEMY_Frostmane 巨魔幼龙|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>磨练至 4 级
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺里斯·激流|r
    >>|cRXP_WARN_这将启动任务的 5 分钟计时器。接下来的 5 分钟内请勿离开或退出|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .target 诺里·普里德瑞夫特
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >>进入巨魔洞穴
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>杀死巨魔洞穴内的 |cRXP_ENEMY_Frostmane Novices|r。掠夺他们的 |cRXP_LOOT_Feather Charms|r
    >>|cRXP_WARN_你正在计时。请勿离开或退出|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 2
    #completewith next
    .hs >>炉石到安威玛尔
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_你有 5 分钟的时间返回安威玛尔，之后|r |T132791:0|t[邓肯的沸腾晨酒] |cRXP_WARN_expires|r
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德南·弗卡特|r, 他在里面
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
    .target 杜南·弗卡特
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索加斯·格瑞姆森|r
    .turnin 3108 >>交任务: |cRXP_FRIENDLY_风蚀符文|r << Dwarf
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
step << Hunter
    #season 2
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索加斯·格瑞姆森|r
    .turnin 3108 >>交任务: |cRXP_FRIENDLY_风蚀符文|r << Dwarf
    .accept 77660 >>接受“穿越洞穴”任务 << Dwarf
    .train 1978 >>列车 |T132204:0|t[毒蛇钉刺]
step << Paladin
    #season 0,1
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r, 他在里面
    .turnin 3107 >>交任务: |cRXP_FRIENDLY_神圣符文|r << Dwarf
    .train 19740 >>列车 |T135906:0|t[力量祝福]
    .train 20271 >>列车 |T135959:0|t[判断]
    .target Bromos Grummner
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r, 他在里面
    .turnin 3107 >>交任务: |cRXP_FRIENDLY_神圣符文|r << Dwarf
    .accept 77657 >>接受圣光遗物 << Dwarf
    .train 19740 >>列车 |T135906:0|t[力量祝福]
    .train 20271 >>列车 |T135959:0|t[判断]
    .target Bromos Grummner
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r, 他在楼上
    .turnin 3115 >>交任务: |cRXP_FRIENDLY_被污染的备忘录|r
    .train 172 >>列车 |T136118:0|t[腐败]
    .target Alamar Grimm
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉玛尔·格里姆|r, 他在楼上
    .train 172 >>列车 |T136118:0|t[腐败]
    .turnin 1599 >>交任务: |cRXP_FRIENDLY_开端|r
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >>离开安威玛尔
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
    .target Balir Frosthammer
step << Warlock
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾
    >>|cRXP_BUY_从他那里购买 15|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r 和 |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Warrior/Paladin
    #season 2
    #completewith Observations
    #label Victory1 << Warrior
    #label Libram1 << Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .waypoint 1426,22.836,79.962,45,0
    .waypoint 1426,22.684,78.888,45,0
    .waypoint 1426,21.029,76.459,45,0
    .waypoint 1426,20.671,75.838,45,0
    .waypoint 1426,25.861,78.197,45,0
    .waypoint 1426,26.382,78.409,45,0
    .waypoint 1426,26.031,79.854,45,0
    .waypoint 1426,23.716,80.257,45,0
    >>杀死 |cRXP_ENEMY_Frostmane Troll Whelps|r。掠夺它们以获得 |T134419:0|t|cRXP_LOOT_[胜利冲刺符文]|r << Warrior
    >>杀死 |cRXP_ENEMY_Frostmane Troll Whelps|r。从它们身上拾取 |T134916:0|t|cRXP_LOOT_[审判圣典]|r << Paladin
    .collect 204806,1 << Warrior --Rune of Victory Rush (1)
    .collect 205420,1 << Paladin -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 403470,1 << Warrior
    .train 410002,1 << Paladin
step << Warrior
    #season 2
    #completewith Observations
    #label Victory2
    #requires Victory1
    .train 403470 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[胜利冲刺符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 胜利冲刺]
    .use 204806
    .itemcount 204806,1
step << Warrior
    #season 2
    #completewith Observations
    #label Victory3
    #requires Victory2
    .equip 10 >>|cRXP_WARN_装备一双|r |T132938:0|t|cRXP_LOOT_[手套]|r |cRXP_WARN_如果你有一双或者你抢了一双|r
    .train 403470,3
step << Warrior
    #season 2
    #completewith Observations
    #requires Victory3
    .engrave 10 >>|cRXP_WARN_雕刻你的|r |T132938:0|t|cRXP_LOOT_[手套]|r 和|r |T133816:0|t[雕刻手套 - 胜利冲刺]
    .train 403470,3
step << Paladin
    #season 2
    #completewith Observations
    #label Libram2
    #requires Libram1
    .equip 18,205420 >>|cRXP_WARN_装备|r |T134916:0|t|cRXP_LOOT_[审判圣典]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--  .itemStat 18,QUALITY,<2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram3
    #requires Libram2
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,29.303,77.337,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,24.193,77.305,55,0
    .aura 408828 >>|cRXP_WARN_施放|r |T135959:0|t[判断] |cRXP_WARN_10 次以获得|r |T136116:0|t[启发] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_使用|r |T134916:0|t|cRXP_LOOT_[审判圣典]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram5
    #requires Libram4
    .equip 10 >>|cRXP_WARN_装备一双|r |T132938:0|t|cRXP_LOOT_[手套]|r |cRXP_WARN_如果你有一双或者你抢了一双|r
    .train 410002,3
step << Paladin
    #season 2
    #completewith Observations
    #requires Libram5
    .engrave 10 >>|cRXP_WARN_雕刻你的|r |T132938:0|t|cRXP_LOOT_[手套]|r 和|r |T133816:0|t[雕刻手套 - 十字军打击]
    .train 410002,3
step
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>杀死 |cRXP_ENEMY_Frostmane 巨魔幼龙|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Warrior/Paladin
    #season 2
    #optional
    #requires Victory2 << Warrior
    #requires Libram4 << Paladin
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 182 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
    .accept 218 >>接任务: |cRXP_LOOT_被窃取的日记|r
    .target 格雷林·白胡子
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
    .target 诺里·普里德瑞夫特
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺里斯·激流|r
    >>|cRXP_WARN_这将启动任务的 5 分钟计时器。接下来的 5 分钟内请勿离开或退出|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .target 诺里·普里德瑞夫特
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_你有 5 分钟的时间获取 |cRXP_LOOT_格雷林·白胡子 的日记|r 并在|r |T132791:0|t[Duncan's Scalding Mornbrew] |cRXP_WARN_expires 之前返回 Anvilmar|r
    >>|cRXP_WARN_如果你失败了，不要担心，因为你可以稍后再次完成任务|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >>进入霜鬃洞穴
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>前往 |cRXP_ENEMY_Grik'nir the Cold|r 内部
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>杀死里面的 |cRXP_ENEMY_Grik'nir the Cold|r。搜刮他的物品，获得 |cRXP_LOOT_格雷林·白胡子 的日记|r
    .complete 218,1 --Collect 格雷林·白胡子's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue/Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>打开里面地面上的 |cRXP_PICK_Frostmane Loot Cache|r。从中获取 |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r << Rogue
    >>打开里面地面上的 |cRXP_PICK_Frostmane Loot Cache|r。从中获取 |T134419:0|t|cRXP_LOOT_[奇美拉符文]|r << Hunter
    .collect 204795,1 << Rogue --Rune of Shadowstrike (1)
    .collect 206168,1 << Hunter -- Rune of the Chimera (1)
    .train 400105,1 << Rogue
    .train 410121,1 << Hunter
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << Hunter
    #season 2
    .train 410121 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[奇美拉符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 奇美拉射击]
    .use 206168
    .itemcount 206168,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_装备一双|r |T132952:0|t|cRXP_LOOT_[手套]|r |cRXP_WARN_如果你有一双或者你抢了一双|r
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #label Chimera1
    .equip 10 >>|cRXP_WARN_装备一双|r |T132952:0|t|cRXP_LOOT_[手套]|r |cRXP_WARN_如果你有一双或者你抢了一双|r
    .train 410121,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_雕刻你的|r |T132952:0|t|cRXP_LOOT_[手套]|r 和|r |T133816:0|t[雕刻手套 - 暗影打击]
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #requires Chimera1
    .engrave 10 >>|cRXP_WARN_雕刻你的|r |T132952:0|t|cRXP_LOOT_[手套]|r 和|r |T133816:0|t[雕刻手套 - 奇美拉射击]
    .train 410121,1
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >>离开霜鬃洞穴
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .target 诺里·普里德瑞夫特
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
    .target 格雷林·白胡子
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德南·弗卡特|r
    >>|cRXP_WARN_如果任务失败，请跳过此步骤|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
    .target 杜南·弗卡特
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .vendor >>供应商垃圾
    .target 杜南·弗卡特
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >>放弃 Scalding Mornbrew Delivery。你会再次拿起它
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[暗影打击符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 暗影打击]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_装备一双|r |T132952:0|t|cRXP_LOOT_[手套]|r |cRXP_WARN_如果你有一双或者你抢了一双|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_雕刻你的|r |T132952:0|t|cRXP_LOOT_[手套]|r 和|r |T133816:0|t[雕刻手套 - 暗影打击]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺里斯·激流|r, |cRXP_FRIENDLY_格瑞林·白须|r
    .accept 3364 >>接任务: |cRXP_LOOT_热酒快递|r
    .goto Dun Morogh,24.980,75.963
    .target +诺里·普里德瑞夫特
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
    .goto Dun Morogh,25.075,75.715
    .target +格雷林·白胡子
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
    .target 杜南·弗卡特
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
    .accept 3365 >>接任务: |cRXP_LOOT_归还酒杯|r
--  .vendor >>供应商垃圾
    .target 杜南·弗卡特
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r << Gnome
    .trainer >>训练你的职业法术
    .target 马里克·努里比特
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r << Gnome
    .accept 77667 >>接受法术研究 << Gnome
    .trainer >>训练你的职业法术
    .target 马里克·努里比特
step << Gnome Mage
    #xprate >1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 77667 >>提交法术研究
    .target 马里克·努里比特
step << Gnome Mage
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equip the|r |T132961:0|t[破烂的布手套]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_将你的|r |T132961:0|t[破烂布手套] 雕刻成|r |T133816:0|t[雕刻手套 - 冰枪]
    .train 401760,3
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索姆·哈格林|r
    .turnin 3113 >>交任务: |cRXP_FRIENDLY_密文备忘录|r << Gnome
    .turnin 3109 >>交任务: |cRXP_FRIENDLY_密文符文|r << Dwarf
    .train 1784 >>列车 |T132320:0|t[隐身]
    .trainer >>训练你的职业法术
    .target Solm Hargrin
step << Rogue
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索姆·哈格林|r
    .turnin 77658 >>上交三次被盗 << Dwarf
    .turnin 77659 >>上交三次被盗 << Gnome
    .train 921 >>列车 |T133644:0|t[扒窃]
    .trainer >>训练你的职业法术
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    >>|cRXP_WARN_训练|r |T135987:0|t[真言术：坚毅] |cRXP_WARN_and|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_因为你很快就会需要它们来完成一个职业任务|r << Dwarf
    .turnin 3110 >>交任务: |cRXP_FRIENDLY_神圣符文|r << Dwarf
    .accept 5626 >>接任务: |cRXP_LOOT_圣光的恩赐|r << Dwarf
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 2052 >>训练 |T135929:0|t[次级治疗] (等级 2) << Dwarf
    .trainer >>训练你的职业法术
    .target Branstock Khalder
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    >>|cRXP_WARN_训练|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_as 你很快就会需要它来完成一项职业任务|r << Dwarf
    .accept 5626 >>接任务: |cRXP_LOOT_圣光的恩赐|r << Dwarf
    .train 2052 >>训练 |T135929:0|t[次级治疗] (等级 2) << Dwarf
    .trainer >>训练你的职业法术
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .turnin 3106 >>交任务: |cRXP_FRIENDLY_简易符文|r << Dwarf
    .turnin 3112 >>交任务: |cRXP_FRIENDLY_简易备忘录|r << Gnome
    .trainer >>训练你的职业法术
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .turnin 77655 >>交出失落的符文 << Dwarf
    .turnin 77656 >>交出失落的符文 << Gnome
    .trainer >>训练你的职业法术
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r << Gnome
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target 马里克·努里比特
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r << Gnome
    .accept 77667 >>接受法术研究 << Gnome
    .train 1459 >>训练 |T135932:0|t[奥术智慧]
    .train 116 >>训练 |T135846:0|t[冰箭]
    .target 马里克·努里比特
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：CALE ENCI]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 冰枪]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r, 他在里面
    .turnin 77667 >>提交法术研究
    .target 马里克·努里比特
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equip the|r |T132961:0|t[破烂的布手套]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_将你的|r |T132961:0|t[破烂布手套] 雕刻成|r |T133816:0|t[雕刻手套 - 冰枪]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索姆·哈格林|r
    .turnin 3113 >>交任务: |cRXP_FRIENDLY_密文备忘录|r << Gnome
    .turnin 3109 >>交任务: |cRXP_FRIENDLY_密文符文|r << Dwarf
    .train 1784 >>列车 |T132320:0|t[隐身]
    .target Solm Hargrin
step << Rogue
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索姆·哈格林|r
    .turnin 77658 >>上交三次被盗 << Dwarf
    .turnin 77659 >>上交三次被盗 << Gnome
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    >>|cRXP_WARN_训练|r |T135987:0|t[真言术：坚毅] |cRXP_WARN_and|r |T135929:0|t[次级治疗术] (等级 2) |cRXP_WARN_因为你很快就会需要它们来完成一个职业任务|r << Dwarf
    .turnin 3110 >>交任务: |cRXP_FRIENDLY_神圣符文|r << Dwarf
    .accept 5626 >>接任务: |cRXP_LOOT_圣光的恩赐|r << Dwarf
    .train 1243 >>训练 |T135987:0|t[真言术：坚毅]
    .train 2052 >>训练 |T135929:0|t[次级治疗] (等级 2) << Dwarf
    .trainer >>训练你的职业法术
    .target Branstock Khalder
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰斯托克·卡德尔|r
    .train 589 >>训练 |T136207:0|t[暗言术：痛]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .turnin 3106 >>交任务: |cRXP_FRIENDLY_简易符文|r << Dwarf
    .turnin 3112 >>交任务: |cRXP_FRIENDLY_简易备忘录|r << Gnome
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰·库尔曼|r
    .turnin 77655 >>交出失落的符文 << Dwarf
    .turnin 77656 >>交出失落的符文 << Gnome
    .train 100 >>列车 |T132337:0|t[收费]
    .train 772 >>列车 |T132155:0|t[Rend]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >>离开安威玛尔
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
    .target Balir Frosthammer
step << Priest/Mage
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾德林·怒流|r
    >>供应商垃圾
    >>|cRXP_BUY_从他那里购买 5|r |T132794:0|t[清凉泉水] |cRXP_BUY_|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
    .xp >8,1
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
    .accept 282 >>接任务: |cRXP_LOOT_森内尔的观察站|r
    .target 格雷林·白胡子
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
    .target 诺里·普里德瑞夫特
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>进入安威玛尔
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r
    .turnin 77657 >>交出光明圣物
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索加斯·格瑞姆森|r
    .turnin 77660 >>交出穿越洞穴
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >>放弃光明遗物，因为你已经装备了一双|T132938:0|t[手套] << Paladin
    .abandon 77660 >>放弃穿越洞穴，因为你已经装备了一双|T132952:0|t[手套] << Hunter
step
    #label Observations
    >>对话: |cRXP_FRIENDLY_巡山人萨鲁斯|r, |cRXP_FRIENDLY_汉兹·跳链|r
    .turnin 282 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
    .accept 420 >>接任务: |cRXP_LOOT_森内尔的观察站|r
    .goto Dun Morogh,33.484,71.841
    .target +登山者泰洛斯
    .accept 2160 >>接任务: |cRXP_LOOT_塔诺克的补给品|r
    .goto Dun Morogh,33.85,72.24
    .target +指针 弹簧链轮
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>穿越寒脊山口
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#xprate >1.49 << Hunter
#era/som--h
#classic
#season 0,1
#version 1
<< Alliance --!Hunter
#group RestedXP 联盟 1-20
#name 6-11 丹莫罗
#displayname 6-12 丹莫罗 << sod !Warlock
#next 11-12 艾尔文 (矮人/侏儒);11-12 虚空行者任务;12-14 洛克莫丹 (矮人/侏儒);11-13 洛克莫丹 (猎人)
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>杀死 |cRXP_ENEMY_Crag Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_保存所有|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_你从库存喷气蒸汽中获得的，然后保存升级你的|r |T133971:0|t[烹饪] |cRXP_WARN_later|r
    >>|cRXP_WARN_您需要 10|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在奥伯丁执行任务|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.49
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >>前往卡拉诺斯。在途中杀死 |cRXP_ENEMY_Crag Boars|r 获得 2145+/2800xp << Priest
    .xp 5+2415 >>前往卡拉诺斯。在途中杀死 |cRXP_ENEMY_Crag Boars|r 获得 2415+/2800xp << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #xprate 1.49-1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1817 >>前往卡拉诺斯。在途中杀死 |cRXP_ENEMY_Crag Boars|r 获得 1817+/2800xp << Priest
    .xp 5+2222 >>前往卡拉诺斯。在途中杀死 |cRXP_ENEMY_Crag Boars|r 获得 2222+/2800xp << !Priest
    .subzoneskip 131
step
    #xprate >1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1490 >>前往卡拉诺斯。在途中杀死 |cRXP_ENEMY_Crag Boars|r 获得 1490+/2800xp << Priest
    .xp 5+2030 >>前往卡拉诺斯。在途中杀死 |cRXP_ENEMY_Crag Boars|r，获得 2030+/2800xp << !Priest
    .subzoneskip 131
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >>前往卡拉诺斯
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>|cRXP_WARN_确保您的子区域不是 Coldridge Pass|r
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
    .target Senir Whitebeard
step << !Priest
    #xprate <1.5
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >>升级至 2690+/2800xp
step << !Priest
    #xprate 1.49-1.59
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2635 >>升级至 2635+/2800xp
step << !Priest
    #xprate >1.99
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2580 >>升级至 2580+/2800xp
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r
    .trainer >>训练你的职业法术
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼·血泡|r
    .vendor 6328 >>|cRXP_BUY_如果你买得起，就买|r |T133738:0|t[血契魔典（等级 1）] |cRXP_BUY_。如果买不起，可以稍后再买|r
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入 Thunderbrew 酿酒厂
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160,1 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r << Warrior/Rogue
    .turnin 2160,2 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷格·比尔姆|r
    >>|cRXP_WARN_购买|r |T135641:0|t[平衡投掷匕首]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equip the|r |T135641:0|t[平衡投掷匕首]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>摧毁: |cRXP_ENEMY_破损的小飞刀|r, 它在你的背包中. 不再需要它了
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .trainer >>训练你的职业法术
    .target Hogral Bakkan
step << Mage
    #xprate <1.59
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛济斯·石衣|r, 他在楼上
    .trainer >>训练你的职业法术
    .target Magis Sparkmantle
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿扎尔·战锤|r, 他在楼上
    .trainer >>训练你的职业法术
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克萨恩·安沃尔|r, 他在里面
    .accept 5625 >>接任务: |cRXP_LOOT_圣光之衣|r
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>对 |cRXP_FRIENDLY_Mountaineer Dolf|r 施放 |T135929:0|t[次级治疗术] (等级 2) 然后 |T135987:0|t[真言术：坚韧]
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    #xprate <1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克萨恩·安沃尔|r, 他在里面
    .turnin 5625 >>交任务: |cRXP_FRIENDLY_圣光之衣|r
    .trainer >>训练你的职业法术
    .target Maxan Anvol
step << Priest
    #xprate >1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克萨恩·安沃尔|r, 他在里面
    .turnin 5625 >>交任务: |cRXP_FRIENDLY_圣光之衣|r
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .home >>将你的炉石设置为雷酒酿酒厂
    .vendor >>|cRXP_BUY_尽可能多地购买|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << Priest/Mage/Warlock
    .target Innkeeper Belm
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格兰尼斯·快斧|r, 他在里面
    .trainer >>训练你的职业法术
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠铺
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T132401:0|t[大斧]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T135641:0|t[细高跟鞋]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T133053:0|t[木槌]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备|r |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托格努斯·燧火|r
    >>|cRXP_WARN_这将允许你制作|r |T135248:0|t[粗糙磨刀石] |cRXP_WARN_这将使你的近战伤害增加 2|r << Warrior/Rogue
    >>|cRXP_WARN_这将允许你制作|r |T135255:0|t[粗糙的重量石] |cRXP_WARN_这将使你的近战伤害增加 2|r << Paladin
    >>|cRXP_WARN_如果你不想这样做，请跳过此步骤|r
    .train 2018 >>训练 |T136241:0|t[锻造]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_爬上卡拉诺斯旅馆的屋顶，然后跳到巨大的酒桶上。跟着箭头走|r
    >>打开 |cRXP_PICK_Rusty Lockbox|r。从中获取 |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_屠杀符文|r] |cRXP_WARN_训练|r |T236280:0|t[暗影屠杀]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Crag Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.5
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r, |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    >>|cRXP_WARN_不要在途中杀死任何|cRXP_ENEMY_年轻的黑熊s|r|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
    .goto Dun Morogh,49.426,48.410
    .target +飞行员 Bellowfiz
    .accept 313 >>接任务: |cRXP_LOOT_灰色洞穴|r
    .goto Dun Morogh,49.622,48.612
    .target +飞行员石甲
step << Warrior/Paladin/Rogue
    #xprate 1.49-1.59
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r, |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    >>|cRXP_WARN_不要在途中杀死任何|cRXP_ENEMY_年轻的黑熊s|r|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
    .goto Dun Morogh,49.426,48.410
    .target +飞行员 Bellowfiz
    .accept 313 >>接任务: |cRXP_LOOT_灰色洞穴|r
    .goto Dun Morogh,49.622,48.612
    .target +飞行员石甲
step
    #xprate >1.49 << !Warrior !Paladin !Rogue
    #xprate >1.59 << Warrior/Paladin/Rogue
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    >>|cRXP_WARN_不要在途中杀死任何|cRXP_ENEMY_年轻的黑熊s|r|r
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
    .target 飞行员 Bellowfiz
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔丁·钢架|r, |cRXP_FRIENDLY_罗斯洛·鲁治|r
    >>|cRXP_BUY_购买 a|r |T134708:0|t[采矿镐] |cRXP_BUY_from |cRXP_FRIENDLY_洛斯洛·拉奇|r
    >>|cRXP_WARN_如果你负担不起，请跳过此步骤|r
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
    .goto Dun Morogh,50.443,49.092
    .target +Beldin 钢烤架
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +洛斯洛·拉奇
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔丁·钢架|r, |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
    .goto Dun Morogh,50.443,49.092
    .target +Beldin 钢烤架
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
    .goto Dun Morogh,50.084,49.420
    .target +洛斯洛·拉奇
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚尔·锤石|r, 他在楼下
    >>|cRXP_WARN_如果你负担不起，请跳过此步骤|r
    .train 2575 >>列车 |T134708:0|t[采矿]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_Cast|r |T136025:0|t[寻找矿物]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith 熊Fur
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。拾取它们以获得 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith 熊Fur
    >>杀死 |cRXP_ENEMY_年轻黑熊|r。掠夺它们的 |cRXP_LOOT_厚熊皮|r
    .complete 317,2 --Collect Thick 熊 Fur (x2)
    .mob 年轻的黑熊
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>杀死 |cRXP_ENEMY_Boars|r。拾取它们以获得 |T134026:0|t[丹莫洛猪肉]
    .collect 208192,1
    .mob Crag Boar
    .mob 老峭壁野猪
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>杀死 |cRXP_ENEMY_年轻黑熊|r。掠夺它们的 |cRXP_LOOT_厚熊皮|r
    >>杀死 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_Crag Boars|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick 熊 Fur (x2)
    .mob +年轻的黑熊
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith EvershineEnd
    >>杀死 |cRXP_ENEMY_Large Crag Boars|r 和 |cRXP_ENEMY_Crag Boars|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .target 飞行员 Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    >>|cRXP_BUY_从他那里购买 a|r |T134708:0|t[采矿镐] |cRXP_BUY_|r
    .collect 2901,1 --Mining Pick (1)
    .target 洛斯洛·拉奇
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚尔·锤石|r, 他在楼下
    .train 2575 >>列车 |T134708:0|t[采矿]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入 Thunderbrew 酿酒厂
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r, 他在外面
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠铺
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T132401:0|t[大斧]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T135641:0|t[细高跟鞋]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T133053:0|t[木槌]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备|r |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >>磨练至 6 级
step << Hunter
    #optional
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    .target Grif Wildheart
    .money <0.02
step << Hunter
    #season 0,1
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .train 3044 >>训练 |T132218:0|t[奥术射击]
    .target Grif Wildheart
    .money <0.01
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .train 1130 >>训练 |T132212:0|t[猎人印记]
    >>|cRXP_WARN_如果你没有足够的钱，那就在卡拉诺斯周围种地。你很快就会需要这个法术|r
    .target Grif Wildheart
step << Warrior/Rogue/Priest/Mage/Warlock
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入 Thunderbrew 酿酒厂
step << Warrior/Rogue
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .vendor 1247 >>|cRXP_BUY_尽可能多地从他那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .vendor 1247 >>|cRXP_BUY_只要你负担得起，就可以从他那里购买尽可能多的|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #season 0,1 << Warrior
    #xprate <1.49 << !Warrior !Paladin !Rogue
    #xprate <1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>前往灰白之巢
    .isOnQuest 313
step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>前往灰白之巢
    .isOnQuest 313
step << Warrior
    #season 2
    #sticky
    #label WendigoPaw
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .waypoint 1426,41.918,54.053,40,0
    .waypoint 1426,42.177,53.274,40,0
    .waypoint 1426,41.100,48.927,40,0
    >>杀死 |cRXP_ENEMY_Wendigos|r。掠夺他们以获得 |cRXP_LOOT_Severed Wendigo Paw|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 403475,1
step
    #xprate <1.49 << !Warrior !Paladin !Rogue
    #xprate <1.59 << Warrior/Paladin/Rogue
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>杀死 |cRXP_ENEMY_Wendigos|r 和 |cRXP_ENEMY_Young Wendigos|r。掠夺他们的 |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_记得留意|r |T134566:0|t[铜矿脉] |cRXP_WARN_可产出|r |T135232:0|t|cRXP_LOOT_[粗糙的石头]|r |cRXP_WARN_因此你可以制作|r |T135248:0|t[粗糙的磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_记得留意|r |T134566:0|t[铜矿脉] |cRXP_WARN_可产出|r |T135232:0|t|cRXP_LOOT_[原石]|r |cRXP_WARN_因此你能够制作|r |T135255:0|t[原石配重石] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>杀死 |cRXP_ENEMY_Wendigos|r 和 |cRXP_ENEMY_Young Wendigos|r。掠夺他们的 |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>打开 |cRXP_PICK_Ammo Crate|r。从中获取 |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>前往 |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海格纳·重枪|r
    >>|cRXP_BUY_从他那里购买 a|r |T135611:0|t[华丽火枪]|cRXP_BUY_|r
    >>|cRXP_WARN_如果你负担不起，请跳过此步骤|r
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label 熊Fur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海格纳·重枪|r
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
    .target Hegnar Rumbleshot
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >>磨练至 7 级
    .mob Juvenile 雪豹
    .mob 年轻的黑熊
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #loop
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    >>杀死 |cRXP_ENEMY_年轻的黑熊s|r。掠夺它们的 |cRXP_LOOT_Fur|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .complete 317,2 --Collect Thick 熊 Fur (x2)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob 年轻的黑熊
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .target 飞行员 Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
    .target 飞行员石甲
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    >>|cRXP_BUY_从他那里购买 a|r |T134708:0|t[采矿镐] |cRXP_BUY_|r
    .collect 2901,1 --Mining Pick (1)
    .target 洛斯洛·拉奇
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚尔·锤石|r, 他在楼下
    .train 2575 >>列车 |T134708:0|t[采矿]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r, 他在外面
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior/Paladin/Rogue
    #xprate <1.49
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >>升级至 7 级
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 8 >>升级至 8 级
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .trainer >>训练你的职业法术
    .target Hogral Bakkan
    .xp <8,1
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿扎尔·战锤|r, 他在楼上
    .trainer >>训练你的职业法术
    .target Azar Stronghammer
    .xp <8,1
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格兰尼斯·快斧|r, 他在里面
    .trainer >>训练你的职业法术
    .target Granis Swiftaxe
    .xp <8,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>进入铁匠铺
step << Gnome Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_装备|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T132401:0|t[大斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_装备|r |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T135641:0|t[细高跟鞋]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_装备|r |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买 a|r |T133053:0|t[木槌]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_装备|r |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>进入 Thunderbrew 酿酒厂
step << Warrior/Rogue
    #xprate <1.59
    #completewith Tundra
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .vendor 1247 > |cRXP_BUY_尽可能多地从他那里购买|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >>前往清风谷
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >>前往 |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,35.237,56.815
    .subzone 801 >>前往清风谷
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >>前往 |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
    .target Tundra MacGrann
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_MacGrann 的肉柜|r。获取 |cRXP_LOOT_MacGrann 的干肉|r
    >>|cRXP_WARN_等待 |cRXP_ENEMY_Old Icebeard|r 从洞穴中巡逻出来。一旦他从洞穴中巡逻出来，你就可以进入并抢劫|r |cRXP_PICK_MacGrann 的肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
    .target Tundra MacGrann
step << Hunter
    #season 2
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_MacGrann 的肉柜|r。获取 |cRXP_LOOT_MacGrann 的干肉|r
    >>|cRXP_WARN_等待 |cRXP_ENEMY_Old Icebeard|r 从洞穴中巡逻出来。一旦他从洞穴中巡逻出来，你就可以进入并抢劫|r |cRXP_PICK_MacGrann 的肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter
    #season 2
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >>前往布鲁纳尔村
step << !Mage !Priest
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基格·吉布恩|r
    .vendor >>供应商垃圾
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基格·吉布恩|r
    >>|cRXP_BUY_从他那里购买最多 20|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷杰德·麦酒|r, |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 318 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .accept 319 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .accept 315 >>接任务: |cRXP_LOOT_完美烈酒|r
    .goto Dun Morogh,30.190,45.726
    .target +Rejold 大麦啤酒
    .accept 310 >>接任务: |cRXP_LOOT_针锋相对|r
    .goto Dun Morogh,30.186,45.531
    .target +马莱斯大麦啤酒
step
    #sticky
    #label ForceFavorRibNo
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>杀死 |cRXP_ENEMY_老峭壁野猪s|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    >>杀死 |cRXP_ENEMY_冰爪熊s|r 和 |cRXP_ENEMY_雪豹s|r
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .mob +老峭壁野猪
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +老峭壁野猪
    .complete 319,1 --Kill 冰爪熊 (x6)
    .mob +冰爪熊
    .complete 319,3 --Kill 雪豹 (x8)
    .mob +雪豹
    .isQuestAvailable 384
step
    #sticky
    #label ForceFavorRibYes
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .mob +冰爪熊
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .mob +老峭壁野猪
    .complete 319,3 --Kill 雪豹 (x8)
    .mob +雪豹
    .isQuestTurnedIn 384
--XX Forcing this so people are a higher level for second wave of west quests (even on 2x)
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>对 |cRXP_ENEMY_Rustling Bush|r 施放 |T132212:0|t[猎人印记]
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>使用 |T134419:0|t[|cRXP_FRIENDLY_神射符文|r]
    .use 206155
    .train 410113,1
step << Hunter/Mage/Warrior
    #season 2
    #requires Marksmanship2 << Hunter
    #label Fyodi1
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>杀死 |cRXP_ENEMY_Fyodi|r。从他身上搜刮 |T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r << Hunter
    >>杀死 |cRXP_ENEMY_Fyodi|r。从他身上搜刮 |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r << Mage
    >>杀死 |cRXP_ENEMY_Fyodi|r。搜刮他的物品以获得 |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r << Warrior
    >>|cRXP_WARN_尽管 |cRXP_ENEMY_Fyodi|r 显示为精英，但他的生命值、伤害和护甲值与标准暴徒相同|r
    >>|cRXP_WARN_当他施放时要小心|r |T132337:0|t[冲锋] |cRXP_WARN_（自身瞬发：增加移动速度 3 秒，击中时造成 35-80 点近战伤害。仅可远距离施放）|r
    >>|cRXP_WARN_注意：|r |T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r |cRXP_WARN_ 也可以掉落丹莫洛的所有稀有怪物，以及 |cRXP_ENEMY_Vagash|r、|cRXP_ENEMY_Mangeclaw|r 和|r |cRXP_ENEMY_Old Icebeard|r << Hunter
    >>|cRXP_WARN_注意：|r |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r |cRXP_WARN_ 还可以掉落丹莫洛的所有稀有怪物，以及 |cRXP_ENEMY_Vagash|r、|cRXP_ENEMY_Mangeclaw|r 和|r |cRXP_ENEMY_Old Icebeard|r << Mage
    >>|cRXP_WARN_注意：|r |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r |cRXP_WARN_ 还可以掉落丹莫洛的所有稀有怪物，以及 |cRXP_ENEMY_Vagash|r、|cRXP_ENEMY_Mangeclaw|r 和|r |cRXP_ENEMY_Old Icebeard|r << Warrior
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder (1)
    .mob Fyodi
    .train 410123,1 << Hunter
    .train 401765,1 << Mage
    .train 403476,1 << Warrior
step << Hunter
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 410123 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 爆炸射击]
    .use 206169
    .itemcount 206169,1
step << Mage
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r |cRXP_WARN_学习|r |T133815:0|t[雕刻胸甲 - 冰霜之指]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .itemcount 211779,1 --Comprehension Charm (1)
step << Warrior
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r |cRXP_WARN_学习|r |T136048:0|t[狂暴雷霆]
    .use 204809
    .itemcount 204809,1 --Rune of Furious Thunder (1)
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires FyodiEnd << Hunter/Mage/Warrior --Season 2
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 319 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .accept 320 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .target Rejold 大麦啤酒
step
    #hardcore
    #completewith Distracting
    .goto Dun Morogh,47.377,52.523
    .subzone 131 >>返回卡拉诺斯
--XX if they don't somehow meet xp gate by Kharanos then wcyd
step
    #xprate <1.5
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>升级至 3735+/4500xp
    .isQuestAvailable 384
step
    #xprate 1.49-1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3355 >>升级至 3355+/4500xp
    .isQuestAvailable 384
step << Rogue/Hunter
    #xprate >1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 9+6110 >>升级至 6110+/7600xp
    .isQuestAvailable 384
step
    #xprate <1.5
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>升级至 4360+/4500xp
    .isQuestTurnedIn 384
step
    #xprate 1.49-1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4290 >>升级至 4290+/4500xp
    .isQuestTurnedIn 384
step << Rogue/Hunter
    #xprate >1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 9+7320 >>升级至 7320+/7600xp
    .isQuestTurnedIn 384
step
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    >>|cRXP_WARN_进行丹莫罗 -> 湿地死亡跳跃。密切关注箭头|r
    >>|cRXP_WARN_暂时不要从任何高处跳下|r
    .zone Wetlands >>|cRXP_WARN_前往: |cRXP_PICK_湿地|r, 爬上山，然后沿着锯齿状的图案往下走，直到你的所在区域变成湿地|r
    .isQuestAvailable 983
step
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_从山上往北或西北方向跳下|r
    .deathskip >>在巴拉丁湾死亡并重生 |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestAvailable 983
    .target Spirit Healer
step
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>游向米奈希尔港的岸边
    .subzoneskip 150
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Wetlands >>获取湿地飞行路线
    .target Shellei Brondir
step
    #softcore
	#completewith Distracting
    .hs >>炉石到卡拉诺斯
    .subzoneskip 131
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_和 a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    >>|cRXP_BUY_从他那里购买 a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加文·雷酒|r, 他在楼下
    .turnin 308 >>交任务: |cRXP_FRIENDLY_加文的爱好|r
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>点击 |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >>交任务: |cRXP_FRIENDLY_针锋相对|r
    .accept 311 >>接任务: |cRXP_LOOT_向马莱斯回报|r
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r, 他在外面
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
    .target Ragnar Thunderbrew
step << Hunter
    #xprate <1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .trainer >>训练你的职业法术
    .target Grif Wildheart
step << Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .trainer >>训练你的职业法术
    .accept 6064 >>接任务: |cRXP_LOOT_驯服野兽|r << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6084 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a 雪豹 (1)
    .mob 雪豹
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6085 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an 冰爪熊 (1)
    .mob 冰爪熊
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6086 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉姆瑞兹·黑轮|r
    .trainer >>训练你的职业法术
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹尼·血泡|r
    .vendor 6328 >>|cRXP_BUY_如果你买得起，就买|r |T133738:0|t[火箭魔法书（等级 2）] |cRXP_BUY_。如果买不起，可以稍后再买|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Rogue
    #xprate >1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍格拉尔·巴坎|r
    >>|cRXP_WARN_仅训练|r |T132147:0|t[双持] |cRXP_WARN_和|r |T132307:0|t[冲刺]|cRXP_WARN_。不要训练其他法术以节省资金以备后用|r
    .train 674 >>训练 |T132147:0|t[双持]
    .train 2983 >>列车 |T132307:0|t[冲刺]
    .accept 2218 >>接任务: |cRXP_LOOT_救赎之路|r
    .target Hogral Bakkan
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .trainer >>训练你的职业法术
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿扎尔·战锤|r, 他在楼上
    .trainer >>训练你的职业法术
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格兰尼斯·快斧|r, 他在里面
    .trainer >>训练你的职业法术
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛济斯·石衣|r, 他在楼上
    .train 118 >>列车 |T136071:0|t[变形术]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克萨恩·安沃尔|r, 他在里面
    .trainer >>训练你的职业法术
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨姆诺·普尔|r
    .train 3273 >>列车 |T135966:0|t[急救]
    .target Thamner Pol
    .money <0.01
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备 a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备 a|r |T132401:0|t[大斧]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_装备|r |T132401:0|t[大斧]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备 a|r |T135641:0|t[Stiletto]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith next
    +|cRXP_WARN_装备|r |T135641:0|t[细高跟鞋]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格劳恩·索姆温|r
    >>|cRXP_BUY_购买并装备 a|r |T133053:0|t[木槌]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_装备|r |T133053:0|t[木槌]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .vendor 1247 >>|cRXP_BUY_如果你能负担得起，最多可以从他那里购买 15|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior/Rogue
    .vendor 1247 >>|cRXP_BUY_如果你能负担得起，就从他那里买 5|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .vendor 1247 >>|cRXP_BUY_如果你能负担得起，最多可以从他那里购买 20|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
    #xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
    .target 飞行员石甲
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    >>|cRXP_WARN_选择|r |T135637:0|t[Camping Knife]|cRXP_WARN_。保存以供日后使用|r << Rogue
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r << !Rogue
    .turnin 320,3 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r << Rogue
    .target 飞行员 Bellowfiz
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    >>|cRXP_WARN_选择|r |T135637:0|t[露营刀]
    .turnin 320,3 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .target 飞行员 Bellowfiz
step << Rogue
    #xprate >1.49
    #completewith ShimmerweedCollect
    +|cRXP_WARN_在你的副手中装备|r |T135637:0|t[露营刀] |cRXP_WARN_|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.2
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1426,47.861,41.827,30,0
    .goto 1426,51.373,39.595,30,0
    .goto 1426,52.013,36.589,30,0
    .goto 1455,18.428,82.995,60 >>前往铁炉堡
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #completewith next
    #label EnterIFRogue
    .goto 1455,18.428,82.995
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    #requires EnterIFRogue
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>前往 |cRXP_FRIENDLY_Hulfdan Blackbeard|r 楼下
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r, 他在楼下
    .turnin 2218 >>交任务: |cRXP_FRIENDLY_救赎之路|r
    .accept 2238 >>接任务: |cRXP_WARN_国王的财宝|r
    .target Hulfdan Blackbeard
step
    #xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹·滑链|r, 他在里面
    .accept 412 >>接任务: |cRXP_LOOT_自动净化装置|r
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >>沿斜坡前往 Shimmer Ridge
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>杀死 |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>杀死 |cRXP_ENEMY_霜鬃先知s|r。掠夺他们的 |cRXP_LOOT_Shimmerweed|r
    >>打开地面上的 |cRXP_PICK_Shimmerweed Baskets|r。拾取其中的 |cRXP_LOOT_Shimmerweed|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob 霜鬃先知
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>杀死 |cRXP_ENEMY_霜鬃先知s|r。掠夺他们以获得 |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob 霜鬃先知
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >>|cRXP_WARN_使用|r |T135975:0|t[|cRXP_FRIENDLY_被亵渎城堡的预言|r] |cRXP_WARN_训练|r |T237570:0|t[Homunculi]
    >>|cRXP_WARN_你必须通过输入 /kneel 在圣地获得 2|r |T135934:0|t|T136057:0|t[冥想] |cRXP_WARN_buffs，例如北郡修道院、暴风城大教堂、安威玛尔的圣光祭坛、洛克莫丹或铁炉堡的神秘守卫|r
    .use 205947
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>杀死 |cRXP_ENEMY_霜鬃先知s|r。从他们身上搜刮 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .collect 203752,1
    .mob 霜鬃先知
    .train 401768,1
step << Mage
    #season 2
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .train 401768 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_咒语注释：MILEGIN VALF]|r |cRXP_WARN_进行训练|r |T135820:0|t[活火焰]
    .use 203752
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_Frostmane Trolls|r. 掠夺它们以获得 |T134327:0|t[|cRXP_LOOT_右上角地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob 霜鬃先知
    .mob Frostmane Headhunter
    .mob 霜鬃雪行者
    .train 398196,1
step << Warrior
    #season 2
    >>杀死 |cRXP_ENEMY_Frostmane Trolls|r。掠夺他们的 |cRXP_LOOT_Severed Troll Head|r
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .mob Frostmane Headhunter
    .mob 霜鬃雪行者
    .mob 霜鬃先知
    .train 403475,1
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>在洞穴内的尸体附近使用 |T134026:0|t[丹莫洛猪肉] 召唤 |cRXP_ENEMY_Jorul|r
    >>杀死 |cRXP_ENEMY_Jorul|r。从他身上搜刮 |T134419:0|t|cRXP_LOOT_[侧翼符文]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[侧翼符文]|r |cRXP_WARN_进行训练|r |T132175:0|t[侧翼打击]
    .use 205979
    .itemcount 205979,1
step << !Mage !Warlock
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_MacGrann 的肉柜|r。获取 |cRXP_LOOT_MacGrann 的干肉|r
    >>|cRXP_WARN_等待 |cRXP_ENEMY_Old Icebeard|r 从洞穴中巡逻出来。一旦他从洞穴中巡逻出来，你就可以进入并抢劫|r |cRXP_PICK_MacGrann 的肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_施法|r |T136071:0|t[变形] |cRXP_WARN_on|r |cRXP_ENEMY_Old Icebeard|r << Mage
    >>|cRXP_WARN_施法|r |T136183:0|t[恐惧] |cRXP_WARN_on|r |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>打开 |cRXP_PICK_MacGrann 的肉柜|r。获取 |cRXP_LOOT_MacGrann 的干肉|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
    .target Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基格·吉布恩|r
    .vendor >>|cRXP_BUY_再购买最多 10 杯|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_来自他|r
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基格·吉布恩|r
    .vendor >>供应商垃圾
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷杰德·麦酒|r, |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 315 >>交任务: |cRXP_FRIENDLY_完美烈酒|r
    .accept 413 >>接任务: |cRXP_LOOT_微光酒|r
    .goto Dun Morogh,30.189,45.725
    .target +Rejold 大麦啤酒
    .turnin 311 >>交任务: |cRXP_FRIENDLY_向马莱斯回报|r
    .goto Dun Morogh,30.186,45.531
    .target +马莱斯大麦啤酒
step << Rogue
    #season 2
    #completewith next
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_麻风侏儒|r. 掠夺他们以获得 |T134269:0|t[|cRXP_LOOT_右下角地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Priest
    #season 2
    >>杀死 |cRXP_ENEMY_Leper Gnomes|r。掠夺他们以获得 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Dun Morogh,25.164,44.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onin MacHammer|r atop the Flying Machine port
    >>|cRXP_WARN_他是|r |T132320:0|t[隐身]
    .turnin 2238 >>交任务: |cRXP_FRIENDLY_国王的财宝|r
    .accept 2239 >>接任务: |cRXP_WARN_奥宁的报告|r
    .target Onin MacHammer
step
    #xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>杀死 |cRXP_ENEMY_Leper Gnomes|r。掠夺他们的 |cRXP_LOOT_Gyromechanic Gears|r 和 |cRXP_LOOT_Restabilization Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>杀死 |cRXP_ENEMY_Leper Gnomes|r。掠夺他们以获得 |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r] |cRXP_WARN_训练|r |T237514:0|t[虚空瘟疫]
    >>|cRXP_WARN_你必须通过输入 /kneel 在圣地获得|r |T135934:0|t|T136057:0|t[冥想] |cRXP_WARN_buff，例如北郡修道院、暴风城大教堂、安威玛尔的圣光祭坛、洛克莫丹或铁炉堡的神秘守卫|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_麻风侏儒|r. 掠夺他们以获得 |T134269:0|t[|cRXP_LOOT_右下角地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>杀死洞穴内的 |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>沿着洞穴入口的一侧跑上去。跳进霜鬃堡垒
    .isOnQuest 287
step << Hunter
    #xprate 1.49-1.59
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .goto 1426,22.390,51.701,30,0
    .goto 1426,21.113,51.717,30,0
    .goto 1426,21.131,51.024,30,0
    .goto 1426,22.067,50.215,30,0
    .goto 1426,23.136,50.886,30,0
    .goto 1426,23.373,51.385,30,0
    .goto 1426,23.568,50.924,30,0
    .goto 1426,24.301,50.898,30,0
    .xp 9+4280 >>升级至 4280+/6500xp
step
    #hardcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_如果洞穴中只有一个 |cRXP_ENEMY_Frostmane Shadowcaster|r，则跳入洞穴中一个死胡同里的小房间|r
    >>|cRXP_WARN_要小心，因为 |cRXP_ENEMY_Great Father Arctikus|r（罕见）会巡逻到这个角落。如果他起来了，等他过来巡逻，或者一路小心地战斗到角落里|r
    >>|cRXP_WARN_或者，走下壁架，然后稍微往下走，直到你得到积分|r
    >>|cRXP_WARN_要小心，因为 |cRXP_ENEMY_Frostmane Hideskinner|r 可能会从下面杀死你，如果他走错位置，或者跳到壁架上|r
    .link https://youtu.be/70PX093soq4?si=YcTdPoKW-EplWQAn&t=3019 >>点击此处查看参考
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_掉进洞穴里的小死胡同房间|r
    >>|cRXP_WARN_不要担心会因此丧命，因为你即将死亡跳跃回卡拉诺斯|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #optional
    #completewith next
    .deathskip >>在灵魂治疗师处死亡并重生
    .target Spirit Healer
step
    #hardcore
	#completewith next
	.hs >>炉石到卡拉诺斯
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
    .target Senir Whitebeard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .accept 6064 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6084 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a 雪豹 (1)
    .mob 雪豹
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6085 >>接任务: |cRXP_LOOT_驯服野兽|r
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an 冰爪熊 (1)
    .mob 冰爪熊
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .accept 6086 >>接任务: |cRXP_LOOT_训练野兽|r
    .target Grif Wildheart
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍格拉尔·巴坎|r
    .accept 2218 >>接任务: |cRXP_LOOT_救赎之路|r
    .target Hogral Bakkan
    .xp <10,1
step << !Warrior !Rogue !Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨姆诺·普尔|r
    .train 3273 >>列车 |T135966:0|t[急救]
    .target Thamner Pol
step
    #xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹·滑链|r, 他在里面
    .turnin 412 >>交任务: |cRXP_FRIENDLY_自动净化装置|r
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_升级直到你有价值 10s30c 的可销售物品|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>前往: |cRXP_PICK_铁炉堡|r
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比克斯|r, |cRXP_FRIENDLY_布里维夫·石拳|r
    .trainer >>如果你现在在队伍中或有人帮你杀死 |cRXP_ENEMY_Vagash|r，请从 |cRXP_FRIENDLY_布里维夫·石手|r 训练双手锤，否则请从 |cRXP_FRIENDLY_比西·沃布尔邦克|r 训练投掷武器。如果你不确定要训练哪个，请只训练投掷武器
    .target 比西·沃布尔邦克
    .target 布里维夫·石手
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_从她那里购买|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_从她那里购买|r |T135641:0|t[平衡投掷匕首] |cRXP_BUY_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135425:0|t[敏锐的投掷刀具]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135641:0|t[平衡投掷匕首]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_走到路标箭头上方的金属地板边缘|r
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 调整你的角色，直到它们看起来像是漂浮起来，然后通过退出并重新登录来执行跳过操作|r
    .zoneskip Ironforge,1
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>杀死 |cRXP_ENEMY_老峭壁野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_这将用于提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_later 的水平。|r
    >>|cRXP_WARN_您需要 10|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在奥伯丁执行任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 老峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>杀死 |cRXP_ENEMY_老峭壁野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_这将用于提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_later 的水平。|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 老峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>沿着泥路向上走
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_风筝 |cRXP_ENEMY_Vagash|r 向下至|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_如果你遇到困难，请点击此处|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
    .target Rudra Amberstill
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>杀死 |cRXP_ENEMY_Vagash|r。从他身上搜刮 |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r << Warrior
    >>杀死 |cRXP_ENEMY_Vagash|r。从他身上搜刮 |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>杀死 |cRXP_ENEMY_Vagash|r。夺取他的 |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_把他引到牧场南边的守卫那里。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_在你尝试杀死 |cRXP_ENEMY_Vagash|r 之前，请观看下面的视频。它可以在任何班级单独完成|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_点击此处查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r |cRXP_WARN_进行训练|r |T136048:0|t[狂暴雷霆]
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r |cRXP_WARN_进行训练|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>杀死 |cRXP_ENEMY_Large Crag Boars|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>杀死 |cRXP_ENEMY_Large Crag Boars|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >>前往戈尔博拉采石场
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >>训练 |T133971:0|t[烹饪]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor 1237 >>|cRXP_BUY_如果需要的话，从他那里购买最多 10|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_如果需要，可从他那里购买最多 5|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] |cRXP_BUY_|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r, |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target 参议员梅尔·斯通哈洛
    .target 工头石眉
step << Warrior
    #season 2
    #completewith RockjawEnd
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r。掠夺他们的 |cRXP_LOOT_Pristine Trogg Heart|r
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob 岩颚骨撕咬者
    .train 403475,1
step << Rogue
    #season 2
    #completewith RockjawEnd
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_Rockjaw Skullthumpers|r 和 |cRXP_ENEMY_岩颚骨撕咬者s|r。从他们身上搜刮 |T134327:0|t[|cRXP_LOOT_左上角地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob 岩颚骨撕咬者
    .train 398196,1
step << Dwarf Paladin
    #xprate >1.49
    #sticky
    #label PalaCloth
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r 和 |cRXP_ENEMY_岩颚骨撕咬者s|r。拾取他们的 |T132889:0|t[亚麻布] << Dwarf Paladin
    >>|cRXP_WARN_保存|r|T132889:0|t[亚麻布]|cRXP_WARN_以供稍后执行任务|r << Dwarf Paladin
    .collect 2589,10,1648,1 --Linen Cloth (10)
    .mob Rockjaw Skullthumper
    .mob 岩颚骨撕咬者
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>在矿井内或矿井外杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>进入 Gol'Bolar 采石场
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>杀死矿井内的 |cRXP_ENEMY_岩颚骨撕咬者s|r
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
    .mob 岩颚骨撕咬者
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_Rockjaw Skullthumpers|r 和 |cRXP_ENEMY_岩颚骨撕咬者s|r。从他们身上搜刮 |T134327:0|t[|cRXP_LOOT_左上角地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob 岩颚骨撕咬者
    .train 398196,1
step << Warrior
    #season 2
    >>杀死 |cRXP_ENEMY_Rockjaw Troggs|r。掠夺他们的 |cRXP_LOOT_Pristine Trogg Heart|r
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob 岩颚骨撕咬者
    .train 403475,1
step
    #requires PalaCloth << Paladin -->1.49 or higher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r, |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .target 参议员梅尔·斯通哈洛
    .target 工头石眉
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >>升级至 10 级
    .mob Rockjaw Skullthumper
step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_黑铁间谍|r。掠夺他们以获得 |T134331:0|t[黑鼠的笔记] 和 |T134327:0|t[|cRXP_LOOT_左下角的地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_黑铁间谍|r. 掠夺他们以获得 |T134331:0|t[黑鼠的笔记]
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[偷窃] |cRXP_ENEMY_黑铁间谍|r. 掠夺他们以获得 |T134327:0|t[|cRXP_LOOT_左下角的地图碎片]|r
    >>|cRXP_WARN_您必须处于|r |T132320:0|t[隐身] |cRXP_WARN_才能使用|r |T133644:0|t[扒窃]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_使用任意|r |T134327:0|t[|cRXP_LOOT_地图碎片]|r |cRXP_WARN_将它们组合成|r |T134269:0|t[|cRXP_LOOT_丹莫洛藏宝图|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Warrior/Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
    .train 403475,1 << Warrior
    .train 398196,1 << Rogue
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junni Steelpass|r
    >>|cRXP_WARN_上交三件物品后，你将收到|r |T134419:0|t[|cRXP_FRIENDLY_毁灭符文|r]
    .train 403475 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_毁灭状态符文|r] |cRXP_WARN_进行训练|r |T135291:0|t[毁灭状态]
    .use 204703
    .skipgossip
    .target Junni Steelpass
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_使用|r |T134269:0|t[|cRXP_LOOT_丹莫洛藏宝图|r] |cRXP_WARN_小桥下。这将导致|cRXP_PICK_埋藏的宝藏|r弹出|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开 |cRXP_PICK_Buried Treasure|r。获取 |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_快速绘制符文|r] |cRXP_WARN_进行训练|r |T134536:0|t[快速绘制]
    .use 203991
    .itemcount 203991,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Talk to |cRXP_FRIENDLY_Blackrat|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_残害符文|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_Scarred Crag Boars|r 和 |cRXP_ENEMY_老峭壁野猪s|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob 老峭壁野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_Scarred Crag Boars|r 和 |cRXP_ENEMY_老峭壁野猪s|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob 老峭壁野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>前往 |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>点击地面上的 |cRXP_PICK_Dwarven Corpse|r
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。搜刮他的物品以获得 |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r << Warrior
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。搜刮他的物品以获得 |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。掠夺他的 |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[狂暴雷霆符文]|r |cRXP_WARN_进行训练|r |T136048:0|t[狂暴雷霆]
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_Reagent Vendor|r 处获得 |T135933:0|t[Comprehension Charm] 才能使用 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：RING SEFF OSTROF]|r |cRXP_WARN_进行训练|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    >>|cRXP_WARN_选择|r |T135641:0|t[Craftsman's Dagger]|cRXP_WARN_。保存以供日后使用|r << Rogue
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r << !Rogue
    .turnin 417,1 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    >>|cRXP_WARN_选择|r |T135641:0|t[工匠匕首]
    .turnin 417,1 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_在你的主手中装备|r |T135641:0|t[工匠匕首] |cRXP_WARN_|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >>前往 |cRXP_FRIENDLY_Mountaineer Barleybrew|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .turnin 413 >>交任务: |cRXP_FRIENDLY_微光酒|r
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >>穿过南门隘口进入洛克莫丹
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
    .target 登山者科布尔弗林特
    .xp >14,1 << !Warrior !Dwarf/!Paladin
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>进入地堡。前往顶楼
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
    .target 鲁格尔福斯上尉
    .xp >14,1 << !Warrior !Dwarf/!Paladin
--XX Skip if 14+ 除非战争
step
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >>前往塞尔萨玛
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    #completewith ThelsaHS << !Dwarf !Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛的道路|r
    .turnin 414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入 Stoutlager Inn
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r, 他在里面
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
    .target 维德拉炉灶
    .xp >14,1
--XX Skip if 14+
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    >>|cRXP_BUY_从她那里购买 a|r |T135435:0|t[简易木材] |cRXP_BUY_和 a|r |T135237:0|t[火石和火绒] |cRXP_BUY_|r
    >>|cRXP_BUY_如果需要的话，从她那里买一个|r |T133634:0|t[小棕色袋]|cRXP_BUY_too|r << !Rogue
    >>|cRXP_WARN_这可用于在船上或有轨电车上制作|r |T135805:0|t[基础营火] |cRXP_WARN_来提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能而不浪费时间|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49 << Paladin
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r, 他在里面
    .home >>将你的炉石设为塞尔萨玛
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >>离开 Stoutlager 旅馆
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
    .target Brock Stoneseeker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛的道路|r
    .turnin 414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
    .target Mountaineer Kadrell
step
    #optional
    #label BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_这将用于提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_later 的水平。|r
    >>|cRXP_WARN_您需要 10|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在奥伯丁执行任务|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|cRXP_WARN_这将用于提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_later 的水平。|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_保存任何|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_用于升级|T133971:0|t[烹饪] |cRXP_WARN_later|r
    >>|cRXP_WARN_现在不要费力完成这件事。你很快就会回到洛克莫丹|r
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>前往阿尔加兹站
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >>进入地堡。前往顶楼
step
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
    .dungeon DM << Human
step << Human
    #xprate <1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
    .dungeon !DM
step << Human
    #xprate >1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r << Mage/Warlock/Rogue
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
    .dungeon !DM
step
    #softcore
    #completewith flyIF
    .deathskip >>死亡后在 |cRXP_FRIENDLY_Spirit Healer|r 处重生
    .target Spirit Healer
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入 Stoutlager Inn
step
    #optional
    #label Thelsamar1
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r, 他在里面
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
    .target 维德拉炉灶
    .isQuestComplete 418
step << Dwarf Paladin
    #xprate 1.49-1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6885 >>升级至 6885+/8800xp
step << Dwarf Paladin
    #xprate >1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6225 >>升级至 6225+/8800xp
step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r
    .accept 6391 >>接任务: |cRXP_LOOT_飞往铁炉堡|r
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>前往 |cRXP_FRIENDLY_Hulfdan Blackbeard|r 楼下
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>前往 |cRXP_FRIENDLY_Hulfdan Blackbeard|r 楼下
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r, 他在楼下
    .turnin 2218 >>交任务: |cRXP_FRIENDLY_救赎之路|r
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r, 他在楼下
    .turnin 2239 >>交任务: |cRXP_FRIENDLY_奥宁的报告|r
    .target Hulfdan Blackbeard
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #label Cunning
    #completewith Ride
    +|cRXP_WARN_在你的主手中装备|r |T135662:0|t[狡诈之刃] |cRXP_WARN_|r
    .use 7298
    .itemcount 7298,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #requires Cunning
    #completewith Ride
    +|cRXP_WARN_在你的副手中装备|r |T135641:0|t[工匠匕首] |cRXP_WARN_|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #xprate <1.59
    #season 2
    .goto Ironforge,51.913,13.383
    >>打开外面的 |cRXP_PICK_Dusty Chest|r。获取 |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_这样做会生成两个 10 级 |cRXP_ENEMY_Cut-throat Muggers|r 来攻击你|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #xprate <1.59
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_精准符文|r] |cRXP_WARN_进行训练|r |T135610:0|t[双眼之间]
    .use 204174
    .itemcount 204174,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,60.781,25.800,25,0
    .goto 1455,59.236,14.974,25,0
    .goto 1455,56.192,32.397,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>前往建筑物内的 |cRXP_FRIENDLY_Golnir Bouldertoe|r
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,25,0
    .goto 1455,59.236,14.974,25,0
    .goto 1455,56.192,32.397,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>前往建筑物内的 |cRXP_FRIENDLY_Golnir Bouldertoe|r
step << Dwarf/Gnome
    #xprate <1.59 << Rogue
    #season 0,1 << Rogue
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>前往建筑物内的 |cRXP_FRIENDLY_Golnir Bouldertoe|r
step
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尼尔·石趾|r, 他在里面
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
    .target Golnir Bouldertoe
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    >>|cRXP_WARN_请勿飞行|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
    .target Gryth Thurden
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>前往 |cRXP_FRIENDLY_参议员巴林·雷石东|r
step
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
    .target Senator Barin Redstone
step
    #xprate <1.5 << Dwarf Paladin
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    >>|cRXP_WARN_请勿飞行|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
    .target Gryth Thurden
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>前往 |cRXP_FRIENDLY_Brandur Ironhammer|r
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .accept 2999 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Brandur Ironhammer
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上的 |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 2999 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1645 >>接任务: |cRXP_LOOT_圣洁之书|r
    .turnin 1645 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_使用 |T133739:0|t|cRXP_LOOT_[神之书]|r 开始任务|r
    .accept 1646 >>接任务: |cRXP_LOOT_圣洁之书|r
    .use 6916
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 1646 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1647 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·特纳|r
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_巡逻在铁炉堡外环，就在石火酒馆和游客中心之间|r
    .turnin 1647 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1648 >>接任务: |cRXP_LOOT_圣洁之书|r
    .turnin 1648 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1778 >>接任务: |cRXP_LOOT_圣洁之书|r
    .unitscan John Turner
step << Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞姆·贾根斯塔德|r
    >>|cRXP_BUY_从他那里购买 5|r |T135933:0|t[理解咒] |cRXP_BUY_|r
    >>|cRXP_WARN_学习符文需要这些|r
    .collect 211779,5
    .target Barim Jurgenstaad
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品，以便在洛克莫丹更快地完成任务并提升你的|r |T133971:0|t[烹饪] |cRXP_BUY_skill：|r
    >>|T134342:0|t[野猪肠]
    >>|T134027:0|t[熊肉]
    >>|T134437：0|吨[蜘蛛脓液]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- 熊 Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品即可快速在洛克莫丹完成交付：|r
    >>|T134342:0|t[野猪肠]
    >>|T134027:0|t[熊肉]
    >>|T134437：0|吨[蜘蛛脓液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- 熊 Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >>前往下面的楼梯 |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上的 |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #xprate >1.49
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 1778 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1779 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆里顿·热炉|r, 他在楼上
    .turnin 1779 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1783 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r, 他在楼下
    .trainer >>训练你的职业法术
    .target Brandur Ironhammer
step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith DRT
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. 前往: |cRXP_PICK_丹莫罗|r, 调整你的角色，直到它们看起来像是漂浮起来，然后通过退出并重新登录来执行跳过操作|r
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ 退出训练师
    #optional
    #completewith DRT
    .goto 1455,35.743,74.853,30,0
    .goto 1455,39.105,78.213,30,0
    .goto 1455,49.422,81.849
    >>|cRXP_WARN_走到路标箭头上方的金属地板边缘|r
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 调整你的角色，直到它们看起来像是漂浮起来，然后通过退出并重新登录来执行跳过操作|r
    .zoneskip Ironforge,1
    .isQuestAvailable 418 --XX only if you havent turned it in yet
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ 退出训练师
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到狮鹫的头顶。通过登出并重新登录来跳过登出|r
    .zoneskip Ironforge,1
    .isQuestTurnedIn 418 --XX only if you have turned in (don't need to go toward AH)
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ssf
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ 退出训练师
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到狮鹫的头顶。通过登出并重新登录来跳过登出|r
    .zoneskip Ironforge,1
step << Paladin
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>前往旅馆内的 |cRXP_FRIENDLY_Bruuk Barleybeard|r
    .train 425621,1
step << Paladin
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r, 他在里面
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>击败 |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他施法时要小心|r |T132939:0|t[反手] |cRXP_WARN_(使你昏迷 2 秒)|r
    >>|cRXP_WARN_记得预先对他施放|r|T135924:0|t[十字军印记]|cRXP_WARN_|r
    >>|cRXP_WARN_切勿意外对他施放|r|T135906:0|t[力量祝福]|cRXP_WARN_|r
    >>|cRXP_WARN_把他放风筝到楼上的阳台上，然后扔到旅馆外面施放|r |T135920:0|t[圣光] |cRXP_WARN_if required|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败 |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他施法时要小心|r |T132939:0|t[反手] |cRXP_WARN_(使你昏迷 2 秒)|r
    >>|cRXP_WARN_记得预先对他施放|r|T135924:0|t[十字军印记]|cRXP_WARN_|r
    >>|cRXP_WARN_切勿意外对他施放|r|T135906:0|t[力量祝福]|cRXP_WARN_|r
    >>|cRXP_WARN_把他放风筝到楼上的阳台上，然后扔到旅馆外面施放|r |T135920:0|t[圣光] |cRXP_WARN_if required|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_Bruart|r 后：|r
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r
    >>|cRXP_WARN_如果他不给你|r |T134419:0|t[谴责符文]|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_Bruart|r 战斗|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[斥责符文] |cRXP_WARN_学习|r |T134596:0|t[雕刻裤子 - 斥责]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_雕刻你的|r |T134596:0|t|cRXP_LOOT_[裤子]|r 带有|r |T134596:0|t[雕刻裤子 - 斥责]
    >>|cRXP_WARN_记得把|r |T134919:0|t[斥责] |cRXP_WARN_放到你的动作条上|r
    .train 425621,3
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比克斯|r, |cRXP_FRIENDLY_布里维夫·石拳|r
    >>如果你之前没有训练投掷和双手锤
    .train 2567 >>火车被抛
    .goto Ironforge,62.237,89.628
    .train 199 >>训练 2h Maces
    .goto Ironforge,61.177,89.508
    .target 比西·沃布尔邦克
    .target 布里维夫·石手
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_从她那里购买|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷文·寒钢|r, 他在楼下
    >>|cRXP_BUY_从她那里购买|r |T135641:0|t[平衡投掷匕首] |cRXP_BUY_|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135425:0|t[敏锐的投掷刀具]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135641:0|t[平衡投掷匕首]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>前往旅馆内的 |cRXP_FRIENDLY_Bruuk Barleybeard|r
    .train 425447,1
step << Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r, 他在里面
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>击败 |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他施法时要小心|r |T132939:0|t[反手] |cRXP_WARN_(使你昏迷 2 秒)|r
    >>|cRXP_WARN_把他放风筝到楼上的阳台上，然后跳到旅馆外面，使用|r |T133688:0|t[绷带] |cRXP_WARN_如果你有它们/如果需要|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败 |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他施法时要小心|r |T132939:0|t[反手] |cRXP_WARN_(使你昏迷 2 秒)|r
    >>|cRXP_WARN_把他放风筝到楼上的阳台上，然后跳到旅馆外面，使用|r |T133688:0|t[绷带] |cRXP_WARN_如果你有它们/如果需要|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_Bruart|r 后：|r
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r
    >>|cRXP_WARN_如果他不给你|r |T134419:0|t[狂暴突袭符文]|cRXP_WARN_，你可能需要再次与|cRXP_ENEMY_Bruart|r 战斗|r
    >>|cRXP_WARN_注意：这可能很难独自完成。你可能需要寻求帮助，否则你可以在指南的后面再次执行此操作|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_使用|r |T134419:0|t[狂暴突袭符文] |cRXP_WARN_学习|r |T134596:0|t[雕刻裤子 - 狂暴突袭]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_雕刻你的|r |T134596:0|t|cRXP_LOOT_[裤子]|r |cRXP_WARN_with|r |T134596:0|t[雕刻裤子 - 狂暴突击]
    .train 425447,3
step << skip --logout skip << Paladin/Warrior
    #season 2
    #optional
    #completewith DRT
    .goto 1455,72.481,74.910
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 跳到桌子上的蜡烛上。通过登出并重新登录来跳过登出|r
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>前往 |cRXP_FRIENDLY_Belia Thundergranite|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝莉亚·雷岩|r
    .turnin 6086 >>交任务: |cRXP_FRIENDLY_训练野兽|r
    .target Belia Thundergranite
step << skip --logout skip << Hunter
    #optional
    #completewith DRT
    .goto 1455,70.408,85.520
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走上大炮顶部。通过登出并重新登录来跳过登出|r
step
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入 Deeprun 有轨电车
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
    .target Monty
step
    >>使用 |T133942:0|t[捕鼠者长笛] 对着深泉有轨电车上的 |cRXP_FRIENDLY_深泉老鼠|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
    .target Monty
----
step
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[Cook] |cRXP_WARN_以下项目:|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
----
step
    #label TramEnd
    >>|cRXP_WARN_乘坐深泉电车前往暴风城一侧|r
    >>|cRXP_WARN_如果需要，请在等待前往暴风城的电车时升级你的|r |T135966:0|t[急救] |cRXP_WARN_|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要你的|r |T135966:0|t[急救] |cRXP_WARN_达到 80 才能完成 24 级的任务|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼普希|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step
    #optional
    #completewith Order
    .abandon 6662 >>抛弃我吧兄弟，尼普西
step
    #optional
    #completewith Order
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .isOnQuest 1338
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .accept 353 >>接任务: |cRXP_LOOT_雷矛的包裹|r
    .target Grimand Elmore
step
    #label Order
    .goto StormwindClassic,58.091,16.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
    .target Furen Longbeard
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    --.skipgossip
    .train 410015,1
step << Paladin
    #season 2
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>下楼进入大教堂地下室的西侧
    .goto StormwindClassic,32.86,24.77,8 >>前往墓穴中的 |cRXP_LOOT_Charred Note|r
    .train 410015,1
step << Paladin
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>抢夺蜡烛旁边的 |cRXP_LOOT_Charred Note|r
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .trainer >>训练你的职业法术
    .turnin 5634 >>交任务: |cRXP_FRIENDLY_绝望祷言|r
    .target High Priestess Laurena
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .train 13908 >>训练绝望的祈祷
    .target High Priestess Laurena
step << Warrior
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨·考宾|r
    .trainer >>训练你的职业法术
    .accept 1638 >>接任务: |cRXP_LOOT_战士的训练|r
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >>进入酒馆
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈里·伯加德|r
    .turnin 1638 >>交任务: |cRXP_FRIENDLY_战士的训练|r
    .accept 1639 >>接任务: |cRXP_LOOT_醉鬼巴特莱比|r
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴特莱比|r
    .turnin 1639 >>交任务: |cRXP_FRIENDLY_醉鬼巴特莱比|r
    .accept 1640 >>接任务: |cRXP_LOOT_击败巴特莱比|r
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>击败 |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴特莱比|r
    .turnin 1640 >>交任务: |cRXP_FRIENDLY_击败巴特莱比|r
    .accept 1665 >>接任务: |cRXP_LOOT_巴特莱比的酒杯|r
    .target Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈里·伯加德|r
    .turnin 1665 >>交任务: |cRXP_FRIENDLY_巴特莱比的酒杯|r
    .target Harry Burlguard
step << Warlock
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往被屠宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业法术
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1688 >>接任务: |cRXP_LOOT_苏伦娜·凯尔东|r
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .trainer >>训练 1h 剑 << Rogue/Mage
    .trainer >>火车五线谱 << Priest/Hunter
    .trainer >>训练 1h 剑与法杖 << Warlock
    .trainer >>训练 2h 剑 << Warrior/Paladin
    .target Woo Ping
step << Dwarf Paladin
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板奥里森|r
    .home >>将炉石设置为暴风城
    .target Innkeeper Allison
]])

RXPGuides.RegisterGuide([[
#xprate >1.49
#classic
#season 0,1
#version 1
<< Gnome Warlock
#group RestedXP 联盟 1-20
#name 11-12 虚空行者任务
#displayname 12-13 Voidwalker Quest << SoD
#next 12-14 洛克莫丹 (矮人/侏儒)

step
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往被屠宰的羔羊并下楼
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1688 >>接任务: |cRXP_LOOT_苏伦娜·凯尔东|r
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城飞行路线
    .target Dungar Longdrink
step
    #optional
    #completewith next
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
step
    >>点击|cRXP_PICK_通缉海报|r
    .accept 176 >>接任务: |cRXP_WARN_通缉：霍格|r
    .goto Elwynn Forest,24.548,74.672
    .target 副总统雷纳
step
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死 |cRXP_ENEMY_Hogger|r。抢夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_can 在多个位置生成|r
    >>|cRXP_WARN_持续施放|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Hogger|r 并使用常规 DoT 杀死他|r
    >>|cRXP_WARN_这个任务很难。如果需要，可以帮他找个小队。如果你找不到小队或者无法单独完成，可以跳过此步骤|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #softcore
    #optional
    #completewith next
    .deathskip >>在金郡死亡并重生
step
    .goto Elwynn Forest,42.108,65.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176,3 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .target 杜汉元帅
step << Warlock
    #optional
    #label BoarMeatElwynn烹饪1
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>杀死 |cRXP_ENEMY_Rockhide Boars|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatElwynn烹饪1
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>杀死 |cRXP_ENEMY_Rockhide Boars|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>杀死 |cRXP_ENEMY_Surena Caledon|r。为她搜刮财物 |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_集中精力快速杀死|cRXP_ENEMY_Surena Caledon|r|r
    >>|cRXP_WARN_持续施放|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeatElwynn烹饪1
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>杀死 |cRXP_ENEMY_Prowlers|r。掠夺他们的 |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatElwynn烹饪1
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>杀死 |cRXP_ENEMY_Prowlers|r。掠夺他们的 |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 2672,50,86,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>接任务: |cRXP_LOOT_豺狼人的入侵|r
    .target Guard Parker
step
    #xprate >1.49
    .goto Redridge Mountains,29.31,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖恩|r
    >>|cRXP_WARN_小心途中的高等级怪物|r
    .accept 3741 >>接任务: |cRXP_LOOT_希拉里的项链|r
    .target Shawn
    .xp <12,1
--XX Done now as you come RR only for p2 on >1.59x
step
    #xprate >1.49
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_潜入水下并检查刷新点。共有 8 个刷新点，每次刷新 2 个|r
    >>打开 |cRXP_PICK_Glinting Mud|r。拾取它以获得 |cRXP_LOOT_Hilary's Necklace|r
    .complete 3741,1 --Hilary's Necklace (1)
    .isOnQuest 3741
step
    #xprate >1.49
    .goto Redridge Mountains,29.24,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r from the lake by talking to her whilst jumping up
    >>|cRXP_WARN_如果你在湖中尝试与她交谈时跳到她正下方，你就可以与她交谈|r
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
    .target Hilary
    .isQuestComplete 3741
step
    #xprate >1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
step
    #xprate <1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_小心途中的高等级怪物|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山飞行路线
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品，以便在洛克莫丹更快地完成任务并提升你的|r |T133971:0|t[烹饪] |cRXP_BUY_skill：|r
    >>|T134342:0|t[野猪肠]
    >>|T134027:0|t[熊肉]
    >>|T134437：0|吨[蜘蛛脓液]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- 熊 Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品即可快速在洛克莫丹完成交付：|r
    >>|T134342:0|t[野猪肠]
    >>|T134027:0|t[熊肉]
    >>|T134437：0|吨[蜘蛛脓液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- 熊 Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往被屠宰的羔羊并下楼
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业法术
    .target Ursula Deline
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1688 >>交任务: |cRXP_FRIENDLY_苏伦娜·凯尔东|r
    .accept 1689 >>接任务: |cRXP_LOOT_誓缚|r
    .target Gakin the Darkbinder
step
    #optional
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往被屠宰的羔羊底部|r
    .cast 7728 >>|cRXP_WARN_使用|r |T133292:0|t[血石颈链] |cRXP_WARN_召唤|r |cRXP_ENEMY_虚空行者|r
    .use 6928
step
    .goto StormwindClassic,25.154,77.406
    >>杀死|cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .use 6928
    .mob Summoned Voidwalker
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1689 >>交任务: |cRXP_FRIENDLY_誓缚|r
    .target Gakin the Darkbinder
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#season 0,1
<< Alliance !Hunter
#group RestedXP 联盟 1-20
#name 11-12 艾尔文 (矮人/侏儒)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 洛克莫丹 (矮人/侏儒)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +在前往 |cRXP_FRIENDLY_Dungar Longdrink|r 的途中，反复施放 |T136126:0|t[生命分流] 直到你的生命值低于 10%
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城飞行路线
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>反复施放 |T136126:0|t[生命分流] 直到你的生命值低于 10%，然后从飞行管理员旁边的壁架上跳下（不要跳入水中）并故意死亡
    .deathskip >>在灵魂治疗师处重生
    .target Spirit Healer
step
    #optional
    #completewith next
    .subzone 87 >>前往闪金郡
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .target 杜汉元帅
    .accept 62 >>接任务: |cRXP_LOOT_法戈第矿洞|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>在旅馆上楼
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业法术
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    >>|cRXP_WARN_优先训练|r |T132147:0|t[双持]
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业法术
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    .target 雷米“两次”
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
    .accept 47 >>接任务: |cRXP_LOOT_金砂交易|r
step << Warlock
    >>点击|cRXP_PICK_通缉海报|r
    .accept 176 >>接任务: |cRXP_WARN_通缉：霍格|r
    .goto Elwynn Forest,24.548,74.672
    .target 副总统雷纳
step << Paladin
    #season 2
    >>点击|cRXP_PICK_通缉海报|r
    .accept 176 >>接任务: |cRXP_WARN_通缉：霍格|r
    .goto Elwynn Forest,24.548,74.672
    .target 副总统雷纳
step << Warlock
    #completewith next
    >>|cRXP_WARN_|r |T134939:0|t[|cRXP_LOOT_金币领取时间表|r] |cRXP_WARN_是一种非常罕见的掉落。如果你没有得到它，请忽略此步骤|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_罕见，有 100% 的掉落几率|r
    .use 1307 >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] 开始任务|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接任务: |cRXP_LOOT_收货人|r
    .unitscan Gruff Swiftbite
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死 |cRXP_ENEMY_Hogger|r。抢夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_can 在多个位置生成|r
    >>|cRXP_WARN_持续施放|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Hogger|r 并使用常规 DoT 杀死他|r
    >>|cRXP_WARN_这个任务很难。如果需要，可以帮他找个小队。如果你找不到小队或者无法单独完成，可以跳过此步骤|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_|r |T134939:0|t[|cRXP_LOOT_金币领取时间表|r] |cRXP_WARN_是一种非常罕见的掉落。如果你没有得到它，请忽略此步骤|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_罕见，有 100% 的掉落几率|r
    .use 1307 >>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] 开始任务|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>接任务: |cRXP_LOOT_收货人|r
    .unitscan Gruff Swiftbite
step << Paladin
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死 |cRXP_ENEMY_Hogger|r。抢夺他的 |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_can 在多个位置生成|r
    >>|cRXP_WARN_这个任务很难。如果需要，可以帮他找个小队。如果你找不到小队或者无法单独完成，可以跳过此步骤|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>前往岛上的 |cRXP_FRIENDLY_Ada Gelhardt|r
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Paladin
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step << Paladin
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>击败 |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_记得预先对她施放|r |T135924:0|t[十字军印记] |cRXP_WARN_|r
    >>|cRXP_WARN_当她施放|r |T136197:0|t[暗影震击] |cRXP_WARN_时要小心（立即造成 45 点暗影伤害。消耗她 75 点法力。你应该尽快杀死她，使她只能施放 3 次）|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_Ada Gelhardt|r 后：|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Paladin
    #season 2
    #sticky
    .destroy 205864 >>从你的包里删除 |T134939:0|t[烧焦的纸条]，因为它不再需要了
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[殉难符文] |cRXP_WARN_学习|r |T133815:0|t[雕刻胸甲 - 殉难印记]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Paladin
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_雕刻你的|r |T134596:0|t|cRXP_LOOT_[宝箱]|r 带有|r |T133815:0|t[雕刻宝箱 - 殉难印记]
    >>|cRXP_WARN_记得将|r |T135961:0|t[殉难印记] |cRXP_WARN_放到你的动作条上。这比|r |T132325:0|t[正义印记] |cRXP_WARN_和|r |T132347:0|t[命令印记] |cRXP_WARN_都好（直到你得到|r |T133815:0|t[雕刻胸甲 - 神圣风暴]|cRXP_WARN_）|r
    .train 410015,3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r, |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .target 马斯通菲尔德
    .target “阿姨”伯妮丝·斯通菲尔德
    .accept 88 >>接任务: |cRXP_LOOT_公主必须死！|r
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >>接任务: |cRXP_LOOT_丢失的项链|r
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利·马科伦|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    #completewith next
    >>杀死 |cRXP_ENEMY_Kobold Tunnelers|r 和 |cRXP_ENEMY_Kobold Miners|r。掠夺他们的 |cRXP_LOOT_Candles|r 和 |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_5级怪物可能会在任务期间变灰。仍然要完成它，因为你需要完成这个任务来解锁后续任务|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_进入并探索法戈迪普矿井|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>杀死 |cRXP_ENEMY_Kobold Tunnelers|r 和 |cRXP_ENEMY_Kobold Miners|r。掠夺他们的 |cRXP_LOOT_Candles|r 和 |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_5级怪物可能会在任务期间变灰。仍然要完成它，因为你需要完成这个任务来解锁后续任务|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #softcore
    #completewith GoldshireTurnins
    .deathskip >>在灵魂治疗师处死亡并重生
    .target Spirit Healer
step
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >>前往闪金郡
step
    #hardcore
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    >>|cRXP_WARN_不要出售|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward。这是一个非常有价值的物品，直到 60 级|r
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
    .target 雷米“两次”
step << Paladin
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
    .turnin 176,2 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .isQuestComplete 176
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
    .turnin 176,3 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
    .accept 35 >>接任务: |cRXP_LOOT_卫兵托马斯|r
step
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .target 杜汉元帅
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >>交任务: |cRXP_FRIENDLY_收货人|r
    .isOnQuest 123
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target 杜汉元帅
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .accept 147 >>接任务: |cRXP_WARN_猎杀收货人|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
    .accept 61 >>接任务: |cRXP_LOOT_送往暴风城的货物|r
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
    >>|cRXP_WARN_不要出售|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward。这是一个非常有价值的物品，直到 60 级|r
    .target 雷米“两次”
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
step
    #completewith next
    .goto Elwynn Forest,73.973,72.179,30 >>向东前往 |cRXP_FRIENDLY_后卫托马斯|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
    .target 后卫托马斯
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .target 后卫托马斯
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >>接任务: |cRXP_LOOT_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_LOOT_保卫边境|r
step
    #era
    #completewith Prowlers
    >>杀死 |cRXP_ENEMY_Prowlers|r 和 |cRXP_ENEMY_年轻的森林熊s|r
    >>|cRXP_WARN_优先杀死你看到的任何|cRXP_ENEMY_年轻的森林熊s|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill 年轻的森林熊 (x5)
    .mob Prowler
    .mob 年轻的森林熊
step
    #era
    >>点击地面上的 |cRXP_PICK_A 半被吃掉的尸体|r
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_LOOT_罗尔夫的下落|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >>接任务: |cRXP_LOOT_木材危机|r
step
    #era
    #completewith Bundles
    >>抢夺地面上的 |cRXP_LOOT_一捆木柴|r。|cRXP_WARN_它们位于树下|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地面上的 |cRXP_PICK_Rolf 的尸体|r
    >>|cRXP_WARN_当你点击 |r |cRXP_PICK_Rolf 的尸体时，请小心附近的 |cRXP_ENEMY_Murlocs|r 可能会引起愤怒|r
    >>|cRXP_ENEMY_鱼人觅食者|r |cRXP_WARN_将施放|r |T135915:0|t[喝下初级药水] |cRXP_WARN_可治愈自身 61-68|r
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_LOOT_回复托马斯|r
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>杀死 |cRXP_ENEMY_Prowlers|r 和 |cRXP_ENEMY_年轻的森林熊s|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill 年轻的森林熊 (x5)
    .mob Prowler
    .mob 年轻的森林熊
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>抢夺地面上的 |cRXP_LOOT_一捆木柴|r。|cRXP_WARN_它们位于树下|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
step
    #era
    #label 熊s
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .target 后卫托马斯
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
    .accept 39 >>接任务: |cRXP_LOOT_托马斯的报告|r
    .accept 109 >>接任务: |cRXP_LOOT_向格里安·斯托曼报到|r
step
    #completewith Deed
    >>杀死 |cRXP_ENEMY_Defias Bandits|r。掠夺他们以获得 |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_使用 |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] 开始任务|r
    >>|cRXP_WARN_|r |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] |cRXP_WARN_ 是一种非常罕见的掉落物。如果你没有得到它，请忽略此步骤|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>杀死 |cRXP_ENEMY_Surena Caledon|r。为她搜刮财物 |cRXP_LOOT_Choker|r
    >>杀死 |cRXP_ENEMY_收藏家摩根|r。从他身上搜刮 |cRXP_LOOT_收藏家的戒指|r
    >>|cRXP_WARN_集中精力快速杀死|cRXP_ENEMY_Surena Caledon|r|r
    >>|cRXP_WARN_持续施放|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r|r
    .complete 1688,1 --Surena's Choker (1)
    .complete 147,1 -- The Collector's 戒指 (1)
    .mob Surena Caledon
    .mob Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>杀死 |cRXP_ENEMY_Surena Caledon|r。为她搜刮财物 |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_集中精力快速杀死|cRXP_ENEMY_Surena Caledon|r|r
    >>|cRXP_WARN_持续施放|r |T136183:0|t[恐惧] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>杀死 |cRXP_ENEMY_Defias 匪徒|r。掠夺他们的 |cRXP_LOOT_头巾|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>杀死 |cRXP_ENEMY_Princess|r。掠夺她的 |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_会与她的|r |cRXP_ENEMY_猪随从发生冲突|r
    >>|cRXP_ENEMY_公主|r |cRXP_WARN_还会施放|r |T132368:0|t[冲锋] |cRXP_WARN_造成重创|r
    .complete 88,1
    .mob Princess
step
    #era
    >>杀死 |cRXP_ENEMY_Defias 匪徒|r。掠夺他们的 |cRXP_LOOT_头巾|r
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
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #era
    #softcore
    #sticky
    #completewith next
    .deathskip >>如果你的生命值低，就去灵魂治疗师那里死后重生，否则就跑回去交出
    .target Spirit Healer
step
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .isQuestComplete 83
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>接任务: |cRXP_LOOT_豺狼人的入侵|r
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_小心途中的高等级怪物|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >>获取赤脊山飞行路线
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
    >>|cRXP_WARN_我们选择|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_作为奖励。它能造成不错的伤害，而且可以用于“分裂拉动”，非常有用|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击此处查看“分体拉动”的视频参考。这是一个简短的视频，非常值得学习|r
    .target Morgan Pestle
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品，以便在洛克莫丹更快地完成任务并提升你的|r |T133971:0|t[烹饪] |cRXP_BUY_skill：|r
    >>|T134342:0|t[野猪肠]
    >>|T134027:0|t[熊肉]
    >>|T134437：0|吨[蜘蛛脓液]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- 熊 Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品即可快速在洛克莫丹完成交付：|r
    >>|T134342:0|t[野猪肠]
    >>|T134027:0|t[熊肉]
    >>|T134437：0|吨[蜘蛛脓液]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- 熊 Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往被屠宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>训练你的职业法术
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1688 >>交任务: |cRXP_FRIENDLY_苏伦娜·凯尔东|r
    .accept 1689 >>接任务: |cRXP_LOOT_誓缚|r
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往被屠宰的羔羊底部|r
    .cast 7728 >>|cRXP_WARN_使用|r |T133292:0|t[血石颈链] |cRXP_WARN_召唤|r |cRXP_ENEMY_虚空行者|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>杀死|cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +在返回 |cRXP_FRIENDLY_Gakin the Darkbinder|r 的途中开始施放 |T136126:0|t[生命分流]，因为你会暂时进行死亡跳跃
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>交任务: |cRXP_FRIENDLY_誓缚|r
step << Warlock
    #softcore
    .deathskip >>死亡后使用 |T136126:0|t[生命分流] 并站在你旁边的篝火上重生于灵魂治疗师处
    .target Spirit Healer
step
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
step << Warlock
    #era
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target 杜汉元帅
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 147 >>交任务: |cRXP_FRIENDLY_猎杀收货人|r
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target 杜汉元帅
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 147 >>交任务: |cRXP_FRIENDLY_猎杀收货人|r
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
    .target 杜汉元帅
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .target Lyria Du Lac
    .trainer >>训练你的职业法术
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>在旅馆上楼
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔迪玛·维夫希尔特|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业法术
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>训练你的职业法术
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女牧师洁塞塔|r
    .target Priestess Josetta
    .trainer >>训练你的职业法术
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .target 马斯通菲尔德
    .turnin 88 >>交任务: |cRXP_FRIENDLY_公主必须死！|r
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    >>|cRXP_WARN_如果你没有足够的[大块野猪肉]，请暂时跳过提交|r
    .target “阿姨”伯妮丝·斯通菲尔德
    .turnin 86 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >>放弃馅饼给比利
step << Dwarf Paladin
    >>杀死 |cRXP_ENEMY_Riverpaw Runts|r 和 |cRXP_ENEMY_Riverpaw Outrunners|r。掠夺他们以获得 |T132889:0|t[亚麻布]
    >>|cRXP_WARN_确保你有 10|r |T132889:0|t[亚麻布] |cRXP_WARN_for 即将进行的圣骑士职业任务|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r
    .target 农夫法布罗
    .goto Westfall,59.95,19.35
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫法布隆|r, |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 64 >>接任务: |cRXP_LOOT_遗失的怀表|r
    .goto Westfall,59.95,19.35
    .accept 151 >>接任务: |cRXP_LOOT_老马布兰契|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .goto Westfall,59.92,19.42
    .target 农夫法布罗
	.target 维尔纳·法布罗
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_农夫萨丁|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >>接任务: |cRXP_LOOT_清理荒野|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
    .accept 38 >>接任务: |cRXP_LOOT_杂味炖肉|r
    .accept 22 >>接任务: |cRXP_LOOT_猪肝馅饼|r
step
    #softcore
    #sticky
    #completewith next
    .deathskip >>死亡后在灵魂治疗师处重生或逃往哨兵岭
    .target Spirit Healer
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .target 格里安·斯托曼托
    .goto Westfall,56.33,47.52
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
    .accept 12 >>接任务: |cRXP_LOOT_西部荒野人民军|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .target 格里安·斯托曼托
    .goto Westfall,56.33,47.52
    .accept 12 >>接任务: |cRXP_LOOT_西部荒野人民军|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达努温上尉|r
    .target 丹努文船长
    .goto Westfall,56.42,47.62
    .accept 102 >>接任务: |cRXP_LOOT_西部荒野的豺狼人|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵加里安|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >>接任务: |cRXP_LOOT_红色皮质面罩|r
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
    .fp Sentinel Hill >>获取哨兵岭飞行路线
    .fly Stormwind >>飞往暴风城 << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >>洛克莫丹
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
]])

RXPGuides.RegisterGuide([[
#era/som--h
#classic
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP 联盟 1-20
#name 12-14 洛克莫丹 (矮人/侏儒)
#displayname 12-15 Loch Modan << SoD !Warlock
#displayname 13-15 Loch Modan << SoD Warlock
#next 13-15 西部荒野；14-16 黑海岸
#defaultfor Gnome/Dwarf


step << Rogue
    #xprate >1.49
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买最多 2|r |T135343:0|t[弯刀] |cRXP_BUY_如果你能负担得起，或者从拍卖行购买更便宜/更好的东西|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_如果你能负担得起，最多可以购买 2|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate >1.49
    #optional
    #label Scimitar1
    #completewith KeenT
    +|cRXP_WARN_在你的主手中装备|r |T135343:0|t[弯刀] |cRXP_WARN_|r
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #xprate >1.49
    #optional
    #requires Scimitar1
    #completewith KeenT
    +|cRXP_WARN_在你的副手中装备|r |T135343:0|t[弯刀] |cRXP_WARN_|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_从他那里购买 a|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    >>|cRXP_WARN_或者，去拍卖行看看有没有更好或更便宜的东西|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_从他那里购买 a|r |T135346:0|t[Cutlass] |cRXP_BUY_|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #label CutlassE
    #completewith KeenT
    +|cRXP_WARN_在你的主手中装备|r |T135346:0|t[弯刀] |cRXP_WARN_|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #requires CutlassE
    #completewith KeenT
    +|cRXP_WARN_在你的副手中装备|r |T135346:0|t[工匠匕首] |cRXP_WARN_|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >>进入日用商品大楼
step << Rogue
    #optional
    #label KeenT
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_从他那里购买|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
    >>|cRXP_BUY_从他那里购买|r |T135641:0|t[平衡投掷匕首] |cRXP_BUY_|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    +|cRXP_WARN_Equip the|r |T135425:0|t[敏锐的投掷刀具]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    +|cRXP_WARN_Equip the|r |T135641:0|t[平衡投掷匕首]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate 1.49-1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城飞行路线
    .target Dungar Longdrink
step
    #xprate >1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获取暴风城飞行路线
    .target Dungar Longdrink
    .dungeon !DM
step << Paladin
    #xprate >1.49
    #season 2
    #completewith next
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .zoneskip Stormwind City,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Paladin
    #xprate >1.49
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>前往暮色森林岛上的 |cRXP_FRIENDLY_Ada Gelhardt|r
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Paladin
    #xprate >1.49
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step << Paladin
    #xprate >1.49
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>击败 |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_记得预先对她施放|r |T135924:0|t[十字军印记] |cRXP_WARN_|r
    >>|cRXP_WARN_当她施放|r |T136197:0|t[暗影震击] |cRXP_WARN_时要小心（立即造成 45 点暗影伤害。消耗她 75 点法力。你应该尽快杀死她，使她只能施放 3 次）|r
    >>|cRXP_WARN_击败 |cRXP_ENEMY_Ada Gelhardt|r 后：|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Paladin
    #xprate >1.49
    #season 2
    #sticky
    .destroy 205864 >>从你的包里删除 |T134939:0|t[烧焦的纸条]，因为它不再需要了
step << Paladin
    #xprate >1.49
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[殉难符文] |cRXP_WARN_学习|r |T133815:0|t[雕刻胸甲 - 殉难印记]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_雕刻你的|r |T134596:0|t|cRXP_LOOT_[宝箱]|r 带有|r |T133815:0|t[雕刻宝箱 - 殉难印记]
    >>|cRXP_WARN_记得将|r |T135961:0|t[殉难印记] |cRXP_WARN_放到你的动作条上。这比|r |T132325:0|t[正义印记] |cRXP_WARN_和|r |T132347:0|t[命令印记] |cRXP_WARN_都好（直到你得到|r |T133815:0|t[雕刻胸甲 - 神圣风暴]|cRXP_WARN_）|r
    .train 410015,3
step
    #season 0,1 << Paladin
    #xprate >1.49
    .hs >>洛克莫丹
    .cooldown item,6948,>180--wait for cd if <3min
    .zoneskip Loch Modan
    .zoneskip Wetlands
step << Paladin
    #season 2
    #xprate >1.49
    .hs >>洛克莫丹
    .zoneskip Loch Modan
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    #optional
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >>飞往洛克莫丹
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>前往 |cRXP_FRIENDLY_Brandur Ironhammer|r
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .accept 2999 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Brandur Ironhammer
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上的 |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 2999 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1645 >>接任务: |cRXP_LOOT_圣洁之书|r
    .turnin 1645 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_使用 |T133739:0|t|cRXP_LOOT_[神之书]|r 开始任务|r
    .accept 1646 >>接任务: |cRXP_LOOT_圣洁之书|r
    .use 6916
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 1646 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1647 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·特纳|r
    >>|cRXP_FRIENDLY_约翰·特纳|r |cRXP_WARN_巡逻在铁炉堡外环，就在石火酒馆和游客中心之间|r
    .turnin 1647 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1648 >>接任务: |cRXP_LOOT_圣洁之书|r
    .turnin 1648 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1778 >>接任务: |cRXP_LOOT_圣洁之书|r
    .unitscan John Turner
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >>前往下面的楼梯 |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >>前往楼上的 |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #xprate <1.5
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 1778 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1779 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆里顿·热炉|r, 他在楼上
    .turnin 1779 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1783 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Muiredon Battleforge
step << Paladin
    #xprate <1.5
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Loch Modan >>飞往洛克莫丹
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
    .target 维德拉炉灶
    .isQuestComplete 418
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    .vendor 1682 >>|cRXP_BUY_如果需要的话，从她那里购买|r |T133634:0|t[棕色小袋] |cRXP_BUY_|r
    .target Yanni Stoutheart
step << !Hunter
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .vendor 6734 >>|cRXP_BUY_如果需要的话，买一些|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_|r << Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_如果需要的话，向她买一些|r |T133968:0|t[新鲜出炉的面包] |cRXP_BUY_和|r |T132815:0|t[冰牛奶] |cRXP_BUY_|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
    .target Brock Stoneseeker
step << Rogue
    #season 2
    #optional
    #label BoarMeatLochRogue
    #completewith SaberSlash1
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step << Rogue
    #season 2
    #optional
    #requires BoarMeatLochRogue
    #completewith SaberSlash1
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step << Rogue
    #season 2
    #optional
    #completewith SaberSlash1
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step << Rogue
    #season 2
    #completewith SaberSlash1
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
    .subzoneskip 146 --Stonewrought Dam
step << Rogue
    #season 2
    #optional
    #label SaberSlash1
    #completewith SaberSlashEnd
    .goto 1432,40.875,13.760
    .subzone 146 >>前往 Stonerough Dam
    .train 424785,1
step << Rogue
    #season 2
    #requires SaberSlash1
    #completewith SaberSlashEnd
    .goto 1432,40.875,13.760,40,0
    .goto 1432,42.876,10.879,40,0
    .goto Loch Modan,46.20,13.15,10 >>|cRXP_WARN_沿着 Stonewrought Dam 行走。小心地跳到大坝中心的岩架上。按照箭头指示|r
    .train 424785,1
step << Rogue
    #season 2
    #label SaberSlashEnd
    .goto Loch Modan,46.373,12.666
    >>打开壁架上的 |cRXP_PICK_石匠工具箱|r。从中获取 |T134419:0|t[|cRXP_FRIENDLY_剑刃斩符文|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_剑刃斩符文|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >>点击 |cRXP_PICK_Escape Rope|r 返回顶部
    .subzoneskip 146,1
step
    #optional
    #label BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #xprate <1.59
    #completewith Gear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
step
    #xprate >1.59
    #completewith Gear
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Ears|r
    >>|cRXP_WARN_不要特意去做这件事，因为你很可能会跳过这个任务|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
step << Priest
    #season 2
    #label OffCoin1
    #completewith Gear
    >>杀死 |cRXP_ENEMY_隧道鼠风水师s|r、|cRXP_ENEMY_Tunnel Rat Diggers|r 和 |cRXP_ENEMY_隧道鼠勘测员s|r。掠夺他们以获得 |T237281:0|t[|cRXP_LOOT_Offering Coin|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
    .train 425215,1
step << Priest
    #season 2
    #requires OffCoin1
    #completewith Gear
    .goto Loch Modan,36.689,20.964
    .use 208823 >>|cRXP_WARN_使用|r |T237281:0|t[|cRXP_LOOT_献祭币|r] |cRXP_WARN_在银溪矿井内的井中|r |cRXP_WARN_接收|r |T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step
    #optional
    #label SilverMine
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿井
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto Loch Modan,35.93,22.55
    >>打开矿井内的 |cRXP_PICK_Miners' League Crates|r。从中获取 |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto Loch Modan,35.93,22.55
    >>打开矿井内的 |cRXP_PICK_Miners' League Crates|r。从中获取 |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Mage
    #xprate <1.49
    #season 2
    #label Gear
    .goto Loch Modan,35.93,22.55
    >>打开矿井内的 |cRXP_PICK_Miners' League Crates|r。从中获取 |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 --Miners' Gear (4)
step << Priest
    #season 2
    .goto Loch Modan,35.6,20.6
    >>杀死 |cRXP_ENEMY_隧道鼠风水师s|r、|cRXP_ENEMY_Tunnel Rat Diggers|r 和 |cRXP_ENEMY_隧道鼠勘测员s|r。掠夺他们以获得 |T237281:0|t[|cRXP_LOOT_Offering Coin|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
    .train 425215,1
step << Priest
    #season 2
    #label Gear
    .goto Loch Modan,36.689,20.964
    .use 208823 >>|cRXP_WARN_使用|r |T237281:0|t[|cRXP_LOOT_献祭币|r] |cRXP_WARN_在银溪矿井内的井中|r |cRXP_WARN_接收|r |T136222:0|t[|cRXP_FRIENDLY_虔诚勇士的回忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    #season 2
    #completewith PawsDelivery
    .train 425215 >>|cRXP_WARN_使用|r |T136222:0|t[|cRXP_FRIENDLY_虔诚冠军的回忆|r] |cRXP_WARN_训练|r |T237566:0|t[扭曲的信仰]
    >>|cRXP_WARN_你必须通过输入 /kneel 在圣地获得|r |T135934:0|t|T136057:0|t[冥想] |cRXP_WARN_buff，例如北郡修道院、暴风城大教堂、安威玛尔的圣光祭坛、洛克莫丹或铁炉堡的神秘守卫|r
    .use 205905
    .itemcount 205905,1
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔伦·安德玛|r
    >>|cRXP_BUY_从他那里购买|r |T133476:0|t[重刺狼牙棒] |cRXP_BUY_或|r |T133053:0|t[铁木大锤] |cRXP_BUY_（如果它们涨价了）|r
    >>|cRXP_WARN_如果你负担不起，那么就从附近的|cRXP_ENEMY_Tunnel Rats|r 那里赚钱，直到你有足够的钱|r
    >>|cRXP_WARN_尽快完成此操作，因为其他玩家可能会先于你购买|r
    >>|cRXP_WARN_如果你不想这样做，请跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #ah
    #label Gear
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔伦·安德玛|r
    >>|cRXP_BUY_从他那里购买|r |T133476:0|t[重刺狼牙棒] |cRXP_BUY_或|r |T133053:0|t[铁木大锤] |cRXP_BUY_（如果它们涨价了）|r
    >>|cRXP_WARN_如果你负担不起，那么就从附近的|cRXP_ENEMY_Tunnel Rats|r 那里赚钱，直到你有足够的钱|r
    >>|cRXP_WARN_尽快完成此操作，因为其他玩家可能会先于你购买|r
    >>|cRXP_WARN_如果你不想这样做，或者宁愿尽快从 AH 购买更便宜/更好的武器，请跳过此步骤|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_装备|r |T133476:0|t[重刺狼牙棒]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_装备|r |T133053:0|t[铁木大锤]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #completewith next
    #label Gear
    .goto 1432,47.798,19.495,80 >>游向特罗格群岛
step << Mage
    #xprate >1.49
    #season 2
    #loop
    .goto 1432,47.798,19.495,0
    .goto 1432,48.910,29.948,0
    .goto 1432,50.491,23.953,0
    .goto 1432,47.798,19.495,60,0
    .goto 1432,47.614,21.080,60,0
    .goto 1432,49.113,20.970,60,0
    .goto 1432,48.910,29.948,60,0
    .goto 1432,49.590,29.896,60,0
    .goto 1432,50.384,26.997,60,0
    .goto 1432,50.491,23.953,60,0
    >>杀死 |cRXP_ENEMY_Stonesplinter Seers|r。掠夺他们以获得 |T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate >1.49
    #season 2
    #completewith Regeneration
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_试剂供应商|r 处获得 |T135933:0|t[理解咒语] 来使用 |T134939:0|t[|cRXP_FRIENDLY_咀嚼的咒语笔记]|r
    .train 415936 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_咀嚼过的咒语笔记|r] |cRXP_WARN_进行训练|r |T236220:0|t[活体炸弹]
    .use 208854
step << Mage
    #xprate >1.49
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >>进入帐篷
    .train 401767,1
step << Mage
    #xprate >1.49
    #season 2
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>打开里面的 |cRXP_PICK_被盗书籍堆|r。拾取它们以获得 |T134939:0|t|cRXP_LOOT_[法术注释：TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #xprate >1.49
    #season 2
    #completewith PawsDelivery
    #label Regeneration
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_试剂供应商|r 处获得 |T135933:0|t[理解咒语] 来使用 |T134939:0|t[|cRXP_FRIENDLY_咀嚼的咒语笔记]|r
    .train 401767 >>|cRXP_WARN_使用|r |T134939:0|t|cRXP_LOOT_[法术说明：TENGI RONEERA]|r |cRXP_WARN_学习|r |T133815:0|t[雕刻胸甲 - 再生]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    #xprate >1.59
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
    .itemcount 3110,8 --Tunnel Rat Ear (8)
step
    #xprate <1.59
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
step
    #optional
    #label BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --熊 Meat (3)
    .collect 3172,3,418,1 --Boar Intestines (3)
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >>进入地堡
step
    #optional
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor 1362 >>|cRXP_WARN_如果需要，请联系供应商并进行维修|r
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r
    .target 巡山人雷矛
step
    #optional
    #label BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob 山野猪
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob 山野猪
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --熊 Meat (3)
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
step
    #xprate <1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛的道路|r
    .target Mountaineer Kadrell
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step
    #xprate >1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛的道路|r
    .target Mountaineer Kadrell
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
    .isQuestComplete 416
step
    #xprate >1.59
    #optional
    #sticky
    #label RatAbandon
    .abandon 416 >>放弃捕鼠
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>进入 Stoutlager Inn
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
    .target 维德拉炉灶
step << Mage
    #season 2 --XX If SoD mages have living bomb, you're fine to abandon trogg qs
    #optional
    #sticky
    #label DefenseAbandon
    .abandon 224 >>放弃保卫国王的土地
    .train 415936,3 --Living Bomb Trained
    .xp <14,1
step << Mage
    #season 2
    #optional
    #sticky
    #label TroggAbandon
    .abandon 267 >>放弃穴居人的威胁
    .train 415936,3 --Living Bomb Trained
    .xp <14,1 --Show if player is 14+
step << !Dwarf/!Paladin --XX Dwarf palas need to do class q
    #season 0,1 << Warrior/Mage --SoD warriors and mages need to do rune (Quick Strike, Living Bomb)
    #optional
    #sticky
    #label DefenseAbandon
    .abandon 224 >>放弃保卫国王的土地
    .xp <14,1
step << !Dwarf/!Paladin
    #season 0,1 << Warrior/Mage
    #optional
    #sticky
    #label TroggAbandon
    .abandon 267 >>放弃穴居人的威胁
    .xp <14,1
step
    #label FlintTinder
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    >>|cRXP_BUY_从她那里购买 a|r |T135435:0|t[简易木材] |cRXP_BUY_和 a|r |T135237:0|t[火石和火绒] |cRXP_BUY_|r
    >>|cRXP_WARN_这可用于在船上或有轨电车上制作|r |T135805:0|t[基础营火] |cRXP_WARN_来提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能而不浪费时间|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Dwarf/!Paladin
    #optional
    #requires DefenseAbandon
--XXREQ Placeholder invis step until multiple requires per step
step << !Dwarf/!Paladin
    #optional
    #requires TroggAbandon
--XXREQ Placeholder invis step until multiple requires per step
step
    #season 0,1 << Warrior/Mage
    .goto Loch Modan,26.67,56.94
    >>杀死 |cRXP_ENEMY_Stonesplinter Troggs|r 和 |cRXP_ENEMY_Stonesplinter Scouts|r。掠夺他们的 |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Stonesplinter Scouts|r 施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 14-20 点伤害)|r
    >>|cRXP_WARN_这是一个超级生成区域。你不需要从这里移动|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step << Mage
    #xprate >1.49
    #season 2
    .goto Loch Modan,26.67,56.94
    >>杀死 |cRXP_ENEMY_Stonesplinter Troggs|r 和 |cRXP_ENEMY_Stonesplinter Scouts|r。掠夺他们的 |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_小心 |cRXP_ENEMY_Stonesplinter Scouts|r 施法|r |T132222:0|t[射击] |cRXP_WARN_(远程施法：造成 14-20 点伤害)|r
    >>|cRXP_WARN_这是一个超级生成区域。你不需要从这里移动|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>杀死 |cRXP_ENEMY_Troggs|r。从他们身上搜刮出 |cRXP_LOOT_Skull-Shaped Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Mage/Warrior
    #xprate <1.5 << Mage
    #season 2
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,50,0
    .goto Loch Modan,27.68,56.83,50,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,50,0
    .goto Loch Modan,33.88,76.58,50,0
    >>杀死 |cRXP_ENEMY_Stonesplinter Troggs|r 和 |cRXP_ENEMY_Stonesplinter Scouts|r。掠夺他们的 |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step << Mage
    #xprate <1.5
    #season 2
    .goto Loch Modan,29.2,81.2,50,0
    .goto Loch Modan,28.8,83.4,50,0
    .goto Loch Modan,30.0,83.8,50,0
    .goto Loch Modan,32.2,87.2,50,0
    .goto Loch Modan,33.8,88.6,50,0
    .goto Loch Modan,36.0,88.0,50,0
    .goto Loch Modan,36.6,81.2,50,0
    .goto Loch Modan,36.6,79.6
    >>杀死 |cRXP_ENEMY_Stonesplinter Seers|r。掠夺他们以获得 |T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate <1.5
    #season 2
    #completewith TroggEnd
    .collect 211779,1 >>您需要从 |cRXP_FRIENDLY_试剂供应商|r 处获得 |T135933:0|t[理解咒语] 来使用 |T134939:0|t[|cRXP_FRIENDLY_咀嚼的咒语笔记]|r
    .train 415936 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_咀嚼过的咒语笔记|r] |cRXP_WARN_进行训练|r |T236220:0|t[活体炸弹]
    .use 208854
step << Warrior
    #season 2
    #requires Geode
    .goto Loch Modan,33.2,73.8
    >>攻击 |cRXP_ENEMY_Stonesplinter Skullthumper|r
    >>|cRXP_WARN_在战斗中它会击中你，将 |cRXP_LOOT_骷髅形晶洞|r 变成|r |T236489:0|t[|cRXP_LOOT_破裂的骷髅形晶洞|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    #season 2
    .use 208848 >>|cRXP_WARN_使用|r |T236489:0|t[|cRXP_LOOT_破裂的骷髅形晶洞|r] |cRXP_WARN_接收|r |T134419:0|t[|cRXP_FRIENDLY_快速打击符文|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_快速打击符文|r] |cRXP_WARN_进行训练|r |T132394:0|t[快速打击]
    .use 208778
    .itemcount 208778,1
step << Mage/Warrior
    #season 2
    #xprate <1.5
    #optional
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,50,0
    .goto Loch Modan,27.68,56.83,50,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,50,0
    .goto Loch Modan,33.88,76.58,50,0
    .xp 13+9600 >>升级至 9600+/11400xp
step << Warrior
    #season 2
    #xprate 1.49-1.59
    #optional
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,50,0
    .goto Loch Modan,27.68,56.83,50,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,50,0
    .goto Loch Modan,33.88,76.58,50,0
    .xp 13+8700 >>升级至 8700+/11400xp
step << Warrior
    #season 2
    #xprate >1.59
    #optional
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,50,0
    .goto Loch Modan,27.68,56.83,50,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,50,0
    .goto Loch Modan,33.88,76.58,50,0
    .xp 13+7800 >>升级至 7800+/11400xp
step
    #season 0,1 << Warrior/Mage
    #xprate <1.5
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+9600 >>升级至 9600+/11400xp
step
    #season 0,1 << Warrior
    #xprate 1.49-1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+8700 >>升级至 8700+/11400xp
step
    #season 0,1 << Warrior
    #xprate >1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+7800 >>升级至 7800+/11400xp
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>沿着泥路跑上去然后掉进沙坑
step
    #label TroggEnd
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
    .target 鲁格尔福斯上尉
    .isQuestComplete 267 << !Dwarf/!Paladin
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
    .target 登山者科布尔弗林特
    .isQuestComplete 224 << !Dwarf/!Paladin
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge>>飞往铁炉堡
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1432,21.498,67.840,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,16.342,58.520,20,0
    .goto 1426,84.262,51.367
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_在地面上使用|r |T133439:0|t[生命象征] |cRXP_WARN_on |cRXP_FRIENDLY_Narm Faulk|r|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳姆·法奥克|r
    .turnin 1783 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1784 >>接任务: |cRXP_LOOT_圣洁之书|r
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>杀死 |cRXP_ENEMY_Dark Iron 间谍|r。从他们身上搜刮 |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy

----Start of <1.5x IF->Westfall Section----

step << Mage/Priest/Warlock
    #xprate <1.5
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞克·石鼓|r, 他在楼下
    >>|cRXP_WARN_从他那里购买一把|r |T135468:0|t[闷烧魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    #xprate <1.5
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业法术
    .target Dink
step << Priest
    #xprate <1.5
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r
    .trainer >>训练你的职业法术
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the pillar above |cRXP_FRIENDLY_Bink|r, then walk slightly east of her onto the arrow position. 前往: |cRXP_PICK_丹莫罗|r, 调整你的角色，直到它们看起来像是漂浮起来，然后通过退出并重新登录来执行跳过操作|r
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.5
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r, 他在楼下
    .turnin 2218 >>交任务: |cRXP_FRIENDLY_救赎之路|r
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate <1.5
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r
    .trainer >>训练你的职业法术
    .target Fenthwick
step << Warlock
    #xprate <1.5
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业法术
    .target Briarthorn
step << Warlock/Rogue
    #xprate <1.5
    #optional
    #label Jubahl
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >>进入 |cRXP_FRIENDLY_Jubahl Corpseseeker|r 的房子
step << Warlock
    #xprate <1.5
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
    .vendor 6382 >>|cRXP_BUY_购买|r |T133738:0|t[魔典：吞噬阴影（等级 1）] |cRXP_BUY_并且|r |T133738:0|t[魔典：牺牲（等级 1）] |cRXP_BUY_如果你能负担得起|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #xprate <1.5
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_走到床顶，然后跳到书架顶。通过退出并重新登录来跳过退出|r
step << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>前往 |cRXP_FRIENDLY_Bilban Tosslespanner|r
step << Warrior
    #xprate <1.5
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >>训练你的职业法术
    .target Bilban Tosslespanner
step << skip --logout skip << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 跳到武器架顶部。通过登出并重新登录来执行登出跳过|r
-- step << skip --logout skip << Hunter
--  #xprate <1.5
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_跳到狮鹫的头顶。通过登出并重新登录来跳过登出|r
--  .zoneskip Ironforge,1
step << !Paladin
    #xprate <1.5
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
    .vendor 5175 >>|cRXP_WARN_从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_ （如果它上涨的话）|r
--    >>你稍后需要 2 个青铜管来完成任务 << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step << !Paladin
    #xprate <1.5
    #optional
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #label Deeprun
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>进入 Deeprun 有轨电车
    .zoneskip Stormwind City
step << !Paladin
    #xprate <1.5
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook1
    #label WestfallTramCook2
    #completewith WestfallTramEnd
    >>|cRXP_WARN_电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook2
    #label WestfallTramCook3
    #completewith WestfallTramEnd
    >>|cRXP_WARN_电车到达时：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[Cook] |cRXP_WARN_以下项目:|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_如果需要，请在等待前往暴风城的电车时升级你的|r |T135966:0|t[急救] |cRXP_WARN_|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_你需要你的|r |T135966:0|t[急救] |cRXP_WARN_达到 80 才能完成 24 级的任务|r << Rogue !Dwarf
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Dwarf Paladin
    #xprate <1.5
	#completewith PaladinTrainSW
    .hs >>炉石到暴风城
step << Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在西部荒野和黑海岸上交：|r
    >>|T133972:0|t[细长的秃鹫肉]
    >>|T133884:0|t[鱼人之眼]
    >>|T135997:0|t[血牙獠牙]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙肝]
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- 好的ra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Paladin
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在西部荒野和黑海岸上交：|r
    >>|T133972:0|t[细长的秃鹫肉]
    >>|T133884:0|t[鱼人之眼]
    >>|T135997:0|t[血牙獠牙]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙肝]
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- 好的ra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风城大教堂
step << Paladin
    #xprate <1.5
    #label PaladinTrainSW
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>训练你的职业法术
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .accept 399 >>接任务: |cRXP_WARN_童年的记忆|r
    .target Baros Alexston
step
    #xprate <1.5
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
    .vendor 5519 >>|cRXP_WARN_从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_ （如果它上涨的话）|r
--    >>你稍后需要 2 个青铜管来完成任务 << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
    .accept 399 >>接任务: |cRXP_WARN_童年的记忆|r
    .target Baros Alexston
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_如果你能负担得起，可以从她那里购买最多 2|r |T135343:0|t[弯刀] |cRXP_BUY_，或者从拍卖行购买更好的东西|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_如果你能负担得起，最多可以从她那里购买 2|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #sticky
    #label Wand1
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_如果你能买得起，就买一个|r |T135144:0|t[高级魔杖] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << !Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在西部荒野和黑海岸上交：|r
    >>|T133972:0|t[细长的秃鹫肉]
    >>|T133884:0|t[鱼人之眼]
    >>|T135997:0|t[血牙獠牙]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙肝]
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- 好的ra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在西部荒野和黑海岸上交：|r
    >>|T133972:0|t[细长的秃鹫肉]
    >>|T133884:0|t[鱼人之眼]
    >>|T135997:0|t[血牙獠牙]
    >>|T134185:0|t[秋葵]
    >>|T134341:0|t[血牙肝]
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- 好的ra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
    --XX on <1.5 Gnomes/dwarves dont go back to capital cities to train (can't buy groupers/strider meat some other time)
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[高级魔杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[高级魔杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_WARN_从她那里购买a|r |T135468:0|t[闷烧魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +|cRXP_WARN_装备|r |T135468:0|t[灼烧魔杖]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #xprate <1.5
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >>飞往西部荒野
    .target Dungar Longdrink

----End of <1.5x IF->Westfall Section----
----Start of >1.5x+ IF->黑海岸部分----

step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >>点击此处查看参考
step << Dwarf Rogue/Gnome Rogue
    #xprate 1.49-1.59
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r, 他在楼下
    .turnin 2218 >>交任务: |cRXP_FRIENDLY_救赎之路|r
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r
    .trainer >>训练你的职业法术
    .target Fenthwick
step << Rogue
    #xprate >1.49
    #optional
    #requires Salvation
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
    .trainer >>训练你的职业法术
    .target Briarthorn
step << Warlock
    #xprate >1.49
    #optional
    #label Jubahl
    #completewith next
    .goto 1455,53.164,7.037,10 >>进入 |cRXP_FRIENDLY_Jubahl Corpseseeker|r 的房子
step << Warlock
    #xprate >1.49
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
    .vendor 6382 >>|cRXP_BUY_购买|r |T133738:0|t[魔典：吞噬阴影（等级 1）] |cRXP_BUY_并且|r |T133738:0|t[魔典：牺牲（等级 1）] |cRXP_BUY_如果你能负担得起|r
    .target Jubahl Corpseseeker
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10 >>前往 |cRXP_FRIENDLY_Muiredon Battleforge|r 楼上
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆里顿·热炉|r, 他在楼上
    .turnin 1784 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1785 >>接任务: |cRXP_LOOT_圣洁之书|r
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒂萨·热炉|r, 他在楼上
    .turnin 1785 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .target Tiza Battleforge
step << Paladin
    #xprate >1.49
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔杜克·凝眉|r
    .trainer >>训练你的职业法术
    .target Beldruk Doombrow
step << skip --logout skip << Paladin
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #optional
    .goto 1455,25.254,10.981
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r，跳到|cRXP_FRIENDLY_托德雷·铁矿|r上方的柱子顶部，将你的角色定位到看起来像是漂浮起来，然后通过注销并重新登录来执行注销跳过|r
step << Mage
    #xprate >1.49
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
    .trainer >>训练你的职业法术
    .target Dink
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r
    .trainer >>训练你的职业法术
    .target Toldren Deepiron
step << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞克·石鼓|r, 他在楼下
    >>|cRXP_WARN_从他那里购买一把|r |T135468:0|t[闷烧魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Warrior
    #xprate >1.49
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>前往 |cRXP_FRIENDLY_Bilban Tosslespanner|r
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >>训练你的职业法术
    .target Bilban Tosslespanner
step << Warrior
    #xprate >1.49
    #optional
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比克斯|r
    .train 2567 >>火车被抛
    .target 比西·沃布尔邦克
step << skip --logout skip << Warrior
    #xprate >1.49
    #optional
    #ssf
    #hardcore << !Human
    #completewith next
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_走到路标箭头上方的金属地板边缘|r
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 调整你的角色，直到它们看起来像是漂浮起来，然后通过退出并重新登录来执行跳过操作|r
    .zoneskip Ironforge,1
step << Rogue
    #xprate >1.49
    #ah
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷尼尔·钢怒|r, 他在楼下
    >>|cRXP_BUY_如果你能负担得起，可以从他那里购买最多 2|r |T135343:0|t[弯刀] |cRXP_BUY_，或者从拍卖行购买更好的东西|r
    .collect 2027,1 --Scimitar
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷尼尔·钢怒|r, 他在楼下
    >>|cRXP_BUY_如果你能负担得起，最多可以从他那里购买 2|r |T135343:0|t[弯刀] |cRXP_BUY_|r
    .collect 2027,1 --Scimitar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_装备|r |T135343:0|t[弯刀]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << skip --logout skip << Rogue
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #completewith LeaveIF
    .goto 1455,35.959,66.597
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 跳到武器架顶部。通过登出并重新登录来执行登出跳过|r
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #sticky
    #label Wand1
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_如果你能买得起，就买一个|r |T135144:0|t[高级魔杖] |cRXP_BUY_|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step
    #xprate >1.49
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在黑海岸完成交付：|r
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在黑海岸完成交付：|r
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_装备|r |T135144:0|t[高级魔杖]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << skip --logout skip
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 跳到 |cRXP_PICK_邮箱|r 的顶部，然后通过注销并重新登录执行注销跳过|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>17.49 << Mage/Priest/Warlock
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞克·石鼓|r, 他在楼下
    >>|cRXP_WARN_从他那里购买一把|r |T135468:0|t[闷烧魔杖] |cRXP_WARN_|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.44
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 跳到衣架的最顶部，然后通过注销并重新登录来执行注销跳过|r
    .zoneskip Ironforge,1
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    #hardcore << !Human
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_前往: |cRXP_PICK_丹莫罗|r, 跳到衣架的最顶部，然后通过注销并重新登录来执行注销跳过|r
    .zoneskip Ironforge,1
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Wetlands>>飞往湿地
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step
    #xprate >1.49
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往丹莫罗 -> 湿地跳过点
step
    #xprate >1.49
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
    >>|cRXP_WARN_请先观看视频指南以获取有关如何跳过的参考！|r
    >>|cRXP_WARN_做不死丹莫洛->湿地跳过|r
    >>|cRXP_WARN_穿越水域时避开 |cRXP_ENEMY_Wetlands Crocolisks|r 和 |cRXP_ENEMY_Murlocs|r|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>|cRXP_WARN_点击此处查看视频指南|r
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #xprate >1.49
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    >>|cRXP_WARN_进行丹莫罗 -> 湿地死亡跳跃。密切关注箭头|r
    >>|cRXP_WARN_暂时不要从任何高处跳下|r
    .goto 1415,44.910,52.030,15 >>|cRXP_WARN_爬上山，然后沿着锯齿状的图案往下走，直到你的子区域变成大海|r
    .zoneskip Wetlands
    .subzoneskip 207 --The Great Sea
--XX neither of these zoneskips/subzoneskips want to work, so using waypoint obj instead
step << Human
    #xprate >1.49
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    #completewith next
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_从山上往北或西北方向跳下|r
    .deathskip >>在巴拉丁湾死亡并重生 |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestAvailable 984
    .target Spirit Healer
step << Human
    #xprate >1.49
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>游向米奈希尔港的岸边
    .subzoneskip 150
step
    #xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor 1448 >>|cRXP_WARN_从他那里购买 a|r |T133024:0|t[青铜管] |cRXP_BUY_ （如果它上涨的话）|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >>离开米奈希尔要塞
    .subzoneskip 2103,1 --Menethil Keep
step
    #xprate >1.49
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r outside
    .fp Wetlands>>获取湿地飞行路线
    .target Shellei Brondir
step
    #xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r, 他在里面
    .vendor 1453 >>|cRXP_BUY_从他那里购买|r |T134831:0|t[治疗药水] |cRXP_BUY_（如果价格上涨）|r
    .target Dewin Shimmerdawn
step
    #xprate >1.49
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往奥伯丁号船的码头
    .zoneskip Darkshore
step
    #xprate >1.49
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚到，则在船上；如果船刚离去，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚到，则在船上；如果船刚离去，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚到，则在船上；如果船刚离去，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[Cook] |cRXP_WARN_以下项目:|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_如果需要，请在等待前往黑海岸的船时升级你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r

    ----End of >1.5x+ IF->黑海岸部分----

]])


RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP 联盟 1-20
#name 6-11 丹莫洛 (猎人)
#displayname 6-11 丹莫罗 << !SoD
#displayname 6-12 丹莫罗 << SoD
#next 11-13 洛克莫丹 (猎人)
#defaultfor Dwarf Hunter



step
    #completewith ribs1
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >>前往卡拉诺斯
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
    .target Senir Whitebeard
step
    #label ribs1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >>接任务: |cRXP_LOOT_啤酒烤猪排|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >>接任务: |cRXP_LOOT_贝尔丁的工具|r
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    >>|cRXP_WARN_不要在途中杀死任何|cRXP_ENEMY_年轻的黑熊s|r|r
    .target 飞行员 Bellowfiz
    .accept 317 >>接任务: |cRXP_LOOT_贝尔丁的补给|r
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target 飞行员石甲
    .goto Dun Morogh,49.622,48.612
    .accept 313 >>接任务: |cRXP_LOOT_灰色洞穴|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔丁·钢架|r
    .target Beldin 钢烤架
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .target 洛斯洛·拉奇
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >>接任务: |cRXP_LOOT_海格纳的弹药|r
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>杀死 |cRXP_ENEMY_年轻的黑熊s|r。掠夺它们的 |cRXP_LOOT_Fur|r
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。拾取它们的 |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r 和 |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick 熊 Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
    .mob 年轻的黑熊
step
    #completewith BoarRibs2
    >>杀死 |cRXP_ENEMY_Crag Boars|r 和 |cRXP_ENEMY_Large Crag Boars|r。掠夺他们的 |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .target 飞行员 Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .trainer >>训练你的职业法术
    .train 3044 >>训练奥术射击
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>打开 |cRXP_PICK_Ammo Crate|r。从中获取 |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海格纳·重枪|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海格纳·重枪|r
    >>|cRXP_BUY_购买并装备 a|r |T135611:0|t[华丽火枪]|cRXP_BUY_。如果你买不起，请跳过此步骤|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_装备|r |T135611:0|t[华丽火枪]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
    #xprate <1.5
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>杀死 |cRXP_ENEMY_Wendigos|r 和 |cRXP_ENEMY_Young Wendigos|r。掠夺他们的 |cRXP_LOOT_Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .xp 7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >>接任务: |cRXP_LOOT_马克格拉恩的干肉|r
step
    .goto Dun Morogh,38.517,53.927
    >>打开 |cRXP_PICK_MacGrann 的肉柜|r。获取 |cRXP_LOOT_MacGrann 的干肉|r
    >>|cRXP_WARN_等待 |cRXP_ENEMY_Old Icebeard|r 从洞穴中巡逻出来。一旦他从洞穴中巡逻出来，你就可以进入并抢劫|r |cRXP_PICK_MacGrann 的肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基格·吉布恩|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .target Rejold 大麦啤酒
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .accept 319 >>接任务: |cRXP_LOOT_艾沃沙酒|r
    .accept 315 >>接任务: |cRXP_LOOT_完美烈酒|r
step
    #label BoarRibs2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .target 马莱斯大麦啤酒
    .goto Dun Morogh,30.186,45.531
    .accept 310 >>接任务: |cRXP_LOOT_针锋相对|r
step
    #completewith next
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
    .goto Dun Morogh,28.7,43.7
    >>杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
step
    #xprate <1.5
    .goto Dun Morogh,46.726,53.826
    >>完成猪肋骨的升级
    .complete 384,1
    .xp 8-1400 >>不断磨练，直到你距离第 8 级还有 1400 xp。
step
    #xprate >1.49
    .goto Dun Morogh,46.726,53.826
    >>完成猪肋骨的升级
    .complete 384,1
    .xp 8-2100 >>不断磨练，直到你距离第 8 级还有 2100 xp。
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >>跑到这里，并在接下来的步骤中密切关注箭头，以死亡跳跃到湿地
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
    .goto Wetlands,11.6,43.4,0
    .deathskip >>继续向北直跑，当常规聊天变成湿地时跳下去然后死亡，然后在米奈希尔港重生
    .target Spirit Healer
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >>游到岸边
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Wetlands >>获取湿地飞行路线
    .target Shellei Brondir
step
    #softcore
	#completewith next
    .hs >>炉石到卡拉诺斯
step
    #hardcore
    #completewith next
    .goto Dun Morogh,49.622,48.612,60 >>前往卡拉诺斯
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .target 飞行员石甲
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    >>|cRXP_BUY_购买 a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加文·雷酒|r, 他在楼下
    .turnin 308 >>交任务: |cRXP_FRIENDLY_加文的爱好|r
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>点击 |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >>交任务: |cRXP_FRIENDLY_针锋相对|r
    .accept 311 >>接任务: |cRXP_LOOT_向马莱斯回报|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板贝尔姆|r, 他在里面
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >>将你的炉石设置为卡拉诺斯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r, 他在外面
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森内尔·白须|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .trainer >>训练你的职业法术
    .train 5116>>训练震荡射击
    .target Grif Wildheart
step
#optional
    #completewith FinishShimmerweed
    >>杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>沿着泥路向上走
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_风筝 |cRXP_ENEMY_Vagash|r 向下至|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_如果你遇到困难，请点击此处|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_LOOT_保护牲畜|r
    .target Rudra Amberstill
step << Hunter
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Vagash|r。从他身上搜刮 |T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .train 410123,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>杀死 |cRXP_ENEMY_Vagash|r。夺取他的 |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_把他引到牧场南边的守卫那里。确保对他造成 51% 以上的伤害|r
    >>|cRXP_WARN_在你尝试杀死 |cRXP_ENEMY_Vagash|r 之前，请观看下面的视频。它可以在任何班级单独完成|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_点击此处查看视频参考|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Hunter
    #season 2
    .train 410123 >>|cRXP_WARN_使用|r |T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 爆炸射击]
    .use 206169
    .itemcount 206169,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    .goto Dun Morogh,68.671,55.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
    .target 参议员梅尔·斯通哈洛
step
#loop
    .goto Dun Morogh,67.5,59.4,40,0
    .goto Dun Morogh,70.2,57.6,40,0
    .goto Dun Morogh,67.5,59.4,0
    .goto Dun Morogh,70.2,57.6,0
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    .goto Dun Morogh,68.671,55.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .target 参议员梅尔·斯通哈洛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    >>点击|cRXP_PICK_Dwarven Corpse|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_LOOT_驾驶员的复仇|r
step << Hunter
    #season 2
    #completewith next
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .collect 206169,1 -- Rune of Explosive Shot (1)
    .train 410123,1
step
    >>杀死 |cRXP_ENEMY_Mangeclaw|r。掠夺他的 |cRXP_LOOT_Claw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step << Hunter
    #season 2
    .train 410123 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_爆炸射击符文|r] |cRXP_WARN_进行训练|r |T236178:0|t[爆炸射击]
    .use 206169
    .itemcount 206169,1
step
    #hardcore
    .hs >>炉石到卡拉诺斯
step
    #softcore
    .goto Dun Morogh,47.11,55.01
    .deathskip >>在灵魂治疗师处死亡并重生
    .target Spirit Healer
step
    #xprate >1.49
    .xp 10
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .accept 6064 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
#xprate >1.49
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Grif Wildheart
    .accept 6084 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
#xprate >1.49
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a 雪豹 (1)
    .mob 雪豹
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Grif Wildheart
    .accept 6085 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
#xprate >1.49
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an 冰爪熊 (1)
    .mob 冰爪熊
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Grif Wildheart
    .accept 6086 >>接任务: |cRXP_LOOT_训练野兽|r
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>接任务: |cRXP_LOOT_自动净化装置|r
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >>前往 Shimmer Ridge。按照箭头跑上山
step
    #label FinishShimmerweed
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>杀死 |cRXP_ENEMY_霜鬃先知s|r。掠夺他们的 |cRXP_LOOT_Shimmerweed|r
    >>|cRXP_LOOT_Shimmerweed|r 也可以从地面上的 |cRXP_PICK_Shimmerweed Baskets|r 中拾取
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob 霜鬃先知
step << Hunter
#optional
    #season 2
    #completewith next
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_施放|r |T132212:0|t[猎人印记] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
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
    .goto Dun Morogh,28.7,43.7
    >>杀死 |cRXP_ENEMY_冰爪熊s|r、|cRXP_ENEMY_老峭壁野猪s|r 和 |cRXP_ENEMY_雪豹s|r
    .complete 319,1 --Kill 冰爪熊 (x6)
    .complete 319,2 --Kill 老峭壁野猪 (x8)
    .complete 319,3 --Kill 雪豹 (x8)
    .mob 冰爪熊
    .mob 老峭壁野猪
    .mob 雪豹
step << Hunter
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_施放|r |T132212:0|t[猎人印记] |cRXP_WARN_on the|r |cRXP_ENEMY_Rustling Bush|r
    >>杀死生成的 |cRXP_ENEMY_Razormane Poacher|r。从他身上搜刮 |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_神射手符文|r] |cRXP_WARN_进行训练|r |T132177:0|t[神射手大师]
    .use 206155
    .train 410113,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .target Rejold 大麦啤酒
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .accept 320 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .target Rejold 大麦啤酒
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >>交任务: |cRXP_FRIENDLY_完美烈酒|r
    .accept 413 >>接任务: |cRXP_LOOT_微光酒|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .target 马莱斯大麦啤酒
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >>交任务: |cRXP_FRIENDLY_向马莱斯回报|r
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >>进入霜鬃要塞
step
#sticky
#label explore
    >>|cRXP_WARN_跳到这个位置探索霜鬃要塞。如果下面有怪物，正常清理周围，不要跳下去|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>杀死 |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
#requires explore
#xprate <1.5
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>杀死 |cRXP_ENEMY_Leper Gnomes|r。掠夺他们的 |cRXP_LOOT_Gears|r 和 |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #xprate <1.5
    .xp 10-1470 >>不断磨练，直到距离 10 级还有 1450xp
step
#requires explore
    #hardcore
    #completewith KharanosTurnins
    .goto Dun Morogh,46.7,53.7,200 >>前往卡拉诺斯。沿途磨练
step
#requires explore
    #completewith next
    #softcore
    .deathskip >>在卡拉诺斯死亡并重生
step
#requires explore
    #label KharanosTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森内尔·白须|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .target Razzle Sprysprocket
    .turnin 412 >>交任务: |cRXP_FRIENDLY_自动净化装置|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .target 飞行员 Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
    .isOnQuest 320
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .accept 6064 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
#xprate <1.5
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6064 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Grif Wildheart
    .accept 6084 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
#xprate <1.5
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_雪豹|r
    .complete 6084,1 --Tame a 雪豹 (1)
    .mob 雪豹
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6084 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Grif Wildheart
    .accept 6085 >>接任务: |cRXP_LOOT_驯服野兽|r
step << Hunter
#xprate <1.5
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_使用|r |T132164:0|t[驯兽棒] |cRXP_WARN_on a|r |cRXP_ENEMY_冰爪熊|r
    .complete 6085,1 --Tame an 冰爪熊 (1)
    .mob 冰爪熊
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞夫|r
    .turnin 6085 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Grif Wildheart
    .accept 6086 >>接任务: |cRXP_LOOT_训练野兽|r
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >>前往戈尔博拉采石场
step
    .goto Dun Morogh,68.671,55.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_LOOT_公众之仆|r
    .target 参议员梅尔·斯通哈洛
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_LOOT_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target 工头石眉
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>杀死 |cRXP_ENEMY_Rockjaw Skullthumpers|r 和 |cRXP_ENEMY_岩颚骨撕咬者s|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill 岩颚骨撕咬者 (x10)
    .mob Rockjaw Skullthumper
    .mob 岩颚骨撕咬者
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r, |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .target 参议员梅尔·斯通哈洛
    .target 工头石眉
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >>吉尔姆的火车烹饪
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >>交任务: |cRXP_FRIENDLY_微光酒|r
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
]])

RXPGuides.RegisterGuide([[
#classic
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP 联盟 1-20
#name 11-13 洛克莫丹 (猎人)
#displayname 11-13 洛克莫丹 << !SoD
#displayname 12-15 Loch Modan << SoD
#next 14-16 黑海岸
#defaultfor Dwarf

step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,20 >>前往: |cRXP_PICK_洛克莫丹|r
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .target 登山者科布尔弗林特
    .goto Loch Modan,22.071,73.127
    .accept 224 >>接任务: |cRXP_LOOT_保卫国王的领土|r
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .target 鲁格尔福斯上尉
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛的道路|r
    .turnin -414 >>交任务: |cRXP_FRIENDLY_卡德雷尔的酒|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_LOOT_巡山人卡尔·雷矛的任务|r
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .target 维德拉炉灶
    .goto Loch Modan,34.828,49.283
    .accept 418 >>接任务: |cRXP_LOOT_塞尔萨玛血肠|r
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .home >>将你的炉石设为塞尔萨玛
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r
    .accept 6391 >>接任务: |cRXP_LOOT_飞往铁炉堡|r
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尼尔·石趾|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
    .isOnQuest 291
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝莉亚·雷岩|r
    .turnin 6086 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >>飞往洛克莫丹
    .target Gryth Thurden
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维罗克·乱枪|r
    >>|cRXP_BUY_如果你能买得起，就买 a|r |T135613:0|t[猎人的火枪] |cRXP_BUY_|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_装备|r |T135613:0|t[猎人的火枪]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #completewith BraveSoul
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >>向北前往 Algaz 站
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
    .dungeon DM << Human
step << Human
    #xprate <1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
    .dungeon !DM
step << Human
    #xprate >1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    .target 巡山人雷矛
    .dungeon !DM
step
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入银溪矿井
step
    .goto Loch Modan,35.93,22.55
    >>打开 |cRXP_PICK_Miners' League Crates|r。从中获取 |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_|cRXP_PICK_Miners' League Crates|r 可以在整个矿井中找到|r
    >>|cRXP_WARN_如果你现在想跳过这个任务，你可以在更高的等级上完成它|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect 熊 Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .target 巡山人雷矛
step
    #label RatEar
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>杀死 |cRXP_ENEMY_Tunnel Rats|r。掠夺他们的 |cRXP_LOOT_Ears|r
    >>|cRXP_ENEMY_隧道鼠|r |cRXP_WARN_可以在整个洛克莫丹生成。查看你的世界地图以了解它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob 隧道鼠觅食器
    .mob 隧道鼠风水师
    .mob Tunnel Rat Digger
    .mob 隧道鼠勘测员
step
    >>杀死 |cRXP_ENEMY_黑熊长老s|r。掠夺他们的 |cRXP_LOOT_熊 Meat|r
    >>杀死 |cRXP_ENEMY_山野猪s|r。掠夺它们的 |cRXP_LOOT_Boar Intestines|r
    >>杀死 |cRXP_ENEMY_森林潜伏者s|r。掠夺他们的 |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --熊 Meat (3)
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob 黑熊长老
    .mob 山野猪
    .mob 森林潜伏者
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_巡逻塞尔萨玛的道路|r
    .target Mountaineer Kadrell
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .target 维德拉炉灶
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>杀死 |cRXP_ENEMY_Stonesplinter Troggs|r 和 |cRXP_ENEMY_Stonesplinter Scouts|r。掠夺他们的 |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .target 登山者科布尔弗林特
    .goto Loch Modan,22.071,73.127
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .target 鲁格尔福斯上尉
    .goto Loch Modan,23.233,73.675
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >>前往铁环挖掘现场
step
#xprate <1.5
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
    .accept 298 >>接任务: |cRXP_LOOT_挖掘进度报告|r
    .target Prospector Ironband
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >>前往远行者旅舍
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .accept 257 >>接任务: |cRXP_LOOT_自豪的猎人|r
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step
#xprate <1.5
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>杀死 |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_您必须完成此任务并在 15 分钟内返回 |cRXP_FRIENDLY_Daryl the Youngling|r。如果您失败了，请放弃并重新拾起任务|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >>交任务: |cRXP_FRIENDLY_自豪的猎人|r
    .target Daryl the Youngling
step
    #xprate <1.5
    .goto Loch Modan,82.496,63.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_山达·细须|r
    >>|cRXP_BUY_从他那里购买 a|r |T135435:0|t[简易木材] |cRXP_BUY_和 a|r |T135237:0|t[燧石和火绒] |cRXP_BUY_|r
    >>|cRXP_WARN_这可用于在船上或有轨电车上制作|r |T135805:0|t[基础营火] |cRXP_WARN_来提升你的|r |T133971:0|t[烹饪] |cRXP_WARN_技能而不浪费时间|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
#xprate <1.5
    #hardcore
    .hs >>炉石到塞尔萨玛
step
#xprate <1.5
    #softcore
    #completewith next
    .deathskip >>在灵魂治疗师处死亡并重生
    .target Spirit Healer
step
#xprate <1.5
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
    .accept 301 >>接任务: |cRXP_LOOT_向铁炉堡报告|r
    .target Jern Hornhelm
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
step
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达瑞尔·瑞克努索|r
    .target Daryl Riknussun
    .train 2550 >>训练 |T133971:0|t[烹饪]
step
#xprate <1.5
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
    .turnin 301 >>交任务: |cRXP_FRIENDLY_向铁炉堡报告|r
    .target Prospector Stormpike
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_进入 Deeprun 有轨电车|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .target Monty
    .accept 6661 >>接任务: |cRXP_LOOT_捕捉矿道老鼠|r
step
    .use 17117 >>|cRXP_WARN_使用|r |T133942:0|t[捕鼠者长笛] |cRXP_WARN_on|r |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .target Monty
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    >>|cRXP_WARN_等待电车时，如果需要，请升级您的|r |T135966:0|t[急救] |cRXP_WARN_和|r |T133971:0|t[烹饪] |cRXP_WARN_|r
    >>|cRXP_WARN_你需要你的|r |T135966:0|t[急救] |cRXP_WARN_达到 80 才能完成 24 级的任务|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼普希|r
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_is 在中心平台上|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
    .target Nipsy
step
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >>接任务: |cRXP_LOOT_雷矛的包裹|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>训练你的职业法术
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吴平|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>火车五线谱
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_BUY_购买|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[多筋狼肉]|r |cRXP_BUY_以升级你的|r |T133971:0|t[烹饪] |cRXP_BUY_稍后|r
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在夜色镇完成任务|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在黑海岸完成交付：|r
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    >>|T133970:0|t|cRXP_LOOT_[大块野猪肉]|r
    >>|T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>|cRXP_WARN_如果你不想或不能这样做，请跳过此步骤|r
    >>|cRXP_BUY_购买下列物品可快速在黑海岸完成交付：|r
    >>|T133972:0|t[鳐鱼肉]
    >>|T133912:0|t[黑海岸石斑鱼]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #softcore
    .hs >>洛克莫丹
step
    #softcore
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >>向北前往 Algaz 站
step
    #softcore
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r
    .target 巡山人雷矛
step
    #softcore
    #completewith next
    .deathskip >>在灵魂治疗师处死亡并重生
    .target Spirit Healer
step
    #softcore
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Wetlands >>飞往湿地
    .target Thorgrum Borrelson
step << skip --logout skip
    #hardcore
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>|cRXP_WARN_在电车内跳过登出。点击此处查看视频参考|r
step
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>前往: |cRXP_PICK_丹莫罗|r
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往丹莫罗 -> 湿地跳过点
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
    >>|cRXP_WARN_请先观看视频指南以获取有关如何跳过的参考！|r
    >>|cRXP_WARN_做不死丹莫洛->湿地跳过|r
    >>|cRXP_WARN_穿越水域时避开 |cRXP_ENEMY_Wetlands Crocolisks|r 和 |cRXP_ENEMY_Murlocs|r|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>|cRXP_WARN_点击此处查看视频指南|r
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >>|cRXP_BUY_购买 a|r |T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量供应商品。如果 |cRXP_FRIENDLY_Neal Allen|r 没有，请跳过此步骤|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r, 他在楼上
    .vendor >>|cRXP_BUY_购买尽可能多的|r |T134831:0|t[治疗药水] |cRXP_BUY_可用|r
    >>|cRXP_WARN_这是限量供应的商品。如果 |cRXP_FRIENDLY_Samor Festivus|r 没有，请跳过此步骤|r
    .target Samor Festivus
step
    #hardcore
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
    .fp Wetlands>>获取湿地飞行路线
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r
    .vendor >>|cRXP_BUY_购买尽可能多的|r |T134831:0|t[治疗药水] |cRXP_BUY_可用|r
    >>|cRXP_WARN_这是限量供应商品。如果 |cRXP_FRIENDLY_Dewin Shimmerdawn|r 没有，请跳过此步骤|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>前往奥伯丁号船的码头
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚到，则在船上；如果船刚离去，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚到，则在船上；如果船刚离去，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_如果船刚到，则在船上；如果船刚离去，则在码头上：|r
    .cast 818 >>|cRXP_WARN_创建一个|r |T135805:0|t[基本营火] |cRXP_WARN_（在你的法术书的常规选项卡下）|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[Cook] |cRXP_WARN_以下项目:|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[粘稠的狼肉]|r |cRXP_WARN_into|r |T133974:0|t[烧焦的狼肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_你需要 50|r |T133971:0|t[烹饪] |cRXP_WARN_才能稍后在暮色森林完成任务|r
    >>|T133971:0|t[烹饪] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[大块野猪肉]|r |cRXP_WARN_into|r |T133974:0|t[烤野猪肉]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_如果需要，请在等待前往黑海岸的船时升级你的|r |T135966:0|t[急救] |cRXP_WARN_|r
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
]])
