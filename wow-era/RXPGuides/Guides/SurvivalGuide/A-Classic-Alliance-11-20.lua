local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 13-15 西部荒野
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#defaultfor Human/Gnome/Dwarf/NightElf
#next 15-18 黑海岸

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> 前往西部荒野
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r
    .accept 64 >> 接受 遗失的怀表
    .accept 109 >> 接受 向格里安·斯托曼报到
step
    .goto Westfall,59.92,19.42
    .target Verna Furlbrow
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 36 >> 接受 杂味炖肉
    .accept 151 >> 接受 老马布兰契
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >> 前往萨丁农场
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫萨丁|r
    .accept 9 >> 接受 清理荒野
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔玛·萨丁|r
    .turnin 36 >> 提交 杂味炖肉
    .target Salma Saldean
    .accept 38 >> 接受 杂味炖肉
    .accept 22 >> 接受 猪肝馅饼
step << Human
    #label Lewis
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_军需官路易斯|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> 提交 返回西部荒野
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >> 提交 向格里安·斯托曼报到
    .isOnQuest 109 >> 此步已跳过: 缺少前置条件
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 12 >> 接受 西部荒野人民军
step
    #era
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹努文队长|r
    .accept 102 >> 接受 西部荒野的豺狼人
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斥候加里安|r
    .target Scout Galiaan
    .accept 153 >> 接受 红色皮质面罩
step << !Human
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斥候加里安|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> 接受 红色皮质面罩
step
    .goto Westfall,52.86,53.71
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板希瑟尔|r
	>> |cRXP_BUY_购买必需的食物和水|r << !Warrior !Rogue
	>> |cRXP_BUY_购买必需的食物|r << Warrior/Rogue
    .vendor >> |T133918:0|t[长嘴泥鳅]|cRXP_WARN_非常划算|r
	.target Innkeeper Heather
step
	#completewith bennytime
    >> 打开地上的|cRXP_PICK_一袋燕麦|r. 拾取|cRXP_LOOT_一捧燕麦|r
    >> |cRXP_WARN_你通常能在农田栅栏或者建筑物边上找到|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >> 击杀|cRXP_ENEMY_幼年血牙野猪|r和|cRXP_ENEMY_小碎尸鸟|r. 拾取|cRXP_LOOT_秃鹫肉条|r, |cRXP_LOOT_血牙野猪的头|r和|cRXP_LOOT_血牙野猪的肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
    >> 击杀|cRXP_ENEMY_迪菲亚捕兽者|r和|cRXP_ENEMY_迪菲亚走私者|r. 拾取|cRXP_LOOT_红色皮质面罩|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >> 打开|cRXP_PICK_法布隆的柜子|r. 拾取|cRXP_LOOT_法布隆的怀表|r
    >> |cRXP_WARN_如果你的视角正确你能从外面打开|cRXP_PICK_法布隆的柜子|r|r
	>> |cRXP_WARN_注意|cRXP_ENEMY_本尼·布兰科|r. 他攻击很高|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#completewith next
    >> 打开地上的|cRXP_PICK_一袋燕麦|r. 拾取|cRXP_LOOT_一捧燕麦|r
	>> |cRXP_WARN_你通常能在农田栅栏或者建筑物边上找到|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >> 击杀|cRXP_ENEMY_河爪豺狼人|r和|cRXP_ENEMY_河爪斥候|r. 拾取|cRXP_LOOT_豺狼人的爪子|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >> 击杀|cRXP_ENEMY_鱼人劫掠者|r和|cRXP_ENEMY_滩行鱼人|r. 拾取|cRXP_LOOT_鱼人的眼球|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >> 打开地上的|cRXP_PICK_一袋燕麦|r. 拾取|cRXP_LOOT_一捧燕麦|r
	>> |cRXP_WARN_你通常能在农田栅栏或者建筑物边上找到|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r和|cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >> 提交 遗失的怀表
    .goto Westfall,59.95,19.35
    .turnin 151 >> 提交 老马布兰契
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    #som
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫法布隆|r和|cRXP_FRIENDLY_弗娜·法布隆|r
    .turnin 64 >> 提交 遗失的怀表
    .goto Westfall,59.95,19.35
    .turnin 151 >> 提交 老马布兰契
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔玛·萨丁|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> 提交 猪肝馅饼
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫萨丁|r
    .vendor
    >> |cRXP_WARN_不要卖掉|T133884:0|t[鱼人的眼球], |T135997:0|t[血牙野猪的头], |T134341:0|t[血牙野猪的肝]和|T133972:0|t[秃鹫肉条]|r
	.target Farmer Saldean
step
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >> 击杀|cRXP_ENEMY_看守傀儡|r. 拾取|cRXP_LOOT_灯油|r和|cRXP_LOOT_秋葵|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
    >> 击杀|cRXP_ENEMY_幼年血牙野猪|r和|cRXP_ENEMY_小碎尸鸟|r. 拾取|cRXP_LOOT_秃鹫肉条|r, |cRXP_LOOT_血牙野猪的头|r和|cRXP_LOOT_血牙野猪的肝|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_农夫萨丁|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> 提交 清理荒野
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔玛·萨丁|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> 提交 杂味炖肉
    .turnin 22 >> 提交 猪肝馅饼
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> 提交 西部荒野人民军
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> 接受 迪菲亚兄弟会
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丹努文队长|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> 提交 西部荒野的豺狼人
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斥候加里安|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> 提交 红色皮质面罩
step << Druid
    .goto Westfall,32.6,22.6,30,0
    .goto Westfall,38.8,18.2,30,0
    .goto Westfall,41.0,12.0,30,0
    .goto Westfall,47.6,9.0,30,0
    .goto Westfall,51.8,9.4,30,0
    .goto Westfall,32.6,22.6
    .goto Westfall,38.8,18.2,0
    .goto Westfall,41.0,12.0,0
    .goto Westfall,47.6,9.0,0
    .goto Westfall,51.8,9.4,0
    .xp 16 >> 在西部荒野刷螃蟹到16级
step << Dwarf !Paladin/Gnome
    #label end
    #completewith next
    .hs >> 炉石回塞尔萨玛

step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
    .goto Loch Modan,33.94,50.95
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >> 飞往铁炉堡
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fly Ironforge >> 飞往铁炉堡
    .target Thor
step << !NightElf
    .goto Ironforge,55.093,58.269
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼莎·火石|r
    >>升级|T135966:0|t[急救]
    .train 3274 >> 学习中级急救
    .target Nissa Firestone
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比克斯|r
    .train 176 >> 学习投掷武器
    .target Bixi Wobblebonk
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔杜克·凝眉|r
    .trainer >> 学习职业技能
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> 上楼找|cRXP_FRIENDLY_穆里顿·热炉|r
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆里顿·热炉|r
    .turnin 1784 >> 提交 圣洁之书
    .accept 1785 >> 接受 圣洁之书
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1785 >> 提交 圣洁之书
    .target Tiza Battleforge
step
    .goto Ironforge,39.553,57.478
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >> 提交 森内尔的报告
    .target Senator Barin Redstone
    .isOnQuest 291 >> 此步已跳过: 缺少前置条件
