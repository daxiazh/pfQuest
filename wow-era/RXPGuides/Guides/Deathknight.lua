local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
<< DK
#group RestedXP死亡骑士开始
#next RestedXP 联盟 60-70\\59-61 地狱火半岛 << Alliance wotlk
#next RestedXP 部落 60-70\\59-61 地狱火半岛 << Horde wotlk
#next RXP 大灾变 60-80 (H)\\59-61 地狱火半岛 << Horde !wotlk
#next RXP 大灾变 60-80 (A)\\59-61 地狱火半岛 << Alliance !wotlk
#defaultfor DK
#name 55-58 血色领地

step
    .goto ScarletEnclave,51.3,35.1
    .target The Lich King
    >>对话: |cRXP_FRIENDLY_巫妖王|r
    .accept 12593 >>接任务: |cRXP_LOOT_为巫妖王而战|r
step
    .goto ScarletEnclave,48.3,28.2
    >>对话: |cRXP_FRIENDLY_教官拉苏维奥斯|r
    .turnin 12593 >>交任务: |cRXP_FRIENDLY_为巫妖王而战|r
    .target Instructor Razuvious
    .accept 12619 >>接任务: |cRXP_LOOT_符文之剑|r
step
    .goto ScarletEnclave,46.8,29.1,40,0
    .goto ScarletEnclave,48.1,27.9,40,0
    .goto ScarletEnclave,49.2,26.5,40,0
    .goto ScarletEnclave,46.8,29.1,40,0
    .goto ScarletEnclave,48.1,27.9,40,0
    .goto ScarletEnclave,49.2,26.5
	>>拾取战损之剑。它可以在城墙周围有多个刷新位置
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .goto ScarletEnclave,47.9,27.6
	.use 38607 >>前往符文熔炉。点击背包中的战剑，将其打造成符文剑
    .complete 12619,1 --Runebladed Sword (1)
step
    .goto ScarletEnclave,48.3,28.2
    >>对话: |cRXP_FRIENDLY_教官拉苏维奥斯|r
    .turnin 12619 >>交任务: |cRXP_FRIENDLY_符文之剑|r
    .target Instructor Razuvious
    .accept 12842 >>接任务: |cRXP_LOOT_符文熔铸：战争的准备|r
step
    .goto ScarletEnclave,47.9,27.5
	>>前往符文熔炉。点击法术书中的符文熔炉并将其拖到你的栏上。将其中一个附魔应用到你包中的符文灵魂之刃上
    .complete 12842,1 --Weapon emblazoned (1)
step
    .goto ScarletEnclave,48.3,28.2
    >>对话: |cRXP_FRIENDLY_教官拉苏维奥斯|r
    .turnin 12842 >>交任务: |cRXP_FRIENDLY_符文熔铸：战争的准备|r
    .target Instructor Razuvious
    .accept 12848 >>接任务: |cRXP_LOOT_无尽的饥渴|r
step
    .goto ScarletEnclave,48.4,29.0
	.use 40732 >>进入房间中间。点击将不配入会者束缚在墙上的阿彻鲁斯灵魂牢笼之一，与他们战斗。在等待他们的 RP 时跑回拉苏维奥斯身边，将他们死死地抓住。杀死它
    .complete 12848,1 --Unworthy Initiate dominated (1)
step
    .goto ScarletEnclave,48.3,28.2
    >>对话: |cRXP_FRIENDLY_教官拉苏维奥斯|r
    .turnin 12848 >>交任务: |cRXP_FRIENDLY_无尽的饥渴|r
    .target Instructor Razuvious
    .accept 12636 >>接任务: |cRXP_LOOT_阿彻鲁斯之眼|r
step << wotlk
    .goto ScarletEnclave,48.67,32.77
    >>对话: |cRXP_FRIENDLY_炼金师卡洛夫|r
    .collect 37201,4 --Corpse Dust (4)
    .isOnQuest 12636
    .target Alchemist Karloff
step
    .goto ScarletEnclave,51.3,35.1
    >>对话: |cRXP_FRIENDLY_巫妖王|r
    .turnin 12636 >>交任务: |cRXP_FRIENDLY_阿彻鲁斯之眼|r
    .target The Lich King
    .accept 12641 >>接任务: |cRXP_LOOT_天降厄运|r
step
	#label dkeyes
	#completewith next
    .goto ScarletEnclave,51.1,36.2
    .goto ScarletEnclave,61.5,60.6,0
	>>点击巫妖王左侧或右侧的眼睛
	>>使用“阿彻鲁斯虹吸管”(1) 分析熔炉。使用“裹尸布”(3) 避免受到猩红小怪的伤害。
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto ScarletEnclave,61.7,68.2,0
	>>使用“阿彻鲁斯虹吸”(1) 分析要塞。使用“裹尸布”(3) 避免受到猩红小怪的伤害。
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto ScarletEnclave,53.4,70.7,0
	>>使用“阿彻鲁斯虹吸管”(1)分析市政厅。使用“裹尸布”(3)避免受到猩红小怪的伤害。
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto ScarletEnclave,52.2,80.7,0
	>>使用“阿彻鲁斯虹吸管”(1)分析教堂。使用“裹尸布”(3)避免受到猩红小怪的伤害。
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
--X NEED A NEW COMMAND FOR THESE PREVIOUS 4 STEPS
step
	#completewith next
 	+完成后按“取消”或（4）返回黑锋堡
