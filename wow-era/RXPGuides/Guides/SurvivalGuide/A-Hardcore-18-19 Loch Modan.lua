RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 18-19 洛克莫丹
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#next 19-20 赤脊山


-- LEVEL 18-19 EAST LOCH MODAN QUESTS

step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德温·闪曦|r
    .vendor >> |cRXP_BUY_尽可能多的购买|r|T134831:0|t[治疗药水] 
    >>|cRXP_WARN_这是限量物品. 如果|cRXP_FRIENDLY_德温·闪曦|r没有库存就跳过这步|r
    .target Dewin Shimmerdawn
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔·奥雷|r
    .vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量物品. 如果|cRXP_FRIENDLY_尼尔·奥雷|r没有库存就跳过这步|r
	.target 尼尔·奥雷
    .bronzetube
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德温娜·蒙佐尔|r
    .vendor >> |cRXP_BUY_购买|r|T134410:0|t[中型箭袋]|cRXP_BUY_和|r|T132382:0|t[锋利的箭]
    .collect 11362,1 --中型箭袋 (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target 艾德温娜·蒙佐尔
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cFF00FF25萨莫尔·菲斯蒂沃斯|r对话
    .vendor >> |cRXP_BUY_尽可能多的购买|r |T134831:0|t[治疗药水]
    >>|cRXP_WARN_这是限量物品. 如果|cFF00FF25萨莫尔·菲斯蒂沃斯|r没有库存就跳过这步|r
    .target 萨莫尔·菲斯蒂沃斯
step << !Druid
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Ironforge >> 飞往铁炉堡
    .target 谢尔雷·布隆迪尔
    .zoneskip Wetlands,1
    .xp <18,1
step << !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,26.295,6.752 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> 学习职业技能
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Juli Stormkettle << Mage
    .target Brandur Ironhammer << Paladin
    .xp <18,1
step << !Druid
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
    .fly Loch Modan >> 飞往洛克莫丹
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fly Loch Modan >> 飞往洛克莫丹
    .target 谢尔雷·布隆迪尔
    .zoneskip Wetlands,1
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_镇长埃罗恩·钝鼻|r
    .accept 255 >> 接受 雇佣兵
    .target Magistrate Bluntnose
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉恩·角盔|r
    .accept 436 >> 接受 铁环挖掘场
    .target Jern Hornhelm
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> 向北前往奥加兹岗哨
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >> 提交 雷矛的包裹 << NightElf
    .accept 307 >> 接受 肮脏的爪子
    .target Mountaineer Stormpike
step
    #completewith next
   .goto Loch Modan,35.50,18.97,20 >> 进入银泉矿洞
step
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_矿工联盟的储物箱|r. 拾取|cRXP_LOOT_矿工装备|r
    >>|cRXP_WARN_整个矿洞都有|cRXP_PICK_矿工联盟的储物箱|r刷新|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto Loch Modan,23.85,17.92,10,0
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >> 提交 肮脏的爪子
    .target Mountaineer Stormpike
step
    #completewith next
    .goto Loch Modan,43.43,10.14,50 >> 前往巨石水坝
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师辛德维尔七世|r
    .accept 250 >> 接受 水坝危机
    .target Chief Engineer Hinderweir VII
step
    .goto Loch Modan,56.05,13.24
    >>点击|cRXP_PICK_可疑的桶|r
    .turnin 250 >> 提交 水坝危机
    .accept 199 >> 接受 水坝危机
step
    .goto Loch Modan,46.05,13.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师辛德维尔七世|r
    .turnin 199 >> 提交 水坝危机
    .target Chief Engineer Hinderweir VII
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> 前往旅行者营地
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_年轻的达瑞尔|r
    .accept 257 >> 接受 自豪的猎人
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << Hunter
    .goto Loch Modan,82.225,62.842
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克劳德·艾尔克辛|r
    .trainer >> 学习宠物技能
    .target Claude Erksine
step << Hunter
    .goto Loch Modan,82.391,62.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达恩·准星|r
    .trainer >> 学习职业技能
    .target Dargh Trueaim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马雷克·铁心|r
    .accept 385 >> 接受 捕猎鳄鱼
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step
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
    >>击杀|cRXP_ENEMY_山鹫|r
    >>|cRXP_WARN_你必须在15分钟内完成这个任务并返回|cRXP_FRIENDLY_年轻的达瑞尔|r处提交. 如果失败了, 就放弃重来|r
    .complete 257,1 -- Mountain Buzzard slain (6)    
    .mob Mountain Buzzard
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> 前往|cRXP_FRIENDLY_年轻的达瑞尔|r处
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> 提交 自豪的猎人
    .accept 258 >> 接受 猎人的挑战 
    .target Daryl the Youngling
step
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>击杀|cRXP_ENEMY_老山猪|r
    >>|cRXP_WARN_你必须在12分钟内完成这个任务并返回|cRXP_FRIENDLY_年轻的达瑞尔|r处提交. 如果失败了, 就放弃重来|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> 前往|cRXP_FRIENDLY_年轻的达瑞尔|r处
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> 提交 猎人的挑战 
    .target Daryl the Youngling
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维林·疾风|r
    .goto Loch Modan,81.73,64.15
    .accept 271 >> 接受 维林的报复
    .target Vyrin Swiftwind
step
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>击杀|cRXP_ENEMY_洛克鳄|r. 拾取|cRXP_LOOT_鳄鱼肉|r和|cRXP_LOOT_鳄鱼皮|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> 前往铁环挖掘场
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦格玛尔·落斧|r
    .turnin 436 >> 提交 铁环挖掘场
    .accept 297 >> 接受 收集石像
    .target Magmar Fellhew
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员基恩萨·铁环|r
    .accept 298 >> 接受 挖掘进度报告
    .target Prospector Ironband
step
    .goto Loch Modan,66.92,59.89,30,0
    .goto Loch Modan,70.67,60.58,40,0
    .goto Loch Modan,72.86,62.09,20,0
    .goto Loch Modan,71.03,68.89,30,0
    .goto Loch Modan,70.38,62.82
    >>击杀|cRXP_ENEMY_碎石怪掘地工|r, |cRXP_ENEMY_碎石怪地卜师|r和|cRXP_ENEMY_狂暴穴居人|r. 拾取|cRXP_LOOT_小石像|r
    .complete 297,1
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
    .mob Berserk Trogg
step
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦格玛尔·落斧|r
    .turnin 297 >> 提交 收集石像
    .target Magmar Fellhew
step
    .group
    #completewith next
    .goto Loch Modan,41.21,64.33,100 >> 前往灰爪山
    .isOnQuest 271
step
    .group 3
    .goto Loch Modan,39.43,66.38,10,0
    .goto Loch Modan,41.00,63.03,10,0
    .goto Loch Modan,39.97,61.67,10,0
    .goto Loch Modan,37.81,62.87,15,0
    .goto Loch Modan,36.73,61.08
    >>击杀|cRXP_ENEMY_奥尔苏迪|r. 拾取|cRXP_LOOT_奥尔苏迪的头颅|r
    >>|cRXP_ENEMY_奥尔苏迪|r|cRXP_WARN_不总是在洞里. 他也可能在下面巡逻|r
    >>|cRXP_ENEMY_奥尔苏迪|r|cRXP_WARN_是一个20级精英|r
    .complete 271,1 -- Ol' Sooty's Head (1)
    .unitscan Ol' Sooty
    .isOnQuest 271
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> 前往旅行者营地
step
    .goto Loch Modan,81.76,61.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马雷克·铁心|r
    .turnin 385 >> 提交 捕猎鳄鱼
    .target Marek Ironheart
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .turnin 271 >> 提交 维林的报复
    .target Daryl the Youngling
    .isQuestComplete 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_年轻的达瑞尔|r
    .goto Loch Modan,83.49,65.40
    .accept 531 >> 接受 维林的报复
    .target Daryl the Youngling
    .isQuestTurnedIn 271
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维林·疾风|r
    .goto Loch Modan,81.73,64.15
    .turnin 531 >> 提交 维林的报复
    .target Vyrin Swiftwind
    .isOnQuest 531
step
    .group
    .abandon 271 >> 放弃 维林的报复
step
    .group
    .goto Loch Modan,73.87,29.64,100 >> 前往莫格罗什要塞
    .isOnQuest 255
step
    .group 3
    >>击杀|cRXP_ENEMY_莫格罗什巨魔|r, |cRXP_ENEMY_莫格罗什执行者|r和|cRXP_ENEMY_莫格罗什蛮卒|r
    >>|cRXP_ENEMY_莫格罗什蛮卒|r |cRXP_WARN_只在洞里刷新. 最好只在其他2个小洞穴里杀蛮卒而不要进入东北方的洞穴.|r
    .complete 255,1 -- Mo'grosh Ogre slain (4)
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,3 -- Mo'grosh Enforcer slain (4)
    .goto Loch Modan,73.87,29.64,60,0
    .goto Loch Modan,73.57,25.15,60,0
    .goto Loch Modan,73.61,20.23,60,0
    .goto Loch Modan,68.97,21.14,60,0
    .goto Loch Modan,68.86,28.05,60,0
    .goto Loch Modan,70.51,23.73
    .complete 255,2 -- Mo'grosh Brute slain (4)
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08,25,0
    .goto Loch Modan,68.63,19.49,25,0
    .goto Loch Modan,74.84,25.08
    .isOnQuest 255
    .mob Mo'grosh Ogre
    .mob Mo'grosh Brute
    .mob Mo'grosh Enforcer
step
    #completewith FINISHED
    .goto Loch Modan,36.77,46.20,150 >> 前往塞尔萨玛
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >> 提交 挖掘进度报告
    .accept 301 >> 接受 向铁炉堡报告
    .target Jern Hornhelm
step
    .group
    .goto Loch Modan,34.53,43.72,10,0
    .goto Loch Modan,34.69,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_镇长埃罗恩·钝鼻|r
    .turnin 255 >> 提交 雇佣兵
    .target Magistrate Bluntnose
    .isQuestComplete 255
step
    .group
    .abandon 255 >> 放弃 雇佣兵
step
    #label FINISHED
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >> 飞往铁炉堡
    .target Thorgrum Borrelson
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷矛|r
    .turnin 301 >> 提交 向铁炉堡报告
    .target Prospector Stormpike
step
    .isQuestTurnedIn 2078
    .goto Ironforge,35.90,60.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
    .bankdeposit 5996 >> 把下列物品存入银行:
    >>|T134797:0|t[水下呼吸药剂] (如果你有的话) -- 5996
    .target Bailey Stonemantle
step
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_考格斯宾|r
    .vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是限量物品. 如果|cRXP_FRIENDLY_考格斯宾|r没有库存就跳过这步|r
--  >>之后有个任务需要2个铜管 << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> 进入矿道地铁. 坐地铁去暴风城
    >>|cRXP_WARN_你可以在等地铁的时候升级|r|T135966:0|t[急救]|cRXP_WARN_和|r|T133971:0|t[烹饪]
    >>|cRXP_WARN_24级有任务需要|r|T135966:0|t[急救]|cRXP_WARN_达到80|r << Rogue !Dwarf
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_点击此处观看地铁跳车教程|r
]])