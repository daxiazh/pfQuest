local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 增强角色 58-60
#version 1
#group RestedXP 联盟升级至 58-60
#defaultfor 58Boost
#next RestedXP 联盟 60-70\\59-61 地狱火半岛
step << Warrior
.accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Warrior
    .goto StormwindClassic,78.3,47.4
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Warrior
    .goto StormwindClassic,78.3,47.4
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Warrior
    .goto StormwindClassic,78.3,47.4
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r
--
step << Paladin
    .goto StormwindClassic,37.3,33.0
    .accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Paladin
    .goto StormwindClassic,37.2,33.2
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r
--
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Rogue
    .goto StormwindClassic,78.3,57.3
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r
--
step << Priest
    .goto StormwindClassic,38.8,26.4
    .accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Priest
    .goto StormwindClassic,38.8,26.4
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Priest
    .goto StormwindClassic,38.8,26.4
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Priest
    .goto StormwindClassic,38.8,26.4
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r

--
step << Mage
    .goto StormwindClassic,38.7,79.3
    .accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Mage
    .goto StormwindClassic,38.7,79.3
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Mage
    .goto StormwindClassic,38.7,79.3
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Mage
    .goto StormwindClassic,38.7,79.3
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r

--
step << Warlock
    .goto StormwindClassic,26.0,77.4
    .accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Warlock
    .goto StormwindClassic,26.0,77.4
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Warlock
    .goto StormwindClassic,26.0,77.4
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Warlock
    .goto StormwindClassic,26.1,77.4
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r

--
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .accept 64028 >>接任务: |cRXP_LOOT_新的开始|r
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Hunter
    .goto StormwindClassic,61.7,15.2
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r

step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64028 >>交任务: |cRXP_FRIENDLY_新的开始|r
    .accept 64031 >>接受生存工具
    .complete 64031,1 --1/1 Open the Survival Kit (1)
    .complete 64031,2 --1/1 Equip a Weapon (1)
step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64031 >>上交生存工具
    .accept 64034 >>接任务: |cRXP_WARN_战斗训练|r
    .complete 64034,1 --1/1 Train a Spell (1)
step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64034 >>交任务: |cRXP_FRIENDLY_战斗训练|r
    .accept 64035 >>接受有才华的人
    .complete 64035,1 --5 Talent Points Allocated (1)
step << Druid
    .goto StormwindClassic,21.4,51.4
    .turnin 64035 >>上交才华
    .accept 64038 >>接任务: |cRXP_LOOT_黑暗之门|r
step << skip
    #completewith bs1
    .goto StormwindClassic,78.0,18.2
.target King Varian Wrynn
.target Highlord Bolvar Fordragon
>>对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
-->>对话: |cRXP_FRIENDLY_瓦里安·乌瑞恩国王|r
    .accept 6182 >>接任务: |cRXP_LOOT_第一个和最后一个|r
    >>奥妮克希亚调和任务中有一个很长的脚本 RP 序列部分，这使得伯瓦尔几分钟内无法与玩家互动，如果是这种情况，请跳过此步骤并在完成燃烧平原后尝试获取此任务
step
    #label bs1
    .goto StormwindClassic,66.2,62.2
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil>>飞往摩根守夜处
step
    .goto Burning Steppes,85.820,68.948
.target Helendis Riverhorn
>>对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
    .accept 4182 >>接任务: |cRXP_LOOT_黑龙的威胁|r
step
    .goto Burning Steppes,87.7,46.1
    .goto Burning Steppes,88.8,37.6
    .goto Burning Steppes,88.3,41.4
    .goto Burning Steppes,88.6,53.4
    .complete 4182,1 --黑色幼龙 (15)
    .complete 4182,2 --黑龙人 (10)
    .complete 4182,3 --黑龙 (1)
    .complete 4182,4 --黑色龙族 (4)
step
    .goto Burning Steppes,85.820,68.948
>>对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
    .turnin 4182 >>交任务: |cRXP_FRIENDLY_黑龙的威胁|r
.target Helendis Riverhorn
    .accept 4183 >>接任务: |cRXP_LOOT_真正的主人|r
step
    .goto Burning Steppes,84.4,68.4
    .fly Lakeshire >>飞往 湖畔郡
step
    .goto Redridge Mountains,29.8,44.5
>>对话: |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 4183 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.target 所罗门法官
    .accept 4184 >>接任务: |cRXP_LOOT_真正的主人|r
