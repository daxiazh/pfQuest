local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 1-6 北郡
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Human
#next 6-11 艾尔文森林; 6-13 艾尔文森林
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +你已选择适合人类的升级指南，请选择适合自己起始区域的升级指南。
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹恩·温斯洛|r
    .vendor >>|cRXP_WARN_卖掉你的胸甲, 衬衣, 裤子, 鞋子还有食物和水. 你总共需要10c|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .accept 1598 >> 接受 失窃的典籍
    .train 348 >> 学习|T135817:0|t[献祭]
    .target Drusilla La Salle
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_跑入迪菲亚营地的帐篷中|r
    >>打开|cRXP_PICK_被偷走的书|r. 拾取|cRXP_LOOT_虚空灵能|r
    >>|cRXP_WARN_在帐篷中你能安全地拾取|cRXP_LOOT_虚空灵能|r! 查看此视频来了解如何做到|r
    .link https://www.youtube.com/watch?v=0zC2bDBl6C4 >>|cRXP_WARN_点击链接查看视频|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_待在帐篷中|cRXP_ENEMY_迪菲亚暴徒|r就打不到你|r
    .hs >> 炉石回北郡山谷
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> 提交 失窃的典籍
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_施放|r|T136218:0|t[召唤小鬼]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维里副队长|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> 接受 身边的危机
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>击杀|cRXP_ENEMY_幼狼|r直到你有价值10c+的垃圾物品
    >>|cRXP_WARN_你将学习|r|T132333:0|t[战吼]|cRXP_WARN_这将提升你早期练级的速度|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹尼尔修士|r
    .vendor >>|cRXP_WARN_清理背包|r
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱尼·拜舍尔|r
    .train 6673 >>学习|T132333:0|t[战吼]
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Brother Danil
    .target Llane Beshere
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官玛克布莱德|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> 提交 身边的危机
    .accept 7 >> 接受 剿灭狗头人
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维里副队长|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> 接受 伊根·派特斯金纳
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊根·派特斯金纳|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> 提交 伊根·派特斯金纳
    .accept 33 >> 接受 林中的群狼
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹尼尔修士|r
    .vendor >>|cRXP_WARN_一旦你有价值50c的垃圾物品, 购买10个|r|T132794:0|t[清凉的泉水]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>击杀|cRXP_ENEMY_幼狼|r和|cRXP_ENEMY_森林狼|r. 拾取|cRXP_LOOT_硬狼肉|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>击杀|cRXP_ENEMY_狗头人歹徒|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>击杀|cRXP_ENEMY_幼狼|r和|cRXP_ENEMY_森林狼|r. 拾取|cRXP_LOOT_硬狼肉|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊根·派特斯金纳|r
    .target Eagan Peltskinner
    .turnin 33,2 >> 提交 林中的群狼 << Warrior/Paladin/Rogue
    .turnin 33,1 >> 提交 林中的群狼 << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹尼尔修士|r
    .vendor >> |cRXP_WARN_清理背包|r
    >>|cRXP_WARN_购买10个|r|T132794:0|t[清凉的泉水]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高德瑞克·洛斯迦|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_清理背包|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚努斯·哈默纳克|r
    .goto Elwynn Forest,47.240,41.900
    .vendor >> |cRXP_BUY_购买1把|r|T135650:0|t[简易匕首]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +|cRXP_WARN_装备|r|T135650:0|t[简易匕首]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官玛克布莱德|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> 提交 剿灭狗头人
    .accept 15 >> 接受 回音山调查行动
    .accept 3100 >> 接受 简要的信件 << Warrior
    .accept 3101 >> 接受 圣洁信件 << Paladin
    .accept 3102 >> 接受 密文信件 << Rogue
    .accept 3103 >> 接受 神圣信件 << Priest
    .accept 3104 >> 接受 雕文信件 << Mage
    .accept 3105 >> 接受 被污染的信件 << Warlock
step
    .xp 3 >> 升到3级
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>击杀|cRXP_ENEMY_狗头人劳工|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>在回去的路上刷怪到 1110+/1400经验
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高德瑞克·洛斯迦|r
    .target Godric Rothgar
    .vendor >>|cRXP_WARN_清理背包|r
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官玛克布莱德|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >> 提交 回音山调查行动
    .accept 21 >> 接受 回音山清剿行动
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >> 上楼 << Mage
    .goto Elwynn Forest,49.3,40.7,15 >> 走向|cRXP_FRIENDLY_女牧师安妮塔|r<< Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯尔登·布雷门|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> 提交 雕文信件
    .trainer >> 学习职业技能
    .target Khelden Bremen
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >> 穿过门道
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女牧师安妮塔|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> 提交 神圣信件
    .trainer >> 学习职业技能
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> 走向|cRXP_FRIENDLY_莱尼·拜舍尔|r<< Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> 走向|cRXP_FRIENDLY_萨缪尔修士|r<< Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱尼·拜舍尔|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> 提交 简要的信件
    .trainer >> 学习职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨缪尔修士|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> 提交 圣洁信件
    .trainer >> 学习职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维里副队长|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> 接受 盗贼兄弟会
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜希拉·拉萨雷|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> 提交 被污染的信件
    .xp 4 >> 升到4级
    .trainer >>学习|T136118:0|t[腐蚀术]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>击杀|cRXP_ENEMY_迪菲亚暴徒|r. 拾取|cRXP_LOOT_红色粗麻面罩|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> 升到4级
step
    #completewith next
    #softcore
    .deathskip >> 自杀然后在灵魂医者处复活
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维里副队长|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> 提交 盗贼兄弟会 << Paladin
    .turnin 18,1 >> 提交 盗贼兄弟会 << Rogue/Warlock
    .turnin 18,5 >> 提交 盗贼兄弟会 << Mage
    .turnin 18,2 >> 提交 盗贼兄弟会 << Priest
    .turnin 18,3 >> 提交 盗贼兄弟会 << Warrior
    .turnin 18 >> 提交 盗贼兄弟会 << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> 接受 加瑞克·帕德弗特的赏金
    .accept 3903 >> 接受 米莉·奥斯沃斯
step << Paladin
    #completewith next
    +装备|T133052:0|t[民兵战锤]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高德瑞克·洛斯迦|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> 清理背包并修理装备
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> 前往回音山矿洞
step
    .goto Elwynn Forest,48.61,27.63
    >>击杀|cRXP_ENEMY_狗头人苦力|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> 升到5级
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3903 >> 提交 米莉·奥斯沃斯
    >>|cRXP_WARN_放弃后续任务|r
    .target Milly Osworth
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >> 提交 米莉·奥斯沃斯
    .accept 3904 >> 接受 米莉的葡萄
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔里克·克里丹|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> 提交 密文信件
    >>|cRXP_WARN_你现在不需要学习任何技能|r
