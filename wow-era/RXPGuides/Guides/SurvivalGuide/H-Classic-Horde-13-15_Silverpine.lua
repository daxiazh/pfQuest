RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 13-15 银松森林
#version 1
#group RXP部落生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 1-20 (汉化by猎風)
#next 15-19 贫瘠之地

step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_如果你碰到了|r|cRXP_FRIENDLY_阿斯托·哈德恩|r|cRXP_WARN_, 跟他对话然后击杀他并拾取阿斯托的介绍信. 他在布瑞尔跟瑟伯切尔之间巡逻|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>在去找|cRXP_FRIENDLY_亡灵哨兵埃兰德|r的路上击杀|cRXP_ENEMY_座狼|r. 拾取|cRXP_LOOT_变色的狼心|r
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵哨兵埃兰德|r
    >>|cRXP_WARN_在开始这个任务前确保自己满血满蓝|r
    .accept 435 >>接受 护送埃兰德
    .target Deathstalker Erland
step
    #completewith next
    >>击杀|cRXP_ENEMY_座狼|r. 拾取|cRXP_LOOT_变色的狼心|r
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>护送|cRXP_FRIENDLY_亡灵哨兵埃兰德|r安全抵达|cRXP_FRIENDLY_兰妮·尤瑞克|r处
    >>|cRXP_WARN_小心!|r|cRXP_ENEMY_座狼|r|cRXP_WARN_有时候会刷新在一起, 抓住一切机会恢复|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰妮·尤瑞克|r
    .turnin 435 >>提交 护送埃兰德
    .accept 429 >>接受 荒野之心
    .accept 449 >>接受 亡灵哨兵的报告
    .target Rane Yorick
step
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07
    >>击杀|cRXP_ENEMY_座狼|r. 拾取|cRXP_LOOT_变色的狼心|r
    .collect 3164,6 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .unitscan Gorefang
step
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >>前往 瑟伯切尔
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .accept 421 >>接受 证明你的价值
    .target Dalar Dawnweaver
step
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格乌恩·法隆|r
    >>|cRXP_BUY_购买|r|T134532:0|t[红斑蘑菇]
    .vendor >> 清理背包
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德温·哈里|r
    >>|cRXP_BUY_购买|r|T132815:0|t[冰镇牛奶] << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134830:0|t[次级治疗药水]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .vendor >> 清理背包
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r和|cRXP_FRIENDLY_亡灵卫兵博迪瑞格|r
    .accept 477 >>接受 越境
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>接受 瑟伯切尔的补给
    .goto Silverpine Forest,43.43,41.67
    .target Shadow Priest Allister
    .target Deathguard Podrig
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
    .accept 477 >>接受 越境
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,15 >> 进入墓穴
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在墓穴里与|cRXP_FRIENDLY_高级执行官哈德瑞克|r对话
    .turnin 449 >>提交 亡灵哨兵的报告
    .accept 3221 >>接受 与伦弗利尔会面
    .accept 437 >>接受 亡者农场
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师伦弗利尔|r
    .turnin 429 >>提交 荒野之心
    .turnin 445 >>提交 给银松森林送信
    .turnin 3221 >>提交 与伦弗利尔会面
    .accept 1359 >>接受 给金格的货物
    .accept 447 >>接受 致命的配方
    .accept 430 >>接受 回到奎恩身旁
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72
    >>击杀|cRXP_ENEMY_月怒白头狼人|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .target Dalar Dawnweaver
    .turnin 421 >>提交 证明你的价值
    .accept 422 >>接受 阿鲁高的愚行
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >>前往瓦尔甘牧场
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>进入房子然后上二楼. 拾取地上的|cRXP_PICK_阿鲁高的拯救|r
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >>前往伊瓦农场
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在房子二楼与|cRXP_FRIENDLY_奎恩·尤瑞克|r对话
    .turnin 430 >>提交 回到奎恩身旁
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在外面与|cRXP_FRIENDLY_兰妮·尤瑞克|r对话
    .accept 425 >>接受 邪恶的伊瓦
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>击杀|cRXP_ENEMY_邪恶的伊瓦|r. 拾取|cRXP_LOOT_伊瓦的头颅|r
    >>|cRXP_WARN_小心! 清理整个谷仓前的怪再一只只的把|r|cRXP_ENEMY_鸦爪奴隶|r|cRXP_WARN_拉出来.|r
    >>|cRXP_WARN_伊瓦与一只|r |cRXP_ENEMY_鸦爪奴隶|r联动, |cRXP_WARN_. 如果有必要就使用治疗药水|r
    >>|cRXP_WARN_这些怪免疫恐惧!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰妮·尤瑞克|r
    .turnin 425 >>提交 邪恶的伊瓦
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_小心! 此区域可能会刷新|r |cRXP_ENEMY_阿鲁高之子|r|cRXP_WARN_! 他是一只25级精英, 离他远点!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>击杀|cRXP_ENEMY_灰熊|r. 拾取|cRXP_LOOT_灰熊的心脏|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    .loop 25,Silverpine Forest,46.26,19.11,46.48,19.77,46.61,21.59,46.01,22.75,44.20,22.52,44.35,21.08,44.49,19.54,45.23,19.36
    >>击杀死亡农村附近的|cRXP_ENEMY_腐皮豺狼人|r直到|cRXP_ENEMY_奈塔拉什|r刷新. 击杀并拾取|cRXP_LOOT_奈塔拉什的灵魂|r
    >>|cRXP_WARN_这些怪免疫恐惧!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>击杀|cRXP_ENEMY_灰熊|r. 拾取|cRXP_LOOT_灰熊的心脏|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>击杀|cRXP_ENEMY_蜘蛛|r. 拾取|cRXP_LOOT_粘稠的血液|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_克雷希斯|r |cRXP_WARN_, 她能杀了你! 她有15s CD吸收130点伤害的护盾还会110瞬间伤害的技能|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基利恩·萨纳森|r
    .vendor >> 清理背包
    .target Killian Sanatha