step << !NightElf
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>离开铁炉堡
step << !NightElf
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> 前往丹莫罗 -> 湿地跳跃点
step << !NightElf
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
    >> |cRXP_WARN_请先参考如何快速安全的到达湿地的视频指南|r
    >> |cRXP_WARN_无死亡丹莫罗到湿地|r
    >> |cRXP_WARN_穿越水域时注意避开|cRXP_ENEMY_湿地鳄鱼|r和|cRXP_ENEMY_鱼人|r|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_点击此处观看视频指导|r
    .goto Wetlands,12.1,60.3,80 >> 前往米奈希尔港
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << !NightElf
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
    >> |cRXP_WARN_这是限量供应物品. 如果|cRXP_FRIENDLY_尼尔·奥雷|r处没有刷新, 就跳过这步.|r
	.target Neal Allen
    .bronzetube
step << !NightElf
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cFF00FF25萨莫尔·菲斯蒂沃斯|r对话
    .vendor >> |cRXP_BUY_购买尽可能多的|r |T134831:0|t[治疗药水]
    >> |cRXP_WARN_这是限量供应物品. 如果|cFF00FF25萨莫尔·菲斯蒂沃斯|r处没有刷新, 就跳过这步.|r
    .target Samor Festivus
step << !NightElf
    .goto Wetlands,9.49,59.69
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Wetlands>> 开启湿地飞行点
    .target Shellei Brondir
step << Hunter !NightElf
	.goto Wetlands,11.334,59.554
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆恩达·德斯|r
    >> |cRXP_WARN_购买|r |T135612:0|t[大口径短枪]
    >>买不起就跳过这步
	.collect 3023,1 -- Large Bore Blunderbuss
    .target Murndan Derth
step << !NightElf
    .goto Wetlands,7.95,56.38
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德温·晨光|r
    .vendor >> |cRXP_BUY_购买尽可能多的|r |T134831:0|t[治疗药水]
    >> |cRXP_WARN_这是限量供应物品. 如果|cRXP_FRIENDLY_德温·晨光|r处没有刷新, 就跳过这步.|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> 前往米奈希尔港 码头. 等待坐船去黑海岸
step << !NightElf
    .zone Darkshore >> 乘船前往黑海岸
    >> |cRXP_WARN_在等待去黑海岸的船时|r|cRXP_WARN_升级|r|T135966:0|t[急救]|cRXP_WARN_和|r|T133971:0|t[烹饪] 
    >> |cRXP_WARN_用之前打的|r|T133970:0|t[大块野猪肉]|cRXP_WARN_升级|r|T133971:0|t[烹饪]|cRXP_WARN_最好升到10点以上|r
step << NightElf !Druid
    .goto Westfall,56.556,52.643
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fp Westfall >> 开启西部荒野飞行点
    .fly Stormwind >> 飞往暴风城
    .target Thor
step << Druid
	#completewith next
	.cast 18960 >> 施放 传送: 月光林地
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,44.1444,45.227
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .skipgossip 1
    .fly Teldrassil >> 飞往鲁瑟兰村
    .target Silva Fil'naveth
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step << Druid
    .goto Darnassus,35.375,8.405
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 6121 >> 接受 新的课程
    .accept 26 >> 接受 必修的课程
    .trainer >> 学习职业技能
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> 施放 传送: 月光林地
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_德迪利特·星焰|r对话
    .turnin 6121 >> 提交 新的课程
    .accept 6122 >> 接受 毒水之源
    .turnin 26 >> 提交 必修的课程
    .accept 29 >> 接受 湖中试炼
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >> 跳入月神湖
    >> 打开|cRXP_PICK_神殿灵珠容器|r. 拾取|cRXP_LOOT_神殿灵珠|r
    >> |cRXP_WARN_有可能刷新在水下多个地点|r
    .complete 29,1 --Complete the Trial of the Lake.
-- needs testing properly etc
step << Druid
    .goto Moonglade,36.517,40.104
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔加里|r
    .turnin 29 >> 提交 湖中试炼
    .target Tajarri
    .accept 272 >> 接受 海狮试炼
step << NightElf Priest
    .goto StormwindClassic,38.550,26.853
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒修士|r
    .trainer >> 学习职业技能
    .target Brother Joshua
step << NightElf Warrior
    .goto StormwindClassic,57.547,57.076
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_冈瑟尔·维勒|r
    .vendor >> |cRXP_BUY_买得起就购买|r |T133046:0|t[巨型石锤]
    .target Gunther Weller
step << NightElf Rogue
    .goto StormwindClassic,57.547,57.076
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_冈瑟尔·维勒|r
    .vendor >> |cRXP_BUY_如果买得起就|r|cRXP_BUY_购买|r |T133052:0|t[重型钉锤]
    .target Gunther Weller
step << NightElf Rogue
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吴平|r
    .target Woo Ping
    .goto StormwindClassic,57.130,57.704
    .train 201 >> 学习单手剑
step << NightElf Hunter
    .goto StormwindClassic,49.990,57.641
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >> |cRXP_BUY_购买|r|T135490:0|t[强化弓]
    >> |cRXP_BUY_补满|r|T132382:0|t[锋利的箭]
    .collect 3026,1
    .target Frederick Stover
step << NightElf
    .goto StormwindClassic,43.065,26.156
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_珊娜·弗勒|r
    >>升级|T135966:0|t[急救]
    .train 3274 >> 学习中级急救
    .target Shaina Fuller
step << NightElf Warrior
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r或者|cRXP_FRIENDLY_伊尔莎·考宾|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> 学习职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    .goto StormwindClassic,74.64,52.82
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >> 学习职业技能
    .target Osborne the Night Man
step << NightElf Hunter
    .goto StormwindClassic,61.609,15.269
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >> 学习职业技能
    .target Einris Brightspear
step << NightElf
    .hs >> 炉石回奥伯丁
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 15-18 黑海岸
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
--#defaultfor !NightElf
#next 18-19 洛克莫丹

step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >> 接受 搁浅的巨兽
step << !NightElf
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r
	.target Caylais Moonfeather
    .goto Darkshore,36.336,45.574
    .fp Auberdine >> 开启奥伯丁飞行点