step
    .goto Redridge Mountains,30.58,59.41
    .fly Stormwind>>飞往暴风城
step
    .goto StormwindClassic,78.0,18.2
>>对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
    .turnin 4184 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.target Highlord Bolvar Fordragon
    .accept 4185 >>接任务: |cRXP_LOOT_真正的主人|r
-- .accept 6182 >>接任务: |cRXP_LOOT_第一个和最后一个|r
step
    .goto StormwindClassic,78.11,17.75
    >>与普瑞斯托夫人交谈
    .complete 4185,1 --Advice from Lady Prestor (1)
step
    .goto StormwindClassic,78.0,18.2
>>对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
    .turnin 4185 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.target Highlord Bolvar Fordragon
    .accept 4186 >>接任务: |cRXP_LOOT_真正的主人|r
step << skip
    .goto StormwindClassic,75.9,59.8
>>对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 6182 >>交任务: |cRXP_FRIENDLY_第一个和最后一个|r
.target 马蒂亚斯·肖大师
    .accept 6183 >>接任务: |cRXP_LOOT_逝者的荣耀|r
    .turnin 6183 >>交任务: |cRXP_FRIENDLY_逝者的荣耀|r
    .accept 6184 >>接任务: |cRXP_LOOT_弗林特·沙多摩尔|r
step
    .goto StormwindClassic,66.2,62.3
    .fly Lakeshire >>飞往 湖畔郡
step
    .goto Redridge Mountains,29.8,44.5
>>对话: |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 4186 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.target 所罗门法官
    .accept 4223 >>接任务: |cRXP_LOOT_真正的主人|r
step
    .goto Redridge Mountains,30.6,59.4
    .fly Morgan's Vigil >>飞往摩根守夜处
step
    .goto Burning Steppes,84.6,68.9
.target Marshal Maxwell
>>对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
    .turnin 4223 >>交任务: |cRXP_FRIENDLY_真正的主人|r
step
    .goto Burning Steppes,84.4,68.3
    .fly Southshore >>飞往 南海镇
step
    .goto Hillsbrad Foothills,51.1,58.9
    .home >>将你的炉石设置为南海镇
step
    .goto Hillsbrad Foothills,49.4,52.3
    .fly Chillwind Camp >>飞往冰风营地
step
    #completewith mark1
    .goto Western Plaguelands,42.9,84.6,0
    >>与冰风镇的德莱尼 NPC 交谈
.target Anchorite Truuen
>>对话: |cRXP_FRIENDLY_学者特卢恩|r
    .accept 9474 >>接任务: |cRXP_LOOT_光明使者的印记|r
    >>任务给予者是一段很长的脚本角色扮演序列的一部分，如果你找不到他，请跳过此步骤
step
    .goto Western Plaguelands,42.8,84.0
.target 指挥官 Ashlam Valorfist
>>对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
step
    .goto Western Plaguelands,43.418,84.834
.target Nathaniel Dumah
>>对话: |cRXP_FRIENDLY_纳萨尼尔·杜马|r
    .accept 5903 >>接任务: |cRXP_LOOT_瘟疫与你|r
step << skip
    .goto Western Plaguelands,43.7,84.5
>>对话: |cRXP_FRIENDLY_弗林特·沙多摩尔|r
    .turnin 6184 >>交任务: |cRXP_FRIENDLY_弗林特·沙多摩尔|r
.target Flint Shadowmore
    .accept 6185 >>接任务: |cRXP_LOOT_东部的瘟疫|r
step
    #label mark1
    .goto Western Plaguelands,42.9,85.0
    .fly Light's Hope Chapel >>飞往圣光之愿礼拜堂
step
    .goto Eastern Plaguelands,79.5,64.0
.target Caretaker Alen
>>对话: |cRXP_FRIENDLY_护理者奥林|r
    .accept 6021 >>接任务: |cRXP_LOOT_流亡者塞达尔|r
    .accept 5281 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
step << Hunter
    #sticky
    .tame 8602 >>如果你的宠物除了咆哮之外没有其他技能，那么就抛弃你的宠物，在去往瘟疫之林的路上驯服一只 58 级的蝙蝠
    >>购买一些真菌来喂养你的新宠物
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>如果你有这个任务，就放弃达隆郡的保卫者
step
    .goto Eastern Plaguelands,34.0,28.1
	>>寻找瘟疫木周围的白蚁丘
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    .goto Eastern Plaguelands,14.5,33.7
>>对话: |cRXP_FRIENDLY_埃根|r
    .turnin 5281 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.target Egan
    .accept 5282 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
