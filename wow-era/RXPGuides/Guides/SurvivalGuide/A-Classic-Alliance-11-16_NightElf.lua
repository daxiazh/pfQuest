RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 11-13 黑海岸 (暗夜精灵)
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#next 13-13 洛克莫丹 (暗夜精灵)
#defaultfor NightElf

step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奈莎·影歌|r
    .turnin 6344 >> 提交 奈莎·影歌
    .accept 6341 >> 接受 泰达希尔的渔业
    .target Nessa Shadowsong
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
	.goto Teldrassil,58.39,94.01
    .turnin 6341 >> 提交 泰达希尔的渔业
    .accept 6342 >> 接受 飞往奥伯丁
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
    .fly Auberdine >> 飞往黑海岸
    .target Vesprystus
step << !NightElf
#map Darkshore
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
    .fp Auberdine >> 开启奥伯丁飞行点
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    #label WashedA
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >> 接受 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step << !NightElf
#map Darkshore
    #label WashedA
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >> 接受 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赖尔德|r
    .turnin 6342 >> 提交 飞往奥伯丁
    .target Laird
step
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赖尔德|r
    >>|cRXP_BUY_购买必要的食物|r
    .vendor >>|T133918:0|t[长嘴泥鳅] |cRXP_WARN_特别划算|r
    .target Laird
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> 前往楼上找 |cRXP_FRIENDLY_维兹班恩·曲针|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >> 接受 传声盒827号
    .target Wizbang Cranktoggle
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.120,43.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥林迪雅|r
    >>|cRXP_BUY_购买必要的饮料|r
    .target Allyndia
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板莎希因|r
    .home >> 绑定炉石到奥伯丁
    .target Innkeeper Shaussiy
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.250,41.008
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库德拉姆·石锤|r
    .train 2581 >> 学习采矿, 施放 寻找矿物
    .skill mining,1,1
    .target Kurdram Stonehammer
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.191,40.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪尔弗拉姆·火须|r
    .train 2020 >> 学习锻造. 
    |cRXP_WARN_这将让你可以制造 |T135248:0|t[劣质磨刀石] 它能提供近战伤害+2的效果. 这在早期是非常显著的提升|r << Warrior/Rogue
    |cRXP_WARN_这将让你可以制造 |T135255:0|t[劣质平衡石] 它能提供近战伤害+2的效果. 这在早期是非常显著的提升|r << Paladin
    .skill blacksmithing,1,1
    .target Delfrum Flintbeard
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.225,41.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟尔格拉姆·石锤 |r
    >>|cRXP_BUY_从|r|cRXP_FRIENDLY_瑟尔格拉姆·石锤 |r|cRXP_BUY_处购买一把|r|T134708:0|t[矿工锄]
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Thelgrum Stonehammer
step
    .goto Darkshore,38.844,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >> 接受 瘟疫蔓延
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >> 接受 熊怪的威胁
    .target Terenthis
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >> 击杀|cRXP_ENEMY_小潮行蟹|r和|cRXP_ENEMY_小暗礁蟹|r. 拾取|cRXP_LOOT_蟹腿|r
    >>|cRXP_WARN_你可能需要下水来获取它们|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>点击|cRXP_PICK_搁浅的海洋生物|r并拾取|cRXP_LOOT_海洋生物的骸骨|r
    .complete 3524,1
step << Druid
    #completewith end
    >>|cRXP_WARN_提升 |T136065:0|t[采药] 到15. 为之后的任务收集5个|T134187:0|t[地根草].|r
    .collect 2449,5,6123,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >> 侦查 熊怪营地 (前往图腾处然后跑开)
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_对|r|cRXP_ENEMY_狂暴蓟熊|r|cRXP_WARN_使用|r |T134335:0|t[萨纳瑞恩的希望]
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >> 击杀|cRXP_ENEMY_小潮行蟹|r和|cRXP_ENEMY_小暗礁蟹|r. 拾取|cRXP_LOOT_蟹腿|r
    >>|cRXP_WARN_你可能需要下水来获取它们|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .xp 12-3550 >> 刷到离12级还差3550经验  (5250+/8800xp)
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>点击地上的|cRXP_PICK_传声盒827号|r
    .turnin 983 >> 提交 传声盒827号