step << !NightElf
    .goto Darkshore,37.04,44.13
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板莎希因|r
    .home >> 绑定炉石到奥伯丁
    .target Innkeeper Shaussiy
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> 上楼找|cRXP_FRIENDLY_维兹班恩·曲针|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >> 接受 传声盒827号
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >> 接受 瘟疫蔓延
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >> 接受 熊怪的威胁
    .target Terenthis
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >> 击杀|cRXP_ENEMY_小潮行蟹|r和|cRXP_ENEMY_暗礁蟹幼崽|r. 拾取|cRXP_LOOT_蟹腿|r
    >> |cRXP_WARN_你可能需要下水来获取它们|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >> 点击|cRXP_PICK_搁浅的海洋生物|r并拾取|cRXP_LOOT_海洋生物的骸骨|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>找到熊怪营地
    .complete 984,1 -- 找到一处腐化熊怪的营地
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >> |cRXP_WARN_对|r|cRXP_ENEMY_狂暴蓟熊|r|cRXP_WARN_使用|r|T134335:0|t[萨纳瑞恩的希望]
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >> 击杀|cRXP_ENEMY_小潮行蟹|r和|cRXP_ENEMY_暗礁蟹幼崽|r. 拾取|cRXP_LOOT_蟹腿|r
    >> |cRXP_WARN_你可能需要下水来获取它们|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >> 点击地上的|cRXP_PICK_传声盒827号|r
    .turnin 983 >> 提交 传声盒827号
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >> 点击地上的|cRXP_PICK_传声盒827号|r
    .accept 1001 >> 接受 传声盒411号
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >> 提交 搁浅的巨兽
    .accept 4681 >> 接受 搁浅的巨兽
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> 前往码头找|cRXP_FRIENDLY_塞瑞利恩·白爪|r
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >> 接受 永志不渝
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> 前往码头的尽头并跳入水中
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >> 击杀|cRXP_ENEMY_黑海岸蛇颈龙|r. 拾取|cRXP_LOOT_蛇颈龙的眼球|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >> 点击|cRXP_PICK_海龟骨头|r拾取|cRXP_LOOT_海龟的残骸|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >> 提交 搁浅的巨兽
    .target Gwennyth Bly'Leggonde
step
.group >> 这一步应该组队完成, 小心!!
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞萨斯·月影|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> 接受 洞中的蘑菇
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >> 接受 红色水晶
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >> 提交 瘟疫蔓延
    .accept 2138 >> 接受 清除疫病
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >> 提交 熊怪的威胁
    .accept 985 >> 接受 熊怪的威胁
    .accept 4761 >> 接受 桑迪斯·织风
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高尔博多·钢手|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >> 接受 深不可测的海洋
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >> 提交 桑迪斯·织风
    .accept 4762 >> 接受 壁泉河
    .accept 958 >> 接受 上层精灵的工具
    .accept 954 >> 接受 巴莎兰
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >> 击杀|cRXP_ENEMY_黑海岸蛇颈龙|r. 拾取|cRXP_LOOT_蛇颈龙的眼球|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> 游到沉没的银色清晨号附近
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >> |cRXP_WARN_从底部的破洞进入沉没的银色清晨号. 在下潜和进船前确保自己憋足了气|r
    >>拾取地上的|cRXP_LOOT_银色清晨号的保险箱|r
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> 游到沉没的迷雾之纱号附近
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >> |cRXP_WARN_从底部的破洞进入沉没的迷雾之纱号. 在下潜和进船前确保自己憋足了气|r
    >>拾取地上的|cRXP_LOOT_迷雾之纱号的保险箱|r
    .complete 982,2
step
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >> 击杀|cRXP_ENEMY_黑海岸蛇颈龙|r. 拾取|cRXP_LOOT_蛇颈龙的眼球|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >> 点击地上的|cRXP_PICK_传声盒411号|r
    .turnin 1001 >> 提交 传声盒411号
    .accept 1002 >> 接受 传声盒323号
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >> 点击|cRXP_PICK_搁浅的海洋生物|r
    .accept 4723 >> 接受 搁浅的海洋生物
step << Druid
    #completewith cure1
    >>收集5个|T134187:0|t[地根草]
    .collect 2449,5,6123,1
step
    #completewith Ameth
    >> 击杀|cRXP_ENEMY_森林陆行鸟|r和|cRXP_ENEMY_森林陆行鸟雏鸟|r. 拾取|cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >> 击杀|cRXP_ENEMY_月夜猛虎|r和|cRXP_ENEMY_月夜猛虎幼崽|r. 拾取|cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >> 击杀|cRXP_ENEMY_狂暴蓟熊|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >> 点击|cRXP_PICK_搁浅的海龟|r
    .accept 4725 >> 接受 搁浅的海龟
step
    .goto Darkshore,50.81,25.50
    .use 12350 >> |cRXP_WARN_在碧泉河瀑布的底部|r|cRXP_WARN_使用|r |T134865:0|t[空的水样试管] 
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> 前往巴莎兰
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
    >> |cRXP_WARN_避免击杀沿途的|cRXP_ENEMY_野生劣魔|r和|cRXP_ENEMY_恶灵劣魔|r|r
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
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
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
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >> 提交 巴莎兰
    .accept 957 >> 接受 巴莎兰
    .target Asterion
step << !NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >> 击杀|cRXP_ENEMY_月夜枭兽|r. 拾取|T132832:0|t[|cRXP_LOOT_小蛋|r]
    >> |cRXP_WARN_一会你将用|T132832:0|t[|cRXP_LOOT_小蛋|r]把|r |T133971:0|t[烹饪] |cRXP_WARN_升到10|r
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    >>前往|cRXP_PICK_红色水晶|r
    .complete 4811,1
step << NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>前往|cRXP_PICK_红色水晶|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >> 击杀|cRXP_ENEMY_月夜枭兽|r. 拾取|T132832:0|t[|cRXP_LOOT_小蛋|r]
    .collect 6889,10,2178,1,0x20,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >> 向南在亚米萨兰找|cRXP_FRIENDLY_哨兵坦莎·月刃|r
step
    #label Ameth
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵坦莎·月刃|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> 接受 亚米萨兰的毁灭
step
    #completewith TheLay
    >> 击杀|cRXP_ENEMY_安娜雅·晨路|r. 拾取|cRXP_LOOT_安娜雅的坠饰|r
    >> |cRXP_ENEMY_安娜雅·晨路|r|cRXP_WARN_围绕亚米萨兰巡逻|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >> 击杀|cRXP_ENEMY_被诅咒的精灵贵族|r, |cRXP_ENEMY_挣扎的精灵贵族|r和|cRXP_ENEMY_哀嚎的精灵贵族|r. 拾取|cRXP_LOOT_上层精灵的遗物|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >> 点击|cRXP_PICK_亚米萨兰的毁灭|r
    .complete 953,2 -- 亚米萨兰的毁灭
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >> 点击|cRXP_PICK_远古火焰|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >> 点击|cRXP_PICK_亚米萨兰的衰落|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >> 击杀|cRXP_ENEMY_安娜雅·晨路|r. 拾取|cRXP_LOOT_安娜雅的坠饰|r
    >> |cRXP_ENEMY_安娜雅·晨路|r|cRXP_WARN_围绕亚米萨兰巡逻|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
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
    >> 击杀|cRXP_ENEMY_安娜雅·晨路|r. 拾取|cRXP_LOOT_安娜雅的坠饰|r
    >> |cRXP_ENEMY_安娜雅·晨路|r|cRXP_WARN_围绕亚米萨兰巡逻. 她的刷新时间特别长, 如果她没有刷新, 可以跳过这步|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >> 提交 亚米萨兰的毁灭