step
    .loop 25,Silverpine Forest,37.25,15.99,35.67,16.01,34.96,16.34,33.99,17.24,34.14,15.26,35.06,14.50,35.85,13.83,36.33,14.20
    >>击杀|cRXP_ENEMY_蜘蛛|r. 拾取|cRXP_LOOT_粘稠的血液|r
    >>|cRXP_WARN_注意|r|cRXP_ENEMY_克雷希斯|r |cRXP_WARN_, 她能杀了你! 她有15s CD吸收130点伤害的护盾还会110瞬间伤害的技能|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>完成击杀|cRXP_ENEMY_灰熊|r. 拾取|cRXP_LOOT_灰熊的心脏|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> 回到瑟伯切尔
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .turnin 422 >> 提交 阿鲁高的愚行
    .accept 423 >> 接受 阿鲁高的愚行
    .target Dalar Dawnweaver
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,15 >> 进入墓穴
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级执行官哈德瑞克|r
    .turnin 437 >> 提交 亡者农场
    .accept 438 >> 接受 破旧渡口
    .target High Executor Hadrec
step
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格乌恩·法隆|r
    >>|cRXP_BUY_购买|r |T134532:0|t[红斑蘑菇]
    .vendor >> 清理背包
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德温·哈里|r
    >>|cRXP_BUY_购买|r |T132815:0|t[冰镇牛奶]  << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134830:0|t[次级治疗药水]
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Andrea|r
    .vendor >> |cRXP_BUY_如果有库存的话|r|cRXP_BUY_购买|r|T132491:0|t[智者腰带]
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳迪亚·沃农|r|cRXP_BUY_. |cRXP_BUY_如果有库存就|r购买|r|T135490:0|t[精良的长弓]
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山德勒·雷夫瑞|r
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T132539:0|t[轻便靴]
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山德勒·雷夫瑞|r
    .vendor >> |cRXP_BUY_购买|r|T132539:0|t[轻便靴]|cRXP_BUY_或者|r|T132537:0|t[马靴]|cRXP_BUY_有库存就买, 2选1|r
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #completewith Shackles
    +装备|T132491:0|t[智者腰带]
    .use 4786
    .itemcount 4786,1
step << Hunter
    #completewith Shackles
    +装备|T135490:0|t[精良的长弓]
    .use 11304
    .itemcount 11304,1
step << Hunter/Rogue
    #completewith Shackles
    +装备|T132539:0|t[轻便靴]
    .use 4788
    .itemcount 4788,1