step << Priest/Mage
    >>在地上拾取|cRXP_PICK_米莉的葡萄|r
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>击杀|cRXP_ENEMY_加瑞克·帕德弗特|r. 拾取|cRXP_LOOT_加瑞克的头颅|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> 放弃 米莉的葡萄
step << !Priest !Mage
    .xp 5+1715 >> 在回去的路上升到5级多1715经验 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> 在回去的路上升到5级多1175经验 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #completewith next
    #softcore
    .deathskip >> 自杀然后在灵魂医者处复活
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >> 提交 米莉的葡萄
    .accept 3905 >>接受 葡萄出货单
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维里副队长|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> 提交 加瑞克·帕德弗特的赏金 << Warrior/Rogue/Paladin
    .turnin 6,1 >> 提交 加瑞克·帕德弗特的赏金 << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在教堂内与|cRXP_FRIENDLY_治安官玛克布莱德|r对话
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >> 提交 回音山清剿行动 << Rogue
    .turnin 21,2 >> 提交 回音山清剿行动 << Warrior/Paladin
    .turnin 21,3 >> 提交 回音山清剿行动 << !Warrior !Paladin
    .accept 54 >> 接受 去闪金镇报到
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>上楼
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_尼尔斯修士|r对话
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>提交 葡萄出货单
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女牧师安妮塔|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> 接受 圣光的恩赐
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法尔坎·伊森斯泰德|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >> 接受 休息和放松
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som
<< Alliance
#name 6-11 艾尔文森林
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Human
#next 11-13 洛克莫丹
step
    #completewith next
    .subzone 87 >> 前往闪金镇
step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> 提交 去闪金镇报到
    .accept 62 >> 接受 法戈第矿洞
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁匠阿古斯|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >>学习|T136241:0|t[锻造]
    >>|cRXP_WARN_这将让你可以制造|T135248:0|t[劣质磨刀石] 它能提供近战伤害+2的效果. 这在早期是非常显著的提升|r<< Warrior/Rogue
    >>|cRXP_WARN_这将让你可以制造|T135255:0|t[劣质平衡石] 它能提供近战伤害+2的效果. 这在早期是非常显著的提升|r<< Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T135321:0|t[步兵剑]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T135641:0|t[卷刃的剑]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T133053:0|t[木槌棒]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Mage/Priest/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德温·克里顿|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.706,65.786
    .vendor >>|cRXP_WARN_清理背包|r
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> 提交 去闪金镇报到
    .accept 62 >> 接受 法戈第矿洞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·匹斯特|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> 接受 狗头人的蜡烛
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板法雷|r
    .target Innkeeper Farley
    .turnin 2158,1 >> 提交 休息和放松 << Rogue/Warrior
    .turnin 2158,2 >> 提交 休息和放松 << !Rogue !Warrior
    .home >> 绑定炉石到闪金镇
step
    .xp 6 >> 升到6级
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> >>|cRXP_WARN_购买1把|r|T135641:0|t[平衡飞刀] 并装备上
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> 下楼
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛克西米利安·克洛文|r
    .target Maximillian Crowe
    .trainer >> 学习职业技能
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞琳娜·达克哈特|r
    .vendor >>|cRXP_WARN_购买|r|T133738:0|t[魔典：血契（等级 1）]|cRXP_WARN_如果买不起就稍后再买|r
    .target Cylina Darkheart
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> 上到旅馆二楼
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔迪玛·维夫希尔特|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> 学习职业技能
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女牧师洁塞塔|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> 提交 圣光的恩赐
    .accept 5624 >> 接受 圣光之衣
    .trainer >> 学习职业技能
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> 学习职业技能
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_米歇尔·贝利|r对话
    .target Michelle Belle
    .train 3273 >>学习|T135966:0|t[急救]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板法雷|r
    .vendor >>|cRXP_BUY_购买|r|T133995:0|t[达拉然奶酪]|cRXP_BUY_直到背包中少于1银币|r<< Warrior
    .vendor >>|cRXP_BUY_购买最多 20个|r|T133995:0|t[达拉然奶酪] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> 学习职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔海姆修士|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> 学习职业技能
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷米|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >> 接受 金砂交易
step << Priest
    >>|cRXP_WARN_施放|r|T135929:0|t[次级治疗术 (等级 2)]|cRXP_WARN_和|r|T135987:0|t[真言术: 韧]|cRXP_WARN_于|r|cRXP_FRIENDLY_卫兵罗伯兹|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>击杀|cRXP_ENEMY_石牙野猪|r. 拾取|cRXP_LOOT_大块野猪肉|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯通菲尔德妈妈|r和|cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .target "Auntie" Bernice Stonefield
    .target Ma Stonefield
    .accept 85 >> 接受 丢失的项链
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> 接受 公主必须死!
	.goto Elwynn Forest,34.660,84.482
step
    #completewith next
    >>击杀|cRXP_ENEMY_狗头人隧道工|r和|cRXP_ENEMY_狗头人矿工|r. 拾取|cRXP_LOOT_大蜡烛|r和|cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135255:0|t[劣质平衡石] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比利·马科伦|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> 提交 丢失的项链
    .accept 86 >> 接受 比利的馅饼
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝尔·马科伦|r
    .accept 106 >> 接受 年轻的恋人
    .target Maybell Maclure
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒·马科伦|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_购买尽可能多的|r|T132815:0|t[冰镇牛奶] << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_清理背包|r<< !Priest !Warlock !Mage
step
    #completewith next
    >>击杀|cRXP_ENEMY_狗头人隧道工|r和|cRXP_ENEMY_狗头人矿工|r. 拾取|cRXP_LOOT_大蜡烛|r和|cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135255:0|t[劣质平衡石] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托米·乔·斯通菲尔德|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> 提交 年轻的恋人
    .accept 111 >> 接受 托米的祖母
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>击杀|cRXP_ENEMY_石牙野猪|r. 拾取|cRXP_LOOT_大块野猪肉|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> 提交 比利的馅饼
    .accept 84 >> 接受 比利的馅饼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莱德·斯通菲尔德|r
    .target Gramma Stonefield
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> 提交 托米的祖母
    .accept 107 >> 接受 给威廉·匹斯特的信
step
    #completewith next
    >>击杀|cRXP_ENEMY_狗头人隧道工|r和|cRXP_ENEMY_狗头人矿工|r. 拾取|cRXP_LOOT_大蜡烛|r和|cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135255:0|t[劣质平衡石] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比利·马科伦|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >> 提交 比利的馅饼
    .accept 87 >> 接受 金牙