step
	#requires dkeyes
    .goto ScarletEnclave,51.3,35.3
    >>对话: |cRXP_FRIENDLY_巫妖王|r
    .turnin 12641 >>交任务: |cRXP_FRIENDLY_天降厄运|r
    .target The Lich King
    .accept 12657 >>接任务: |cRXP_LOOT_天灾的力量|r
step
	#completewith next
    .goto ScarletEnclave,50.5,33.4,10 >>跑进紫色传送门
step
    .goto ScarletEnclave,48.871,29.739
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 12657 >>交任务: |cRXP_FRIENDLY_天灾的力量|r
    .target Highlord Darion Mograine
    .accept 12850 >>接任务: |cRXP_LOOT_向天灾指挥官萨拉诺尔报到|r
step
    .goto ScarletEnclave,51.0,34.6
    >>对话: |cRXP_FRIENDLY_天灾指挥官萨拉诺尔|r
    .turnin 12850 >>交任务: |cRXP_FRIENDLY_向天灾指挥官萨拉诺尔报到|r
    .target Scourge Commander Thalanor
    .accept 12670 >>接任务: |cRXP_LOOT_血色收割|r
step
	#completewith next
    .goto ScarletEnclave,52.0,35.0
    .fly >>点击天灾狮鹫前往死亡裂口
step
    .goto ScarletEnclave,52.3,33.9
    >>对话: |cRXP_FRIENDLY_瓦拉纳王子|r
    .turnin 12670 >>交任务: |cRXP_FRIENDLY_血色收割|r
    .target Prince Valanar
    .accept 12678 >>接任务: |cRXP_LOOT_混乱战车，苦痛驭之|r
step
	#completewith next
    .goto ScarletEnclave,53.2,33.5,0
    .goto ScarletEnclave,51.4,36.1,0
    .target Salanar the Horseman
    >>对话: |cRXP_FRIENDLY_骑手萨拉纳尔|r
    .accept 12680 >>接任务: |cRXP_LOOT_阿彻鲁斯战马|r
step
    .goto ScarletEnclave,54.5,34.2
    .target Olrun the Battlecaller
    >>对话: |cRXP_FRIENDLY_战斗召唤者奥尔伦|r
    .accept 12733 >>接任务: |cRXP_LOOT_死亡的挑战|r
step
    .goto ScarletEnclave,53.2,33.5,30,0
    .goto ScarletEnclave,51.4,36.1
    .target Salanar the Horseman
    >>对话: |cRXP_FRIENDLY_骑手萨拉纳尔|r
    .accept 12680 >>接任务: |cRXP_LOOT_阿彻鲁斯战马|r
step
    .goto ScarletEnclave,53.7,36.3,50,0
    .goto ScarletEnclave,52.1,38.2
    .target Orithos the Sky Darkener
    >>对话: |cRXP_FRIENDLY_遮天者奥里索斯|r
    .accept 12679 >>接任务: |cRXP_LOOT_今夜，我们在海文郡欢宴！|r
step
	#completewith next
    .goto ScarletEnclave,55.6,51.4
	>>杀死该区域的猩红暴徒和海文郡公民。拾取该区域地面上的萨隆邪铁箭
	.complete 12678,1 --Scarlet Crusader (10)
    .complete 12678,2 --Citizen of Havenshire (10)
    .complete 12679,1 --Saronite Arrow (15)
step
	#completewith next
    .goto ScarletEnclave,57.4,42.3
	.vehicle >>偷取任意 Havenshire 马匹。小心巡逻马匹区域的马厩管理员 Kitrik，因为他是一名精英
step
    .goto ScarletEnclave,52.4,34.3
	>>将偷来的马送回死亡裂口。使用冷却中的“疾驰”(2) 可以跑得更快。使用“送回偷来的马”(1) 将其送回
    .complete 12680,1 --Horse Successfully Stolen (1)
step
    .goto ScarletEnclave,53.2,33.5,30,0
    .goto ScarletEnclave,51.4,36.1
    >>对话: |cRXP_FRIENDLY_骑手萨拉纳尔|r
    .turnin 12680 >>交任务: |cRXP_FRIENDLY_阿彻鲁斯战马|r
    .target Salanar the Horseman
    .accept 12687 >>接任务: |cRXP_LOOT_进入暗影界|r
step
	#completewith next
    .goto ScarletEnclave,54.6,46.4
    .vehicle >>杀死一名阿彻鲁斯黑暗骑士。杀死他后骑上他的死亡战马
step
    .goto ScarletEnclave,52.4,34.7
	>>将阿彻鲁斯死亡战马送回死亡裂口。使用“骑士的召唤”(1)将其送回。
    .complete 12687,1 --The Horseman's Challenge (1)