step << Shaman/Warrior/Druid
    #completewith Shackles
    +装备|T132539:0|t[轻便靴]
    .use 4788
    .itemcount 4788,1
step << Shaman/Warrior/Druid
    #completewith Shackles
    +装备|T132537:0|t[马靴]
    .use 4789
    .itemcount 4789,1
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >> 走下山坡
step
    #completewith DecrepitFerry
    +|cRXP_WARN_小心! 此区域可能会刷新|r|cRXP_ENEMY_阿鲁高之子|r |cRXP_WARN_他是一只25级精英, 离他远点!|r
    .unitscan Son of Arugal
step
    #label Shackles
    .loop 25,Silverpine Forest,44.22,31.55,43.51,32.38,42.61,31.12,41.28,30.25,39.70,30.24,38.96,29.15,38.28,27.10,37.60,24.16,38.07,23.13,38.56,21.93,39.73,23.26,41.49,23.51,41.14,25.50,41.17,28.26,42.01,29.27,43.83,31.00
    >>击杀|cRXP_ENEMY_月怒暴食者|r和|cRXP_ENEMY_月怒魔魂狼人|r. 拾取|cRXP_LOOT_镣铐|r
    >>|cRXP_WARN_小心!|r |cRXP_ENEMY_月怒魔魂狼人|r |cRXP_WARN_血量低于25%时会施放激怒. 低血量时快速击杀|r
    .complete 423,1 --Glutton Shackle (6)
    .complete 423,2 --Darksoul Shackle (3)
    .mob Moonrage Glutton
    .mob Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>在码头边点击|cRXP_PICK_小船|r
    >>|cRXP_WARN_小心!|r |cRXP_ENEMY_鸦爪之手|r |cRXP_WARN_最高16级还会5秒近战击晕技能|r
    .turnin 438 >>提交 破旧渡口
    .accept 439 >>接受 线索