step
    #completewith KillGoldtooth
    >>击杀|cRXP_ENEMY_狗头人隧道工|r和|cRXP_ENEMY_狗头人矿工|r. 拾取|cRXP_LOOT_大蜡烛|r和|cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135255:0|t[劣质平衡石] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>侦查 法戈第矿洞
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>击杀|cRXP_ENEMY_金牙|r. 拾取|cRXP_LOOT_波尼斯的项链|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #completewith next
    >>击杀|cRXP_ENEMY_狗头人隧道工|r和|cRXP_ENEMY_狗头人矿工|r. 拾取|cRXP_LOOT_大蜡烛|r和|cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135255:0|t[劣质平衡石] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explore Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>击杀|cRXP_ENEMY_狗头人隧道工|r和|cRXP_ENEMY_狗头人矿工|r. 拾取|cRXP_LOOT_大蜡烛|r和|cRXP_LOOT_金砂|r
    >>|cRXP_WARN_如果你拾取了任何|r|T135232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135248:0|t[劣质磨刀石] << Warrior/Rogue
    >>|cRXP_WARN_如果你拾取了If you loot any35232:0|t[劣质的石头]|cRXP_WARN_把它们做成|r|T135255:0|t[劣质平衡石] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_保留1瓶|r|T134829:0|t[初级治疗药水]|cRXP_WARN_你将会在罗尔夫的尸体处用到它|r
step << Warrior/Rogue
    >>|cRXP_WARN_记得制造|r|T135248:0|t[劣质磨刀石]|cRXP_WARN_如果你有至少1个|r|T135232:0|t[劣质的石头]
    .xp 7+1600 >>升级到 1600+/4500xp
step << Paladin
    >>|cRXP_WARN_记得制造|r|T135248:0|t[劣质磨刀石]|cRXP_WARN_如果你有至少1个|r|T135232:0|t[劣质的石头]
    .xp 7+1600 >>升级到 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>升级到 1600+/4500xp
step << Priest
    .xp 7+1260 >>升级到 1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> 提交 金牙
step
    .xp 7+2690 >>升级到 2690+/4500xp << !Priest
    .xp 7+2350 >>升级到 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> 前往闪金镇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷米|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> 提交 金砂交易
    .accept 40 >> 接受 鱼人的威胁
    >>|cRXP_WARN_不要卖掉|r|T133581:0|t[弹子球]|cRXP_WARN_此物品在整个升级过程中都十分有价值|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> 提交 鱼人的威胁
    .accept 35 >> 接受 卫兵托马斯
    .turnin 62 >> 提交 法戈第矿洞
    .accept 76 >> 接受 玉石矿洞
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    .goto Elwynn Forest,41.529,65.900
    .vendor >>|cRXP_WARN_清理背包|r
    .target Corina Steele
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T135321:0|t[步兵剑]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T135641:0|t[卷刃的剑]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T133053:0|t[木槌棒]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·匹斯特|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> 提交 狗头人的蜡烛
    .accept 61 >> 接受 送往暴风城的货物
    .turnin 107 >> 提交 给威廉·匹斯特的信
    .accept 112 >> 接受 收集海藻
step
    .xp 8 >> 升到8级
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里瑞亚·杜拉克|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> 学习职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔海姆修士|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> 学习职业技能
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> 下到旅馆地下室
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛克西米利安·克洛文|r
    .target Maximillian Crowe
    .trainer >> 学习职业技能
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞琳娜·达克哈特|r
    .vendor >>|cRXP_WARN_购买|r|T133738:0|t[魔典：火焰箭（等级 2)]|cRXP_WARN_如果你买不起, 就稍后再来买.|r
    .target Cylina Darkheart
step << Mage/Priest/Rogue/Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> 上到旅馆二楼
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔迪玛·维夫希尔特|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> 学习职业技能
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女牧师洁塞塔|r
	.target Priestess Josetta
    .turnin 5624 >> 提交 圣光之衣
    .trainer >> 学习职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> 学习职业技能
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米歇尔·贝利|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>学习|T135966:0|t[急救]
step
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布洛葛·哈姆菲斯特|r
    .vendor >>|cRXP_WARN_如果需要的话, 购买 1个|r|T133634:0|t[棕色小包]
	.target Brog Hamfist
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板法雷|r
    .vendor >>|cRXP_WARN_购买最多 40|r|T132815:0|t[冰镇牛奶] << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_WARN_购买最多 40|r|T133995:0|t[达拉然奶酪] << Warrior/Rogue
    .vendor >>|cRXP_WARN_购买最多 10|r|T133995:0|t[达拉然奶酪]|cRXP_WARN_and 10|r|T132815:0|t[冰镇牛奶] << Paladin
    .target Innkeeper Farley
step
    >>击杀|cRXP_ENEMY_鱼人|r和|cRXP_ENEMY_鱼人士兵|r. 拾取|cRXP_LOOT_水晶藻叶|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> 前往玉石矿洞
step
    >>|cRXP_WARN_沿着中间的路探索玉石矿洞|r
    >>|cRXP_WARN_任务完成后尽快退出玉石矿洞|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵托马斯|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> 提交 卫兵托马斯
    .accept 37 >> 接受 失踪的卫兵
    .accept 52 >> 接受 保卫边境