step
    .goto ScarletEnclave,53.2,33.5,30,0
    .goto ScarletEnclave,51.4,36.1
    .target Salanar the Horseman
    >>对话: |cRXP_FRIENDLY_骑手萨拉纳尔|r
    .turnin 12687 >>交任务: |cRXP_FRIENDLY_进入暗影界|r
step
	#completewith next
	.cast 48778 >>进入角色面板 (C)，然后进入收藏选项卡。召唤你的 Archerus Deathcharger，然后将其绑定到你的栏杆上
step
	#completewith Mailbox
    .goto ScarletEnclave,55.6,51.4,0
	>>杀死该地区的 Havenshire 公民。拾取该地区地面上的萨隆邪铁箭
    .complete 12678,2 --Citizen of Havenshire (10)
    .complete 12679,1 --Saronite Arrow (15)
step
    .goto ScarletEnclave,55.9,38.8,50,0
    .goto ScarletEnclave,53.9,45.6
	>>消灭该区域内的猩红暴徒
	.complete 12678,1 --Scarlet Crusader (10)
step
	#sticky
	#label Citizens
    .goto ScarletEnclave,56.0,58.8,0,0
	>>杀死在该地区逃跑的 Havenshire 公民
    .complete 12678,2 --Citizen of Havenshire (10)
step
    .goto ScarletEnclave,56.1,51.9
	>>掠夺整个战场上地面上的箭
    .complete 12679,1 --Saronite Arrow (15)
step
	#requires Citizens
    .goto ScarletEnclave,51.9,35.4,30,0
    .goto ScarletEnclave,51.0,33.6,30,0
    .goto ScarletEnclave,53.8,30.9,30,0
    .goto ScarletEnclave,51.9,35.4
    >>对话: |cRXP_FRIENDLY_死亡骑士新兵|r
	>>|cRXP_WARN_不要跑出30码决斗范围|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target Death Knight Initiate
step
	#requires Citizens
	>>重返死亡裂口
    .target Orithos the Sky Darkener
    >>对话: |cRXP_FRIENDLY_遮天者奥里索斯|r
    .turnin 12679 >>交任务: |cRXP_FRIENDLY_今夜，我们在海文郡欢宴！|r
    .goto ScarletEnclave,53.3,36.8
    .target Olrun the Battlecaller
    >>对话: |cRXP_FRIENDLY_战斗召唤者奥尔伦|r
    .turnin 12733 >>交任务: |cRXP_FRIENDLY_死亡的挑战|r
    .goto ScarletEnclave,54.5,34.5
    >>对话: |cRXP_FRIENDLY_瓦拉纳王子|r
    .turnin 12678 >>交任务: |cRXP_FRIENDLY_混乱战车，苦痛驭之|r
    .accept 12697 >>接任务: |cRXP_LOOT_收割者戈提克|r
    .target Prince Valanar
    .goto ScarletEnclave,52.273,33.967
step
    .goto ScarletEnclave,54.0,35.0
    >>对话: |cRXP_FRIENDLY_收割者戈提克|r
    .turnin 12697 >>交任务: |cRXP_FRIENDLY_收割者戈提克|r
    .target Gothik the Harvester
    .accept 12698 >>接任务: |cRXP_LOOT_收割者的礼物|r
step
	#completewith next
	.use 39253
	+跑进 Havenshire 矿井。使用背包中的收割者礼物对付未参加战斗的 |cRXP_FRIENDLY_Scarlet Miners|r，直到有 5 个食尸鬼跟随你，然后返回死亡裂口。
    .goto ScarletEnclave,58.4,30.9,30,0
    .goto ScarletEnclave,60.0,31.6,30,0
    .goto ScarletEnclave,61.6,27.5,0
step
	.goto ScarletEnclave,54.1,34.9
	>>将所有 5 个食尸鬼送回死亡裂口的哥提克
    .complete 12698,1 --Scarlet Ghoul Returned (5)
    .turnin 12698 >>交任务: |cRXP_FRIENDLY_收割者的礼物|r
    .accept 12700 >>接任务: |cRXP_LOOT_伺机待发|r
step
    .goto ScarletEnclave,52.273,33.967
    >>对话: |cRXP_FRIENDLY_瓦拉纳王子|r
    .turnin 12700 >>交任务: |cRXP_FRIENDLY_伺机待发|r
    .target Prince Valanar
    .accept 12701 >>接任务: |cRXP_LOOT_炮轰圣光哨站|r
step
    .goto ScarletEnclave,60.2,32.7,40,0
    .goto ScarletEnclave,63.5,32.3,20,0
    .goto ScarletEnclave,67.7,39.1
    >>跑过矿井，从山上下来，跑到光点塔后面。从那里的山上下来，然后跑向船。避开你看到的所有非矿工怪物。如果你死了，等着瓦格里复活你（不要释放灵魂）
	>>到达飞船后，进入其中一门猩红大炮。使用“猩红大炮”(1) 杀死猩红防御者。如果猩红防御者开始近战攻击大炮，则使用“电磁脉冲”(2)
    .complete 12701,1 --Scarlet Defender (100)