step
    #era/som
    #completewith ReturnAuber
    >> 击杀|cRXP_ENEMY_月夜猛虎|r和|cRXP_ENEMY_月夜猛虎幼崽|r. 拾取|cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >> 击杀|cRXP_ENEMY_森林陆行鸟|r和|cRXP_ENEMY_森林陆行鸟雏鸟|r. 拾取|cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >> 击杀|cRXP_ENEMY_狂暴蓟熊|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >> 击杀|cRXP_ENEMY_黑木寻路者|r和|cRXP_ENEMY_黑木风语者|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >> 刷到16级

step
#map Darkshore
    .goto Felwood,19.64,39.52
    >> 点击|cRXP_PICK_搁浅的海龟|r
    .accept 4722 >> 接受 搁浅的海龟
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >> 点击|cRXP_PICK_搁浅的海洋生物|r
    .accept 4728 >> 接受 搁浅的海洋生物
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >> 击杀|cRXP_ENEMY_狂暴蓟熊|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >> 击杀|cRXP_ENEMY_森林陆行鸟|r和|cRXP_ENEMY_森林陆行鸟雏鸟|r. 拾取|cRXP_LOOT_陆行鸟肉|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >> 前往奥伯丁
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古博·布拉普|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .accept 1138 >> 接受 海中的水果
step
#map Darkshore
    #label ManyBeached
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >> 提交 搁浅的海洋生物
    .turnin 4728 >> 提交 搁浅的海洋生物
    .turnin 4722 >> 提交 搁浅的海龟
    .turnin 4725 >> 提交 搁浅的海龟
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> 前往码头寻找|cRXP_FRIENDLY_塞瑞利恩·白爪|r
step
#map Darkshore
	.isQuestComplete 963
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞瑞利恩·白爪|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >> 提交 永志不渝
step << !NightElf !Mage !Paladin !Warlock
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >> 乘船前往达纳苏斯
    .zoneskip Darnassus
step << !NightElf !Mage !Paladin !Warlock
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
    .trainer >> 学习职业技能
    .target Jocaste
step << !NightElf Priest
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
    .goto Darnassus,37.901,82.742
    .trainer >> 学习职业技能
    .target Jandria
step << !NightElf Warrior
    .goto Darnassus,58.945,35.336
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25达纳斯·刃咏|r
    .trainer >> 学习职业技能
    .target Darnath Bladesinger
step << !NightElf Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在树屋内与|cRXP_FRIENDLY_塞尤娜|r对话
    .trainer >> 学习职业技能
    .target Syurna
step << !NightElf Hunter/!NightElf Warrior
    #sticky
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 264 >> 学习弓
    .train 227 >> 学习法杖
    .target Ilyenia Moonfire
step << !NightElf !Mage !Paladin !Warlock
    .goto Darnassus,30.7,41.3,15 >> 穿过紫色传送门回到鲁瑟兰村
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !NightElf !Mage !Paladin !Warlock
    .goto Teldrassil,58.39,94.01
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >> 飞往黑海岸
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高尔博多·钢手|r
    +购买|T134059:0|t[甜香料]
    >> |cRXP_WARN_用|r |T134059:0|t[甜香料] |cRXP_WARN_和|r|T132832:0|t[小蛋]|cRXP_WARN_制作草药烘蛋. 直到烹饪达到10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cRXP_WARN_用|r |T134059:0|t[甜香料] |cRXP_WARN_和|r|T132832:0|t[小蛋]|cRXP_WARN_制作草药烘蛋. 直到烹饪达到10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高尔博多·钢手|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >> 提交 深不可测的海洋
step
    #label ezstrider
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰达利亚·夜歌|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> 接受 炖陆行鸟
    .turnin 2178 >> 提交 炖陆行鸟
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >> 提交 上层精灵的工具
    .turnin 4762 >> 提交 壁泉河
    .accept 4763 >> 接受 黑木熊怪的堕落
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >> 提交 红色水晶
    .accept 4812 >> 接受 清洗水晶
step
#sticky
#label tube1
    .goto Darkshore,37.78,44.06
    .use 14338 >> |cRXP_WARN_在奥伯丁月亮井|r|cRXP_WARN_使用|r|T134865:0|t[空水瓶] 
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >> |cRXP_WARN_在奥伯丁月亮井|r|cRXP_WARN_使用|r|T133748:0|t[空的净化碗]
    .collect 12347,1,4763,1
step
#requires tube1
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >> 提交 清除疫病
    .accept 2139 >> 接受 萨纳瑞恩的希望
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >> 提交 熊怪的威胁
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .accept 986 >> 接受 丢失的主人
    .group >> 这一步应该组队完成, 小心!!
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_哨兵艾丽莎·星风|r对话
    .accept 965 >> 接受 奥萨拉克斯之塔
    .target Sentinel Elissa Starbreeze
step
    #era/som
    #completewith CliffCave
    >> 击杀|cRXP_ENEMY_月夜猛虎|r和|cRXP_ENEMY_月夜猛虎幼崽|r. 拾取|cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> 再次前往红色水晶
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >> 点击|cRXP_PICK_红色水晶|r
    .turnin 4812 >> 提交 清洗水晶
    .accept 4813 >> 接受 水晶中的碎骨
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,70 >> 前往巴莎兰寻找|cRXP_FRIENDLY_阿斯特利安|r
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯特利安|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >> 提交 巴莎兰
step << Paladin
    .goto Darkshore,50.74,34.68
	>> 击杀|cRXP_ENEMY_黑木战士|r和|cRXP_ENEMY_黑木图腾师|r. 拾取|T132889:0|t[亚麻布]
    >> |cRXP_WARN_为了之后的|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_职业任务|r|cRXP_WARN_你需要留存10个|r|T132889:0|t[亚麻布]
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,50.66,34.94
    >> 打开|cRXP_PICK_黑木谷物|r. 拾取|cRXP_LOOT_黑木谷物|r
    >> |cRXP_WARN_拾取黑木谷物会刷新2只|cRXP_ENEMY_黑木熊怪|r 它们会进入战斗并跑向你. 做好战斗准备或者逃跑|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >> 击杀|cRXP_ENEMY_雌蓟熊|r
    >> |cRXP_WARN_注意!|cRXP_ENEMY_小蓟熊|r 能眩晕你2秒|r
    .complete 2139,1 --雌蓟熊 (1)
    .mob 雌蓟熊
    .mob Thistle Cub
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,51.83,33.50
    >> 打开|cRXP_PICK_黑木坚果|r. 拾取|cRXP_LOOT_黑木坚果|r
    >> |cRXP_WARN_拾取黑木坚果会刷新2只|cRXP_ENEMY_黑木熊怪|r 它们会进入战斗并跑向你. 做好战斗准备或者逃跑|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
.group >> 这一步应该组队完成, 小心!!
    #label Fruit
    .goto Darkshore,52.86,33.41
    >> 打开|cRXP_PICK_黑木水果|r. 拾取|cRXP_LOOT_黑木水果|r
    >> |cRXP_WARN_拾取黑木水果会刷新2只|cRXP_ENEMY_黑木熊怪|r 它们会进入战斗并跑向你. 做好战斗准备或者逃跑|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