step
    #completewith AcceptBundle
    >>击杀|cRXP_ENEMY_觅食的灰狼|r和|cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀你看到的所有|cRXP_ENEMY_森林熊幼崽|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    >>点击地上的|cRXP_PICK_被吃掉一半的尸体|r
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> 提交 失踪的卫兵
    .accept 45 >> 接受 罗尔夫的下落
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员莱琳|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> 接受 木材危机
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里克·费恩|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >>|cRXP_WARN_清理背包|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>击杀|cRXP_ENEMY_觅食的灰狼|r和|cRXP_ENEMY_森林熊幼崽|r
    >>|cRXP_WARN_优先击杀你看到的所有|cRXP_ENEMY_森林熊幼崽|r|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #completewith Bundles
    >>拾取地上的|cRXP_LOOT_一捆木材|r.|cRXP_WARN_你一般能在树下找到它们|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>点击地上的|cRXP_PICK_罗尔夫的尸体|r
    >>|cRXP_ENEMY_鱼人强夺者|r|cRXP_WARN_能施放|r|T135915:0|t[喝下初级药水]|cRXP_WARN_恢复61-68点生命值|r
    >>|cRXP_WARN_施放|r|T135953:0|t[恢复]|cRXP_WARN_和|r|T135940:0|t[真言术: 盾]|cRXP_WARN_然后回满蓝. 在棚屋前拉 2只|cRXP_ENEMY_鱼人|r, 跑开, 然后杀掉1只. 杀掉一只后马上跑开, 再杀另外一只|r<< Priest
    >>|cRXP_WARN_在棚屋前拉 2只|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_, 跑开, 然后|r|T136071:0|t[羊]|cRXP_WARN_一只再杀掉另一只. 再杀掉被|r|T136071:0|t羊|cRXP_WARN_的那只|r<< Mage
    >>|cRXP_WARN_攒到100怒气. 在棚屋前拉2只|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_, 跑开 并 保持|r|T132316:0|t[断筋]|cRXP_WARN_ 一只再杀掉另一只. 并使用|r|T133581:0|t[弹子球]|cRXP_WARN_于你正在杀的这只. 在杀掉一只后, 跑开并重置你用|T132316:0|t[断筋] 风筝的那只|r<< Warrior
    >>|cRXP_WARN_在棚屋前拉2只|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_, 跑开 并 集火杀掉其中一只. 当两只同时攻击你时使用|r|T136205:0|t[闪避]|cRXP_WARN_. 这是使用|r|T133581:0|t[弹子球]|cRXP_WARN_的好时机. 一旦杀掉一只后, 跑开并重置另一只|r<< Rogue
    >>|cRXP_WARN_在棚屋前拉2只|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_, 跑开 并 持续对其中一只施放|r|T136183:0|t[恐惧]|cRXP_WARN_, 并尝试保持两只怪的DOTs|r<< Warlock
    >>|cRXP_WARN_在棚屋前拉2只|r|cRXP_ENEMY_鱼人|r|cRXP_WARN_, 跑开 并 迅速击杀一只. 必要时施放|r|T135954:0|t[圣佑术]|cRXP_WARN_并治疗自己. 这是使用|r|T133581:0|t[弹子球]|cRXP_WARN_的好时机. 一旦杀掉一只后, 跑开并重置另一只|r<< Paladin
    >>|cRXP_WARN_记住当你施放|r|T135954:0|t[圣佑术]|cRXP_WARN_后你不能攻击|r<< Paladin
    .turnin 45 >> 提交 罗尔夫的下落
    .accept 71 >> 接受 回复托马斯
step
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>击杀|cRXP_ENEMY_觅食的灰狼|r和|cRXP_ENEMY_森林熊幼崽|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>拾取地上的|cRXP_LOOT_一捆木材|r.|cRXP_WARN_你一般能在树下找到它们|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员莱琳|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> 提交 木材危机
step
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> 升到9级
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> 接受 红色亚麻布
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵托马斯|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> 提交 保卫边境
    .turnin 71 >> 提交 回复托马斯
    .accept 39 >> 接受 托马斯的报告
    .accept 109 >> 接受 向格里安·斯托曼报到
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵托马斯|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> 提交 保卫边境
    .turnin 71 >> 提交 回复托马斯
    .accept 39 >> 接受 托马斯的报告
step
    #era
    #completewith next
    >>击杀|cRXP_ENEMY_迪菲亚强盗|r. 拾取|cRXP_LOOT_红色亚麻面罩|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>击杀|cRXP_ENEMY_公主|r. 拾取|cRXP_LOOT_黄铜项圈|r
    >>|cRXP_ENEMY_公主|r|cRXP_WARN_与两只|r|cRXP_ENEMY_随行小猪|r仇恨联动
    >>|cRXP_ENEMY_公主|r|cRXP_WARN_能施放|r|T132368:0|t[急速冲锋]|cRXP_WARN_造成大量伤害|r
    >>|cRXP_WARN_在攻击|cRXP_ENEMY_公主|r前, 攒到100怒气|r << Warrior
    >>|cRXP_WARN_确保|T136205:0|t[闪避]|cRXP_WARN_准备就绪. 如果有危险, 你可以利用围墙和飞刀来风筝怪物以争取时间.|r<< Rogue
    >>|cRXP_WARN_随时准备使用|r|T134830:0|t[次级治疗药水]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>|cRXP_WARN_点击链接查看视频|r<< !Warrior
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>击杀|cRXP_ENEMY_迪菲亚强盗|r. 拾取|T134939:0|t[|cRXP_LOOT_西部荒野地契|r]
    .use 1972>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_西部荒野地契|r] 并接受任务|r
    >>|cRXP_WARN_|r|T134939:0|t[|cRXP_LOOT_西部荒野地契|r]|cRXP_WARN_是稀有掉落. 如果打不到就跳过这步|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> 接受 法布隆的地契
step
    #era
    >>击杀|cRXP_ENEMY_迪菲亚强盗|r. 拾取|cRXP_LOOT_红色亚麻面罩|r
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
step
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> 升到9级多3400经验 3400+/6500xp
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> 提交 红色亚麻布
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> 升级到 4475+/6500xp
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> 前往赤脊山
step << !Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>|cRXP_WARN_待在主路上并避开路上的怪|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >> 开启赤脊山飞行点
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> 炉石回 闪金镇
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威廉·匹斯特|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> 提交 收集海藻
    .accept 114 >> 接受 梅贝尔的隐形水
    .target William Pestle
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> 上到旅馆二楼
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米歇尔·贝利|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>学习|T135966:0|t[急救]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >> 提交 托马斯的报告
    .turnin 76 >> 提交 玉石矿洞
    .accept 239 >> 接受 西泉要塞
    .accept 59 >> 接受 布甲和皮甲 << Warlock
    .accept 109 >> 接受 向格里安·斯托曼报到
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁匠阿古斯|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >> 接受 艾尔默的任务
step
    .xp 10 >> 升到10级
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>清理背包并修理装备
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target Ilsa Corbin
    .target Lyria Du Lac
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里瑞亚·杜拉克|r
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊尔莎·考宾|r
    .accept 1638 >> 接受 战士的训练
    .trainer >> 学习职业技能
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔海姆修士|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> 学习职业技能
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> 下到旅馆地下室
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛克西米利安·克洛文|r
    .target Maximillian Crowe
    .trainer >> 学习职业技能
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷门·玛考特|r
    .accept 1685 >> 接受 加科因的召唤
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>上到旅馆2楼
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target Priestess Josetta
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_女牧师洁塞塔|r
    .accept 5635 >> 接受 绝望祷言
    .trainer >> 学习职业技能
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔迪玛·维夫希尔特|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> 学习职业技能
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞恩·塞尔留斯|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> 学习职业技能
    >>|cRXP_WARN_学习|r|T132147:0|t[双武器]|cRXP_WARN_和|r|T132307:0|t[疾跑]|cRXP_WARN_. 不要学习其他技能. 存钱!|r
    .train 674 >>学习|T132147:0|t[双武器]
    .train 2983 >>学习|T132307:0|t[疾跑]