step
	#completewith next
	.vehicle >>杀死所有 100 名防守者后，使用“骷髅狮鹫逃脱”(3) 返回死亡之触
step
    .goto ScarletEnclave,52.3,34.1
    >>对话: |cRXP_FRIENDLY_瓦拉纳王子|r
    .turnin 12701 >>交任务: |cRXP_FRIENDLY_炮轰圣光哨站|r
    .target Prince Valanar
    .accept 12706 >>接任务: |cRXP_LOOT_死亡裂口大捷！|r
step << skip
    .hs >>返回阿彻鲁斯 (你的炉石会自动设置在这里)
--X Flight timer is 15s on retail, so i think its slightly faster. Didn't get a hearthstone on my retail run either
step << skip
	#completewith next
	.goto ScarletEnclave,50.5,33.4,10 >>乘坐传送器下楼。
step
	#completewith next
    .goto ScarletEnclave,53.1,32.5
	.fly >>把其中一只天灾狮鹫带回阿彻鲁斯
step
    .goto ScarletEnclave,48.9,29.9
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 12706 >>交任务: |cRXP_FRIENDLY_死亡裂口大捷！|r
    .target Highlord Darion Mograine
    .accept 12714 >>接任务: |cRXP_LOOT_巫妖王的意志|r
step
    .goto ScarletEnclave,47.472,26.550
    .target Lord Thorval
    >>对话: |cRXP_FRIENDLY_索瓦尔勋爵|r
	.turnin 12849 >>交任务: |cRXP_FRIENDLY_鲜血、冰霜与邪恶的力量|r
	.trainer >>训练你的职业法术
step
    .goto ScarletEnclave,47.472,26.550
    .target Lord Thorval
    >>对话: |cRXP_FRIENDLY_索瓦尔勋爵|r
	.turnin 12849 >>交任务: |cRXP_FRIENDLY_鲜血、冰霜与邪恶的力量|r
step
	#completewith next
    .goto ScarletEnclave,52.1,35.0
    .fly >>点击狮鹫返回死亡裂口
step
    .goto ScarletEnclave,53.4,36.5
    >>对话: |cRXP_FRIENDLY_瓦拉纳王子|r
    .turnin 12714 >>交任务: |cRXP_FRIENDLY_巫妖王的意志|r
    .target Prince Valanar
    .accept 12715 >>接任务: |cRXP_LOOT_追忆墓穴|r
step << wotlk
    .goto ScarletEnclave,52.9,35.2
    >>购买 40 尸尘
    .collect 37201,40
step
    .goto ScarletEnclave,55.3,46.2
	>>点击邮箱上的信件
    .turnin 12711 >>交任务: |cRXP_FRIENDLY_被遗弃的信件|r
step
    .goto ScarletEnclave,55.8,52.4
    .target Noth the Plaguebringer
    >>对话: |cRXP_FRIENDLY_药剂师诺斯|r
    .accept 12716 >>接任务: |cRXP_LOOT_药剂师的要求|r
step
    .goto ScarletEnclave,53.9,58.1,15,0
	>>前往纪念墓穴底部
    >>对话: |cRXP_FRIENDLY_凯雷塞斯王子|r
    .turnin 12715 >>交任务: |cRXP_FRIENDLY_追忆墓穴|r
    .target Prince Keleseth
    .accept 12719 >>接任务: |cRXP_LOOT_无路可逃，无处可藏|r
    .goto ScarletEnclave,54.3,57.4
    .target Baron Rivendare
    >>对话: |cRXP_FRIENDLY_瑞文戴尔男爵|r
    .accept 12722 >>接任务: |cRXP_LOOT_羊入虎口|r
    .goto ScarletEnclave,54.6,57.4
step
	#completewith next
	>>杀死新阿瓦隆市民和血色十字军暴徒。掠夺他们的头骨。你稍后会完成
    .complete 12716,3 --Crusader Skull (10)
    .complete 12722,2 --Citizen of New Avalon (15)
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,53.1,71.1,20,0
	>>进入市政厅并杀死市长 Quimby。 抢走他旁边桌子上的书
    .complete 12719,1 --Mayor Quimby (1)
    .goto ScarletEnclave,52.2,71.2
    .complete 12719,2 --New Avalon Registry (1)
    .goto ScarletEnclave,52.5,71.0
step
    .goto ScarletEnclave,53.9,58.1,15,0
	>>骑马返回墓穴
    >>对话: |cRXP_FRIENDLY_凯雷塞斯王子|r
    .turnin 12719 >>交任务: |cRXP_FRIENDLY_无路可逃，无处可藏|r
.target Prince Keleseth
    .accept 12720 >>接任务: |cRXP_LOOT_说服者|r
    .goto ScarletEnclave,54.3,57.4