step
#map Darkshore
    #era/som
	.goto Felwood,19.13,21.39
    >>点击地上的|cRXP_PICK_传声盒827号|r
    .accept 1001 >> 接受 传声盒411号
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >> 提交 搁浅的巨兽
    .accept 4681 >> 接受 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >> 提交 瘟疫蔓延
    .accept 2138 >> 接受 清除疫病
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >> 提交 熊怪的威胁
    .accept 985 >> 接受 熊怪的威胁
    .accept 4761 >> 接受 桑迪斯·织风
    .target Terenthis
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达蒙德|r
    .vendor >> |cRXP_WARN_购买几个|r |T133634:0|t[棕色小包]
    >>|cRXP_WARN_购买|r |T132382:0|t[锋利的箭]|cRXP_WARN_或者|r |T132384:0|t[重弹丸] << Hunter
    .target Dalmond
step
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >> 提交 桑迪斯·织风
    .accept 958 >> 接受 上层精灵的工具
    .accept 954 >> 接受 巴莎兰
    .target Thundris Windweaver
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_前往月夜枭兽洞穴|r
    .cast 18974 >> |cRXP_WARN_在洞内的|cRXP_PICK_月夜枭兽之石|r附近使用|r|T132857:0|t[塞纳里奥月尘]|cRXP_WARN_来召唤|r|cRXP_ENEMY_月爪枭兽|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >> 击杀|cRXP_ENEMY_月爪枭兽|r. 对话|cRXP_FRIENDLY_月爪枭兽的灵魂|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赖尔德|r
    .accept 6343 >> 接受 飞回泰达希尔
    .target Laird
step << NightElf
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r
    .fly Teldrassil >> 飞往泰达希尔 --Train 12
    .target Caylais Moonfeather
step << NightElf
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奈莎·影歌|r
    .turnin 6343 >> 提交 飞回泰达希尔
    .target Nessa Shadowsong
step << NightElf
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> 进入紫色传送门到达达纳苏斯
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 6001 >> 提交 身心之力
    .trainer >> 学习职业技能
    .target Mathrengyl Bearwalker
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿雷亚斯塔·刃咏|r
    .goto Darnassus,58.72,34.92
    .trainer >> 学习职业技能
    .target Arias'ta Bladesinger
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 2567 >> 学习投掷武器
    .target Ilyenia Moonfire
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿瑞耶尔·天影|r
    .goto Darnassus,58.765,44.494
    >>|cRXP_WARN_购买1组|r |T135425:0|t[锋利飞刀]
    .collect 3107,200
    .target Ariyell Skyshadow
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
    .trainer >> 学习职业技能
    .target Jandria
step << NightElf Rogue
    >>前往塞纳里奥区
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >> 学习职业技能
    .target Syurna
step << NightElf Hunter
    #completewith start
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
    .trainer >> 学习职业技能
    .target Jocaste
step
    #completewith next
    .hs >> 炉石回奥伯丁
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> 前往码头找|cRXP_FRIENDLY_塞瑞利恩·白爪|r
step
    .goto Darkshore,35.743,43.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >> 接受 永志不渝
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> 前往码头的尽头并跳入水中
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>点击|cRXP_PICK_海龟骨头|r拾取|cRXP_LOOT_海龟的残骸|r
    .complete 4681,1 -- Turtle Remains
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >> 提交 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step << Warrior/Rogue
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赖尔德|r
    .vendor >>|cRXP_WARN_购买40个|r|T133918:0|t[长嘴泥鳅]
    .target Laird
step
    .goto Darkshore,37.708,43.431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >> 接受 红色水晶
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    #label Bashal1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
    >>|cRXP_WARN_沿路前往巴莎兰|r
    >>|cRXP_WARN_避免击杀沿途的|cRXP_ENEMY_野生劣魔|r和|cRXP_ENEMY_恶灵劣魔|r|r
    .turnin 954 >> 提交 巴莎兰
    .accept 955 >> 接受 巴莎兰
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >> 击杀|cRXP_ENEMY_野生劣魔|r和|cRXP_ENEMY_恶灵劣魔|r. 拾取|cRXP_LOOT_劣魔耳环|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >> 提交 巴莎兰
    .accept 956 >> 接受 巴莎兰
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >> 击杀|cRXP_ENEMY_戴瑟雷萨特|r. 拾取|cRXP_LOOT_远古月亮石封印|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >> 提交 巴莎兰
    .accept 957 >> 接受 巴莎兰
    .target Asterion