step << Rogue
    #som
    .goto Elwynn Forest,41.7,65.9
    .money >0.3197
    .vendor >>为副手购买卷刃的剑,因为你没有太多的钱.
step << Rogue
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科瑞娜·斯蒂利|r
    >>|cRXP_WARN_购买并装备|r|T135641:0|t[卷刃的剑]|cRXP_WARN_并装备在副手|r
    .target Corina Steele
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> 前往马科伦农场
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >> 提交 梅贝尔的隐形水
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88,1 >> 提交 公主必须死! << Rogue/Hunter
    .turnin 88,2 >> 提交 公主必须死! << Warrior/Paladin
    .turnin 88,3 >> 提交 公主必须死! << !Rogue !Hunter !Warrior !Paladin
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> 前往西泉要塞
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >> 提交 西泉要塞
    .accept 11 >> 接受 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450
    >>点击|cRXP_PICK_通缉告示|r
    .accept 176 >> 接受 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group >> 这一步应该组队完成. 小心!
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >> 提交 西泉要塞
    .accept 11 >> 接受 悬赏河爪豺狼人
    .goto Elwynn Forest,24.234,74.450
    >>点击|cRXP_PICK_通缉告示|r
    .accept 176 >> 接受 通缉：霍格
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >> 提交 西泉要塞
    .accept 11 >> 接受 悬赏河爪豺狼人
    .target Deputy Rainer
step
    #completewith GnollEnd
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r和|cRXP_ENEMY_河爪豺狼人前锋|r. 拾取|T134939:0|t[|cRXP_LOOT_采金日程表|r]
    .use 1307 >>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_采金日程表|r] 并接受任务|r
    >>|cRXP_WARN_|r|T134939:0|t[|cRXP_LOOT_采金日程表|r]|cRXP_WARN_是稀有掉落. 如果打不到就跳过这步|r
    >>|cRXP_WARN_稀有精英|r|cRXP_ENEMY_格拉夫·疾齿|r|cRXP_WARN_100%掉落|r[|cRXP_LOOT_采金日程表|r]
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> 接受 收货人
    .unitscan Gruff Swiftbite
step << !Warlock
    .group >> 这一步应该组队完成. 小心! >> 这一步应该组队完成. 小心!
    #completewith next
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r和|cRXP_ENEMY_河爪豺狼人前锋|r. 拾取|cRXP_LOOT_彩色豺狼人臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group >> 这一步应该组队完成. 小心! >> 这一步应该组队完成. 小心!
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
    >>击杀|cRXP_ENEMY_霍格|r. 拾取|cRXP_LOOT_巨大的豺狼人爪|r
    >>|cRXP_ENEMY_霍格|r|cRXP_WARN_有多个刷新点|r
    >>|cRXP_WARN_这个任务很难, 有需要可以组队. 如果找不到队伍或者你不能solo他,就跳过这步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #completewith next
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r和|cRXP_ENEMY_河爪豺狼人前锋|r. 拾取|cRXP_LOOT_彩色豺狼人臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
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
    >>击杀|cRXP_ENEMY_霍格|r. 拾取|cRXP_LOOT_巨大的豺狼人爪|r
    >>|cRXP_ENEMY_霍格|r|cRXP_WARN_有多个刷新点|r
    >>|cRXP_WARN_持续对|cRXP_ENEMY_霍格|r施放|r|T136183:0|t[恐惧]|cRXP_WARN_并用你的DoTs 击杀他|r
    >>|cRXP_WARN_这个任务很难. 如果需要可以组队. 如果找不到队伍或者你不能solo他,就跳过这步|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #label GnollEnd
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
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r和|cRXP_ENEMY_河爪豺狼人前锋|r. 拾取|cRXP_LOOT_彩色豺狼人臂章|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warrior
    .money >0.3129
    #era
    >>击杀|cRXP_ENEMY_矮小的河爪豺狼人|r和|cRXP_ENEMY_河爪豺狼人前锋|r
    >>|cRXP_WARN_Farm 31s 29c+ 价值的垃圾和G. 这是 学习投掷武器,双手锤,双手剑武器技能以及购买3级投掷武器与飞到暴风城的费用|r
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
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> 提交 通缉：霍格
    .isQuestComplete 176
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> 提交 收货人
    .isOnQuest 123 >> 此步已跳过: 缺少前置条件
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 11 >> 提交 悬赏河爪豺狼人
    .target Deputy Rainer
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> 前往西部荒野
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> 提交 法布隆的地契
    .isOnQuest 184 >> 此步已跳过: 缺少前置条件
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r和|cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 64 >> 接受 遗失的怀表
    .goto Westfall,59.95,19.35
    .accept 151 >> 接受 老马布兰契
    .accept 36 >> 接受 杂味炖肉
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫萨丁|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> 接受 清理荒野
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔玛·萨丁|r
    .turnin 36 >> 提交 杂味炖肉
    .target Salma Saldean
    .accept 38 >> 接受 杂味炖肉
    .accept 22 >>接受 猪肝馅饼
step
    #softcore
    #completewith next
    .deathskip >> 自杀并在|cRXP_FRIENDLY_灵魂医者|r处复活
    .target Spirit Healer
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >> 提交 向格里安·斯托曼报到
    .target Gryan Stoutmantle
    .accept 12 >> 接受 西部荒野人民军
step
    #era
    .goto Westfall,56.421,47.623
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹努文队长|r
    .accept 102 >> 接受 西部荒野的豺狼人
step << Human
    .goto Westfall,57.002,47.169
    .target Quartermaster Lewis
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_军需官路易斯|r
    .accept 6181 >> 接受 快递消息
    .vendor >>|cRXP_WARN_清理背包|r
step << Rogue
    #era
    .money >0.3152
    +|cRXP_WARN_Farm 到价值 31s 52c 的垃圾和G|r
step << Rogue
    #som
    .money >0.3197
    +Farm 到价值 31s 52c 的垃圾和G
    --Not taking into account Shipment q turnin money so its insurance money
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .turnin 6181 >> 提交 快递消息
    .accept 6281 >> 接受 赶赴暴风城
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fly Stormwind >> 飞往 暴风城
    .target Thor