step
	#completewith Dawn
	>>杀死新阿瓦隆市民和血色十字军暴徒。掠夺他们的头骨
    .complete 12716,3 --Crusader Skull (10)
    .complete 12722,2 --Citizen of New Avalon (15)
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,62.0,60.3
	>>抢劫铁匠铺墙上的链条
    .complete 12716,2 --Iron Chain (1)
step
    .goto ScarletEnclave,57.8,61.8
	>>抢劫旅馆地下室的大锅
    .complete 12716,1 --Empty Cauldron (1)
step
	#completewith next
    	.use 39418
	+打开背包中的华丽珠宝盒。将两个凯雷塞斯的说服者装备在里面
--X objective step for use/equip
step
	#label Dawn
    .goto ScarletEnclave,62.4,68.2
	>>装备好凯雷塞斯的说服者后，攻击猩红暴徒 - 一直杀死他们直到其中一个告诉你某件事（当目标完成时他们会转为中立）
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
	#completewith Soldiers
	>>掠夺新阿瓦隆的类人生物，获取他们的头骨
    .complete 12716,3 --Crusader Skull (10)
step
	#completewith next
    .goto ScarletEnclave,62.7,68.4
	>>消灭该区域内的血色十字军士兵
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,57.8,67.8,30,0
    .goto ScarletEnclave,56.9,68.5,30,0
    .goto ScarletEnclave,55.5,68.3,30,0
    .goto ScarletEnclave,53.9,71.9,30,0
    .goto ScarletEnclave,53.0,69.7
	>>杀死该地区的新阿瓦隆居民
    .complete 12722,2 --Citizen of New Avalon (15)
step
	#label Soldiers
    .goto ScarletEnclave,62.7,68.4
	>>消灭该区域内的血色十字军士兵
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,53.0,69.7
	>>掠夺新阿瓦隆的类人生物，获取他们的头骨
    .complete 12716,3 --Crusader Skull (10)
step
    >>对话: |cRXP_FRIENDLY_药剂师诺斯|r
    .turnin 12716 >>交任务: |cRXP_FRIENDLY_药剂师的要求|r
    .target Noth the Plaguebringer
    .accept 12717 >>接任务: |cRXP_LOOT_诺斯的特殊药剂|r
    .goto ScarletEnclave,55.893,52.400
    .turnin 12717 >>交任务: |cRXP_FRIENDLY_诺斯的特殊药剂|r
    .goto ScarletEnclave,56.2,52.0
step
    .goto ScarletEnclave,56.2,52.0
	>>再次点击大锅，获取更多诺斯的特酿
	.turnin 12718 >>交任务: |cRXP_FRIENDLY_更多的徽记|r
    .itemcount 39328,20
step
    .goto ScarletEnclave,53.9,58.1,15,0
	>>骑马返回墓穴。重新装备你的普通武器。将 Noth 的特制酒绑定到你的酒吧
    .target Baron Rivendare
    >>对话: |cRXP_FRIENDLY_瑞文戴尔男爵|r
	.turnin 12722 >>交任务: |cRXP_FRIENDLY_羊入虎口|r
	.goto ScarletEnclave,54.6,57.5
    >>对话: |cRXP_FRIENDLY_凯雷塞斯王子|r
    .turnin 12720 >>交任务: |cRXP_FRIENDLY_说服者|r
    .target Prince Keleseth
    .accept 12723 >>接任务: |cRXP_LOOT_深入血色敌后|r
    .goto ScarletEnclave,54.2,57.4
step
	>>骑车到房子，然后上楼到二楼
    >>对话: |cRXP_FRIENDLY_奥尔巴兹·血毒|r
    .turnin 12723 >>交任务: |cRXP_FRIENDLY_深入血色敌后|r
    .target Orbaz Bloodbane
    .accept 12724 >>接任务: |cRXP_LOOT_十字军的巡逻路线|r
    .goto ScarletEnclave,56.3,79.8
    .target Thassarian
    >>对话: |cRXP_FRIENDLY_萨萨里安|r
    .accept 12725 >>接任务: |cRXP_LOOT_死亡骑士的兄弟情谊|r
    .goto ScarletEnclave,56.3,80.0
step
    .goto ScarletEnclave,62.8,68.6,15,0
    .goto ScarletEnclave,63.0,68.0
	>>跑到猩红要塞的地下室，和库尔迪拉·死亡织者交谈。避免在途中与怪物战斗——如果你死了，让瓦格里复活你（不要释放）
	>>开始任务后不要保卫库尔蒂拉，这不是护卫
    >>对话: |cRXP_FRIENDLY_库尔迪拉·织亡者|r
    .turnin 12725 >>交任务: |cRXP_FRIENDLY_死亡骑士的兄弟情谊|r
    .target 库尔迪拉·死亡编织者
    .accept 12727 >>接任务: |cRXP_LOOT_杀出一条血路|r
