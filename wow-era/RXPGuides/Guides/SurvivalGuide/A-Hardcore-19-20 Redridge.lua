
RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 19-20 赤脊山
#version 1
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化By猎風)
#next 20-21 黑海岸/灰谷

step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>学习职业技能
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>学习宠物技能
    .target Karrina Mekenda
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比利巴布·考格斯宾|r
    .vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
    >>|cRXP_WARN_这是一个限量供应物品. 如果|cRXP_FRIENDLY_比利巴布·考格斯宾|r没有存货就跳过这步|r
--    >>你之后的一个任务需要2个青铜管 << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗伦·长须|r
    .turnin 1338 >> 提交 卡尔·雷矛的订单
    .isOnQuest 1338
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沉默的舒尼|r和|cRXP_FRIENDLY_维尔德·蓟草|r 
    .accept 2040 >> 接受 地底突袭
    .goto StormwindClassic,55.510,12.504
    .accept 167 >> 接受 我的兄弟……
    .accept 168 >> 接受 收集记忆
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step << Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗德瑞克·斯图瓦|r
    >>|cRXP_BUY_购买|r|T135489:0|t[重型弯弓] |cRXP_BUY_和|r|T132382:0|t[锋利的箭]
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Frederick Stover
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> 前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>学习职业技能
    .target Elsharin
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> 前往暴风城大教堂
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1641 >> 提交 圣洁之书
    .collect 6775,1,1642 --Tome of Divinity (1)
    .accept 1642 >> 接受 圣洁之书
    .turnin 1642 >> 提交 圣洁之书
    .target Duthorian Rall
    .accept 1643 >> 接受 圣洁之书
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_虔诚的亚瑟|r
    .trainer >>学习职业技能
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒修士|r
    .trainer >>学习职业技能
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿德温·凯伦|r
    >>|cRXP_BUY_如果比你身上的好就购买|r|T135139:0|t[燃烧魔杖]
    >>|cRXP_WARN_获得一只非暗影伤害的魔杖很重要. 你稍后将面对暗影免疫的怪|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往已宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>学习职业技能
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>学习职业技能
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r或者|cRXP_FRIENDLY_伊尔莎·考宾|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>学习职业技能
    .target Wu Shen
    .target Ilsa Corbin
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
    .trainer >>学习职业技能
    .target Sheldras Moontree
step << !Hunter !Priest
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吴平|r
    .train 201 >>学习单手剑 << Mage/Rogue/Warlock
    .train 1180 >>学习匕首 << Mage/Druid
    .train 202 >>学习双手剑 << Warrior/Paladin
    .target Woo Ping
step << Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    >>|cRXP_WARN_你将需要10个|r|T132889:0|t[亚麻布]
    .turnin 1643 >> 提交 圣洁之书
    .target Stephanie Turner
    .accept 1644 >> 接受 圣洁之书
    .turnin 1644 >> 提交 圣洁之书
--  .accept 1780 >> 接受 圣洁之书
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买|r|T135324:0|t[长剑] |cRXP_BUY_和|r|T135342:0|t[波刃短剑]
    >>|cRXP_WARN_装备|r|T135324:0|t[长剑] |cRXP_WARN_到主手并装备|r|T135342:0|t[波刃短剑] |cRXP_WARN_到副手|r
    .collect 923,1 --Longsword
    .collect 2209,1 --Kris
    .target Marda Weller
step << !NightElf
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >> 飞往赤脊山
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> 离开暴风城
    .zoneskip Redridge Mountains
step << NightElf
    #completewith GParker
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> 前往赤脊山
step << NightElf
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵帕克|r
    .accept 244 >> 接受 豺狼人的入侵
    .target Guard Parker
step << NightElf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >> 提交 豺狼人的入侵
    .target Deputy Feldon
    .accept 246 >> 接受 审时度势
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头奥斯洛|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> 接受 丢失的工具
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> 接受 马掌
step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_所罗门镇长|r
	.target Magistrate Solomon
    .accept 120 >> 接受 送往暴风城的信
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达希|r
    >>|cRXP_FRIENDLY_达希|r|cRXP_WARN_在旅店内游荡|r
	.target Darcy
    .accept 129 >> 接受 免费的午餐
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_黑衣威利|r对话
    .turnin 65 >> 提交 迪菲亚兄弟会
    .accept 132 >> 接受 迪菲亚兄弟会
	.target Wiley the Black