step << Rogue
    #som
    >>进入建筑
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> 从萨尔曼·穆比处购买11级投掷武器, 并在可用时装备上
step << Rogue
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔曼·穆比|r
    .vendor >>|cRXP_WARN_购买并装备|r|T135641:0|t[平衡飞刀]
    .target Thurman Mullby
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61,1 >> 提交 送往暴风城的货物
    >>|cRXP_WARN_任务奖励选择|r|T132383:0|t[爆破火箭]|cRXP_WARN_它能造成不错的伤害, 还能用来仇恨分离. 相当他妈的好用.|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>|cRXP_WARN_点击链接查看视频 了解如何仇恨分离. 视频很短并无需费用|r
    .target Morgan Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吴平|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>学习 单手剑 << Rogue
    .trainer >>学习 法杖 << Warlock/Mage/Priest
    .trainer >>学习 双手剑 << Warrior/Paladin
    >>|cRXP_WARN_如果钱够就学习双手剑你必须为之后的步骤留出20s|r<< Warrior
    >>|cRXP_WARN_还有钱多就学习单手剑|r<< Mage/Warlock
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_冈瑟尔·维勒|r
    .target Gunther Weller
    .vendor >>|cRXP_WARN_购买一把|r|T135346:0|t[斗士短剑]|cRXP_WARN_并装备到主手上|r
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板奥里森|r
    .home >> 绑定炉石到 暴风城
    .target Innkeeper Allison
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往已宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .turnin 1685 >> 提交 加科因的召唤
    .target Gakin the Darkbinder
    .accept 1688 >> 接受 苏伦娜·凯尔东
step << Warlock
    #softcore
    .deathskip >> 自杀并在灵魂医者处复活. 你可以通过施放生命通道或者站在旁边的火堆上自杀
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> 离开暴风城. 前往闪金镇
step << Warlock
    .isOnQuest 123 >> 此步已跳过: 缺少前置条件
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176 >> 提交 通缉：霍格
    >>|cRXP_WARN_选择并装备|r|T135145:0|t[|cRXP_FRIENDLY_平衡长棍|r]
    .turnin 123 >> 提交 收货人
    .accept 147 >> 接受 猎杀收货人
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .turnin 176 >> 提交 通缉：霍格
    >>|cRXP_WARN_选择并装备|r|T135145:0|t[|cRXP_FRIENDLY_平衡长棍|r]
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .accept 147 >> 接受 猎杀收货人
step << Warlock
    .xp 11 >> 升到11级
step << Warlock
    #completewith LockVW
    .goto Elwynn Forest,71.0,80.8,150 >> 前往布莱克威尔南瓜田
    >>|cRXP_WARN_一路杀怪, 提升法杖技能|r
step << Warlock
    .isOnQuest 147 >> 此步已跳过: 缺少前置条件
    .goto Elwynn Forest,71.10,80.66
    >>击杀|cRXP_ENEMY_苏伦娜·凯尔东|r. 拾取|cRXP_LOOT_苏伦娜的项圈|r
    >>击杀|cRXP_ENEMY_收货人摩根|r. 拾取|cRXP_LOOT_收货人的戒指|r
    >>|cRXP_WARN_集火迅速击杀|cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对|cRXP_ENEMY_收货人摩根|r施放|r|T136183:0|t[恐惧]
    .complete 1688,1 --Surena's Choker (1)
    .complete 147,1 -- The Collector's Ring (1)
    .mob Surena Caledon
    .mob Morgan the Collector
step << Warlock
    #label LockVW
    .goto Elwynn Forest,71.10,80.66
    >>击杀|cRXP_ENEMY_苏伦娜·凯尔东|r. 拾取|cRXP_LOOT_苏伦娜的项圈|r
    >>|cRXP_WARN_集火迅速击杀|cRXP_ENEMY_苏伦娜·凯尔东|r|r
    >>|cRXP_WARN_持续对|cRXP_ENEMY_收货人摩根|r施放|r|T136183:0|t[恐惧]
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target Sara Timberlain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 59 >> 提交 布甲和皮甲
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> 前往赤脊山
    >>|cRXP_WARN_一路杀怪. 通过施放|T136163:0|t[吸取灵魂]确保你至少有2个|r|T134075:0|t[灵魂碎片]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵派克|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> 接受 豺狼人的入侵
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔顿副队长|r
    >>|cRXP_WARN_待在主路上并避免引怪|r
    .turnin 244 >> 提交 豺狼人的入侵
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fp Redridge Mountains >> 开启赤脊山飞行点
    .fly Stormwind >> 飞往 暴风城
    .target Ariena Stormfeather
step << Warlock
    .isQuestComplete 147
    #completewith next
    .goto Elwynn Forest,42.105,65.927,100 >> 离开暴风城. 前往闪金镇
step << Warlock
    .isQuestComplete 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官杜汉|r
    .turnin 147 >> 提交 猎杀收货人
step << Warlock
    #completewith TravelIF
    .isQuestTurnedIn 147
    .goto StormwindClassic,70.07,86.82
    .zone Stormwind City >> 前往暴风城
    .zoneskip Elwynn Forest,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往已宰的羔羊并楼下
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >> 学习职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .turnin 1688 >> 提交 苏伦娜·凯尔东
    .accept 1689 >> 接受 誓缚
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往已宰的羔羊最底层|r
    .cast 7728 >>|cRXP_WARN_使用|r|T133292:0|t[血石颈环]|cRXP_WARN_召唤|r|cRXP_ENEMY_召唤的虚无行者|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> 击杀|cRXP_ENEMY_召唤的虚无行者|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> 提交 誓缚
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >> 提交 赶赴暴风城
    .target Osric Strang
    .accept 6261 >> 接受 杜加尔·朗德瑞克
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈里·伯加德|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> 提交 战士的训练
    .accept 1639 >> 接受 醉鬼巴特莱比
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴特莱比|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> 提交 醉鬼巴特莱比
    .accept 1640 >> 接受 击败巴特莱比
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>攻击|cRXP_ENEMY_巴特莱比|r. 他会在1%血量时投降
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴特莱比|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> 提交 击败巴特莱比
    .accept 1665 >> 接受 巴特莱比的酒杯
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈里·伯加德|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> 提交 巴特莱比的酒杯
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> 前往暴风大教堂
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> 学习职业技能
    .turnin 5635 >> 提交 绝望祷言
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师劳瑞娜|r
    .train 13908 >>学习|T135954:0|t[绝望祷言]
    .target High Priestess Laurena
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >> 提交 艾尔默的任务
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .accept 353 >> 接受 雷矛的包裹
step << Warrior
    #completewith next
    +|cRXP_WARN_把|r|T132363:0|t[破甲]|cRXP_WARN_拖到动作条上并确保你经常用. 它比|T132282:0|t[英勇打击]有效的多|r
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯塔·深炉|r
    .vendor >>|cRXP_WARN_购买一把|r|T134708:0|t[矿工锄]|cRXP_WARN_. 你很快就会学习|r|T134708:0|t[采矿]
    .target Kaita Deepforge