.group >> 这一步应该组队完成, 小心!!
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_在|cRXP_PICK_骨火处|r|cRXP_WARN_使用|r|T134712:0|t[装满水的净化碗]以召唤|r|cRXP_ENEMY_萨巴克希斯|r
    .timer 17,黑木熊怪的堕落 RP
    .use 12347
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,52.38,33.39
    >> 击杀|cRXP_ENEMY_萨巴克希斯|r. 打开掉在地上的|cRXP_PICK_萨巴克希斯的恶魔之包|r. 拾取|cRXP_LOOT_堕落护符|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
.group >> 这一步应该组队完成, 小心!! << !Druid
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Winterspring,5.49,36.64,35 >> 前往璧泉河洞穴
step << Druid
    >> |cRXP_WARN_在洞穴入口处的水中|r|cRXP_WARN_使用|r|T134776:0|t[空的峭壁之泉取样器] 
    .goto Darkshore,54.80,33.16
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,55.66,34.89
    >>拾取地上的|cRXP_LOOT_粗柄蘑菇|r和|cRXP_LOOT_毒帽蘑菇|r
    >> |cRXP_WARN_待在上层. 如果|cRXP_LOOT_毒帽蘑菇|r顶层的顶端, 再下去拾取一个|r
    >> |cRXP_WARN_不要面对墙壁! |cRXP_ENEMY_雷鳞御浪者|r能把你击退到洞底!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
.group >> 这一步应该组队完成, 小心!!
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >> 离开璧泉河洞穴
step
    #completewith next
    >> 击杀|cRXP_ENEMY_月夜猛虎|r和|cRXP_ENEMY_月夜猛虎幼崽|r. 拾取|cRXP_LOOT_月夜猛虎的牙齿|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴苏尔·影击|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >> 提交 奥萨拉克斯之塔
    .accept 966 >> 接受 奥萨拉克斯之塔
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >> 击杀|cRXP_ENEMY_暗滩狂热者|r. 拾取|cRXP_LOOT_破旧的羊皮纸|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >> 击杀|cRXP_ENEMY_暗滩狂热者|r. 拾取|cRXP_LOOT_破旧的羊皮纸|r和|T132889:0|t[亚麻布]
    >> |cRXP_WARN_为了之后的|r |T626003:0|t|cFFF48CBA圣骑士|r |cRXP_WARN_职业任务|r|cRXP_WARN_你需要留存10个|r|T132889:0|t[亚麻布]
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴苏尔·影击|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >> 提交 奥萨拉克斯之塔
    .accept 967 >> 接受 奥萨拉克斯之塔
step
.group 3
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> 前往薄雾海
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2098 >> 接受 基尔卡克的钥匙
    .target Gelkak Gyromast
step
.group 3
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >> 击杀|cRXP_ENEMY_狂暴暗礁蟹|r和|cRXP_ENEMY_硬壳潮行蟹|r. 拾取|cRXP_LOOT_基尔卡克钥匙的尾部|r
    >> |cRXP_WARN_注意|cRXP_ENEMY_狂暴暗礁蟹|r的|T132152:0|t[痛击]技能. 能造成200点瞬间伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    .goto Darkshore,54.93,12.19
    >> 击杀|cRXP_ENEMY_灰雾神谕者|r和|cRXP_ENEMY_灰雾猎潮者|r. 拾取|cRXP_LOOT_基尔卡克钥匙的中部|r
    >> |cRXP_WARN_注意|cRXP_ENEMY_灰雾神谕者|r的|T136048:0|t[闪电箭]还有|T136052:0|t[治疗波]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
.group 3
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >> 击杀|cRXP_ENEMY_狂暴暗礁蟹|r和|cRXP_ENEMY_硬壳潮行蟹|r. 拾取|cRXP_LOOT_基尔卡克钥匙的尾部|r
    >> |cRXP_WARN_注意|cRXP_ENEMY_狂暴暗礁蟹|r的|T132152:0|t[痛击]技能. 能造成200点瞬间伤害|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >> 击杀|cRXP_ENEMY_凶猛的森林陆行鸟|r. 拾取|cRXP_LOOT_基尔卡克钥匙的头部|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >> 击杀|cRXP_ENEMY_月夜雄虎|r和|cRXP_ENEMY_月夜雌虎|r. 拾取|cRXP_LOOT_优质月夜猛虎毛皮|r和|cRXP_LOOT_月夜猛虎的牙齿|r
    >> |cRXP_WARN_注意|cRXP_ENEMY_月夜雌虎|r会带1只|cRXP_ENEMY_月夜猛虎幼崽|r进入战斗
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002 >> 此步已跳过: 缺少前置条件
step
.group 3
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2098 >> 提交 基尔卡克的钥匙
    .accept 2078 >> 接受 基尔卡克的报复
    .target Gelkak Gyromast
step
.group 3
#map Darkshore
    .goto Winterspring,5.59,21.09,10,0
    .goto Winterspring,6.37,16.66
    >> 对话|cRXP_FRIENDLY_机械打手4100型|r以开启护送任务
    >>Escort |cRXP_FRIENDLY_机械打手4100型|r to |cRXP_FRIENDLY_基尔卡克·旋杆|r
    >> 击杀|cRXP_ENEMY_机械打手4100型|r
    >> |cRXP_WARN_这个任务非常难|r
    .skipgossip
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> |cRXP_WARN_点击此处观看视频指导|r
    .mob The Threshwackonator 4100
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >> 提交 基尔卡克的报复
    .isQuestComplete 2078
step
.group >> 这一步应该组队完成, 小心!!
    #sticky
    .destroy 7442 >> 摧毁基尔卡克的钥匙
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >> 点击|cRXP_PICK_搁浅的海龟|r
    .accept 4727 >> 接受 搁浅的海龟
step << Druid
    .goto Darkshore,48.87,11.32
    >> |cRXP_WARN_Swim out in the water|r
    >> 打开|cRXP_PICK_奇怪的保险箱|r. 拾取|cRXP_LOOT_水兽敏捷坠饰|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #completewith next
    >> 击杀|cRXP_ENEMY_硬壳潮行蟹|r和|cRXP_ENEMY_暗礁蟹|r. 拾取|cRXP_LOOT_优质蟹肉|r
    >> |cRXP_WARN_如果打不过|cRXP_ENEMY_硬壳潮行蟹|r, 就只打|r |cRXP_ENEMY_暗礁蟹|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    .goto Winterspring,1.42,26.89
    >> 点击地上的|cRXP_PICK_传声盒323号|r
    .turnin 1002 >> 提交 传声盒323号
    .accept 1003 >> 接受 传声盒525号