step
    #completewith next
    .hs >>炉石到南海镇
step
    .goto Hillsbrad Foothills,49.4,52.3
    .fly Chillwind Camp >>飞往冰风营地
step
    #completewith tower
    .goto Western Plaguelands,42.9,84.6,0
    >>与冰风镇的德莱尼 NPC 交谈
.target Anchorite Truuen
>>对话: |cRXP_FRIENDLY_学者特卢恩|r
    .accept 9474 >>接任务: |cRXP_LOOT_光明使者的印记|r
    >>任务给予者是一段很长的脚本角色扮演序列的一部分，如果他不在 Chillwind，那么在你执行区域任务时留意一下他
step
    .goto Western Plaguelands,50.4,76.4
    .complete 5092,2 --食尸鬼 (10)
    .complete 5092,1 --骷髅剥皮者 (10)
step
    .goto Western Plaguelands,49.19,78.64
    >>与屋内的玛琳·雷德帕斯交谈
.target Marlene Redpath
>>对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
    .accept 5142 >>接任务: |cRXP_LOOT_小帕米拉|r
step
    .goto Western Plaguelands,42.8,84.0
>>对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5092 >>交任务: |cRXP_FRIENDLY_扫清道路|r
.target 指挥官 Ashlam Valorfist
    .accept 5097 >>接任务: |cRXP_LOOT_标记哨塔|r
    .accept 5215 >>接任务: |cRXP_LOOT_瘟疫之锅|r
step
    .goto Western Plaguelands,43.0,84.6
>>对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
    .turnin 5215 >>交任务: |cRXP_FRIENDLY_瘟疫之锅|r
.target High Priestess MacDonnell
    .accept 5216 >>接任务: |cRXP_LOOT_目标：费尔斯通农场|r
step
    .goto Western Plaguelands,43.418,84.834
>>对话: |cRXP_FRIENDLY_纳萨尼尔·杜马|r
    .turnin 5903 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.target Nathaniel Dumah
    .accept 5904 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
    .goto Western Plaguelands,40.0,71.8
	>>使用塔门口一侧背包中的信标火炬
    .complete 5097,1 --Tower One marked (1)
step
    .goto Western Plaguelands,37.1,56.9
    >>杀死大锅领主并夺取大锅钥匙
    .turnin 5216 >>交任务: |cRXP_FRIENDLY_目标：费尔斯通农场|r
    .accept 5217 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
    .goto Western Plaguelands,42.3,66.2
	>>使用塔门口一侧背包中的信标火炬
    .complete 5097,2 --Tower Two marked (1)
step
    .goto Western Plaguelands,43.0,84.4
>>对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
    .turnin 5217 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.target High Priestess MacDonnell
    .accept 5219 >>接任务: |cRXP_LOOT_目标：达尔松之泪|r
step
    .goto Western Plaguelands,46.7,71.0
	>>使用塔门口一侧背包中的信标火炬
    .complete 5097,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,53.7,64.7
.target Mulgris Deepriver
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .accept 4984 >>接任务: |cRXP_LOOT_大自然的苦楚|r
step
	#completewith Businessman
    .goto Western Plaguelands,46.0,47.7,0
	>>病狼与腐尸潜伏者会同时出现。如果你找不到狼，就把它们也杀掉。
    .complete 4984,1 --Kill 病狼 (x8)
	.unitscan 病狼
step
    .goto Western Plaguelands,47.8,50.8
	>>点击谷仓内的日记
    .turnin 5058 >>交任务: |cRXP_FRIENDLY_达尔松夫人的日记|r
step
	#completewith DalsonsT
    .goto Western Plaguelands,46.9,51.5,0
	>>寻找在农舍周围巡逻的流浪骷髅
    .collect 12738,1 --Collect Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
    .goto Western Plaguelands,46.0,52.4
    .complete 5219,1 --Collect Dalson's Tears Cauldron Key (x1)
step
	#label DalsonsT
    .goto Western Plaguelands,46.2,52.1
    .turnin 5219 >>交任务: |cRXP_FRIENDLY_目标：达尔松之泪|r
    .accept 5220 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
    .goto Western Plaguelands,46.9,51.5
	>>寻找在农舍周围巡逻的流浪骷髅
    .collect 12738,1 --Collect Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
	>>确保你在上交前身体健康
    .turnin 5059 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
    .goto Western Plaguelands,48.2,49.7
	>>杀死农夫达尔森。抢走他的钥匙
    .collect 12739,1 --Collect Dalson Cabinet Key (x1)