step
    #era/som
    .goto Redridge Mountains,22.67,43.83
    >>离开旅店
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .accept 92 >> 接受 赤脊山炖肉
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_肖恩|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> 接受 希拉里的项链
step
    >>|cRXP_WARN_跳入湖中|r
    >>打开|cRXP_PICK_闪光的泥浆|r. 拾取|cRXP_LOOT_希拉里的项链|r
    >>|cRXP_WARN_在湖底有多个刷新点|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希拉里|r
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> 提交 希拉里的项链
    .target Hilary
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
	.target Ariena Stormfeather
    .fly Westfall >> 飞往西部荒野
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 132 >> 提交 迪菲亚兄弟会
    .accept 135 >> 接受 迪菲亚兄弟会
    .target Gryan Stoutmantle
step
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fly Stormwind >> 飞往暴风城
    .target Thor
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马库斯·乔纳森将军|r
    .turnin 120 >> 提交 送往暴风城的信
    .accept 121 >> 接受 送往暴风城的信
    .target General Marcus Jonathan
step
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 上楼找|cRXP_FRIENDLY_马迪亚斯·肖尔|r 
step
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .turnin 135 >> 提交 迪菲亚兄弟会
    .accept 141 >> 接受 迪菲亚兄弟会
    .target Master Mathias Shaw
step
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Westfall >> 飞往西部荒野
    .target Dungar Longdrink
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 141 >> 提交 迪菲亚兄弟会
    .accept 142 >> 接受 迪菲亚兄弟会
    .target Gryan Stoutmantle
step
    #completewith next
    .goto Westfall,44.50,69.62,55 >> 前往月溪镇
step
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>击杀|cRXP_ENEMY_迪菲亚信使|r. 拾取|cRXP_LOOT_神秘的信件|r
    >>|cRXP_WARN_|cRXP_ENEMY_迪菲亚信使|r刷新在月溪镇. 他沿着往北离开月溪镇的路前往金海岸矿洞和詹戈洛德矿洞. 如果你在路上没看到他就在月溪镇等他刷新|r
    >>|cRXP_WARN_信使大概4-5分钟刷新一次|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> 前往西部荒野灯塔
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛瑞森船长|r
    .accept 104 >> 接受 海岸上的威胁
    .accept 103 >> 接受 长明的灯塔
    .target Captain Grayson
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛瑞森船长|r  
    .turnin 103 >> 提交 长明的灯塔
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>击杀|cRXP_ENEMY_老瞎眼|r. 拾取|cRXP_LOOT_老瞎眼的鳞片|r
    >>|cRXP_ENEMY_老瞎眼|r|cRXP_WARN_在长滩上下巡逻. 如果你在长滩没看到他就在最南端的|cRXP_ENEMY_鱼人|r营地|r等他刷新
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛瑞森船长|r  
    .turnin 104 >> 提交 海岸上的威胁
    .target Captain Grayson
step
    .abandon 103 >> 放弃 长明的灯塔
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 142 >> 提交 迪菲亚兄弟会
    .target Gryan Stoutmantle
step
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪菲亚叛徒|r
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_迪菲亚叛徒|r不在这, 就等他刷新|r
    .accept 155 >> 接受 迪菲亚兄弟会
    .target The Defias Traitor
step
    .goto Westfall,42.56,71.71
    >>护送|cRXP_FRIENDLY_迪菲亚叛徒|r到死亡矿井
    >>|cRXP_WARN_一直待在|cRXP_FRIENDLY_迪菲亚叛徒|r身边! 准备在到达月溪镇后与|cRXP_ENEMY_迪菲亚|r战斗|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto Westfall,25.90,47.76
    >>|cRXP_WARN_使用|T134269:0|t[|cRXP_LOOT_杉德尔船长的藏宝图|r]并接受任务|r
    .use 1357
    .accept 136 >> 接受 杉德尔船长的藏宝图
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>点击|cRXP_PICK_船长的手提箱|r
    .turnin 136 >> 提交 杉德尔船长的藏宝图
    .itemcount 1357,1 -- Captain Sanders' Treasure Map (1)
step
    .goto Westfall,25.90,47.76
    >>点击|cRXP_PICK_船长的手提箱|r
    .accept 138 >> 接受 杉德尔船长的藏宝图
    .isQuestTurnedIn 136