step
	#completewith next
    .goto ScarletEnclave,63.1,68.2,15,0
    .goto ScarletEnclave,62.7,68.6,15,0
    .goto ScarletEnclave,62.9,68.3
	>>不要防守库尔蒂拉，而是前往顶楼。在桌子上拾取巡逻时间表
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
	.goto ScarletEnclave,63.0,68.0
	>>回到 库尔迪拉·死亡编织者 那里。杀死 Valroth。从地上捡起他的头
	>>在等待 Valroth 刷新时，你可能需要杀死攻击 Koltira 的小怪
    .complete 12727,1 --Valroth's Head (1)
step
    .goto ScarletEnclave,63.1,68.2,15,0
    .goto ScarletEnclave,62.7,68.6,15,0
    .goto ScarletEnclave,62.9,68.3
	>>前往顶楼并拾取桌子上的巡逻时间表
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    .goto ScarletEnclave,56.2,52.0
	>>再次点击大锅，获取更多诺斯的特酿
	.turnin 12718 >>交任务: |cRXP_FRIENDLY_更多的徽记|r
    .itemcount 39328,20
step
	#completewith next
	.destroy 39328 >>摧毁: |cRXP_ENEMY_十字军徽记|r
step
	>>返回房屋二楼
    .target Orbaz Bloodbane
    >>对话: |cRXP_FRIENDLY_奥尔巴兹·血毒|r
    .turnin 12724 >>交任务: |cRXP_FRIENDLY_十字军的巡逻路线|r
    .goto ScarletEnclave,56.3,79.8
    >>对话: |cRXP_FRIENDLY_萨萨里安|r
    .turnin 12727 >>交任务: |cRXP_FRIENDLY_杀出一条血路|r
    .target Thassarian
    .accept 12738 >>接任务: |cRXP_LOOT_复仇的呐喊！|r
    .goto ScarletEnclave,56.3,80.0
step
    .goto ScarletEnclave,52.6,80.7,40,0
    .goto ScarletEnclave,53.1,82.1
	>>骑马出屋前往教堂。与 Plaguefist 交谈
    >>对话: |cRXP_FRIENDLY_骑士团指挥官普雷菲斯特|r
    .turnin 12738 >>交任务: |cRXP_FRIENDLY_复仇的呐喊！|r
    .target Knight Commander Plaguefist
    .accept 12748 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Orc
    .accept 12739 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Tauren
    .accept 12742 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Human
    .accept 12743 >>接任务: |cRXP_LOOT_特殊的怜悯|r << NightElf
    .accept 12744 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Dwarf
    .accept 12745 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Gnome
    .accept 12746 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Draenei
    .accept 12747 >>接任务: |cRXP_LOOT_特殊的怜悯|r << BloodElf
    .accept 12749 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Troll
    .accept 12750 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Undead
    .accept 28649 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Worgen
    .accept 28650 >>接任务: |cRXP_LOOT_特殊的怜悯|r << Goblin
step << Orc
    .goto ScarletEnclave,53.8,83.4
	>>站在 Kug 前面，等待 RP 完成。之后杀死他
    .complete 12748,1 --Kug Ironjaw (1)
step << Tauren
    .goto ScarletEnclave,54.4,83.4
	>>站在马拉尔前面，等待 RP 完成。之后杀死他
    .complete 12739,1 -- Malar Bravehorn (1)
step << Human
    .goto ScarletEnclave,53.6,83.6
	>>站在艾伦面前，等待 RP 完成。之后杀了她
    .complete 12742,1 --Ellen Stanbridge  (1)
step << NightElf
    .goto ScarletEnclave,54.2,83.8
	>>站在 Yazmina 前面，等待 RP 完成。之后杀死她
    .complete 12743,1 -- Yazmina Oakenthorn (1)
step << Dwarf
    .goto ScarletEnclave,54.0,83.4
	>>站在 Donovan 前面，等待 RP 完成。之后杀死他
    .complete 12744,1 --Donovan Pulfrost (1)
step << Gnome
    .goto ScarletEnclave,54.0,83.4
	>>站在 Goby 前面，等待 RP 完成。之后杀死他
    .complete 12745,1 -- Goby Blastenheimer  (1)
step << Draenei
    .goto ScarletEnclave,54.4,83.4
	>>站在 Valok 前面，等待 RP 完成。之后杀死他
    .complete 12746,1 -- Valok the Righteous (1)
step << BloodElf
    .goto ScarletEnclave,54.2,83.4
	>>站在 Lady Eonys 前面，等待 RP 完成。之后杀死她
    .complete 12747,1 --Lady Eonys (1)
step << Troll
    .goto ScarletEnclave,53.8,83.4
	>>站在 Iggy 前面，等待 RP 完成。之后杀死他
    .complete 12749,1 --Iggy Darktusk(1)
step << Undead
    .goto ScarletEnclave,53.6,83.4
	>>站在 Antoine 前面，等待 RP 完成。之后杀死他
    .complete 12750,1 -- Antoine Brack (1)
step << Worgen
    .goto ScarletEnclave,54.145,83.282
	>>站在哈福德勋爵面前，等待 RP 完成。之后杀死他
    .complete 28649,1 -- Lord Harford (1)