step
    #label TravelIF
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> 前往矿道地铁. 坐地铁去铁炉堡
    >>|cRXP_WARN_在等地铁时可以升级|r|T135966:0|t[急救]
step
    >>|cRXP_WARN_地铁到站就上车. 到达铁炉堡后从中间站台下车找|cRXP_FRIENDLY_蒙提|r|r
    >>|cRXP_WARN_在等待时施放|r|T136221:0|t[召唤虚空行者]|cRXP_WARN_和|r|T135230:0|t[制造治疗石] << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒙提|r
    .accept 6661 >> 接受 捕捉矿道老鼠
    .target Monty
step
    .use 17117 >>|cRXP_WARN_|cRXP_WARN_对|r|cRXP_ENEMY_矿道老鼠|r使用|r|T133942:0|t[捕鼠者之笛]
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    .target Monty
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >> 提交 捕捉矿道老鼠
step
    .zone Ironforge >> 前往铁炉堡
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >> 开启铁炉堡飞行点
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比克斯|r和|cRXP_FRIENDLY布里维夫·石拳|r
    .train 2567 >>学习 投掷武器
    .goto Ironforge,62.237,89.628
    .train 199 >>学习 双手锤
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t下楼与|cRXP_FRIENDLY_布雷文·寒钢|r对话
    .vendor >>|cRXP_WARN_购买|r|T135641:0|t[平衡飞刀]
    .target Brenwyn Wintersteel

step << skip
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>跑出铁炉堡
    >>Equip your level 11 thrown << Warrior
step << skip
    #sticky
    #era
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>跑出铁炉堡
    >>Equip your level 3 thrown << Warrior

step
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.251,37.592,150 >> 离开铁炉堡
step
    #completewith next
    .goto Dun Morogh,46.005,48.637,50 >> 前往卡拉诺斯
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉兹·滑链|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> 接受 自动净化装置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森内尔·白须|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> 接受 霜鬃巨魔要塞
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.578,57.732,100,0
    .goto Dun Morogh,36.654,51.906,40,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> 接受 马克格拉恩的干肉
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>打开|cRXP_PICK_马克格拉恩的储肉柜|r. 拾取|cRXP_LOOT_马克格拉恩的干肉|r
    >>|cRXP_WARN_等|cRXP_ENEMY_老冰须|r走出洞穴后再进洞拾取|r|cRXP_PICK_马克格拉恩的储肉柜|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>|cRXP_WARN_点击链接查看视频|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_对|r|cRXP_ENEMY_老冰须|r|cRXP_WARN_施放|r|T136071:0|t[变形术] << Mage
    >>|cRXP_WARN_对|r|cRXP_ENEMY_老冰须|r|cRXP_WARN_施放|r|T136183:0|t[恐惧] << Warlock
    >>打开|cRXP_PICK_马克格拉恩的储肉柜|r. 拾取|cRXP_LOOT_马克格拉恩的干肉|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> 提交 马克格拉恩的干肉
step
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>击杀|cRXP_ENEMY_麻疯侏儒|r. 拾取|cRXP_LOOT_多档齿轮|r和|cRXP_LOOT_自适应齿轮|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> 前往霜鬃巨魔要塞
step
    #completewith next
    >>击杀|cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    >>|cRXP_WARN_下到这个位置来探索 霜鬃巨魔要塞. 如果下面有怪就正常清下去|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>击杀|cRXP_ENEMY_霜鬃猎头者|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #completewith next
    .goto Dun Morogh,45.846,49.365,150 >> 前往卡拉诺斯
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉兹·滑链|r
    .target Razzle Sprysprocket
    .turnin 412 >> 提交 自动净化装置
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_森内尔·白须|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> 提交 霜鬃巨魔要塞
    .accept 291 >> 接受 森内尔的报告
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> 接受 保护牲畜
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>从这边爬上山
step
    .goto Dun Morogh,62.6,46.1
    >>击杀|cRXP_ENEMY_瓦加什|r. 拾取|cRXP_LOOT_瓦加什的牙齿|r
    >>|cRXP_WARN_这个任务很难. 如果需要可以组队. 如果找不到队伍或者你不能solo他,就跳过这步|r
    >>|cRXP_WARN_在尝试击杀|cRXP_ENEMY_瓦加什|r前观看下面的视频. 它能被所以职业Solo|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击链接查看视频|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> 提交 保护牲畜
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格瑞姆|r
    .train 2550 >>学习|T133971:0|t[烹饪]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >>|cRXP_BUY_按需购买|r|T133968:0|t[刚出炉的面包] << Warrior/Rogue
    .vendor >>|cRXP_BUY_按需购买|r|T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r|T132815:0|t[冰镇牛奶] << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_参议员梅尔·圣石|r和|cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >> 接受 公众之仆
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> 接受 该死的石腭怪!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹克·利刃|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>学习|T134708:0|t[采矿]
step << Warrior/Paladin/Rogue
    .cast 2580 >>|cRXP_WARN_施放|r|T136025:0|t[寻找矿物]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>击杀|cRXP_ENEMY_石腭击颅者|r和|cRXP_ENEMY_石腭断骨者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step << !Warlock
    .xp 10+6350 >>升级到 6350+/7600
step << Warlock
    .xp 12
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头乔尼·石眉|r和|cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >> 提交 该死的石腭怪!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> 提交 公众之仆
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >>|cRXP_WARN_清理背包|r<< !Priest !Warlock !Mage
    .vendor >>|cRXP_BUY_购买 20个|r|T132815:0|t[冰镇牛奶] << Priest/Warlock/Mage
    .target Kazan Mogosh
step << !Warlock
    .xp 11 >>升到11级
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
    >>击杀|cRXP_ENEMY_癞爪|r. 拾取|cRXP_LOOT_肮脏的爪子|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>任务奖励选择匕首并装备到副手上直到你买到剑 << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >> 提交 驾驶员的复仇
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员塞克·锤足|r
    >>|cRXP_WARN_选择|r|T135641:0|t[|cRXP_FRIENDLY_工匠匕首|r]|cRXP_WARN_并装备到副手上|r<< Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> 提交 驾驶员的复仇
step
    .goto Dun Morogh,84.4,31.1,25 >> 前往洛克莫丹
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#era/som
<< Alliance
#name 11-13 洛克莫丹
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Human
#next 13-15 西部荒野

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_清理背包并修理装备|r
    .target Gothor Brumn