step
    .goto Westfall,40.51,47.80
    >>点击|cRXP_PICK_破桶|r
    .turnin 138 >> 提交 杉德尔船长的藏宝图
    .accept 139 >> 接受 杉德尔船长的藏宝图
    .isQuestTurnedIn 136 
step
    .goto Westfall,40.63,17.03
    >>点击|cRXP_PICK_旧罐子|r
    .turnin 139 >> 提交 杉德尔船长的藏宝图
    .accept 140 >> 接受 杉德尔船长的藏宝图
    .isQuestTurnedIn 138 
step
    #completewith next
    .goto Westfall,25.97,16.90,30 >> 游往岛上
    .isOnQuest 140
step
    .goto Westfall,25.97,16.90
    >>点击|cRXP_PICK_锁住的箱子|r
    .turnin 140 >> 提交 杉德尔船长的藏宝图
    .isOnQuest 140
step
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 155 >> 提交 迪菲亚兄弟会
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r和塔顶的|cRXP_FRIENDLY_斥候瑞尔|r
    .accept 166 >> 接受 迪菲亚兄弟会
    .goto Westfall,56.33,47.52
    .accept 214 >> 接受 红色丝质面罩
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> 现在寻找前往死亡矿井的副本队伍
    >>等人时刷豺狼人
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> 前往死亡矿井
step
.dungeon DM
    #completewith EnterDM
    >>击杀|cRXP_ENEMY_迪菲亚|r. 拾取|cRXP_LOOT_红色丝质面罩|r
    >>|cRXP_WARN_进入副本后仍然可以完成这个任务|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    #completewith next 
    >>击杀|cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r和|cRXP_ENEMY_亡灵挖掘者|r. 拾取|cRXP_LOOT_矿业工会会员卡|r
    >>|cRXP_WARN_这个任务只能在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀|cRXP_ENEMY_工头希斯耐特|r. 拾取|cRXP_LOOT_希斯耐特的徽章|r
    >>|cRXP_WARN_这个任务只能在副本外完成|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>击杀|cRXP_ENEMY_骷髅矿工|r, |cRXP_ENEMY_亡灵爆破者|r和|cRXP_ENEMY_亡灵挖掘者|r. 拾取|cRXP_LOOT_矿业工会会员卡|r
    >>|cRXP_WARN_这个任务只能在副本外完成|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> 进入死亡矿井地下城
step
.dungeon DM
    #completewith DMend
    >>击杀死亡矿井内的|cRXP_ENEMY_迪菲亚|r. 拾取|cRXP_LOOT_红色丝质面罩|r
    .complete 214,1 -- Red Silk Bandana (10)
step
.dungeon DM
    >>击杀|cRXP_ENEMY_斯尼德|r. 拾取|cRXP_LOOT_小型高能发动机|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>击杀|cRXP_ENEMY_艾德温·范克里夫|r. 拾取|cRXP_LOOT_范克里夫的头颅|r和|T133712:0|t[|cRXP_LOOT_一封未寄出的信|r]
    >>|cRXP_WARN_使用|T133712:0|t[|cRXP_LOOT_一封未寄出的信|r]并接受任务|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> 接受 未寄出的信
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> 前往哨兵岭
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格里安·斯托曼|r和塔顶的|cRXP_FRIENDLY_斥候瑞尔|r
    .turnin 166 >> 提交 迪菲亚兄弟会
    .goto Westfall,56.33,47.52
    .turnin 214 >> 提交 红色丝质面罩
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fly Stormwind >> 飞往暴风城
    .target Thor
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维尔德·蓟草|r和|cRXP_FRIENDLY_沉默的舒尼|r
    .turnin 167 >> 提交 我的兄弟……
    .turnin 168 >> 提交 收集记忆
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> 提交 地底突袭
    .goto StormwindClassic,55.510,12.504
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴洛斯·艾力克斯顿|r
    .turnin 373 >> 提交 未寄出的信
    .accept 389 >> 接受 巴吉尔·特雷德
    .target Baros Alexston
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_典狱官塞尔沃特|r
    .turnin 389 >> 提交 巴吉尔·特雷德
--  .accept 391 >> 接受 监狱暴动 -- 等晚点去监狱的时候再接
    .target Warden Thelwater
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fly Redridge >> 飞往赤脊山
    .target Thor
    .zoneskip Westfall,1