step
    .goto Western Plaguelands,47.4,49.7
	>>点击农舍顶层的柜子
    .turnin 5060 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
    .goto Western Plaguelands,48.4,31.9
    .turnin 5904 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
    .accept 6389 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
    .goto Western Plaguelands,51.920,28.058
.target Kirsta Deepshadow
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .accept 6004 >>接任务: |cRXP_LOOT_未竟的事业|r
step
    .goto Western Plaguelands,52.0,44.3,70,0
    .goto Western Plaguelands,50.3,41.1,70,0
    .goto Western Plaguelands,40.7,52.2,70,0
    .goto Western Plaguelands,50.3,41.1,70,0
    .goto Western Plaguelands,52.0,44.3
	>>杀死猩红怪物。如果你找不到医生和猎人，就杀死营地里的怪物来强制重生，因为它们会与其他类型的怪物共享重生
	>>如果你找不到法师，就杀死骑士（因为他们会共享刷新点）
    .complete 6004,1 --Scarlet Medic (2)
    .complete 6004,2 --Scarlet Hunter (2)
    .complete 6004,3 --Scarlet Mage (2)
    .complete 6004,4 --Scarlet Knight (2)
step
    .goto Western Plaguelands,51.920,28.058
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6004 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
    .accept 6023 >>接任务: |cRXP_LOOT_未竟的事业|r
step
	#label Businessman
    .goto Western Plaguelands,55.1,23.5
    >>寻找在塔上上下下巡逻的有名暴徒
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *There is a level 63 elite mob that can spawn at the tower, if that's the case just be patient and wait for Durgen to come down
	.unitscan Cavalier Durgen
step
    #label tower
    .goto Western Plaguelands,55.1,23.5
    >>抢劫塔顶的宝箱，如果 63 级稀有精英挡住了路，请跳过此步骤
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
    .isOnQuest 9474
step
    .goto Western Plaguelands,57.5,35.2
    .complete 6023,1 --Huntsman Radley (1)
step
    .goto Western Plaguelands,52.0,28.1
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
    .accept 6025 >>接任务: |cRXP_LOOT_未竟的事业|r
step
	>>跑到壁炉谷的塔顶
    .goto Western Plaguelands,45.6,18.6
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    .goto Western Plaguelands,52.0,28.1
.target Kirsta Deepshadow
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
    .turnin 6025 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
step
    .goto Western Plaguelands,51.2,53.3,70,0
    .goto Western Plaguelands,46.9,47.0,70,0
    .goto Western Plaguelands,50.4,35.0,70,0
    .goto Western Plaguelands,45.6,37.7,70,0
    .goto Western Plaguelands,42.8,56.7,70,0
    .goto Western Plaguelands,51.2,53.3
	>>病狼与腐尸潜伏者会同时出现。如果你找不到狼，就把它们也杀掉。
    .complete 4984,1 --Kill 病狼 (x8)
	.unitscan 病狼
step
    .goto Western Plaguelands,44.3,63.2
	>>使用塔门口一侧背包中的信标火炬
    .complete 5097,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,42.7,84.1
>>对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5097 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
.target 指挥官 Ashlam Valorfist
    .accept 5533 >>接任务: |cRXP_LOOT_通灵学院|r
step
    .goto Western Plaguelands,42.69,83.90
>>对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5533 >>交任务: |cRXP_FRIENDLY_通灵学院|r
.target Alchemist Arbington
    .accept 5537 >>接任务: |cRXP_LOOT_骸骨碎片|r
step
    .goto Western Plaguelands,42.94,84.42
>>对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
    .turnin 5220 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.target High Priestess MacDonnell
    .accept 5222 >>接任务: |cRXP_LOOT_目标：嚎哭鬼屋|r
step
    .goto Western Plaguelands,42.94,84.42
.target Anchorite Truuen
>>对话: |cRXP_FRIENDLY_学者特卢恩|r
    .turnin 9474 >>交任务: |cRXP_FRIENDLY_光明使者的印记|r
    .isQuestComplete 9474
step
    .goto Western Plaguelands,43.5,84.9