step
    #completewith Tysha
    >>|cRXP_WARN_沿着路往南走并寻找附近的|r |cRXP_ENEMY_森林陆行鸟雏鸟|r
    >> 击杀|cRXP_ENEMY_森林陆行鸟雏鸟|r. 拾取|cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    #label Tysha
    .goto Darkshore,40.30,59.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >> 接受 亚米萨兰的毁灭
    .target Sentinel Tysha Moonblade
step
    #completewith TheLay
    >> 击杀|cRXP_ENEMY_被诅咒的精灵贵族|r, |cRXP_ENEMY_挣扎的精灵贵族|r,和|cRXP_ENEMY_哀嚎的精灵贵族|r. 拾取|cRXP_LOOT_上层精灵的遗物|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,43.30,58.70
    >>点击|cRXP_PICK_亚米萨兰的衰落|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>点击|cRXP_PICK_远古火焰|r
    .complete 957,1 -- Ancient Moonstone Destroyed
step
#map Darkshore
    #label TheLay
    .goto Felwood,25.98,40.62
    >>点击|cRXP_PICK_亚米萨兰的毁灭|r
    .complete 953,2 -- 亚米萨兰的毁灭
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >> 击杀|cRXP_ENEMY_被诅咒的精灵贵族|r, |cRXP_ENEMY_挣扎的精灵贵族|r和|cRXP_ENEMY_哀嚎的精灵贵族|r. 拾取|cRXP_LOOT_上层精灵的遗物|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >> 提交 亚米萨兰的毁灭
step
    #completewith BashalFinal
    >>|cRXP_WARN_沿路向北并寻找|r |cRXP_ENEMY_森林陆行鸟雏鸟|r
    >> 击杀|cRXP_ENEMY_森林陆行鸟雏鸟|r. 拾取|cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
#map Darkshore
    #completewith BashalFinal
    .goto Felwood,27.70,10.03,60 >> 前往巴莎兰
step
#map Darkshore
    #label BashalFinal
    .goto Felwood,27.70,10.03
    .target Asterion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >> 提交 巴莎兰
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >> 击杀|cRXP_ENEMY_月夜枭兽|r. 拾取|T132832:0|t[|cRXP_LOOT_小蛋|r]
    >>|cRXP_WARN_一会你将用|T132832:0|t[|cRXP_LOOT_小蛋|r]把|r |T133971:0|t[烹饪] |cRXP_WARN_升到10|r 
    .collect 6889,9,2178 -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    .goto Darkshore,42.014,33.796,80,0
    .goto Darkshore,38.717,33.659,100,0
    .goto Darkshore,46.254,42.955,100,0
    .goto Darkshore,41.216,50.191,100,0
    .goto Darkshore,37.662,49.162,100,0
    .goto Darkshore,46.254,42.955
    >>|cRXP_WARN_注意|cRXP_ENEMY_蓟熊|r, 它们能晕人.|r
    >> 击杀|cRXP_ENEMY_森林陆行鸟雏鸟|r. 拾取|cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高尔博多·钢手|r
    +购买|T134059:0|t[甜香料]
    >>|cRXP_WARN_用|r |T134059:0|t[甜香料] |cRXP_WARN_和|r|T132832:0|t[小蛋]|cRXP_WARN_制作草药烘蛋. 直到烹饪达到10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >> 接受 炖陆行鸟
    .turnin 2178 >> 提交 炖陆行鸟
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .target Alanndarian Nightsong
step
    #label ToolsTurnin
    #map Darkshore
    .goto Felwood,19.98,14.40
    .target Thundris Windweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 958 >> 提交 上层精灵的工具