step
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >> 飞往赤脊山
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
    #era
    #completewith MongrelPoacher
    >>击杀|cRXP_ENEMY_巨型血牙野猪|r. 拾取|cRXP_LOOT_巨型血牙野猪头|r
    >>击杀|cRXP_ENEMY_狼蛛|r. 拾取|cRXP_LOOT_香脆蜘蛛肉|r
    >>击杀|cRXP_ENEMY_恐鹫|r. 拾取|cRXP_LOOT_硬秃鹫肉|r
    >>|cRXP_WARN_在你提交赤脊山炖肉任务之前不要卖掉这些东西|r
    >>|cRXP_WARN_保留所有打到的|r|T133970:0|t[大块野猪肉]|cRXP_WARN_你能用它把|r|T133971:0|t[烹饪] |cRXP_WARN_升到50点以应对稍后暮色森林的任务|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵帕克|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> 接受 豺狼人的入侵
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵帕克|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> 提交 免费的午餐
    .accept 130 >> 接受 寻访草药师
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> 提交 豺狼人的入侵
    .accept 246 >> 接受 审时度势
step
    #era/som
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>击杀|cRXP_ENEMY_狼蛛|r. 拾取|cRXP_LOOT_香脆蜘蛛肉|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #label MongrelPoacher
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>击杀|cRXP_ENEMY_混血赤脊山豺狼人|r和|cRXP_ENEMY_赤脊山偷猎者|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
    #era
    #completewith next
    >>击杀|cRXP_ENEMY_巨型血牙野猪|r. 拾取|cRXP_LOOT_巨型血牙野猪头|r
    >>击杀|cRXP_ENEMY_恐鹫|r. 拾取|cRXP_LOOT_硬秃鹫肉|r
    >>|cRXP_WARN_在你提交赤脊山炖肉任务之前不要卖掉这些东西|r
    >>|cRXP_WARN_保留所有打到的|r|T133970:0|t[大块野猪肉] |cRXP_WARN_你能用它把|r|T133971:0|t[烹饪] |cRXP_WARN_升到50点以应对稍后暮色森林的任务|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .mob Great Goretusk
    .mob Dire Condor
step
    .goto Redridge Mountains,66.4,76.6,60,0
    .goto Redridge Mountains,35.6,69.6,60,0
    .goto Redridge Mountains,45.4,76.6
    .goto Redridge Mountains,35.6,69.6,0
    >>击杀|cRXP_ENEMY_恐鹫|r. 拾取|cRXP_LOOT_硬秃鹫肉|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #era
    #completewith FlySW
    >>击杀|cRXP_ENEMY_巨型血牙野猪|r. 拾取|cRXP_LOOT_巨型血牙野猪头|r
    >>|cRXP_WARN_在你提交赤脊山炖肉任务之前不要卖掉这些东西|r
    >>|cRXP_WARN_保留所有打到的|r|T133970:0|t[大块野猪肉] |cRXP_WARN_你能用它把|r|T133971:0|t[烹饪] |cRXP_WARN_升到50点以应对稍后暮色森林的任务|r
    .collect 1080,5,92,1
    .mob Great Goretusk
step
    >>|cRXP_WARN_跳入湖中. 小心水中巡逻的精英 |cRXP_ENEMY_止水湖蛇颈龙|r|r 
    >>打开|cRXP_PICK_沉没的箱子|r. 拾取|cRXP_LOOT_奥斯洛的工具箱|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-6300 >> 刷到离20级差6300经验
step
    #completewith next
    .goto Redridge Mountains,30.73,59.99,150 >> 前往湖畔镇
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔顿副队长|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> 提交 审时度势
step
    .xp 20 >>如果你还没到20级, 就把湖畔镇所有任务都交了. 交完之后应该就能到20级