.target Nathaniel Dumah
>>对话: |cRXP_FRIENDLY_纳萨尼尔·杜马|r
    .turnin 6389 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
step
    .goto Western Plaguelands,39.4,66.9
.target Chromie
>>对话: |cRXP_FRIENDLY_克罗米|r
    .accept 4971 >>接任务: |cRXP_LOOT_时间问题|r
step
    #completewith next
    >>杀死安多哈尔的骷髅。掠夺他们的碎片
    .goto Western Plaguelands,42.10,69.98,0
    .complete 5537,1 --Skeletal Fragments (15)
step
	>>在安多哈尔发光筒仓旁使用时间置换器。杀死生成的时间寄生虫
    .goto Western Plaguelands,48.2,66.5
    .complete 4971,1 --Temporal Parasite (10)
step
    >>杀死安多哈尔的骷髅。掠夺他们的碎片
    .goto Western Plaguelands,42.10,69.98
    .complete 5537,1 --Skeletal Fragments (15)
step
    .goto Western Plaguelands,53.0,65.8
    .turnin 5222 >>交任务: |cRXP_FRIENDLY_目标：嚎哭鬼屋|r
    .accept 5223 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
    .goto Western Plaguelands,53.7,64.7
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .turnin 4984 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
    .accept 4985 >>接任务: |cRXP_LOOT_大自然的苦楚|r
step
    .goto Western Plaguelands,53.9,51.3
	>>患病灰熊与瘟疫潜伏者共享产卵。如果你找不到灰熊，就把它们也杀掉。
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.7,64.7
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
    .turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
    .accept 4986 >>接任务: |cRXP_LOOT_雕文橡木枝|r << !Shaman !Warlock !Paladin
step
    .goto Western Plaguelands,42.908,84.496
>>对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
    .turnin 5223 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.target High Priestess MacDonnell
    .accept 5225 >>接任务: |cRXP_LOOT_目标：盖罗恩农场|r
step
    .goto Western Plaguelands,62.6,58.7
    .turnin 5225 >>交任务: |cRXP_FRIENDLY_目标：盖罗恩农场|r
    .accept 5226 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
	>>前往墓穴底部
    .goto Eastern Plaguelands,27.3,85.3
    .complete 6021,1 --Zaeldarr's Head (1)
step << skip
    .goto Eastern Plaguelands,28.8,79.8
	>>点击地面上的骷髅。拾取它以获得徽章
    .complete 6185,2 --SI:7 Insignia (Rutger) (1)
step << skip
    .goto Eastern Plaguelands,28.8,74.9
	>>点击地面上的骷髅。拾取它以获得徽章
    .complete 6185,4 --SI:7 Insignia (Turyen) (1)
step << skip
    .goto Eastern Plaguelands,27.2,75.0
	>>点击地面上的骷髅。拾取它以获得徽章
    .complete 6185,3 --SI:7 Insignia (Fredo) (1)
    .complete 6185,1 --The Blightcaller Uncovered (1)
step
    .goto Eastern Plaguelands,36.5,90.9
>>对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
    .turnin 5142 >>交任务: |cRXP_FRIENDLY_小帕米拉|r
.target Pamela Redpath
    .accept 5149 >>接任务: |cRXP_LOOT_帕米拉的洋娃娃|r
step
	#completewith next
    .goto Eastern Plaguelands,38.14,92.43,20,0
    .goto Eastern Plaguelands,39.61,92.60,20,0
    .goto Eastern Plaguelands,39.60,90.00
    >>抢劫达隆郡建筑物周围的 3 个玩偶部件。每次你尝试抢劫一个玩偶部件时，都会出现一个鬼魂
	.collect 12886,1
	.collect 12887,1
	.collect 12888,1
step
    .goto Eastern Plaguelands,36.4,90.8
    >>点击任意一个娃娃部位，将它们组合在一起
    .complete 5149,1 --Pamela's Doll (1)
step
    .goto Eastern Plaguelands,36.4,90.8
>>对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
    .turnin 5149 >>交任务: |cRXP_FRIENDLY_帕米拉的洋娃娃|r
.target Pamela Redpath
    .accept 5152 >>接任务: |cRXP_LOOT_玛莱恩姑妈|r
    .accept 5241 >>接任务: |cRXP_LOOT_卡林叔叔|r
step
    #completewith next
    .hs >>炉石到南海镇