step
.group >> 这一步应该组队完成. 小心!
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >> 提交 雷矛的包裹
    .target Mountaineer Stormpike
    .accept 307 >> 接受 肮脏的爪子
    >>|cRXP_WARN_先不要接 卡尔·雷矛的订单|r
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >> 提交 雷矛的包裹
    .target Mountaineer Stormpike
    >>|cRXP_WARN_先不要接 卡尔·雷矛的订单|r
step
    #completewith ThelsamarFirst
    >>击杀|cRXP_ENEMY_老黑熊|r. 拾取|cRXP_LOOT_熊肉|r
    >>击杀|cRXP_ENEMY_山猪|r. 拾取|cRXP_LOOT_猪大肠|r
    >>击杀|cRXP_ENEMY_森林潜伏者|r. 拾取|cRXP_LOOT_蜘蛛的毒液|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_保留所有|r|T133970:0|t[大块野猪肉]|cRXP_WARN_之后会用来提升|T133971:0|t[烹饪]
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
    .abandon 1338 >> 放弃 卡尔·雷矛的订单. 这将解锁任务 巡山人卡尔·雷矛的任务 并给与550点免费经验
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雅尼·铁心|r
    .vendor >>|cRXP_WARN_如果需要的话, 购买 1到2个|r|T133634:0|t[棕色小包]
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .vendor 6734 >>|cRXP_BUY_购买|r20个|T133968:0|t[刚出炉的面包]<< Warrior/Rogue
    .vendor 6734 >>|cRXP_BUY_购买|r|T133968:0|t[刚出炉的面包]|cRXP_BUY_和|r|T132815:0|t[冰镇牛奶]|cRXP_BUY_. 最好是10个|r|T133968:0|t[刚出炉的面包]|cRXP_BUY_和 20个|r|T132815:0|t[冰镇牛奶] << !Warrior !Rogue
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
    >>|cRXP_WARN_|cRXP_FRIENDLY_巡山人卡德雷尔|r在穿过塞尔萨玛的路上巡逻|r
    .accept 416 >> 接受 狗头人的耳朵
    .accept 1339 >> 接受 巡山人卡尔·雷矛的任务
    .target Mountaineer Kadrell
step
    .group >> 这一步应该组队完成. 小心!
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
    .group >> 这一步应该组队完成. 小心!
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
    .group >> 这一步应该组队完成. 小心!
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> 前往银泉矿洞
step
    .group >> 这一步应该组队完成. 小心!
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_矿工联盟的储物箱|r. 拾取|cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_你能在矿洞中找到|cRXP_PICK_矿工联盟的储物箱|r|r
    >>|cRXP_WARN_你可以先跳过这个任务, 之后你还有机会完成.|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group >> 这一步应该组队完成. 小心!
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
    .vendor >>|cRXP_FRIENDLY_尼尔伦·安德玛|r|cRXP_WARN_出售限量物品|r|T133476:0|t[|cRXP_FRIENDLY_重型尖刺钉锤|r] 
    >>|cRXP_WARN_有钱就买, 钱不够就Fram附近的|cRXP_ENEMY_坑道鼠|r来买|r
    >>|cRXP_WARN_速度快点,别的玩家可能比你先购买|r
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
    >>|cRXP_WARN_确保你有10个|r|T132889:0|t[亚麻布]|cRXP_WARN_之后的职业任务会用到|r<< Paladin
    >>|cRXP_ENEMY_坑道鼠|r|cRXP_WARN_分布在整个洛克莫丹, 查看世界地图确认它们的位置|r
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
.group >> 这一步应该组队完成. 小心!
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
    >>|cRXP_FRIENDLY_巡山人卡德雷尔|r|cRXP_WARN_在一条穿越塞尔萨玛的路上巡逻|r
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
    >>|cRXP_WARN_购买|r|T135237:0|t[燧石和火绒]|cRXP_WARN_, 2个|r|T135435:0|t[普通木柴]|cRXP_WARN_.  购买|r|T133634:0|t[棕色小包]
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >> 开启 塞尔萨玛 飞行点
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >> 接受 保卫国王的领土
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格弗斯上尉|r他在碉堡里面
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
    >>击杀|cRXP_ENEMY_碎石穴居人|r和|cRXP_ENEMY_碎石怪斥候|r. 拾取|cRXP_LOOT_穴居人的石牙|r
    >>|cRXP_WARN_确保你有10个|r|T132889:0|t[亚麻布]|cRXP_WARN_之后的职业任务会用到|r<< Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7579
    .goto Loch Modan,32.7,76.5,0
    +Farm|cRXP_ENEMY_穴居人|r直到你有价值 75s 79c 的垃圾和G
step << Warlock
    #era
    .goto Loch Modan,32.7,76.5,0
    .xp 13+9600 >>升到13级多9600经验 9600+/11400xp
step << Warlock
    #som
    .xp 14-2520 >> 升到13级多8880经验
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
step << Warlock
    .xp 14 >> 升到14级
step
    #completewith next
    .hs >> 炉石回 暴风城
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_BUY_购买|r|T135468:0|t[烟尘魔杖]|cRXP_BUY_. 并在15级时装备上|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往已宰的羔羊 然后下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >> 学习职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
    .vendor >>|cRXP_BUY_买得起就购买|r|T133738:0|t[魔典：吞噬暗影（等级 1）]|cRXP_BUY_和|r|T133738:0|t[魔典：牺牲（等级 1）] 
    .target Spackle Thornberry
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> 前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔莎林|r
    .trainer >> 学习职业技能
    .target Elsharin
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> 前往暴风大教堂
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .accept 1641 >> 接受 圣洁之书
    .turnin 1641 >> 提交 圣洁之书
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    .use 6775>>|cRXP_WARN_使用|T133464:0|t[|cRXP_LOOT_圣洁之书|r] 并接受任务|r
    .accept 1642 >>接受 圣洁之书
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1642 >>提交 圣洁之书
    .accept 1643 >>接受 圣洁之书
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> 学习职业技能
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒修士|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> 学习职业技能
    .target Brother Joshua
step
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >> 提交 卡尔·雷矛的订单
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_'夜行者'奥斯伯|r
    .trainer >> 学习职业技能
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY武神|r或者|cRXP_FRIENDLY_伊尔莎·考宾|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> 学习职业技能
    .target Wu Shen
    .target Ilsa Corbin

step << Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >> 提交 圣洁之书
    .target Stephanie Turner
    .accept 1644 >> 接受 圣洁之书
    .turnin 1644 >> 提交 圣洁之书
    --.accept 1780 >> 接受 圣洁之书
step
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .turnin 6261 >> 提交 杜加尔·朗德瑞克
    .target Dungar Longdrink
    .accept 6285 >> 接受 返回西部荒野
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >> 飞往 西部荒野
    .target Dungar Longdrink
]])