step
    .goto Silverpine Forest,49.89,60.33
    >>点击营地里的|cRXP_PICK_箱子|r
    >>|cRXP_WARN_小心! 这些怪会|r |T135846:0|t[寒冰箭]|cRXP_WARN_并会在低血量时逃跑. 拉回来一个个击杀直到你能安全的点击箱子|r
    .turnin 477 >>提交 越境
    .accept 478 >>接受 地图与符记
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> 回到瑟伯切尔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r和|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .turnin 478 >>提交 地图与符记
    .accept 481 >>接受 达拉尔的推理
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>提交 阿鲁高的愚行
    .turnin 481 >>提交 达拉尔的推理
    .accept 482 >>接受 达拉然的意图
    .accept 424 >>接受 阿鲁高的愚行
    .goto Silverpine Forest,44.20,39.73
    .target Shadow Priest Allister
    .target Dalar Dawnweaver
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r和|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .turnin 478 >>提交 地图与符记
    .accept 481 >>接受 达拉尔的推理
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>提交 阿鲁高的愚行
    .turnin 481 >>提交 达拉尔的推理
    .accept 482 >>接受 达拉然的意图
    .goto Silverpine Forest,44.20,39.73
    .target Shadow Priest Allister
    .target Dalar Dawnweaver
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
    .turnin 482 >>提交 达拉然的意图
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
    .accept 479 >>接受 调查安伯米尔
    .target Shadow Priest Allister
    .group
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
    .turnin 482 >>提交 达拉然的意图
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,15 >> 进入墓穴
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级执行官哈德瑞克|r
    .turnin 439 >>提交 线索
    .accept 440 >>接受 黛丽娅的戒指
    .target High Executor Hadrec
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛斯·拉佐克|r
    .turnin 6321 >>提交 瑟伯切尔的补给 << Undead
    .accept 6323 >>接受 飞往幽暗城 << Undead
    .fp Sepulcher >> 开启瑟伯切尔飞行点 << !Undead
    .fly Undercity >>飞往幽暗城
    .target Karos Razok
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高顿·温德哈姆|r
    .turnin 6323 >> 提交 飞往幽暗城
    .accept 6322 >> 接受 迈克尔·加勒特
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_路易斯·瓦伦|r|cRXP_BUY_. 购买|r |T135147:0|t[法师之杖]
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +装备|T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_路易斯·瓦伦|r|cRXP_BUY_. 购买|r|T132394:0|t[芒刺斧] 
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +装备|T132394:0|t[芒刺斧]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r |cRXP_FRIENDLY_路易斯·瓦伦|r|cRXP_BUY_. 购买|r |T133046:0|t[巨型石锤] 
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith PyrewoodAmbush
    +一旦到达16级就装备|T133046:0|t[巨型石锤]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_路易斯·瓦伦|r|cRXP_BUY_. 购买|r|T135147:0|t[法师之杖]
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith PyrewoodAmbush
    +装备|T135147:0|t[法师之杖]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r|cRXP_FRIENDLY_路易斯·瓦伦|r|cRXP_BUY_. 购买|r |T135343:0|t[战士阔剑]
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #completewith PyrewoodAmbush
    +装备|T135343:0|t[战士阔剑]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在炼金房与|cRXP_FRIENDLY_药剂大师法拉尼尔|r和|cRXP_FRIENDLY_药剂师金格|r对话
    .turnin 447 >>提交 致命的配方
    .goto Undercity,48.84,69.25
    .turnin 1359 >> 提交 给金格的货物
    .goto Undercity,50.16,67.97
    .accept 1358 >> 接受 给赫布瑞姆的样本
    .target Master Apothecary Faranell
    .target Apothecary Zinge
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在炼金房与|cRXP_FRIENDLY_药剂大师法拉尼尔|r和|cRXP_FRIENDLY_药剂师金格|r对话
    .turnin 447 >>提交 致命的配方
    .accept 450 >>接受 致命的配方
    .goto Undercity,48.84,69.25
    .turnin 1359 >> 提交 给金格的货物
    .goto Undercity,50.16,67.97
    .accept 1358 >> 接受 给赫布瑞姆的样本
    .target Master Apothecary Faranell
    .target Apothecary Zinge
    .group
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
    .train 2137 >>学习职业技能
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安娜斯塔西娅·哈特威尔|r
    .train 2120 >>学习职业技能
    .target Anastasia Hartwell
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
    .train 1758 >>学习职业技能
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
 step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛琳·瓦德|r
    .train 6761 >>学习职业技能
    .target Carolyn Ward
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
    .train 6222 >>学习职业技能
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_理查·科尔文|r
    .train 1455 >>学习职业技能
    .target Richard Kerwin
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_对话|r |cRXP_FRIENDLY_赞恩·布拉德弗|r|cRXP_BUY_. 购买|r |T133718:0|t[烟尘魔杖] 
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1886 >>提交 亡灵哨兵
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米奈特·卡加德|r
    .accept 1898 >>接受 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安德隆·甘特|r
    .turnin 1898 >>提交 亡灵哨兵
    .accept 1899 >>接受 亡灵哨兵
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>拾取|cRXP_FRIENDLY_安德隆·甘特|r身后的|cRXP_PICK_安德隆的书架|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米奈特·卡加德|r
    .turnin 1899 >>提交 亡灵哨兵
    .accept 1978 >>接受 亡灵哨兵
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
    .turnin 1978 >>提交 亡灵哨兵
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_玛丽·艾塔斯|r
    .train 3276 >>学习|T133688:0|t[厚亚麻绷带]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|r|cRXP_FRIENDLY_玛丽·艾塔斯|r
    .train 3274 >>学习中级急救
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
    .train 1160 >>学习职业技能
    .target Angela Curthas
    .xp <14,1
    .xp >16,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉·科萨斯|r
    .train 285 >>学习职业技能
    .target Angela Curthas
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
	.train 6074 >>学习职业技能
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉札鲁斯神父|r
	.train 8102 >>学习职业技能
    .target Father Lazarus
    .xp <16,1
    .group
step << Undead Rogue
    #completewith GrimsonthePale
    >>放弃 亡灵哨兵, 没机会再完成了
    .abandon 1886 >> 放弃 亡灵哨兵
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦里玛萨斯|r
    .accept 5725 >>接受 毁灭之力
    .target Varimathras
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克尔·加勒特|r
    .turnin 6322 >>提交 迈克尔·加勒特
    .accept 6324 >>接受 向博迪瑞格回报
    .fly The Supulcher >>飞往瑟伯切尔
    .target Michael Garrett