step
    .goto Eastern Plaguelands,81.6,59.3
    .fly Chillwind Camp >>飞往冰风营地
step
    .goto Western Plaguelands,42.908,84.496
.target High Priestess MacDonnell
>>对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
    .turnin 5226 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
step
    .goto Western Plaguelands,42.7,84.1
.target 指挥官 Ashlam Valorfist
>>对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5237 >>交任务: |cRXP_FRIENDLY_任务完成！|r
step
    .goto Western Plaguelands,42.7,83.8
.target Alchemist Arbington
>>对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5537 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
step << skip
    .goto Western Plaguelands,43.6,84.4
>>对话: |cRXP_FRIENDLY_弗林特·沙多摩尔|r
    .turnin 6185 >>交任务: |cRXP_FRIENDLY_东部的瘟疫|r
.target Flint Shadowmore
    .accept 6186 >>接任务: |cRXP_LOOT_凋零者|r
step
    .goto Western Plaguelands,49.1,78.5
>>对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
    .turnin 5152 >>交任务: |cRXP_FRIENDLY_玛莱恩姑妈|r
.target Marlene Redpath
    .accept 5153 >>接任务: |cRXP_LOOT_古怪的历史学家|r
step
    .goto Western Plaguelands,49.6,76.7
	>>抢劫房子外面的墓碑
    .complete 5153,1 --Joseph's Wedding 戒指 (1)
step
    .goto Western Plaguelands,39.46,66.90
>>对话: |cRXP_FRIENDLY_克罗米|r
    .turnin 4971 >>交任务: |cRXP_FRIENDLY_时间问题|r
.target Chromie
    .accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
    .turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
    .accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r
step
    #completewith next
    .goto Western Plaguelands,40.4,66.5,0
    >>在被烧毁的房屋内寻找小锁箱。每栋房子应该都有一个
    .complete 4972,1 --Andorhal Watch (5)
step
    .goto Western Plaguelands,43.4,69.6
	>>在安多哈尔市政厅里搜刮书籍，直到找到正确的那本
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
	*The correct book's pages has a lighter shade of grey and sometimes the correct book won't spawn
	*If you're unlucky, you have to keep looting bad tomes until a good one spawns
step
    .goto Western Plaguelands,40.4,66.5
    >>在被烧毁的房屋内寻找小锁箱。每栋房子应该都有一个
    .complete 4972,1 --Andorhal Watch (5)
step
    .goto Western Plaguelands,39.45,66.88
>>对话: |cRXP_FRIENDLY_克罗米|r
    .turnin 4972 >>交任务: |cRXP_FRIENDLY_找回时间|r
    .turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.target Chromie
    .accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
step
    .goto Western Plaguelands,42.9,85.0
    .fly Light's Hope Chapel >>飞往圣光之愿礼拜堂
step
    .goto Eastern Plaguelands,81.51,59.81
    >>与卡林·雷德帕斯交谈
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
    .turnin 5241 >>交任务: |cRXP_FRIENDLY_卡林叔叔|r
    .turnin 5210 >>交任务: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.target Carlin Redpath
    .accept 5181 >>接任务: |cRXP_LOOT_达隆郡的恶魔|r
step
    .goto Eastern Plaguelands,79.7,63.7
.target Caretaker Alen
>>对话: |cRXP_FRIENDLY_护理者奥林|r
    .turnin 6021 >>交任务: |cRXP_FRIENDLY_流亡者塞达尔|r
step
    #completewith next
    .goto Eastern Plaguelands,51.41,49.70
    .xp 60-8750 >>磨练经验值，直到距离 60 级还有 8750 经验值
step
    >>如果你仍然需要经验值，就去玩达隆郡的恶棍吧
    .complete 5181,1 --Skull of Horgus (1)
    .goto Eastern Plaguelands,51.41,49.70
    .complete 5181,2 --Shattered Sword of Marduk (1)
    .goto Eastern Plaguelands,53.90,65.71
.target Carlin Redpath
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
    .turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
    .goto Eastern Plaguelands,81.52,59.87
step
    .goto Eastern Plaguelands,81.64,59.28
    .fly Stormwind >>飞往暴风城
step << skip
    .goto StormwindClassic,77.9,18.2
.target King Varian Wrynn
>>对话: |cRXP_FRIENDLY_瓦里安·乌瑞恩国王|r
    .turnin 6186 >>交任务: |cRXP_FRIENDLY_凋零者|r
]])