step
    #label end
    .goto Darkshore,32.417,43.809,15,0
    .goto Darkshore,32.417,43.809,0
    .zone Wetlands >> 乘船前往米奈希尔港
    >>|cRXP_WARN_等船去米奈希尔港时提升|r|T135966:0|t[急救]|cRXP_WARN_等级|r
step
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >> 开启米奈希尔港飞行点
    .target Shellei Brondir
step
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> 跳下码头然后游到路标
step
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>使用角色卡死自助服务快速到达铁炉堡. 你需要在路标处下线然后在另一个角色上找到帮助菜单, 然后下滑到自助服务. 点击你的角色然后移动. 如果没有成功就跳过这步并沿着山游到西部荒野
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> 点击此处查看视频参考
    *请注意这招在PTR上没用
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 13-13 洛克莫丹 (暗夜精灵)
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#next 13-15 西部荒野
#defaultfor NightElf

step
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> 如果自助角色卡死服务不可用, 就游泳去西部荒野
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
step
    .goto Westfall,54.28,9.26,50,0
    .goto Westfall,55.12,14.64,40,0
    .goto Westfall,56.36,17.81,65,0
    .goto Elwynn Forest,23.24,77.80
    .zone Elwynn Forest >> 上岸并前往艾尔文森林. 注意不要引到太多|cRXP_ENEMY_鱼人|r
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> 前往暴风城
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor >>  |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134830:0|t[次级治疗药水]
    .target Keldric Boucher
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >> 开启暴风城飞行点
    .target Dungar Longdrink
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> 前往矿道地铁. 坐地铁去铁炉堡
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|cRXP_WARN_地铁一到就穿过地铁到中间月台找|cRXP_FRIENDLY_蒙提|r|r
    >>|cRXP_WARN_等待时, 施放|r |T136221:0|t[召唤虚空行者] |cRXP_WARN_和|r |T135230:0|t[制造治疗石] << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒙提|r
    .accept 6661 >> 接受 捕捉矿道老鼠
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .use 17117 >>|cRXP_WARN_对|r|cRXP_ENEMY_矿道老鼠|r|cRXP_WARN_使用|r|T133942:0|t[捕鼠者之笛] 
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >> 提交 捕捉矿道老鼠
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> 接受 我的兄弟，尼普希
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    #completewith next
    .goto Ironforge,77.0,51.0
    .zone Ironforge >> 前往铁炉堡
step << Warrior
    .goto Ironforge,70.774,90.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆伦·雷矛|r
    .accept 1680 >> 接受 托姆斯·深炉
    .target Muren Stormpike
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >> 开启铁炉堡飞行点
    .target Gryth Thurden
step << Warrior
    .goto Ironforge,48.640,42.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托姆斯·深炉|r
    .turnin 1680 >> 提交 托姆斯·深炉
    .target Tormus Deepforge
step
    #completewith next
    .goto Dun Morogh,53.305,35.112,10,0
    .zone Dun Morogh >> 离开 铁炉堡
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,56.503,47.923,100,0
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> 接受 保护牲畜
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>从这爬上山
step
    .goto Dun Morogh,62.6,46.1
    >> 击杀|cRXP_ENEMY_瓦加什|r. 拾取|cRXP_LOOT_瓦加什的牙齿|r
    >>|cRXP_WARN_这个任务比较难, 如果需要可以组队. 如果你组不到队伍或者不能Solo它就跳过这步|r
    >>|cRXP_WARN_在击杀前查看下面的视频|cRXP_ENEMY_瓦加什|r. 它能被所有职业Solo|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_点击此处查看视频参考|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> 提交 保护牲畜
step
    #completewith next
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >> |cRXP_BUY_如果有需要就购买|r |T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >> |cRXP_BUY_如果有需要就购买|r |T133968:0|t[刚出炉的面包] |cRXP_BUY_和|r |T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_参议员梅尔·圣石|r和|cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >> 接受 公众之仆
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> 接受 该死的石腭怪！
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹克·利刃|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>学习|T134708:0|t[采矿]
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_施放|r |T136025:0|t[寻找矿物]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >> 击杀|cRXP_ENEMY_石腭击颅者|r和|cRXP_ENEMY_石腭断骨者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头乔尼·石眉|r和|cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >> 提交 该死的石腭怪！
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> 提交 公众之仆
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >> 接受 失踪的驾驶员
step
    >>点击|cRXP_PICK_矮人的尸体|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> 提交 失踪的驾驶员
    .accept 417 >> 接受 驾驶员的复仇