step << !Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迈克尔·加勒特|r
    .fly The Supulcher >>飞往瑟伯切尔
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .group
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵卫兵博迪瑞格|r
    .turnin 6324 >>提交 向博迪瑞格回报
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾德温·哈里|r
    .vendor >> |cRXP_BUY_如果有库存就|r|cRXP_BUY_购买|r|T134830:0|t[次级治疗药水]
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >> 进入矿洞
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>击杀|cRXP_ENEMY_苍白的格瑞姆森|r. 拾取|cRXP_LOOT_格瑞姆森的头颅|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2 >> 如果没有2人以上的队伍就不要尝试这个任务
step
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_跳到木轮上. 登出再登入以传送到瑟伯切尔. 如果你不准备这样做就跑回瑟伯切尔|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >> |cRXP_WARN_点击此处查看演示|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .turnin 424 >>提交 阿鲁高的愚行
    .accept 99 >> 接受 阿鲁高的愚行
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120 >>前往安博米尔
    .group
step
    .loop 25,Silverpine Forest,57.91,62.48,59.10,61.88,59.79,63.08,60.79,62.55,61.98,62.56,61.00,64.89,60.10,65.93,59.02,67.10,57.56,67.57,57.62,65.17,57.12,63.39
    >>击杀|cRXP_ENEMY_达拉然保卫者|r和|cRXP_ENEMY_达拉然法师|r. 拾取|cRXP_LOOT_达拉然坠饰|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2 >> 如果没有2人以上的队伍就不要尝试这个任务
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >>前往焚木村
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>击杀|cRXP_ENEMY_焚木村狼人|r. 拾取|cRXP_LOOT_焚木镣铐|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4  >> 如果没有4人以上的队伍就不要尝试这个任务
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>进入旅店然后上二楼
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>击杀|cRXP_ENEMY_药剂师伯纳德|r. 在书架上拾取|cRXP_LOOT_伯纳德的日记|r
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4  >> 如果没有4人以上的队伍就不要尝试这个任务
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >> 进入小教堂
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵哨兵费雷亚|r
    .accept 452 >>接受 焚木村中的伏击
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4  >> 如果没有4人以上的队伍就不要尝试这个任务
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>击杀|cRXP_ENEMY_议员|r和|cRXP_ENEMY_莫瑞森村长|r
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4  >> 如果没有4人以上的队伍就不要尝试这个任务
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亡灵哨兵费雷亚|r
    .turnin 452 >>提交 焚木村中的伏击
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43
    >>完成击杀|cRXP_ENEMY_焚木村狼人|r. 拾取|cRXP_LOOT_镣铐|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4  >> 如果没有4人以上的队伍就不要尝试这个任务
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >> 回到瑟伯切尔
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
    .turnin 99 >> 提交 阿鲁高的愚行
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_药剂师伦弗利尔|r
    .turnin 450 >> 提交 致命的配方
    .target Apothecary Renferrel
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_暗影牧师奥利斯特|r
    .turnin 479 >>提交 调查安伯米尔
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳迪亚·沃农|r|cRXP_BUY_如果刷新了就|r|cRXP_BUY_. 购买|r|T135490:0|t[精良的长弓]
    >>|cRXP_BUY_如果没有刷新, 就购买|r |T135490:0|t[强化弓]
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .group
step << Druid
    #completewith next
    .cast 18960 >>Cast |T135758:0|t[传送：月光林地]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
    .trainer >>学习职业技能
    .target Loganaar
step
    .abandon 424 >> 放弃 阿鲁高的愚行
    .isOnQuest 424
step
    .abandon 479 >> 放弃 调查安伯米尔
    .isOnQuest 479
step
    .abandon 99 >> 放弃 阿鲁高的愚行
    .isOnQuest 99
step
    .abandon 450 >> 放弃 致命的配方
    .isOnQuest 450
step
    .abandon 452 >> 放弃 焚木村中的伏击
    .isOnQuest 452
step << Tauren
    .hs >>炉石回十字路口
    .use 6948
    .zoneskip The Barrens
step << Shaman/Hunter
    .hs >>炉石回十字路口
    .use 6948
    .zoneskip The Barrens
step << !Tauren !Shaman !Hunter
    .hs >>炉石回剃刀岭
    .use 6948
    .zoneskip Durotar

    ]])
