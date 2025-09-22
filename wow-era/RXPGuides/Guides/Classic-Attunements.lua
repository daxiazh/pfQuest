RXPGuides.RegisterGuide([[
#classic
<< Alliance
#group RestedXP 终局指南
#subgroup 调和
#name 奥妮克希亚调和 (A)


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_前往|r |cFFfa9602燃烧平原|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
    .accept 4182 >>接任务: |cRXP_LOOT_黑龙的威胁|r
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>杀死 |cRXP_ENEMY_黑色幼龙s|r、|cRXP_ENEMY_黑龙人s|r、|cRXP_ENEMY_黑色龙族s|r 和 |cRXP_ENEMY_黑龙|r
    >>|cRXP_ENEMY_黑龙宝宝|r|cRXP_WARN_，|r |cRXP_ENEMY_黑龙宝宝|r |cRXP_WARN_和|r |cRXP_ENEMY_黑龙宝宝|r |cRXP_WARN_都是精英。必要时组队|r
    .complete 4182,1 -- 黑色幼龙 slain (15)
    .mob +黑色幼龙
    .complete 4182,2 -- 黑龙人 slain (10)
    .mob +黑龙人
    .complete 4182,4 -- 黑色龙族 slain (4)
    .mob +黑龙
    .complete 4182,3 -- 黑龙 slain
    .mob +黑色龙族
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
    .turnin 4182 >>交任务: |cRXP_FRIENDLY_黑龙的威胁|r
    .accept 4183 >>接任务: |cRXP_LOOT_真正的主人|r
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
    .accept 4183 >>接任务: |cRXP_LOOT_真正的主人|r
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博古斯·粗臂|r
    .fly Redridge >>飞往赤脊山
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 4183 >>交任务: |cRXP_FRIENDLY_真正的主人|r
    .accept 4184 >>接任务: |cRXP_LOOT_真正的主人|r
    .target 所罗门法官
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Stormwind >>飞往暴风城
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
    .turnin 4184 >>交任务: |cRXP_FRIENDLY_真正的主人|r
    .accept 4185 >>接任务: |cRXP_LOOT_真正的主人|r
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
    .turnin 4185 >>交任务: |cRXP_FRIENDLY_真正的主人|r
    .accept 4186 >>接任务: |cRXP_LOOT_真正的主人|r
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge>>飞往赤脊山
    .target Dungar Longdrink
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 4186 >>交任务: |cRXP_FRIENDLY_真正的主人|r
    .accept 4223 >>接任务: |cRXP_LOOT_真正的主人|r
    .target 所罗门法官
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
    .fly Burning Steppes >>飞往燃烧平原
    .target Ariena Stormfeather
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
    .turnin 4223 >>交任务: |cRXP_FRIENDLY_真正的主人|r
    .accept 4224 >>接任务: |cRXP_LOOT_真正的主人|r
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >>前往火焰峰
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狼狈不堪的约翰|r
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
    .turnin 4224 >>交任务: |cRXP_FRIENDLY_真正的主人|r
    .accept 4241 >>接任务: |cRXP_WARN_温德索尔元帅|r
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你的团队已经准备好|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
    >>|cRXP_WARN_如果你的小组没有盗贼，你可能需要杀死|r |cRXP_ENEMY_高级审讯者 Gerstahn|r |cRXP_WARN_以获得|r |cRXP_LOOT_牢房钥匙|r |cRXP_WARN_打开门|r
    .turnin 4241 >>交任务: |cRXP_FRIENDLY_温德索尔元帅|r
    .accept 4242 >>接任务: |cRXP_WARN_被遗弃的希望|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>前往 |cFFfa9602燃烧平原|r 的摩根守夜人
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
    >>|cRXP_WARN_任务链将在此停止，直到你找到|r |T134331:0|t[一张皱巴巴的纸条] |cRXP_WARN_at BRD|r
    .turnin 4242 >>交任务: |cRXP_FRIENDLY_被遗弃的希望|r
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>进入黑石深渊
step
    .isQuestTurnedIn 4242
    >>在 BRD 处杀死 |cRXP_ENEMY_Dwarves|r。搜刮他们以获得 |T134331:0|t[一张皱巴巴的纸条]
    .use 11446 >>|cRXP_WARN_使用|r |T134331:0|t[一张皱巴巴的纸条] |cRXP_WARN_来开始任务|r
    >>|cRXP_WARN_在杀死 Boss 之前执行此操作非常重要 |cRXP_ENEMY_General Angerforge|r 和|r |cRXP_ENEMY_Golem Lord Argelmach|r
    >>|cRXP_WARN_如果你现在还没有找到它，请清理拘留区，直到它掉落|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >>接任务: |cRXP_WARN_弄皱的便笺|r
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
    .turnin 4264 >>交任务: |cRXP_FRIENDLY_弄皱的便笺|r
    .accept 4282 >>接任务: |cRXP_WARN_一丝希望|r
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
    .accept 4282 >>接任务: |cRXP_WARN_一丝希望|r
step
    .isOnQuest 4282
    >>杀死 |cRXP_ENEMY_General Angerforge|r 和 |cRXP_ENEMY_Golem Lord Argelmach|r。掠夺他们两人以获得 |cRXP_LOOT_Marshal Windsor 的遗失信息|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
    >>|cRXP_WARN_确保所有队员都已关闭自动接受功能！ RestedXP 已关闭自动接受功能|r
    >>|cRXP_WARN_接受此任务将开始越狱护送。确保你已经清理了所有拘留区，以便更轻松地护送|r |cRXP_FRIENDLY_Marshal Windsor|r
    .turnin 4282 >>交任务: |cRXP_FRIENDLY_一丝希望|r
    .accept 4322,1 >>接任务: |cRXP_WARN_冲破牢笼！|r
step
    .isOnQuest 4322
    >>护送 |cRXP_FRIENDLY_Marshal Windsor|r 穿过 BRD
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>前往 |cFFfa9602燃烧平原|r 的摩根守夜人
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
    .turnin 4322 >>交任务: |cRXP_FRIENDLY_冲破牢笼！|r
    .accept 6402 >>接任务: |cRXP_WARN_集合在暴风城|r
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
    .accept 6402 >>接任务: |cRXP_WARN_集合在暴风城|r
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍卫洛文|r, |cRXP_FRIENDLY_雷吉纳德·温德索尔|r
    >>在暴风城大门处与 |cRXP_FRIENDLY_Squire Rowe|r 交谈后，他会召唤 |cRXP_FRIENDLY_Reginald Windsor|r 前来
    >>|cRXP_WARN_如果您在派对中，请确保没有人自动接受大化装舞会。此步骤的自动接受功能已关闭|r
    .turnin 6402 >>交任务: |cRXP_FRIENDLY_集合在暴风城|r
    .accept 6403,1 >>接任务: |cRXP_WARN_潜藏者|r
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>护送 |cRXP_FRIENDLY_Reginald Windsor|r 进入暴风要塞
    >>不要在城堡内协助 |cRXP_FRIENDLY_Reginald Windsor|r 战斗。如果你这样做，你很有可能会死。留在箭头位置，让事件自行结束。这将需要几分钟
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
    .turnin 6403 >>交任务: |cRXP_FRIENDLY_潜藏者|r
    .accept 6501 >>接任务: |cRXP_WARN_巨龙之眼|r
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
    .accept 6501 >>接任务: |cRXP_WARN_巨龙之眼|r
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>跳过山峰到达 |cRXP_FRIENDLY_Haleh|r
    >>起始位置已在地图上标注。请仔细按照航点箭头指示
    >>|cRXP_WARN_如果你有|r |T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[Slow Fall] |cRXP_WARN_，从而使跳跃更容易|r << !Priest !Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_或|r |T132917:0|t[Light Feathers]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[Slow Fall] |cRXP_WARN_以使跳跃更容易|r << Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_或|r |T132917:0|t[Light Feathers]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[Slow Fall] |cRXP_WARN_或|r |T135928:0|t[Levitate] |cRXP_WARN_以使跳跃更容易|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >>|cRXP_WARN_点击此处查看视频参考|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈尔琳|r
    .turnin 6501 >>交任务: |cRXP_FRIENDLY_巨龙之眼|r
    .accept 6502 >>接任务: |cRXP_WARN_龙火护符|r
    .target Haleh
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个 10 人地下城。你或你队伍中的某个人必须拥有|r |T133343:0|t[|cRXP_LOOT_升天印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    .isQuestTurnedIn 6403
    >>杀死 |cRXP_ENEMY_General Drakkisath|r。从他身上搜刮 |cRXP_LOOT_Blood of the Black Dragon Champion|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>跳过山峰到达 |cRXP_FRIENDLY_Haleh|r
    >>起始位置已在地图上标注。请仔细按照航点箭头指示
    >>|cRXP_WARN_如果你有|r |T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[Slow Fall] |cRXP_WARN_，从而使跳跃更容易|r << !Priest !Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_或|r |T132917:0|t[Light Feathers]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[Slow Fall] |cRXP_WARN_以使跳跃更容易|r << Mage
    >>|cRXP_WARN_如果你有|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_或|r |T132917:0|t[Light Feathers]|cRXP_WARN_，你可以使用它们来获得|r |T135992:0|t[Slow Fall] |cRXP_WARN_或|r |T135928:0|t[Levitate] |cRXP_WARN_以使跳跃更容易|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >>|cRXP_WARN_点击此处查看视频参考|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈尔琳|r
    .turnin 6502 >>交任务: |cRXP_FRIENDLY_龙火护符|r
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
<< Horde
#group RestedXP 终局指南
#subgroup 调和
#name 奥妮克希亚调和 (H)

step
    #completewith next
    .subzone 340 >>前往 |cFFfa9602Badlands|r 的卡加斯
step
    .goto Badlands,5.81,47.52
	>>对话: |cRXP_FRIENDLY_军官高图斯|r, Warlord Goretooth's Command
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>接任务: |cRXP_WARN_高图斯的命令|r
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个 5-10 人的地下城|r
step
    #sticky
    #label ImportantDocuments
    >>掠夺|cRXP_LOOT_重要的黑石文件|r
    >>地牢中有 4 个不同的可能生成点：
    >>|cRXP_WARN_在|r |cRXP_ENEMY_Overlord Wyrmthalak的脚下|r
    >>|cRXP_WARN_在|r |cRXP_ENEMY_War Master Voone 旁边的一个空角落里|r
    >>|cRXP_WARN_附近|r |cRXP_ENEMY_奥莫克大领主|r
    >>|cRXP_WARN_在 |cRXP_ENEMY_Urok Doomhowl 的|r 贡物堆旁|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>杀死 |cRXP_ENEMY_Highlord Omokk|r、|cRXP_ENEMY_War Master Voone|r 和 |cRXP_ENEMY_Overlord Wyrmthalak|r
    .complete 4903,2 --Highlord Omokk 1/1
    .complete 4903,3 --War Master Voone 1/1
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob Highlord Omokk
    .mob War Master Voone
    .mob Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>前往 |cFFfa9602Badlands|r 的卡加斯
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军官高图斯|r
    .turnin 4903 >>交任务: |cRXP_FRIENDLY_高图斯的命令|r
    .accept 4941 >>接任务: |cRXP_WARN_伊崔格的智慧|r
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 4941 >>交任务: |cRXP_FRIENDLY_伊崔格的智慧|r
    .accept 4974 >>接任务: |cRXP_WARN_为部落而战！|r
    .target Thrall
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .subzone 1583,2 >>进入黑石塔
    >>|cRXP_WARN_这是一个 10 人地下城。你或你队伍中的某个人必须拥有|r |T133343:0|t[|cRXP_LOOT_升天印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>杀死 |cRXP_ENEMY_Rend Blackhand|r。掠夺他的 |cRXP_LOOT_Head|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 4974 >>交任务: |cRXP_FRIENDLY_为部落而战！|r
    .accept 6566 >>接任务: |cRXP_WARN_风吹来的消息|r
    .target Thrall
step
    .goto Orgrimmar,31.74,37.82
    >>聆听 |cRXP_FRIENDLY_Thrall's|r 的故事
    .complete 6566,1 --Thrall's Tale
    .target Thrall
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 6566 >>交任务: |cRXP_FRIENDLY_风吹来的消息|r
    .accept 6567 >>接任务: |cRXP_WARN_部落的勇士|r
    .target Thrall
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Doras|r交谈
    .fly Sun Rock Retreat >>飞往 Sun Rock Retreat
    .target Doras
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrols 从北向南穿过 |cFFfa9602Desolace|r。他的巡逻路线在地图上标记。按照航点箭头确保覆盖他的整个巡逻路线|r
    >>|cRXP_WARN_到达 |cFFfa9602菲拉斯|r 的双子巨像后，他便会消失。经过 5 分钟的计时后，他会在 |cFFfa9602石爪/凄凉之地边境重生|r
    .turnin 6567 >>交任务: |cRXP_FRIENDLY_部落的勇士|r
    .accept 6568 >>接任务: |cRXP_WARN_雷克萨的证明|r
    .unitscan Rexxar
step
    #completewith next
    .zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫女麦兰达|r
    .turnin 6568 >>交任务: |cRXP_FRIENDLY_雷克萨的证明|r
    .accept 6569 >>接任务: |cRXP_WARN_黑龙幻象|r
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个 10 人地下城。你或你队伍中的某个人必须拥有|r |T133343:0|t[|cRXP_LOOT_升天印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>杀死任意类型的 |cRXP_ENEMY_Dragonkin|r。掠夺他们的 |cRXP_LOOT_黑龙人 Eyes|r
    >>|cRXP_WARN_只有黑石塔上层的 |cRXP_ENEMY_Dragonkin|r 才能掉落 |cRXP_LOOT_Eyes|r
    .complete 6569,1 --黑龙人 Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫女麦兰达|r
    .turnin 6569 >>交任务: |cRXP_FRIENDLY_黑龙幻象|r
    .accept 6570 >>接任务: |cRXP_WARN_埃博斯塔夫|r
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    #completewith next
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入 Emberstrife 的巢穴
step
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃博斯塔夫|r
    .use 16787 >>|cRXP_WARN_使用|r |T133608:0|t[龙之颠覆护身符] |cRXP_WARN_来伪装你自己|r
    .turnin 6570 >>交任务: |cRXP_FRIENDLY_埃博斯塔夫|r
    .accept 6582 >>接任务: |cRXP_WARN_龙骨试炼，斯克利尔|r
    .accept 6583 >>接任务: |cRXP_WARN_龙骨试炼，索姆努斯|r
    .accept 6584 >>接任务: |cRXP_WARN_龙骨试炼，克鲁纳里斯|r
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>在 |cFFfa9602Winterspring|r 中杀死 |cRXP_ENEMY_Scryer|r
    >>在 |cFFfa9602悲伤沼泽|r 中杀死 |cRXP_ENEMY_Somnus|r
    >>在 |cFFfa9602Tanaris|r 中杀死 |cRXP_ENEMY_Chronalis|r
    >>掠夺他们的 |cRXP_LOOT_Skulls|r
    >>|cRXP_WARN_他们的位置在地图上有标记。建议至少 5 名玩家一起完成|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>进入麦索瑞尔洞穴
step
    .goto Winterspring,52.91,55.77
    >>在洞穴后面杀死 |cRXP_ENEMY_Scryer|r。抢夺他的 |cRXP_LOOT_Skull|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>杀死 |cRXP_ENEMY_Somnus|r。掠夺他的 |cRXP_LOOT_Skull|r
    >>|cRXP_WARN_他在湖的东南一小圈内巡逻|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>前往时光之穴
step
    .goto Tanaris,64.85,50.52
    >>杀死 |cRXP_ENEMY_Chronalis|r。掠夺他的 |cRXP_LOOT_Skull|r
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    #requires SkullofDragons
    #completewith next
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入 Emberstrife 的巢穴
step
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃博斯塔夫|r
    .use 16787 >>|cRXP_WARN_使用|r |T133608:0|t[龙之颠覆护身符] |cRXP_WARN_来伪装你自己|r
    .turnin 6582 >>交任务: |cRXP_FRIENDLY_龙骨试炼，斯克利尔|r
    .turnin 6583 >>交任务: |cRXP_FRIENDLY_龙骨试炼，索姆努斯|r
    .turnin 6584 >>交任务: |cRXP_FRIENDLY_龙骨试炼，克鲁纳里斯|r
    .accept 6585 >>接任务: |cRXP_WARN_龙骨试炼，埃克托兹|r
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>前往龙喉大门
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>杀死 |cRXP_ENEMY_Axtroz|r。掠夺他的 |cRXP_LOOT_Skull|r
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    #completewith next
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入 Emberstrife 的巢穴
step
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃博斯塔夫|r
    .use 16787 >>|cRXP_WARN_使用|r |T133608:0|t[龙之颠覆护身符] |cRXP_WARN_来伪装你自己|r
    .turnin 6585 >>交任务: |cRXP_FRIENDLY_龙骨试炼，埃克托兹|r
    .accept 6601 >>接任务: |cRXP_WARN_晋升……|r
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrols 从北向南穿过 |cFFfa9602Desolace|r。他的巡逻路线在地图上标记。按照航点箭头确保覆盖他的整个巡逻路线|r
    >>|cRXP_WARN_到达 |cFFfa9602菲拉斯|r 的双子巨像后，他便会消失。经过 5 分钟的计时后，他会在 |cFFfa9602石爪/凄凉之地边境重生|r
    .turnin 6601 >>交任务: |cRXP_FRIENDLY_晋升……|r
    .accept 6602 >>接任务: |cRXP_WARN_黑龙勇士之血|r
    .unitscan Rexxar
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个 10 人地下城。你或你队伍中的某个人必须拥有|r |T133343:0|t[|cRXP_LOOT_升天印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    .isQuestTurnedIn 6403
    >>杀死 |cRXP_ENEMY_General Drakkisath|r。从他身上搜刮 |cRXP_LOOT_Blood of the Black Dragon Champion|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .isQuestComplete 6403
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrols 从北向南穿过 |cFFfa9602Desolace|r。他的巡逻路线在地图上标记。按照航点箭头确保覆盖他的整个巡逻路线|r
    >>|cRXP_WARN_到达 |cFFfa9602菲拉斯|r 的双子巨像后，他便会消失。经过 5 分钟的计时后，他会在 |cFFfa9602石爪/凄凉之地边境重生|r
    .turnin 6602 >>交任务: |cRXP_FRIENDLY_黑龙勇士之血|r
    .unitscan Rexxar

]])



RXPGuides.RegisterGuide([[
#classic
#subgroup 调和
#group RestedXP 终局指南
#name 熔火之心调和

step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
    .accept 7848 >>接任务: |cRXP_WARN_熔火之心的传送门|r
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>进入黑石深渊
    >>|cRXP_WARN_确保你的团队已经准备好|r
step
    >>在进入 The Exyceum 前右转，在 |cFFfa9602Molton Core|r 副本传送门外的地面上拾取 |cRXP_LOOT_Core Fragment|r
    >>|cRXP_WARN_到达这里最快的方法是进行“熔岩跳跃”。从|r |cRXP_ENEMY_Lord Incendius 的平台开始|r
    --.link >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
    .turnin 7848 >>交任务: |cRXP_FRIENDLY_熔火之心的传送门|r
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#group RestedXP 终局指南
#subgroup 调和
#name 黑翼之巢调和

step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>杀死 |cRXP_ENEMY_Scarshield Quartermaster|r。从他身上搜刮 |T133473:0|t[|cRXP_LOOT_Blackhand's Command|r]。使用它来接受任务
    >>|cRXP_WARN_他位于黑石塔副本入口右侧的走廊里|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>接任务: |cRXP_WARN_黑手的命令|r
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_这是一个 10 人地下城。你或你队伍中的某个人必须拥有|r |T133343:0|t[|cRXP_LOOT_升天印章|r] |cRXP_WARN_才能进入黑石塔上层|r
step
    >>点击 |cRXP_PICK_Drakkisath's Brand|r，位于黑石塔上层的最后一间房间，位于 |cRXP_ENEMY_General Drakkisath|r 后面
    .turnin 7761 >>交任务: |cRXP_FRIENDLY_黑手的命令|r

]])



RXPGuides.RegisterGuide([[
#classic
#group RestedXP 终局指南
#subgroup 按键
#name 黑石塔上层钥匙

step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>进入黑石塔
    >>|cRXP_WARN_确保你的团队已经准备好|r
step
    >>杀死黑石塔中的所有怪物，直到你获得 |T135725:0|t[|cRXP_LOOT_Unadorned Seal of Ascension|r]
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r
    >>|cRXP_WARN_当你进入地下城开始处的霍德玛城时，他会在你左边的平台上|r
    .accept 4742 >>接任务: |cRXP_WARN_晋升印章|r
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>杀死 |cRXP_ENEMY_Highlord Omokk|r。从他身上搜刮 |cRXP_LOOT_Gemstone of Spirestone|r
    >>杀死 |cRXP_ENEMY_War Master Voone|r。从他身上搜刮 |cRXP_LOOT_Gemstone of Smolderthorn|r
    >>杀死 |cRXP_ENEMY_Overlord Wyrmthalak|r。从他身上搜刮 |cRXP_LOOT_Gemstone of Bloodaxe|r
    >>|cRXP_WARN_|r |cRXP_LOOT_Gemstones|r |cRXP_WARN_掉落几率约为 30%。您很可能需要完成多次 LBRS 运行|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target Highlord Omokk
    .target War Master Voone
    .target Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r
    >>|cRXP_WARN_当你进入地下城开始处的霍德玛城时，他会在你左边的平台上|r
    .turnin 4742 >>交任务: |cRXP_FRIENDLY_晋升印章|r
    .accept 4743 >>接任务: |cRXP_WARN_晋升印章|r
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_Open|r |T132595:0|t[Vaelan 的礼物] |cRXP_WARN_to loot|r |T133276:0|t[|cRXP_LOOT_未锻造的升天印记|r] |cRXP_WARN_and|r |T134334:0|t[|cRXP_LOOT_龙之能量球|r]
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>进入 Emberstrife 的巢穴
    >>|cRXP_WARN_您需要至少 3 名玩家组成的团队来完成下一部分！|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_将|r |T133276:0|t[|cRXP_LOOT_未锻造的升天印章|r] |cRXP_WARN_放在地上，然后拉动|r |cRXP_ENEMY_Emberstrife|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_攻击|r |cRXP_ENEMY_Emberstrife|r。|cRXP_WARN_一旦他的生命值低于 10%，使用|r |T134334:0|t[|cRXP_LOOT_龙之能量球|r] |cRXP_WARN_来控制|r |cRXP_ENEMY_Emberstrife|r
    >>|cRXP_WARN_施放|r |T135824:0|t[黑色飞翔之焰] |cRXP_WARN_来锻造|r |T133276:0|t[|cRXP_LOOT_未锻造的升天印章|r] |cRXP_WARN_你将其放置在地面上|r
    >>一旦完成，拾取地面上的 |cRXP_PICK_Forged Seal of Ascension|r
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>进入黑石塔
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scarshield Infiltrator|r
    >>|cRXP_WARN_当你进入地下城开始处的霍德玛城时，他会在你左边的平台上|r
    .turnin 4743 >>交任务: |cRXP_FRIENDLY_晋升印章|r
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
<< Alliance
#group RestedXP 终局指南
#subgroup 按键
#name 通灵学院钥匙（A）

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_前往任意主城市的拍卖行购买 2|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使考雷·落锤|r
    >>|cRXP_FRIENDLY_信使锤落|r |cRXP_WARN_巡逻整个铁炉堡|r
    >>|cRXP_WARN_此任务也可在|r |cFFfa9602暴风城|r |cRXP_WARN_or|r |cFFfa9602达纳苏斯接受|r
    .acceptmultiple 5091,5090,5066 >>接任务: |cRXP_LOOT_战斗的号角：瘟疫之地！|r
    .unitscan Courier Hammerfall --IF
    .unitscan Herald 月夜猎者 --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>前往 |cFFfa9602西瘟疫之地|r 的冰风营地
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5066 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
    .target 指挥官 Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
    .target 指挥官 Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5091 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
    .target 指挥官 Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
    .target 指挥官 Ashlam Valorfist
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5090 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
    .target 指挥官 Ashlam Valorfist
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
    .target 指挥官 Ashlam Valorfist
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>杀死 |cRXP_ENEMY_骷髅剥皮者s|r 和 |cRXP_ENEMY_食尸鬼s|r
    .complete 5092,1 -- 骷髅剥皮者 slain (10)
    .mob +骷髅剥皮者
    .complete 5092,2 -- 食尸鬼 slain (10)
    .mob +食尸鬼
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .accept 5098 >>接任务: |cRXP_LOOT_标记哨塔|r
    .target 指挥官 Ashlam Valorfist
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
    .turnin 5098 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
    .accept 5533 >>接任务: |cRXP_LOOT_通灵学院|r
    .target 指挥官 Ashlam Valorfist
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >>摧毁: |cRXP_ENEMY_信号火炬|r
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5533 >>交任务: |cRXP_FRIENDLY_通灵学院|r
    .accept 5537 >>接任务: |cRXP_LOOT_骸骨碎片|r
    .target Alchemist Arbington
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>杀死 |cRXP_ENEMY_Skeletal Executioners|r 和 |cRXP_ENEMY_Skeletal Acolytes|r。掠夺他们的 |cRXP_LOOT_Skeletal Fragments|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5537 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
    .accept 5538 >>接任务: |cRXP_WARN_昂贵的模具|r
    .target Alchemist Arbington
step
    #completewith next
    .subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r in |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克林科·古德斯迪尔|r
    >>|cRXP_WARN_完成此任务需要支付 15 金币|r
    .turnin 5538 >>交任务: |cRXP_FRIENDLY_昂贵的模具|r
    .accept 5801 >>接任务: |cRXP_WARN_火羽山|r
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_如果你之前没有购买，请前往任意主城市的拍卖行购买 2|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
    .fly Un'Goro >>飞往安戈洛环形山
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>前往火羽岭山顶
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_使用|r |T134457:0|t[万能钥匙模具] |cRXP_WARN_在熔岩池中制作|r |cRXP_LOOT_未完成的万能钥匙|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>前往 |cFFfa9602西瘟疫之地|r 的冰风营地
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5801 >>交任务: |cRXP_FRIENDLY_火羽山|r
    .accept 5804 >>接任务: |cRXP_WARN_阿拉基的圣甲虫|r
    .target Alchemist Arbington
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>前往安多哈尔废墟的中心
step
    .goto Western Plaguelands,45.60,69.28
    >>杀死 |cRXP_ENEMY_Araj the Summonor|r。拾取地面上的 |cRXP_PICK_Araj's Phylactery|r，获得 |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_是强力精英。建议至少 3 人组队击杀他|r
    .use 12650 >>|cRXP_WARN_如果你有|r |T134961:0|t[Attuned Dampener] |cRXP_WARN_on 他，请使用|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
    .itemcount 12650,1 --Attuned Dampener
step
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>杀死 |cRXP_ENEMY_Araj the Summonor|r。拾取地面上的 |cRXP_PICK_Araj's Phylactery|r，获得 |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_是强力精英。建议至少 3 人组队击杀他|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5804 >>交任务: |cRXP_FRIENDLY_阿拉基的圣甲虫|r
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
    .turnin 5505 >>交任务: |cRXP_FRIENDLY_通灵学院的钥匙|r
    .target Alchemist Arbington

]])



RXPGuides.RegisterGuide([[
#classic
<< Horde
#group RestedXP 终局指南
#subgroup 按键
#name 通灵学院钥匙 (H)


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_前往任意主城市的拍卖行购买 2|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_预言者巴萨扎德|r
    .acceptmultiple 5093,5094,5095 >>接任务: |cRXP_LOOT_战斗的号角：瘟疫之地！|r
    >>|cRXP_WARN_此任务也可在|r |cFFfa9602奥格瑞玛|r |cRXP_WARN_or|r |cFFfa9602雷霆崖接受|r
    .unitscan Warcaller Gorlach --ORG
    .unitscan Harbinger Balthazad --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >>前往 |cFFfa9602提瑞斯法林地|r 的堡垒
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5093 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
	.target High Executor Derrington
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
	.target High Executor Derrington
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5094 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
	.target High Executor Derrington
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
	.target High Executor Derrington
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5095 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
	.target High Executor Derrington
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
	.target High Executor Derrington
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>点击 |cRXP_PICK_Command Tent|r，然后使用你的 |T132484:0|t[Scourge Banner]
	>>|cRXP_WARN_这些怪物相对比较难对付，而且会相互连锁攻击，所以要小心|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>交任务: |cRXP_FRIENDLY_误导血色十字军|r
    .accept 5098 >>接任务: |cRXP_LOOT_标记哨塔|r
	.target High Executor Derrington
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_使用|r |T135432:0|t[信标火炬] |cRXP_WARN_位于塔入口旁。你可以做到这一点，而无需激怒里面的精英|cRXP_ENEMY_Skeletal Warlord|r|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
    .accept 838 >>接任务: |cRXP_LOOT_通灵学院|r
	.target High Executor Derrington
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >>摧毁: |cRXP_ENEMY_信号火炬|r
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 838 >>交任务: |cRXP_FRIENDLY_通灵学院|r
    .accept 964 >>接任务: |cRXP_LOOT_骸骨碎片|r
	.target Apothecary Dithers
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>杀死 |cRXP_ENEMY_Skeletal Executioners|r 和 |cRXP_ENEMY_Skeletal Acolytes|r。掠夺他们的 |cRXP_LOOT_Skeletal Fragments|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 964 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
    .accept 5538 >>接任务: |cRXP_WARN_昂贵的模具|r
	.target Apothecary Dithers
step
    #completewith next
    .subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r in |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克林科·古德斯迪尔|r
    >>|cRXP_WARN_完成此任务需要支付 15 金币|r
    .turnin 5514 >>交任务: |cRXP_FRIENDLY_昂贵的模具|r
    .accept 5802 >>接任务: |cRXP_WARN_火羽山|r
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_如果你之前没有购买，请前往任意主城市的拍卖行购买 2|r |T133221:0|t[瑟银锭]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
    .fly Un'Goro >>飞往安戈洛环形山
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>前往火羽岭山顶
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_使用|r |T134457:0|t[万能钥匙模具] |cRXP_WARN_在熔岩池中制作|r |cRXP_LOOT_未完成的万能钥匙|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >>前往 |cFFfa9602提瑞斯法林地|r 的堡垒
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 5802 >>交任务: |cRXP_FRIENDLY_火羽山|r
    .accept 5804 >>接任务: |cRXP_WARN_阿拉基的圣甲虫|r
	.target Apothecary Dithers
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>前往安多哈尔废墟的中心
step
    .goto Western Plaguelands,45.60,69.28
    >>杀死 |cRXP_ENEMY_Araj the Summonor|r。拾取地面上的 |cRXP_PICK_Araj's Phylactery|r，获得 |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_是强力精英。建议至少 3 人组队击杀他|r
    .use 12650 >>|cRXP_WARN_如果你有|r |T134961:0|t[Attuned Dampener] |cRXP_WARN_on 他，请使用|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
    .itemcount 12650,1 --Attuned Dampener
step
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>杀死 |cRXP_ENEMY_Araj the Summonor|r。拾取地面上的 |cRXP_PICK_Araj's Phylactery|r，获得 |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_是强力精英。建议至少 3 人组队击杀他|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summonor
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 5804 >>交任务: |cRXP_FRIENDLY_阿拉基的圣甲虫|r
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
    .turnin 5511 >>交任务: |cRXP_FRIENDLY_通灵学院的钥匙|r
	.target Apothecary Dithers

]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP 终局指南
#subgroup 按键
#name 黑石深渊钥匙

step
    #completewith next
    .subzone 254 >>前往|cFFfa9602黑石山|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
    >>|cRXP_WARN_您必须是|r |T132331:0|t[Ghost] |cRXP_WARN_才能与|r |cRXP_FRIENDLY_Franclorn Forgewright 交谈|r
    >>|cRXP_WARN_故意死在黑石山的熔岩中，最好是在熔火之心入口附近|r
    .accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
    .turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
    .accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
    .target Franclorn Forgewright
step
    #completewith next
    #hardcoreserver
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_点击|r |cRXP_PICK_Embersight 的Brazier|r |cRXP_WARN_以获得|r |T136215:0|t[Emberglow Vision] |cRXP_WARN_debuff|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
    >>|cRXP_WARN_你必须拥有|r |T136215:0|t[Emberglow Vision] |cRXP_WARN_debuff 才能看到他|r
    .accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
    .turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
    .accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
    .target Franclorn Forgewright
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>在你的尸体旁复活并进入黑石深渊
    >>|cRXP_WARN_确保你的团队已经准备好|r
step
    >>杀死 |cRXP_ENEMY_Fineous Darkvire|r。从他身上搜刮 |cRXP_LOOT_Ironfel|r
    >>|cRXP_WARN_他在辛森迪乌斯勋爵的房间外巡逻采石场|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>跑回法律之环上方的附近
    >>点击 |cRXP_PICK_Franclorn Forgewright 纪念碑|r
    .turnin 3802 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#group RestedXP 终局指南
#subgroup 按键
#name 厄运之槌钥匙

step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>进入厄运之槌东入口
    >>|cRXP_WARN_确保你的团队已经准备好|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普希林|r
    >>|cRXP_WARN_这是副本开始时的绿色 |cRXP_FRIENDLY_Imp|r。与他交谈后他会逃跑。你必须追逐他并与他交谈多次，直到他在 The Hidden Reach 密室中变得具有敌意|r
    .skipgossip
    .unitscan Pusillin
step
    >>一旦 |cRXP_ENEMY_Pusillin|r 变得具有敌意，就将其击杀。从其身上搜刮 |T134244:0|t[|cRXP_LOOT_Crescent Key|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP 终局指南
#name 恶魔坠落峡谷调和
#subgroup 调和
<<sod
step
    #completewith next
    .subzone 2479 >>前往 |cFFfa9602费伍德森林|r 的翡翠庇护所
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r
    .accept 84384 >>接受恶魔的欺骗
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>杀死 |cRXP_ENEMY_Berserk 猫头鹰beasts|r。掠夺它们的 |T237413:0|t[|cRXP_LOOT_猫头鹰beast 松果体|r]
    .complete 84384,1
    .mob Berserk 猫头鹰beast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>前往 |cFFfa9602费伍德森林|r 的翡翠庇护所
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Shadowtooth Emissary|r
    .turnin 84384 >>交出恶魔欺骗
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