step
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >> 击杀|cRXP_ENEMY_硬壳潮行蟹|r和|cRXP_ENEMY_暗礁蟹|r. 拾取|cRXP_LOOT_优质蟹肉|r
    >> |cRXP_WARN_如果打不过|cRXP_ENEMY_硬壳潮行蟹|r, 就只打|r |cRXP_ENEMY_暗礁蟹|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,50.74,34.68
	.xp 17-2750 >> 刷到你离18级差2750经验
    >> 击杀|cRXP_ENEMY_黑木战士|r和|cRXP_ENEMY_黑木图腾师|r.
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    #completewith next
    .hs >> 炉石回奥伯丁
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4727 >> 提交 搁浅的海龟
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古博·布拉普|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .turnin 1138 >> 提交 海中的水果
step
.group >> 这一步应该组队完成, 小心!!
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞萨斯·月影|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> 提交 洞中的蘑菇
    .accept 948 >> 接受 安努
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >> 提交 水晶中的碎骨
step
.group >> 这一步应该组队完成, 小心!!
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> 提交 萨纳瑞恩的希望
step
.group >> 这一步应该组队完成, 小心!!
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >> 提交 丢失的主人
    .accept 993 >> 接受 丢失的主人
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰达利亚·夜歌|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> 接受 炖陆行鸟
    .turnin 2178 >> 提交 炖陆行鸟
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
.group >> 这一步应该组队完成, 小心!!
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> 提交 黑木熊怪的堕落
step << Druid
    .goto Darkshore,37.7,40.7
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6122 >> 提交 毒水之源
    .target Alanndarian Nightsong
    .accept 6123 >> 接受 收集解药
step << Druid
#label cure1
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >> 击杀|cRXP_ENEMY_月夜枭兽|r. 拾取|T132832:0|t[|cRXP_LOOT_小蛋|r]
    >> 之后有任务需要你达到50烹饪等级
    .collect 6889,40,90,1,0x21,cooking
    >> 拾取洞穴中的|cRXP_LOOT_月亮菇|r
    .complete 6123,2
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >> 击杀|cRXP_ENEMY_月夜枭兽|r. 拾取|T132832:0|t[|cRXP_LOOT_小蛋|r]
    >>之后有任务需要你达到50烹饪等级
    .collect 6889,40,90,1,0x20,cooking
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Druid
    >> 完成5个|T134187:0|t[地根草]的收集
    >> 你能在东边的上脚下找到它们
    .collect 2449,5,6123,1
step << Druid
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .turnin 6123 >> 提交 收集解药
    .accept 6124 >> 接受 消除疾病
    .target Alanndarian Nightsong
step << Druid
    .goto Darkshore,41.0,79.6
    >> |cRXP_WARN_一边往南走一边|r|cRXP_WARN_对|cRXP_ENEMY_生病的鹿|r使用|r|T132801:0|t[动物医疗药膏] 
    .complete 6124,1 -- Sickly Deer cured (10)
    .unitscan Sickly Deer
step << Druid
	#completewith next
	.cast 18960 >> 施放 传送: 月光林地
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.4
    >>Go to Moonglade
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 6124 >> 消除疾病
    .accept 6125 >> 接受 解毒之术
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >> 学习职业技能
    .target Loganaar
step << Druid
    .goto Moonglade,44.1444,45.227
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
    .skipgossip 1
    .fly Teldrassil >> 飞往鲁瑟兰村
    .target Silva Fil'naveth
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_玛斯雷·驭熊者|r对话
    .turnin 6125 >> 提交 解毒之术
step << Druid
    .goto Darnassus,30.7,41.3 >> 穿过紫色传送门回到鲁瑟兰村
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << Druid
    .goto Teldrassil,58.39,94.01
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >> 飞往黑海岸
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> 前往奥伯丁码头. 等去米奈希尔港的船
step
    .goto Darkshore,32.44,43.71
    >> |cRXP_WARN_在等船的空隙|r|cRXP_WARN_升级|r|T135966:0|t[急救]|cRXP_WARN_和|r|T133971:0|t[烹饪]
    .zone Wetlands >> 乘船前往米奈希尔港
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 20-21 黑海岸/灰谷
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#next 21-23 石爪山脉/灰谷

step << Druid
	#completewith next
	.cast 18960 >> 施放 传送: 月光林地
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
	>>Go to Moonglade
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >> 学习职业技能
    .target Loganaar
step
    #completewith TheryluneE
    .hs >> 炉石回奥伯丁
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto Darkshore,37.21,44.22
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t点击|cRXP_FRIENDLY_通缉告示|r
    .accept 4740 >> 接受 通缉：莫克迪普!
step
#map Darkshore
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> 接受 洞中的蘑菇
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >> 接受 健忘的勘察员
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 4763 >> 接受 黑木熊怪的堕落
step
    .goto Darkshore,37.78,44.06
    .use 12346 >> |cRXP_WARN_在奥伯丁月亮井|r|cRXP_WARN_使用|r|T133748:0|t[空的净化碗] 
    .collect 12347,1,4763,1
step
    .goto Darkshore,38.326,43.040
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 3765 >> 提交 遥远的旅途
    .target Gershala Nightwhisper
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .accept 2139 >> 接受 萨纳瑞恩的希望
step
    .goto Darkshore,50.66,34.94
    >> 打开|cRXP_PICK_黑木谷物|r. 拾取|cRXP_LOOT_黑木谷物|r
    >> |cRXP_WARN_拾取黑木谷物会刷新2只|cRXP_ENEMY_黑木熊怪|r 它们会进入战斗并跑向你. 做好战斗准备或者逃跑|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >> 击杀|cRXP_ENEMY_雌蓟熊|r
    >> |cRXP_WARN_注意!|cRXP_ENEMY_小蓟熊|r能眩晕你2秒|r
    .complete 2139,1 --雌蓟熊 (1)
    .mob 雌蓟熊
    .mob Thistle Cub
step
    .goto Darkshore,51.83,33.50
    >> 打开|cRXP_PICK_黑木坚果|r. 拾取|cRXP_LOOT_黑木坚果|r
    >> |cRXP_WARN_拾取黑木坚果会刷新2只|cRXP_ENEMY_黑木熊怪|r. 它们会进入战斗并跑向你. 做好战斗准备或者逃跑|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >> 打开|cRXP_PICK_黑木水果|r. 拾取|cRXP_LOOT_黑木水果|r
    >> |cRXP_WARN_拾取黑木水果会刷新2只|cRXP_ENEMY_黑木熊怪|r. 它们会进入战斗并跑向你. 做好战斗准备或者逃跑|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_在|cRXP_PICK_骨火处|r|cRXP_WARN_使用|r|T134712:0|t[装满水的净化碗]以召唤|r|cRXP_ENEMY_萨巴克希斯|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >> 击杀|cRXP_ENEMY_萨巴克希斯|r. 打开掉在地上的|cRXP_PICK_萨巴克希斯的恶魔之包|r. 拾取|cRXP_LOOT_堕落护符|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,55.66,34.89
    >>拾取地上的|cRXP_LOOT_粗柄蘑菇|r和|cRXP_LOOT_毒帽蘑菇|r
    >> |cRXP_WARN_待在上层. 如果|cRXP_LOOT_毒帽蘑菇|r顶层的顶端, 再下去拾取|r
    >> |cRXP_WARN_不要面对墙壁! |cRXP_ENEMY_雷鳞御浪者's|r能把你击退到洞底!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