step
    #label FlySW
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
	.target Ariena Stormfeather
    .fly Stormwind >> 飞往暴风城
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> 前往已宰的羔羊并下楼
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
    .trainer >>学习职业技能
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
    .vendor >> |cRXP_BUY_购买|r|T133738:0|t[魔典：折磨（等级 2）]
    .target Spackle Thornberry
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘黑暗缚灵师’加金|r
    .accept 1716 >> 接受 噬魂者
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> 前往法师塔
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔莎林|r
    .trainer >>学习职业技能
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉瑞麦尼·普尔度|r
    .train 48464 >>学习|T135763:0|t[传送：暴风城]
	.xp <20,1
    .target Larimaine Purdue
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
    .goto StormwindClassic,20.89,55.50
    .trainer >>学习职业技能
    .train 768 >>学习|T132115:0|t[猎豹形态]
    .target Sheldras Moontree
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买|r|T135324:0|t[长剑] |cRXP_BUY_并在21级时装备|r
    >>|cRXP_BUY_去拍卖行升级装备|r
    >>|cRXP_WARN_如果你有更好的选择就跳过这步|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Rogue
    #hardcore
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔达·维勒|r
    >>|cRXP_BUY_购买|r|T135324:0|t[长剑] |cRXP_BUY_并在21级时装备|r
    >>|cRXP_WARN_如果你有更好的选择就跳过这步|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
step << Warrior/Paladin
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_钱够就购买|r|T135280:0|t[微光重剑] |cRXP_BUY_并在21级时装备|r
    >>|cRXP_BUY_去拍卖行升级装备|r
    >>|cRXP_WARN_如果你有更好的选择就跳过这步|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step << Warrior/Paladin
    #hardcore
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_冈瑟尔·维勒|r
    >>|cRXP_BUY_钱够就购买|r|T135280:0|t[微光重剑] |cRXP_BUY_并在21级时装备|r
    >>|cRXP_WARN_如果你有更好的选择就跳过这步|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿茍斯·夜语|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> 接受 遥远的旅途
step
    .goto StormwindClassic,45.694,38.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克里斯多夫修士|r
    .accept 343 >> 接受 关于坚韧的演讲
    .target Brother Kristoff
step << Paladin/Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> 前往暴风城大教堂
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r. 他会给你|T133739:0|t[|cRXP_LOOT_勇气之书|r]
    .use 6776 >>|cRXP_WARN_使用|T133739:0|t[|cRXP_LOOT_勇气之书|r]并接受任务|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >> 接受 勇气之书
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >> 提交 勇气之书
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_虔诚的亚瑟|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>学习职业技能
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒修士|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >>学习职业技能
    .target Brother Joshua
step
    #completewith next
    .goto StormwindClassic,70.439,27.097,15,0
    .goto StormwindClassic,72.003,21.525,15,0
    .goto StormwindClassic,70.713,10.717,15 >> 前往暴风城图书馆寻找|cRXP_FRIENDLY_密尔顿·西弗|r
step
    .goto StormwindClassic,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
    .turnin 343 >> 提交 关于坚韧的演讲
    .accept 344 >> 接受 帕克斯顿修士
    .target Milton Sheaf
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
    .trainer >>学习职业技能
    .target Einris Brightspear
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
    .trainer >>学习职业技能
    .train 1804 >>学习|T136058:0|t[开锁]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 上楼找|cRXP_FRIENDLY_‘剃刃’雷吉克|r和|cRXP_FRIENDLY_马迪亚斯·肖尔|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘剃刃’雷吉克|r和|cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .accept 2281 >> 接受 赤脊山的联络员
    .goto StormwindClassic,75.76,60.35
    .accept 2360 >> 接受 马迪亚斯和迪菲亚盗贼
    .goto StormwindClassic,75.78,59.84
    .target Renzik "The Shiv"
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r或者|cRXP_FRIENDLY_伊尔莎·考宾|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>学习职业技能
    .target Wu Shen
    .target Ilsa Corbin
step
    #completewith next
    .goto Elwynn Forest,45.81,47.73,20,0
    .goto Elwynn Forest,48.61,41.80,15 >> 离开暴风城. 前往北郡修道院
step
    .goto Elwynn Forest,49.60,40.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_帕克斯顿修士|r
    .turnin 344 >> 提交 帕克斯顿修士
    .accept 345 >> 接受 墨水短缺
    .target Brother Paxton
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >> 前往闪金镇
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁匠阿格斯|r
	.target Smith Argus
    .turnin 118 >> 提交 马掌
    .accept 119 >> 接受 回复弗纳
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> 前往阿祖拉之塔. 爬上塔楼
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_塞欧克瑞图斯|r对话
    .accept 94 >> 接受 法师的眼线