step << Goblin
    .goto ScarletEnclave,54.111,83.756
	>>站在盖里·朗普斯坦面前，等待 RP 完成。之后杀死他
    .complete 28650,1 -- Gally Lumpstain (1)
step
    .goto ScarletEnclave,53.1,82.1
	>>返回瘟疫之拳
    >>对话: |cRXP_FRIENDLY_骑士团指挥官普雷菲斯特|r
    .turnin 12748 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Orc
    .turnin 12739 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Tauren
    .turnin 12742 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Human
    .turnin 12743 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Nightelf
    .turnin 12744 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Dwarf
    .turnin 12745 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Gnome
    .turnin 12746 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Draenei
    .turnin 12747 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Bloodelf
    .turnin 12749 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Troll
    .turnin 12750 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Undead
    .turnin 28649 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Worgen
    .turnin 28650 >>交任务: |cRXP_FRIENDLY_特殊的怜悯|r << Goblin
    .target Knight Commander Plaguefist
	.accept 12751 >>接任务: |cRXP_LOOT_欢迎回家|r
step
    .goto ScarletEnclave,56.3,80.0
	>>回到房子的二楼
    .target Thassarian
    >>对话: |cRXP_FRIENDLY_萨萨里安|r
    .turnin 12751 >>交任务: |cRXP_FRIENDLY_欢迎回家|r
    .goto ScarletEnclave,56.3,80.0
    .target Orbaz Bloodbane
    >>对话: |cRXP_FRIENDLY_奥尔巴兹·血毒|r
    .accept 12754 >>接任务: |cRXP_LOOT_悬崖伏击|r
    .goto ScarletEnclave,56.3,79.8
step
	.use 39645 >>使用背包里的临时掩体。杀死猩红信使。
    .goto ScarletEnclave,60.0,77.0
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
step
    .goto ScarletEnclave,56.3,79.8
	>>回到房子的二楼
    >>对话: |cRXP_FRIENDLY_奥尔巴兹·血毒|r
    .turnin 12754 >>交任务: |cRXP_FRIENDLY_悬崖伏击|r
    .target Orbaz Bloodbane
    .accept 12755 >>接任务: |cRXP_LOOT_命运的交汇点|r
step
    .goto ScarletEnclave,65.6,83.9
	>>一路骑行到海滩上的 |cRXP_FRIENDLY_General Abbendis|r
    >>对话: |cRXP_FRIENDLY_莉尼亚·阿比迪斯|r
    .turnin 12755 >>交任务: |cRXP_FRIENDLY_命运的交汇点|r
    .target High General Abbendis
    .accept 12756 >>接任务: |cRXP_LOOT_血色先锋军|r
step
    .goto ScarletEnclave,56.3,79.8
	>>回到房子的二楼
    >>对话: |cRXP_FRIENDLY_奥尔巴兹·血毒|r
    .turnin 12756 >>交任务: |cRXP_FRIENDLY_血色先锋军|r
    .target Orbaz Bloodbane
    .accept 12757 >>接任务: |cRXP_LOOT_血色十字军进犯……|r
step
	#completewith next
    .goto ScarletEnclave,50.0,32.3,20 >>等待奥巴兹召唤传送门。点击通往阿彻鲁斯的传送门返回指挥大厅
step
    .goto ScarletEnclave,48.9,29.9
	>>返回达里安·莫格莱尼身边
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 12757 >>交任务: |cRXP_FRIENDLY_血色十字军进犯……|r
    .target Highlord Darion Mograine
    .accept 12778 >>接任务: |cRXP_LOOT_血色十字军的末日|r
step
    .goto ScarletEnclave,47.4,26.8
	.trainer >>训练你的职业法术
--X SPELL IDS BASED ON SPECIALIZATION, COPY PASTE THIS FROM EARLIER
step
    .goto ScarletEnclave,52.0,35.0
    .fly >>点击狮鹫返回死亡裂口
step
    .goto ScarletEnclave,53.5,36.8
    >>对话: |cRXP_FRIENDLY_巫妖王|r
    .turnin 12778 >>交任务: |cRXP_FRIENDLY_血色十字军的末日|r
    .target The Lich King
    .accept 12779 >>接任务: |cRXP_LOOT_万物的终结……|r
step
	#completewith next
	.use 39700
	.vehicle >>使用冰霜幼龙之角来获得冰冻幼龙