--TODO: Add logout skip video
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_桑迪斯·织风|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> 提交 黑木熊怪的堕落
step
#map Darkshore
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> 提交 洞中的蘑菇
    .accept 948 >> 接受 安努
step
#map Darkshore
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳瑞恩·绿树|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> 提交 萨纳瑞恩的希望
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 986 >> 接受 丢失的主人
step
    #completewith moonstalkers
    >> 击杀|cRXP_ENEMY_月夜雄虎|r和|cRXP_ENEMY_月夜雌虎|r. 拾取|cRXP_LOOT_优质月夜猛虎毛皮|r和|cRXP_LOOT_月夜猛虎的牙齿|r
    >> |cRXP_WARN_注意|cRXP_ENEMY_月夜雌虎|r会带1只|cRXP_ENEMY_月夜猛虎幼崽|r进入战斗
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
	#era/som
    #completewith Murkdeep
    .goto Darkshore,40.23,81.28,0
    >> 击杀|cRXP_ENEMY_灰斑蓟熊|r. 拾取|cRXP_LOOT_灰色头皮|r
    .complete 1003,1
    .isOnQuest 1003 >> 此步已跳过: 缺少前置条件
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >> 前往古树之林
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安努|r
    .turnin 952 >> 提交 古树之林 << NightElf
    .turnin 948 >> 提交 安努
    .accept 944 >> 接受 主宰之剑
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> 前往主宰之剑
step
#label moonstalkers
    .goto Darkshore,38.54,86.05
    >>发现 主宰之剑
    .complete 944,1
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_使用|r |T134715:0|t[占卜之水] |cRXP_WARN_然后把它放在地上|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >> 点击 |cRXP_PICK_占卜之碗|r
    .turnin 944 >> 提交 主宰之剑
    .accept 949 >> 接受 暮光之锤的营地
step
    .goto Ashenvale,22.24,2.52
    >> 点击|cRXP_PICK_暮光之书|r
    .turnin 949 >> 提交 暮光之锤的营地
    .accept 950 >> 接受 向安努回复
step
    .goto Ashenvale,22.36,3.98
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟瑞露尼|r. 接受将开启护送任务!
    >> |cRXP_WARN_如果她不在这就跳过这步|r
    .accept 945 >> 接受 护送瑟瑞露尼
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >> |cRXP_WARN_护送|cRXP_FRIENDLY_瑟瑞露尼|r离开主宰之剑|r
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945 >> 此步已跳过: 缺少前置条件
step
    .destroy 5251 >> 摧毁|T134715:0|t[占卜之水].你不再需要它了
step
    .goto Darkshore,39.3,91.8,60,0
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
	.goto Darkshore,39.3,91.8
    >> 击杀|cRXP_ENEMY_月夜雄虎|r和|cRXP_ENEMY_月夜雌虎|r. 拾取|cRXP_LOOT_优质月夜猛虎毛皮|r和|cRXP_LOOT_月夜猛虎的牙齿|r
    >> |cRXP_WARN_注意|cRXP_ENEMY_月夜雌虎|r会带1只|cRXP_ENEMY_月夜猛虎幼崽|r进入战斗
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷姆塔维尔|r
    .turnin 729 >> 提交 健忘的勘察员
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷姆塔维尔|r
    >>接受将开启护送任务
    .accept 731,1 >> 接受 健忘的勘察员
    >> |cRXP_WARN_这个任务非常难. 如果你组不到队伍或者不能Solo掉, 就跳过这步|r
    .link https://www.twitch.tv/videos/1182180918 >> |cRXP_WARN_点击此处观看视频指导|r
    .target Prospector Remtravel
step
    #requires prospector
    >> |cRXP_WARN_护送|cRXP_FRIENDLY_勘察员雷姆塔维尔|r穿越挖掘场|r
    >> |cRXP_WARN_这个任务非常难. 如果你组不到队伍或者不能Solo掉, 就跳过这步|r
    .link https://www.twitch.tv/videos/1182180918 >> |cRXP_WARN_点击此处观看视频指导|r
    .complete 731,1
    .isOnQuest 731 >> 此步已跳过: 缺少前置条件
step
    .goto Ashenvale,13.97,4.10
    >> 点击|cRXP_PICK_搁浅的海洋生物|r
    .accept 4733 >> 接受 搁浅的海洋生物
    >> |cRXP_WARN_这个任务非常难. 一个个的击杀|cRXP_ENEMY_鱼人|r, 否则你可能同时面多多只鱼人|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cRXP_WARN_点击此处观看视频指导|r
step
    .goto Ashenvale,13.93,2.01
    >> 点击|cRXP_PICK_搁浅的海龟|r
    .accept 4732 >> 接受 搁浅的海龟
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >> 点击|cRXP_PICK_搁浅的海龟|r
    .accept 4731 >> 接受 搁浅的海龟
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >> 点击|cRXP_PICK_搁浅的海洋生物|r
    .accept 4730 >> 接受 搁浅的海洋生物
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >> 在营地击杀|cRXP_ENEMY_灰雾战士|r和|cRXP_ENEMY_灰雾猎人|r
    >> |cRXP_WARN_走到营地中间的火堆上召唤|r|cRXP_ENEMY_莫克迪普|r
    >> 击杀|cRXP_ENEMY_莫克迪普|r. 他会从水中冲过来.
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >> 击杀|cRXP_ENEMY_灰斑蓟熊|r. 拾取|cRXP_LOOT_灰色头皮|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003 >> 此步已跳过: 缺少前置条件
    .mob Grizzled Thistle Bear
step
    #era/som
    .goto Darkshore,41.389,80.565
    >> 点击地上的|cRXP_PICK_传声盒525号|r
    .turnin 1003 >> 提交 传声盒525号
    .isOnQuest 1003 >> 此步已跳过: 缺少前置条件
step
.group >> 这一步应该组队完成, 小心!!
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> 前往洞中寻找|cRXP_FRIENDLY_沃科尔|r
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,45.00,85.30
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沃科尔|r
    .turnin 993 >> 提交 丢失的主人
    .accept 995 >> 接受 偷偷溜走
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isQuestTurnedIn 986
step
.group >> 这一步应该组队完成, 小心!!
    .goto Darkshore,44.44,84.69
    >> |cRXP_WARN_等待剧情结束|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安努|r
    .turnin 951 >> 提交 玛塞斯特拉遗物
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安努|r
    .turnin 950 >> 提交 向安努回复
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗尼亚·恒影|r以开始护送
    >> |cRXP_WARN_如果他不在就跳过这步. 他最多会需要25分钟才刷新|r
	.target Kerlonian Evershade
    .accept 5321 >> 接受 昏昏欲睡