step
    >> 击杀|cRXP_ENEMY_癞爪|r. 拾取|cRXP_LOOT_肮脏的爪子|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >> 提交 驾驶员的复仇
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    >>|cRXP_WARN_任务奖励选择|r |T135641:0|t[|cRXP_FRIENDLY_工匠匕首|r]|cRXP_WARN_并把它装备在副手上|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> 提交 驾驶员的复仇
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >> 前往洛克莫丹
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_如果需要就清理背包并修理装备|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .target Mountaineer Stormpike
    .accept 307 >> 接受 肮脏的爪子
    >>|cRXP_WARN_先不要接受 卡尔·雷矛的订单|r
step
    .solo
    #completewith StormpikeStop
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取|cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取|cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_保存所有|r |T133970:0|t[大块野猪肉] |cRXP_WARN_一会会用来提升|T133971:0|t[烹饪]|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> 前往塞尔萨玛
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >> 接受 塞尔萨玛血肠
step
    #competewith StormpikeO
    .abandon 1338 >> 放弃 卡尔·雷矛的订单. 放弃后能接到巡山人卡尔·雷矛的任务, 给予550点免费经验
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅尼·铁心|r
    .vendor >> |cRXP_BUY_如果需要就购买1到2个|r |T133634:0|t[棕色小包]
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .vendor >> |cRXP_BUY_购买|r|T133968:0|t[刚出炉的面包]|cRXP_BUY_. 大约40个|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_购买|r|T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r|T132815:0|t[冰镇牛奶]|cRXP_BUY_. 大约20个|r|T133968:0|t[刚出炉的面包]|cRXP_BUY_和40个|r|T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_在一条穿越塞尔萨玛的路上巡逻|r
    .accept 416 >> 接受 狗头人的耳朵
    .accept 1339 >> 接受 巡山人卡尔·雷矛的任务
    .target Mountaineer Kadrell
step
    .group
    #completewith BraveSoul
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取|cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取|cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .solo
    #completewith StormpikeStop
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取|cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取|cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .group
    #completewith MinerGear
    >>击杀|cRXP_ENEMY_坑道鼠|r. 拾取|cRXP_LOOT_坑道鼠的耳朵|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> 前往银泉矿洞
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_矿工联盟的储物箱|r. 拾取|cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_|cRXP_PICK_矿工联盟的储物箱|r在矿洞内到处能找到|r
    >>|cRXP_WARN_你可以选择暂时跳过这个任务, 之后还有机会过来|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取|cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取|cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔伦·安德玛|r
    .vendor >>|cRXP_FRIENDLY_尼尔伦·安德玛|r |cRXP_WARN_出售限量物品|r |T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r]
    >>|cRXP_WARN_如果物品刷新了, 就买下. 钱不够的话, 就刷附近的|cRXP_ENEMY_坑道鼠|r直到你有足够的钱|r
    >>|cRXP_WARN_抓紧时间购买, 其他玩家可能在你之前把它买了|r
    .target Nillen Andemar
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>击杀|cRXP_ENEMY_坑道鼠|r. 拾取|cRXP_LOOT_坑道鼠的耳朵|r
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_之后圣骑士职业任务会用到|r << Paladin
    >>|cRXP_ENEMY_坑道鼠|r |cRXP_WARN_在整个洛克莫丹都有刷新. 查看世界地图确认它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_如果需要就清理背包并修理装备|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >> 提交 肮脏的爪子
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >> 提交 巡山人卡尔·雷矛的任务
    .accept 1338 >> 接受 卡尔·雷矛的订单
    .target Mountaineer Stormpike