step
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_当恩·布赖特斯塔|r
    .vendor >> |cRXP_FRIENDLY_当恩·布赖特斯塔|r|cRXP_BUY_有以下限量物品供应|r|T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_和|r|T134850:0|t|T134830:0|t[药水] |cRXP_BUY_, 如果有就都买了|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_当恩·布赖特斯塔|r|cRXP_BUY_有以下限量物品供应|r|T134938:0|t|T134937:0|t|T134943:0|t[卷轴] |cRXP_BUY_和|r|T134830:0|t[药水] |cRXP_BUY_, 如果有就都买了|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> 前往赤脊山
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> 提交 丢失的工具
    .accept 89 >> 接受 止水湖上的桥
    .turnin 345 >> 提交 墨水短缺
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> 提交 回复弗纳
    .accept 124 >> 接受 豺狼人的乱吠
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> 接受 雏龙的鳞片
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_所罗门镇长|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> 提交 送往暴风城的信
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >> 提交 赤脊山的联络员
    .target Lucius
    .accept 2282 >> 接受 奥瑟尔伐木场
step
    #era/som
    .isQuestComplete 92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> 提交 赤脊山炖肉
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛蒂·詹罗斯|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> 提交 寻访草药师
    .accept 131 >> 接受 水仙诉衷情
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达希|r
    >>|cRXP_FRIENDLY_达希|r|cRXP_WARN_在旅店内游荡|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> 提交 水仙诉衷情
step
    #era
	#completewith next
	>>击杀|cRXP_ENEMY_黑色幼龙|r. 拾取|cRXP_LOOT_雏龙的腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #era/som
    >>击杀|cRXP_ENEMY_巨型血牙野猪|r. 拾取|cRXP_LOOT_巨型血牙野猪头|r
    >>|cRXP_WARN_保留所有打到的|r|T133970:0|t[大块野猪肉] |cRXP_WARN_你能用它把|r|T133971:0|t[烹饪] |cRXP_WARN_升到50点以应对稍后暮色森林的任务||r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
    #era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师布雷纳|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .turnin 92 >> 提交 赤脊山炖肉
step
    #era
	#completewith next
	>>击杀|cRXP_ENEMY_黑色幼龙|r. 拾取|cRXP_LOOT_雏龙的腹鳞|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>击杀|cRXP_ENEMY_赤脊山蛮卒|r和|cRXP_ENEMY_赤脊山秘法师|r. 拾取|cRXP_LOOT_铁矛|r和|cRXP_LOOT_铁铆钉|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +使用|T136058:0|t[开锁]打开|cRXP_PICK_练习用保险箱|r, 直到达到80点 |T136058:0|t[开锁]
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >> 施放|T136058:0|t[开锁]打开|cRXP_PICK_卢修斯的箱子|r. 拾取|cRXP_LOOT_偷窃技能证明|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #era
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>击杀|cRXP_ENEMY_黑色幼龙|r. 拾取|cRXP_LOOT_雏龙的腹鳞|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #era
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_|cRXP_WARN_使用你之前打的|r|T133970:0|t[大块野猪肉]|cRXP_WARN_升级|r|T133971:0|t[烹饪] . 你需要50点|r|T133971:0|t[烹饪]
    +|cRXP_WARN_如果你需要更多|r|T133970:0|t[大块野猪肉]|cRXP_WARN_前往西边靠近|r|cRXP_ENEMY_贝利格拉布|r|cRXP_WARN_处击杀更多|r|cRXP_ENEMY_巨型血牙野猪|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头奥斯洛|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> 提交 止水湖上的桥
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> 提交 豺狼人的乱吠
    .turnin 122 >> 提交 雏龙的鳞片
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> 提交 豺狼人的乱吠
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢修斯|r
	.target Lucius
    .goto Redridge Mountains,28.06,52.32
    .turnin 2282 >> 提交 奥瑟尔伐木场
step << Rogue
	#completewith next
	.destroy 7907 >> 摧毁偷窃技能证明. 这东西没用
step << NightElf Rogue
    #hardcore
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Stormwind >> 飞往暴风城
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- 如果你没到22级学会消失, 就跳过这步
step << NightElf Rogue
    #hardcore
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> 前往西部荒野
    .isOnQuest 2360
    .train 1856,3 -- 如果你没到22级学会消失, 就跳过这步
step << NightElf Rogue
    #hardcore
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fp Westfall >> 开启西部荒野飞行点
    .target Thor
    .isOnQuest 2360
    .train 1856,3 -- 如果你没到22级学会消失, 就跳过这步
step << !NightElf Rogue
    #hardcore
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Westfall >> 飞往西部荒野
    .target Ariena Stormfeather
    .isOnQuest 2360
    .train 1856,3 -- 如果你没到22级学会消失, 就跳过这步