step
    .isOnQuest 5321 >> 此步已跳过: 缺少前置条件
    .goto Darkshore,44.38,76.30
    >> 打开|cRXP_PICK_克罗尼亚的箱子|r. 拾取|T134229:0|t[|cRXP_LOOT_唤醒号角|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> 向南前往灰谷
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >> |cRXP_WARN_护送|cRXP_FRIENDLY_克罗尼亚·恒影|r到灰谷的迈斯特拉岗哨|r
    .use 13536 >> |cRXP_WARN_只要|cRXP_FRIENDLY_克罗尼亚·恒影|r睡着了就在他边上|r|cRXP_WARN_使用|r|T134229:0|t[|cRXP_LOOT_唤醒号角|r]
    >> |cRXP_WARN_尽可能避免在主路上跑. 敌人只会当你在主路上时刷出来|r
    .complete 5321,2
    .isOnQuest 5321 >> 此步已跳过: 缺少前置条件
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_利拉迪斯·月河|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> 提交 昏昏欲睡
    .isQuestComplete 5321
step
    #label tower
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> 提交 奥萨拉克斯之塔
step
	#era/som
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> 接受 奥萨拉克斯之塔
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> 接受 巴斯兰的头发
    .xp <20,1
step
    #era/som
    .goto Ashenvale,31.25,30.70
    >> 击杀|cRXP_ENEMY_暗滩祭司|r, |cRXP_ENEMY_暗滩精兵|r, |cRXP_ENEMY_暗滩执行者|r和|cRXP_ENEMY_暗滩挖掘者|r. 拾取|cRXP_LOOT_发光的灵魂宝石|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >> 打开地上的|cRXP_PICK_草药袋|r. 拾取|cRXP_LOOT_巴斯兰的头发|r
    >> |cRXP_WARN_看起来像棕色的袋子. 有时候很难发现|r
    .complete 1010,1
    .isOnQuest 1010 >> 此步已跳过: 缺少前置条件
step
	#era/som
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> 提交 奥萨拉克斯之塔
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >> 刷到20级
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> 接受 巴斯兰的头发
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >> 打开地上的|cRXP_PICK_草药袋|r. 拾取|cRXP_LOOT_巴斯兰的头发|r
    >> |cRXP_WARN_看起来像棕色的袋子. 有时候很难发现|r
    .complete 1010,1
    .isOnQuest 1010 >> 此步已跳过: 缺少前置条件
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥雷迪尔·阔叶|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> 提交 巴斯兰的头发
    .accept 1020 >> 接受 奥雷迪尔的药剂
step
	#era/som
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> 提交 奥萨拉克斯之塔
    .accept 973 >> 接受 奥萨拉克斯之塔
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00
    .subzone 415 >> 前往阿斯特兰纳
step
    .goto Ashenvale,34.40,48.00
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳希亚|r
    .fp Astranaar>> 开启阿斯特兰纳飞行点
	.target Daelyshia
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德瑞尔·速火|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> 接受 佐拉姆海岸
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵塞恩希尔|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> 接受 守卫石爪山
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法德瑞斯·戈森沙尔|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> 接受 石爪峰之旅
step
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱恩·狼行者|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> 接受 莱恩的净化
step
    .goto Ashenvale,36.99,49.22
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板基姆利雅|r
    .home >> 绑定炉石到阿斯特兰纳
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
	.target Pelturas Whitemoon
    .turnin 1020 >> 提交 奥雷迪尔的药剂
step
.dungeon WC
    #completewith TravelRatchet
    .goto Ashenvale,20.31,42.33,0
    .zone The Barrens >>  等待哀嚎洞穴队伍的同时刷|cRXP_ENEMY_盐沫鱼人|r.位置已经标在地图上了
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> 前往贫瘠之地的棘齿城. 跟随指示以避开|cRXP_ENEMY_贫瘠之地卫兵|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
    .fp Ratchet >> 开启棘齿城飞行点
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .accept 959 >> 接受 港口的麻烦
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> 前往哀嚎洞穴. 爬上山坡然后跳到哀嚎洞穴入口上方的隐蔽山洞里. 跟随指示找到|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
step
.dungeon WC
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
    .accept 1486 >> 接受 变异皮革
    .goto 1414,51.912,55.422 -- Nalpak
    .accept 1487 >> 接受 清除变异者
    .goto 1414,51.918,55.444 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >> 击杀所有种类的|cRXP_ENEMY_变异生物|r. 拾取|cRXP_LOOT_变异皮革|r
    >> |cRXP_WARN_这个任务在副本内外都能完成|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85
    >> 击杀|cRXP_ENEMY_疯狂的马格利什|r. 拾取|cRXP_LOOT_９９年波尔多陈酿|r
    >> |cRXP_ENEMY_疯狂的马格利什|r |cRXP_WARN_刷新在洞穴少数位置|r
    >> |cRXP_WARN_此任务在副本外完成|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959 >> 此步已跳过: 缺少前置条件
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414,52.37,55.20
    +进入哀嚎洞穴
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >> 击杀所有种类的|cRXP_ENEMY_变异生物|r. 拾取|cRXP_LOOT_变异皮革|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487 >> 此步已跳过: 缺少前置条件
    .isOnQuest 1486 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    >> 击杀所有种类的|cRXP_ENEMY_变异生物|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    #completewith next
    >> 击杀所有种类的|cRXP_ENEMY_变异生物|r. 拾取|cRXP_LOOT_变异皮革|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    >> 击杀|cRXP_ENEMY_考布莱恩领主|r, |cRXP_ENEMY_皮萨斯领主|r, |cRXP_ENEMY_瑟芬迪斯领主|r和|cRXP_ENEMY_安娜科德拉|r. 然后在副本门口与|cRXP_FRIENDLY_纳拉雷克斯的信徒|r对话开启护送
    >> 护送|cRXP_FRIENDLY_纳拉雷克斯的信徒|r穿越哀嚎洞穴并完成唤醒仪式
    >> 击杀|cRXP_ENEMY_‘吞噬者’穆坦努斯|r. 拾取|T135229:0|t[|cRXP_LOOT_发光的碎片|r]
    >> |cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_发光的碎片|r]并接受任务|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> 接受 发光的碎片
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >> 击杀所有种类的|cRXP_ENEMY_变异生物|r. 拾取|cRXP_LOOT_变异皮革|r
    >> |cRXP_WARN_这个任务在副本内外都能完成|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> 前往棘齿城. 一会就可以交哀嚎的任务不要急
    .isOnQuest 6981,959 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981 >> 此步已跳过: 缺少前置条件
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_起重机操作员比戈弗兹|r
    .turnin 959 >> 提交 港口的麻烦
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> 爬上哀嚎洞穴上的陡峭山坡. 跟随箭头
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲拉·古风|r
    .turnin 6981 >> 提交 发光的碎片
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> 爬上山坡然后跳到哀嚎洞穴入口上方的隐蔽山洞里.. 跟随指示找到 |cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
step
.dungeon WC
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >> 提交 变异皮革
    .goto 1414,51.912,55.422 -- Nalpak
    .turnin 1487 >> 提交 清除变异者
    .goto 1414,51.918,55.444 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
    .turnin 1487 >> 提交 清除变异者
    .goto 1414,51.918,55.444 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳尔派克|r和|cRXP_FRIENDLY_厄布鲁|r
    .turnin 1486 >> 提交 变异皮革
    .goto 1414,51.912,55.422 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> 炉石回阿斯特兰纳
]])