step
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取|cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取|cRXP_LOOT_蜘蛛的毒液|r
    .collect 3173,3,418,1 --Bear Meat (3)
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
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人卡德雷尔|r
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r |cRXP_WARN_在一条穿越塞尔萨玛的路上巡逻|r
    .target Mountaineer Kadrell
    .turnin 416 >> 提交 狗头人的耳朵
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维德拉·壁炉|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> 提交 塞尔萨玛血肠
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅尼·铁心|r
    >>|cRXP_BUY_购买|r |T135237:0|t[燧石和火绒] |cRXP_BUY_及1根|r |T135435:0|t[普通木柴]|cRXP_BUY_. 有需要就购买|r|T133634:0|t[棕色小包]|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >> 开启塞尔萨玛飞行点
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >> 接受 保卫国王的领土
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在堡垒中与|cRXP_FRIENDLY_拉格弗斯上尉|r对话
    .target Captain Rugelfuss
    .accept 267 >> 接受 穴居人的威胁
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >> 前往碎石怪之谷
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>击杀|cRXP_ENEMY_碎石穴居人|r 和 |cRXP_ENEMY_碎石怪斥候|r. 拾取|cRXP_LOOT_穴居人的石牙|r
    >>|cRXP_WARN_确保你有10个|r |T132889:0|t[亚麻布] |cRXP_WARN_之后圣骑士职业任务会用到|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人库伯弗林特|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> 提交 保卫国王的领土
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >> 提交 穴居人的威胁
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >> 飞往铁炉堡
    .target Thorgrum Borrelson
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼下与|cRXP_FRIENDLY_哈瑞克·石鼓|r对话
    >>|cRXP_BUY_购买|r |T135468:0|t[烟尘魔杖]|cRXP_BUY_. 一到15级就装备上|r
    .goto Ironforge,23.141,15.922
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r
    .goto Ironforge,25.204,10.749
    .trainer >> 学习职业技能
    .target Toldren Deepiron
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r
    .trainer >> 学习职业技能
    .target Fenthwick
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布里维夫·石拳|r
    .train 198 >> 学习单手锤
    .target Buliwyf Stonehand
step << Hunter
    .goto Ironforge,69.865,82.886
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r
    .trainer >> 学习职业技能
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.907,88.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >> 学习职业技能
    .target Bilban Tosslespanner
step << Warrior
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布里维夫·石拳|r
    .train 199 >> 学习双手锤
    .target Buliwyf Stonehand
step << Rogue
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布里维夫·石拳|r
    .train 198 >> 学习单手锤
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.551,88.699
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯洛米尔·铁手|r
    .vendor >>|cRXP_BUY_买得起就购买|r |T133046:0|t[巨型石锤]
    .target Kelomir Ironhand
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_前往矿道地铁|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在中间月台与|cRXP_FRIENDLY_蒙提|r对话
    .target Monty
    .accept 6661 >> 接受 捕捉矿道老鼠
step
    .use 17117 >>|cRXP_WARN_对|r|cRXP_ENEMY_矿道老鼠|r|cRXP_WARN_使用|r|T133942:0|t[捕鼠者之笛] 
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒙提|r
    .target Monty
    .turnin 6661 >> 提交 捕捉矿道老鼠
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> 接受 我的兄弟，尼普希
step
    #completewith next
    .zone Stormwind City >> 坐地铁去暴风城
    >>|cRXP_WARN_你可以在等地铁时|r|cRXP_WARN_提升|r |T135966:0|t[急救] |cRXP_WARN_和|r |T133971:0|t[烹饪]
    >>|cRXP_WARN_之后有个24级的任务需要|T135966:0|t[急救]达到80|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t一下地铁就与|cRXP_FRIENDLY_尼普希|r对话
    >>|cRXP_FRIENDLY_尼普希|r |cRXP_WARN_在中间月台上|r
    .turnin 6662 >> 提交 我的兄弟，尼普希
step
    #completewith next
    .zone Stormwind City >> 前往暴风城
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> 接受 雷矛的包裹
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗伦·长须|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> 提交 卡尔·雷矛的订单
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
    .trainer >> 学习职业技能
    .target Sheldras Moontree
step << Druid
    #ah
    .goto StormwindClassic,53.2,60.6
    >>去拍卖行购买5个 |T134187:0|t[地根草].之后有任务会用到
    .collect 2449,5,6123,1
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor >>  |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134830:0|t[次级治疗药水]
    .target Keldric Boucher
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >> 开启暴风城飞行点
    .target Dungar Longdrink
]])