step
	>>施放“冰冻死亡之箭”(1) 造成伤害（不要频繁使用）。使用“吞噬人形生物”(2) 拾取近战范围内的猩红士兵以恢复生命值和法力值。杀死被猩红士兵包围的弩炮
    .goto ScarletEnclave,56.0,62.2,100,0
    .goto ScarletEnclave,55.4,64.8,100,0
    .goto ScarletEnclave,54.8,66.8,100,0
    .goto ScarletEnclave,54.6,69.9,100,0
    .goto ScarletEnclave,54.4,75.6,100,0
    .goto ScarletEnclave,57.0,74.8,100,0
    .goto ScarletEnclave,57.3,71.8,100,0
    .goto ScarletEnclave,60.0,72.2,100,0
    .goto ScarletEnclave,62.6,75.1,100,0
    .goto ScarletEnclave,59.5,66.1,100,0
    .goto ScarletEnclave,59.5,60.2,100,0
    .goto ScarletEnclave,56.0,62.2,100,0
    .goto ScarletEnclave,55.4,64.8,100,0
    .goto ScarletEnclave,54.8,66.8
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .complete 12779,1 --Scarlet Soldiers (150)
step
	>>飞回巫妖王那里
    .goto ScarletEnclave,53.5,36.8
    >>对话: |cRXP_FRIENDLY_巫妖王|r
    .turnin 12779 >>交任务: |cRXP_FRIENDLY_万物的终结……|r
    .target The Lich King
    .accept 12800 >>接任务: |cRXP_LOOT_巫妖王的命令|r
step
    .goto ScarletEnclave,49.3,28.7,45,0
    .goto ScarletEnclave,47.1,24.1,45,0
    .goto ScarletEnclave,34.1,30.4
	>>穿过北方的毒蛇通道。骑马前往布劳曼磨坊并与萨拉诺交谈
    >>对话: |cRXP_FRIENDLY_天灾指挥官萨拉诺尔|r
    .turnin 12800 >>交任务: |cRXP_FRIENDLY_巫妖王的命令|r
    .target Scourge Commander Thalanor
    .accept 12801 >>接任务: |cRXP_LOOT_黎明之光|r
step
	#completewith next
	+与大领主达里安·莫格莱尼交谈以开始活动
	.skipgossip 29173,2
step
    .goto ScarletEnclave,39.0,38.5
	>>等待活动开始（在此期间你可以休息一下）。完成非常漫长的战斗和 RP
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto Eastern Plaguelands,39,39
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 12801 >>交任务: |cRXP_FRIENDLY_黎明之光|r
    .target Highlord Darion Mograine
    .accept 13165 >>接任务: |cRXP_LOOT_夺回阿彻鲁斯|r
step
	#completewith next
	.cast 50977 >>使用死亡之门法术返回黑锋要塞
step
    .goto Eastern Plaguelands,83.4,49.4
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 13165 >>交任务: |cRXP_FRIENDLY_夺回阿彻鲁斯|r
    .target Highlord Darion Mograine
    .accept 13166 >>接任务: |cRXP_LOOT_黑锋要塞之战|r
    .train 48721 >>训练你的职业法术
	.xp <58,1
step
    .goto Eastern Plaguelands,83.4,49.4
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 13165 >>交任务: |cRXP_FRIENDLY_夺回阿彻鲁斯|r
    .target Highlord Darion Mograine
    .accept 13166 >>接任务: |cRXP_LOOT_黑锋要塞之战|r
	.xp <57,1
step
	#completewith next
    .goto ScarletEnclave,50.3,33.1,8 >>通过门户
step
    #sticky
    #label Cinderglacier
    .cast 53341 >>确保你已经装备了新武器。在房间中的任何符文熔炉处为你的新武器附魔灰烬符文
step
	#completewith next
	>>杀死黑锋要塞主楼层的 |cRXP_ENEMY_Scourge|r
    .goto ScarletEnclave,48.1,28.4,0,0
    .complete 13166,2 --Scourge (10)
step
    .goto ScarletEnclave,48.871,29.739
	>>杀死位于黑锋要塞主楼层中央的 |cRXP_ENEMY_Patchwerk|r
    .complete 13166,1 --Patchwerk (1)
step
	>>杀死黑锋要塞主楼层的 |cRXP_ENEMY_Scourge|r
    .goto ScarletEnclave,48.1,28.4
    .complete 13166,2 --Scourge (10)
step
    #requires Cinderglacier
	#completewith next
    .goto ScarletEnclave,50.5,33.4,10 >>跑进紫色传送门
step
    #requires Cinderglacier
    .goto ScarletEnclave,50.7,33.7
	>>返回达里安·莫格莱尼身边
    >>对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 13166 >>交任务: |cRXP_FRIENDLY_黑锋要塞之战|r
    .target Highlord Darion Mograine
    .accept 13188 >>接任务: |cRXP_LOOT_王者之城|r << Alliance
    .accept 13189 >>接任务: |cRXP_LOOT_酋长的祝福|r << Horde
step << Horde
    .goto ScarletEnclave,52.1,35.0
	.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Horde
    .goto Orgrimmar,31.74,37.82
    .target Thrall
    >>对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 13189 >>交任务: |cRXP_FRIENDLY_酋长的祝福|r
step << Horde
    .goto Orgrimmar,38.1,85.8
	.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step << Alliance
    .goto ScarletEnclave,50.9,36.3
	.zone Elwynn Forest >>前往: |cRXP_PICK_暴风城|r
step << Alliance
    .goto Stormwind City,79.989,38.468
    .target King Varian Wrynn
    >>对话: |cRXP_FRIENDLY_瓦里安·乌瑞恩国王|r
    .turnin 13188 >>交任务: |cRXP_FRIENDLY_王者之城|r
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
]])