step << Rogue
    #hardcore
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密探吉尔妮|r
    .turnin 2360 >> 提交 马迪亚斯和迪菲亚盗贼
    >>|cRXP_WARN_以下是盗贼毒药任务线|r
    >>|cRXP_WARN_这个任务非常难. 你可以先跳过等24级再来做|r
    .target Agent Kearnen
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_点击此处查看视频指南|r
    .train 1856,3 -- 如果没学消失就跳过整个任务线, 之后再来做.
step << Rogue
    #hardcore
    .goto Westfall,68.50,70.08
    .target Agent Kearnen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密探吉尔妮|r
    .accept 2359 >> 接受 克拉文之塔
    .isQuestTurnedIn 2360
    .train 1856,3 -- 如果没学消失就跳过整个任务线, 之后再来做.
step << Rogue
    #hardcore
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07
    >>|T133644:0|t[偷窃]|cRXP_ENEMY_丑陋的迪菲亚懒汉|r. 拾取|cRXP_LOOT_迪菲亚塔楼钥匙|r
    >>|cRXP_WARN_你必须处于|r|T132320:0|t[潜行]|cRXP_WARN_状态才能施放|r|T133644:0|t[偷窃]
    >>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r在塔外巡逻|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_点击此处查看视频指南|r
    .isOnQuest 2359
    .mob Malformed Defias Drone
    .train 1856,3 -- 如果没学消失就跳过整个任务线, 之后再来做.
step << Rogue
    #hardcore
    .xp <22,1
    .goto Westfall,70.41,73.93
    >>|cRXP_WARN_前往塔顶|r
    >>打开|cRXP_PICK_暮色森林的箱子|r. 拾取|cRXP_LOOT_克拉文·摩特维克的日记|r
    >>|cRXP_WARN_可以先|r|T132310:0|t[闷棍]|cRXP_ENEMY_克拉文·摩特维克|r|cRXP_WARN_然后再打开|r|cRXP_PICK_暮色森林的箱子|r
    >>|cRXP_WARN_如果你的|r|T132310:0|t[闷棍]|cRXP_WARN_未命中或者抵抗了, 施放|r|T132331:0|t[消失]|cRXP_WARN_并重试或者跳下去脱战. 另外你也可以之后再来|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_点击此处查看视频指南|r
    .isOnQuest 2359
    .train 1856,3 -- 如果没学消失就跳过整个任务线, 之后再来做.
step << Rogue !Dwarf
    #hardcore
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>击杀|cRXP_ENEMY_小型结网毒蜘蛛|r和|cRXP_ENEMY_结网毒蜘蛛|r. 拾取|cRXP_LOOT_小毒囊|r和|cRXP_LOOT_粘糊的蜘蛛腿|r
    >>|cRXP_WARN_你需要1个|cRXP_LOOT_小毒囊|r来制作|r|T134437:0|t[抗毒药剂]|cRXP_WARN_以移除|r|T136230:0|t[赞吉尔之触]|cRXP_WARN_Debuff|r
    >>|cRXP_WARN_为一会暮色森林的任务保留|cRXP_LOOT_粘糊的蜘蛛腿|r|r
    >>|cRXP_WARN_如果你有|r|T626003:0|t|cFFF48CBA圣骑士|r|cRXP_WARN_或者|r|T625999:0|t|cFFFF7C0A德鲁伊|r|cRXP_WARN_朋友, 你可以跳过这步并叫他们帮你解毒|r
    .collect 1475,1,2359,1 -- Small Venom Sac
    .collect 2251,6,93,1,1 -- Gooey Spider Legs
    .isOnQuest 2359
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
step << Rogue
    #hardcore
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
    .fly Stormwind >> 飞往暴风城
    .isOnQuest 2359
    .target Thor
step << Rogue
    #hardcore
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 上楼找|cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .isOnQuest 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .turnin 2359 >> 提交 克拉文之塔
    .isQuestComplete 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
    .accept 2607 >> 接受 赞吉尔之触
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
    #completewith next
    .goto StormwindClassic,78.86,58.85,9 >> 前往地下室
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,78.03,58.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_道克·米希匹克斯|r
    .target Doc Mixilpixil
    .turnin 2607 >> 提交 赞吉尔之触
    .isQuestTurnedIn 2359
]])