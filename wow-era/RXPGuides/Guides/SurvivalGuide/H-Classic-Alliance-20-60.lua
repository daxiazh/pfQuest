RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#classic
<< Alliance
#name 21-23 石爪山脉/灰谷
#next 23-24 湿地
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.accept 1033 ,, Elune's Tear
step
.goto Ashenvale,46.37,46.38
>> 拾取地上的|cRXP_LOOT_月神之泪|r
.complete 1033,1
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.target Pelturas Whitemoon
.turnin 1033 ,, Elune's Tear
.timer 17,月神之泪剧情
.accept 1034 ,, The Ruins of Stardust
step
.goto Ashenvale,33.30,67.79
>> 拾取|cRXP_PICK_星尘覆盖的草丛|r以获得|cRXP_LOOT_一份星尘|r
>>|cRXP_WARN_岛上到处都会刷新星尘|r
.complete 1034,1
step
#completewith next
.goto Ashenvale,31.67,64.24,15 >> 前往此处山脚
.goto Ashenvale,31.21,61.60,15 >> 沿着正北方向爬上山坡
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟瑞希尔|r
.target Therysil
.goto Ashenvale,22.64,51.91
.turnin 945 ,, Therylune's Escape
.isQuestComplete 945
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.accept 1007 ,, The Ancient Statuette
step
#completewith nagas
>> 击杀|cRXP_ENEMY_怒尾娜迦|r. 拾取他们的|cRXP_LOOT_头|r
>>|cRXP_WARN_不要偏离目的地线路去击杀他们|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.complete 1008,1
step
.goto Ashenvale,14.20,20.64
>> 拾取地上的|cRXP_LOOT_古代雕像|r
.complete 1007,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 ,, The Ancient Statuette
.timer 22,古代雕像剧情
.accept 1009 ,, Ruuzel
step
#label nagas
.goto Ashenvale,6.528,13.361
>> 击杀|cRXP_ENEMY_卢泽尔|r. 拾取|cRXP_LOOT_佐拉姆之戒|r
>>|cRXP_ENEMY_卢泽尔|r|cRXP_WARN_与一只|cRXP_ENEMY_怒尾侍从|r和一只|cRXP_ENEMY_怒尾海巫|r一起绕着岛屿巡逻. 如果需要就先杀一只并脱战再来.|r
>>稀有精英|cRXP_ENEMY_薇丝比娅女士|r|cRXP_WARN_也能掉落|cRXP_LOOT_佐拉姆之戒|r|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.goto Ashenvale,7.00,15.20,0
.goto Ashenvale,14.46,17.15,0
.goto Ashenvale,14.86,21.06,0
.goto Ashenvale,13.13,25.03,0
.goto Ashenvale,10.89,30.03,0
.goto Ashenvale,7.00,15.20,70,0
.goto Ashenvale,14.46,17.15,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,10.89,30.03,70,0
.goto Ashenvale,13.13,25.03,70,0
.goto Ashenvale,14.86,21.06,70,0
.goto Ashenvale,14.46,17.15,70,0
>> 击杀|cRXP_ENEMY_怒尾娜迦|r. 拾取他们的|cRXP_LOOT_头|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.mob Wrathtail Myrmidon
.mob Wrathtail Priestess
.mob Wrathtail Razortail
.mob Wrathtail Sea Witch
.complete 1008,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1009 ,, Ruuzel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰洛尼斯的尸体|r
.target Teronis' Corpse
.goto Ashenvale,20.31,42.33
.turnin 991 ,, Raene's Cleansing
.accept 1023 ,, Raene's Cleansing
step
.goto Ashenvale,20.41,43.82,50,0
.goto Ashenvale,19.43,42.09,50,0
.goto Ashenvale,21.01,41.61,50,0
.goto Ashenvale,20.31,42.33
>> 击杀|cRXP_ENEMY_盐沫鱼人|r. 拾取|cRXP_LOOT_发光的宝石|r
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
.complete 1023,1
step
#completewith next
.goto Ashenvale,34.67,48.83
.subzone 415 >> 前往阿斯特兰纳
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德瑞尔·速火|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 ,, The Zoram Strand
.accept 1134 ,, Pridewings of Stonetalon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱恩·狼行者|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 ,, Raene's Cleansing
step
.destroy 5505 >> 摧毁|T133741:0|t[泰洛尼斯的日记]. 你不需要它了
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 ,, The Ruins of Stardust
step
#completewith next
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳希亚|r
.fly Auberdine >> 飞往黑海岸
.target Daelyshia
step
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_温尼斯·布莱葛|r
.turnin 4730 ,, Beached Sea Creature
.turnin 4731 ,, Beached Sea Turtle
.turnin 4732 ,, Beached Sea Turtle
.turnin 4733 ,, Beached Sea Creature
step
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
.turnin 4740 ,, WANTED: Murkdeep!
step
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
.turnin 986 ,, A Lost Master
.target Terenthis
step
.group
.isOnQuest 995
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦希斯|r
.turnin 995 ,, Escape Through Stealth
.target Terenthis
step
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_考古学家霍莉|r
.turnin 731 ,, The Absent Minded Prospector
.target Archaeologist Hollee
.accept 741 ,, The Absent Minded Prospector
step << !Mage !Paladin !Warlock
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r
.fly Teldrassil >> 飞往泰达希尔
.target Caylais Moonfeather
step << Mage/Paladin/Warlock
#completewith next
.goto Darkshore,32.75,42.21,60 >> 前往奥伯丁码头. 等待前往鲁瑟兰村的船
step << Mage/Paladin/Warlock
.goto Darkshore,33.168,40.210
.zone Teldrassil >> 乘船前往鲁瑟兰村
.zoneskip Darnassus
step << Mage/Paladin 
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fp Teldrassil >> 开启鲁瑟兰村飞行点
.target Vesprystus
step
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r和|cRXP_FRIENDLY_伊迪瑞娜|r
.bankdeposit 1083 >>将以下物品存入银行:
>>|T133277:0|t[阿祖拉的铭文饰品] 
.target Garryeth
.target Lairn
.target Idriana
step << Warrior
.goto Darnassus,57.559,46.721
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊琳尼雅·月火|r
.train 2567 >> 学习投掷武器
.target Ilyenia Moonfire
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
.trainer >> 学习职业技能
.target Syurna
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德纳萨里安|r
.trainer >> 学习职业技能
.target Denatharion
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
.trainer >> 学习职业技能
.target Jocaste
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|r上楼对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 6125 ,, Power over Poison
.isOnQuest 6125
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席考古学家杜瑟·灰须|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 ,, The Absent Minded Prospector
.accept 942 ,, The Absent Minded Prospector
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
.trainer >> 学习职业技能
.target Jandria
step << !Warlock 
.hs >> 炉石回阿斯特兰纳
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step 
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Ashenvale
.zoneskip Darkshore
step 
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Ashenvale >> 飞往灰谷
.target Vesprystus
.zoneskip Ashenvale
step << Warlock
#som
#phase 3-6
.goto Ashenvale,34.85,50.87
.vendor >> 购买燧石和火绒, 以及2根普通木柴
.collect 4470,2 
.collect 4471,1 
step
#era/som
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >> 前往石爪山脉
step
#era
#sticky
#completewith wyv1
>> 击杀|cRXP_ENEMY_幼年巨翼双足飞龙|r. 拾取他们的|cRXP_LOOT_巨翼双足飞龙的毒囊|r
.unitscan Young Pridewing
.complete 1134,1
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·影矛|r
.target Kaela Shadowspear
.goto Stonetalon Mountains,59.899,66.844
.turnin 1070 ,, On Guard in Stonetalon
.accept 1085 ,, On Guard in Stonetalon
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克希姆·尘链|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.turnin 1085 ,, On Guard in Stonetalon
.accept 1071 ,, A Gnome's Respite
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
.target Ziz Fizziks
.goto Stonetalon Mountains,58.989,62.601
.accept 1093 ,, Super Reaper 6000
step
#sticky
#label sr6000
#era/som
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>> 击杀|cRXP_ENEMY_风险投资公司操作员|r. 拾取|cRXP_LOOT_超级收割机6000型的设计图|r
.complete 1093,1
.unitscan Venture Co. Operator
step
#era/som
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>> 击杀|cRXP_ENEMY_风险投资公司砍树工|r和|cRXP_ENEMY_风险投资公司樵夫|r
.mob Venture Co. Deforester
.mob Venture Co. Logger
.complete 1071,1
.complete 1071,2
step
#requires sr6000
#era/som
.goto Stonetalon Mountains,58.989,62.601
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹克斯|r
.target Ziz Fizziks
.turnin 1093 ,, Super Reaper 6000
.accept 1094 ,, Further Instructions << Warlock
step
#label wyv1
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克希姆·尘链|r
.goto Stonetalon Mountains,59.516,67.146
.turnin 1071 ,, A Gnome's Respite
.accept 1072 ,, An Old Colleague
.accept 1075 ,, A Scroll from Mauren
.target Gaxim Rustfizzle
step
#era
.goto Stonetalon Mountains,54.04,40.09,60,0
.goto Stonetalon Mountains,53.26,36.83,40,0
.goto Stonetalon Mountains,54.56,38.12
>> 击杀|cRXP_ENEMY_巨翼双足飞龙|r和|cRXP_ENEMY_雄性巨翼双足飞龙|r. 拾取他们的|cRXP_LOOT_巨翼双足飞龙的毒囊|r
.mob Pridewing Wyvern
.mob Pridewing Consort
.complete 1134,1
step
#completewith next
.goto Stonetalon Mountains,37.103,8.100,100 >> 前往石爪峰
step
#era/som
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者奥巴格姆|r
.target Keeper Albagorm
.turnin 1056 ,, Journey to Stonetalon Peak
step << Warlock
.goto Stonetalon Mountains,35.595,7.351
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃林安尼|r
.vendor >> |cRXP_WARN_清理背包|r
.target Illyanie
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰罗伦|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >> 开启石爪峰飞行点
.fly Ashenvale >> 飞往灰谷 << !Warlock
step << Warlock
.goto Stonetalon Mountains,75.466,91.422,0
.goto Stonetalon Mountains,81.292,96.118,0
.goto The Barrens,35.052,27.025
.zone The Barrens >> 前往贫瘠之地
step << Warlock
#completewith next
.goto The Barrens,40.358,24.780,150 >> |cRXP_WARN_跟随箭头以避开|cRXP_ENEMY_贫瘠之地卫兵|r!|r
step << Warlock
#som
#phase 3-6
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘先知’塔卡尔|r
.turnin 1716 ,, Devourer of Souls
.target Takar the Seer
.accept 1738 ,, Heartswood
.accept 65602 ,, What is Love?
step << Warlock
#era/som
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘先知’塔卡尔|r
.turnin 1716 ,, Devourer of Souls
.target Takar the Seer
.accept 1738 ,, Heartswood
step << Warlock
#completewith next
.goto The Barrens,62.98,37.21,100 >> 前往棘齿城
step << Warlock
.goto The Barrens,62.984,37.218
.target Sputtervalve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯布特瓦夫|r
.turnin 1094 ,, Further Instructions
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fp Ratchet>> 开启棘齿城飞行点
.target Bragok
step << Warlock
#completewith Ordil
.hs >> 炉石回阿斯特兰纳
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德瑞尔·速火|r
.turnin 1134 ,, Pridewings of Stonetalon
step << Warlock
#label Ordil
#completewith next
.goto Ashenvale,26.73,44.95,100,0
.goto Ashenvale,31.50,31.50,40 >> 前往奥迪拉兰废墟
step << Warlock
.goto Ashenvale,31.50,31.50
>> 拾取|cRXP_LOOT_同心树|r巨树
.complete 1738,1
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>> 拾取桌上的火炬
.collect 190307,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>> 升起营火, 然后使用未点燃的火炬
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>升起营火, 然后使用未点燃的火炬
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.61,22.01
>>在你拾取火炬的地方边上的箱子上使用燃烧的火炬, 然后上楼并拾取雕像
.complete 65602,1 
step << Warlock
#completewith next
.goto Ashenvale,34.41,47.98,50 >> 前往阿斯特兰纳
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳希亚|r
.fly Darkshore>> 飞往奥伯丁
.target Daelyshia
step
#completewith next
.goto Darkshore,32.75,42.21,35 >> 前往奥伯丁码头. 等待前往米奈希尔港的船
step
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_在等待前往米奈希尔港的船时|r|cRXP_WARN_升级|r|T135966:0|t[急救]|cRXP_WARN_和|r|T133971:0|t[烹饪]
.zone Wetlands >> 乘船前往米奈希尔港
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#classic
<< Alliance
#name 23-24 湿地
#next 24-27 暮色森林/赤脊山
step
.goto Wetlands,8.509,55.697
.target James Halloran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹姆士·哈洛伦|r
.accept 484 ,, Young Crocolisk Skins
step
.goto Wetlands,7.95,56.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德温·晨光|r
.vendor >> |cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药水]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_德温·晨光|r这没有库存就跳过这步|r
.target Dewin Shimmerdawn
step
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔·波兰|r
.accept 279 ,, Claws from the Deep
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副菲兹莫斯|r
.accept 288 ,, The Third Fleet
.accept 463 ,, The Greenwarden
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板赫布瑞克|r
>>|cRXP_BUY_购买|r|T132792:0|t[壶装矮人蜜酒]
.target Innkeeper Helbrek
.home >> 绑定炉石到米奈希尔港
.complete 288,1 
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> 上楼找|cRXP_FRIENDLY_考古学家弗拉冈特|r
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cRXP_FRIENDLY_考古学家弗拉冈特|r对话
.target Archaeologist Flagongut
.turnin 942 ,, The Absent Minded Prospector
step
.goto Wetlands,10.496,60.201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在楼上与|cFF00FF25萨莫尔·菲斯蒂沃斯|r对话
.vendor >> |cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药水]
>>|cRXP_WARN_这是限量供应的物品. 如果|cFF00FF25萨莫尔·菲斯蒂沃斯|r这没有库存就跳过这步|r
.target Samor Festivus
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副菲兹莫斯|r
.turnin 288 ,, The Third Fleet
step
.goto Wetlands,10.4,56.0,25,0
.goto Wetlands,10.1,56.9,25,0
.goto Wetlands,10.6,57.2,25,0
.goto Wetlands,10.761,56.737
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼尔·奥雷|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_尼尔·奥雷|r这没有库存就跳过这步|r

.target Neal Allen
.bronzetube
step
#completewith FinishGnolls
>> 击杀|cRXP_ENEMY_湿地鳄鱼幼崽|r. 拾取他们的|cRXP_LOOT_小鳄鱼皮|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,13.73,39.38,50,0
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,16.26,39.41
>> 击杀|cRXP_ENEMY_蓝鳃鱼人|r
>> 击杀|cRXP_ENEMY_高布勒尔|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_ENEMY_高布勒尔|r|cRXP_WARN_在蓝腮沼泽巡逻|r
.complete 279,1 
.complete 279,2 
.mob Bluegill Murloc
.unitscan Gobbler
step
.goto Wetlands,26.40,25.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗拉德|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_弗拉德|r这没有库存就跳过这步|r

.target Fradd Swiftgear
.bronzetube
step
.goto Wetlands,49.916,39.368
.target Einar Stonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃纳尔·石钳|r
.accept 469 ,, Daily Delivery
step
#completewith next
.goto Wetlands,50.200,37.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉克斯勒|r
.vendor >> |cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药水]
>>|cRXP_WARN_如果|cRXP_FRIENDLY_吉克斯勒|r处有库存的话就|cRXP_WARN_购买|r|T134413:0|t[活根草]. 你将需要它们以完成|r|T132403:0|t[|cFF0070FF旋风之斧|r]|cRXP_WARN_任务|r << Warrior
>>|cRXP_WARN_如果你计划打血色修道院获取|r[|cFF0070FF咬骨之斧|r]|cRXP_WARN_, 就可以跳过这一步|r << Warrior
>>|cRXP_WARN_这些东西是限量物品. 如果|cRXP_FRIENDLY_吉克斯勒|r这没有库存就跳过这步|r << Warrior
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_吉克斯勒|r这没有库存就跳过这步|r << !Warrior
.target Kixxle
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.turnin 463 ,, The Greenwarden
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.accept 276 ,, Tramping Paws
step
#FinishGnolls
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,62.34,69.34
>> 击杀|cRXP_ENEMY_藓皮豺狼人|r和|cRXP_ENEMY_混血藓皮豺狼人|r
>>|cRXP_WARN_这里是刷|r|T132911:0|t[毛料]|cRXP_WARN_的绝佳位置. 它们可以用来升级|r|T135966:0|t[急救]|cRXP_WARN_或者其他需要毛料的专业|r
.complete 276,1 
.complete 276,2 
.mob Mosshide Gnoll
.mob Mosshide Mongrel
step
#completewith next
+|cRXP_WARN_继续击杀|cRXP_ENEMY_藓皮豺狼人|r和|cRXP_ENEMY_混血藓皮豺狼人|r刷|r|T132911:0|t[毛料]|cRXP_WARN_它们可以用来升级|r|T135966:0|t[急救]|cRXP_WARN_或者其他需要毛料的专业|r
>>|cRXP_WARN_一旦刷够了, 就跳过这步|r
step
#label FinishGnolls
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.turnin 276 ,, Tramping Paws
.accept 277 ,, Fire Taboo
.target Rethiel the Greenwarden
step
.goto Wetlands,54.95,44.84,50,0
.goto Wetlands,51.84,37.13,50,0
.goto Wetlands,37.13,35.68,50,0
.goto Wetlands,31.21,37.86,50,0
.goto Wetlands,26.48,40.44,50,0
.goto Wetlands,20.52,45.70,50,0
.goto Wetlands,17.83,50.26,50,0
.goto Wetlands,14.53,47.67,50,0
.goto Wetlands,20.37,45.21
>> 击杀|cRXP_ENEMY_湿地鳄鱼幼崽|r. 拾取他们的|cRXP_LOOT_小鳄鱼皮|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
#era
.goto Wetlands,61.91,71.32,-1 
.goto Wetlands,18.67,39.69,-1 
.xp 24 >> 刷到24级
step
#completewith next
.hs >> 炉石回米奈希尔港
>>|cRXP_WARN_如果你离米奈希尔港很近就跑回去|r
.cooldown item,6948,>0,1
step
#completewith next
.goto Wetlands,8.30,58.53,150 >> 前往米奈希尔港
step
#som
#phase 3-6
#requires crocs
.hs >> 炉石回米奈希尔港
>> 如果你的炉石CD了, 就做践踏之爪任务(如果你还没做的话)
>> 购买必要的吃喝
step
#som
#requires crocs
.hs >> 炉石回米奈希尔港
>> 购买必要的吃喝
step
#som
#phase 3-6
.goto Wetlands,8.30,58.53
.abandon 276 ,, Tramping Paws
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹姆士·哈洛伦|r
.turnin 469 ,, Daily Delivery
.turnin 484 ,, Young Crocolisk Skins
.target James Halloran
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔·波兰|r
.turnin 279 ,, Claws from the Deep
.target Karl Boran
step
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> 学习职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Mage
.goto Ironforge,25.496,7.080
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
.trainer >> 学习|T135757:0|t[传送: 铁炉堡]
.target Milstaff Stormeye
step
.goto Ironforge,50.826,5.613
.target Gerrig Bonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛利·硬骨|r
.turnin 968 ,, The Powers Below
.isOnQuest 968
step
.goto Ironforge,67.844,42.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_考格斯宾|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_考格斯宾|r这没有库存就跳过这步|r

.target Gearcutter Cogspinner
.bronzetube
step
.goto Ironforge,72.08,51.87
.target Lomac Gearstrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛玛克·链带|r
.turnin 1072 ,, An Old Colleague
.isOnQuest 1072
step
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >> 乘坐地铁前往暴风城
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#classic
<< Alliance
#name 24-27 暮色森林/赤脊山
#next 27-28 湿地
step
#completewith next
.goto Stormwind City,55.21,7.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比利巴布·考格斯宾|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_比利巴布·考格斯宾|r这没有库存就跳过这步|r

.bronzetube
.target Billibub Cogspinner
step << Paladin
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
.accept 1650 ,, The Tome of Valor
.target Duthorian Rall
step
.goto Stormwind City,64.201,60.575
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·加姆|r
>>|cRXP_BUY_购买|r|T133849:0|t[暴风城特产调料]
.collect 2665,1,90,1 
.target Felicia Gump
step << Warlock
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> 进入已宰的羔羊并下楼
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你即将拥有的|T136220:0|t[魅魔]购买|r|T133738:0|t[魔典]|cRXP_BUY_. 如果你钱还有多就买|r|T136221:0|t[虚空行者]的|T133738:0|t[魔典]
.target Spackle Thornberry
step << Warlock
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗缚灵师加金|r
.turnin 1738 ,, Heartswood
.target Gakin the Darkbinder
.accept 1739 ,, The Binding
step << Warlock
#completewith next
.goto StormwindClassic,25.2,80.7,18,0
.goto StormwindClassic,23.2,79.5,18,0
.goto StormwindClassic,26.3,79.5,18,0
.goto StormwindClassic,25.154,77.406
>>|cRXP_WARN_前往已宰的羔羊底部|r
.cast 8674 >> |cRXP_WARN_使用|r|T136065:0|t[同心树之核]|cRXP_WARN_召唤|r|cRXP_ENEMY_召唤的魅魔|r
.use 6913
step << Warlock
.goto StormwindClassic,25.154,77.406
.use 6913 >> 击杀|cRXP_ENEMY_召唤的魅魔|r
.complete 1739,1 
.mob Summoned Succubus
step << Warlock
#completewith next
+|cRXP_WARN_现在你可以选择|r|T136220:0|t[魅魔]|cRXP_WARN_或者|r|T136221:0|t[虚空行者]|cRXP_WARN_作为你的宠物|r
>>|T136220:0|t[魅魔]|cRXP_WARN_可以造成可观的伤害而|r|T136221:0|t[虚空行者]|cRXP_WARN_更具生存能力|r
step << Warlock
.goto Stormwind City,25.25,78.55
.target Gakin the Darkbinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗缚灵师加金|r
.turnin 1739 ,, The Binding
step
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林·马伦|r
.turnin 1075 ,, A Scroll from Mauren
.target Collin Mauren
.accept 1076 ,, Devils in Westfall
step << Rogue
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板奥里森|r
.home >> 绑定炉石到暴风城
.target Innkeeper Allison
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·布舍尔|r
.vendor >> |cRXP_BUY_购买|r|T134419:0|t[传送符文]
.collect 17031,1 
.target Kyra Boucher
step
#completewith next
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师亚克森|r
+|cRXP_BUY_从拍卖行|r|cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_如果你从其他途径弄不到的话|r
.bronzetube
.target Auctioneer Jaxon
step
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Westfall >> 飞往西部荒野
.target Dungar Longdrink
step
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔斯|r
>>|cRXP_WARN_先不要从|r|cRXP_FRIENDLY_斯温·约根|r|cRXP_WARN_那接受斯温的复仇|r
.accept 226 ,, Wolves at Our Heels
step
#som
#phase 3-6
.goto Stormwind City,66.28,62.13
.fly Redridge >> 如果你高于25级就飞往赤脊山
step
#completewith MadEva
.goto Duskwood,48.0,17.2,0
.goto Duskwood,28.1,28.7,0
.goto Duskwood,48.0,17.2,85,0
.goto Duskwood,75.81,45.29,50 >> 前往夜色镇
step
#completewith next
>> 沿途击杀|cRXP_ENEMY_饥饿的恐狼|r和|cRXP_ENEMY_疯狂的恐狼|r. 拾取他们的|cRXP_LOOT_狼肋排|r
>>|cRXP_WARN_你不需要现在就击杀全部的|cRXP_ENEMY_狼|r. 为之后的任务保留|cRXP_LOOT_狼肋排|r|r
.complete 226,1 
.complete 226,2 
.collect 1015,10,90,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
.isOnQuest 226
step
#label MadEva
.goto Duskwood,75.81,45.29
.target Madame Eva
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊瓦夫人|r
.accept 66 ,, The Legend of Stalvan
.accept 101 ,, The Totem of Infliction
step << !Rogue
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板崔莱尼|r
.home >> 绑定炉石到夜色镇
.target Innkeeper Trelayne
step
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格鲁奥|r
>>|cRXP_WARN_你需要50点烹饪技能才能接到这个任务|r
.accept 90 ,, Seasoned Wolf Kabobs
.turnin 90 ,, Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.59,46.89
.target Commander Althea Ebonlocke
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.accept 56 ,, The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_书记员达尔塔|r
.turnin 66 ,, The Legend of Stalvan
.target Clerk Daltry
.accept 67 ,, The Legend of Stalvan
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾莱尼·卡尔文|r
.accept 163 ,, Raven Hill
.accept 165 ,, The Hermit
step
.abandon 95 ,, Sven's Revenge
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾莱尼·卡尔文|r
.accept 164 ,, Deliveries to Sven
>>|cRXP_WARN_如果你接不到这个任务, 就打开任务日志并放弃斯温的复仇.|r
step
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.fp Duskwood>> 开启夜色镇飞行点
.target Felicia Maline
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尔伯|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_赫尔伯|r这没有库存就跳过这步|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 174 ,, Look To The Stars
.turnin 174 ,, Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 ,, Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 ,, Look To The Stars
.accept 177 ,, Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith HistoryBook1
>>|cRXP_WARN_如果你捡到了|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]就接受任务. 这是暮色森林区域掉落物品|r
.collect 2794,1,337 
.accept 337 ,, An Old History Book
.use 2794 
step
#completewith next
>> 击杀|cRXP_ENEMY_骷髅战士|r和|cRXP_ENEMY_骷髅法师|r
>>|cRXP_ENEMY_骷髅战士|r|cRXP_WARN_会|r|T132316:0|t[断筋]
>>|cRXP_ENEMY_骷髅法师|r|cRXP_WARN_会|r|T135846:0|t[寒冰箭]|cRXP_WARN_并且有|r|T135843:0|t[霜甲术]
.complete 56,1 
.complete 56,2 
.mob Skeletal Warrior
.mob Skeletal Mage
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>击杀|cRXP_ENEMY_疯狂的食尸鬼|r. 拾取|cRXP_LOOT_玛丽的眼镜|r
>>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r可能出现在小教堂内或在外面游荡|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,80.35,69.31,50,0
.goto Duskwood,77.49,71.30,50,0
.goto Duskwood,79.38,73.70,50,0
.goto Duskwood,79.38,70.28
#label HistoryBook1
>> 击杀|cRXP_ENEMY_骷髅战士|r和|cRXP_ENEMY_骷髅法师|r
>>|cRXP_ENEMY_骷髅战士|r|cRXP_WARN_会|r|T132316:0|t[断筋]
>>|cRXP_ENEMY_骷髅法师|r|cRXP_WARN_会|r|T135846:0|t[寒冰箭]|cRXP_WARN_并且有|r|T135843:0|t[霜甲术]
.complete 56,1 
.complete 56,2 
.mob Skeletal Warrior
.mob Skeletal Mage
step
#completewith next
.goto Duskwood,18.203,56.215,50 >> 前往暮色森林西部寻找|cRXP_FRIENDLY_基特斯|r
step
.goto Duskwood,18.203,56.215
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基特斯|r
.turnin 163 ,, Raven Hill
.accept 5 ,, Jitters' Growling Gut
.target Jitters
step
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_布里兹提克|r对话
.vendor >> |cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药水]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_布里兹提克|r这没有库存就跳过这步|r
.target Bliztik
step
#era/som
#completewith TheHermit
>> 在暮色森林击杀|cRXP_ENEMY_蜘蛛|r. 拾取他们的|cRXP_LOOT_粘糊的蜘蛛腿|r
>>|cRXP_WARN_你将需要1个|cRXP_LOOT_小毒囊|r来应对接下来的盗贼职业任务|r << Rogue !Dwarf
.collect 2251,6,93,1 
.collect 1475,1,2359,1 << Rogue !Dwarf 
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
.isQuestTurnedIn 90
.goto Duskwood,9.98,59.57,60,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>> 击杀|cRXP_ENEMY_饥饿的恐狼|r和|cRXP_ENEMY_疯狂的恐狼|r
.complete 226,1 
.complete 226,2 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
step
.goto Duskwood,9.98,59.57,60,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>> 击杀|cRXP_ENEMY_饥饿的恐狼|r和|cRXP_ENEMY_疯狂的恐狼|r. 拾取他们的|cRXP_LOOT_狼肋排|r
.complete 226,1 
.complete 226,2 
.collect 1015,10,90,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 164 ,, Deliveries to Sven
.target Sven Yorgen
.accept 95 ,, Sven's Revenge
step
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉尔斯|r
.turnin -226 ,, Wolves at Our Heels
step
#label TheHermit
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚伯克隆比|r
.turnin 165 ,, The Hermit
.target Abercrombie
.accept 148 ,, Supplies from 夜色镇
step
#era/som
.goto Duskwood,33.6,60.4,100,0
.goto Duskwood,12.2,69.8,100,0
.goto Duskwood,10.6,37.0,100,0
.goto Duskwood,12.8,55.6
>> 在暮色森林击杀|cRXP_ENEMY_蜘蛛|r. 拾取他们的|cRXP_LOOT_粘糊的蜘蛛腿|r
>>|cRXP_WARN_你将需要1个|cRXP_LOOT_小毒囊|r来应对接下来的盗贼职业任务|r << Rogue !Dwarf
.collect 2251,6,93,1 
.collect 1475,1,2359,1 << Rogue !Dwarf 
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
#som
#phase 3-6
>>在暮色森林击杀蜘蛛
.goto Duskwood,10.69,59.86,90,0
.goto Duskwood,8.82,38.44
.collect 2251,6,93,1
.collect 1475,1,2359,1 << Rogue !Dwarf
>>你将需要1个小毒囊来制作解毒剂以应对接下来暴风城的盗贼职业任务 << Rogue !Dwarf
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
#completewith next
.zone Westfall >> 前往西部荒野
step
#era
#completewith next << Rogue
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>> 击杀|cRXP_ENEMY_尘魔|r. 拾取他们的|cRXP_LOOT_残骸|r
>>|cRXP_ENEMY_尘魔|r|cRXP_WARN_会在整个西部荒野刷新. 它们的刷新点已标记在地图上|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找它们的踪迹|r << Hunter
.complete 1076,1
.unitscan Dust Devil
step
#som
#completewith MoonbrookSt
.goto Westfall,40.14,60.85,0
>> 寻找尘魔, 它们在整个区域都有刷新
>> 不要专注于完成此任务
>> 使用鹰眼术以寻找它们 << Hunter
.complete 1076,1
.unitscan DUST DEVIL
step << Rogue
.goto Westfall,68.50,70.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密探吉尔妮|r
.turnin 2360 ,, Mathias and the Defias
.target Agent Kearnen
step << Rogue
.goto Westfall,68.50,70.08
.target Agent Kearnen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密探吉尔妮|r
.accept 2359 ,, Klaven's Tower
.isQuestTurnedIn 2360
step << Rogue
.goto Westfall,71.49,73.49,30,0
.goto Westfall,71.01,75.72,30,0
.goto Westfall,69.58,73.07,30,0
.goto Westfall,71.49,73.49,30,0
.goto Westfall,71.01,75.72,30,0
.goto Westfall,69.58,73.07
>>|T133644:0|t[偷窃]一名|cRXP_ENEMY_丑陋的迪菲亚懒汉|r. 拾取|cRXP_LOOT_迪菲亚塔楼钥匙|r
>>|cRXP_WARN_你必须处于|r|T132320:0|t[潜行]|cRXP_WARN_状态以使用|r|T133644:0|t[偷窃]
>>|cRXP_WARN_|cRXP_ENEMY_丑陋的迪菲亚懒汉|r在塔外巡逻|r
.complete 2359,2 
.link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_点击此处查看视频指导|r
.isOnQuest 2359
.mob Malformed Defias Drone
step << Rogue
.goto Westfall,70.41,73.93
>>|cRXP_WARN_前往塔楼顶部|r
>>打开|cRXP_PICK_暮色森林的箱子|r. 拾取|cRXP_LOOT_克拉文·摩特维克的日记|r
>>|cRXP_WARN_你可以|r|T132310:0|t[闷棍]|cRXP_ENEMY_克拉文·摩特维克|r|cRXP_WARN_然后再打开|r|cRXP_PICK_暮色森林的箱子|r
>>|cRXP_WARN_如果你的|r|T132310:0|t[闷棍]|cRXP_WARN_被抵抗或者未命中, 施放|r|T132331:0|t[消失]|cRXP_WARN_然后重试或者直接跳下去重置他. 另外你也可以选择稍后再来完成此任务|r
.complete 2359,1 
.link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_点击此处查看视频指导|r
.isOnQuest 2359
step << Rogue
#era
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>> 击杀|cRXP_ENEMY_尘魔|r. 拾取他们的|cRXP_LOOT_残骸|r
>>|cRXP_ENEMY_尘魔|r|cRXP_WARN_会在整个西部荒野刷新. 它们的刷新点已标记在地图上|r
.complete 1076,1
.unitscan Dust Devil
step
.goto Westfall,41.51,66.72
>>点击地上的|cRXP_PICK_旧提箱|r
.turnin 67 ,, The Legend of Stalvan
.accept 68 ,, The Legend of Stalvan
step << Druid
#completewith next
.goto Westfall,17.928,33.099,50 >> 游出海
step << Druid
.goto Westfall,17.928,33.099
>>打开|cRXP_PICK_奇怪的保险箱|r. 拾取|cRXP_LOOT_水兽耐力坠饰|r
.collect 15882,1,272,1 
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.0,41.4
.use 15883 >>|cRXP_WARN_在雷姆洛斯神殿|r|cRXP_WARN_使用|r|T133443:0|t[水兽敏捷坠饰]|cRXP_WARN_与|T133442:0|t[水兽耐力坠饰]结合|r
.complete 272,1 
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
>>|cRXP_WARN_这将为你节约跑路的时间|r
step << Druid
.goto Moonglade,56.209,30.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德迪利特·星焰|r
.turnin 272 ,, Trial of the Sea Lion
.accept 5061 ,, Aquatic Form
.target Dendrite Starblaze
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.trainer >> 学习职业技能
.target Loganaar
step << Druid
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>> 飞往泰达希尔
.target Silva Fil'naveth
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 5061 ,, Aquatic Form
step << Rogue
.hs >> 炉石回暴风城
.cooldown item,6948,>0,1
step << Rogue
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
.fly Stormwind >> 飞往暴风城
.target Thor
.zoneskip Stormwind City
step << Rogue
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 前往楼上寻找|cRXP_FRIENDLY_马迪亚斯·肖尔|r
step << Rogue
.goto Stormwind City,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.turnin 2359 ,, Klaven's Tower
.target Master Mathias Shaw
.accept 2607 ,, The Touch of Zanzil
step << Rogue
#completewith next
.goto StormwindClassic,78.86,58.85,9 >> 前往地下室
step << Rogue
.goto StormwindClassic,78.03,58.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_道克·米希匹克斯|r
.target Doc Mixilpixil
.turnin 2607 ,, The Touch of Zanzil

step << Rogue !Dwarf
.goto Stormwind City,42.8,26.6
.train 6452 >> |cRXP_WARN_升级|r|T135966:0|t[急救]|cRXP_WARN_到80|r
>>|cRXP_WARN_制作1个|r|T134437:0|t[抗毒剂]|cRXP_WARN_并用来移除|r|T136230:0|t[赞吉尔之触]|cRXP_WARN_DeBuff|r
>>|cRXP_WARN_如果你有|r|T626003:0|t|cFFF48CBA圣骑士|r|cRXP_WARN_或者|r|T625999:0|t|cFFFF7C0A德鲁伊|r|cRXP_WARN_朋友, 你就可以跳过这步并让他们帮你移除此效果|r
step << Rogue
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Duskwood>> 飞往夜色镇
.target Dungar Longdrink
step << Paladin
.goto Westfall,42.5,88.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达芙妮·斯迪威尔|r
.turnin 1650 ,, The Tome of Valor
.target Daphne Stilwell
.accept 1651 ,, The Tome of Valor
step << Paladin
.goto Westfall,42.5,88.6
.complete 1651,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达芙妮·斯迪威尔|r
.turnin 1651 ,, The Tome of Valor
.target Daphne Stilwell
.accept 1652 ,, The Tome of Valor
step << !Rogue
.hs >> 炉石回夜色镇
.cooldown item,6948,>0,1
step << !Rogue
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
.fly Darkshire >> 飞往夜色镇
.target Thor
.zoneskip Duskwood
step
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格鲁奥|r
>>|cRXP_WARN_你需要50点烹饪技能才能接到这个任务|r
.accept 90 ,, Seasoned Wolf Kabobs
.turnin 90 ,, Seasoned Wolf Kabobs
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格鲁奥|r
.turnin 5 ,, Jitters' Growling Gut
.target Chef Grual
.accept 93 ,, Dusky Crab Cakes
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格鲁奥|r
.target Chef Grual
.turnin 93 ,, Dusky Crab Cakes
.isQuestComplete 93
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.turnin 56 ,, The Night Watch
.target Commander Althea Ebonlocke
.accept 57 ,, The Night Watch
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_书记员达尔塔|r
.turnin 68 ,, The Legend of Stalvan
.target Clerk Daltry
.accept 69 ,, The Legend of Stalvan
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊瓦夫人|r
.turnin 148 ,, Supplies from Darkshire
.target Madame Eva
.accept 149 ,, Ghost Hair Thread
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 ,, Look To The Stars
.target Viktori Prism'Antras
step
#completewith DockmasterBaren
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Redridge >> 飞往赤脊山
.target Felicia Maline
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官马瑞斯|r
.accept 20 ,, Blackrock Menace
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛蒂·詹罗斯|r
.accept 34 ,, An Unwelcome Guest
.xp <24,1
step
.goto Redridge Mountains,15.68,49.30
>> 击杀|cRXP_ENEMY_贝利格拉布|r. 拾取他的|cRXP_LOOT_獠牙|r
.complete 34,1
.mob Bellygrub
.xp <24,1
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛蒂·詹罗斯|r
.turnin 34 ,, An Unwelcome Guest
.isQuestComplete 34
step
#label DockmasterBaren
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员巴伦|r
.accept 127 ,, Selling Fish
.accept 150 ,, Murloc Poachers
step
#completewith next
.goto Redridge Mountains,56.4,51.8,0
>> 击杀|cRXP_ENEMY_鱼人斥候|r和|cRXP_ENEMY_鱼人招潮者|r. 拾取他们的|cRXP_LOOT_鳍|r和|cRXP_LOOT_斑点太阳鱼|r
.complete 150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#label orcs
>> 击杀|cRXP_ENEMY_黑石步兵|r和|cRXP_ENEMY_黑石前锋|r. 拾取他们的|cRXP_LOOT_斧子|r
>>|cRXP_WARN_注意|cRXP_ENEMY_黑石前锋|r会对你施放|r|T132149:0|t[网]
>>|cRXP_WARN_在击杀|cRXP_ENEMY_兽人|r和|cRXP_ENEMY_鱼人|r之间的可选目标已标注在地图的西南方|r
.goto Redridge Mountains,61.76,43.51
.complete 20,1 
.isOnQuest 20
.mob Blackrock Grunt
.mob Blackrock Outrunner
step
.goto Redridge Mountains,56.4,51.8
>> 击杀|cRXP_ENEMY_鱼人斥候|r和|cRXP_ENEMY_鱼人招潮者|r. 拾取他们的|cRXP_LOOT_鳍|r和|cRXP_LOOT_斑点太阳鱼|r
.complete 150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 20 ,, Blackrock Menace
.isQuestComplete 20
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工头奥斯洛|r
.goto Redridge Mountains,32.13,48.63
.target Foreman Oslow
.accept 347 ,, Rethban Ore
.isQuestTurnedIn 345
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员巴伦|r
.turnin 127 ,, Selling Fish
.isQuestComplete 127
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员巴伦|r
.turnin 150 ,, Murloc Poachers
.isQuestComplete 150
step
#completewith Rethban
.goto Redridge Mountains,20.05,27.48,20 >> 进入瑞斯班矿洞
step
.goto Redridge Mountains,19.04,23.48
>> 击杀|cRXP_ENEMY_赤脊山苦工|r. 拾取他们的|cRXP_LOOT_矿石|r
>>|cRXP_ENEMY_赤脊山猛击者|r|cRXP_WARN_与|cRXP_ENEMY_赤脊山苦工|r共享刷新, 所以你可能也需要击杀他们以使赤脊山苦工刷新|r
>>|cRXP_ENEMY_赤脊山苦工|r|cRXP_WARN_攻速非常快, |cRXP_ENEMY_赤脊山猛击者|r会用|r|T132154:0|t[击倒]|cRXP_WARN_击晕你|r
>>|cRXP_WARN_你也可以通过|r|T134708:0|t[采矿]|cRXP_WARN_在瑞斯班矿洞采集|r|T134566:0|t[铜矿]|cRXP_WARN_和|r|T134579:0|t[锡矿]|cRXP_WARN_来获得它们|r
.complete 347,1 
.skill mining,<1,1 
.mob Redridge Drudger
step
#label Rethban
>> 击杀|cRXP_ENEMY_赤脊山苦工|r. 拾取他们的|cRXP_LOOT_矿石|r
>>|cRXP_ENEMY_赤脊山猛击者|r|cRXP_WARN_与|cRXP_ENEMY_赤脊山苦工|r共享刷新, 所以你可能也需要击杀他们以使赤脊山苦工刷新|r
>>|cRXP_ENEMY_赤脊山苦工|r|cRXP_WARN_攻速非常快, |cRXP_ENEMY_赤脊山猛击者|r会用|r|T132154:0|t[击倒]|cRXP_WARN_击晕你|r
.goto Redridge Mountains,19.04,23.48
.complete 347,1 
.mob Redridge Drudger
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵伯尔顿|r
.accept 386 ,, What Comes Around...
.target Guard Berton
step
.group
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击|cRXP_FRIENDLY_通缉告示|r
.accept 180 ,, Wanted: Lieutenant Fangore
step << !Warlock !Priest
.solo
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击|cRXP_FRIENDLY_通缉告示|r
.accept 180 ,, Wanted: Lieutenant Fangore
step
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜里弗·科纳彻尔|r
.accept 91 ,, Solomon's Law
step
#completewith DeliverThread
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Duskwood >> 飞往夜色镇
.target Ariena Stormfeather
.zoneskip Duskwood
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尔伯|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_赫尔伯|r这没有库存就跳过这步|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 174 ,, Look To The Stars
.turnin 174 ,, Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 ,, Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 ,, Look To The Stars
.accept 177 ,, Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_如果你捡到了|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]就接受任务. 这是暮色森林区域掉落物品|r
.collect 2794,1,337 
.accept 337 ,, An Old History Book
.use 2794 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>击杀|cRXP_ENEMY_疯狂的食尸鬼|r. 拾取|cRXP_LOOT_玛丽的眼镜|r
>>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r可能出现在小教堂内或在外面游荡|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 ,, Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,81.98,59.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盲眼玛丽|r
.turnin 149 ,, Ghost Hair Thread
.target Blind Mary
.accept 154 ,, Return the Comb
step
#label DeliverThread
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊瓦夫人|r
.turnin 154 ,, Return the Comb
.target Madame Eva
.accept 157 ,, Deliver the Thread
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_议员米尔斯迪普|r
.accept 377 ,, Crime and Punishment
.target Councilman Millstipe
step
.isQuestTurnedIn 93
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师格鲁奥|r
.accept 240 ,, Return to Jitters
.target Chef Grual
step
.goto Duskwood,49.85,77.71
>>点击地上的|cRXP_PICK_一堆松软的泥土|r
.turnin 95 ,, Sven's Revenge
.accept 230 ,, Sven's Camp
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基特斯|r
.turnin 240 ,, Return to Jitters
.target Jitters
step
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_布里兹提克|r对话
.vendor >> |cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药水]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_布里兹提克|r这没有库存就跳过这步|r
.target Bliztik
step
.goto Westfall,84.06,37.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚伯克隆比|r
.turnin 157 ,, Deliver the Thread
.target Abercrombie
.accept 158 ,, Zombie Juice
step
#label BliztikCheck
.goto Westfall,68.38,39.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 230 ,, Sven's Camp
.target Sven Yorgen
.accept 262 ,, The Shadowy Figure
step
.goto Duskwood,21.35,46.80
.xp 25+29845 >> 刷到29845+/34000xp
step
#completewith next
.dungeon Stockades
+你很快就会前往暴风城, 尝试寻找前往监狱的副本队伍
step
.goto Elwynn Forest,43.771,65.803,100 >> 前往闪金镇
.isOnQuest 69
step
.goto Elwynn Forest,43.771,65.803
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板法雷|r
.turnin 69 ,, The Legend of Stalvan
.target Innkeeper Farley
.accept 70 ,, The Legend of Stalvan
step
#completewith next
.goto Elwynn Forest,43.877,66.546,9 >> 上楼
step
.goto Elwynn Forest,44.302,65.823
>>打开|cRXP_PICK_储物箱|r. 拾取|cRXP_LOOT_一封未寄出的信|r
.complete 70,1
step
#completewith next
.goto Elwynn Forest,48.82,41.65,40 >> 前往北郡修道院
step
.goto Elwynn Forest,49.60,40.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_帕克斯顿修士|r
>>|cRXP_FRIENDLY_帕克斯顿修士|r|cRXP_WARN_在一楼|r
.turnin 347 ,, Rethban Ore
.target Brother Paxton
.accept 346 ,, Return to Kristoff
step << !Mage
#completewith next
.goto Elwynn Forest,45.19,49.40,40,0
.goto Stormwind City,69.96,86.90
.zone Stormwind City >> 前往暴风城
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林·马伦|r
.turnin 1076 ,, Devils in Westfall
.target Collin Mauren
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·布舍尔|r
.vendor >> |cRXP_BUY_购买2个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Kyra Boucher
step
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> 前往已宰的羔羊并下楼
step
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑爪加尔德斯|r
.accept 335 ,, A Noble Brew
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step
.goto Stormwind City,29.528,61.924
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_管理员弗索姆|r
.turnin 70 ,, The Legend of Stalvan
.target Caretaker Folsom
.accept 72 ,, The Legend of Stalvan
step
.goto Stormwind City,29.44,61.52
>>点击地上的|cRXP_PICK_密封的箱子|r
.turnin 72 ,, The Legend of Stalvan
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >> 学习职业技能
.target Sheldras Moontree
step
.goto Stormwind City,45.697,38.422
.target Brother Kristoff
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克里斯托弗修士|r
.turnin 346 ,, Return to Kristoff
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
.target Duthorian Rall
.turnin 1652 ,, The Tome of Valor
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
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔努修士|r
>>|cRXP_WARN_如果你低于26级|r
.accept 2923 ,, Tinkmaster Overspark
.xp <26,1
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> 前往暴风要塞
step
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
>>|cRXP_WARN_如果你找到了|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]就去交还任务|r
.turnin 337 ,, An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼科瓦·拉斯克|r
>>|cRXP_FRIENDLY_尼科瓦·拉斯克|r|cRXP_WARN_在旧城区巡逻|r
.accept 388 ,, The Color of Blood
.unitscan Nikova Raskol
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_典狱官塞尔沃特|r
.accept 391 ,, The Stockade Riots
.accept 387 ,, Quell The Uprising
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_典狱官塞尔沃特|r
.accept 387 ,, Quell The Uprising
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,39.834,54.360
+寻找队伍前往监狱
.zoneskip Stormwind City,1 
step
.dungeon Stockades
#label stock1
#sticky
>>击杀|cRXP_ENEMY_迪菲亚|r. 拾取他们的|cRXP_LOOT_面罩|r
.complete 387,1 
.complete 387,2 
.complete 387,3 
.complete 388,1 
step
.dungeon Stockades
#label stock2
#sticky
>> 击杀|cRXP_ENEMY_可怕的塔高尔|r. 拾取他的|cRXP_LOOT_头颅|r. |cRXP_ENEMY_可怕的塔高尔|r会在随机地点刷新
>> 在西边通道的尽头击杀|cRXP_ENEMY_迪克斯特·瓦德|r. 拾取他的|cRXP_LOOT_手|r
.complete -386,1 
.complete -377,1 
.mob Targorr the Dread
.mob Dextren Ward
step
.dungeon Stockades
#label Bazil
>> 在东边通道击杀|cRXP_ENEMY_巴基尔·斯瑞德|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_WARN_确保你有3个|r|T132905:0|t[丝绸]|cRXP_WARN_. 此任务的后续将会用到|r
.complete 391,1 
.collect 4306,3,2746,1 
.isOnQuest 391
.mob Bazil Thredd
step
.dungeon Stockades
#requires stock1
step
.dungeon Stockades
#requires stock2
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_典狱官塞尔沃特|r
.turnin 387 ,, Quell The Uprising
.turnin 391 ,, The Stockade Riots
.accept 392 ,, The Curious Visitor
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_典狱官塞尔沃特|r
.turnin 387 ,, Quell The Uprising
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴洛斯·艾力克斯顿|r
.turnin 392 ,, The Curious Visitor
.accept 393 ,, Shadow of the Past
.target Baros Alexston
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼科瓦·拉斯克|r
>>|cRXP_FRIENDLY_尼科瓦·拉斯克|r|cRXP_WARN_在旧城区巡逻|r
.turnin 388 ,, The Color of Blood
.unitscan Nikova Raskol
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 前往楼上寻找|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.turnin 393 ,, Shadow of the Past
.accept 350 ,, Look to an Old Friend
.target Master Mathias Shaw
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_埃林·提亚斯|r对话
.turnin 350 ,, Look to an Old Friend
.target Elling Trias
.isQuestTurnedIn 389
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 1083 >> 从银行取出下列物品:
>>|T133277:0|t[阿祖拉的铭文饰品] 
.target Newton Burnside
step
#completewith ShadowyRot
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Darkshire >> 飞往夜色镇
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尔伯|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_赫尔伯|r这没有库存就跳过这步|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 174 ,, Look To The Stars
.turnin 174 ,, Look To The Stars
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 ,, Look To The Stars
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 ,, Look To The Stars
.accept 177 ,, Look To The Stars
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_如果你捡到了|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]就接受任务. 这是暮色森林区域掉落物品|r
.collect 2794,1,337 
.accept 337 ,, An Old History Book
.use 2794 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>击杀|cRXP_ENEMY_疯狂的食尸鬼|r. 拾取|cRXP_LOOT_玛丽的眼镜|r
>>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r可能出现在小教堂内或在外面游荡|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 ,, Look To The Stars
.target Viktori Prism'Antras
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊瓦夫人|r
.turnin 262 ,, The Shadowy Figure
.target Madame Eva
.accept 265 ,, The Shadowy Search Continues
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_书记员达尔塔|r
.turnin 265 ,, The Shadowy Search Continues
.target Clerk Daltry
.accept 266 ,, Inquire at the Inn
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_议员米尔斯迪普|r
.turnin 377 ,, Crime and Punishment
.target Councilman Millstipe
step
#label ShadowyRot
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 158 ,, Zombie Juice
.target Tavernkeep Smitts
.accept 156 ,, Gather Rot Blossoms
.turnin 266 ,, Inquire at the Inn
.accept 453 ,, Finding the Shadowy Figure
step << Rogue
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板崔莱尼|r
.home >> 绑定炉石到夜色镇
.target Innkeeper Trelayne
step
#completewith HistoryBook
>>|cRXP_WARN_如果你捡到了|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]就接受任务. 这是暮色森林区域掉落物品|r
.collect 2794,1,337 
.accept 337 ,, An Old History Book
.use 2794 
step
#completewith next
.goto Duskwood,22.95,44.75,150 >> 前往乌鸦岭墓园
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>> 击杀|cRXP_ENEMY_骸骨魔|r和|cRXP_ENEMY_恐怖骸骨|r. 拾取他们的|cRXP_LOOT_腐败之花|r
.complete 57,1 
.complete 57,2 
.complete 156,1 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基特斯|r
.turnin 453 ,, Finding the Shadowy Figure
.target Jitters
.accept 268 ,, Return to Sven
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 268 ,, Return to Sven
.target Sven Yorgen
step
.group 2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.accept 323 ,, Proving Your Worth
.target Sven Yorgen
step
.group 2
.goto Duskwood,16.01,38.79
>> 击杀|cRXP_ENEMY_骷髅袭击者|r, |cRXP_ENEMY_骷髅医师|r和|cRXP_ENEMY_骷髅看守|r
>>|cRXP_WARN_进入黎明墓穴可以找到|r|cRXP_ENEMY_骷髅看守|r
>>|cRXP_WARN_注意35级精英|r|cRXP_ENEMY_摩拉迪姆|r|cRXP_WARN_他在墓地巡逻|r
.complete 323,1 
.complete 323,2 
.complete 323,3 
.mob Skeletal Raider
.mob Skeletal Healer
.mob Skeletal Warder
.unitscan Mor'Ladim
step
.group
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 323 ,, Proving Your Worth
.target Sven Yorgen
.accept 269 ,, Seeking Wisdom
step
>>一直刷怪直到炉石CD好了
.hs >> 炉石回夜色镇
.cooldown item,6948,<0
step
#completewith dusk2
.hs >> 炉石回夜色镇
.cooldown item,6948,>0,1
step
#label dusk2
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 156 ,, Gather Rot Blossoms
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.turnin 57 ,, The Night Watch
.target Commander Althea Ebonlocke
step
#label HistoryBook
#completewith RRstart2
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Redridge >> 飞往赤脊山
.target Felicia Maline
.zoneskip Redridge Mountains
step
#era
.group
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵豪维|r
.accept 128 ,, Blackrock Bounty
step
.group
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官马瑞斯|r
.accept 19 ,, Tharil'zun
.accept 115 ,, Shadow Magic
.isQuestTurnedIn 20
step
.goto Redridge Mountains,31.00,47.30
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
.accept 126 ,, Howling in the Hills
.isQuestTurnedIn 124
step
.group
.goto Redridge Mountains,29.622,46.172
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t点击|cRXP_FRIENDLY_通缉告示|r
.accept 169 ,, Wanted: Gath'Ilzogg
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵伯尔顿|r
.turnin 386 ,, What Comes Around...
.target Guard Berton
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛蒂·詹罗斯|r
.accept 34 ,, An Unwelcome Guest
step
.goto Redridge Mountains,15.68,49.30
>> 击杀|cRXP_ENEMY_贝利格拉布|r. 拾取他的|cRXP_LOOT_獠牙|r
.complete 34,1
.mob Bellygrub
step
#label RRstart2 << !Hunter !Warlock
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛蒂·詹罗斯|r
.turnin 34 ,, An Unwelcome Guest
step
.goto Redridge Mountains,23.77,30.48,80,0
.goto Redridge Mountains,27.58,21.78
>> 击杀|cRXP_ENEMY_犹勒|r. 拾取他的|cRXP_LOOT_爪子|r
>>|cRXP_WARN_使用|r|T135857:0|t[暴风雪]|cRXP_WARN_或者|r|T135826:0|t[烈焰风暴]单拉他 << Mage
.complete 126,1 
.mob Yowler
step
#completewith next
>>击杀|cRXP_ENEMY_暗皮豺狼人|r. 拾取他们的|cRXP_LOOT_坠饰|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
#label fangore
.goto Redridge Mountains,80.17,37.05
>> 击杀|cRXP_ENEMY_范高雷中尉|r. 拾取他的|cRXP_LOOT_爪子|r
>>|cRXP_ENEMY_范高雷中尉|r|cRXP_WARN_会与2只额外的|cRXP_ENEMY_豺狼人|r一起进战斗.|r << !Warlock !Priest
>>|cRXP_ENEMY_范高雷中尉|r|cRXP_WARN_免疫暗影伤害. 确保你有队友能帮上忙, 否则就跳过这一步|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.unitscan Lieutenant Fangore
step
.goto Redridge Mountains,75.49,41.57,60,0
.goto Redridge Mountains,80.09,36.68,60,0
.goto Redridge Mountains,80.69,46.28,60,0
.goto Redridge Mountains,77.62,42.28,60,0
.goto Redridge Mountains,77.52,36.31
>>击杀|cRXP_ENEMY_暗皮豺狼人|r. 拾取他们的|cRXP_LOOT_坠饰|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
.goto Redridge Mountains,84.50,46.80
>>点击|cRXP_PICK_石狮子|r
.turnin 94 ,, A Watchful Eye
.isOnQuest 94
step
.group
.goto Redridge Mountains,84.50,46.80
>>点击|cRXP_PICK_石狮子|r
.accept 248 ,, Looking Further
.isQuestTurnedIn 94
step
.group 3
.goto Redridge Mountains,63.246,49.840
>> 点击石堡高塔顶部的|cRXP_PICK_空瓶子|r
>>|cRXP_WARN_不要接受后续任务|r
.turnin 248 ,, Looking Further
.isOnQuest 248
step
.group 3
#completewith Gath
>> 击杀|cRXP_ENEMY_黑石暗影法师|r. 拾取他们的|cRXP_LOOT_宝珠|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
#completewith next
.goto Redridge Mountains,71.40,55.07
>> 击杀|cRXP_ENEMY_萨瑞尔祖恩|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
#label Gath
.group 5
.goto Redridge Mountains,69.599,55.797
>> 进入石堡高塔要塞
>> 击杀|cRXP_ENEMY_加塞尔佐格|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 169,1 
.mob Gath'Ilzogg
.isOnQuest 169
step
#completewith next
>> 击杀|cRXP_ENEMY_黑石暗影法师|r. 拾取他们的|cRXP_LOOT_宝珠|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
.goto Redridge Mountains,71.40,55.07
>> 击杀|cRXP_ENEMY_萨瑞尔祖恩|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,66.68,56.26
>> 击杀|cRXP_ENEMY_黑石暗影法师|r. 拾取他们的|cRXP_LOOT_宝珠|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
#completewith next
.group
.goto Redridge Mountains,32.484,6.761,30 >> 进入撕裂者山谷
step
#era
.group 2
.goto Redridge Mountains,28.89,13.20
>> 击杀|cRXP_ENEMY_黑石勇士|r
.complete 128,1 
.isOnQuest 128
step
#era
.group 2
.goto Redridge Mountains,28.388,12.562
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在撕裂者山谷深处对话|cRXP_FRIENDLY_基沙恩下士|r
.accept 219 ,, Missing In Action
.target Corporal Keeshan
step
#era
.group 2
.goto Redridge Mountains,33.414,48.499
>> 护送|cRXP_FRIENDLY_基沙恩下士|r回到湖畔镇
>>|cRXP_WARN_注意! 在你离开洞穴后不要拉太多的怪|r
.complete 219,1
.isOnQuest 219
.target Corporal Keeshan
step
#era
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 219 ,, Missing In Action
.isQuestComplete 219
step
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 19 ,, Tharil'zun
.isQuestComplete 19
step
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 115 ,, Shadow Magic
.isQuestComplete 115
step
.group
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_所罗门镇长|r
.turnin 169 ,, Wanted: Gath'Ilzogg
.target Magistrate Solomon
.isQuestComplete 169
step
.abandon 19 ,, Tharil'zun
step
.abandon 115 ,, Shadow Magic
step
.abandon 169 ,, Wanted: Gath'Ilzogg
step
.abandon 248 ,, Looking Further
step
.goto Redridge Mountains,30.97,47.27
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗纳·奥斯古|r
.turnin 126 ,, Howling in the Hills
.isQuestComplete 126
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_所罗门镇长|r
.turnin 180 ,, Wanted: Lieutenant Fangore
.isQuestComplete 180
.target Magistrate Solomon
step
.goto Redridge Mountains,29.71,44.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜里弗·科纳彻尔|r
.turnin 91 ,, Solomon's Law
.isQuestComplete 91
.target Bailiff Conacher
step
#era
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵豪维|r
.turnin 128 ,, Blackrock Bounty
.isQuestComplete 128
step << Mage
.zone Stormwind City >> 传送到暴风城
.itemcount 17031,1 
step
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >> 飞往暴风城
.target Ariena Stormfeather
.zoneskip Stormwind City
step
.abandon 180 ,, Wanted: Lieutenant Fangore
step
.abandon 91 ,, Solomon's Law
step
.abandon 128 ,, Blackrock Bounty
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
#classic
<< Alliance
#name 27-28 湿地
#next 28-29 灰谷
step << Mage
.xp <28,1
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔莎林|r
.trainer >> 学习职业技能
.target Elsharin
step << Mage
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林·马伦|r
.accept 1077 ,, Special Delivery for Gaxim
.accept 1078 ,, Retrieval for Mauren
.target Collin Mauren
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 2378,1130 >>将以下物品存入银行:
>>|T133718:0|t[骷髅的手指] (如果你有的话)
>>|T134799:0|t[瓶装蜘蛛毒液] (如果你有的话)
.target Newton Burnside
step << !Mage
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林·马伦|r
.accept 1077 ,, Special Delivery for Gaxim
.accept 1078 ,, Retrieval for Mauren
.target Collin Mauren
step << Warlock
.xp <28,1
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> 前往已宰的羔羊并下楼
step << Warlock
.xp <28,1
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
step << Paladin
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >> 学习职业技能
.target Arthur the Faithful
step << Priest
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >> 学习职业技能
.target Brother Joshua
step << Warrior
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.xp <28,1
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Druid
.xp <28,1
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >> 学习职业技能
.target Sheldras Moontree
step << !Priest !Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
step
.isQuestTurnedIn 323
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_主教法席恩|r
.turnin 269 ,, Seeking Wisdom
.accept 270 ,, The Doomed Fleet
.target Bishop Farthing
step
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔努修士|r
.accept 2923 ,, Tinkmaster Overspark
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> 前往暴风要塞
step
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
>>|cRXP_WARN_如果你找到了|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]就去交还任务|r
.turnin 337 ,, An Old History Book
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Hunter
.xp <28,1
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step
.dungeon Gnomer
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沉默的舒尼|r
.accept 2928 ,, Gyrodrillmatic Excavationators
.target Shoni the Shilent
step << Mage
#completewith next
.zone Ironforge >> 传送到铁炉堡
.itemcount 17031,1 
step
#completewith next
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> 进入矿道地铁. 乘坐地铁前往铁炉堡
step
.goto Ironforge,69.540,50.325
.target Tinkmaster Overspark
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
.turnin 2923 ,, Tinkmaster Overspark
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛玛克·链带|r
.accept 1073 ,, Ineptitude + Chemicals = Fun
.target Lomac Gearstrip
step
.dungeon BFD
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛利·硬骨|r
.accept 971 ,, Knowledge in the Deeps
.target Gerrig Bonegrip
step
.goto Ironforge,24.94,73.66,0
>> 收集4瓶|T134850:0|t[初级法力药水]和2瓶|T134822:0|t[初级坚韧药剂]
>>|cRXP_WARN_你可以从拍卖行购买, 或者用|r|T136240:0|t[炼金]|cRXP_WARN_制作|r
>>|cRXP_WARN_如果你无法获得这些物品就放弃任务并跳过此步|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1073
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛玛克·链带|r
.turnin 1073 ,, Ineptitude + Chemicals = Fun
.target Lomac Gearstrip
.isQuestComplete 1073
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛玛克·链带|r
.accept 1074 ,, Ineptitude + Chemicals = Fun
.target Lomac Gearstrip
.isQuestTurnedIn 1073
step
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands>> 飞往湿地
.target Gryth Thurden
step
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 270 ,, The Doomed Fleet
.isOnQuest 270
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板赫布瑞克|r
.home >> 绑定炉石到湿地
.target Innkeeper Helbrek
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> 上楼找|cRXP_FRIENDLY_考古学家弗拉冈特|r
.isQuestTurnedIn 942
step
.isQuestTurnedIn 942
.goto Wetlands,10.843,60.435
.target Archaeologist Flagongut
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_考古学家弗拉冈特|r
.accept 943 ,, The Absent Minded Prospector
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副菲兹莫斯|r
.accept 289 ,, The Cursed Crew
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞达|r
.accept 470 ,, Digging Through the Ooze
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔·波兰|r
.accept 281 ,, Reclaiming Goods
.target Karl Boran
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹姆士·哈洛伦|r
.accept 471 ,, Apprentice's Duties
.target James Halloran
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >> 前往米奈希尔堡垒上层
step
.goto Wetlands,9.861,57.486
.target Captain Stoutfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯托菲队长|r
.accept 464 ,, War Banners
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔雷尔·石纹|r
.accept 305 ,, In Search of The Excavation Team
step
.goto Wetlands,13.513,41.384
>>点击地上的|cRXP_PICK_破损的箱子|r
.turnin 281 ,, Reclaiming Goods
.accept 284 ,, The Search Continues
step
.goto Wetlands,13.608,38.214
>>点击地上的|cRXP_PICK_密封的桶|r
.turnin 284 ,, The Search Continues
.accept 285 ,, Search More Hovels
step
.goto Wetlands,13.945,34.809
>>点击地上的|cRXP_PICK_半埋的大桶|r
.turnin 285 ,, Search More Hovels
.accept 286 ,, Return the Statuette
step
#completewith next
.goto Wetlands,22.25,20.36,0
>> 击杀|cRXP_ENEMY_巨型湿地鳄鱼|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_WARN_你不需要现在就完成这个任务|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,14.00,29.80
.goto Wetlands,15.0,24.0
>> 击杀|cRXP_ENEMY_被诅咒的水手|r, |cRXP_ENEMY_被诅咒的水兵|r和|cRXP_ENEMY_大副斯涅利格|r. 拾取他的|cRXP_LOOT_鼻烟盒|r
.complete 289,1 
.complete 289,2 
.complete 289,3 
.mob Cursed Sailor
.mob Cursed Marine
.mob First Mate Snellig
step
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
>>击杀各种|cRXP_ENEMY_藓皮豺狼人|r. 拾取他们的|cRXP_LOOT_粗制打火石|r
.complete 277,1 
.isQuestTurnedIn 276
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
.goto Wetlands,44.25,25.61
>> 击杀|cRXP_ENEMY_红色软泥怪|r, |cRXP_ENEMY_残忍的软泥怪|r和|cRXP_ENEMY_黑色软泥怪|r. 拾取|cRXP_LOOT_塞达的背包|r
.complete 470,1 
.mob Crimson Ooze
.mob Monstrous Ooze
.mob Black Ooze
step
.goto Wetlands,43.009,41.675,50,0
.goto Wetlands,40.828,45.966,50,0
.goto Wetlands,45.222,44.251
>> 击杀|cRXP_ENEMY_龙喉兽人|r. 拾取他们的|cRXP_LOOT_战旗|r
>>|cRXP_WARN_注意|cRXP_ENEMY_龙喉劫掠者|r会对你施放|r|T132149:0|t[网]
.complete 464,1 
.mob Dragonmaw Raider
.mob Dragonmaw Swamprunner
.mob Dragonmaw Battlemaster
.mob Dragonmaw Shadowwarder
.mob Dragonmaw Centurion
.mob Dragonmaw Bonewarder
step
#completewith next
.goto Wetlands,38.790,48.988,20 >> 前往山路捷径
step
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫尔·铁衣|r
.accept 294 ,, Ormer's Revenge
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦琳·石纹|r
.turnin 305 ,, In Search of The Excavation Team
.accept 306 ,, In Search of The Excavation Team
.goto Wetlands,38.909,52.340
.target Merrin Rockweaver
step
.isQuestTurnedIn 942
.goto Wetlands,38.858,52.208
>> 拾取地上的|cRXP_LOOT_弗拉冈特的化石|r
.complete 943,2 
step
.goto Wetlands,30.8,31.0,80,0
.goto Wetlands,37.8,29.6,80,0
.goto Wetlands,43.0,33.2
>>击杀|cRXP_ENEMY_藓皮豺狼人|r. 拾取他们的|cRXP_LOOT_粗制打火石|r
.complete 277,1 
.isQuestTurnedIn 276
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
#completewith next
>> 击杀|cRXP_ENEMY_杂斑迅猛龙|r和|cRXP_ENEMY_杂斑尖啸龙|r. 拾取|cRXP_LOOT_雷鲁之石|r
>>|cRXP_WARN_不要偏离路线去完成这个任务. 你稍后还会击杀其他|cRXP_ENEMY_迅猛龙|r|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
step
.goto Wetlands,22.4,50.0,70,0
.goto Wetlands,23.0,55.2,70,0
.goto Wetlands,24.4,52.2,70,0
.goto Wetlands,26.2,47.7,70,0
.goto Wetlands,27.8,44.6,70,0
.goto Wetlands,31.4,42.0,70,0
.goto Wetlands,22.8,50.6
>> 击杀|cRXP_ENEMY_杂斑迅猛龙|r和|cRXP_ENEMY_杂斑尖啸龙|r
.complete 294,1 
.complete 294,2 
.mob Mottled Raptor
.mob Mottled Screecher
step
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.turnin 277 ,, Fire Taboo
.target Rethiel the Greenwarden
.accept 275 ,, Blisters on The Land
.isQuestTurnedIn 276
step
.goto Wetlands,64.78,75.31
>> 拾取地上的|cRXP_LOOT_麝鼠根|r
.complete 335,2 
step
.dungeon SFK
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
.zone Arathi Highlands >> 在寻找影牙城堡副本队伍时刷|cRXP_ENEMY_藓皮豺狼人|r
step
.dungeon SFK
>>影牙城堡没有任务. 你需要从湿地跑到银松森林. 确保你走在大路上穿过阿拉希高地, 注意路上的|cRXP_ENEMY_被遗忘者信使|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r和|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fp Arathi >> 开启阿拉希高地飞行点
.goto Arathi Highlands,45.73,46.09
.fp Southshore >> 开启Southshore飞行点
.goto Arathi Highlands,43.01,55.00,90,0
.goto Arathi Highlands,25.45,46.95,90,0
.goto Arathi Highlands,21.29,30.24,70,0
.goto Hillsbrad Foothills,49.338,52.272
.target Cedrik Prose
.target Darla Harris
.unitscan Forsaken Courier
step
.dungeon SFK
.goto Hillsbrad Foothills,14.77,46.72,0
.goto Silverpine Forest,44.96,67.92,0
.goto Hillsbrad Foothills,14.77,46.72,100,0
.goto Silverpine Forest,47.19,69.78,100,0
.goto Silverpine Forest,44.712,67.769
.subzone 209,2 >> 进入影牙城堡
step
.dungeon SFK
+影牙城堡没有任务
.zoneskip 209,1
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.trainer >> 学习职业技能
.target Loganaar
step
#completewith MenethilTurnins
.hs >> 炉石回米奈希尔港
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副菲兹莫斯|r
.turnin 289 ,, The Cursed Crew
.target First Mate Fitzsimmons
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞达|r
.turnin 470 ,, Digging Through the Ooze
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >> 前往米奈希尔堡垒上层
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯托菲队长|r
.turnin 464 ,, War Banners
.target Captain Stoutfist
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔雷尔·石纹|r
.turnin 306 ,, In Search of The Excavation Team
step
#label MenethilTurnins
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔·波兰|r
.turnin 286 ,, Return the Statuette
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
<< Alliance
#classic
#era
#name 28-29 灰谷
#next 29-30 湿地/希尔斯布莱德丘陵
step
#completewith next
.goto Wetlands,5.429,57.485,25 >> 前往米奈希尔港码头
step
.goto Wetlands,4.560,57.160
.zone Darkshore >> 乘船前往黑海岸
>>|cRXP_WARN_等待时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
step
.dungeon BFD
.goto Darkshore,38.327,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈沙拉·夜语|r
.accept 1275 ,, Researching the Corruption
.target Gershala Nightwhisper
step
.dungeon BFD
#completewith bfd1
+开始寻找前往黑暗深渊(BFD)的副本队伍, 你很快就要前往灰谷
step
.dungeon BFD
.goto Darkshore,36.71,44.98,5,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cFF00FF25凯莱斯·月羽|r
.fly Teldrassil >> 飞往泰达希尔
.target Caylais Moonfeather
step
.dungeon BFD
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_银色黎明守卫玛纳杜斯|r和|cRXP_FRIENDLY_哨兵山德拉斯|r对话
.accept 1199 ,, Twilight Falls
.goto Darnassus,55.239,23.996 
.accept 1198 ,, In Search of Thaelrid
.goto Darnassus,55.360,25.024 
.target Argent Guard Manados
.target Dawnwatcher Shaedlass
step
.dungeon BFD
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门回到鲁瑟兰村
.zoneskip Darnassus,1
step
.dungeon BFD
#label bfd1
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Ashenvale >> 飞往灰谷
.target Vesprystus
step
.dungeon BFD
.goto Ashenvale,37.6,34.0,0
+开始寻找前往黑暗深渊的队伍
.goto Ashenvale,15.5,19.0,0
.goto Ashenvale,14.230,14.618
>>在等待副本队伍组建时到阿斯特兰娜北边刷|cRXP_ENEMY_熊怪|r以获取|T132911:0|t[毛料]
.subzoneskip 2797
step
.dungeon BFD
#completewith EnterBFD
.goto Ashenvale,14.230,14.618,0
.goto 1414,43.97,35.30,50 >> 前往黑暗深渊
.subzoneskip 2797
step
.dungeon BFD
#completewith next
>> 击杀|cRXP_ENEMY_腐根游荡者|r, |cRXP_ENEMY_腐根萨特|r, |cRXP_ENEMY_黑暗深渊神谕者|r和|cRXP_ENEMY_黑暗深渊海潮祭司|r. 拾取他们的|cRXP_LOOT_堕落者的脑干|r
>>|cRXP_WARN_你在副本内也能打到|cRXP_LOOT_堕落者的脑干|r|r
.complete 1275,1 
.mob Blackfathom Tide Priestess
.mob Blackfathom Oracle
.mob Fallenroot Rogue
.mob Fallenroot Satyr
.isOnQuest 1275
step
#label EnterBFD
.dungeon BFD
.goto 1414,43.83,35.11,25,0
.goto 1414,43.92,34.56,25,0
.goto 1414,44.02,34.57,25,0
.goto 1414,44.340,34.840
.subzone 2797,2 >> 一路杀到黑暗深渊副本门口, 进入副本
step
.dungeon BFD
#completewith Kelris
>> 击杀|cRXP_ENEMY_娜迦|r和|cRXP_ENEMY_萨特|r. 拾取他们的|cRXP_LOOT_堕落者的脑干|r
.complete 1275,1 
.isOnQuest 1275
step
.dungeon BFD
#label manuscript
#sticky
>>在乌龟区域周围的水下打开|cRXP_PICK_铁箱|r. 拾取|cRXP_LOOT_洛迦里斯手稿|r
.complete 971,1 
.isOnQuest 971
step
.dungeon BFD
#label Thaelrid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_银色黎明守卫塞尔瑞德|r
.turnin -1198 ,, Search of Thaelrid
.accept 1200 ,, Blackfathom Villainy
step
#requires manuscript
.dungeon BFD
#completewith Kelris
>>击杀所有的|cRXP_ENEMY_暮光之锤|r. 拾取他们的|cRXP_LOOT_暮光坠饰|r
.complete 1199,1 
.isOnQuest 1199
step
#requires manuscript
.dungeon BFD
#label Kelris
>> 击杀|cRXP_ENEMY_暮光领主克尔里斯|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 1200,1 
.isOnQuest 1200
step
.dungeon BFD
>>击杀所有的|cRXP_ENEMY_暮光之锤|r. 拾取他们的|cRXP_LOOT_暮光坠饰|r
.complete 1199,1 
.isOnQuest 1199
step
.dungeon BFD
#label FinalStem
>> 击杀|cRXP_ENEMY_娜迦|r和|cRXP_ENEMY_萨特|r. 拾取他们的|cRXP_LOOT_堕落者的脑干|r
>>如果你还没有完成这个任务, 点击副本终点的祭坛传送到入口处. 副本外面的小怪也能掉落任务物品.
.complete 1275,1 
.isOnQuest 1275
step
#completewith DarnEnd
.dungeon BFD
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳希亚|r
.fly Teldrassil >> 飞往泰达希尔
.target Daelyshia
.zoneskip Teldrassil
.zoneskip Darnassus
step
#sticky
#label DarnBFD
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_银色黎明守卫玛纳杜斯|r对话
.turnin 1199 ,, Twilight Falls
.goto Darnassus,55.239,23.996 
.target Argent Guard Manados
.isQuestComplete 1199
step
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_哨兵塞尔高姆|r对话
.turnin 1200 ,, Blackfathom Villainy
.goto Darnassus,56.167,24.395 
.target Dawnwatcher Selgorm
.isQuestComplete 1200
step
.dungeon BFD
#requires DarnBFD
#label DarnEnd
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门回到鲁瑟兰村
.zoneskip Darkshore
.zoneskip Ashenvale
.subzoneskip 2797
step
.dungeon BFD
#completewith next
.goto Ashenvale,34.41,47.98,-1
.goto Teldrassil,58.399,94.016,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r和|cRXP_FRIENDLY_黛琳希亚|r
.fly Darkshore >> 飞往黑海岸
.zoneskip Darkshore
.target Daelyshia
.target Vesprystus
step
.dungeon BFD
.goto Darkshore,38.327,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈沙拉·夜语|r
.turnin 1275 ,, Researching the Corruption
.target Gershala Nightwhisper
.isQuestComplete 1275
step
.goto Darkshore,36.336,45.574,-1
.goto Ashenvale,34.41,47.98,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r和|cRXP_FRIENDLY_黛琳希亚|r
.fly Stonetalon >> 飞往石爪山脉
.target Caylais Moonfeather
.target Daelyshia
step
.goto Stonetalon Mountains,37.103,8.100
.target Keeper Albagorm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者奥巴格姆|r
.accept 1057 ,, Reclaiming the Charred Vale
step
#completewith next
.goto Stonetalon Mountains,59.52,67.15,55 >> 前往此处寻找|cRXP_FRIENDLY_加克希姆·尘链|r
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.52,67.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克希姆·尘链|r
.turnin 1074 ,, Ineptitude + Chemicals = Fun
.turnin 1077 ,, Special Delivery for Gaxim
.accept 1079 ,, Covert Ops - Alpha
.accept 1080 ,, Covert Ops - Beta
.target Gaxim Rustfizzle
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,66.09,51.34,100 >> 前往狂风峭壁
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,66.09,51.34
>> 在箱子上拾取|cRXP_LOOT_风险投资公司工程计划书|r
.complete 1079,1 
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,74.46,59.30,100 >> 前往狂风峭壁矿洞
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,74.46,59.30
>>打开|cRXP_PICK_风险投资公司文件|r. 拾取|cRXP_LOOT_风险投资公司函件|r
>>|cRXP_WARN_不要进入矿洞. |cRXP_LOOT_风险投资公司函件|r在矿洞外的一个盒子上|r
.complete 1080,1 
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.52,67.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克希姆·尘链|r
.turnin 1079 ,, Covert Ops - Alpha
.turnin 1080 ,, Covert Ops - Beta
.accept 1091 ,, Kaela's Update
.target Gaxim Rustfizzle
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.90,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·影矛|r
.turnin 1091 ,, Kaela's Update
.accept 1083 ,, Enraged Spirits
.accept 1084 ,, Wounded Ancients
.target Kaela Shadowspear
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,50.57,52.64,20,0
.goto Stonetalon Mountains,41.93,53.91,30,0
.goto Stonetalon Mountains,40.49,54.78,30,0
.goto Stonetalon Mountains,36.97,52.77,35,0
.goto Stonetalon Mountains,35.00,56.68,50 >> 前往焦炭谷. 跟随箭头走捷径
.isQuestTurnedIn 1073
step
#completewith Basilisks
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>> 击杀|cRXP_ENEMY_燃烧的劫毁者|r, |cRXP_ENEMY_燃烧的破坏者|r和|cRXP_ENEMY_游荡的焰灵|r. 拾取他们的|cRXP_LOOT_余烬|r
>> 击杀|cRXP_ENEMY_烧焦的树人|r和|cRXP_ENEMY_黑色古树|r. 拾取他们的|cRXP_LOOT_弹片|r
.complete 1083,1 
.complete 1084,1 
.mob Burning Ravager
.mob Burning Destroyer
.mob Rogue Flame Spirit
.mob Charred Ancient
.mob Blackened Ancient
.isQuestTurnedIn 1073
step
#completewith next
>> 击杀|cRXP_ENEMY_黑色石化蜥蜴|r, |cRXP_ENEMY_炭色石化蜥蜴|r和|cRXP_ENEMY_焦黑石化蜥蜴|r. 拾取他们的|cRXP_LOOT_鳞片|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>> 击杀|cRXP_ENEMY_血怒鹰身人|r, |cRXP_ENEMY_血怒伏击者|r, |cRXP_ENEMY_血怒杀戮者|r和|cRXP_ENEMY_血怒游荡者|r
.complete 1057,1 
.complete 1057,2 
.complete 1057,3 
.complete 1057,4 
.mob Bloodfury Harpy
.mob Bloodfury Ambusher
.mob Bloodfury Slayer
.mob Bloodfury Roguefeather
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
#label Basilisks
>> 击杀|cRXP_ENEMY_黑色石化蜥蜴|r, |cRXP_ENEMY_炭色石化蜥蜴|r和|cRXP_ENEMY_焦黑石化蜥蜴|r. 拾取他们的|cRXP_LOOT_鳞片|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>> 击杀|cRXP_ENEMY_燃烧的劫毁者|r, |cRXP_ENEMY_燃烧的破坏者|r和|cRXP_ENEMY_游荡的焰灵|r. 拾取他们的|cRXP_LOOT_余烬|r
>> 击杀|cRXP_ENEMY_烧焦的树人|r和|cRXP_ENEMY_黑色古树|r. 拾取他们的|cRXP_LOOT_弹片|r
.complete 1083,1 
.complete 1084,1 
.mob Burning Ravager
.mob Burning Destroyer
.mob Rogue Flame Spirit
.mob Charred Ancient
.mob Blackened Ancient
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.90,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯拉·影矛|r
.turnin 1083 ,, Enraged Spirits
.turnin 1084 ,, Wounded Ancients
.accept 1082 ,, Update for Sentinel Thenysil
.target Kaela Shadowspear
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,50.57,52.64,20,0
.goto Stonetalon Mountains,41.93,53.91,30,0
.goto Stonetalon Mountains,40.49,54.78,30,0
.goto Stonetalon Mountains,36.97,52.77,35,0
.goto Stonetalon Mountains,35.00,56.68,50 >> 前往焦炭谷, 然后前往凄凉之地. 跟随箭头走捷径
.isQuestTurnedIn 1073
step
#map Stonetalon Mountains
#completewith next
.goto Desolace,53.958,3.436
.zone Desolace >> 前往凄凉之地
step
.goto Desolace,67.38,15.54,40,0
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞特纳斯·天河|r
.fp Desolace >> 开启凄凉之地飞行点
.fly Stonetalon>> 飞往石爪山脉
.target Baritanas Skyriver
step
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者奥巴格姆|r
.turnin 1057 ,, Reclaiming the Charred Vale
.target Keeper Albagorm
.accept 1059 ,, Reclaiming the Charred Vale
step
.goto Stonetalon Mountains,36.438,7.181
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰罗伦|r
.fly Ashenvale>> 飞往灰谷
.target Teloren
step
.abandon 1077 ,, Special Delivery for Gaxim
step
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德瑞尔·速火|r
.accept 4581 ,, Kayneth Stillwind
step
.goto Ashenvale,34.89,49.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵塞恩希尔|r
.turnin 1082 ,, Update for Sentinel Thenysil
.accept 1081 ,, Reception from Tyrande
.target Sentinel Thenysil
.isQuestTurnedIn 1073
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱恩·狼行者|r
.accept 1054 ,, Culling the Threat
step
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >> 前往蓟皮村. 跟随箭头走捷径
step
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32
>> 击杀|cRXP_ENEMY_达尔·血爪|r. 拾取他的|cRXP_LOOT_颅骨|r
>>|cRXP_ENEMY_达尔·血爪|r|cRXP_WARN_在蓟皮村巡逻|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
.goto Ashenvale,27.40,63.03,70,0
.goto Ashenvale,25.27,60.68
>> 击杀|cRXP_ENEMY_伊克鲁德·玛格苏尔|r. 拾取他的|cRXP_LOOT_书|r
>>|cRXP_ENEMY_伊克鲁德·玛格苏尔|r|cRXP_WARN_会施放|r|T136221:0|t[伊克鲁德的守护者]|cRXP_WARN_这是一个5秒施法的技能可以召唤2只虚空行者. 如果可以就打断他的施法|r
>>|cRXP_WARN_如果需要就清出一条退路. 这样你就能在必要时单拉|cRXP_ENEMY_魅魔|r|r
.complete 973,1
.mob Ilkrud Magthrull
step
.goto Ashenvale,22.23,52.98
.target Sentinel Melyria Frostshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵梅丽瑞亚·霜影|r
.accept 1022 ,, The Howling Vale
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊莉亚娜|r
.accept 1021 ,, Vile Satyr! Dryads in Danger!
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
.turnin 973 ,, The Tower of Althalaxx
.accept 1140 ,, The Tower of Althalaxx
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱恩·狼行者|r
.turnin 1054 ,, Culling the Threat
.accept 1024 ,, Raene's Cleansing
.accept 1025 ,, An Aggressive Defense
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.accept 1035 ,, Fallen Sky Lake
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1024 ,, Raene's Cleansing
.target Shael'dryn
.accept 1026 ,, Raene's Cleansing
step
#completewith next
.goto Ashenvale,63.0,43.8,60,0
.goto Ashenvale,59.8,42.6,60,0
.goto Ashenvale,57.6,39.2,60,0
.goto Ashenvale,57.8,33.6,60,0
.goto Ashenvale,55.0,32.8,60,0
.goto Ashenvale,63.0,46.2,60,0
.goto Ashenvale,55.0,32.8
>> 击杀|cRXP_ENEMY_枯萎的古树|r和|cRXP_ENEMY_疯狂的古树|r. 拾取|cRXP_LOOT_木制钥匙|r
.collect 5475,1,1026,1 
.isOnQuest 1026
.mob Withered Ancient
.mob Crazed Ancient
step
.goto Ashenvale,54.416,35.397
>>打开|cRXP_PICK_旧箱子|r. 拾取|cRXP_LOOT_铁杆|r
.complete 1026,1
step
#completewith next
.goto Ashenvale,53.440,36.131,15,0
.goto Ashenvale,52.698,37.759,20 >> 此处有捷径
step
.goto Ashenvale,50.49,39.12
>>点击桌上的|cRXP_PICK_麦尔莎迪丝之书|r
.complete 1022,1
step
.goto Ashenvale,78.32,44.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安妮莉亚|r
.turnin 1021 ,, Vile Satyr! Dryads in Danger!
.target Anilia
.accept 1031 ,, The Branch of Cenarius
step
.goto Ashenvale,77.99,42.41
>> 击杀|cRXP_ENEMY_加萨里斯|r. 拾取他的|cRXP_LOOT_塞纳留斯的树枝|r
>>|cRXP_ENEMY_加萨里斯|r|cRXP_WARN_32级. 如果你没有把握就跳过此步. 他并不难处理, 不会任何技能. 确保开打前清理完周边的场地|r
.complete 1031,1
.mob Geltharis
step
.goto Ashenvale,85.276,44.720
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯尼斯·静风|r
.turnin 4581 ,, Kayneth Stillwind
.target Kayneth Stillwind
.accept 1011 ,, Forsaken Diseases
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加罗迪努斯|r
.fp Azshara>> 开启艾萨拉飞行点
.fly Ashenvale>> 飞往灰谷
.target Jarrodenus
step
.goto Ashenvale,22.23,52.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵梅丽瑞亚·霜影|r
.turnin 1022 ,, The Howling Vale
.target Sentinel Melyria Frostshadow
.accept 1037 ,, Velinde Starsong
step
.isQuestComplete 1031
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊莉亚娜|r
.turnin 1031 ,, The Branch of Cenarius
.target Illiyana
.accept 1032 ,, Satyr Slaying!
step
.isQuestTurnedIn 1031
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊莉亚娜|r
.accept 1032 ,, Satyr Slaying!
.target Illiyana
step
.abandon 1031 ,, The Branch of Cenarius
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1026 ,, Raene's Cleansing
.target Shael'dryn
.accept 1027 ,, Raene's Cleansing
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
.accept 1016 ,, Elemental Bracers
.target Sentinel Velene Starstrike
step
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>> 击杀|cRXP_ENEMY_污浊的水元素|r. 拾取他们的|cRXP_LOOT_护腕|r
>>|cRXP_WARN_|cRXP_ENEMY_污浊的水元素|r会|r|T135848:0|t[冰霜新星]|cRXP_WARN_. 如果你潜水击杀水元素, 注意你的呼吸时间|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
.use 5456 >> |cRXP_WARN_使用|r|T134943:0|t[占卜卷轴]|cRXP_WARN_制作|r|T134938:0|t[使用过的占卜卷轴]
.complete 1016,1 
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
.turnin 1016 ,, Elemental Bracers
.accept 1017 ,, Mage Summoner
.target Sentinel Velene Starstrike
step
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>> 击杀|cRXP_ENEMY_污林战士|r, |cRXP_ENEMY_污林图腾师s|r, |cRXP_ENEMY_污林巨熊怪|r和|cRXP_ENEMY_污林巢穴守卫|r
.complete 1025,4 
.complete 1025,3 
.complete 1025,2 
.complete 1025,1 
.mob Foulweald Den Watcher
.mob Foulweald Ursa
.mob Foulweald Totemic
.mob Foulweald Warrior
step
.goto Ashenvale,66.649,82.189
>>击杀|cRXP_ENEMY_沼泽兽智者|r. 拾取|cRXP_LOOT_陨落的月亮石|r
.complete 1035,1
.mob Shadethicket Oracle
step
#completewith next
>> 击杀|cRXP_ENEMY_腐烂的泥浆怪|r. |cRXP_WARN_在|cRXP_ENEMY_腐烂的泥浆怪|r死后, 会有一个|cRXP_PICK_生锈的箱子|r掉落在尸体旁. |cRXP_PICK_生锈的箱子|r并不是100%掉落|r
>>打开|cRXP_PICK_生锈的箱子|r. 拾取|cRXP_LOOT_铁质柄头|r
.complete 1027,1 
.mob Rotting Slime
step
.goto Ashenvale,75.29,72.00
>> 拾取桌子上的|cRXP_LOOT_一瓶病菌|r
>>|cRXP_WARN_注意! 有些|cRXP_ENEMY_被遗忘者|r处于|T132320:0|t[潜行]状态|r
.complete 1011,1
step
#label slimes
.goto Ashenvale,72.6,71.6,60,0
.goto Ashenvale,69.8,76.2,60,0
.goto Ashenvale,75.4,73.0,60,0
.goto Ashenvale,73.6,76.6
>> 击杀|cRXP_ENEMY_腐烂的泥浆怪|r. |cRXP_WARN_在|cRXP_ENEMY_腐烂的泥浆怪|r死后, 会有一个|cRXP_PICK_生锈的箱子|r掉落在尸体旁. |cRXP_PICK_生锈的箱子|r并不是100%掉落|r|r
>>打开|cRXP_PICK_生锈的箱子|r. 拾取|cRXP_LOOT_铁质柄头|r
.complete 1027,1 
.mob Rotting Slime
step
#requires slimes
.goto Ashenvale,69.73,86.62,0
.goto Ashenvale,69.71,86.87,50,0
.goto The Barrens,48.98,5.42,35,0
.zone The Barrens >> 前往贫瘠之地. 跟随指示以避开|cRXP_ENEMY_贫瘠之地卫兵|r
.isOnQuest 1017
step
#completewith next
.goto The Barrens,48.73,14.86,20,0
.goto The Barrens,48.53,16.51,15,0
.goto The Barrens,48.16,18.52,6,0
.goto The Barrens,47.96,18.82,5 >> 爬上鬼雾峰. 跟随指示登顶
step
.goto The Barrens,48.22,19.15
>> 击杀|cRXP_ENEMY_萨瑞鲁斯·法伯尼|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_WARN_周围的|cRXP_ENEMY_火刃氏族|r都只有10-12级|r
.complete 1017,1 
.mob Sarilus Foulborne
step
#completewith next
.goto The Barrens,48.98,20.01,20,0
.goto The Barrens,50.42,21.93,25,0
.goto The Barrens,51.60,24.87,25,0
.goto The Barrens,58.76,25.28,60,0
.goto The Barrens,63.08,37.16,100 >> 前往棘齿城. 跟随指示以避开|cRXP_ENEMY_贫瘠之地卫兵|r
step
#completewith next
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fp Ratchet >> 开启棘齿城 飞行点
.fly Azshara >> 飞往艾萨拉
.target Bragok
step
.goto Ashenvale,85.276,44.720
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯尼斯·静风|r
.turnin 1011 ,, Forsaken Diseases
step
.isOnQuest 1032
#completewith next
>> 击杀|cRXP_ENEMY_萨特|r. 拾取他们的|cRXP_LOOT_角|r
>>|cRXP_WARN_不要偏离路线去完成这个任务|r
.complete 1032,1 
step
.goto Ashenvale,81.59,48.57
>>点击萨提纳尔内的|cRXP_PICK_禁锢法阵|r
.complete 1140,2 

step
.isOnQuest 1032
#completewith next
>> 击杀|cRXP_ENEMY_萨特|r. 拾取他们的|cRXP_LOOT_角|r
.complete 1032,1 
step
.goto Ashenvale,78.776,46.765,110,0
.goto Ashenvale,73.835,47.120,100,0
.goto Ashenvale,66.622,56.998
>>点击夜道谷的|cRXP_PICK_禁锢法阵|r
>>|cRXP_WARN_注意|T132320:0|t[潜行]的|cRXP_ENEMY_魔草巡影者|r|r
.complete 1140,1 
step
.isOnQuest 1032
.goto Ashenvale,81.42,49.87
>> 击杀|cRXP_ENEMY_萨特|r. 拾取他们的|cRXP_LOOT_角|r
.complete 1032,1 
.mob Felmusk Felsworn
.mob Felmusk Rogue
.mob Felmusk Satyr
.mob Felmusk Shadowstalker
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1027 ,, Raene's Cleansing
.target Shael'dryn
.accept 1028 ,, Raene's Cleansing
step
#completewith next
.goto Ashenvale,56.993,51.981,20,0
.goto Ashenvale,57.369,50.953,20 >> 前往|cRXP_PICK_隐蔽的神龛|r处
step
.goto Ashenvale,56.320,49.188
>>点击|cRXP_PICK_隐蔽的神龛|r
.turnin 1028 ,, Raene's Cleansing
.accept 1055 ,, Raene's Cleansing
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1055 ,, Raene's Cleansing
.target Shael'dryn
.accept 1029 ,, Raene's Cleansing
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.turnin 1035 ,, Fallen Sky Lake
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱恩·狼行者|r
.turnin 1025 ,, An Aggressive Defense
.turnin 1029 ,, Raene's Cleansing
.target Raene Wolfrunner
.accept 1030 ,, Raene's Cleansing
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
.turnin 1017 ,, Mage Summoner
>>|cRXP_WARN_此任务将会奖励|r|T134754:0|t[月神之光]
>>|T134754:0|t[月神之光]|cRXP_WARN_- 10秒无敌.|r
>>|cRXP_WARN_这是一个一次性消耗品. 确保只在紧急情况下使用|r
.target Sentinel Velene Starstrike
step
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> 前往|cRXP_FRIENDLY_库罗格|r处
.isOnQuest 1030
step
#completewith next
.cast 6405 >> |cRXP_WARN_使用|r|T135463:0|t[达图尔的变形魔棒]|cRXP_WARN_变成熊怪|r
.use 5462
.isOnQuest 1030
step
.goto Ashenvale,50.85,75.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库罗格|r
.use 5462 >> |cRXP_WARN_你必须使用|r|T135463:0|t[达图尔的变形魔棒]|cRXP_WARN_变成熊怪才能对话|r|cRXP_FRIENDLY_库罗格|r
.turnin 1030 ,, Raene's Cleansing
.accept 1045 ,, Raene's Cleansing
.target Krolg
step
.goto Ashenvale,54.210,74.082,50,0
.goto Ashenvale,54.747,79.618
>> 击杀|cRXP_ENEMY_血牙守卫|r和|cRXP_ENEMY_莱恩·血牙|r. 拾取他的|cFF00BCD4颅骨|r
.complete 1045,2 
.complete 1045,1 
.collect 5388,1,1046,1
.mob Ran Bloodtooth
.mob Bloodtooth Guard
step
#completewith krolg1
#label tkrolg1
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >> 前往|cRXP_FRIENDLY_库罗格|r处
.isOnQuest 1045
step
#requires tkrolg1
#completewith next
.cast 6405 >> |cRXP_WARN_使用|r|T135463:0|t[达图尔的变形魔棒]|cRXP_WARN_变成熊怪|r
.use 5462
.isOnQuest 1045
step
#label krolg1
.goto Ashenvale,50.84,75.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_库罗格|r
.use 5462 >> |cRXP_WARN_你必须使用|r|T135463:0|t[达图尔的变形魔棒]|cRXP_WARN_变成熊怪才能对话|r|cRXP_FRIENDLY_库罗格|r
.turnin 1045 ,, Raene's Cleansing
.accept 1046 ,, Raene's Cleansing
.target Krolg
step
#completewith next
.goto Ashenvale,36.61,49.58,30 >> 前往阿斯特兰纳的|cRXP_FRIENDLY_莱恩·狼行者|r处
>>|cRXP_WARN_如果你交还莱恩的净化任务你将获得3,050经验, 但是你将永久失去|r|T135463:0|t[达图尔的变形魔棒]
>>|cRXP_WARN_如果你希望保留它就放弃莱恩的净化, |r|T135463:0|t[达图尔的变形魔棒]|cRXP_WARN_就会一直留在包里|r
.isOnQuest 1046
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱恩·狼行者|r
.turnin 1046 ,, Raene's Cleansing
.target Raene Wolfrunner
.isOnQuest 1046
step
.isQuestComplete 1032
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊莉亚娜|r
.turnin 1032 ,, Satyr Slaying!
step
.isQuestTurnedIn 2078 
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
.turnin 1140 ,, The Tower of Althalaxx
step
.isQuestAvailable 2078 
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_净化者德尔格伦|r
.turnin 1140 ,, The Tower of Althalaxx
.accept 1167 ,, The Tower of Althalaxx << !Warlock !Druid
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳希亚|r
.fly Teldrassil>> 飞往泰达希尔
.target Daelyshia
step
#completewith darnassus
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃丽莎·仲马|r
.trainer >> 学习传送: 达纳苏斯
.target Elissa Dumas
.xp <30,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
.trainer >> 学习职业技能
.target Jandria
.xp <30,1
step
.goto Darnassus,39.72,92.68,10,0
.goto Darnassus,42.97,83.90,15,0
.goto Darnassus,39.10,81.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰兰德·语风|r
.turnin 1081 ,, Reception from Tyrande
.target Tyrande Whisperwind
.isQuestTurnedIn 1073
step << Warrior
.goto Darnassus,58.72,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿雷亚斯塔·刃咏|r
.trainer >> 学习职业技能
.target Arias'ta Bladesinger
.xp <30,1
step
#label darnassus
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞恩提尔·刃纹|r
.turnin 1037 ,, Velinde Starsong
.target Thyn'tel Bladeweaver
.accept 1038 ,, Velinde's Effects
step
.goto Darnassus,56.05,79.21,10,0
.goto Darnassus,62.287,83.289
>>前往哨兵营地并穿过天桥
>>打开|cRXP_PICK_维琳德的柜子|r. 拾取|cRXP_LOOT_维林德的日记|r
.complete 1038,1 
step
#era
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞恩提尔·刃纹|r
.turnin 1038 ,, Velinde's Effects
.target Thyn'tel Bladeweaver
.accept 1039 ,, The Barrens Port
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r和|cRXP_FRIENDLY_伊迪瑞娜|r
.bankdeposit 2784 >>将以下物品存入银行:
>>|T134187:0|t[麝鼠根] 
.target Garryeth
.target Lairn
.target Idriana
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德纳萨里安|r
.trainer >> 学习职业技能
.target Denatharion
.xp <30,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
.trainer >> 学习职业技能
.target Jocaste
.xp <30,1
step << Hunter
.goto Darnassus,43.834,9.505,10,0
.goto Darnassus,42.471,9.157
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与匝道上的|cRXP_FRIENDLY_西尔瓦莉雅|r对话
.trainer >> 学习宠物技能
.target Silvaria
.xp <30,1
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
.trainer >> 学习职业技能
.xp <30,1
.target Syurna
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门回到鲁瑟兰村
.zoneskip Darnassus,1
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Darkshore >> 飞往黑海岸
.zoneskip Darkshore
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
.goto Winterspring,4.82,27.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴苏尔·影击|r
.turnin 1167 ,, The Tower of Althalaxx
>>|cRXP_WARN_跳过后续任务. 它相对来说比较困难(你将不得不面对3个带虚空行者的远程怪)|r
.target Balthule Shadowstrike
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔卡克·旋杆|r
.accept 2098 ,, Gyromast's Retrieval
>>|cRXP_WARN_这是一个低等级任务但是会奖励5瓶|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_. 你在之后的任务会用到它们|r
.target Gelkak Gyromast
step << !Warlock !Druid
#completewith next
.isQuestAvailable 2078
.goto Darkshore,56.10,16.88,0
>> 击杀|cRXP_ENEMY_狂暴暗礁蟹|r和|cRXP_ENEMY_硬壳潮行蟹|r. 拾取|cRXP_LOOT_基尔卡克钥匙的尾部|r
>>|cRXP_WARN_这是一个低等级任务但是会奖励5瓶|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_. 你在之后的任务会用到它们|r
.complete 2098,3 
.mob Raging Reef Crawler
.mob Encrusted Tide Crawler
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darkshore,54.93,12.19
>> 击杀|cRXP_ENEMY_灰雾神谕者|r和|cRXP_ENEMY_灰雾猎潮者|r. 拾取|cRXP_LOOT_基尔卡克钥匙的中部|r
>>|cRXP_WARN_这是一个低等级任务但是会奖励5瓶|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_. 你在之后的任务会用到它们|r
.complete 2098,2 
.mob Greymist Oracle
.mob Greymist Tidehunter
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darkshore,55.59,16.98,45,0
.goto Darkshore,53.76,18.96,45,0
.goto Darkshore,51.34,22.00,45,0
.goto Darkshore,56.63,12.08
>> 击杀|cRXP_ENEMY_狂暴暗礁蟹|r和|cRXP_ENEMY_硬壳潮行蟹|r. 拾取|cRXP_LOOT_基尔卡克钥匙的尾部|r
>>|cRXP_WARN_这是一个低等级任务但是会奖励5瓶|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_. 你在之后的任务会用到它们|r
.complete 2098,3 
.mob Raging Reef Crawler
.mob Encrusted Tide Crawler
step << !Warlock !Druid
#sticky
.isQuestAvailable 2078
#label foreststriders
.goto Darkshore,59.29,13.22,55,0
.goto Darkshore,61.40,9.40,50,0
.goto Darkshore,61.51,12.66,50,0
.goto Darkshore,61.24,15.38,50,0
.goto Darkshore,61.40,9.40
>> 击杀|cRXP_ENEMY_凶猛的森林陆行鸟|r. 拾取|cRXP_LOOT_基尔卡克钥匙的头部|r
>>|cRXP_WARN_这是一个低等级任务但是会奖励5瓶|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_. 你在之后的任务会用到它们|r
.complete 2098,1 
.mob Giant Foreststrider
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
#requires foreststriders
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔卡克·旋杆|r
.turnin 2098 ,, Gyromast's Retrieval
.accept 2078 ,, Gyromast's Revenge
.target Gelkak Gyromast
step << !Warlock !Druid
#map Darkshore
.isOnQuest 2078
.goto Winterspring,5.59,21.09,10,0
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_机械打手4100型|r以开启护送
>>|cRXP_WARN_这是一个低等级任务但是会奖励5瓶|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_. 你在之后的任务会用到它们|r
>> 护送|cRXP_FRIENDLY_机械打手4100型|r到|cRXP_FRIENDLY_基尔卡克·旋杆|r处
>> 一旦变成敌对状态就击杀|cRXP_ENEMY_机械打手4100型|r
.complete 2078,1
.skipgossip
.mob The Threshwackonator 4100
step << !Warlock !Druid
#map Darkshore
.isOnQuest 2078
.goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基尔卡克·旋杆|r
.turnin 2078 ,, Gyromast's Revenge
.isQuestComplete 2078
step << !Warlock !Druid
.destroy 7442 >> 摧毁基尔卡克的钥匙
step
.hs >> 炉石回米奈希尔港
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 20-30 (汉化By猎風)
<< Alliance
#classic
#era
#name 29-30 湿地/希尔斯布莱德丘陵
#next 30-32 暮色森林
step
.dungeon BFD
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.goto Wetlands,9.49,59.69
.fly Ironforge>> 飞往铁炉堡
.target Shellei Brondir
step
.dungeon BFD
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛利·硬骨|r
.turnin 971 ,, Knowledge in the Deeps
.target Gerrig Bonegrip
.isQuestComplete 971
step
.dungeon BFD
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands>> 飞往湿地
.zoneskip Wetlands
.target Gryth Thurden
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副菲兹莫斯|r
.target First Mate Fitzsimmons
.accept 290 ,, Lifting the Curse
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹姆士·哈洛伦|r
.accept 471 ,, Apprentice's Duties
.target James Halloran
step
.goto Wetlands,10.84,55.89
.target Harlo Barnaby
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈尔罗·巴纳比|r
.accept 472 ,, Fall of Dun Modr
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_斯托菲队长|r对话
.target Captain Stoutfist
.accept 465 ,, Nek'rosh's Gambit
step
.goto Wetlands,37.22,43.89,45,0
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫尔·铁衣|r
.turnin 294 ,, Ormer's Revenge
.accept 295 ,, Ormer's Revenge
.target Ormer Ironbraid
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员维尔加|r
.accept 299 ,, Uncovering the Past
.goto Wetlands,38.809,52.386
.target Prospector Whelgar
step
.isOnQuest 943
#completewith FragmentDone
>> 击杀|cRXP_ENEMY_杂斑镰爪龙|r和|cRXP_ENEMY_杂斑刺喉龙|r. 拾取|cRXP_LOOT_雷鲁之石|r
.complete 943,1 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
#completewith Sarltooth
.goto Wetlands,34.71,49.95,0
>>打开|cRXP_PICK_古代遗物|r和|cRXP_PICK_松软的土壤|r. 拾取|cRXP_LOOT_碎片|r
>>|cRXP_WARN_|cRXP_LOOT_碎片|r在挖掘场随机刷新|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>> 击杀|cRXP_ENEMY_杂斑镰爪龙|r和|cRXP_ENEMY_杂斑刺喉龙|r
.complete 295,1 
.complete 295,2 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫尔·铁衣|r
.turnin 295 ,, Ormer's Revenge
.accept 296 ,, Ormer's Revenge
.target Ormer Ironbraid
step
#label Sarltooth
.goto Wetlands,31.410,49.518,30,0
.goto Wetlands,33.25,51.50
>> 击杀|cRXP_ENEMY_萨尔图斯|r. 拾取他的|cRXP_LOOT_爪子|r
.complete 296,1 
.unitscan Sarltooth
step
#label FragmentDone
.goto Wetlands,34.32,51.79,40,0
.goto Wetlands,35.73,49.06,40,0
.goto Wetlands,33.86,46.85,40,0
.goto Wetlands,34.91,44.22,40,0
.goto Wetlands,36.62,42.16
>>打开|cRXP_PICK_古代遗物|r和|cRXP_PICK_松软的土壤|r. 拾取|cRXP_LOOT_碎片|r
>>|cRXP_WARN_|cRXP_LOOT_碎片|r在挖掘场随机刷新, 包括|cRXP_ENEMY_萨尔图斯|r那边|r
>>|cRXP_WARN_地图上标记的大树后面也要查看|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.isOnQuest 943
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>> 击杀|cRXP_ENEMY_杂斑镰爪龙|r和|cRXP_ENEMY_杂斑刺喉龙|r. 拾取|cRXP_LOOT_雷鲁之石|r
.complete 943,1 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥莫尔·铁衣|r和|cRXP_FRIENDLY_勘察员维尔加|r
.turnin 296 ,, Ormer's Revenge
.goto Wetlands,38.17,50.88
.turnin 299 ,, Uncovering the Past
.goto Wetlands,38.809,52.386
.target Ormer Ironbraid
.target Prospector Whelgar
step
#completewith Halyndor
.goto Wetlands,18.0,27.0,0
>> 击杀|cRXP_ENEMY_巨型湿地鳄鱼|r. 拾取他们的|cRXP_LOOT_皮|r
.complete 471,1 
.mob Giant Wetlands Crocolis
step
#completewith next
>> 击杀|cRXP_ENEMY_沼地爬行者|r
>>|cRXP_ENEMY_沼地爬行者|r|cRXP_WARN_处于|r|T132320:0|t[潜行]|cRXP_WARN_状态沿着河流分布|r
.complete 275,1 
.mob Fen Creeper
step
#label Halyndor
.goto Wetlands,15.984,23.111,25,0
.goto Wetlands,15.44,23.60
>>沿着桅杆爬上船
>> 击杀|cRXP_ENEMY_哈林多尔船长|r. 拾取|cRXP_LOOT_无畏号的保险箱钥匙|r
.complete 290,1 
.mob Captain Halyndor
step
.goto Wetlands,14.292,23.609,15,0
.goto Wetlands,14.381,24.047
>>从船身一侧的大洞进入
>> 点击地上的|cRXP_PICK_保险箱|r
.turnin 290 ,, Lifting the Curse
.accept 292 ,, The Eye of Paleth
step
#completewith next
>> 击杀|cRXP_ENEMY_沼地爬行者|r
>>|cRXP_ENEMY_沼地爬行者|r|cRXP_WARN_处于|r|T132320:0|t[潜行]|cRXP_WARN_状态沿着河流分布|r
.complete 275,1 
.mob Fen Creeper
step
.goto Wetlands,18.0,27.0,70,0
.goto Wetlands,22.8,21.8,70,0
.goto Wetlands,28.0,18.8,70,0
.goto Wetlands,18.0,27.0
>> 击杀|cRXP_ENEMY_巨型湿地鳄鱼|r. 拾取他们的|cRXP_LOOT_皮|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,27.6,37.2,50,0
.goto Wetlands,40.8,32.8,50,0
.goto Wetlands,46.6,29.6,50,0
.goto Wetlands,48.8,37.2,50,0
.goto Wetlands,54.8,37.8,50,0
.goto Wetlands,27.6,37.2,0
.goto Wetlands,40.8,32.8,0
.goto Wetlands,46.6,29.6,0
.goto Wetlands,48.8,37.2,0
.goto Wetlands,54.8,37.8,0
.goto Wetlands,20.72,28.74
>> 击杀|cRXP_ENEMY_沼地爬行者|r
>>|cRXP_ENEMY_沼地爬行者|r|cRXP_WARN_处于|r|T132320:0|t[潜行]|cRXP_WARN_状态沿着河流分布|r
.complete 275,1 
.mob Fen Creeper
step
.goto Wetlands,47.45,47.01
>>点击|cRXP_PICK_龙喉投石车|r
.turnin 465 ,, Nek'rosh's Gambit
step
.group 3
.goto Wetlands,47.45,47.01
>>点击|cRXP_PICK_龙喉投石车|r
.accept 474 ,, Defeat Nek'rosh
step
.group 3
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>> 击杀|cRXP_ENEMY_纳克罗什酋长|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_WARN_通过使用|r|T136186:0|t[火焰之雨]|cRXP_WARN_你可以单拉纳克罗什酋长|r << Warlock
>>|cRXP_WARN_通过使用|r|T135857:0|t[暴风雪]|cRXP_WARN_你可以单拉纳克罗什酋长|r << Mage
>>|cRXP_ENEMY_纳克罗什酋长|r|cRXP_WARN_吃控制|r
>>|cRXP_ENEMY_纳克罗什酋长|r|cRXP_WARN_能被|r|T136183:0|t[恐惧] << Warlock/Priest
>>|cRXP_ENEMY_纳克罗什酋长|r|cRXP_WARN_免疫火焰伤害|r << Mage/Warlock
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://www.twitch.tv/videos/669042748?t=02h57m08s >>|cRXP_WARN_点击此处查看视频指导|r << Warlock
.link https://www.twitch.tv/videos/1219244561?t=10h00m16s >>|cRXP_WARN_点击此处查看视频指导|r << Hunter
step
.isQuestComplete 275
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.goto Wetlands,56.37,40.40
.turnin 275 ,, Blisters on The Land
.target Rethiel the Greenwarden
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱德·长须|r和|cRXP_FRIENDLY_拉格·加玛森|r
.turnin 472 ,, Fall of Dun Modr
.goto Wetlands,49.803,18.257
.accept 631 ,, The Thandol Span
.goto Wetlands,49.908,18.233
.target Longbraid the Grim
.target Rhag Garmason
step
.group 3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫特雷·加玛森|r和|cRXP_FRIENDLY_布莱德·长须|r
.accept 303 ,, The Dark Iron War
.goto Wetlands,49.665,18.231
.accept 304 ,, A Grim Task
.goto Wetlands,49.803,18.257
.target Motley Garmason
.target Longbraid the Grim
step
.group 3
#completewith next
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>> 击杀|cRXP_ENEMY_黑铁矮人|r, |cRXP_ENEMY_黑铁隧道工|r, |cRXP_ENEMY_黑铁破坏者|r和|cRXP_ENEMY_黑铁爆破兵|r
>>|cRXP_ENEMY_黑铁破坏者|r|cRXP_WARN_死亡时会施放|r|T135826:0|t[工兵爆破]|cRXP_WARN_造成近距离火焰伤害|r
>>|cRXP_ENEMY_黑铁爆破兵|r|cRXP_WARN_会在远距离持续丢|r|T135826:0|t[炸弹]
.complete 303,1 
.complete 303,2 
.complete 303,3 
.complete 303,4 
.mob Dark Iron Dwarf
.mob Dark Iron Tunneler
.mob Dark Iron Saboteur
.mob Dark Iron Demolitionist
step
.group 3
.goto Wetlands,62.48,28.41
>> 击杀|cRXP_ENEMY_邪恶的巴尔加拉斯|r. 拾取他的|cRXP_LOOT_耳朵|r
.complete 304,1 
.mob Balgaras the Foul
step
.group 3
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>> 击杀|cRXP_ENEMY_黑铁矮人|r, |cRXP_ENEMY_黑铁隧道工|r, |cRXP_ENEMY_黑铁破坏者|r和|cRXP_ENEMY_黑铁爆破兵|r
>>|cRXP_ENEMY_黑铁破坏者|r|cRXP_WARN_死亡时会施放|r|T135826:0|t[工兵爆破]|cRXP_WARN_造成近距离火焰伤害|r
>>|cRXP_ENEMY_黑铁爆破兵|r|cRXP_WARN_会在远距离持续丢|r|T135826:0|t[炸弹]
.complete 303,1 
.complete 303,2 
.complete 303,3 
.complete 303,4 
.mob Dark Iron Dwarf
.mob Dark Iron Tunneler
.mob Dark Iron Saboteur
.mob Dark Iron Demolitionist
step
.group
.goto Wetlands,49.665,18.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫特雷·加玛森|r
.turnin 303 ,, The Dark Iron War
.target Motley Garmason
.isQuestComplete 303
step
.group
.goto Wetlands,49.803,18.257
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱德·长须|r
.turnin 304 ,, A Grim Task
.target Longbraid the Grim
.isQuestComplete 304
step
.goto Wetlands,51.481,8.111,15,0
.goto Wetlands,51.115,8.156,15,0
.goto Wetlands,51.287,7.953
>>点击|cRXP_PICK_伊贝尼瑟的尸体|r
>>|cRXP_WARN_在走下旋转楼梯前确保自己满血. 下面有2个精英|cRXP_ENEMY_黑铁破坏者|r. 当你下面并走过后群控他们. 交了任务后再跑出去|r
.turnin 631 ,, The Thandol Span
.accept 632 ,, The Thandol Span
.link https://www.youtube.com/watch?v=Wy1mOqMR-A4 >>|cRXP_WARN_点击此处查看视频指导|r
step
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格·加玛森|r
.turnin 632 ,, The Thandol Span
.accept 633 ,, The Thandol Span
.target Rhag Garmason
step
.abandon 303 ,, The Dark Iron War
step
.abandon 304 ,, A Grim Task
step
.goto Arathi Highlands,43.240,92.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_醉鬼麦克里尔|r
>>|cRXP_WARN_先跳到看不见的锁链上, 然后再跳到大桥破梁上. 所有职业都能完成这个操作. 如果你做不到就跳过这步|r
.accept 647 ,, MacKreel's Moonshine
.target Foggy MacKreel
.link https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_点击此处查看视频指导|r
step
.goto Arathi Highlands,44.28,92.877
>> 潜入水中
>>打开|cRXP_PICK_浸水的信件|r. 拾取|T133469:0|t[|cRXP_LOOT_浸水的信封|r]
>>|cRXP_WARN_使用|T133469:0|t[|cRXP_LOOT_浸水的信封|r]并接受任务|r
.collect 4433,1,637
.use 4433
.accept 637 ,, Sully Balloo's Letter
step
#completewith PleaTurnin
.goto Arathi Highlands,52.5,90.4,30 >>向东游找到坡道
step
.goto Arathi Highlands,48.789,88.058
>>点击|cRXP_PICK_爆炸品|r
.complete 633,1 
step
#label PleaTurnin
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉格·加玛森|r
.turnin 633 ,, The Thandol Span
.accept 634 ,, Plea To The Alliance
.target Rhag Garmason
step
#completewith next
.goto Arathi Highlands,45.83,47.55,150 >> 前往避难谷
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.goto Arathi Highlands,45.83,47.55
.turnin 634 ,, Plea To The Alliance
.target Captain Nials
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r
.goto Arathi Highlands,45.73,46.09
.fp Arathi >> 开启阿拉希高地飞行点
.target Cedrik Prose
step << skip
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德尼布·沃克|r
.goto Arathi Highlands,27.0,58.8,0
.vendor >>如果你需要升级急救就去激流堡购买所有3种急救书
.target Deneb Walker
step 
>>前往南海镇旅馆的地下室. 如果限时任务失败了就放弃该任务并跳过这步
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布鲁米·比格尔|r
.turnin 647 ,, MacKreel's Moonshine
.target Brewmeister Bilger
step
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fp Southshore >> 开启南海镇飞行点
.target Darla Harris
step << Hunter
#era
#completewith end
.xp 29.55 >> 做南海镇鱼人任务或者刷海龟肉直到你29级多55%经验
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯雷|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> 把你的宠物存入兽栏. 你很快会抓一只|cRXP_ENEMY_老食苔蛛|r
.target Wesley
step << Hunter
.goto Hillsbrad Foothills,56.6,53.8
>>|cRXP_WARN_对|cRXP_ENEMY_老食苔蛛|r施放|r|T132164:0|t[驯服野兽]
.train 17264 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132278:0|t[撕咬 (等级4)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.unitscan Elder Moss Creeper
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.trainer >> 学习职业技能
.target Loganaar
step
#label end
#completewith next
.hs >>炉石回米奈希尔港
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.dungeon Gnomer
#completewith wend
#label gnomer1
.goto Dun Morogh,24.2,39.1,0
+开始寻找诺莫瑞根的副本队伍
.subzoneskip 133
.subzoneskip 721,2
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 292 ,, The Eye of Paleth
.accept 293 ,, Cleansing the Eye
.target Glorin Steelbrow
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈罗林·钢眉|r
.accept 321 ,, Lightforge Iron
.target Glorin Steelbrow
.isQuestTurnedIn 270
step
#completewith next
.goto Wetlands,10.368,61.016,8 >> 上楼找|cRXP_FRIENDLY_考古学家弗拉冈特|r
step
.isQuestTurnedIn 942
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_考古学家弗拉冈特|r
.turnin 943 ,, The Absent Minded Prospector
.target Archaeologist Flagongut
step
>>点击|cRXP_PICK_浸水的箱子|r
.goto Wetlands,12.10,64.19
.turnin 321 ,, Lightforge Iron
.accept 324 ,, The Lost Ingots
.isQuestTurnedIn 270
step
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>> 击杀|cRXP_ENEMY_蓝鳃劫掠者|r. 拾取|cRXP_LOOT_光铸铁锭|r
.complete 324,1 
.mob Bluegill Raider
.isQuestTurnedIn 270
step << Hunter
.goto Wetlands,9.54,69.70
.xp 30-15000 >>一直刷怪到你离30级差15000经验
step
.goto Wetlands,8.54,55.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹姆士·哈洛伦|r
.turnin 471 ,, Apprentice's Duties
.target James Halloran
step
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯托菲队长|r
.goto Wetlands,9.86,57.48
.turnin 474 ,, Defeat Nek'rosh
.target Captain Stoutfist
.group
step
.goto Wetlands,10.58,60.59
.abandon 474 ,, Defeat Nek'rosh
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 324 ,, The Lost Ingots
.accept 322 ,, Blessed Arm
.target Glorin Steelbrow
.isQuestTurnedIn 270
step << Mage
.zone Ironforge >> 传送到铁炉堡
.itemcount 17031,1 
step
#label wend
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.goto Wetlands,9.49,59.70
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
.zoneskip Ironforge
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 30-32 暮色森林
#next 32-33 希尔斯布莱德丘陵/阿拉希高地 I
step
.dungeon Gnomer
#sticky
#label gnomer1
.goto Dun Morogh,24.2,39.1,0
+开始寻找诺莫瑞根的副本队伍
.subzoneskip 133
.subzoneskip 721,2
step << !Druid !Warrior !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> 学习职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Mage
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_金妮·长莓|r
.vendor >> |cRXP_BUY_购买3个|r|T134419:0|t[传送符文]
.collect 17031,3 
.target Ginny Longberry
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的|r|T136220:0|t[魅魔]|cRXP_BUY_或者|r|T136221:0|t[虚空行者]|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Priest
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t下楼与|cRXP_FRIENDLY_哈瑞克·石鼓|r对话
.goto Ironforge,22.837,17.094,8,0
.goto Ironforge,21.131,17.276,5,0
.goto Ironforge,23.135,15.936
>>|cRXP_BUY_如果比你身上的好就|r|cRXP_BUY_购买|r|T135466:0|t[致命魔杖]
.collect 5347,1 
.target Harick Boulderdrum
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·巴鲁|r
.turnin 637 ,, Sully Balloo's Letter
.timer 17,Sully Balloo's Letter RP
.target Sara Balloo
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨拉·巴鲁|r
.accept 683 ,, Sara Balloo's Plea
.target Sara Balloo
step
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦格尼·铜须国王|r
.turnin 683 ,, Sara Balloo's Plea
.accept 686 ,, A King's Tribute
.target King Magni Bronzebeard
step
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大石匠玛布勒斯坦|r
.turnin 686 ,, A King's Tribute
.accept 689 ,, A King's Tribute
.target Grand Mason Marblesten
step << Hunter
.goto Ironforge,61.442,88.232,15,0
.goto Ironforge,61.549,89.432
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t下楼与|cRXP_FRIENDLY_萨古斯·雷拳|r对话
>>|cRXP_BUY_购买|r|T134402:0|t[|cRXP_FRIENDLY_重型箭袋|r]
.collect 7371,1
.target Thalgus Thunderfist
step
.goto Ironforge,72.74,94.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员比罗·长须|r
.accept 1179 ,, The Brassbolts Brothers
.target Pilot Longbeard
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> 学习职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝莉亚·雷岩|r
.goto Ironforge,70.856,85.839
.trainer >> 学习宠物技能
>>|cRXP_WARN_确保你的宠物已有最高的冰霜/自然抗性|r
.target Belia Thundergranite
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺恩|r, |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大技师卡斯派普|r和|cRXP_FRIENDLY_科罗莫特·钢尺|r
.accept 2927 ,, The Day After
.goto Ironforge,69.182,50.556
.turnin -2923 ,, Tinkmaster Overspark
.accept 2922 ,, Save Techbot's Brain!
.goto Ironforge,69.540,50.325
.accept 2929 ,, The Grand Betrayal
.goto Ironforge,68.743,48.969
.accept 2930 ,, Data Rescue
.goto Ironforge,69.823,48.101
.accept 2924 ,, Essential Artificials
.goto Ironforge,67.925,46.101
.target Gnoarn
.target Tinkmaster Overspark
.target High Tinker Mekkatorque
.target Master Mechanic Castpipe
.target Klockmort Spannerspan
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板洛雷·火酒|r
.goto Ironforge,18.10,51.60
.home >> 绑定炉石到铁炉堡
.target Innkeeper Firebrew
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>> 离开铁炉堡
step
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥齐·电环|r
.turnin 2927 ,, The Day After
.accept 2926 ,, Gnogaine
.target Ozzie Togglevolt

step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >> 前往诺莫瑞根
step
.dungeon Gnomer
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
.use 9283 >>|cRXP_WARN_对|cRXP_ENEMY_辐射入侵者|r或者|r|cRXP_ENEMY_辐射掠取者|r|cRXP_WARN_使用|r|T132788:0|t[空铅瓶]
>>|cRXP_WARN_在使用空铅瓶时, |cRXP_ENEMY_辐射入侵者|r和|cRXP_ENEMY_辐射掠取者|r必须活着|r
>>|cRXP_WARN_此任务在副本外完成|r
.complete 2926,1 
.mob Irradiated Invader
.mob Irradiated Pillager
.isOnQuest 2926
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,46.005,48.637,40 >> 前往卡拉诺斯找|cRXP_FRIENDLY_奥齐·电环|r
>>|cRXP_WARN_你进入副本后将接到后续|r
.isOnQuest 2926
step
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥齐·电环|r
.turnin 2926 ,, Gnogaine
.target Ozzie Togglevolt
.isQuestComplete 2926
step
.dungeon Gnomer
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥齐·电环|r
.accept 2962 ,, The Only Cure is More Green Glow
.target Ozzie Togglevolt
.isQuestTurnedIn 2926
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >> 前往诺莫瑞根
.isOnQuest 2962
step
.dungeon Gnomer
.goto 1415,43.37,53.11,70,0
.goto 1415,43.10,52.81
>> 击杀|cRXP_ENEMY_穴居人|r和|cRXP_ENEMY_侏儒|r. 拾取|T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r]
.collect 9279,1,2930,1,1 
>> 击杀|cRXP_ENEMY_尖端机器人|r. 拾取他的|cRXP_LOOT_存储器核心|r
>>|cRXP_WARN_此任务在副本外完成|r
.complete 2922,1 
.mob Techbot
.isOnQuest 2922
step
.dungeon Gnomer
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
>> 击杀|cRXP_ENEMY_穴居人|r和|cRXP_ENEMY_侏儒|r. 拾取|T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r]
.collect 9279,1 
>>|cRXP_WARN_此任务在副本外完成|r
.isOnQuest 2930
step
.dungeon Gnomer
.goto 1415,43.364,52.892,-1
.goto 1415,43.411,52.898,-1
.goto 1415,43.402,52.672,-1
.goto 1415,43.430,52.675,-1
>>|cRXP_WARN_在|r|cRXP_PICK_矩阵式打孔计算机3005-A|r|cRXP_WARN_处使用|r|T133215:0|t[|cRXP_LOOT_白色穿孔卡片|r]
>>|cRXP_WARN_此任务在副本外完成|r
.collect 9280,1,2930,1 
.itemcount 9279,1 
.skipgossip
.isOnQuest 2930

step
.dungeon Gnomer
.goto 1415,43.17,53.36,40,0
.goto 1415,42.78,53.81
.subzone 721,2 >> 进入诺莫瑞根副本
step
.dungeon Gnomer
#completewith Thermaplugg
>>击杀所有|cRXP_ENEMY_诺莫瑞根小怪|r. 拾取他们的|cRXP_LOOT_机械内胆|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
>>|cRXP_WARN_在|r|cRXP_PICK_矩阵式打孔计算机3005-B|r|cRXP_WARN_处使用|r|T133215:0|t[|cRXP_LOOT_黄色穿孔卡片|r]
>>这种看起来像控制台的机器位于底层的侏儒安全区内, 就在有软泥怪的大圆环房间旁边
.collect 9282,1,2930,1 
.itemcount 9280,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克努比|r
>>|cRXP_WARN_这将开启护送任务. |cRXP_FRIENDLY_克努比|r随机刷新在宿舍区, 就在侏儒安全区的外面|r
.accept 2904 ,, A Fine Mess
.unitscan Kernobee
step
.dungeon Gnomer
>> 护送|cRXP_FRIENDLY_克努比|r回到副本入口处
.complete 2904,1 
.isOnQuest 2904
step
.dungeon Gnomer
.use 9364 >>|cRXP_WARN_对|cRXP_ENEMY_辐射泥浆怪|r, |cRXP_ENEMY_辐射潜伏者|r或者|r|cRXP_ENEMY_辐射水元素|r|cRXP_WARN_使用|r|T132788:0|t[沉重的铅瓶]
>>|cRXP_WARN_当你使用铅瓶时, |cRXP_ENEMY_辐射泥浆怪|r, |cRXP_ENEMY_辐射潜伏者|r和|cRXP_ENEMY_辐射水元素|r必须活着|r
>>|cRXP_WARN_注意: 你必须在获得|r|T136006:0|t[高强度辐射尘]|cRXP_WARN_后的2小时内提交任务|r
.complete 2962,1 
.mob Irradiated Slime
.mob Irradiated Lurker
.mob Irradiated Horror
.isOnQuest 2962
step
.dungeon Gnomer
#completewith Thermaplugg
>>打开|cRXP_PICK_机械储存柜|r. 拾取|cRXP_LOOT_基础模组|r
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
>>|cRXP_WARN_在|r|cRXP_PICK_矩阵式打孔计算机3005-C|r|cRXP_WARN_处使用|r|T133215:0|t[|cRXP_LOOT_蓝色穿孔卡片|r]
>>这台穿孔计算机位于|cRXP_ENEMY_电刑器6000型|r旁边的悬空平台上
.collect 9281,1,2930,1 
.itemcount 9282,1 
.skipgossip
.isOnQuest 2930
.unitscan Electrocutioner 6000
step
.dungeon Gnomer
>>|cRXP_WARN_在|r|cRXP_PICK_矩阵式打孔计算机3005-D|r|cRXP_WARN_处使用|r|T133215:0|t[|cRXP_LOOT_红色穿孔卡片|r]
.complete 2930,1 
.itemcount 9281,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
#label Thermaplugg
>> 击杀|cRXP_ENEMY_麦克尼尔·瑟玛普拉格|r
.complete 2929,1 
.isOnQuest 2929
step
.dungeon Gnomer
#completewith Finished
>>打开|cRXP_PICK_机械储存柜|r. 拾取|cRXP_LOOT_基础模组|r
>>如果你此时仍然没有完成此任务就回到你拾取的地方. 他们会在几分钟后刷新
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
#completewith Finished
>>击杀所有|cRXP_ENEMY_诺莫瑞根小怪|r. 拾取他们的|cRXP_LOOT_机械内胆|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
>>|cRXP_WARN_使用|r|T135230:0|t[|cRXP_LOOT_脏兮兮的戒指|r]|cRXP_WARN_并接受任务|r
.accept 2945 ,, Grime-Encrusted Ring
.collect 9326,1,2945 
.itemcount 9326,1
.use 9326
step
.dungeon Gnomer
>>|cRXP_WARN_把|r|T135230:0|t[|cRXP_LOOT_脏兮兮的戒指|r]|cRXP_WARN_带到清洁区的|cRXP_PICK_超级清洁器5200型|r处|r
*你将不得不回到副本入口处的清洁区, 确保你的队友在你回去的路上帮助你
.turnin 2945 ,, Grime-Encrusted Ring
.itemcount 9326,1 
step
.dungeon Gnomer
>>再次点击|cRXP_PICK_超级清洁器5200型|r
.accept 2947 ,, Return of the Ring
.isQuestTurnedIn 2945

step
.dungeon Gnomer
.hs >> 炉石回铁炉堡
.zoneskip Dun Morogh
.zoneskip Ironforge
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>> 离开铁炉堡
step 
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥齐·电环|r
.turnin 2962 ,, The Only Cure is More Green Glow
.target Ozzie Togglevolt
.isQuestComplete 2962
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,47.58,41.58,40,0
.goto Dun Morogh,50.19,40.79,20,0
.goto Ironforge,14.90,87.10,40,0
.zone Ironforge >> 前往铁炉堡
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
.turnin 2947 ,, Return of the Ring
.accept 2948 ,, Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2947
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
>>|cRXP_WARN_如果你有办法弄到|r|T133215:0|t[银锭]|cRXP_WARN_和|r|T134105:0|t[绿玛瑙]|cRXP_WARN_就完成此任务. 否则就放弃|r
.collect 2842,1,2948,1 
.collect 1206,1 
.turnin 2948,2948,1 ,, Gnome Improvement
.target Talvash del Kissel
.isOnQuest 2948
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大技师卡斯派普|r和|cRXP_FRIENDLY_科罗莫特·钢尺|r
.turnin -2922,1 ,, Save Techbot's Brain!
.goto Ironforge,69.540,50.325
.turnin -2929,1 ,, The Grand Betrayal
.goto Ironforge,68.743,48.969
.turnin -2930,1 ,, Data Rescue
.goto Ironforge,69.823,48.101
.turnin -2924,1 ,, Essential Artificials
.goto Ironforge,67.925,46.101
.target Tinkmaster Overspark
.target High Tinker Mekkatorque
.target Master Mechanic Castpipe
.target Klockmort Spannerspan
step
.dungeon Gnomer
.abandon 2948 ,, Gnome Improvement
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 2378,1130 >> 从银行取出下列物品:
>>|T133718:0|t[骷髅的手指] (如果你有的话)
>>|T134799:0|t[瓶装蜘蛛毒液] (如果你有的话)
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 5849 >>将以下物品存入银行:
>>|T132765:0|t[一箱防撞头盔] 
.target Bailey Stonemantle
step << !Mage
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> 进入矿道地铁. 坐地铁前往暴风城
>>|cRXP_WARN_你可以在等地铁时升级|r|T135966:0|t[急救]
step << Mage
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City>> 传送到暴风城
step << Mage
#era
.isOnQuest 1078
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林·马伦|r
.goto Stormwind City,43.088,80.391
.turnin 1078 ,, Retrieval for Mauren
.target Collin Mauren
step
.dungeon Gnomer
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沉默的舒尼|r
.turnin 2928 ,, Gyrodrillmatic Excavationators
.target Shoni the Shilent
.isQuestComplete 2928
step
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.turnin 322 ,, Blessed Arm
.accept 325 ,, Armed and Ready
.target Grimand Elmore
.isQuestTurnedIn 324
step
#label Eye
.goto Stormwind City,39.60,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大主教本尼迪塔斯|r
.turnin 293 ,, Cleansing the Eye
.target Archbishop Benedictus
step
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托马斯|r
>>|cRXP_FRIENDLY_托马斯|r|cRXP_WARN_在教堂内游荡|r
.accept 1274 ,, The Missing Diplomat
.target Thomas
step
.goto Stormwind City,29.44,61.52
>>点击地上的|cRXP_PICK_密封的箱子|r
.accept 74 ,, The Legend of Stalvan
step << !Mage
#era
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科林·马伦|r
.turnin 1078 ,, Retrieval for Mauren
.isOnQuest 1078
.target Collin Mauren
step
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_埃林·提亚斯|r对话
.turnin 350 ,, Look to an Old Friend
.accept 2745 ,, Infiltrating the Castle
.target Elling Trias
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> 前往暴风要塞
.isQuestTurnedIn 391
step
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰里恩|r
.turnin 2745 ,, Infiltrating the Castle
.accept 2746 ,, Items of Some Consequence
.target Tyrion
.isQuestTurnedIn 391
step
#requires Eye
.goto Stormwind City,78.30,25.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉维主教|r
.turnin 1274 ,, The Missing Diplomat
.accept 1241 ,, The Missing Diplomat
.target Bishop DeLavey
step
.goto Stormwind City,73.17,78.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔贞|r
.turnin 1241 ,, The Missing Diplomat
.accept 1242 ,, The Missing Diplomat
.target Jorgen
step
#completewith next
.goto Elwynn Forest,32.384,49.866,50 >> 离开暴风城. 前往艾尔文森林的克拉拉农场小屋
.isQuestTurnedIn 391
step
#ah
>> 拾取桌子上的|cRXP_LOOT_克拉拉的新鲜苹果|r
>>|cRXP_WARN_如果你仍需要|r|T132905:0|t[丝绸]|cRXP_WARN_就从拍卖行买一些|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
#ssf
>> 拾取桌子上的|cRXP_LOOT_克拉拉的新鲜苹果|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃林·提亚斯|r
.turnin 1242 ,, The Missing Diplomat
.accept 1243 ,, The Missing Diplomat
.target Elling Trias
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >> 前往暴风要塞
.isQuestTurnedIn 391
step
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰里恩|r
>>|cRXP_WARN_在你接受 伏击! 前确保你的队伍都提交了 必备物品|r
>>|cRXP_WARN_任务自动接受功能暂时关闭了. 注意! 如果有人正在做此任务你可能无法接到 伏击!|r
.turnin 2746 ,, Items of Some Consequence
.accept 434,1 ,, The Attack!
.timer 124,The Attack! RP
.target Tyrion
.isQuestTurnedIn 391
step 
.goto StormwindClassic,68.024,14.075
>>|cRXP_WARN_在花园中间等待|cRXP_ENEMY_葛瑞格·莱斯科瓦领主|r和|cRXP_ENEMY_沉默之刃马尔松|r的到来. 这大概会花费2分钟|r
>> 击杀|cRXP_ENEMY_葛瑞格·莱斯科瓦领主|r和|cRXP_ENEMY_沉默之刃马尔松|r
.complete 434,1 
.complete 434,2 
.complete 434,3 
.mob Lord Gregor Lescovar
.mob Marzon the Silent Blade
.isQuestTurnedIn 391
step
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_埃林·提亚斯|r对话
.turnin 434 ,, The Attack!
.accept 394 ,, The Head of the Beast
.target Elling Trias
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 前往楼上寻找|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.isQuestTurnedIn 391
step
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.turnin 394 ,, The Head of the Beast
.accept 395 ,, Brotherhood's End
.target Master Mathias Shaw
.isQuestTurnedIn 391
step
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴洛斯·艾力克斯顿|r
.turnin 395 ,, Brotherhood's End
.accept 396 ,, An Audience with the King
.target Baros Alexston
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,70.347,27.208,20 >> 前往暴风要塞
.isQuestTurnedIn 391
step
.goto StormwindClassic,78.105,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡特拉娜·普瑞斯托女士|r
.turnin 396 ,, An Audience with the King
.target Lady Katrana Prestor
.isQuestTurnedIn 391
step
#completewith next
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师亚克森|r
+|cRXP_BUY_从拍卖行|r|cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_如果你从其他途径弄不到的话|r
.bronzetube
.target Auctioneer Jaxon
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.goto Stormwind City,66.27,62.12
.fly Duskwood>> 飞往夜色镇
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尔伯|r
.vendor >> |cRXP_BUY_购买|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是限量供应的物品. 如果|cRXP_FRIENDLY_赫尔伯|r这没有库存就跳过这步|r

.bronzetube
.target Herble Baubbletump
.isQuestAvailable 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
>>|cRXP_WARN_如果你没弄到青铜管|r
.accept 174 ,, Look To The Stars
.turnin 174 ,, Look To The Stars
.target Viktori Prism'Antras
.itemcount 4371,1
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 ,, Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,81.46,59.02
>> 往南前往小教堂
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 ,, Look To The Stars
.accept 177 ,, Look To The Stars
.isQuestTurnedIn 174
.target Blind Mary
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>击杀|cRXP_ENEMY_疯狂的食尸鬼|r. 拾取|cRXP_LOOT_玛丽的眼镜|r
>>|cRXP_WARN_|cRXP_ENEMY_疯狂的食尸鬼|r可能出现在小教堂内或在外面游荡|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 ,, Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 181 ,, Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛尔|r
.accept 173 ,, Worgen in the Woods
.target Calor
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.accept 58 ,, The Night Watch
.target Commander Althea Ebonlocke
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板崔莱尼|r
.goto Duskwood,73.87,44.40
.home >> 绑定炉石到夜色镇
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯密茨|r
.target Tavernkeep Smitts
.accept 159 ,, Juice Delivery
step
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守夜人巴库斯|r
.turnin 1243 ,, The Missing Diplomat
.accept 1244 ,, The Missing Diplomat
.target Watcher Backus
step
.goto Duskwood,66.0,44.6,60,0
.goto Duskwood,64.2,38.8,60,0
.goto Duskwood,60.8,37.4,60,0
.goto Duskwood,61.2,46.0,60,0
.goto Duskwood,67.6,46.6,60,0
.goto Duskwood,63.6,41.2
>> 击杀|cRXP_ENEMY_夜行织影狼人|r
.complete 173,1 
.mob Nightbane Shadow Weaver
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛尔|r
.turnin 173 ,, Worgen in the Woods
.accept 221 ,, Worgen in the Woods
.target Calor
step
.goto Duskwood,63.8,51.8,60,0
.goto Duskwood,61.2,40.2,60,0
.goto Duskwood,65.2,51.6,60,0
.goto Duskwood,61.4,41.2
>> 击杀|cRXP_ENEMY_夜行黑暗狼人|r
>>|cRXP_ENEMY_夜行黑暗狼人|r|cRXP_WARN_移动速度特别快并且警戒范围较大|r
.complete 221,1 
.mob Nightbane Dark Runner
step
#completewith next
.goto Elwynn Forest,84.60,69.37,100 >> 前往东谷伐木场
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官哈迦德|r
.turnin 74 ,, The Legend of Stalvan
.accept 75 ,, The Legend of Stalvan
.target Marshal Haggard
step
.goto Elwynn Forest,85.70,69.53
>> 进入房屋并上楼
>>打开|cRXP_PICK_哈加德的箱子|r. 拾取|cRXP_LOOT_一张褪色的日记书页|r
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官哈迦德|r
.turnin 75 ,, The Legend of Stalvan
.accept 78 ,, The Legend of Stalvan
.target Marshal Haggard
step
#completewith next
.goto Duskwood,28.10,31.46,100 >> 前往暮色森林寻找|cRXP_FRIENDLY_亚伯克隆比|r
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚伯克隆比|r
.turnin 159 ,, Juice Delivery
.accept 133 ,, Ghoulish Effigy
.target Abercrombie
step
.goto Duskwood,24.26,32.90
>> 击杀|cRXP_ENEMY_瘟疫散布者|r. 拾取他们的|cRXP_LOOT_肋骨|r和|cRXP_LOOT_牙齿|r
>>|cRXP_WARN_其他|cRXP_ENEMY_食尸鬼|r也能掉落|cRXP_LOOT_肋骨|r和|cRXP_LOOT_牙齿|r但是请专注于|r|cRXP_ENEMY_瘟疫散布者|r
.complete 58,1 
.complete 133,1 
.complete 101,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚伯克隆比|r
.turnin 133 ,, Ghoulish Effigy
.accept 134 ,, Ogre Thieves
.target Abercrombie
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 268 ,, Return to Sven
.target Sven Yorgen
.accept 323 ,, Proving Your Worth
step
.goto Duskwood,16.01,38.79
>> 击杀|cRXP_ENEMY_骷髅袭击者|r, |cRXP_ENEMY_骷髅医师|r和|cRXP_ENEMY_骷髅看守|r
>>|cRXP_WARN_进入黎明墓穴可以找到|r|cRXP_ENEMY_骷髅看守|r
>>|cRXP_WARN_35级精英|r|cRXP_ENEMY_摩拉迪姆|r|cRXP_WARN_在墓地附近巡逻. 小心不要引到他|r
.complete 323,1 
.complete 323,2 
.complete 323,3 
.mob Skeletal Raider
.mob Skeletal Healer
.mob Skeletal Warder
.unitscan Mor'Ladim
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 323 ,, Proving Your Worth
.target Sven Yorgen
.accept 269 ,, Seeking Wisdom
step
.goto Duskwood,23.926,72.075
>>打开|cRXP_PICK_迪菲亚保险箱|r. 拾取|cRXP_LOOT_迪菲亚记事本|r
.complete 1244,1 
step
.goto Duskwood,33.419,76.356
>> 拾取地上的|cRXP_LOOT_亚伯克隆比的箱子|r
.complete 134,1 
step
#completewith next
.goto Duskwood,34.63,77.87,20 >> 进入沃古尔食人魔洞穴
.isQuestTurnedIn 174
step
.goto Duskwood,37.98,79.90,30,0
.goto Duskwood,36.81,83.78
>> 击杀|cRXP_ENEMY_札克乌尔|r. 拾取他的|cRXP_LOOT_单片眼镜|r
>>|cRXP_ENEMY_札克乌尔|r|cRXP_WARN_在洞穴内有2个刷新点|r
.complete 181,1 
.mob Zzarc' Vul
.isQuestTurnedIn 174

step
#som
#completewith welcome
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >> 向南前往荆棘谷
step
#som
#completewith stvEnd
.goto Stranglethorn Vale,40.32,8.45,0
>> 任务过程中留意列兵托尔森的事件. 帮他击杀敌人然后接受任务
>>他每30分钟从叛军营地出发沿路巡逻
.target Private Thorsen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_列兵托尔森|r和|cRXP_FRIENDLY_多伦中尉|r
.accept 215 ,, Jungle Secrets
.target Lieutenant Doren
.turnin 215 ,, Jungle Secrets

step
#label welcome
#som
.goto Stranglethorn Vale,35.66,10.52
.target Barnil Stonepot
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尼尔·石罐|r
.accept 583 ,, Welcome to the Jungle
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 583 ,, Welcome to the Jungle
step
#som
.goto Stranglethorn Vale,35.61,10.61
.target Ajeck Rouack
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r
.accept 185 ,, Tiger Mastery
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔加丁爵士|r
.accept 190 ,, Panther Mastery
step
#som
#sticky
#label panthers
>> 击杀|cRXP_ENEMY_猎豹幼崽|r
.goto Stranglethorn Vale,41.50,12.00
.complete 190,1 
.mob Young Panther
step
#som
>> 击杀|cRXP_ENEMY_荆棘谷猛虎幼崽|r
.goto Stranglethorn Vale,35.40,12.50
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#som
#requires panthers
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.turnin 185 ,, Tiger Mastery
.target Ajeck Rouack
.accept 186 ,, Tiger Mastery
.target Sir S. J. Erlgadin
.turnin 190 ,, Panther Mastery

step
#som
#completewith note
#label stvEnd
.goto Duskwood,44.7,85.6
.zone Duskwood >> 返回暮色森林

step
#completewith next
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,23.6,36.6,0
>> 击杀|cRXP_ENEMY_小型黑寡妇蜘蛛|r和|cRXP_ENEMY_食腐独行蛛|r. 拾取他们的|cRXP_LOOT_蜘蛛毒液|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>> 击杀|cRXP_ENEMY_骸骨魔|r和|cRXP_ENEMY_恐怖骸骨|r. 拾取他们的|cRXP_LOOT_手指|r
.complete 101,3 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,31.6,59.4,50,0
.goto Duskwood,34.4,54.6,50,0
.goto Duskwood,28.6,49.4,50,0
.goto Duskwood,32.8,35.2,50,0
.goto Duskwood,23.6,36.6
>> 击杀|cRXP_ENEMY_小型黑寡妇蜘蛛|r和|cRXP_ENEMY_食腐独行蛛|r. 拾取他们的|cRXP_LOOT_蜘蛛毒液|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
#label note
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚伯克隆比|r
.turnin 134 ,, Ogre Thieves
.accept 160 ,, Note to the Mayor
.target Abercrombie
step
>> 点击|cRXP_PICK_饱经风霜的坟墓|r
.goto Duskwood,17.72,29.07
.accept 225 ,, The Weathered Grave
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 325 ,, Armed and Ready
.target Sven Yorgen
.isOnQuest 325
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.accept 55 ,, Morbent Fel
.target Sven Yorgen
.isQuestTurnedIn 325
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
.xp <32,1 
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
.xp <32,1 
step
#som
.hs >> 炉石回夜色镇
>>Buy 必要的吃喝
step
#completewith next
#era
.hs >>炉石回夜色镇
step
#completewith next
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板崔莱尼|r
.vendor >>|cRXP_BUY_购买吃喝. 你需要至少2组半的吃喝以应对接下来的任务|r
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 78 ,, The Legend of Stalvan
.accept 79 ,, The Legend of Stalvan
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.turnin 58 ,, The Night Watch
.turnin 79 ,, The Legend of Stalvan
.accept 80 ,, The Legend of Stalvan
.target Commander Althea Ebonlocke
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_书记员达尔塔|r
.turnin 80 ,, The Legend of Stalvan
.accept 97 ,, The Legend of Stalvan
.target Clerk Daltry
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希拉·沃宁迪|r
.turnin 225 ,, The Weathered Grave
.accept 227 ,, Morgan Ladimore
.target Sirra Von'Indi
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔罗·埃伯洛克领主|r
.turnin 160 ,, Note to the Mayor
.accept 251 ,, Translate Abercrombie's Note
.target Lord Ello Ebonlocke
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希拉·沃宁迪|r
.turnin 251 ,, Translate Abercrombie's Note
.target Sirra Von'Indi
.accept 401 ,, Wait for Sirra to Finish
.turnin 401 ,, Wait for Sirra to Finish
.accept 252 ,, Translation to Ello
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔罗·埃伯洛克领主|r
.turnin 252 ,, Translation to Ello
.target Lord Ello Ebonlocke
step
.group
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔罗·埃伯洛克领主|r
.accept 253 ,, Bride of the Embalmer
.target Lord Ello Ebonlocke
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.turnin 97 ,, The Legend of Stalvan
.accept 98 ,, The Legend of Stalvan
.turnin 227 ,, Morgan Ladimore
.accept 228 ,, Mor'Ladim
.target Commander Althea Ebonlocke
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛尔|r
.turnin 221 ,, Worgen in the Woods
.accept 222 ,, Worgen in the Woods
.target Calor
step << Hunter
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瓦特·菲尔伍德|r
.goto Duskwood,73.28,44.76
.vendor 228 >>|cRXP_BUY_补给|r|T132382:0|t[锐锋箭]
.target Avette Fellwood
step
#label exit1
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守夜人巴库斯|r
.turnin 1244 ,, The Missing Diplomat
.accept 1245 ,, The Missing Diplomat
.target Watcher Backus
step
#sticky
#label FlowerX
.goto Duskwood,78.348,35.952
>> 拾取地上的|cRXP_LOOT_蒂罗亚之泪|r
.complete 335,1 
step
.goto Duskwood,77.30,36.20
>> 击杀|cRXP_ENEMY_斯塔文·密斯特曼托|r. 拾取他的|cRXP_LOOT_家族戒指|r
>>|cRXP_ENEMY_斯塔文·密斯特曼托|r|cRXP_WARN_攻击很高. 如果需要可以把他风筝回夜色镇并让|cRXP_FRIENDLY_守夜人|r卫兵帮忙|r
.complete 98,1 
.mob Stalvan Mistmantle
step
#requires FlowerX
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊瓦夫人|r
.turnin 98 ,, The Legend of Stalvan
.turnin 101 ,, The Totem of Infliction
.target Madame Eva
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 181 ,, Look To The Stars
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,62.33,81.77
>> 击杀|cRXP_ENEMY_夜行邪齿狼人|r和|cRXP_ENEMY_夜行堕落狼人|r
>>|cRXP_WARN_小心! 此区域的怪物会在被击杀的几分钟后一起刷新|r
.complete 222,1 
.complete 222,2 
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
step
#era
.goto Duskwood,62.33,81.77
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
>> 击杀|cRXP_ENEMY_夜行狼人|r. 拾取|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]
>>|cRXP_WARN_使用|T133741:0|t[|cRXP_LOOT_一本破旧的历史书|r]并接受任务|r
.collect 2794,1,337
.use 2794
.accept 337 ,, An Old History Book
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#era
.goto Duskwood,62.33,81.77
.xp 32 >> 一直刷怪到31级多75% << !Druid
.xp 32 >> 一直刷怪到31级多85% << Druid
>> 击杀|cRXP_ENEMY_夜行狼人|r直到你的炉石冷却时间小于25分钟
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step << skip 
#era
#completewith next
.goto Duskwood,62.33,81.77
+击杀|cRXP_ENEMY_夜行狼人|r直到你的炉石冷却时间小于25分钟
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
.group 2
.goto Duskwood,28.864,30.765
>> 点击|cRXP_PICK_伊莉莎的坟墓|r以召唤|cRXP_ENEMY_伊莉莎|r
>> 击杀|cRXP_ENEMY_伊莉莎|r. 拾取|cRXP_LOOT_藏尸者的心脏|r
>>|cRXP_ENEMY_伊莉莎|r|cRXP_WARN_会施放|r|T135846:0|t[寒冰箭]|cRXP_WARN_和|r|T135848:0|t[冰霜新星]|cRXP_WARN_还会召唤多个|r|cRXP_ENEMY_守卫|r
>>通过从小车跳到|cRXP_FRIENDLY_亚伯克隆比|r的小木屋上, |r|cRXP_WARN_你可以避免与|cRXP_ENEMY_伊莉莎的守卫|r战斗 << Hunter/Mage/Warlock/Priest
>>通过从小车跳到|cRXP_FRIENDLY_亚伯克隆比|r的小木屋上, |r|cRXP_WARN_你可以避免与|cRXP_ENEMY_伊莉莎的守卫|r战斗. |cRXP_WARN_如果你这么做的话, |r|cRXP_ENEMY_伊莉莎|r将持续对你施放|r|T135846:0|t[寒冰箭] << Warrior/Rogue/Druid/Paladin
.complete 253,1 
.mob Eliza
step
.group 3
#completewith next
>>清出一条通往房屋2层的路
.cast 8913 >>|cRXP_WARN_装备|r|T135142:0|t[摩本特的克星]|cRXP_WARN_到副手|r
>>|cRXP_WARN_对|r|cRXP_ENEMY_摩本特·费尔|r|cRXP_WARN_使用|r|T135142:0|t[摩本特的克星]|cRXP_WARN_以削弱他|r
>>|cRXP_WARN_记得在削弱他后换回你的武器|r
.use 7297
step
.group 3
.goto Duskwood,16.90,33.40
>> 击杀|cRXP_ENEMY_摩本特·费尔|r
>>|cRXP_WARN_这个任务很难. 你可以先跳过这步等级别高了后再回来完成|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.group
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 55 ,, Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
.group 3
.goto Duskwood,19.59,37.28
>> 击杀|cRXP_ENEMY_摩拉迪姆|r. 拾取他的|cRXP_LOOT_颅骨|r
>>|cRXP_ENEMY_摩拉迪姆|r|cRXP_WARN_攻击非常高但移速很慢. 试着绕着周围的大树风筝他|r
>>|cRXP_WARN_这个任务很难. 你可以先跳过这步等级别高了后再回来完成|r
.complete 228,1 
.unitscan Mor'Ladim

step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >> 刷此区域的怪直到 29640+/58600xp
step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >> 刷此区域的怪直到 29640+/58600xp
step << Priest/Paladin/Warlock
#som
.goto Duskwood,19.59,37.28
.xp 33+24240 >> 刷此区域的怪直到 24240+/58600xp
step
#som
#label DuskwoodEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
.goto Westfall,56.55,52.63
.fly Duskwood >> 前往西部荒野哨兵岭. 飞往暮色森林
.target Thor

step
#era
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514
.zone Stranglethorn Vale >> 前往荆棘谷
step
#era
#completewith stvEnd2
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_留意|cRXP_FRIENDLY_列兵托尔森|r的特殊事件. 他每30分钟从叛军营地出发沿路巡逻|r
>>|cRXP_FRIENDLY_列兵托尔森|r|cRXP_WARN_会被2名|cRXP_ENEMY_库尔森的密探|r攻击. 如果你没遇到这个事件就忽略这一步|r
>>击杀2名|cRXP_ENEMY_库尔森的密探|r然后接受|cRXP_FRIENDLY_列兵托尔森|r的任务. (在救了他后才能接到)
.accept 215 ,, Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尼尔·石罐|r和|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.accept 583 ,, Welcome to the Jungle
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 ,, Welcome to the Jungle
.goto Stranglethorn Vale,35.658,10.808
.target Barnil Stonepot
.target Hemet Nesingwary
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.accept 185 ,, Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.accept 190 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#era
#completewith next
>> 击杀|cRXP_ENEMY_猎豹幼崽|r
.complete 190,1 
.mob Young Panther
step
#era
.goto Stranglethorn Vale,35.40,12.50,50,0
.goto Stranglethorn Vale,33.30,11.90,50,0
.goto Stranglethorn Vale,31.76,9.00,50,0
.goto Stranglethorn Vale,35.40,12.50
>> 击杀|cRXP_ENEMY_荆棘谷猛虎幼崽|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#era
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>> 击杀|cRXP_ENEMY_猎豹幼崽|r
.complete 190,1 
.mob Young Panther
step
#era
#label stvEnd2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
>>|cRXP_WARN_先不要接受后续任务|r
.turnin 185 ,, Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step << Druid
#era
.goto Stranglethorn Vale,33.43,11.85
.xp 32 >> 刷到32级
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
>>|cRXP_WARN_暂时不要接受后续任务|r
.turnin 215 ,, Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#era
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
.xp <34,1 
step << Druid
#era
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
.xp <34,1 
step
#era
#completewith next
.hs >> 炉石回夜色镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
#completewith WorgenWoods
.goto Duskwood,73.59,46.89,150 >> 前往夜色镇
step
.group
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.turnin 228 ,, Mor'Ladim
.isQuestComplete 228
.target Commander Althea Ebonlocke
step
.group
.goto Duskwood,73.59,46.89
.isQuestTurnedIn 228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.accept 229 ,, The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.group
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔罗·埃伯洛克领主|r
.turnin 253 ,, Bride of the Embalmer
.isQuestComplete 253
.target Lord Ello Ebonlocke
step
.destroy 3248 >>摧毁|T134939:0|t[翻译好的藏尸者信件], 你不再需要它了
step
.group
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守夜人拉迪莫尔|r
>>|cRXP_FRIENDLY_守夜人拉迪莫尔|r|cRXP_WARN_在夜色镇附近巡逻|r
.turnin 229 ,, The Daughter Who Lived
.accept 231 ,, A Daughter's Love
.isQuestTurnedIn 228
.target Watcher Ladimore
step
#label WorgenWoods
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡洛尔|r
.turnin 222 ,, Worgen in the Woods
.accept 223 ,, Worgen in the Woods
.target Calor
step
.goto Duskwood,75.32,49.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔纳森·卡尔文|r
.turnin 223 ,, Worgen in the Woods
.target Jonathan Carevin
step << Warrior/Paladin
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.49,44.28
.fly Stormwind>> 飞往西部荒野
.target Felicia Maline
step << Warrior/Paladin
.isOnQuest 231
>> 点击|cRXP_PICK_饱经风霜的坟墓|r
.goto Duskwood,17.72,29.07
.turnin 231 ,, A Daughter's Love
step << Warrior/Paladin
.isQuestTurnedIn 231
.destroy 2154 >> 摧毁|T133741:0|t[摩根·拉迪莫尔的故事]
step << Warrior/Paladin
.isQuestTurnedIn 231
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
.fly Stormwind >> 飞往暴风城
.target Thor
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.49,44.28
.fly Stormwind>> 飞往暴风城
.target Felicia Maline
.zoneskip Duskwood,1
step << Mage
#era
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> 传送到暴风城
step << Mage
#era
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << Mage
#som
.zone Stormwind City >> 传送到暴风城
step << Mage
#som
#completewith next
#level 34
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> 进入已宰的羔羊并下楼
step << Mage
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑爪加尔德斯|r
.turnin 335 ,, A Noble Brew
.accept 336 ,, A Noble Brew
.target Zardeth of the Black Claw
step << Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师马林|r
.accept 690 ,, Malin's Request
.target Archmage Malin
step << Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科诺尔·瑞沃斯|r
.accept 1301 ,, James Hyal
.target Connor Rivers
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 2784 >> 从银行取出下列物品:
>>|T134187:0|t[麝鼠根]
.target Newton Burnside
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃林·提亚斯|r
.turnin 1245 ,, The Missing Diplomat
.accept 1246 ,, The Missing Diplomat
.target Elling Trias
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto Stormwind City,78.680,45.802
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r
.accept 1718 ,, The Islander
.target Wu Shen
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达舍尔·石拳|r
>>|cRXP_WARN_在接受后续任务后, |r|cRXP_ENEMY_达舍尔·石拳|r|cRXP_WARN_会变成敌对目标. 击败他|r
.turnin 1246 ,, The Missing Diplomat
.accept 1447 ,, The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>击败|cRXP_ENEMY_达舍尔·石拳|r
>>|cRXP_ENEMY_达舍尔·石拳|r|cRXP_WARN_会与2名|cRXP_ENEMY_旧城区暴徒|r一起进攻. 忽略他们并专注于|r|cRXP_ENEMY_达舍尔·石拳|r
.complete 1447,1 
.mob Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达舍尔·石拳|r
.turnin 1447 ,, The Missing Diplomat
.accept 1247 ,, The Missing Diplomat
.target Dashel Stonefist
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃林·提亚斯|r
.turnin 1247 ,, The Missing Diplomat
.accept 1248 ,, The Missing Diplomat
.target Elling Trias
step << !Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师马林|r
.accept 690 ,, Malin's Request
.target Archmage Malin
step << !Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科诺尔·瑞沃斯|r
.accept 1301 ,, James Hyal
.target Connor Rivers
step << !Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> 进入已宰的羔羊并下楼
step << !Mage
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑爪加尔德斯|r
.turnin 335 ,, A Noble Brew
.accept 336 ,, A Noble Brew
.target Zardeth of the Black Claw
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto Stormwind City,25.255,78.591
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑暗缚灵师加金|r
.accept 1798 ,, Seeking Strahad
.target Gakin the Darkbinder
step << Warlock
.goto Stormwind City,25.283,78.223
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德米赛特·克劳斯|r
>>|cRXP_WARN_如果你之前在铁炉堡接了相同的任务就忽略这一步|r
.accept 4738 ,, In Search of Menara Voidrender
.target Demisette Cloyce
step
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_主教法席恩|r
.turnin 269 ,, Seeking Wisdom
.target Bishop Farthing
.accept 270 ,, The Doomed Fleet
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
.goto Stormwind City,75.226,31.670
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲍雷斯·维沙克领主|r
.turnin 336 ,, A Noble Brew
.target Lord Baurles K. Wishock
step
.isOnQuest 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
.turnin 337 ,, An Old History Book
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
.accept 538 ,, Southshore
.target Milton Sheaf
step << Mage
#som
#completewith FlytoSouthshoreA
#level 34
.trainer >> 如果之前没有学职业技能就传送回暴风城职业训练师处并学习34级职业技能
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >> 进入已宰的羔羊并下楼
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黑爪加尔德斯|r和|cRXP_FRIENDLY_兹吉|r
.accept 397 ,, You Have Served Us Well
.goto Stormwind City,26.439,78.629
.turnin 397 ,, You Have Served Us Well
.goto Stormwind City,26.537,78.660
.target Zardeth of the Black Claw
.target Zggi
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << !Mage
#completewith FlytoSouthshoreA
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> 进入矿道地铁. 乘坐地铁前往铁炉堡
>>|cRXP_WARN_你可以在等地铁时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_尝试登出跳过操作. 点击此处查看视频参考|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> 传送到铁炉堡
step
#completewith murlocs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.50,47.70
.fly Wetlands>> 飞往湿地
.target Gryth Thurden
.zoneskip Wetlands
step
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 270 ,, The Doomed Fleet
.accept 321 ,, Lightforge Iron
.target Glorin Steelbrow
step
>>点击|cRXP_PICK_浸水的箱子|r
.goto Wetlands,12.10,64.19
.turnin 321 ,, Lightforge Iron
.accept 324 ,, The Lost Ingots
step
#label murlocs
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>> 击杀|cRXP_ENEMY_蓝鳃劫掠者|r. 拾取|cRXP_LOOT_光铸铁锭|r
.complete 324,1 
.mob Bluegill Raider
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 324 ,, The Lost Ingots
.accept 322 ,, Blessed Arm
.target Glorin Steelbrow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r和|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.50,47.70,-1
.goto Wetlands,9.49,59.70,-1
.fly Southshore>> 飞往南海镇
.target Gryth Thurden
.target Shellei Brondir
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 32-33 希尔斯布莱德丘陵/阿拉希高地 I
#next 33-34 千针石林
step
#completewith start
>>|cRXP_WARN_|cRXP_ENEMY_幽暗刺客|r袭击南海镇是一个随机事件|r
>>如果你在南海镇遇到|cRXP_ENEMY_幽暗刺客|r就击杀他们. 拾取|T134939:0|t[|cRXP_LOOT_刺客的契约|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_刺客的契约|r]并接受任务|r
>>|cRXP_WARN_如果没有遇到这个事件就跳过这步|r
.collect 3668,1,522
.use 3668
.accept 522 ,, Assassin's Contract
.unitscan Shadowy Assassin
step
.isOnQuest 538
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 538 ,, Southshore
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.344,59.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费恩·奥德利克|r
.accept 659 ,, Hints of a New Plague?
.target Phin Odelic
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.accept 536 ,, Down the Coast
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板安德森|r
.home >> 绑定炉石到南海镇
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24
>> 击杀|cRXP_ENEMY_碎鳍猎潮鱼人|r和|cRXP_ENEMY_碎鳍神谕者|r
.complete 536,1 
.complete 536,2 
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 536 ,, Down the Coast
.accept 559 ,, Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24,50,0
.goto Hillsbrad Foothills,33.19,69.10,50,0
.goto Hillsbrad Foothills,31.47,72.51,50,0
.goto Hillsbrad Foothills,28.81,73.18,50,0
.goto Hillsbrad Foothills,24.84,70.21,50,0
.goto Hillsbrad Foothills,33.19,69.10
>> 击杀|cRXP_ENEMY_碎鳍猎潮鱼人|r, |cRXP_ENEMY_碎鳍神谕者|r, |cRXP_ENEMY_碎鳍滩行鱼人|r和|cRXP_ENEMY_碎鳍泥浆鱼人|r. 拾取他们的|cRXP_LOOT_头|r
.complete 559,1 
.mob Torn Fin Muckdweller
.mob Torn Fin Coastrunner
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 559 ,, Farren's Proof
.accept 560 ,, Farren's Proof
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官雷德帕斯|r
.turnin 560 ,, Farren's Proof
.accept 561 ,, Farren's Proof
.target Marshal Redpath
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 561 ,, Farren's Proof
.accept 562 ,, Stormwind Ho!
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,52.97,64.67,60,0
.goto Hillsbrad Foothills,55.32,63.35,60,0
.goto Hillsbrad Foothills,58.35,66.37,60,0
.goto Hillsbrad Foothills,59.55,73.43,60,0
.goto Hillsbrad Foothills,56.97,67.01
>> 击杀|cRXP_ENEMY_刺脊海妖|r和|cRXP_ENEMY_刺脊滩行者|r
>>|cRXP_WARN_你可能需要游入海中击杀他们|r
.complete 562,1 
.complete 562,2 
.mob Daggerspine Shorehunter
.mob Daggerspine Siren
step
#label start
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 562 ,, Stormwind Ho!
.accept 563 ,, Reassignment
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
>>|cRXP_WARN_不要接受后续任务|r
.turnin 522 ,, Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> 飞往阿拉希高地
.target Darla Harris
step
#era/som
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.accept 681 ,, Northfold Manor
.target Captain Nials
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯奎尔图|r
.turnin 690 ,, Malin's Request
.isOnQuest 690
.target Skuerto
step
.solo
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r
.turnin 659 ,, Hints of a New Plague?
.target Quae
step
.group
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r
.turnin 659 ,, Hints of a New Plague?
.accept 658 ,, Hints of a New Plague?
.target Quae
step
#completewith Northfold
.goto Arathi Highlands,25.68,59.45,15,0
.goto Arathi Highlands,23.76,60.26,15,0
.goto Arathi Highlands,23.76,58.39,35,0
.goto Arathi Highlands,26.966,58.834
>>|cRXP_WARN_前往激流堡学习|r|T135966:0|t[急救]
>>|cRXP_WARN_一旦进入激流堡请紧跟指示箭头, 城堡内有许多精英|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德尼布·沃克|r
>>|cRXP_BUY_购买|r|T133740:0|t[中级急救教材 - 绷带缚体]|cRXP_BUY_,|r|T133735:0|t[手册：厚丝质绷带]|cRXP_BUY_和|r|T133735:0|t[手册：魔纹绷带]
>>|cRXP_FRIENDLY_德尼布·沃克|r|cRXP_WARN_也出售限量物品, 比如|r|T134938:0|t|T134937:0|t|T134943:0|t[卷轴]|cRXP_WARN_和|r|T134851:0|t|T134831:0|t[药水]|cRXP_WARN_你可以视情况购买|r << !Warrior !Rogue
>>|cRXP_FRIENDLY_德尼布·沃克|r|cRXP_WARN_也出售限量物品, 比如|r|T134938:0|t|T134937:0|t|T134943:0|t[卷轴]|cRXP_WARN_和|r|T134831:0|t[药水]|cRXP_WARN_你可以视情况购买|r << Warrior Rogue
.collect 16084,1 
.collect 16112,1 
.collect 16113,1 
.skill firstaid,151,1 
.target Deneb Walker

step
.group 2
#completewith courier << !Hunter
#completewith courierhunter << Hunter
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>击杀|cRXP_ENEMY_被遗忘者信使|r. 拾取她掉落的|cRXP_LOOT_密封的信件|r
>>|cRXP_WARN_|cRXP_ENEMY_被遗忘者信使|r在塔伦米尔和格沙克农场之间的路上巡逻|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_以寻找|r|cRXP_ENEMY_被遗忘者信使|r << Hunter
>>|cRXP_WARN_如果你在阿拉希高地找不到她就稍后等完成诺斯弗德农场任务后再到希尔斯布莱德丘陵找|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#label Northfold
.goto Arathi Highlands,33.26,32.60,50,0
.goto Arathi Highlands,30.38,30.68,50,0
.goto Arathi Highlands,31.46,25.36,50,0
.goto Arathi Highlands,33.87,29.13,50,0
.goto Arathi Highlands,31.13,29.47
>> 击杀|cRXP_ENEMY_辛迪加雇佣兵|r和|cRXP_ENEMY_辛迪加路霸|r
>>|cRXP_WARN_注意! |cRXP_ENEMY_辛迪加路霸|r处于|r|T132320:0|t[潜行]|cRXP_WARN_状态, 你能在诺斯弗德农场周边找到他们|r
>>|cRXP_WARN_施放|r|T136090:0|t[感知]|cRXP_WARN_以帮助寻找|r|cRXP_ENEMY_辛迪加路霸|r << Human
.complete 681,1 
.complete 681,2 
.mob Syndicate Highwayman
.mob Syndicate Mercenary
step << Hunter
#completewith next
.hs >> 炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯雷|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >> 把你的宠物存入兽栏. 你很快就会抓一只|cRXP_ENEMY_平原狼蛛|r
.target Wesley
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> 飞往阿拉希高地
.target Darla Harris
step
#label courier
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.turnin 681 ,, Northfold Manor
.target Captain Nials
step << Hunter
#label courierhunter
.goto Arathi Highlands,41.6,47.8,0
.goto Arathi Highlands,41.8,58.6,0
.goto Arathi Highlands,49.0,50.2,0
.goto Arathi Highlands,41.6,47.8,40,0
.goto Arathi Highlands,41.8,58.6,40,0
.goto Arathi Highlands,49.0,50.2,40,0
.goto Arathi Highlands,48.0,58.6
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_以帮助寻找一只|cRXP_ENEMY_平原狼蛛|r. 一部分刷新地点已标注在地图上|r
>>|cRXP_WARN_对|cRXP_ENEMY_平原狼蛛|r|cRXP_WARN_施放|r|T132164:0|t[驯服野兽]|r 
.train 17265 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132278:0|t[撕咬 (等级 5)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.unitscan Plains Creeper
step
.group
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r
>>|cRXP_WARN_不要偏离路线去找|cRXP_ENEMY_被遗忘者信使|r. 你可以暂时跳过此步稍后再来完成.|r
.turnin 658 ,, Hints of a New Plague?
.target Quae
step << !Hunter
#completewith next
.hs >> 如果你离飞行点比较远就炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r和|cRXP_FRIENDLY_瑟迪克·普罗斯|r << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r << Hunter
.goto Hillsbrad Foothills,49.338,52.272,-1
.goto Arathi Highlands,45.73,46.09,-1
.fly Wetlands >> 飞往湿地
.target Darla Harris << !Hunter
.target Cedrik Prose
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝塞尼·火锤|r
.goto Wetlands,10.527,59.737
.stable >> 从兽栏取出你的宠物
.target Bethaine Flinthammer
step
.goto Wetlands,10.828,60.399
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹姆斯·海厄尔|r
.turnin 1301 ,, James Hyal
.accept 1302 ,, James Hyal
.target Vincent Hyal
step
#completewith next
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米克哈尔|r
>>|cRXP_WARN_接受此任务将会让|cRXP_ENEMY_‘干柴’塔伯克·贾恩|r由旅馆入口|r|T132320:0|t[潜行]|cRXP_WARN_并逃跑|r
.turnin 1248 ,, The Missing Diplomat
.accept 1249 ,, The Missing Diplomat
.target Mikhail
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.795,59.616
>>|cRXP_WARN_迅速跑到门外!|r
>>|cRXP_WARN_击败|cRXP_ENEMY_‘干柴’塔伯克·贾恩|r. |cRXP_ENEMY_他的朋友|r会在|cRXP_ENEMY_‘干柴’塔伯克·贾恩|r投降后走开|r
>>|cRXP_WARN_如果需要就对|cRXP_ENEMY_他的朋友|r使用群控技能|r
.complete 1249,1 
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米克哈尔|r
.turnin 1249 ,, The Missing Diplomat
.target Mikhail
step
.goto Wetlands,10.545,60.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘干柴’塔伯克·贾恩|r
.accept 1250 ,, The Missing Diplomat
.target Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米克哈尔|r
.turnin 1250 ,, The Missing Diplomat
.accept 1264 ,, The Missing Diplomat
.target Mikhail
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 33-34 千针石林
#next 34-35 荆棘谷 I
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> 前往米奈希尔港码头
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> 乘船前往塞拉摩
>>|cRXP_WARN_等待时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fp Theramore >> 开启塞拉摩飞行点
.target Baldruc
step
.goto Dustwallow Marsh,66.156,46.067
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卫兵拜伦|r
.accept 1282 ,, They Call Him Smiling Jim
.target Guard Byron
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板詹妮|r
.goto Dustwallow Marsh,66.587,45.223
.home >> 绑定炉石到塞拉摩
.target Innkeeper Janene
step
.goto Dustwallow Marsh,66.459,45.147
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲欧拉·长耳|r
.accept 1135 ,, Highperch Venom
.target Fiora Longears
step
#label JamesHyjal
.goto Dustwallow Marsh,67.877,48.239
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入城堡上楼与|cRXP_FRIENDLY_书记员伦德瑞|r对话
.turnin 1302 ,, James Hyal
.target Clerk Lendry
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官萨莫尔|r和|cRXP_FRIENDLY_盖兰·维米斯上尉|r
.turnin 1264 ,, The Missing Diplomat
.accept 1265 ,, The Missing Diplomat
.goto Dustwallow Marsh,67.923,48.540
.turnin 1282 ,, They Call Him Smiling Jim
.goto Dustwallow Marsh,68.212,48.620
.target Commander Samaul
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,59.72,41.17 >> 前往警戒哨岗
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师特沃许|r
>>|cRXP_WARN_待在|cRXP_FRIENDLY_大法师特沃许|r的视线内, 他会给你刷|r|T135880:0|t[普罗德摩尔的防护]|cRXP_WARN_Buff给予你10点耐力和40点护甲|r
.complete 1265,1 
.goto Dustwallow Marsh,59.652,41.243
.turnin 1265 ,, The Missing Diplomat
.goto Dustwallow Marsh,59.652,41.243
.target Archmage Tervosh
step
#sticky
.abandon 1266 >> 放弃 消失的使节. 稍后再来完成
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Ratchet >> 飞往棘齿城
.target Baldruc
.zoneskip The Barrens
.zoneskip Thousand Needles
step
.isOnQuest 1179
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兹拉克|r和|cRXP_FRIENDLY_兹科尔|r
.bankwithdraw 5849 >> 从银行取出下列物品:
>>|T132765:0|t[一箱防撞头盔]
.target Fuzruckle
.target Zikkel
step
.isOnQuest 1179
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兹拉克|r和|cRXP_FRIENDLY_兹科尔|r
.bankdeposit 3721,3521 >>将以下物品存入银行:
>>|T133461:0|t[法尔林的报告] 
>>|T134939:0|t[复杂的密码信] (如果有的话) 
.target Fuzruckle
.target Zikkel
step
.dungeon RFK
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.accept 1221 ,, Blueleaf Tubers
.target Mebok Mizzyrix
step
.dungeon RFK
>> 拾取|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r边上的|cRXP_LOOT_地鼠指挥棒|r, |cRXP_LOOT_地鼠训练手册|r和|cRXP_LOOT_开孔的箱子|r
.collect 6684,1,1221,1 
.goto The Barrens,62.340,37.607
.collect 5897,1,1221,1 
.goto The Barrens,62.332,37.623
.collect 5880,1,1221,1 
.goto The Barrens,62.323,37.620
step
#completewith next
.goto The Barrens,53.40,52.07,200,0
.goto The Barrens,51.0,79.0,50 >> 向南前往尘泥沼泽边界上的树荫旅店
step
>>点击地上的|cRXP_PICK_蹄印|r
>>点击壁炉上方的|cRXP_PICK_黑色盾牌|r
>>点击木板上的|cRXP_PICK_塞拉摩卫兵徽章|r
.accept 1284 ,, Suspicious Hoofprints
.goto Dustwallow Marsh,29.705,47.645
.accept 1253 ,, The Black Shield
.goto Dustwallow Marsh,29.631,48.606
.accept 1252 ,, Lieutenant Paval Reethe
.goto Dustwallow Marsh,29.832,48.243
step
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎泥·杜特非|r
.accept 1177 ,, Hungry
.target Mudcrush Durtfeet
step
#completewith next
.goto The Barrens,44.213,91.217,0
.goto Thousand Needles,32.09,22.33
.zone Thousand Needles >> 前往千针石林
step
.goto Thousand Needles,30.725,24.346
>> 拾取地上的|T133741:0|t[|cRXP_LOOT_亨里格·独眉的日记|r]
.use 5791 >>|cRXP_WARN_使用|T133741:0|t[|cRXP_LOOT_亨里格·独眉的日记|r]并接受任务|r
.accept 1100 ,, Lonebrow's Journal
step
#completewith next
.goto Thousand Needles,8.456,17.953,0
.goto Feralas,89.50,45.85,50 >> 前往萨兰纳尔
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛希亚娜|r
.goto Feralas,89.497,45.853
.fp Thalanaar >> 开启萨兰纳尔飞行点
.target Thyssiana
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法芬德尔|r
.turnin 1100 ,, Lonebrow's Journal
.accept 1101 ,, The Crone of the Kraul
.target Falfindel Waywarder
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法芬德尔|r
.turnin 1100 ,, Lonebrow's Journal
.target Falfindel Waywarder
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法芬德尔|r
.turnin 1059 ,, Reclaiming the Charred Vale
.target Falfindel Waywarder
.isOnQuest 1059
step
.dungeon RFK
#completewith next
.goto Thousand Needles,10.88,33.24,0
.goto Thousand Needles,11.01,38.31,0
.goto Thousand Needles,13.27,38.47,0
.goto Thousand Needles,17.46,41.62,0
.zone The Barrens >> 在寻找队伍前往剃刀沼泽时刷|cRXP_ENEMY_风巢双足翼龙|r, |cRXP_ENEMY_风巢翼龙之后|r和|cRXP_ENEMY_风巢飞龙族王|r
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
.dungeon RFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.877,70.339
.subzone 491,2 >> 进入剃刀沼泽
step
.dungeon RFK
>> 击杀|cRXP_ENEMY_卡尔加·刺肋|r. 拾取她的|cRXP_LOOT_卡尔加·刺肋的心脏|r
.complete 1101,1 
.isOnQuest 1101
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尔拉斯·静水|r和|cRXP_FRIENDLY_进口商威利克斯|r
.accept 1142 ,, Mortality Wanes
.accept 1144 ,, Willix the Importer
.target Heralath Fallowbrook
.target Willix the Importer
step
.dungeon RFK
#completewith next
>>击杀剃刀沼泽内的所有|cRXP_ENEMY_怪物|r. 拾取|cRXP_LOOT_塔莎拉的坠饰|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>> 护送|cRXP_FRIENDLY_进口商威利克斯|r穿越剃刀沼泽
>>|cRXP_WARN_确保你在|cRXP_FRIENDLY_进口商威利克斯|r附近否则任务可能完成不了|r
.complete 1144,1 
.isOnQuest 1144
step
.dungeon RFK
#completewith next
>>击杀剃刀沼泽内的所有|cRXP_ENEMY_怪物|r. 拾取|cRXP_LOOT_塔莎拉的坠饰|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_进口商威利克斯|r
.turnin 1144 ,, Willix the Importer
.target Willix the Importer
.isQuestComplete 1144
step
.dungeon RFK
>>|cRXP_WARN_在副本入口到第一个路口左转. 到达尽头的藤蔓处, 在你看到|cRXP_ENEMY_阿迦玛|r的地方跳下去|r
>>|cRXP_WARN_在下面与你的队友一起击杀|cRXP_ENEMY_阿迦玛|r清出一片空地|r
>>|cRXP_WARN_在此处使用|r|T132765:0|t[开孔的箱子]|cRXP_WARN_召唤|cRXP_FRIENDLY_地鼠|r. 你需要一些技巧来找到正确的召唤地点|r
>>|cRXP_WARN_使用|r|T135474:0|t[地鼠指挥棒]|cRXP_WARN_指挥|cRXP_FRIENDLY_地鼠|r挖出|r|cRXP_LOOT_蓝叶薯|r
>>|cRXP_WARN_一旦地鼠挖出来就拾取|cRXP_LOOT_蓝叶薯|r|r
>>|cRXP_WARN_继续使用|r|T135474:0|t[地鼠指挥棒]|cRXP_WARN_指挥地鼠挖. 重复此过程直到你有6个|r|cRXP_LOOT_蓝叶薯|r
>>|cRXP_WARN_如果你的 |cRXP_FRIENDLY_地鼠|r消失了, 使用|r|T132765:0|t[开孔的箱子]|cRXP_WARN_召唤另一只出来. 注意你只能召唤5次|r
.complete 1221,1 
.use 5880 
.use 6684 
.target Snufflenose Gopher
.isOnQuest 1221
step
.dungeon RFK
>>击杀剃刀沼泽内的所有|cRXP_ENEMY_怪物|r. 拾取|cRXP_LOOT_塔莎拉的坠饰|r
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法芬德尔|r
.turnin 1101 ,, The Crone of the Kraul
.target Falfindel Waywarder
.isQuestComplete 1101
step
.isOnQuest 1135
.goto Thousand Needles,13.136,34.221,40,0
.goto Thousand Needles,10.88,33.24,50,0
.goto Thousand Needles,11.01,38.31,50,0
.goto Thousand Needles,13.27,38.47,50,0
.goto Thousand Needles,17.46,41.62,50,0
.goto Thousand Needles,11.07,35.59
>> 击杀|cRXP_ENEMY_风巢双足翼龙|r, |cRXP_ENEMY_风巢翼龙之后|r和|cRXP_ENEMY_风巢飞龙族王|r. 拾取他们的|cRXP_LOOT_毒囊|r
.complete 1135,1 
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> 前往沙漠赛道
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
>>|cRXP_WARN_先不要接受另一个任务|r
.accept 1110 ,, Rocket Car Parts
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r和|cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1104 ,, Salt Flat Venom
.goto Thousand Needles,78.064,77.126 
.turnin 1179 ,, The Brassbolts Brothers
.accept 1105 ,, Hardened Shells
.goto Thousand Needles,78.143,77.120 
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.accept 1176 ,, Load Lightening
.target Pozzik
step
.goto Thousand Needles,81.635,77.953
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛道管理员泽尔林|r
.accept 1175 ,, A Bump in the Road
.target Trackmaster Zherin
step
#som
#label sflats
#sticky
>>围绕赛道绕圈并沿途击杀怪物(|cRXP_ENEMY_秃鹫, 乌龟, 蜥蜴, 蝎子|r)并拾取地上的赛车零件
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.collect 3712,10,555,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1110,1 
.mob Salt Flats Vulture
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk

step
>>|cRXP_WARN_围绕闪光平原绕圈直到所有任务目标完成|r
>> 击杀|cRXP_ENEMY_盐湖食腐鹫|r和|cRXP_ENEMY_盐湖秃鹰|r. 拾取他们的|cRXP_LOOT_骨头|r
>> 击杀|cRXP_ENEMY_盐壳龟|r, |cRXP_ENEMY_盐壳掘地龟|r和|cRXP_ENEMY_盐壳钳嘴龟|r. 拾取他们的|cRXP_LOOT_壳|r和|cRXP_LOOT_龟肉|r
>>|cRXP_WARN_不要偏离路线去收集|r|cRXP_LOOT_龟肉|r
>> 击杀|cRXP_ENEMY_恐蝎劫夺者|r和|cRXP_ENEMY_恐蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_盐石蜥蜴|r, |cRXP_ENEMY_盐石水晶蜥蜴|r和|cRXP_ENEMY_盐石凝视者|r
>>打开|cRXP_PICK_火箭车碎片|r. 拾取|cRXP_LOOT_火箭车零件|r
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.collect 3712,10,555,1,1 
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Saltstone Gazer
.mob Scorpid Reaver
.mob Scorpid Terror
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛道管理员泽尔林|r
.goto Thousand Needles,81.635,77.953
.turnin 1175 ,, A Bump in the Road
.target Trackmaster Zherin
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1176 ,, Load Lightening
.accept 1178 ,, Goblin Sponsorship
.target Pozzik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r和|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1104 ,, Salt Flat Venom
.goto Thousand Needles,78.064,77.126 
.turnin 1105 ,, Hardened Shells
.goto Thousand Needles,78.143,77.120 
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1110 ,, Rocket Car Parts
.accept 1111 ,, Wharfmaster Dizzywig
.accept 5762 ,, Hemet Nesingwary
.target Kravel Koalbeard
step
#completewith next
.goto Tanaris,51.01,29.35,150 >> 前往塔纳利斯
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fp Tanaris>> 开启塔纳利斯飞行点
.target Bera Stonehammer
step
#completewith DWallow
.hs >> 炉石回塞拉摩
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.isOnQuest 1135
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲欧拉·长耳|r
.goto Dustwallow Marsh,66.459,45.147
.turnin 1135 ,, Highperch Venom
.target Fiora Longears
step
#completewith next
.goto Dustwallow Marsh,68.23,48.82,25 >> 前往城堡并上楼
step
#label DWallow
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖兰·维米斯上尉|r
.turnin 1252 ,, Lieutenant Paval Reethe
.accept 1259 ,, Lieutenant Paval Reethe
.turnin 1253 ,, The Black Shield
.accept 1319 ,, The Black Shield
.turnin 1284 ,, Suspicious Hoofprints
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,68.04,48.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰索兰副官|r
.turnin 1259 ,, Lieutenant Paval Reethe
.accept 1285 ,, Daelin's Men
.target Adjutant Tesoran
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖兰·维米斯上尉|r
.turnin 1285 ,, Daelin's Men
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,64.756,50.426
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡兹·双链|r
.turnin 1319 ,, The Black Shield
.accept 1320 ,, The Black Shield
.target Caz Twosprocket
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖兰·维米斯上尉|r
.turnin 1320 ,, The Black Shield
.target Captain Garran Vimes
step
.dungeon RFK
.isQuestComplete 1142
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.301
.fly Darnassus >> 飞往达纳苏斯
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
.dungeon RFK
.isQuestComplete 1142
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.dungeon RFK
.isQuestComplete 1142
.goto Darnassus,62.21,57.23,10,0
.goto Darnassus,66.02,59.39,10,0
.goto Darnassus,69.529,67.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔莎拉·静水|r对话
.turnin 1142 ,, Mortality Wanes
.target Treshala Fallowbrook
step
.dungeon RFK
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门回到鲁瑟兰村
.zoneskip Darnassus,1
step
.dungeon RFK
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Ratchet>> 飞往棘齿城
.target Vesprystus
.zoneskip Teldrassil,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.301
.fly Ratchet>> 飞往棘齿城
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
.dungeon RFK
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1221 ,, Blueleaf Tubers
.target Mebok Mizzyrix
.isQuestComplete 1221
step << Warrior
#completewith next
.goto The Barrens,65.83,48.17,55,0
.goto The Barrens,68.34,48.84,50 >> 前往勇士岛
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1718 ,, The Islander
.accept 1719 ,, The Affray
.target Klannoc Macleod
step << Warrior
.goto The Barrens,68.606,48.720
>>|cRXP_WARN_踏上大门以开启格斗考验|r
>> 击杀|cRXP_ENEMY_挑战者|r直到|cRXP_ENEMY_比格维尔|r出现
>> 击杀|cRXP_ENEMY_比格维尔|r
.complete 1719,2 
.complete 1719,1 
.mob Affray Challenger
.mob Big Will
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1719 ,, The Affray
.accept 1791 ,, The Windwatcher
.target Klannoc Macleod
step
.goto The Barrens,62.680,36.234
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加兹鲁维|r
.turnin 1178 ,, Goblin Sponsorship
.accept 1180 ,, Goblin Sponsorship
.target Gazlowe
step << Warlock
.isOnQuest 4736
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.goto The Barrens,62.509,35.449
.turnin 4736 ,, In Search of Menara Voidrender
.target Menara Voidrender
step << Warlock
.isOnQuest 4738
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.goto The Barrens,62.509,35.449
.turnin 4738 ,, In Search of Menara Voidrender
.target Menara Voidrender
step << Warlock
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 1798 ,, Seeking Strahad
.accept 1758 ,, Tome of the Cabal
.target Strahad Farsan
step
.goto The Barrens,63.352,38.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 ,, Wharfmaster Dizzywig
.accept 1112 ,, Parts for Kravel
.turnin 1039 ,, The Barrens Port
.accept 1040 ,, Passage to Booty Bay
.target Wharfmaster Dizzywig
step
.goto The Barrens,63.677,38.618
>>|cRXP_WARN_等待时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.zone Stranglethorn Vale >> 乘船前往藏宝海湾
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 34-35 荆棘谷 I
#next 35-36 希尔斯布莱德丘陵/阿拉希高地 II
step
.goto Stranglethorn Vale,26.345,73.564
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_码头管理员罗兹基尔|r
.turnin 1180 ,, Goblin Sponsorship
.accept 1181 ,, Goblin Sponsorship
.target Wharfmaster Lozgil
step
.goto Stranglethorn Vale,27.600,77.481
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯库提|r
.turnin 2904 ,, A Fine Mess
.isQuestComplete 2904
.target Scooty
step
.isQuestTurnedIn 1038
.goto Stranglethorn Vale,27.368,74.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅行者拉兹戈特|r
.turnin 1040 ,, Passage to Booty Bay
.accept 1041 ,, The Caravan Road
.target Caravaneer Ruzzgot
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 605 ,, Singing Blue Shards
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯金德|r
.home >>绑定炉石到藏宝海湾
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在顶楼与|cRXP_FRIENDLY_科博克|r和|cRXP_FRIENDLY_克拉兹克|r对话
.accept 213 ,, Hostile Takeover
.goto Stranglethorn Vale,27.000,77.124
.accept 198 ,, Supplies to Private Thorsen
.accept 201 ,, Investigate the Camp
.accept 616 ,, The Haunted Isle
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大财主里维加兹|r
.turnin 616 ,, The Haunted Isle
.accept 578 ,, The Stone of the Tides
.turnin 1181 ,, Goblin Sponsorship
.accept 1182 ,, Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r和|cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 5800 >>将以下物品存入银行:
>>|T132763:0|t[克拉维尔的零件] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.accept 575 ,, Supply and Demand
.target Drizzlik
step
.destroy 3898 >>摧毁|T134939:0|t[图书馆手稿]
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> 飞往西部荒野
.target Gyll
.subzoneskip 35,1 
step
#completewith ThorsenR
.goto Duskwood,17.72,29.07
.zone Duskwood >> 前往暮色森林
step
.isOnQuest 231
>> 点击|cRXP_PICK_饱经风霜的坟墓|r
.goto Duskwood,17.72,29.07
.turnin 231 ,, A Daughter's Love
step
.isQuestTurnedIn 231
.destroy 2154 >> 摧毁|T133741:0|t[摩根·拉迪莫尔的故事]
step
#completewith ThorsenR
.goto Duskwood,44.598,87.565,50 >> 前往北荆棘谷
step
#som
#completewith ThorsenR
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >> 向南前往荆棘谷
step
#completewith Fern
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_留意|cRXP_FRIENDLY_列兵托尔森|r的特殊事件. 他每30分钟从叛军营地出发沿路巡逻|r
>>|cRXP_FRIENDLY_列兵托尔森|r|cRXP_WARN_会被2名|cRXP_ENEMY_库尔森的密探|r攻击. 如果你没遇到这个事件就忽略这一步|r
>>击杀2名|cRXP_ENEMY_库尔森的密探|r然后接受|cRXP_FRIENDLY_列兵托尔森|r的任务. (在救了他后才能接到)
.accept 215 ,, Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#label ThorsenR
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在叛军营地与|cRXP_FRIENDLY_列兵托尔森|r对话
>>|cRXP_WARN_如果|cRXP_FRIENDLY_列兵托尔森|r不在叛军营地, 他有可能在特殊事件过程中. 如果他不在就跳过这步.如果你还没接他的任务就沿路下去找他|r
.turnin 198 ,, Supplies to Private Thorsen
.target Private Thorsen
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤瓦中士|r
.accept 203 ,, The Second Rebellion
.accept 204 ,, Bad Medicine
.target Sergeant Yohwa
step << skip 
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.accept 200 ,, Bookie Herod
.target Lieutenant Doren
step
#completewith Fern
>> 击杀|cRXP_ENEMY_石喉蜥蜴|r和|cRXP_ENEMY_晶背蜥蜴|r. 拾取他们的|cRXP_LOOT_碎片|r
>>|cRXP_ENEMY_石喉蜥蜴|r|cRXP_WARN_和|r|cRXP_ENEMY_晶背蜥蜴|r|cRXP_WARN_会施放|r|T132154:0|t[水晶凝视]|cRXP_WARN_使你眩晕6秒. 离开它的近战范围就能躲避此技能|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
#completewith Fern
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>> 击杀|cRXP_ENEMY_淡水鳄|r. 拾取他们的|cRXP_LOOT_皮|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 5762 ,, Hemet Nesingwary
step
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾耶克·罗欧克|r
.accept 186 ,, Tiger Mastery
.target Ajeck Rouack
step
#completewith next
.goto Stranglethorn Vale,44.93,10.25,0
>> 击杀|cRXP_ENEMY_库尔森丛林战士|r和|cRXP_ENEMY_库尔森医师|r. 拾取库尔森医师掉落的|cRXP_LOOT_密林药剂|r
>>|cRXP_ENEMY_库尔森医师|r|cRXP_WARN_也会掉落|r|T134413:0|t[活根草]|cRXP_WARN_. 为你的|r|T132403:0|t[|cFF0070FF旋风之斧|r]|cRXP_WARN_任务保留它们|r << Warrior
>>|cRXP_WARN_保留你找到的所有|r|T134332:0|t[荆棘谷的青山 - 书页]|cRXP_WARN_. 交易或者卖掉多余的|r
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#label Fern
.goto Stranglethorn Vale,44.086,9.538
>>打开|cRXP_PICK_库尔森补给品|r. 拾取|cRXP_LOOT_毒草汁液|r
.complete 204,2 
step
.goto Stranglethorn Vale,44.93,10.25
>> 击杀|cRXP_ENEMY_库尔森丛林战士|r和|cRXP_ENEMY_库尔森医师|r. 拾取库尔森医师掉落的|cRXP_LOOT_密林药剂|r
>>|cRXP_ENEMY_库尔森医师|r|cRXP_WARN_也会掉落|r|T134413:0|t[活根草]|cRXP_WARN_. 为你的|r|T132403:0|t[|cFF0070FF旋风之斧|r]|cRXP_WARN_任务保留它们|r << Warrior
>>|cRXP_WARN_保留你找到的所有|r|T134332:0|t[荆棘谷的青山 - 书页]|cRXP_WARN_. 交易或者卖掉多余的|r
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#completewith next
>> 击杀|cRXP_ENEMY_石喉蜥蜴|r和|cRXP_ENEMY_晶背蜥蜴|r. 拾取他们的|cRXP_LOOT_碎片|r
>>|cRXP_ENEMY_石喉蜥蜴|r|cRXP_WARN_和|r|cRXP_ENEMY_晶背蜥蜴|r|cRXP_WARN_会施放|r|T132154:0|t[水晶凝视]|cRXP_WARN_使你眩晕6秒. 离开它的近战范围就能躲避此技能|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,46.75,15.81
>> 击杀|cRXP_ENEMY_荆棘谷猛虎|r
.complete 186,1 
.mob Stranglethorn Tiger
step
#completewith RebelCampTurnins
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_留意|cRXP_FRIENDLY_列兵托尔森|r的特殊事件. 他每30分钟从叛军营地出发沿路巡逻|r
>>|cRXP_FRIENDLY_列兵托尔森|r|cRXP_WARN_会被2名|cRXP_ENEMY_库尔森的密探|r攻击. 如果你没遇到这个事件就忽略这一步|r
>>击杀2名|cRXP_ENEMY_库尔森的密探|r然后接受|cRXP_FRIENDLY_列兵托尔森|r的任务. (在救了他后才能接到)
.accept 215 ,, Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_列兵托尔森|r
>>|cRXP_WARN_你可能需要等待|cRXP_FRIENDLY_列兵托尔森|r刷新|r
.turnin 198 ,, Supplies to Private Thorsen
.target Private Thorsen
step
#label RebelCampTurnins
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤瓦中士|r
.turnin 203 ,, The Second Rebellion
.turnin 204 ,, Bad Medicine
.target Sergeant Yohwa
step
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡雷布下士|r
.accept 210 ,, Krazek's Cookery
.target Corporal Kaleb
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
>>|cRXP_WARN_暂时不要接受后续任务|r
.turnin 215 ,, Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step
#completewith HemetTurnins
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_留意|cRXP_FRIENDLY_列兵托尔森|r的特殊事件. 他每30分钟从叛军营地出发沿路巡逻|r
>>|cRXP_FRIENDLY_列兵托尔森|r|cRXP_WARN_会被2名|cRXP_ENEMY_库尔森的密探|r攻击. 如果你没遇到这个事件就忽略这一步|r
>>击杀2名|cRXP_ENEMY_库尔森的密探|r然后接受|cRXP_FRIENDLY_列兵托尔森|r的任务. (在救了他后才能接到)
.accept 215 ,, Jungle Secrets
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#completewith next
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>> 击杀|cRXP_ENEMY_淡水鳄|r. 拾取他们的|cRXP_LOOT_皮|r
.complete 575,1 
.mob River Crocolisk
step
#label HemetTurnins
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.accept 194 ,, Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.turnin 186 ,, Tiger Mastery
.accept 187 ,, Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.accept 191 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,36.8,10.6
>> 击杀|cRXP_ENEMY_淡水鳄|r. 拾取他们的|cRXP_LOOT_皮|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>> 击杀|cRXP_ENEMY_黑豹|r
.complete 191,1 
.mob Panther
step
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93,60,0
.goto Stranglethorn Vale,34.36,18.58,60,0
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93
>> 击杀|cRXP_ENEMY_老年荆棘谷猛虎|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.goto Stranglethorn Vale,30.4,12.4,60,0
.goto Stranglethorn Vale,29.4,8.8,60,0
.goto Stranglethorn Vale,28.2,12.0,60,0
.goto Stranglethorn Vale,28.2,16.4,60,0
.goto Stranglethorn Vale,29.8,11.2
>> 击杀|cRXP_ENEMY_黑豹|r
.complete 191,1 
.mob Panther
step
#completewith next
.goto Stranglethorn Vale,27.35,18.52,0
.goto Stranglethorn Vale,25.53,17.73,0
.goto Stranglethorn Vale,23.25,17.21,0
>> 击杀|cRXP_ENEMY_晶背蜥蜴|r. 拾取他们的|cRXP_LOOT_碎片|r
>>|cRXP_ENEMY_晶背蜥蜴|r|cRXP_WARN_会施放|r|T132154:0|t[水晶凝视]|cRXP_WARN_使你眩晕6秒. 离开它的近战范围就能躲避此技能|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,27.61,15.39,60,0
.goto Stranglethorn Vale,25.91,16.33,60,0
.goto Stranglethorn Vale,24.24,15.84,60,0
.goto Stranglethorn Vale,27.16,16.06
>> 击杀|cRXP_ENEMY_荆棘谷迅猛龙|r
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto Stranglethorn Vale,27.35,18.52,50,0
.goto Stranglethorn Vale,25.53,17.73,50,0
.goto Stranglethorn Vale,23.25,17.21,50,0
.goto Stranglethorn Vale,25.53,17.73
>> 击杀|cRXP_ENEMY_晶背蜥蜴|r. 拾取他们的|cRXP_LOOT_碎片|r
>>|cRXP_ENEMY_晶背蜥蜴|r|cRXP_WARN_会施放|r|T132154:0|t[水晶凝视]|cRXP_WARN_使你眩晕6秒. 离开它的近战范围就能躲避此技能|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,21.580,21.842
.goto Stranglethorn Vale,21.580,21.842 >> 前往Haunted Island
.complete 578,1 
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> 前往奈辛瓦里远征队营地
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.turnin 194 ,, Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.turnin 187 ,, Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.turnin 191 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
>>|cRXP_WARN_暂时不要接受后续任务|r
.turnin 215 ,, Jungle Secrets
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step
#completewith next
.hs >> 炉石回藏宝海湾
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 605 ,, Singing Blue Shards
.target Crank Fizzlebub
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在顶楼与|cRXP_FRIENDLY_科博克|r和|cRXP_FRIENDLY_克拉兹克|r对话
.accept 189 ,, Bloodscalp Ears
.goto Stranglethorn Vale,27.000,77.124
.turnin 201 ,, Investigate the Camp
.turnin 210 ,, Krazek's Cookery
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大财主里维加兹|r
.turnin 578 ,, The Stone of the Tides
.accept 601 ,, Water Elementals
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.turnin 575 ,, Supply and Demand
.accept 577 ,, Some Assembly Required
.target Drizzlik
step
#era
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Duskwood >> 飞往夜色镇
.target Gyll
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_书记员达尔塔|r
.goto Duskwood,72.6,46.8
.turnin 1041 ,, The Caravan Road
.accept 1042 ,, The Carevin Family
.target Clerk Daltry
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔纳森·卡尔文|r
.goto Duskwood,75.2,48.8
.turnin 1042 ,, The Carevin Family
.accept 1043 ,, The Scythe of Elune
.target Jonathan Carevin
step
#completewith next
.goto Duskwood,73.20,76.19,30 >> 前往罗兰之墓
.isQuestTurnedIn 1040
step
#era
.isQuestTurnedIn 1040
>>在洞穴最深处点击|cRXP_PICK_一堆泥土|r
.goto Duskwood,73.527,79.143
.complete 1043,1 
step
#completewith next
.goto Duskwood,75.2,48.8,100 >> 前往夜色镇
.isQuestTurnedIn 1040
step
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔纳森·卡尔文|r
.goto Duskwood,75.2,48.8
.turnin 1043 ,, The Scythe of Elune
.accept 1044 ,, Answered Questions
.target Jonathan Carevin
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << !Mage
.goto Stranglethorn Vale,27.530,77.787
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.fly Stormwind>> 飞往暴风城
.target Gyll
.zoneskip Stranglethorn Vale,1
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.486,44.287
.fly Stormwind>> 飞往暴风城
.target Felicia Maline
.zoneskip Duskwood,1
step << !Mage
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.53,77.78
.fly Stormwind>> 飞往暴风城
.target Gyll
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 3721,3521 >> 从银行取出下列物品:
>>|T133461:0|t[法尔林的报告] 
>>|T134939:0|t[复杂的密码信] (如果有的话) 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>将以下物品存入银行:
>>你找到的所有|T134332:0|t[荆棘谷的青山 - 书页]
.target Newton Burnside
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,71.68,25.60,40 >> 前往暴风要塞
step
.goto Stormwind City,77.30,17.18,25,0
.goto Stormwind City,72.571,15.888
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_山缪森少校|r
.turnin 563 ,, Reassignment
.target Major Samuelson
step
.isOnQuest 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
.turnin 337 ,, An Old History Book
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
.accept 538 ,, Southshore
.target Milton Sheaf
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.turnin 322 ,, Blessed Arm
.accept 325 ,, Armed and Ready
.target Grimand Elmore
.isQuestTurnedIn 324
step << !Mage
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> 进入矿道地铁. 乘坐地铁前往铁炉堡
>>|cRXP_WARN_你可以在等地铁时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_尝试登出跳过操作. 点击此处查看视频参考|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> 传送到铁炉堡
step
#label ReclaimersDesolace
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗顿·石锤|r
>>|cRXP_FRIENDLY_罗顿·石锤|r|cRXP_WARN_在探险大厅内巡逻|r
.accept 1453 ,, Reclaimers' Business in Desolace
.target Roetten Stonehammer
step << Warlock
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗姆·粗臂|r
.turnin 1758 ,, Tome of the Cabal
.accept 1802 ,, Tome of the Cabal
.target Krom Stoutarm
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的|r|T136220:0|t[魅魔]|cRXP_BUY_或者|r|T136221:0|t[虚空行者]|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r
.trainer >> 学习职业技能
.target Briarthorn
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 35-36 希尔斯布莱德丘陵/阿拉希高地 II
#next 36-37 凄凉之地
step
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Southshore >> 飞往南海镇
.target Gryth Thurden
.zoneskip Alterac Mountains
.zoneskip Hillsbrad Foothills
.zoneskip Arathi Highlands
step
#completewith LeaveSS
>>|cRXP_WARN_|cRXP_ENEMY_幽暗刺客|r袭击南海镇是一个随机事件|r
>>如果你在南海镇遇到|cRXP_ENEMY_幽暗刺客|r就击杀他们. 拾取|T134939:0|t[|cRXP_LOOT_刺客的契约|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_刺客的契约|r]并接受任务|r
>>|cRXP_WARN_如果没有遇到这个事件就跳过这步|r
.collect 3668,1,522
.use 3668
.accept 522 ,, Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·杨斯|r
>>|cRXP_BUY_购买1个|r|T134059:0|t[舒心草]
.collect 3713,1,555,1 
.target Micha Yance
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达伦·玛尔维|r
.accept 564 ,, Costly Menace
.target Darren Malvew
step
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师杰森|r
.accept 555 ,, Soothing Turtle Bisque
.target Chef Jessen
step
.isQuestComplete 555
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师杰森|r
.goto Hillsbrad Foothills,51.885,58.679
.turnin 555 ,, Soothing Turtle Bisque
.target Chef Jessen
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官雷德帕斯|r
.accept 500 ,, Crushridge Bounty
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
>>|cRXP_WARN_不要接受后续任务|r
.turnin 522 ,, Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
#label LeaveSS
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.accept 505 ,, Syndicate Assassins
.target Magistrate Henry Maleb
step << Warlock
#completewith next
.goto Hillsbrad Foothills,27.783,72.789,70 >> 前往西部海岸
step << Warlock
.goto Hillsbrad Foothills,27.783,72.789
>>打开|cRXP_PICK_阴谋之书|r. 拾取|cRXP_LOOT_发霉的书籍|r
.complete 1802,1 
step
.isOnQuest 689
#completewith next
.goto Hillsbrad Foothills,45.46,31.25,40 >> 进入达隆山雪人洞
step
.isOnQuest 689
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
>> 拾取地上的|cRXP_LOOT_奥特兰克花岗岩|r
>>|cRXP_LOOT_奥特兰克花岗岩|r|cRXP_WARN_会在整个洞穴内刷新|r
.complete 689,1 
step
#completewith FinishSyndicate
.goto Alterac Mountains,30.92,84.58,0,0
>> 击杀|cRXP_ENEMY_山地狮|r和|cRXP_ENEMY_巨型山地狮|r
.complete 564,1 
.complete 564,2 
.mob Mountain Lion
.mob Hulking Mountain Lion
step
#completewith next
>> 击杀|cRXP_ENEMY_辛迪加窃贼|r和|cRXP_ENEMY_辛迪加劫匪|r
.complete 505,1 
.complete 505,2 
.mob Syndicate Footpad
.mob Syndicate Thief
step
.goto Alterac Mountains,47.936,82.154,-1
.goto Alterac Mountains,58.317,67.951,-1
>>点击桌子上的|cRXP_PICK_辛迪加文档|r
>>|cRXP_WARN_|cRXP_PICK_辛迪加文档|r可能刷在2个|cRXP_ENEMY_辛迪加营地|r中的一个. 查看地图找到2个营地的位置|r
.accept 510 ,, Foreboding Plans
.accept 511 ,, Encrypted Letter
step
#label FinishSyndicate
>> 击杀|cRXP_ENEMY_辛迪加窃贼|r和|cRXP_ENEMY_辛迪加劫匪|r
.goto Alterac Mountains,58.31,67.92,90,0
.goto Alterac Mountains,48.0,82.0,90,0
.goto Alterac Mountains,58.31,67.92
.goto Alterac Mountains,48.0,82.0,0
.complete 505,1 
.complete 505,2 
.mob Syndicate Footpad
.mob Syndicate Thief
step
.goto Alterac Mountains,48.01,77.01,65,0
.goto Alterac Mountains,44.03,78.36,65,0
.goto Alterac Mountains,38.54,87.49,65,0
.goto Alterac Mountains,38.78,91.07,65,0
.goto Alterac Mountains,33.67,83.36,65,0
.goto Alterac Mountains,30.68,85.06,65,0
.goto Alterac Mountains,38.78,91.07
>> 击杀|cRXP_ENEMY_山地狮|r和|cRXP_ENEMY_巨型山地狮|r
.complete 564,1 
.complete 564,2 
.mob Mountain Lion
.mob Hulking Mountain Lion
step
.goto Alterac Mountains,46.26,60.57,60,0
.goto Alterac Mountains,49.69,55.07,60,0
.goto Alterac Mountains,54.53,53.42,60,0
.goto Alterac Mountains,50.00,55.96
>> 击杀|cRXP_ENEMY_破碎岭食人魔|r和|cRXP_ENEMY_破碎岭蛮兵|r. 拾取他们的|cRXP_LOOT_肮脏的指节骨|r
.complete 500,1 
.mob Crushridge Ogre
.mob Crushridge Brute
step
.goto Hillsbrad Foothills,69.30,12.40
>> 击杀|cRXP_ENEMY_钳嘴龟|r. 拾取他们的|cRXP_LOOT_龟肉|r
>>|cRXP_WARN_沿着河上下刷直到你完成此任务|r
.collect 3712,10,555,1
.mob Snapjaw
step << Warrior
.goto Alterac Mountains,80.499,66.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1791 ,, The Windwatcher
.accept 1712 ,, Cyclonian
.target Bath'rah the Windwatcher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.goto Western Plaguelands,42.924,85.061
.fp Chillwind>> 开启西瘟疫之地飞行点
.target Bibilfaz Featherwhistle
step
#completewith letter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>> 飞往南海镇
.target Bibilfaz Featherwhistle
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米莎·杨斯|r
>>|cRXP_BUY_购买1个|r|T134059:0|t[舒心草]
.collect 3713,1,555,1 
.target Micha Yance
step
#label letter
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 511 ,, Encrypted Letter
.accept 514 ,, Letter to Stormpike
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师杰森|r
.turnin 555 ,, Soothing Turtle Bisque
.target Chef Jessen
step
.goto Hillsbrad Foothills,49.473,58.732
>>对话|cRXP_FRIENDLY_治安官雷德帕斯|r
.turnin 500 ,, Crushridge Bounty
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 505 ,, Syndicate Assassins
.turnin 510 ,, Foreboding Plans
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达伦·玛尔维|r
.turnin 564 ,, Costly Menace
.target Darren Malvew
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> 飞往阿拉希高地
.target Darla Harris
.zoneskip Arathi Highlands
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_学徒克里汀|r
.accept 691 ,, Worth Its Weight in Gold
.target Apprentice Kryten
step
>>击杀|cRXP_ENEMY_枯木巨魔|r. 拾取他们的|cRXP_LOOT_獠牙|r
>> 击杀|cRXP_ENEMY_枯木巫医|r. 拾取他们的|cRXP_LOOT_医药包|r
>> 击杀|cRXP_ENEMY_枯木暗影猎手|r. 拾取他们的|cRXP_LOOT_暗影猎手的小刀|r
>>|cRXP_ENEMY_枯木暗影猎手|r|cRXP_WARN_只能在洞里找到|r
.complete 691,1 
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,2 
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,3 
.goto Arathi Highlands,68.38,75.92,30,0
.goto Arathi Highlands,68.20,79.47
.mob Witherbark Shadow Hunter
.mob Witherbark Witch Doctor
.mob Witherbark Shadowcaster
.mob Witherbark Troll
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_学徒克里汀|r
.turnin 691 ,, Worth Its Weight in Gold
.target Apprentice Kryten
step << Mage
#completewith next
.goto Arathi Highlands,45.73,46.09
.zone Ironforge >> 传送到铁炉堡
step << !Mage
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r
.goto Arathi Highlands,45.73,46.09
.fly Ironforge >> 飞往铁炉堡
.target Cedrik Prose
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷矛|r
.goto Ironforge,74.645,11.742
.turnin 514 ,, Letter to Stormpike
.target Prospector Stormpike
step
.isQuestComplete 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大石匠玛布勒斯坦|r
.goto Ironforge,39.03,88.05
.turnin 689 ,, A King's Tribute
.timer 75,Marblesten RP
.target Grand Mason Marblesten
step
.isQuestTurnedIn 689
>>|cRXP_WARN_等待剧情结束|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大石匠玛布勒斯坦|r
.goto Ironforge,39.03,88.05
.accept 700 ,, A King's Tribute
.target Grand Mason Marblesten
step
.isQuestTurnedIn 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦格尼·铜须国王|r
.goto Ironforge,39.09,56.19
.turnin 700 ,, A King's Tribute
.target King Magni Bronzebeard

]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 36-37 凄凉之地
#next 37-38 荆棘谷 II
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 5996 >> 从银行取出下列物品:
>>|T134797:0|t[水下呼吸药剂] (如果有的话)
.target Bailey Stonemantle
step << !Warlock
#ah
#completewith next
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行|r|cRXP_BUY_购买|r|T134797:0|t[水下呼吸药剂]
.collect 5996,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Mage
#completewith next
.goto Ironforge,55.506,47.746
.zone Darnassus >> 传送到达纳苏斯
step << !Mage
#completewith DesolaceArrive
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands >> 飞往湿地
.target Gryth Thurden
step << !Mage
.goto Wetlands,7.10,57.96,30,0
.goto Wetlands,4.61,57.26,15 >> 前往米奈希尔港码头
.zone Darkshore >> 乘船前往黑海岸
>>|cRXP_WARN_在等待前往黑海岸的船时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.isOnQuest 1044,1453 
step << !Mage
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.34,45.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r
.fly Teldrassil >> 飞往泰达希尔
.isOnQuest 1044
.target Caylais Moonfeather
step << !Mage
#completewith DesolaceArrive
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
.isOnQuest 1044
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞恩提尔·刃纹|r
.goto Darnassus,61.777,39.180
.turnin 1044 ,, Answered Questions
.target Thyn'tel Bladeweaver
.isOnQuest 1044
step << Mage
#completewith DesolaceArrive
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step << Mage
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Desolace >> 飞往凄凉之地
.target Vesprystus
.zoneskip Desolace
step << !Mage
.isQuestTurnedIn 1044
#completewith DesolaceArrive
.goto Darnassus,30.00,41.43,10 >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step << !Mage
.isQuestTurnedIn 1044
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Desolace >> 飞往凄凉之地
.target Vesprystus
.zoneskip Desolace
step
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r
.fly Desolace >> 飞往凄凉之地
.target Caylais Moonfeather
.zoneskip Darkshore,1
step
#label DesolaceArrive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板利莎瑞亚|r
.goto Desolace,66.275,6.554
.home >> 绑定炉石到尼耶尔前哨站
.target Innkeeper Lyshaerya
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1453 ,, Reclaimers' Business in Desolace
.accept 1458 ,, Reagents for Reclaimers Inc.
.accept 1454 ,, The Karnitol Shipwreck
.target Kreldig Ungor
step
#era/som
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔金斯下士|r和|cRXP_FRIENDLY_潘迪加斯上尉|r
.accept 1387 ,, Centaur Bounty
.goto Desolace,66.743,10.872
.accept 1382 ,, Strange Alliance
.goto Desolace,66.665,10.933
.target Corporal Melkins
.target Captain Pentigast
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦拉里尔·屠魔者|r
.accept 1437 ,, Vahlarriel's Search
.target Vahlarriel Demonslayer
step
.goto Desolace,72.96,18.47,70,0
.goto Desolace,79.45,17.65,70,0
.goto Desolace,78.09,22.50,70,0
.goto Desolace,76.32,25.08,70,0
.goto Desolace,73.96,22.05,70,0
.goto Desolace,72.51,17.93
>> 击杀|cRXP_ENEMY_怨怒萨特|r. 拾取他们的|cRXP_LOOT_爪子|r和|cRXP_LOOT_角|r
.complete 1458,1 
.complete 1458,2 
.mob Hatefury Trickster
.mob Hatefury Shadowstalker
.mob Hatefury Hellcaller
.mob Hatefury Betrayer
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1458 ,, Reagents for Reclaimers Inc.
.accept 1459 ,, Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#completewith ReagentsOne
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_老迈的科多兽|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_砂腭蜥蜴|r以使|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r刷新|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
.goto Desolace,56.522,17.844
>>点击地上的|cRXP_PICK_玛雷姆的箱子|r
.turnin 1437 ,, Vahlarriel's Search
.accept 1465 ,, Vahlarriel's Search
step
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.accept 5741 ,, Sceptre of Light
.target Azore Aldamort
step
#era/som
.goto Desolace,36.111,30.451
>> 点击地上的|cRXP_PICK_卡尼托的箱子|r
.turnin 1454 ,, The Karnitol Shipwreck
.accept 1455 ,, The Karnitol Shipwreck
step
#label ReagentsOne
.goto Desolace,36.069,30.407
>> 点击小桶上的|cRXP_PICK_拉克摩尔的日志|r
.accept 6161 ,, Claim Rackmore's Treasure!
step << !Warlock
#completewith next
.cast 7178 >> |cRXP_WARN_如果你有的话就|r|cRXP_WARN_使用|r|T134797:0|t[水下呼吸药剂]
.itemcount 5996,1 
.use 5996 
step << !Warlock
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>> 击杀|cRXP_ENEMY_枯钳巨螯龙虾人|r和|cRXP_ENEMY_枯钳龙虾人|r. 拾取|cRXP_LOOT_拉克摩尔的银钥匙|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step << Warlock
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>> 击杀|cRXP_ENEMY_枯钳巨螯龙虾人|r和|cRXP_ENEMY_枯钳龙虾人|r. 拾取|cRXP_LOOT_拉克摩尔的银钥匙|r
>>|cRXP_WARN_给自己上|r|T136148:0|t[水下呼吸]
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith ReagentsTwo
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_老迈的科多兽|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_砂腭蜥蜴|r以使|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r刷新|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
#completewith next
.goto Desolace,60.863,61.859,80 >> 前往科多兽坟场附近的|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r处
step
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.accept 5561 ,, Kodo Roundup
.target Smeed Scrabblescrew
step
#completewith next
.goto Desolace,54.95,63.08,100 >> 前往科多兽坟场
step
.goto Desolace,51.668,58.244
.goto Desolace,60.863,61.859,0
.use 13892 >>|cRXP_WARN_对|cRXP_ENEMY_远古科多兽|r和|cRXP_ENEMY_濒死的科多兽|r|cRXP_WARN_使用|r|T132488:0|t[科多兽诱引器]. 把它们带回|r|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r处
>>|cRXP_WARN_你每次只能带回1只|cRXP_FRIENDLY_被驯服的科多兽|r|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_一旦你把科多兽带回|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r处就|r对话|cRXP_FRIENDLY_被驯服的科多兽|r
.skipgossip
.complete 5561,1 
.target Tamed Kodo
.mob Ancient Kodo
.mob Dying Kodo
step
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.turnin 5561 ,, Kodo Roundup
.target Smeed Scrabblescrew
step
.goto Desolace,68.8,71.2,75,0
.goto Desolace,65.2,75.6,75,0
.goto Desolace,70.0,81.0,75,0
.goto Desolace,70.0,74.6,75,0
.goto Desolace,73.8,65.8,75,0
.goto Desolace,69.4,73.4
>> 击杀|cRXP_ENEMY_玛格拉姆半人马|r. 拾取他们的|cRXP_LOOT_耳朵|r
>>|cRXP_WARN_继续击杀|cRXP_ENEMY_玛格拉姆半人马|r直到你吉尔吉斯声望达到|cRXP_FRIENDLY_友善|r|r
.complete 1387,1 
.complete 1382,1 
.mob Magram Marauder
.mob Magram Mauler
.mob Magram Outrunner
.mob Magram Pack Runner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Windchaser
.mob Magram Wrangler
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1382 ,, Strange Alliance
.accept 1384 ,, Raid on the Kolkar
.target Uthek the Wise
step
#label ReagentsTwo
#completewith next

.hs >> 炉石回尼耶尔前哨站
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1455 ,, The Karnitol Shipwreck
.accept 1456 ,, The Karnitol Shipwreck
.target Kreldig Ungor
step
.isQuestComplete 1459
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1459 ,, Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
.goto Desolace,66.743,10.872
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦尔金斯下士|r
.turnin 1387 ,, Centaur Bounty
.target Corporal Melkins
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦拉里尔·屠魔者|r
.turnin 1465 ,, Vahlarriel's Search
.accept 1438 ,, Vahlarriel's Search
.target Vahlarriel Demonslayer
step
#completewith ReagentsThree
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_老迈的科多兽|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_砂腭蜥蜴|r以使|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r刷新|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
.goto Desolace,70.0,41.6,70,0
.goto Desolace,73.6,44.6,70,0
.goto Desolace,70.2,47.2,70,0
.goto Desolace,73.4,51.5,70,0
.goto Desolace,71.6,45.6
>>击杀|cRXP_ENEMY_科卡尔|r. 拾取他们的|cRXP_LOOT_护符|r
.complete 1384,1 
.mob Kolkar Centaur
.mob Kolkar Scout
.mob Kolkar Windchaser
.mob Kolkar Mauler
.mob Kolkar Destroyer
.mob Kolkar Battle Lord
.mob Kolkar Waylayer
.mob Kolkar Ambusher
step
.goto Desolace,62.314,38.965
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比布里·弗斯巴克|r
.accept 5501 ,, Bone Collector
.target Bibbly F'utzbuckle
step
#completewith next
#label ReagentsThree
.goto Desolace,55.75,28.88,110 >> 前往雷斧堡垒
step
.goto Desolace,55.170,30.149
>>Ascend the Watchtower
>>在塔顶击杀|cRXP_ENEMY_火刃先知|r. 拾取|cRXP_LOOT_节杖|r
>>|cRXP_WARN_这里可能只会刷新1只|cRXP_ENEMY_火刃先知|r. 你可能需要等待刷新|r
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.goto Desolace,55.31,27.45,25 >> 进入最大的堡垒
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳达·玛雷姆|r
.turnin 1438 ,, Vahlarriel's Search
.accept 1439 ,, Search for Tyranis
.target Dalinda Malem
step
#completewith next
.goto Desolace,53.32,29.18,25 >> 进入第二大的堡垒
step
>> 击杀|cRXP_ENEMY_泰拉尼斯·玛雷姆|r. 拾取他的|cRXP_LOOT_坠饰|r
.goto Desolace,53.008,29.078
.complete 1439,1 
.mob Tyranis Malem
step
#completewith next
.goto Desolace,55.31,27.45,25 >> 回去找|cRXP_FRIENDLY_黛琳达·玛雷姆|r
step
#completewith next
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳达·玛雷姆|r
.turnin 1439 ,, Search for Tyranis
.target Dalinda Malem
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_黛琳达·玛雷姆|r
>>|cRXP_WARN_这将开启护送任务|r
.accept 1440 ,, Return to Vahlarriel
.target Dalinda Malem
step
.goto Desolace,58.26,30.94
>>与|cRXP_FRIENDLY_黛琳达·玛雷姆|r一起安全地离开雷斧堡垒
.complete 1440,1 
.target Dalinda Malem
step
#completewith ReagentsFour
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_老迈的科多兽|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_砂腭蜥蜴|r以使|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r刷新|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
#label ReagentsFour
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.turnin 5741 ,, Sceptre of Light
.accept 6027 ,, Book of the Ancients
.target Azore Aldamort
step
#completewith BookofAncients
.goto Desolace,30.12,10.42,225 >> 游到拉纳加尔岛
step
#completewith BookofAncients
>>击杀|cRXP_ENEMY_滑刃娜迦|r. 拾取|cRXP_LOOT_拉克摩尔的金钥匙|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
#completewith BookofAncients
>> 击杀|cRXP_ENEMY_滑刃猎潮者|r和|cRXP_ENEMY_滑刃海巫|r. 拾取|cRXP_LOOT_卡尼托的背包|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
#label BookofAncients
.goto Desolace,28.250,6.670
>>点击|cRXP_PICK_毒蛇雕像|r以召唤|cRXP_ENEMY_柯拉加鲁领主|r
>> 击杀|cRXP_ENEMY_柯拉加鲁领主|r. 拾取|cRXP_LOOT_上古之书|r
.complete 6027,1 
.mob Lord Kragaru
step
#completewith next
>>击杀|cRXP_ENEMY_滑刃娜迦|r. 拾取|cRXP_LOOT_拉克摩尔的金钥匙|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>> 击杀|cRXP_ENEMY_滑刃猎潮者|r和|cRXP_ENEMY_滑刃海巫|r. 拾取|cRXP_LOOT_卡尼托的背包|r
>>|cRXP_WARN_你也可以在海底找到|cRXP_ENEMY_滑刃猎潮者|r和|cRXP_ENEMY_滑刃海巫|r|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>击杀|cRXP_ENEMY_滑刃娜迦|r. 拾取|cRXP_LOOT_拉克摩尔的金钥匙|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
>> 点击地上的|cRXP_PICK_拉克摩尔的箱子|r
.goto Desolace,30.005,8.706
.turnin 6161 ,, Claim Rackmore's Treasure!
step
#completewith ReagentsFive
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>> 击杀|cRXP_ENEMY_老迈的科多兽|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_砂腭蜥蜴|r以使|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r刷新|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.turnin 6027 ,, Book of the Ancients
.target Azore Aldamort
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1384 ,, Raid on the Kolkar
.accept 1370 ,, Stealing Supplies
.target Uthek the Wise
step
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,70.9,75.5
>>打开|cRXP_PICK_一袋肉|r. 拾取|cRXP_LOOT_粗制干肉|r
.complete 1370,1 
step
#label ReagentsFive
.goto Desolace,52.50,58.56
>> 在墓地拾取|cRXP_LOOT_科多兽骨|r
>>|cRXP_WARN_拾取它们可能会使|cRXP_ENEMY_科多亡魂|r刷新. |cRXP_ENEMY_科多亡魂|r不会掉落|r|cRXP_LOOT_科多兽骨|r
.complete 5501,1 
step
.goto Desolace,52.19,57.50,70,0
.goto Desolace,62.13,60.65,70,0
.goto Desolace,63.86,68.83,70,0
.goto Desolace,52.19,57.50
>> 击杀|cRXP_ENEMY_老迈的科多兽|r. 拾取他们的|cRXP_LOOT_老迈科多兽的毛皮|r
>>|cRXP_WARN_你现在必须完成这一步|r
.complete 1459,2 
.mob Aged Kodo
step
#completewith next
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r, |cRXP_ENEMY_荒土鞭尾蝎|r和|cRXP_ENEMY_荒土毒尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比布里·弗斯巴克|r
.turnin 5501 ,, Bone Collector
.target Bibbly F'utzbuckle
step
.goto Desolace,70.4,63.0,80,0
.goto Desolace,58.6,50.0,80,0
.goto Desolace,41.4,48.2,80,0
.goto Desolace,43.6,75.2
>> 击杀|cRXP_ENEMY_荒土巨钳蝎|r, |cRXP_ENEMY_荒土鞭尾蝎|r和|cRXP_ENEMY_荒土毒尾蝎|r. 拾取他们的|cRXP_LOOT_毒液|r
>>|cRXP_WARN_你可能需要击杀|cRXP_ENEMY_砂腭蜥蜴|r以使|cRXP_ENEMY_荒土巨钳蝎|r和|cRXP_ENEMY_荒土鞭尾蝎|r刷新|r
>>|cRXP_WARN_你现在必须完成这一步|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1370 ,, Stealing Supplies
.accept 1373 ,, Ongeku
.target Uthek the Wise
step << !Warlock
#completewith ReagentsforReclaimersIncB
.hs >>炉石回尼耶尔前哨站
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1456 ,, The Karnitol Shipwreck
.accept 1457 ,, The Karnitol Shipwreck
.target Kreldig Ungor
step
#label ReagentsforReclaimersIncB
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1459 ,, Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瓦拉里尔·屠魔者|r
.turnin 1440 ,, Return to Vahlarriel
.target Vahlarriel Demonslayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞特纳斯·天河|r
.goto Desolace,64.66,10.54
.fly Tanaris >> 飞往塔纳利斯
.target Baritanas Skyriver
.zoneskip Desolace,1
step
.isOnQuest 1112
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 5800 >> 从银行取出下列物品:
>>|T132763:0|t[克拉维尔的零件] 
.target Gimblethorn
step
.isOnQuest 1457
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 6245 >>将以下物品存入银行:
>>|T133633:0|t[卡尼托的背包] 
.target Gimblethorn
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.goto Tanaris,52.51,27.91
.home >> 绑定炉石到加基森
.target Innkeeper Fizzgrimble
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> 前往闪光平原
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1112 ,, Parts for Kravel
.target Kravel Koalbeard
step
.group
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1107 ,, Encrusted Tail Fins
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1114 ,, Delivery to the Gnomes
.target Kravel Koalbeard
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r
.turnin 1114 ,, Delivery to the Gnomes
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1115 ,, The Rumormonger
.target Kravel Koalbeard
step << !Warlock
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Ratchet >> 飞往棘齿城
.target Bera Stonehammer
step << Warlock
#completewith next
Thousand Needles,44.29,36.39,25 >> 前往裂蹄堡
step << Warlock
.isOnQuest 1802
.goto Thousand Needles,44.44,32.70,20,0
.goto Thousand Needles,43.438,32.691
>>一旦进入裂蹄堡就一直靠右走
>>打开|cRXP_PICK_破损的箱子|r. 拾取|cRXP_LOOT_破损的手稿|r
.complete 1802,2 
step << Warlock
#completewith next
.hs >> 炉石回塔纳利斯
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Dustwallow >> 飞往尘泥沼泽
.target Bera Stonehammer
step << Warlock
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> 乘船前往米奈希尔港
step << Warlock
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗姆·粗臂|r
.goto Ironforge,74.179,9.371
.turnin 1802 ,, Tome of the Cabal
.accept 1804 ,, Tome of the Cabal
.target Krom Stoutarm
step << Warlock
#completewith next
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands >> 飞往湿地
.target Gryth Thurden
.zoneskip Wetlands
step << Warlock
#label rods
.isOnQuest 1804
.goto Wetlands,46.4,45.6,65,0
.goto Wetlands,49.6,44.8,65,0
.goto Wetlands,50.6,50.6,65,0
.goto Wetlands,52.6,53.6,55,0
.goto Wetlands,47.6,46.6
>> 击杀|cRXP_ENEMY_龙喉骸骨守卫|r和|cRXP_ENEMY_龙喉暗影守卫|r. 拾取他们的|cRXP_LOOT_魔杖|r
.complete 1804,1 
.mob Dragonmaw Bonewarder
.mob Dragonmaw Shadowwarder
step << Warlock
.isQuestTurnedIn 465
>>点击|cRXP_PICK_龙喉投石车|r
.goto Wetlands,47.45,47.01
.accept 474 ,, Defeat Nek'rosh

step << Warlock
#requires rods
.isOnQuest 474
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>> 击杀|cRXP_ENEMY_纳克罗什酋长|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_ENEMY_纳克罗什酋长|r|cRXP_WARN_能被|r|T136183:0|t[恐惧]
>>|cRXP_ENEMY_纳克罗什酋长|r|cRXP_WARN_免疫火焰伤害|r
>>|cRXP_WARN_通过使用|r|T136186:0|t[火焰之雨]
>>|cRXP_WARN_这是一个简单的可Solo精英任务, 但是注意不要引到太多小怪|r
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://www.twitch.tv/videos/669042748?t=02h57m08s >> |cRXP_WARN_点击此处查看视频参考|r
step << Warlock
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯托菲队长|r
.goto Wetlands,9.86,57.48
.turnin 474 ,, Defeat Nek'rosh
.target Captain Stoutfist
step << Warlock
#completewith next
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> 乘船前往塞拉摩
.zoneskip The Barrens
step << Warlock
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Ratchet >> 飞往棘齿城
.target Baldruc
step << Warlock
.isQuestComplete 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 1804 ,, Tome of the Cabal
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 1795 ,, The Binding
.target Strahad Farsan
step << Warlock
#completewith next
.goto The Barrens,62.6,35.2
.cast 8712 >> |cRXP_WARN_在召唤法阵里|r|cRXP_WARN_使用|r|T133740:0|t[阴谋之书]
.use 6999
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.6,35.2
>>击杀|cRXP_ENEMY_恶魔猎犬|r
.use 6999
.complete 1795,1 
.mob Summoned Felhunter
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 1795 ,, The Binding
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往藏宝海湾
step << !Warlock
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师奥利雷|r
>>|cRXP_WARN_如果你没有|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_就从拍卖行买一点|r
>>|cRXP_WARN_如果买不起就跳过|r
.collect 5996,1 
.target Auctioneer O'reely
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 37-38 荆棘谷 II
#next 38-39 悲伤沼泽
step
#completewith FlyWestfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯金德|r
.goto Stranglethorn Vale,27.04,77.31
.home >> 绑定炉石到藏宝海湾
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t到顶楼与|cRXP_FRIENDLY_克拉兹克|r对话
.turnin 1115 ,, The Rumormonger
.goto Stranglethorn Vale,26.943,77.207
.target Krazek
step
#label FlyWestfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> 飞往西部荒野
.target Gyll
.zoneskip Stranglethorn Vale,1
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 325 ,, Armed and Ready
.accept 55 ,, Morbent Fel
.target Sven Yorgen
step
.goto Duskwood,19.59,37.28
>> 击杀|cRXP_ENEMY_摩拉迪姆|r. 拾取他的|cRXP_LOOT_颅骨|r
>>|cRXP_ENEMY_摩拉迪姆|r|cRXP_WARN_攻击非常高但移速很慢. 试着绕着周围的大树风筝他|r
.complete 228,1 
.unitscan Mor'Ladim
step
#completewith next
>>清出一条通往房屋2层的路
.cast 8913 >>|cRXP_WARN_装备|r|T135142:0|t[摩本特的克星]|cRXP_WARN_到副手|r
>>|cRXP_WARN_使用|r|T135142:0|t[摩本特的克星]|cRXP_WARN_对|r|cRXP_ENEMY_摩本特·费尔|r|cRXP_WARN_以削弱他|r
>>|cRXP_WARN_记得在削弱他后换回你的武器|r
.use 7297
step
.goto Duskwood,16.90,33.40
>> 击杀|cRXP_ENEMY_摩本特·费尔|r
>>|cRXP_WARN_这个任务比较难. 如果你没信心击杀他就跳过此步|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯温·约根|r
.turnin 55 ,, Morbent Fel
.isQuestComplete 55
.target Sven Yorgen
step
.abandon 55 ,, Morbent Fel
step
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514,40,0
.goto Stranglethorn Vale,38.63,5.05
.subzone 99 >> 前往北荆棘谷的叛军营地
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尤瓦中士|r
.accept 574 ,, Special Forces
.target Sergeant Yohwa
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.accept 200 ,, Bookie Herod
.target Lieutenant Doren
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.accept 195 ,, Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.accept 188 ,, Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.accept 192 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.group
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>点击房屋二楼的|cRXP_PICK_书呆子赫罗德的档案|r
.turnin 200 ,, Bookie Herod
.accept 328 ,, The Hidden Key
step
.solo
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>点击房屋二楼的|cRXP_PICK_书呆子赫罗德的档案|r
.turnin 200 ,, Bookie Herod
step
#completewith SpecialForces
.goto Stranglethorn Vale,46.30,7.61,30 >> 进入储藏室 (库尔森洞穴)
step
.group 2
#completewith next
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>> 点击地上的|cRXP_PICK_书呆子赫罗德的保险箱|r
.turnin 328 ,, The Hidden Key
.accept 329 ,, The Spy Revealed!
step
#label SpecialForces
.goto Stranglethorn Vale,46.45,6.89,40,0
.goto Stranglethorn Vale,47.89,7.77,40,0
.goto Stranglethorn Vale,46.45,6.89
>> 击杀|cRXP_ENEMY_库尔森特种兵|r和|cRXP_ENEMY_库尔森精神医师|r. 拾取他们的|T132905:0|t[丝绸]
>>|cRXP_WARN_注意! |cRXP_ENEMY_库尔森特种兵|r处于|r|T132320:0|t[潜行]状态
>>|cRXP_WARN_为之后灼热峡谷的任务保留15个|r|T132905:0|t[丝绸]|cRXP_WARN_. 你不需要现在就集齐15个|r
.collect 4306,15,4449,1,1 
.complete 574,1 
.complete 574,2 
.mob Kurzen Commando
.mob Kurzen Headshrinker
step
.group 2
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>> 点击地上的|cRXP_PICK_书呆子赫罗德的保险箱|r
.turnin 328 ,, The Hidden Key
.accept 329 ,, The Spy Revealed!
step << Warrior
#ah
.goto Stranglethorn Vale,44.5,9.6
>> 击杀|cRXP_ENEMY_库尔森医师|r. 拾取他们的|T134413:0|t[活根草]
>>|cRXP_WARN_这是为你的|r|T132403:0|t[|cFF0070FF旋风之斧|r]|cRXP_WARN_任务准备的. 如果你愿意也可以从拍卖行购买. 如果你想从拍卖行购买就跳过这步|r
>>|cRXP_WARN_如果你计划打血色修道院获取|r[|cFF0070FF咬骨之斧|r]|cRXP_WARN_, 就可以跳过这一步|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step << Warrior
.goto Stranglethorn Vale,44.5,9.6
>> 击杀|cRXP_ENEMY_库尔森医师|r. 拾取他们的|T134413:0|t[活根草]
>>|cRXP_WARN_这是为你的|r|T132403:0|t[|cFF0070FF旋风之斧|r]|cRXP_WARN_任务准备的|r
>>|cRXP_WARN_如果你计划打血色修道院获取|r[|cFF0070FF咬骨之斧|r]|cRXP_WARN_, 就可以跳过这一步|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step
#completewith Prints
>> 击杀|cRXP_ENEMY_风险投资公司地质学家|r. 拾取他们的|cRXP_LOOT_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.646,18.353
>> 击杀钻井平台顶部的|cRXP_ENEMY_工头考兹尔|r. 拾取他的|cRXP_LOOT_钥匙|r
.collect 5851,1,1182,1 
.mob Foreman Cozzle
step
#label Prints
.goto Stranglethorn Vale,43.332,20.329
>>打开|cRXP_PICK_考兹尔的箱子|r. 拾取|cRXP_LOOT_燃料调节器的蓝图|r
.complete 1182,1 
step
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78,75,0
.goto Stranglethorn Vale,43.42,17.00,75,0
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78
>> 击杀|cRXP_ENEMY_风险投资公司地质学家|r. 拾取他们的|cRXP_LOOT_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,48.64,22.95,75,0
.goto Stranglethorn Vale,48.86,23.48
.goto Stranglethorn Vale,48.79,19.96
.goto Stranglethorn Vale,36.09,37.29,0
>> 击杀|cRXP_ENEMY_深喉猎豹|r
>>|cRXP_ENEMY_深喉猎豹|r|cRXP_WARN_处于|r|T132320:0|t[潜行]状态
>>|cRXP_WARN_你也能在更西南边找到它们. 位置已标记在地图上|r
.complete 192,1 
.mob Shadowmaw Panther
step
#completewith next
>> 击杀|cRXP_ENEMY_鞭尾迅猛龙|r
>>|cRXP_ENEMY_鞭尾迅猛龙|r|cRXP_WARN_会|r|T132109:0|t[鞭笞]|cRXP_WARN_造成2秒的眩晕|r
>>|cRXP_WARN_它们还能|r|T132343:0|t[缴械]|cRXP_WARN_你5秒|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
step
.goto Stranglethorn Vale,40.68,21.85,70,0
.goto Stranglethorn Vale,39.71,29.82,70,0
.goto Stranglethorn Vale,37.09,32.60,70,0
.goto Stranglethorn Vale,39.1,27.2,70,0
.goto Stranglethorn Vale,39.61,21.90,70,0
.goto Stranglethorn Vale,40.03,15.67,75,0
.goto Stranglethorn Vale,39.1,27.2
>> 击杀|cRXP_ENEMY_钳嘴鳄鱼|r. 拾取他们的|cRXP_LOOT_皮|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
.goto Stranglethorn Vale,38.10,20.50,70,0
.goto Stranglethorn Vale,36.98,24.90,70,0
.goto Stranglethorn Vale,34.24,26.16,70,0
.goto Stranglethorn Vale,31.37,22.28
>> 击杀|cRXP_ENEMY_鞭尾迅猛龙|r
>>|cRXP_ENEMY_鞭尾迅猛龙|r|cRXP_WARN_会|r|T132109:0|t[鞭笞]|cRXP_WARN_造成2秒的眩晕|r
>>|cRXP_WARN_它们还能|r|T132343:0|t[缴械]|cRXP_WARN_你5秒|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
step
>> 击杀|cRXP_ENEMY_辛达尔|r. 拾取他的|cRXP_LOOT_爪子|r
>>|cRXP_ENEMY_辛达尔|r|cRXP_WARN_可能在平台上面也可能围绕平台巡逻|r
.goto Stranglethorn Vale,32.23,17.24
.complete 188,1 
.unitscan Sin'Dall
step << Warrior
.isOnQuest 1712
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>> 击杀|cRXP_ENEMY_血顶巨魔|r. 拾取他们的|cRXP_LOOT_耳朵|r和|cRXP_LOOT_獠牙|r
>>|cRXP_WARN_不要在没有规划逃跑路线的情况下太过深入祖昆达废墟. 这里的怪物密度非常高并且有很多巡逻怪|r
>>|cRXP_WARN_为之后灼热峡谷的任务保留15个|r|T132905:0|t[丝绸]|cRXP_WARN_. 你不需要现在就集齐15个|r
.complete 189,1 
.complete 1712,2 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>> 击杀|cRXP_ENEMY_血顶巨魔|r. 拾取他们的|cRXP_LOOT_耳朵|r
>>|cRXP_WARN_不要在没有规划逃跑路线的情况下太过深入祖昆达废墟. 这里的怪物密度非常高并且有很多巡逻怪|r
>>|cRXP_WARN_为之后灼热峡谷的任务保留15个|r|T132905:0|t[丝绸]|cRXP_WARN_. 你不需要现在就集齐15个|r
.complete 189,1 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
#completewith next
.goto Stranglethorn Vale,21.10,22.84,125 >> 前往Haunted Island
step
.goto Stranglethorn Vale,21.10,22.84
>> 击杀|cRXP_ENEMY_次级水元素|r. 拾取他们的|cRXP_LOOT_护腕|r
.complete 601,1 
.mob Lesser Water Elemental
step
.group
#completewith BluePearls
.cast 7178 >> |cRXP_WARN_如果你有的话就|r|cRXP_WARN_使用|r|T134797:0|t[水下呼吸药剂]
.itemcount 5996,1 
.use 5996 
.isOnQuest 1107 
step
.group
#completewith next
.goto Stranglethorn Vale,24.9,29.1,0
.goto Stranglethorn Vale,27.6,29.2,0
.goto Stranglethorn Vale,25.4,24.1,0
.goto Stranglethorn Vale,27.5,24.2,0
>>打开|cRXP_PICK_巨型蚌壳|r. 拾取|cRXP_LOOT_蓝珍珠|r
>>|cRXP_WARN_如果你没有|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_或者队伍里没有|T626007:0|t|cFF8788EE术士|r就跳过此步|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
.isOnQuest 1107 
step
.group
.goto Stranglethorn Vale,24.42,24.46,80,0
.goto Stranglethorn Vale,26.6,26.6,80,0
.goto Stranglethorn Vale,24.6,27.2,80,0
.goto Stranglethorn Vale,24.42,24.46
>> 击杀|cRXP_ENEMY_盐鳞鱼人|r. 拾取他们的|cRXP_LOOT_坚硬的尾鳍|r
>>|cRXP_WARN_每次只拉1只|cRXP_ENEMY_鱼人|r. 尽量避开|cRXP_ENEMY_盐鳞神谕者|r和|r|cRXP_ENEMY_盐鳞潮汐领主|r
>>|cRXP_WARN_如果你没有|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_或者队伍里没有|T626007:0|t|cFF8788EE术士|r就跳过此步|r << !Warlock !Druid
.use 5996 
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.isOnQuest 1107 
step
#label BluePearls
.group
.goto Stranglethorn Vale,24.9,29.1,90,0
.goto Stranglethorn Vale,27.6,29.2,90,0
.goto Stranglethorn Vale,25.4,24.1,90,0
.goto Stranglethorn Vale,27.5,24.2
>>打开|cRXP_PICK_巨型蚌壳|r. 拾取|cRXP_LOOT_蓝珍珠|r
>>|cRXP_WARN_如果你没有|r|T134797:0|t[水下呼吸药剂]|cRXP_WARN_或者队伍里没有|T626007:0|t|cFF8788EE术士|r就跳过此步|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
.isOnQuest 1107 
step
.goto Stranglethorn Vale,25.52,9.36
.xp 38-16160 >> 一直刷怪到你离38级差16160经验
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.turnin 195 ,, Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.turnin 188 ,, Tiger Mastery
.goto Stranglethorn Vale,35.616,10.619
.turnin 192 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.turnin 574 ,, Special Forces
.turnin 329 ,, The Spy Revealed!
.accept 330 ,, Patrol Schedules
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.turnin 574 ,, Special Forces
.target Lieutenant Doren
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯曼下士|r
.turnin 330 ,, Patrol Schedules
.accept 331 ,, Report to Doren
.target Corporal Sethman
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.turnin 331 ,, Report to Doren
.target Lieutenant Doren
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step
#completewith next
.hs >> 炉石回藏宝海湾
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在顶楼与|cRXP_FRIENDLY_科博克|r和|cRXP_FRIENDLY_克拉兹克|r对话
.turnin 189 ,, Bloodscalp Ears
.turnin 213 ,, Hostile Takeover
.goto Stranglethorn Vale,27.000,77.124
.accept 1116 ,, Dream Dust in the Swamp
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大财主里维加兹|r
.turnin 601 ,, Water Elementals
.accept 602 ,, Magical Analysis
.turnin 1182 ,, Goblin Sponsorship
.accept 1183 ,, Goblin Sponsorship
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.turnin 577 ,, Some Assembly Required
.target Drizzlik
step
.xp 38 >> 在开始下一章节前确保自己已到达38级
step << !Mage
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind>> 飞往暴风城
.target Gyll
step << Warrior
.goto StormwindClassic,58.362,61.678
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔曼·穆比|r
>>|cRXP_BUY_购买400个|r|T135427:0|t[邪恶飞刀]
.collect 15327,400 
.target Thurman Mullby
step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 38-39 悲伤沼泽
#next 39-39 尘泥沼泽
step << !Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 4306,3960,5852,5796,4611,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>将以下物品存入银行:
>>|T132905:0|t[丝绸] 
>>|T133633:0|t[一包水元素护腕] 
>>|T134330:0|t[燃料调节器的蓝图] 
>>|T134305:0|t[坚硬的尾鳍] (如果你有的话) 
>>|T134564:0|t[蓝珍珠] (如果你有的话) 
>>你找到的所有|T134332:0|t[荆棘谷的青山 - 书页]
.target Newton Burnside
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>进入已宰的羔羊并下楼
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Spackle Thornberry
step
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安古斯·斯特恩|r
.accept 1260 ,, Morgan Stern
.target Angus Stern
step
.goto Stormwind City,40.71,62.80,25,0
.goto Stormwind City,41.521,64.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马森·马克纳迪尔|r
.accept 1363 ,, Mazen's Behest
.target Mazen Mac'Nadir
step
.goto Stormwind City,40.996,63.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_侍僧迪利斯|r对话
.turnin 1363 ,, Mazen's Behest
.accept 1364 ,, Mazen's Behest
.target Acolyte Dellis
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布罗哈恩·铁桶|r
.accept 1448 ,, In Search of The Temple
.target Brohann Caskbelly
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡瑞娜·麦肯达|r
.trainer >> 学习宠物技能
.target Karrina Mekenda
step << Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 4306,3960,5852,5796,4611,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>将以下物品存入银行:
>>|T132905:0|t[丝绸] 
>>|T133633:0|t[一包水元素护腕] 
>>|T134330:0|t[燃料调节器的蓝图] 
>>|T134305:0|t[坚硬的尾鳍] (如果你有的话) 
>>|T134564:0|t[蓝珍珠] (如果你有的话) 
>>你找到的所有|T134332:0|t[荆棘谷的青山 - 书页]
.target Newton Burnside
step
#label FlyDW
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.goto Stormwind City,66.277,62.137
.fly Duskwood >> 飞往暮色森林
.target Dungar Longdrink
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官奥尔希雅·埃伯洛克|r
.turnin 228 ,, Mor'Ladim
.accept 229 ,, The Daughter Who Lived
.target Commander Althea Ebonlocke
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守夜人拉迪莫尔|r
.turnin 229 ,, The Daughter Who Lived
.accept 231 ,, A Daughter's Love
.target Watcher Ladimore
step
#completewith next
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.49,44.28
.fly Westfall >> 飞往西部荒野
.target Felicia Maline
step
.isOnQuest 231
>> 点击|cRXP_PICK_饱经风霜的坟墓|r
.goto Duskwood,17.72,29.07
.turnin 231 ,, A Daughter's Love
step
#completewith SoSEntry
.goto Duskwood,89.75,41.31,0
.goto Swamp of Sorrows,6.59,60.19
.zone Swamp of Sorrows >>前往悲伤沼泽
step
#completewith next
.isQuestTurnedIn 1115
.goto Swamp of Sorrows,13.96,61.67,100,0
.goto Swamp of Sorrows,13.96,61.67,0
>> 击杀|cRXP_ENEMY_年轻的幼龙|r和|cRXP_ENEMY_睡梦中的幼龙|r. 拾取他们的|cRXP_LOOT_梦境之尘|r
>>|cRXP_WARN_1轮|cRXP_ENEMY_幼龙|r不足以让你完成此任务, 所以绿龙杀光了就先做其他任务|r
.complete 1116,1 
.mob Adolescent Whelp
.mob Dreaming Whelp
step
#label SoSEntry
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY看守者比格斯|r
.accept 1396 ,, Encroaching Wildlife
.target Watcher Biggs
step << skip 
.isOnQuest 1364
#completewith NoboruTurnin
>> 击杀|cRXP_ENEMY_沼泽漫步者|r, |cRXP_ENEMY_沼泽漫步者长老|r, |cRXP_ENEMY_纠缠恐兽|r和|cRXP_ENEMY_泥沼之王|r. 拾取|cRXP_LOOT_卡德加的空间收敛研究笔记|r
>>|cRXP_WARN_此物品掉率极低.不要偏离路线去完成此任务|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#completewith Dreamdust2
.goto Swamp of Sorrows,28.20,43.83,0
>> 击杀|cRXP_ENEMY_尖齿鳄鱼幼崽|r, |cRXP_ENEMY_沼泽纺丝蛛|r和|cRXP_ENEMY_沼泽虎|r
.complete 1396,1 
.complete 1396,2 
.complete 1396,3 
.mob Young Sawtooth Crocolisk
.mob Sorrow Spinner
.mob Swamp Jaguar
step
.goto Swamp of Sorrows,55.50,36.75,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,32.81,38.68,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,55.184,34.158
.line Swamp of Sorrows,55.70,34.14,55.92,35.96,55.57,37.64,53.27,38.99,51.27,38.82,48.70,38.56,47.29,38.39,46.52,38.69,45.67,36.55,44.34,34.66,42.27,32.14,40.86,32.36,40.23,34.79,38.81,35.80,38.08,41.22,37.91,43.29,36.75,46.43,33.50,44.03,33.37,40.43,32.61,38.67,32.16,37.15,32.26,36.24,33.44,40.35,33.46,43.98,36.65,46.42,37.85,43.51,38.10,40.89,38.48,37.66,38.84,35.82,40.41,34.13,40.87,32.43,42.18,32.07,44.92,35.47,45.66,36.52,46.35,38.74,47.56,38.35,52.43,39.04,53.25,39.13,55.39,37.60
>> 击杀|cRXP_ENEMY_斗棍诺博鲁|r. 拾取|T133485:0|t[|cRXP_LOOT_诺博鲁的木棒|r]
.use 6196 >>|cRXP_WARN_使用|T133464:0|t[|cRXP_LOOT_诺博鲁的木棒|r]并接受任务|r
>>|cRXP_ENEMY_斗棍诺博鲁|r|cRXP_WARN_在悲伤沼泽的巡逻范围非常宽广. 他的巡逻路线已标记在地图上. 刷新点就在巡逻路线的起点(最东边)|r
.collect 6196,1,1392,1 
.accept 1392 ,, 斗棍诺博鲁
.unitscan Noboru the Cudgel
step
#label NoboruTurnin
.goto Swamp of Sorrows,25.983,31.412
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛格图尔|r
.turnin 1392 ,, Noboru the Cudgel
.accept 1389 ,, Draenethyst Crystals
.target Magtoor
step << skip 
#completewith next
.goto Swamp of Sorrows,14.97,37.31,70 >> 前往迷雾谷
step << skip 
.isOnQuest 1364
#completewith next
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>> 击杀|cRXP_ENEMY_沼泽漫步者|r, |cRXP_ENEMY_沼泽漫步者长老|r, |cRXP_ENEMY_纠缠恐兽|r和|cRXP_ENEMY_泥沼之王|r. 拾取|cRXP_LOOT_卡德加的空间收敛研究笔记|r
>>|cRXP_WARN_此物品掉率极低. 一旦迷雾谷被你清空了还没出就跳过这步|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#label Dreamdust2
.goto Swamp of Sorrows,16.6,55.8,70,0
.goto Swamp of Sorrows,12.4,64.6,70,0
.goto Swamp of Sorrows,16.6,63.8,70,0
.goto Swamp of Sorrows,14.2,58.8

>> 击杀|cRXP_ENEMY_年轻的幼龙|r和|cRXP_ENEMY_睡梦中的幼龙|r. 拾取他们的|cRXP_LOOT_梦境之尘|r

.complete 1116,1 
.isQuestTurnedIn 1115
.mob Adolescent Whelp
.mob Dreaming Whelp
step << skip 
.isOnQuest 1364
#completewith end
>> 击杀|cRXP_ENEMY_沼泽漫步者|r, |cRXP_ENEMY_沼泽漫步者长老|r, |cRXP_ENEMY_纠缠恐兽|r和|cRXP_ENEMY_泥沼之王|r. 拾取|cRXP_LOOT_卡德加的空间收敛研究笔记|r
>>|cRXP_WARN_此物品掉率极低.不要偏离路线去完成此任务|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
>> 击杀|cRXP_ENEMY_尖齿鳄鱼幼崽|r, |cRXP_ENEMY_沼泽纺丝蛛|r和|cRXP_ENEMY_沼泽虎|r
.complete 1396,1 
.goto Swamp of Sorrows,23.0,45.6,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4
.complete 1396,2 
.goto Swamp of Sorrows,19.2,54.6,70,0
.goto Swamp of Sorrows,25.0,61.6,70,0
.goto Swamp of Sorrows,33.2,51.8,70,0
.goto Swamp of Sorrows,26.6,47.0,70,0
.goto Swamp of Sorrows,37.6,30.0,70,0
.goto Swamp of Sorrows,44.0,42.4,70,0
.goto Swamp of Sorrows,26.6,47.0
.complete 1396,3 
.goto Swamp of Sorrows,22.8,42.4,70,0
.goto Swamp of Sorrows,33.6,54.0,70,0
.goto Swamp of Sorrows,47.8,39.8,70,0
.goto Swamp of Sorrows,26.2,35.2,70,0
.goto Swamp of Sorrows,23.2,59.8,70,0
.goto Swamp of Sorrows,44.0,41.6
.mob Young Sawtooth Crocolisk
.mob Sorrow Spinner
.mob Swamp Jaguar
step
#label wildlife2
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY看守者比格斯|r
.turnin 1396 ,, Encroaching Wildlife
.accept 1421 ,, The Lost Caravan
.target Watcher Biggs
step
#completewith next
.goto Swamp of Sorrows,57.29,30.73,200 >> 前往农田避难所
step
#completewith CaravanChest
.isOnQuest 1389
>> 拾取地上的|cRXP_LOOT_德莱尼水晶|r
.goto Swamp of Sorrows,63.26,22.35,0
.complete 1389,1 
step
.isOnQuest 1373
.goto Swamp of Sorrows,65.036,21.976,0
.goto Swamp of Sorrows,65.036,21.976,55,0
.goto Swamp of Sorrows,60.537,23.175
>> 击杀|cRXP_ENEMY_盎格库|r. 拾取他的|cRXP_LOOT_碎片|r
>>|cRXP_ENEMY_盎格库|r|cRXP_WARN_在农田避难所随机位置刷新|r
.complete 1373,1 
.unitscan Ongeku
step
#label CaravanChest
.isOnQuest 1421
>>打开|cRXP_PICK_车队箱子|r. 拾取|cRXP_LOOT_巫师的材料|r
>>|cRXP_WARN_避免从农田避难所中间穿过|r
.goto Swamp of Sorrows,64.468,18.313
.complete 1421,1 
step
.isOnQuest 1389
>> 拾取地上的|cRXP_LOOT_德莱尼水晶|r
.goto Swamp of Sorrows,65.15,21.92,70,0
.goto Swamp of Sorrows,61.22,22.97,70,0
.goto Swamp of Sorrows,57.43,26.08,70,0
.goto Swamp of Sorrows,55.20,28.24,70,0
.goto Swamp of Sorrows,57.43,26.08
.complete 1389,1 
step
.goto Swamp of Sorrows,67.00,47.00 >> 游到泪水之池的中间
.complete 1448,1 
step
.isQuestComplete 1389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛格图尔|r
.goto Swamp of Sorrows,25.983,31.412
.turnin 1389 ,, Draenethyst Crystals
.target Magtoor
step
#label end
.isQuestComplete 1421
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY看守者比格斯|r
.goto Swamp of Sorrows,26.74,59.82
.turnin 1421 ,, The Lost Caravan
.target Watcher Biggs
step 
.goto Swamp of Sorrows,28.20,43.83
.xp 39 >> 刷|cRXP_ENEMY_尖齿鳄鱼幼崽|r, |cRXP_ENEMY_沼泽纺丝蛛|r和|cRXP_ENEMY_沼泽虎|r直到到达39级
step
#completewith SWbank << !Mage
#completewith SWTele << Mage
.goto Swamp of Sorrows,28.20,43.83
.hs >>|cRXP_WARN_刷怪等待炉石CD|r
>>炉石回藏宝海湾
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step << Rogue
.goto Stranglethorn Vale,26.817,77.149
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_伊安·斯托姆|r对话
.trainer >> 学习职业技能
.target Ian Strom
step
.isQuestComplete 1116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_克拉兹克|r对话
.goto Stranglethorn Vale,26.943,77.207
.turnin 1116 ,, Dream Dust in the Swamp
.timer 11,Dream Dust in the Swamp RP
.target Krazek
step
.isQuestTurnedIn 1115
>>|cRXP_WARN_等待剧情结束|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉兹克|r
.goto Stranglethorn Vale,26.943,77.207
.accept 1117 ,, Rumors for Kravel
.target Krazek
step << !Mage
#label SWBank
.zoneskip Stormwind City
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> 飞往暴风城
.target Gyll

step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >> 传送到暴风城
step << Mage
#label SWTele << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 6245,5996 >> 从银行取出下列物品:
>>|T133633:0|t[卡尼托的背包] 
>>|T134797:0|t[水下呼吸药剂] (如果有的话) << !Warlock 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 6065,5804 >>将以下物品存入银行:
>>|T133461:0|t[卡德加的空间收敛研究笔记] (如果有的话) 
>>|T133469:0|t[地精的谣言] 
.target Newton Burnside
step << Priest
.goto Stormwind City,44.21,70.03,40,0
.goto Stormwind City,42.85,65.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿德温·凯伦|r
>>|cRXP_BUY_购买|r|T135139:0|t[漆木魔杖]|cRXP_BUY_如果比你身上的好就在40级时装备|r
.collect 5238,1 
.target Ardwyn Cailen

step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step
.group
.goto Stormwind City,74.010,30.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r
.accept 543 ,, The Perenolde Tiara
.target Count Remington Ridgewell
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布罗哈恩·铁桶|r
.turnin 1448 ,, In Search of The Temple
.accept 1449 ,, To The Hinterlands
.target Brohann Caskbelly

step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡瑞娜·麦肯达|r
.trainer >> 学习宠物技能
.target Karrina Mekenda
step << !Mage
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >> 进入矿道地铁. 乘坐地铁前往铁炉堡
>>|cRXP_WARN_你可以在等地铁时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_尝试登出跳过操作. 点击此处查看视频参考|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >> 传送到铁炉堡
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗顿·石锤|r
.turnin 1457 ,, The Karnitol Shipwreck
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷矛|r
.accept 525 ,, Further Mysteries
.target Prospector Stormpike

step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r
.accept 4965 ,, Knowledge of the Orb of Orahil
.trainer >> 学习职业技能
.target Briarthorn
step << !Warlock
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行|r|cRXP_BUY_购买|r|T134797:0|t[水下呼吸药剂]
>>这非常重要, 水下呼吸药剂会让你即将到来的阿拉希高地任务变得简单很多. 
.collect 5996,1,664,1
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_WARN_最好能升级|r|T135966:0|t[急救]|cRXP_WARN_到225. 因为你就要前往塞拉摩了并能在那接到|T135966:0|t[急救]任务.如果你无法把急救升到225就先跳过此步. 你将晚些来完成|r
+|cRXP_BUY_如果需要就从拍卖行|r|cRXP_BUY_购买|r|T132892:0|t[魔纹布]
.skill firstaid,225,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Warrior
#ah
#completewith next
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行购买以下物品. 这不是必需的, 但会为你的|T132403:0|t[|cFF0070FF旋风之斧|r]任务节约时间|r
>>|cRXP_WARN_如果你计划打血色修道院获取|r[|cFF0070FF咬骨之斧|r]|cRXP_WARN_, 就可以跳过这一步|r
>>|T133434:0|t[燃烧咒符]
>>|T133435:0|t[雷霆咒符]
>>|T133438:0|t[海浪咒符]
.collect 4479,8,1714,1 
.collect 4480,8,1714,1 
.collect 4481,8,1714,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label ss1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Wetlands >> 飞往湿地
.target Gryth Thurden
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#version 7
#classic
<< Alliance
#name 39-39 尘泥沼泽
#next 39-40 凄凉之地
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> 前往米奈希尔港码头
step
.goto Wetlands,5.075,63.408
>>|cRXP_WARN_等待时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.zone Dustwallow Marsh >> 乘船前往塞拉摩
step
.goto Dustwallow Marsh,66.437,51.463
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海伦妮亚·奥德恩|r
>>|cRXP_BUY_购买3个|r|T134059:0|t[舒心草]
.collect 3713,3,1218,1 
.target Helenia Olden
step
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·斯特恩|r
.turnin -1260 ,, Morgan Stern
.accept 1204 ,, Mudrock Soup and Bugs
.target Morgan Stern
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塞拉摩塔楼顶部与|cRXP_FRIENDLY_大法师特沃许|r对话
.goto Dustwallow Marsh,66.423,49.260
.accept 1266 ,, The Missing Diplomat
.target Archmage Tervosh
step
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘沼泽之眼’加尔|r
.accept 1218 ,, Soothing Spices
.turnin 1218 ,, Soothing Spices
.accept 1206 ,, Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.442,25.917
>>点击|cRXP_PICK_Loost Dirt|r
.accept 1219 ,, The Orc Report
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞拉摩海军上尉|r
.goto Dustwallow Marsh,68.125,48.201
.turnin 1219 ,, The Orc Report
.accept 1220 ,, Captain Vimes
.target Theramore Lieutenant
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖兰·维米斯上尉|r
.turnin 1220 ,, Captain Vimes
.accept 1286 ,, The Deserters
.target Captain Garran Vimes
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.accept 6624 ,, Triage
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_对|cRXP_FRIENDLY_联盟士兵|r使用|r|T133682:0|t[急救绷带]|cRXP_WARN_. 优先对|cRXP_FRIENDLY_受致命伤的士兵|r使用|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.turnin 6624 ,, Triage
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >> 摧毁|T133682:0|t[急救绷带]. 你不需要它了
step
#completewith next
.isOnQuest 1204
.goto Dustwallow Marsh,64.89,42.25,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,59.67,17.69,0,0
>> 击杀|cRXP_ENEMY_泥石刺壳龟|r和|cRXP_ENEMY_泥石海龟|r. 拾取他们的|cRXP_LOOT_舌头|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
.isOnQuest 1177
.goto Dustwallow Marsh,64.2,28.0,0
.goto Dustwallow Marsh,62.8,18.8,0
.goto Dustwallow Marsh,57.6,16.4,0
.goto Dustwallow Marsh,54.6,16.2,0
.goto Dustwallow Marsh,64.2,28.0,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6
>>击杀|cRXP_ENEMY_泥鳍鱼人|r. 拾取他们的|cRXP_LOOT_头|r
.complete 1177,1 
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
.mob Mirefin Murloc
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Warrior
.mob Mirefin Oracle
step
.isOnQuest 1204
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,55.2,16.6,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
>> 击杀|cRXP_ENEMY_泥石刺壳龟|r和|cRXP_ENEMY_泥石海龟|r. 拾取他们的|cRXP_LOOT_舌头|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
#softcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_列兵亨德尔|r
>>|cRXP_WARN_如果你接受后续任务你将被标记为PVP目标! 意味着部落玩家能击杀你! 自行承担风险!|r
>>|cRXP_WARN_交还当前任务并不会将你标记为PVP目标. 后续任务的自动接受功能已关闭|r
.turnin 1266 ,, The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
#softcoreserver
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_列兵亨德尔|r
>>|cRXP_WARN_如果你选择接受此任务你将被标记为PVP目标! 意味着部落玩家能击杀你! 自己承担风险!|r
.accept 1324,1 ,, The Missing Diplomat
.target Private Hendel
step
#hardcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_列兵亨德尔|r
>>|cRXP_WARN_暴雪已调整此任务. 在专家模式正式服上你将不再被标记为PVP目标|r
.turnin 1266 ,, The Missing Diplomat
.accept 1324,1 ,, The Missing Diplomat
.target Private Hendel
.isQuestTurnedIn 1264
step
.goto Dustwallow Marsh,45.24,24.65
>>击败|cRXP_ENEMY_列兵亨德尔|r. 他会与2名|cRXP_ENEMY_塞拉摩哨兵|r一起攻击你
>>一旦你击败了|cRXP_ENEMY_列兵亨德尔|r, 2名哨兵都会停止攻击
.complete 1324,1 
.isOnQuest 1324
.mob Private Hendel
step
.isQuestComplete 1324
.goto Dustwallow Marsh,45.193,24.292
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师特沃许|r
.turnin 1324 ,, The Missing Diplomat
.target Archmage Tervosh
step
.isQuestTurnedIn 1324
.goto Dustwallow Marsh,45.218,24.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉安娜·普罗德摩尔女士|r
.turnin 1267 ,, The Missing Diplomat
.target Lady Jaina Proudmoore
step
.goto Dustwallow Marsh,35.43,21.98,70,0
.goto Dustwallow Marsh,33.58,21.32,70,0
.goto Dustwallow Marsh,35.05,24.71,70,0
.goto Dustwallow Marsh,34.49,22.06
>> 击杀|cRXP_ENEMY_暗雾蜘蛛|r, |cRXP_ENEMY_暗雾纺丝者|r, |cRXP_ENEMY_暗雾潜伏者|r和|cRXP_ENEMY_暗雾独行蛛|r. 拾取他们的|cRXP_LOOT_眼睛|r
>>|cRXP_ENEMY_暗雾纺丝者|r|cRXP_WARN_会施放|r|T132149:0|t[网]
>>|cRXP_ENEMY_暗雾独行蛛|r|cRXP_WARN_会施放|r|T136067:0|t[衰弱毒药]|cRXP_WARN_可以降低你75%的伤害, 持续15秒. 移动到近战范围外以躲避此技能|r << Rogue/Warrior/Paladin/Druid
>>|cRXP_ENEMY_暗雾潜伏者|r|cRXP_WARN_位于洞穴内并处于|r|T132320:0|t[潜行]|cRXP_WARN_状态. 建议你最好别进洞|r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Silkspinner
.mob Darkmist Lurker
step
.goto Dustwallow Marsh,46.881,17.518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊格纳兹|r
>>|cRXP_WARN_这将开启护送任务|r
.accept 1222 ,, Stinky's Escape
.target "Stinky" Ignatz
step
.isOnQuest 1222
.goto Dustwallow Marsh,48.76,24.49,0
>>跟随|cRXP_FRIENDLY_伊格纳兹|r穿越沼泽
.complete 1222,1 
.target "Stinky" Ignatz
step
.isQuestComplete 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘沼泽之眼’加尔|r
.turnin 1206 ,, Jarl Needs Eyes
.target "Swamp Eye" Jarl
step
.isQuestComplete 1177
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_碎泥·杜特非|r
.turnin 1177 ,, Hungry
.target Mudcrush Durtfeet
step
#completewith BalosJacken
.goto Dustwallow Marsh,35.74,53.99,45 >> 前往废弃哨塔
step
#completewith next
.goto Dustwallow Marsh,36.09,54.30
+攻击|cRXP_ENEMY_巴鲁斯·加科因|r到10%他就会投降
step
#label BalosJacken
.goto Dustwallow Marsh,36.09,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴鲁斯·加科因|r
.turnin 1286 ,, The Deserters
.accept 1287 ,, The Deserters
.target Balos Jacken
step
#completewith 513
.goto Dustwallow Marsh,66.336,45.469
.subzone 513 >> 前往塞拉摩岛
step
.isQuestComplete 1222
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1222 ,, Stinky's Escape
.turnin 1204 ,, Mudrock Soup and Bugs
.target Morgan Stern
step
.isQuestComplete 1222
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1222 ,, Stinky's Escape
.target Morgan Stern
step
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1204 ,, Mudrock Soup and Bugs
.target Morgan Stern
step
.isQuestTurnedIn 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·斯特恩|r
.accept 1258 ,, ... and Bugs
.target Morgan Stern
step
#label 513
.goto The Barrens,70.84,79.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖兰·维米斯上尉|r
.turnin 1287 ,, The Deserters
.target Captain Garran Vimes
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 30-40 (汉化By猎風)
#classic
<< Alliance
#name 39-40 凄凉之地
#next 40-41 奥特兰克山脉/阿拉希高地
step << Warlock
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.fly Ratchet>> 飞往棘齿城
.target Baldruc
step << Warlock
.isOnQuest 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.turnin 4965 ,, Knowledge of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isOnQuest 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.turnin 4968 ,, Knowledge of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.accept 1799 ,, Fragments of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.accept 1799 ,, Fragments of the Orb of Orahil
.target Menara Voidrender
step << Warlock
.isOnQuest 4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4488 ,, Summon Felsteed
.target Strahad Farsan
step << Warlock
.isOnQuest 4487
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4487 ,, Summon Felsteed
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 4490 ,, Summon Felsteed
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4487
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 4490 ,, Summon Felsteed
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4965
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_随从温图拉|r
.accept 4962 ,, Shard of a Felhound
.target Acolyte Wytula
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_随从温图拉|r
.accept 4962 ,, Shard of a Felhound
.target Acolyte Wytula
step << Warlock
#completewith DesolaceArrive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.goto The Barrens,63.084,37.163
.fly Desolace>> 飞往凄凉之地
.target Bragok
step << !Warlock
#completewith DesolaceArrive
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.fly Desolace >> 飞往凄凉之地
.target Baldruc
step
#completewith DesolaceArrive
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板利莎瑞亚|r
.home >> 绑定炉石到凄凉之地
.target Innkeeper Lyshaerya
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安东修士|r
.accept 261 ,, Down the Scarlet Path
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.accept 1466 ,, Reagents for Reclaimers Inc.
.target Kreldig Ungor
step
#completewith next
.goto Desolace,47.83,61.82,90 >> 前往科多兽坟场的|cRXP_FRIENDLY_霍恩尼兹|r处
step
#label DesolaceArrive
#era/som
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍恩尼兹|r
.accept 6134 ,, Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1373 ,, Ongeku
.accept 1374 ,, Khan Jehn
.target Uthek the Wise
step << Warlock
#completewith ReclaimersDemons
>> 击杀|cRXP_ENEMY_火刃召唤师|r. 拾取他们的|cRXP_LOOT_地狱火宝珠|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
#completewith ReclaimersDemons
.use 12647 >>|cRXP_WARN_对快死的|cRXP_ENEMY_灵能猎犬|r, |cRXP_ENEMY_噬法魔犬|r和|cRXP_ENEMY_狩法猎人|r|cRXP_WARN_使用|r|T134129:0|t[地狱犬红宝石]|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step
#label ReclaimersDemons
.goto Desolace,51.72,83.92,0
>> 击杀|cRXP_ENEMY_灵能猎犬|r, |cRXP_ENEMY_噬法魔犬|r和|cRXP_ENEMY_狩法猎人|r. 拾取他们的|cRXP_LOOT_大脑|r
>> 击杀|cRXP_ENEMY_虚空魅魔|r, |cRXP_ENEMY_虚空魔女|r和|cRXP_ENEMY_虚空巫女|r. 拾取他们的|cRXP_LOOT_翅膀|r
>> 击杀|cRXP_ENEMY_末日守卫队长|r. 拾取他们的|cRXP_LOOT_血液|r
>>|cRXP_WARN_因为你可能需要等待他们刷新, 优先击杀|cRXP_ENEMY_末日守卫队长|r. 普通的|cRXP_ENEMY_末日守卫|r不会掉落|r|cRXP_LOOT_血液|r
.complete 1466,1 
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.complete 1466,2 
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6,70,0
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6
.complete 1466,3 
.goto Desolace,51.72,83.92
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
.mob Nether Sister
.mob Nether Maiden
.mob Nether Sorceress
.mob Doomwarder Captain
step << Warlock
#completewith next
>> 击杀|cRXP_ENEMY_火刃召唤师|r. 拾取他们的|cRXP_LOOT_地狱火宝珠|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.use 12647 >>|cRXP_WARN_对快死的|cRXP_ENEMY_灵能猎犬|r, |cRXP_ENEMY_噬法魔犬|r和|cRXP_ENEMY_狩法猎人|r|cRXP_WARN_使用|r|T134129:0|t[地狱犬红宝石]|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step << Warlock
.goto Desolace,50.4,71.6,70,0
.goto Desolace,49.8,77.8,70,0
.goto Desolace,52.4,83.6,70,0
.goto Desolace,55.0,77.8
>> 击杀|cRXP_ENEMY_火刃召唤师|r. 拾取他们的|cRXP_LOOT_地狱火宝珠|r
.complete 1799,1 
.mob Burning Blade Summoner
step
#completewith next
>> 击杀|cRXP_ENEMY_亡灵劫毁者|r
.complete 261,1 
.mob Undead Ravager
step
.goto Desolace,64.00,91.70
>>|cRXP_WARN_在白骨之谷中的两处巨大白骨之间|r|cRXP_WARN_使用|r|T132763:0|t[幽灵磁铁箱]
>> 击杀刷出来的|cRXP_ENEMY_玛格拉姆幽灵|r. 拾取他们的|cRXP_LOOT_幽灵电浆|r
.complete 6134,1 
.mob Magrami Spectre
step
.goto Desolace,64.30,81.96,70,0
.goto Desolace,64.00,91.70,70,0
.goto Desolace,59.91,89.42,70,0
.goto Desolace,64.00,91.70
>> 击杀|cRXP_ENEMY_亡灵劫毁者|r
.complete 261,1 
.mob Undead Ravager
step
.isQuestTurnedIn 1370
.goto Desolace,65.94,80.40
>> 击杀|cRXP_ENEMY_杰恩可汗|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 1374,1 
.mob Khan Jehn
step
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6134 ,, Ghost-o-plasm Round Up
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_智者乌泰克|r
.turnin 1374 ,, Khan Jehn
.target Uthek the Wise
step
.goto Desolace,41.13,91.72,0
.goto Feralas,45.44,3.07
.zone Feralas >> 前往菲拉斯
.zoneskip Desolace,1
step
#completewith FMFP
.goto Feralas,44.88,7.70,50,0
.goto Feralas,46.31,21.20,50,0
.goto Feralas,47.98,25.22,50,0
.goto Feralas,46.82,27.89,35,0
.goto Feralas,48.13,44.92,50,0
.goto Feralas,43.33,42.75,60,0
.goto Feralas,30.238,43.248
.subzone 1116 >> 沿路前往羽月要塞. 不用等船, 直接游过去
step
#completewith next
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛加纳斯|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]
>>|cRXP_WARN_如果|cRXP_FRIENDLY_洛加纳斯|r这没有库存就跳过此步|r
.target Logannas
step
#label FMFP
.goto Feralas,30.238,43.248
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔迪恩·月羽|r
.fp Feathermoon >> 开启羽月要塞飞行点
.fly Tanaris >> 飞往塔纳利斯
.target Fyldren Moonfeather
.zoneskip Feralas,1
step
.isOnQuest 1183,1117,602
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 5852,5804,3960,5796 >> 从银行取出下列物品:
>>|T134330:0|t[燃料调节器的蓝图] 
>>|T133469:0|t[地精的谣言] 
>>|T133633:0|t[一包水元素护腕] 
>>|T134305:0|t[坚硬的尾鳍] (如果你有的话) 
.target Gimblethorn
step << Hunter
#completewith next
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉兹弗斯|r
.stable >> 把你的宠物存入兽栏. 你很快就会抓一只|cRXP_ENEMY_沙漠猎食蝎|r
.xp <40,1
.target Laziphus
step << Hunter
.goto Tanaris,54.07,32.21
>>|cRXP_WARN_对|cRXP_ENEMY_沙漠猎食蝎|r|r |cRXP_WARN_施放|r|T132164:0|t[驯服野兽]
.train 2976 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132140:0|t[爪击 (等级 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.xp <40,1
.mob Scorpid Hunter
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >> 前往闪光平原
step
#label Martek
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r
.accept 1106 ,, Martek the Exiled
.target Fizzle Brassbolts
step
.group
.isQuestComplete 1107
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1107 ,, Encrusted Tail Fins
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1117 ,, Rumors for Kravel
.timer 10,Rumors for Kravel RP
.accept 1118 ,, Back to Booty Bay
.target Kravel Koalbeard
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1183 ,, Goblin Sponsorship
.accept 1186 ,, The Eighteenth Pilot
.target Pozzik
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 ,, The Eighteenth Pilot
.accept 1187 ,, Razzeric's Tweaking
.target Razzeric
step
.group
.abandon 1107 ,, Encrusted Tail Fins
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
.xp <40,1
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
.xp <40,1
step
#completewith next
.hs >> 炉石回凄凉之地
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安东修士|r
.turnin 261 ,, Down the Scarlet Path
.accept 1052 ,, Down the Scarlet Path
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1466 ,, Reagents for Reclaimers Inc.
.accept 1467 ,, Reagents for Reclaimers Inc.
.target Kreldig Ungor

step << Human Mage
#completewith next
.zone Stormwind City >> 传送到暴风城
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Redridge >> 飞往赤脊山
.target Dungar Longdrink
.zoneskip Stormwind City,1
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯蒂·亨特|r和|cRXP_FRIENDLY_兰达尔·亨特|r
.vendor >>|cRXP_BUY_购买|r|T132261:0|t[|cFF0070FF马|r]
.goto Elwynn Forest,84.152,65.489
.train 148 >>学习|T132261:0|t[骑术：马]
.goto Elwynn Forest,84.321,64.869
.xp <40,1
.money <90
.skill riding,75,1
.target Katie Hunter
.target Randal Hunter
step << Human Mage
#completewith next
.zone Ironforge >> 传送到铁炉堡
.zoneskip Elwynn Forest,1
step << NightElf
#completewith next
+|cRXP_WARN_飞往达纳苏斯购买你的坐骑!|r
.xp <40,1
.money <90
.skill riding,75,1 
.zoneskip Desolace,1
step << NightElf
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞特纳斯·天河|r
.fly Teldrassil >> 飞往泰达希尔
.target Baritanas Skyriver
.xp <40,1
.money <90
.skill riding,75,1 
.zoneskip Desolace,1
step << NightElf
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
.xp <40,1
.money <90
.skill riding,75,1 
step << NightElf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾萨姆|r和|cRXP_FRIENDLY_莱兰奈|r
.train 828 >>学习|T132242:0|t[骑术：豹]
.goto Darnassus,38.694,15.857
.vendor >>|cRXP_BUY_购买|r|T132267:0|t[|cFF0070FF霜刃豹|r]|cRXP_BUY_或者|r|T132225:0|t[|cFF0070FF夜刃豹|r]
.goto Darnassus,38.283,15.365
.xp <40,1
.zoneskip Darnassus,1
.target Jartsam
.target Lelanai
step << NightElf Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿雷亚斯塔·刃咏|r
.goto Darnassus,58.72,34.92
.trainer >> 学习职业技能
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << NightElf Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
.trainer >> 学习职业技能
.target Jandria
.zoneskip Darnassus,1
step << NightElf Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >> 学习职业技能
.target Syurna
.zoneskip Darnassus,1
step << NightElf Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
.trainer >> 学习职业技能
.target Jocaste
.zoneskip Darnassus,1
step << NightElf
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门回到鲁瑟兰村
.zoneskip Darnassus,1
step << NightElf
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Theramore >> 飞往塞拉摩
.zoneskip Teldrassil,1
step << !Mage
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞特纳斯·天河|r
.fly Theramore >> 飞往塞拉摩
.target Baritanas Skyriver
.zoneskip Desolace,1
step << !Mage
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.accept 6624 ,, Triage
.target Doctor Gustaf VanHowzen
step << !Mage
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_对|cRXP_FRIENDLY_联盟士兵|r|cRXP_WARN_使用|r|T133682:0|t[急救绷带]. 优先对|cRXP_FRIENDLY_受致命伤的士兵|r使用|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step << !Mage
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.turnin 6624 ,, Triage
.target Doctor Gustaf VanHowzen
step << !Mage
.isQuestTurnedIn 6624
.destroy 16991 >> 摧毁|T133682:0|t[急救绷带]. 你不需要它了
step << Warlock
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >> 向西游往|cRXP_FRIENDLY_塔贝萨|r处
step << Warlock
#completewith next
+|cRXP_WARN_后续任务会让|cRXP_FRIENDLY_塔贝萨|r召唤|cRXP_ENEMY_宝珠之魔|r. 这是一只40级的精英, 你需要击杀它. 因为不用面对其他小怪, 这个任务比较简单|r
>>|cRXP_WARN_在接受下一个任务前杀死|cRXP_FRIENDLY_塔贝萨农场|r周围的所有小怪|r
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔贝萨|r
.turnin 1799 ,, Fragments of the Orb of Orahil
.accept 4961 ,, Cleansing of the Orb of Orahil
.target Tabetha
step << Warlock
.goto Dustwallow Marsh,45.87,56.74
>> 击杀|cRXP_ENEMY_宝珠之魔|r
>>|cRXP_WARN_持续对|cRXP_ENEMY_宝珠之魔|r施放|r|T136183:0|t[恐惧]|cRXP_WARN_直到它被你的DoTs跳死|r
.complete 4961,1 
.mob Demon of the Orb
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔贝萨|r
.turnin 4961 ,, Cleansing of the Orb of Orahil
.accept 4976 ,, Returning the Cleansed Orb
.target Tabetha
step << Warlock
#completewith next
.goto Dustwallow Marsh,69.38,53.29,80 >> 游到塞拉摩岛
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在城堡楼上与|cRXP_FRIENDLY_伊文凯恩队长|r对话
.trainer >> 学习职业技能
.skill riding,75,1 
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔曼修士|r
.trainer >> 学习职业技能
.target Brother Karman
step << !Mage
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >> 乘船前往米奈希尔港
.zoneskip Arathi Highlands
step << Druid/NightElf Warrior 
.dungeon !SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Arathi >> 飞往阿拉希高地
.target Shellei Brondir
step << Gnome !Warlock !Mage/Dwarf !Paladin 
#completewith next
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
>>|cRXP_WARN_前往卡拉诺斯并购买|r|T132247:0|t[机械陆行鸟] << Gnome !Warlock
>>|cRXP_WARN_前往冻石农场并购买|r|T132248:0|t[山羊] << Dwarf !Paladin
.target Shellei Brondir
.money <90
.skill riding,75,1
.xp <40,1
step << Gnome Mage
#completewith next
.zone Ironforge >>传送到铁炉堡
step << Gnome Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁克|r
.trainer >> 学习职业技能
.target Dink
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_宾吉·羽哨|r和|cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>学习|T132247:0|t[骑术：机械陆行鸟]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_购买|r|T132247:0|t[|cFF0070FF机械陆行鸟|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维隆·冻石|r和|cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_购买|r|T132248:0|t[|cFF0070FF山羊|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>学习|T132248:0|t[骑术：羊]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << Human !Warlock !Paladin !Mage 
#completewith next
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Redridge >> 飞往赤脊山
>>|cRXP_WARN_前往东谷伐木场并购买|r|T132261:0|t[马]
.target Shellei Brondir
.money <90
.skill riding,75,1
.xp <40,1
step << Human !Warlock !Paladin !Mage 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯蒂·亨特|r和|cRXP_FRIENDLY_兰达尔·亨特|r
.vendor >>|cRXP_BUY_购买|r|T132261:0|t[|cFF0070FF马|r]
.goto Elwynn Forest,84.152,65.489
.train 148 >>学习|T132261:0|t[骑术：马]
.goto Elwynn Forest,84.321,64.869
.xp <40,1
.money <90
.skill riding,75,1
.target Katie Hunter
.target Randal Hunter
step << Human Warrior
.dungeon !SM
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Arathi >> 飞往阿拉希高地
.target Ariena Stormfeather
.skill riding,<75,1 
step << Human !Warlock !Paladin !Mage
.dungeon SM << Human Warrior
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Ironforge >> 飞往铁炉堡
.target Ariena Stormfeather
.skill riding,<75,1 
step << Druid/Warrior 
.dungeon SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
.zoneskip Wetlands,1 
step << Paladin
#completewith PaladinMountAcquired
.dungeon !SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Stormwind >> |cRXP_WARN_飞往暴风城并学习|r|T136103:0|t[召唤战马]
.target Shellei Brondir
.zoneskip Wetlands,1
.skill riding,75,1
step << !Mage !Druid !Warrior
.dungeon SM << Paladin
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
.zoneskip Wetlands,1
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图书馆员麦伊·苍尘|r
.accept 1050 ,, Mythology of the Titans
.target Librarian Mae Paledust
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗顿·石锤|r
.turnin 1467 ,, Reagents for Reclaimers Inc.
.isOnQuest 1467
.target Roetten Stonehammer
.zoneskip Ironforge,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r
.goto Ironforge,51.495,15.330
.trainer >> 学习职业技能
.target Fenthwick
.skill riding,75,1 << NightElf 
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r
.goto Ironforge,25.207,10.756
.trainer >> 学习职业技能
.target Toldren Deepiron
.skill riding,75,1 << NightElf 
step << Hunter
.goto Ironforge,69.872,82.890
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r
.trainer >> 学习职业技能
.target Regnus Thundergranite
.skill riding,75,1 << NightElf 
step << Paladin
#completewith PaladinMountAcquired
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Stormwind >> |cRXP_WARN_飞往暴风城并学习|r|T136103:0|t[召唤战马]
>>|cRXP_WARN_如果你已经有坐骑了就跳过此步|r
.target Gryth Thurden
.zoneskip Ironforge,1
step << Paladin
.isOnQuest 4485
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
.turnin 4485 ,, The Tome of Nobility
.turnin 1661 ,, The Tome of Nobility
.target Duthorian Rall
step << Paladin
.isOnQuest 4486
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
.turnin 4486 ,, The Tome of Nobility
.turnin 1661 ,, The Tome of Nobility
.target Duthorian Rall
step << Paladin
#label PaladinMountAcquired
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达索瑞恩·拉尔|r
.turnin 1661 ,, The Tome of Nobility
>>|cRXP_WARN_这是一个简单的对话任务. 你不需要存在任务日志中|r
.target Duthorian Rall
step << Paladin
.isQuestTurnedIn 1661
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Arathi >> 飞往阿拉希高地
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r
.accept 4487 ,, Summon Felsteed
.trainer >> 学习职业技能
.target Briarthorn
step << Warlock
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands >> 飞往湿地
.target Gryth Thurden
.isOnQuest 4487
step << Warlock
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> 乘船前往塞拉摩
.isOnQuest 4487
step << Warlock
.goto Dustwallow Marsh,67.47,51.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.fly Ratchet>> 飞往棘齿城
.isOnQuest 4487
step << Warlock
#completewith fsteed
.isOnQuest 4488
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4488 ,, Summon Felsteed
.accept 4490 ,, Summon Felsteed
step << Warlock
#completewith fsteed
.isOnQuest 4487
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4487 ,, Summon Felsteed
.accept 4490 ,, Summon Felsteed
step << Warlock
#label fsteed
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 4490 ,, Summon Felsteed
.turnin 4490 ,, Summon Felsteed
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
.turnin 4962 ,, Shard of a Felhound
.turnin 4976 ,, Returning the Cleansed Orb
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅纳拉·虚无撕裂者|r
>>|cRXP_WARN_等待剧情结束|r
.accept 4964 ,, The Completed Orb of Dar'Orahil
.turnin 4964 ,, The Completed Orb of Dar'Orahil
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Theramore >> 飞往塞拉摩
.target Bragok
step << Warlock
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >> 乘船前往米奈希尔港
.zoneskip Arathi Highlands
step << Warlock
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Arathi >> 飞往阿拉希高地
.target Shellei Brondir
step << Human Warrior/Gnome Warrior/Dwarf Warrior
.solo
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Arathi >> 飞往阿拉希高地
.target Shellei Brondir
.zoneskip Wetlands,1
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Arathi>> 飞往阿拉希高地
.target Gryth Thurden
.zoneskip Ironforge,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 40-41 奥特兰克山脉/阿拉希高地
#next 41-42 荒芜之地
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯奎尔图|r
.accept 693 ,, Wand over Fist
.target Skuerto
step
.goto Arathi Highlands,62.50,33.72
>>点击|cRXP_PICK_密斯莱尔水晶碎块|r
.accept 642 ,, The Princess Trapped
step
.goto Arathi Highlands,78.59,39.99,50,0
.goto Arathi Highlands,82.02,39.59,40,0
.goto Arathi Highlands,83.12,35.52,40,0
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>> 击杀|cRXP_ENEMY_枯须狗头人|r, |cRXP_ENEMY_枯须掘地工|r和|cRXP_ENEMY_枯须勘探员|r. 拾取他们的|cRXP_LOOT_密斯莱尔之尘|r
>>|cRXP_WARN_此任务在洞穴内提交. 在完成的过程中清理出一条通往洞穴深处的路|r
.complete 642,1
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,84.30,30.95
>>点击洞穴深处的|cRXP_PICK_虹光水晶碎块|r
.turnin 642 ,, The Princess Trapped
.accept 651 ,, Stones of Binding
step
#completewith EastBinding
.goto Arathi Highlands,70.34,39.52,140 >> 前往东部禁锢法阵
step << Warrior
#completewith next
>> 击杀|cRXP_ENEMY_海浪流放者|r. 拾取他们的|cRXP_LOOT_海浪咒符|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
#label EastBinding
.goto Arathi Highlands,66.710,29.725
>>打开|cRXP_PICK_东禁锢之石|r. 拾取|cRXP_LOOT_海浪钥匙|r
.complete 651,2 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>> 击杀|cRXP_ENEMY_海浪流放者|r. 拾取他们的|cRXP_LOOT_海浪咒符|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
.goto Arathi Highlands,60.18,53.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r
.accept 658 ,, Hints of a New Plague?
.target Quae
step
.goto Arathi Highlands,60.37,59.02,50,0
.goto Arathi Highlands,56.49,62.83,90,0
.goto Arathi Highlands,51.02,60.06,90,0
.goto Arathi Highlands,45.40,58.58,90,0
.goto Arathi Highlands,42.12,54.52,90,0
.goto Arathi Highlands,27.01,49.60,90,0
.goto Arathi Highlands,21.18,31.01,90,0
.goto Hillsbrad Foothills,74.57,50.07,90,0
.goto Hillsbrad Foothills,66.92,44.18,90,0
.goto Hillsbrad Foothills,57.57,36.38,70,0
.goto Hillsbrad Foothills,55.62,19.67,90,0
.goto Arathi Highlands,60.37,59.02
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>击杀|cRXP_ENEMY_被遗忘者信使|r. 拾取她掉落的|cRXP_LOOT_密封的信件|r
>>|cRXP_WARN_|cRXP_ENEMY_被遗忘者信使|r在塔伦米尔和格沙克农场之间的路上巡逻|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_以寻找|r|cRXP_ENEMY_被遗忘者信使|r << Hunter
>>|cRXP_WARN_如果你在希尔斯布莱德丘陵没有找到他, 稍后在阿拉希高地再找. 她巡逻的路线已标记在地图上.|r
.complete 658,1 
.unitscan Forsaken Courier
step
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r
.turnin 658 ,, Hints of a New Plague?
.target Quae
step
.isQuestTurnedIn 658
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r和|cRXP_FRIENDLY_基恩洛|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_基恩洛|r不在这, 就是有人在做护送任务. 在这等她回来|r
.accept 657 ,, Hints of a New Plague?
.goto Arathi Highlands,60.185,53.848
.turnin 657 ,, Hints of a New Plague?
.accept 660 ,, Hints of a New Plague?
.goto Arathi Highlands,60.238,53.920
.target Quae
.target Kinelory
step
.isQuestTurnedIn 658
>> 护送|cRXP_FRIENDLY_基恩洛|r穿越格沙克农场
.complete 660,1
.target Kinelory
step
#label NewPlague
.isQuestTurnedIn 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎艾|r
.turnin 660 ,, Hints of a New Plague?
.accept 661 ,, Hints of a New Plague?
.target Quae
step
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >> 进入石拳大厅洞穴
step
.goto Arathi Highlands,54.75,81.87
>> 击杀|cRXP_ENEMY_考格雷什|r. 拾取|cRXP_LOOT_特雷莱恩的符咒魔杖|r
.complete 693,1 
.mob Kor'gresh Coldrage
step
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_在|cRXP_ENEMY_考格雷什|r旁边的旗子上进行登出跳过操作以传送到避难谷附近. 如果你不会就直接正常跑出去|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >> |cRXP_WARN_点击此处查看视频参考|r
.subzoneskip 316,1
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯奎尔图|r
.turnin 693 ,, Wand over Fist
.target Skuerto
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯奎尔图|r
.accept 694 ,, Trelane's Defenses
.target Skuerto
step
#qremove 658 
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r
.fly Southshore>> 飞往南海镇
.target Cedrik Prose
.zoneskip Arathi Highlands,1
step
#completewith ExitSS
>>|cRXP_WARN_|cRXP_ENEMY_幽暗刺客|r袭击南海镇是一个随机事件|r
>>如果你在南海镇遇到|cRXP_ENEMY_幽暗刺客|r就击杀他们. 拾取|T134939:0|t[|cRXP_LOOT_刺客的契约|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_刺客的契约|r]并接受任务|r
>>|cRXP_WARN_如果没有遇到这个事件就跳过这步|r
.collect 3668,1,522
.use 3668
.accept 522 ,, Assassin's Contract
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板安德森|r
.home >> 绑定炉石到南海镇
.target Innkeeper Anderson
step
#som
.goto Hillsbrad Foothills,51.88,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与厨师杰森对话
>>如果你丢掉了之前打的海龟肉就跳过此步
.target Chef Jessen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厨师杰森|r
.accept 555 ,, Soothing Turtle Bisque
.turnin 555 ,, Soothing Turtle Bisque
step
#era/som
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_虔诚的莱雷恩|r对话
.turnin 1052 ,, Down the Scarlet Path
.isOnQuest 1052
step
.dungeon SM
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_虔诚的莱雷恩|r对话
.accept 1053 ,, In the Name of the Light
.isQuestTurnedIn 1052
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 522 ,, Assassin's Contract
.isOnQuest 522
.target Magistrate Henry Maleb
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_费恩·奥德利克|r
.turnin 661 ,, Hints of a New Plague?
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.accept 523 ,, Baron's Demise
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 525 ,, Further Mysteries
.accept 537 ,, Dark Council
.accept 512 ,, Noble Deaths
.target Magistrate Henry Maleb
step
.group
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官雷德帕斯|r
.accept 504 ,, Crushridge Warmongers
.target Marshal Redpath
step
#label ExitSS
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 538 ,, Southshore
.target Loremaster Dibbs
.isOnQuest 538
step
.group
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.accept 540 ,, Preserving Knowledge
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大法师安斯雷姆·鲁因维沃尔|r
.turnin 602 ,, Magical Analysis
.accept 603 ,, Ansirem's Key
.target Archmage Ansirem Runeweaver
step
.dungeon SM
#completewith next
.goto Alterac Mountains,46.26,60.57,0
.goto Alterac Mountains,49.69,55.07,0
.goto Alterac Mountains,54.53,53.42,0
.goto Alterac Mountains,50.00,55.96,0
.zone Silverpine Forest >> 在寻找队伍前往血色修道院时刷|cRXP_ENEMY_破碎岭食人魔|r和|cRXP_ENEMY_破碎岭蛮兵|r
.zoneskip Tirisfal Glades
.mob Crushridge Ogre
.mob Crushridge Brute
step
.dungeon SM
.goto Silverpine Forest,69.95,7.05,150,0
.goto Tirisfal Glades,56.15,64.62,100,0
.goto 1415,47.500,19.652,25,0
.goto 1415,47.792,19.611
.subzone 796,2 >> 进入血色修道院. 从图书馆开始, 这样你就能在图书馆终点拾取[|cRXP_FRIENDLY_血色十字军钥匙|r]
step
.dungeon SM
#completewith Bosses
>> 拾取|cRXP_LOOT_泰坦神话|r
>>|cRXP_WARN_这本书会随机地刷新在图书馆的地上或者书架上|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith Mythology
>>打开|cRXP_PICK_杜安的保险箱|r. 拾取[|cRXP_FRIENDLY_血色十字军钥匙|r]
.collect 7146,1 
step
.dungeon SM
#label Bosses
>> 击杀|cRXP_ENEMY_驯犬者洛克希|r, |cRXP_ENEMY_赫洛德|r, |cRXP_ENEMY_高阶审判官怀特迈恩|r和|cRXP_ENEMY_血色十字军指挥官莫格莱尼|r
>>|cRXP_ENEMY_驯犬者洛克希|r|cRXP_WARN_在图书馆|r
>>|cRXP_ENEMY_赫洛德|r|cRXP_WARN_在武器库|r
>>|cRXP_ENEMY_高阶审判官怀特迈恩|r|cRXP_WARN_和|cRXP_ENEMY_血色十字军指挥官莫格莱尼|r在大教堂|r
.complete 1053,4 
.complete 1053,3 
.complete 1053,1 
.complete 1053,2 
.isOnQuest 1053
step
.dungeon SM
#label Mythology
>> 拾取|cRXP_LOOT_泰坦神话|r
>>|cRXP_WARN_这本书会随机地刷新在图书馆的地上或者书架上|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith next
.hs >> 炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.dungeon SM
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_虔诚的莱雷恩|r对话
.turnin 1053 ,, In the Name of the Light
.isQuestTurnedIn 1052
step
.group
.goto Alterac Mountains,39.83,62.18,80,0
.goto Alterac Mountains,37.55,61.44,35 >> 前往奥特兰克废墟. 这个位置也是你的逃跑路线
step
#completewith Ruins
.group 2
>> 击杀|cRXP_ENEMY_破碎岭好战者|r
>>|cRXP_ENEMY_破碎岭好战者|r|cRXP_WARN_在血量低于25%时会呼叫帮助|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
.group 2
.goto Alterac Mountains,40.36,47.05,50,0
.goto Alterac Mountains,37.72,52.66,50,0
.goto Alterac Mountains,40.36,47.05
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
>> 击杀|cRXP_ENEMY_‘守财奴’格雷尔伯格|r. 拾取|cRXP_LOOT_匹瑞诺德王冠|r
>>|cRXP_ENEMY_‘守财奴’格雷尔伯格|r|cRXP_WARN_在奥特兰克废墟巡逻. 他是一只39级精英, 如果你不ADD就很容易击杀他. 他的巡逻路线已标记在地图上|r
.complete 543,1 
.isOnQuest 543
.unitscan Grel'borg the Miser
step
.group 2
#label Ruins
.goto Alterac Mountains,38.421,46.368
>> 进入城镇大厅
>>打开|cRXP_PICK_陈旧的书架|r. 拾取|cRXP_LOOT_破旧的皮书|r
>>|cRXP_WARN_你可以杀掉|cRXP_ENEMY_玛克拉克|r或者控住他, 拾取皮书并离开|r
.complete 540,2 
.isOnQuest 540
step
.group 2
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,37.25,50.39,60,0
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,36.855,53.237
>> 击杀|cRXP_ENEMY_破碎岭好战者|r
>>|cRXP_ENEMY_破碎岭好战者|r|cRXP_WARN_在血量低于25%时会呼叫帮助|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
.group
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >> 前往达伦德农场. 如果从奥特兰克废墟过来就注意不要摔死了
.isOnQuest 504,543,540
step
.solo
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >> 前往达伦德农场
step
#completewith ShadowMage
.goto Alterac Mountains,62.39,43.64,0
>>击杀|cRXP_ENEMY_辛迪加|r. 拾取他们的|cRXP_LOOT_奥特兰克徽记之戒|r
>>|cRXP_ENEMY_辛迪加刺客|r|cRXP_WARN_和|cRXP_ENEMY_辛迪加间谍|r处于|r|T132320:0|t[潜行]状态
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.goto Alterac Mountains,39.22,14.31
>> 击杀|cRXP_ENEMY_纳伽兹|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 537,2 
.mob Nagaz
step
.goto Alterac Mountains,39.177,14.661
>>打开|cRXP_PICK_旧木箱|r. 拾取|T134938:0|t[|cRXP_LOOT_附有魔法的羊皮纸|r]
>>|cRXP_WARN_使用|T134938:0|t[|cRXP_LOOT_附有魔法的羊皮纸|r]并接受任务|r
.collect 3706,1,551
.use 3706
.accept 551 ,, The Ensorcelled Parchment
step
#completewith next
>> 击杀|cRXP_ENEMY_阿古斯暗影法师|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>> 击杀|cRXP_ENEMY_巴隆·瓦杜斯|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_ENEMY_巴隆·瓦杜斯|r|cRXP_WARN_可能在外面的营地, 也可能在斯坦恩布莱德旅店地下室|r
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
step
#label ShadowMage
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>> 击杀|cRXP_ENEMY_阿古斯暗影法师|r
>>|cRXP_WARN_你也可以在斯坦恩布莱德或者高地找到|cRXP_ENEMY_阿古斯暗影法师|r|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>击杀|cRXP_ENEMY_辛迪加|r. 拾取他们的|cRXP_LOOT_奥特兰克徽记之戒|r
>>|cRXP_ENEMY_辛迪加刺客|r|cRXP_WARN_和|cRXP_ENEMY_辛迪加间谍|r处于|r|T132320:0|t[潜行]状态
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.group
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>> 击杀|cRXP_ENEMY_破碎岭食人魔|r和|cRXP_ENEMY_破碎岭蛮兵|r. 拾取他们的|cRXP_LOOT_失而复得的书籍|r
.complete 540,1
.isOnQuest 540
.mob Crushridge Ogre
.mob Crushridge Brute
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>> 飞往南海镇
.target Bibilfaz Featherwhistle
step
.isQuestComplete 504
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_治安官雷德帕斯|r
.turnin 504 ,, Crushridge Warmongers
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 512 ,, Noble Deaths
.turnin 537 ,, Dark Council
step
.abandon 504 ,, Crushridge Warmongers
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 523 ,, Baron's Demise
.isOnQuest 523
step
.isQuestTurnedIn 337
.isQuestComplete 540
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 540 ,, Preserving Knowledge
.turnin 551 ,, The Ensorcelled Parchment
.accept 542 ,, Return to Milton
.accept 554 ,, Stormpike's Deciphering
.target Loremaster Dibbs
step
.isQuestTurnedIn 337
.isQuestTurnedIn 540
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 551 ,, The Ensorcelled Parchment
.accept 542 ,, Return to Milton
.accept 554 ,, Stormpike's Deciphering
.target Loremaster Dibbs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 551 ,, The Ensorcelled Parchment
.accept 554 ,, Stormpike's Deciphering
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博学大师迪布斯|r
.turnin 551 ,, The Ensorcelled Parchment
.accept 554 ,, Stormpike's Deciphering
.target Loremaster Dibbs
step
.abandon 540 ,, Preserving Knowledge
step
#completewith NewPlague
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>> 飞往阿拉希高地
.target Darla Harris
step << Warrior
#completewith next
>> 击杀|cRXP_ENEMY_Thundering Exiles|r. 拾取他们的|cRXP_LOOT_雷霆咒符|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,52.042,50.734
>>打开|cRXP_PICK_外禁锢之石|r. 拾取|cRXP_LOOT_雷霆钥匙|r
.complete 651,3 
step << Warrior
.goto Arathi Highlands,52.74,50.61,40,0
.goto Arathi Highlands,50.97,52.16,40,0
.goto Arathi Highlands,51.52,48.93,40,0
.goto Arathi Highlands,52.12,51.11
>> 击杀|cRXP_ENEMY_雷霆流放者|r. 拾取他们的|cRXP_LOOT_雷霆咒符|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
#completewith WestBinding
.goto Arathi Highlands,25.56,30.32,100 >> 前往西禁锢法阵
step << Warrior
#completewith next
>> 击杀|cRXP_ENEMY_烈焰流放者|r. 拾取他们的|cRXP_LOOT_燃烧咒符|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step
#label WestBinding
.goto Arathi Highlands,25.468,30.110
>>打开|cRXP_PICK_西禁锢之石|r. 拾取|cRXP_LOOT_烈焰钥匙|r
.complete 651,1 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>> 击杀|cRXP_ENEMY_烈焰流放者|r. 拾取他们的|cRXP_LOOT_燃烧咒符|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step << Warrior
#completewith next
.goto Alterac Mountains,79.318,66.811 >> 前往奥特兰克山脉的冰风岗
step << Warrior
.isOnQuest 1712
.goto Alterac Mountains,79.318,66.811
>> 点击|cRXP_PICK_巴斯拉的大锅炉|r
.complete 1712,3 
step << Warrior
#completewith TheSummoning
+在接受 召唤 前查看以下视频学习如何Solo|cRXP_ENEMY_塞克隆尼亚|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_点击此处查看视频参考|r
.isOnQuest 1712
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1712 ,, Cyclonian
.target Bath'rah the Windwatcher
.isOnQuest 1712
step << Warrior
.isQuestTurnedIn 1712
#label TheSummoning
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.accept 1713 ,, The Summoning
.timer 40,The Summoning RP
>>|cRXP_WARN_接受此任务会召唤|cRXP_ENEMY_塞克隆尼亚|r. 他攻击比较高但是可以Solo掉. 确保已查看如何Solo他的视频|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_点击此处查看视频参考|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.65,62.1
>>跟随|cRXP_FRIENDLY_观风者巴斯拉|r, 到地方后他会召唤|cRXP_ENEMY_塞克隆尼亚|r
>> 击杀|cRXP_ENEMY_塞克隆尼亚|r. 拾取他的|cRXP_LOOT_旋风之心|r
>>|cRXP_ENEMY_塞克隆尼亚|r攻击比较高但是可以Solo掉. 确保已查看如何Solo他的视频|r
.complete 1713,1 
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >> |cRXP_WARN_点击此处查看视频参考|r
.isOnQuest 1713
step << Warrior
.isQuestComplete 1713
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
.turnin 1713 ,, The Summoning
.target Bath'rah the Windwatcher
step << Warrior
.isQuestTurnedIn 1713
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_观风者巴斯拉|r
>>|cRXP_WARN_|T132403:0|t[|cFF0070FF旋风之斧|r]是其中最好的任务奖励. 尽管如此, 你也可以选择其他奖励, 损失很小|r
.turnin 1792 ,, Whirlwind Weapon
.target Bath'rah the Windwatcher
step << Warrior 
.isQuestTurnedIn 1713
#completewith HinterArrive
.goto Hillsbrad Foothills,71.43,21.04,50,0
.goto Hillsbrad Foothills,84.23,31.99,50,0
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> 前往辛特兰
step
#completewith next
.isQuestAvailable 1713 << Warrior 
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >> 前往辛特兰
step
#label HinterArrive
.goto The Hinterlands,11.806,46.755
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗斯塔德·蛮锤|r
.turnin 1449 ,, To The Hinterlands
.accept 1450 ,, Gryphon Master Talonaxe
.target Falstad Wildhammer
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fp Hinterlands >> 开启辛特兰飞行点
.target Guthrum Thunderfist
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_狮鹫兽管理员沙拉克·鹰斧|r
.turnin 1450 ,, Gryphon Master Talonaxe
.accept 1451 ,, Rhapsody Shindigger
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉普索迪·铁铲|r
.turnin 1451 ,, Rhapsody Shindigger
.accept 1452 ,, Rhapsody's Kalimdor Kocktail
.target Rhapsody Shindigger
step
.hs >> 炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.zoneskip The Hinterlands,1
step
#completewith Faldir
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi >> 飞往阿拉希高地
.target Darla Harris
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.accept 682 ,, Stromgarde Badges
.target Captain Nials
step
.group
.goto Arathi Highlands,46.042,47.764
>>点击|cRXP_PICK_通缉告示|r
.accept 684 ,, Wanted! Marez Cowl
.accept 685 ,, Wanted! Otto and Falconcrest
step
.solo
.goto Arathi Highlands,36.229,57.375
>>点击|cRXP_PICK_内禁锢之石|r
.turnin 651 ,, Stones of Binding
step
.group
.goto Arathi Highlands,36.229,57.375
>>点击|cRXP_PICK_内禁锢之石|r
.turnin 651 ,, Stones of Binding
.accept 652 ,, Breaking the Keystone
step
#completewith MarezCowl
.group 2
.goto Arathi Highlands,26.04,62.80,0
>> 击杀|cRXP_ENEMY_辛迪加窃贼|r, |cRXP_ENEMY_辛迪加咒术师|r和|cRXP_ENEMY_辛迪加潜伏者|r. 拾取他们的|cRXP_LOOT_激流堡徽章|r
.complete 682,1 
.mob Syndicate Thief
.mob Syndicate Conjuror
.mob Syndicate Prowler
.isOnQuest 682
step
#completewith next
.group 2
.goto Arathi Highlands,29.599,63.682,0 
>> 击杀|cRXP_ENEMY_玛雷兹·考尔|r. 拾取她掉落的|cRXP_LOOT_头颅|r
>>|cRXP_ENEMY_玛雷兹·考尔|r|cRXP_WARN_有2个不同的刷新点. 一个在高地的位置, 另一个在房子后面的下面. 刷新点已标记在地图上|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找她的位置|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 4
.goto Arathi Highlands,26.026,65.656
>> 击杀|cRXP_ENEMY_奥图|r和|cRXP_ENEMY_法库雷斯特领主|r. 拾取他们的|cRXP_LOOT_头|r
.complete 685,1 
.complete 685,2 
.mob Otto
.mob Lord Falconcrest
.isOnQuest 685
step
#label MarezCowl
.group 2
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>> 击杀|cRXP_ENEMY_玛雷兹·考尔|r. 拾取她掉落的|cRXP_LOOT_头颅|r
>>|cRXP_ENEMY_玛雷兹·考尔|r|cRXP_WARN_有2个不同的刷新点. 一个在高地的位置, 另一个在房子后面的下面. 刷新点已标记在地图上|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找她的位置|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 2
.goto Arathi Highlands,26.04,62.80,40,0
.goto Arathi Highlands,29.477,64.149,40,0
.goto Arathi Highlands,26.04,62.80
>> 击杀|cRXP_ENEMY_辛迪加窃贼|r, |cRXP_ENEMY_辛迪加咒术师|r和|cRXP_ENEMY_辛迪加潜伏者|r. 拾取他们的|cRXP_LOOT_激流堡徽章|r
.complete 682,1 
.mob Syndicate Thief
.mob Syndicate Conjuror
.mob Syndicate Prowler
.isOnQuest 682
step
.group 2
.goto Arathi Highlands,24.14,61.85,30,0
.goto Arathi Highlands,24.25,64.97,30,0
.goto Arathi Highlands,21.22,66.52,40,0
.goto Arathi Highlands,20.21,67.17
>> 击杀|cRXP_ENEMY_石拳萨满|r. 拾取|cRXP_LOOT_碧蓝玛瑙石|r
.complete 694,1 
.mob Boulderfist Shaman
.isOnQuest 694
step
.group 3
.line Arathi Highlands,51.47,62.86,52.40,61.71,52.88,60.55,53.55,59.12,53.50,57.45,56.00,53.72,57.19,53.47,57.83,52.44,58.15,50.90,58.95,49.98,59.25,48.79,63.29,47.45,64.13,46.33,64.67,45.12,65.36,44.70,66.45,41.91,66.46,38.76,67.12,37.75,66.76,36.28,67.13,34.82,66.72,32.40,65.81,31.48,65.32,30.15,65.20,29.17,65.23,28.38,64.45,27.54,64.92,28.84,65.56,29.31,65.94,29.87,65.72,30.38,65.85,33.96,65.85,39.15,65.39,39.96,64.65,40.04,63.83,40.93,64.40,42.42,63.55,43.66,62.72,42.95,61.41,42.66,60.33,43.59,58.51,44.13,57.48,45.04,56.39,46.10,55.30,46.04,54.34,46.32,53.92,47.60,53.39,48.30,53.22,49.35,52.48,49.62,52.20,50.10,51.37,49.86,50.94,50.55,50.15,54.42,49.47,55.75,49.21,56.40,48.59,57.35,47.53,56.82,45.94,56.89,44.73,57.27,44.18,57.62,43.39,57.58,41.99,54.35,41.37,52.86,41.00,51.93,40.26,50.75,39.01,50.91,37.71,49.91,37.26,49.60,36.31,49.65,34.70,49.04,32.84,48.14,31.85,47.98,30.96,45.92,30.53,45.11,29.31,45.06,28.95,43.63,28.32,42.50,27.88,41.11,27.82,39.36,27.14,38.30,27.24,35.22,27.02,33.80,26.63,32.82,26.71,31.35,25.98,30.58,26.50,30.73,26.40,32.32,24.72,34.39,24.09,34.93,23.68,35.34,23.51,35.57,22.92,36.46,22.69,38.23,21.29,39.69,21.85,41.02,21.32,42.13,21.28,43.16,21.29,44.12,22.50,44.63,22.80,45.81,22.95,46.40,24.03,46.68,25.02,47.22,25.65,47.63,26.78,48.39,28.37,49.05,28.44,49.09,29.21,50.19,29.66,51.84,30.25,52.82,30.47,53.30,30.53,54.51,31.28,55.28,39.30,55.96,40.00,57.11,40.35,56.72,40.64,56.41,41.45,57.19,41.84,57.99,42.80,58.55,43.39,58.58,44.48,58.75,45.09,58.86,46.58,59.63,47.74,60.30,48.88,60.56,50.05,62.41,50.33,62.96,51.41,62.92
>> 击杀|cRXP_ENEMY_弗兹鲁克|r. 拾取|cRXP_LOOT_秩序魔棒|r
>>|cRXP_WARN_在击杀|cRXP_ENEMY_弗兹鲁克|r前, 优先击杀和打断|cRXP_ENEMY_斯利比|r, |cRXP_ENEMY_兹诺特|r和|cRXP_ENEMY_费伯兹|r|r
>>|cRXP_ENEMY_弗兹鲁克|r|cRXP_WARN_吃控制|r
>>|cRXP_WARN_他们的巡逻路线已标记在地图上|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找|r|cRXP_ENEMY_弗兹鲁克|r << Hunter
.complete 652,1
.link https://www.twitch.tv/videos/778346703 >> |cRXP_WARN_点击此处查看视频参考|r << Hunter
.link https://www.twitch.tv/videos/669107037?t=05h51m54s >> |cRXP_WARN_点击此处查看视频参考|r << Warlock
.unitscan Fozruk
.mob Sleeby
.mob Znort
.mob Feeboz
step
.group
.goto Arathi Highlands,36.07,58.09
>>点击|cRXP_PICK_钥匙之石|r
>>|cRXP_WARN_如果你还在队伍中就与队友一起交还这个任务! 交任务会刷新一只42级精英|cRXP_ENEMY_瑟恩纳|r. 如果你一个人你可以击杀他或者直接逃跑|r
.turnin 652 ,, Breaking the Keystone
.isQuestComplete 652
step
.group
.goto Arathi Highlands,36.07,58.09
>>点击|cRXP_PICK_钥匙之石|r
.accept 653 ,, Myzrael's Allies
.isQuestTurnedIn 652
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.turnin 682 ,, Stromgarde Badges
.turnin 684 ,, Wanted! Marez Cowl
.turnin 685 ,, Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 682
.isQuestComplete 684
.isQuestComplete 685
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.turnin 684 ,, Wanted! Marez Cowl
.target Captain Nials
.isQuestComplete 684
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.turnin 685 ,, Wanted! Otto and Falconcrest
.target Captain Nials
.isQuestComplete 685
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼艾丝队长|r
.turnin 682 ,, Stromgarde Badges
.target Captain Nials
.isQuestComplete 682
step
.group
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_学徒克里汀|r
.turnin 694 ,, Trelane's Defenses
.target Apprentice Kryten
.isQuestComplete 694
step
.group
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_学徒克里汀|r
.accept 695 ,, An Apprentice's Enchantment
.target Apprentice Kryten
.isQuestTurnedIn 694
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯奎尔图|r
.turnin 695 ,, An Apprentice's Enchantment
>>|cRXP_WARN_跳过此步. 后续任务对于专家模式来说太难了|r
.target Skuerto
.isQuestTurnedIn 694
step
.group
.destroy 4529 >> 摧毁|T134094:0|t[附魔玛瑙石]. 你不需要它
step
#label Faldir
#completewith next
.goto Arathi Highlands,30.74,66.94,60,0
.goto Arathi Highlands,22.72,71.98,50,0
.goto Arathi Highlands,21.50,75.91,40,0
.goto Arathi Highlands,21.98,79.96,30 >> 前往法迪尔海湾
step
.goto Arathi Highlands,31.78,82.68
.target Lolo the Lookout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哨兵鲁鲁|r
.accept 663 ,, Land Ho!
step
.goto Arathi Highlands,32.283,81.364
.target Shakes O'Breen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 663 ,, Land Ho!
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副尼兹利克斯|r
.accept 662 ,, Deep Sea Salvage
step
.goto Arathi Highlands,34.002,80.792
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯迪加特船长|r
.accept 664 ,, Drowned Sorrows
.target Captain Steelgut
step
.goto Arathi Highlands,33.869,80.549
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹索普教授|r
>>|cRXP_WARN_这将开启护送任务. 如果|cRXP_FRIENDLY_菲兹索普教授|r不在这, 可能是有人正在做这个任务. 等待他回来|r
.accept 665 ,, Sunken Treasure
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.74,79.59,30,0
.goto Arathi Highlands,33.856,80.444
>> 护送|cRXP_FRIENDLY_菲兹索普教授|r进入小洞穴
>> 击杀|cRXP_ENEMY_复仇巨浪|r
>> 之后跟随|cRXP_FRIENDLY_菲兹索普教授|r回到营地
.complete 665,1
.target Professor Phizzlethorpe
.mob Vengeful Surge
step
.goto Arathi Highlands,33.856,80.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_德拉克里格博士|r
.turnin 665 ,, Sunken Treasure
.accept 666 ,, Sunken Treasure
.target Doctor Draxlegauge
step << !Warlock !Druid
#completewith SLog
.cast 7178 >> |cRXP_WARN_如果你有的话就|r|cRXP_WARN_使用|r|T134797:0|t[水下呼吸药剂]
>>|cRXP_WARN_如果你没有水下呼吸药剂就密切关注你的呼吸条!|r
.use 5996 
step
#completewith SLog
>> 拾取海底的|cRXP_LOOT_精灵宝石|r
.use 4491 >> |cRXP_WARN_装备|r|T133149:0|t[寻宝潜水镜]|cRXP_WARN_以使|cRXP_LOOT_精灵宝石|r显示在小地图上|r
>>|cRXP_WARN_确保你给自己上了|r|T136148:0|t[魔息术] << Warlock
>>|cRXP_WARN_一旦呼吸条快完了就|r|cRXP_WARN_施放|r|T132112:0|t[水栖形态] << Druid
.complete 666,1 
.use 5996 
step
#completewith SLog
>> 击杀|cRXP_ENEMY_刺脊劫掠者|r和|cRXP_ENEMY_刺脊巫女|r
>>|cRXP_WARN_注意|cRXP_ENEMY_刺脊劫掠者|r会对你施放|r|T132149:0|t[网]
.complete 664,1 
.complete 664,2 
.use 5996 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
.goto Arathi Highlands,23.394,85.086
>> 在沉船2层拾取|cRXP_LOOT_处女号的航海日志|r. 它在锅子里
.complete 662,2 
.use 5996 
step
.goto Arathi Highlands,23.045,84.510
>> 在沉船2层拾取|cRXP_LOOT_处女号的航海图|r. 它在枕头上
.complete 662,1 
.use 5996 
step
#completewith next
.goto Arathi Highlands,20.5,85.6,50 >> 游到另一艘沉船
step
.goto Arathi Highlands,20.458,85.612
>> 在沉船2层拾取|cRXP_LOOT_银松之魂号的航海图|r. 它在加农炮边上的箱子上
.complete 662,3 
.use 5996 
step
#label SLog
.goto Arathi Highlands,20.649,85.103
>>在沉船底部拾取|cRXP_LOOT_银松之魂号的航海图|r. 它在海床上
.complete 662,4 
.use 5996 
step
#completewith next
>> 拾取海底的|cRXP_LOOT_精灵宝石|r
.use 4491 >> |cRXP_WARN_装备|r|T133149:0|t[寻宝潜水镜]|cRXP_WARN_以使|cRXP_LOOT_精灵宝石|r显示在小地图上|r
>>|cRXP_WARN_确保你给自己上了|r|T136148:0|t[魔息术] << Warlock
>>|cRXP_WARN_一旦呼吸条快完了就|r|cRXP_WARN_施放|r|T132112:0|t[水栖形态] << Druid
.complete 666,1 
.use 5996 
step
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1
>> 击杀|cRXP_ENEMY_刺脊劫掠者|r和|cRXP_ENEMY_刺脊巫女|r
>>|cRXP_WARN_注意|cRXP_ENEMY_刺脊劫掠者|r会对你施放|r|T132149:0|t[网]
.complete 664,1 
.complete 664,2 
.use 5996 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
.goto Arathi Highlands,17.7,88.8,80,0
.goto Arathi Highlands,23.0,92.2,80,0
.goto Arathi Highlands,24.3,84.8,80,0
.goto Arathi Highlands,25.2,90.6,80,0
.goto Arathi Highlands,19.6,84.7,80,0
.goto Arathi Highlands,22.7,88.6
>> 拾取海底的|cRXP_LOOT_精灵宝石|r
.use 4491 >> |cRXP_WARN_装备|r|T133149:0|t[寻宝潜水镜]|cRXP_WARN_以使|cRXP_LOOT_精灵宝石|r显示在小地图上|r
>>|cRXP_WARN_确保你给自己上了|r|T136148:0|t[魔息术] << Warlock
>>|cRXP_WARN_一旦呼吸条快完了就|r|cRXP_WARN_施放|r|T132112:0|t[水栖形态] << Druid
.complete 666,1 
.use 5996 
step
#completewith NormalHelm
.itemStat 1,QUALITY,1
+装备你的|T133127:0|t[头盔]
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副尼兹利克斯|r
.turnin 662 ,, Deep Sea Salvage
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯迪加特船长|r和|cRXP_FRIENDLY_德拉克里格博士|r
.turnin 664 ,, Drowned Sorrows
.goto Arathi Highlands,34.002,80.792
.turnin 666 ,, Sunken Treasure
.accept 668 ,, Sunken Treasure
.goto Arathi Highlands,33.856,80.444
.target Captain Steelgut
.target Doctor Draxlegauge
step
#label NormalHelm
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 668 ,, Sunken Treasure
.accept 669 ,, Sunken Treasure
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >> 在你护送|cRXP_FRIENDLY_菲兹索普教授|r的洞里石头上小退然后重新登入
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_点击此处查看视频参考|r
step
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r
.fly Ironforge >> 飞往铁炉堡
.zoneskip Arathi Highlands,1
.target Cedrik Prose
step
.group
.abandon 684 ,, Wanted! Marez Cowl
step
.group
.abandon 685 ,, Wanted! Otto and Falconcrest
step
.group
.abandon 696 ,, Attack on the Tower
step
.group
.abandon 694 ,, Trelane's Defenses
step
.group
.abandon 652 ,, Breaking the Keystone
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 41-42 荒芜之地
#next 42-43 荆棘谷 III
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_宾吉·羽哨|r和|cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>学习|T132247:0|t[骑术：机械陆行鸟]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_购买|r|T132247:0|t[|cFF0070FF机械陆行鸟|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维隆·冻石|r和|cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_购买|r|T132248:0|t[|cFF0070FF山羊|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>学习|T132248:0|t[骑术：羊]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> 学习职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> 学习职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝莉亚·雷岩|r
.goto Ironforge,70.856,85.839
.train 14925 >>学习|T132270:0|t[低吼 (等级 5)]
.target Belia Thundergranite
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankdeposit 5826,4502,5996,3684,3660 >>将以下物品存入银行:
>>|T134332:0|t[克拉维尔的设计图] 
>>|T134116:0|t[精灵宝石样本] 
>>|T134797:0|t[水下呼吸药剂] (如果你有的话) 
>>|T132767:0|t[匹瑞诺德王冠] (如果有的话) 
>>|T132761:0|t[奥特兰克的书籍] (如果有的话) 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 4611 >> 从银行取出下列物品:
>>9 |T134564:0|t[蓝珍珠] (如果你有的话)
.target Bailey Stonemantle
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗顿·石锤|r
.turnin 1467 ,, Reagents for Reclaimers Inc.
.isOnQuest 1467
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷矛|r
.accept 707 ,, Ironband Wants You!
.turnin 554 ,, Stormpike's Deciphering
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图书馆员麦伊·苍尘|r
.turnin 1050 ,, Mythology of the Titans
.target Librarian Mae Paledust
step
.group
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛利·硬骨|r
.turnin 653 ,, Myzrael's Allies
.accept 687 ,, Theldurin the Lost
.target Gerrig Bonegrip
.isQuestTurnedIn 652
step
#completewith EnterBandlands
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Loch Modan>> 飞往洛克莫丹
.target Gryth Thurden
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克|r
.accept 2500 ,, Badlands Reagent Run
.target Ghak Healtouch
step
#completewith next
.goto Loch Modan,65.93,65.62,80 >> 前往铁环挖掘场
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.turnin 707 ,, Ironband Wants You!
.target Prospector Ironband
.accept 738 ,, Find Agmond
step
#completewith EnterBandlands
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >> 前往荒芜之地
step
#completewith StudyR
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r和|cRXP_LOOT_翅膀|r
>> 击杀|cRXP_ENEMY_山狗|r. 拾取他们的|cRXP_LOOT_牙齿|r
.complete 2500,1 
.collect 3404,4,703,1 
.complete 2500,2 
.mob Starving Buzzard
.mob Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote

step
#label EnterBandlands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷杜尔|r和|cRXP_FRIENDLY_西格鲁·铁斧|r
.accept 719 ,, A Dwarf and His Tools
.goto Badlands,53.421,43.393
.accept 718 ,, Mirages
.goto Badlands,53.802,43.301
.target Prospector Ryedol

.target Sigrun Ironhew

step
#completewith next
.goto Badlands,53.20,30.57,0
.goto Badlands,43.46,30.54,0
>> 击杀|cRXP_ENEMY_暗炉矮人|r. 拾取|cRXP_LOOT_雷杜尔的好运锄|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
.goto Badlands,53.027,33.944
>>点击地上的|cRXP_PICK_弄皱的地图|r
.accept 720 ,, A Sign of Hope
step
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54,40,0
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54
>> 击杀|cRXP_ENEMY_暗炉矮人|r. 拾取|cRXP_LOOT_雷杜尔的好运锄|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
#completewith next
.goto Badlands,66.92,23.45,50 >> 前往柯什营地
step
.goto Badlands,66.601,21.487,10,0
.goto Badlands,66.604,22.026,10,0
.goto Badlands,66.164,21.886,10,0
.goto Badlands,66.92,23.45
>> 拾取地上的|cRXP_PICK_补给箱|r
>>|cRXP_WARN_|cRXP_PICK_补给箱|r刷新在柯什营地的几处地点|r
.complete 718,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_西格鲁·铁斧|r和|cRXP_FRIENDLY_勘察员雷杜尔|r
.turnin 718 ,, Mirages
.accept 733 ,, Scrounging
.goto Badlands,53.802,43.301
.turnin 719 ,, A Dwarf and His Tools
.turnin 720 ,, A Sign of Hope
.goto Badlands,53.421,43.393
.target Prospector Ryedol

.target Sigrun Ironhew

step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_流放者马特克|r
.turnin 1106 ,, Martek the Exiled
.accept 1108 ,, Indurium
.target Martek the Exiled
step
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
>>|cRXP_WARN_如果你没有9个|r|T134564:0|t[蓝珍珠]就放弃任务并跳过此步|r
.accept 705 ,, Pearl Diving
.turnin 705 ,, Pearl Diving
.itemcount 4611,9
.target Rigglefuzz
step
.abandon 705 ,, Pearl Diving
step
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
.accept 703 ,, Barbecued Buzzard Wings
step
.isQuestComplete 703
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
.turnin 703 ,, Barbecued Buzzard Wings
step
.goto Badlands,50.892,62.402
>>点击|cRXP_PICK_残破的矮人骸骨|r
.turnin 738 ,, Find Agmond
.accept 739 ,, Murdaloc
step
>> 击杀|cRXP_ENEMY_石窟断骨者|r和|cRXP_ENEMY_莫达洛克|r. 拾取他们的|cRXP_LOOT_精铁碎片|r
.complete 739,2 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.complete 739,1 
.goto Badlands,49.58,66.66
.complete 1108,1 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.mob Stonevault Bonesnapper
.mob Murdaloc
step
.group
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 687 ,, Theldurin the Lost
.target Theldurin the Lost
.isQuestTurnedIn 653
step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_流放者马特克|r
.turnin 1108 ,, Indurium
.timer 15,Indurium RP 
.accept 1137 ,, News for Fizzle
.target Martek the Exiled
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 710 ,, Study of the Elements: Rock
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>> 击杀|cRXP_ENEMY_次级石元素|r. 拾取他们的|cRXP_LOOT_小石头碎块|r和|cRXP_LOOT_石元素的碎片|r
>>|cRXP_WARN_你不需要现在就集齐|cRXP_LOOT_石元素的碎片|r|r
.complete 710,1 
.complete 2500,3 
.disablecheckbox
.mob Lesser Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 710 ,, Study of the Elements: Rock
.accept 711 ,, Study of the Elements: Rock
.target Lotwil Veriatus
step
.goto Badlands,14.70,35.30
>> 击杀|cRXP_ENEMY_石元素|r. 拾取他们的|cRXP_LOOT_大石片|r和|cRXP_LOOT_石元素的碎片|r
>>|cRXP_WARN_你不需要现在就集齐|cRXP_LOOT_石元素的碎片|r|r
.complete 711,1 
.complete 2500,3 
.disablecheckbox
.mob Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 711 ,, Study of the Elements: Rock
.target Lotwil Veriatus
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>> 击杀|cRXP_ENEMY_次级石元素|r. 拾取他们的|cRXP_LOOT_石元素的碎片|r
.complete 2500,3 
.mob Lesser Rock Elemental
step
#label StudyR
.goto Badlands,13.6,74.8
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,11.0,80.0
>> 击杀|cRXP_ENEMY_火烟巨魔|r. 拾取他们的|cRXP_LOOT_金属碎片|r
.complete 733,1 
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r和|cRXP_LOOT_翅膀|r
>> 击杀|cRXP_ENEMY_山狗|r. 拾取他们的|cRXP_LOOT_牙齿|r
.complete 2500,1 
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 703,1 
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 2500,2 
.goto Badlands,49.0,32.4,80,0
.goto Badlands,49.2,48.8,80,0
.goto Badlands,57.8,47.7,80,0
.goto Badlands,56.6,73.8,80,0
.goto Badlands,58.8,54.0
.mob Starving Buzzard
.mob Buzzard
.mob Giant Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_里格弗兹|r
.turnin 703 ,, Barbecued Buzzard Wings
.target Rigglefuzz
step
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_西格鲁·铁斧|r
.turnin 733 ,, Scrounging
.target Sigrun Ironhew
step
#completewith ExitLM
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >> 前往洛克莫丹
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.turnin 739 ,, Murdaloc
.target Prospector Ironband
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克|r
.turnin 2500 ,, Badlands Reagent Run
.target Ghak Healtouch
step
#label ExitLM
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Ironforge >> 飞往铁炉堡
.target Thorgrum Borrelson
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 42-43 荆棘谷 III
#next 43-44 悲伤沼泽 II
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 3684,3660,5826,4502 >> 从银行取出下列物品:
>>|T134332:0|t[克拉维尔的设计图] 
>>|T134116:0|t[精灵宝石样本] 
>>|T132767:0|t[匹瑞诺德王冠] (如果有的话) 
>>|T132761:0|t[奥特兰克的书籍] (如果有的话) 
.target Bailey Stonemantle
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_宾吉·羽哨|r和|cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>学习|T132247:0|t[骑术：机械陆行鸟]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_购买|r|T132247:0|t[|cFF0070FF机械陆行鸟|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维隆·冻石|r和|cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_购买|r|T132248:0|t[|cFF0070FF山羊|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>学习|T132248:0|t[骑术：羊]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> 学习职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> 学习职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝莉亚·雷岩|r
.goto Ironforge,70.856,85.839
.trainer >> 确保你的宠物 |T135850:0|t[冰霜抗性]已经最大了
.target Belia Thundergranite
step
#completewith start
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> 进入矿道地铁. 坐地铁前往暴风城
>>|cRXP_WARN_你可以在等待地铁时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
step
.group
.goto Stormwind City,74.010,30.231
.target Count Remington Ridgewell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r
.turnin 543 ,, The 匹瑞诺德王冠
.isQuestComplete 543
step
.goto Stormwind City,74.182,7.465
.target Milton Sheaf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_密尔顿·西弗|r
.turnin 542 ,, Return to Milton
.isOnQuest 542
step
#completewith next
.goto Stormwind City,37.94,82.52,15 >> 前往法师塔中寻找|cRXP_FRIENDLY_高阶巫士安多玛斯|r
step
.goto Stormwind City,37.52,81.65
.target High Sorcerer Andromath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶巫士安多玛斯|r
.accept 1477 ,, Vital Supplies
step
.abandon 543 ,, The Perenolde Tiara
step
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安古斯·斯特恩|r
.accept 212 ,, A Meal Served Cold
>>|cRXP_WARN_这是一个30分钟的限时任务. 你不能登出否则这个任务就会失败|r
.target Angus Stern
step
.goto Stormwind City,52.615,65.704
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板奥里森|r
.home >> 绑定炉石到暴风城
.target Innkeeper Allison
step
#label start
#completewith ServedCold
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Westfall >> 飞往西部荒野
.target Dungar Longdrink
step
#completewith ServedCold
.goto Duskwood,44.65,86.61,0
.goto Stranglethorn Vale,40.70,3.72
.zone Stranglethorn Vale >> 前往叛军营地
step
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼麦兹修士|r
.accept 207 ,, Kurzen's Mystery
.target Brother Nimetz
step
.group
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.accept 202 ,, Colonel Kurzen
.target Lieutenant Doren
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >> 前往奈辛瓦里远征队营地
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r和|cRXP_FRIENDLY_艾尔加丁爵士|r
.accept 196 ,, Raptor Mastery
.goto Stranglethorn Vale,35.658,10.808
.accept 193 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,36.6,41.0
>> 击杀|cRXP_ENEMY_冷眼蜥蜴|r. 拾取|cRXP_LOOT_冷蜥蜴肉|r
.complete 212,1 
.mob Cold Eye Basilisk
step
#completewith next
.hs >> 炉石回暴风城
.zoneskip Stormwind City
step
#label ServedCold
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安古斯·斯特恩|r
.turnin 212 ,, A Meal Served Cold
.target Angus Stern
step
.dungeon RFD
#completewith HostEvil
.subzone 722 >> 现在前往剃刀高地. 在你去剃刀高地的路上寻找副本队伍
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大主教本尼迪塔斯|r
.accept 3636 ,, Bring the Light
.target Archbishop Benedictus
step
.dungeon RFD
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Booty Bay >> 飞往藏宝海湾
.target Dungar Longdrink
.zoneskip Stormwind City,1
step
.dungeon RFD
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 ,, Sunken Treasure
.target Fleet Master Seahorn
step
.dungeon RFD
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店内与|cRXP_FRIENDLY_利刃凯特琳|r对话
.turnin 603 ,, Ansirem's Key
.accept 610 ,, "Pretty Boy" Duncan
.target Catelyn the Blade
step
.dungeon RFD
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1118 ,, Back to Booty Bay
.isOnQuest 1118
step
.dungeon RFD
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> 乘船前往棘齿城
step
.dungeon RFD
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Thalanaar >> 飞往萨兰纳尔
.target Bragok
step
.dungeon RFD
#label HostEvil
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦雷姆·月歌|r
.accept 6626 ,, A Host of Evil
.target Myriam Moonsinger
step
.dungeon RFD
>> 击杀|cRXP_ENEMY_剃刀沼泽护卫者|r, |cRXP_ENEMY_剃刀沼泽织棘者|r和|cRXP_ENEMY_亡首教徒|r
>>|cRXP_WARN_这个任务在副本外完成|r
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
step
.dungeon RFD
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦雷姆·月歌|r
.turnin 6626 ,, A Host of Evil
.target Myriam Moonsinger
.isQuestComplete 6626
step
.dungeon RFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.subzone 722,2 >> 进入剃刀高地
step
.dungeon RFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贝尼斯特拉兹|r
>>|cRXP_WARN_一直往左走直到你到达The Murder Pens以抵达|r|cRXP_FRIENDLY_贝尼斯特拉兹|r处
>>|cRXP_WARN_除非你的队友都准备好了不要接受 封印神像. 这会开启护送任务. 此步的自动任务接受功能已关闭|r
.accept 3523 ,, Scourge of the Downs
.turnin 3523 ,, Scourge of the Downs
.accept 3525,1 ,, Extinguishing the Idol
.target Belnistrasz
step
.dungeon RFD
>>跟随并在仪式时保护|cRXP_FRIENDLY_贝尼斯特拉兹|r
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
step
.dungeon RFD
>> 点击|cRXP_PICK_贝尼斯特拉兹的火盆|r
.turnin 3525 ,, Extinguishing the Idol
.isQuestComplete 3525
step
.dungeon RFD
>> 击杀|cRXP_ENEMY_寒冰使者亚门纳尔|r
.complete 3636,1 
.isOnQuest 3636
step
.dungeon RFD
#completewith next
.hs >> 炉石回暴风城
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大主教本尼迪塔斯|r
.turnin 3636 ,, Bring the Light
.target Archbishop Benedictus
.isQuestComplete 3636
step
#completewith next
#ah
.goto Stormwind City,57.06,73.05
.goto Stormwind City,53.612,59.764
+|cRXP_WARN_去银行取出所有|r|T134332:0|t[荆棘谷的青山 - 书页]|cRXP_WARN_并从拍卖行购买缺失的书页|r
>>|cRXP_WARN_章节.1 需要: 书页 1,4,6,8|r
>>|cRXP_WARN_章节.2 需要: 书页 10,11,14,16|r
>>|cRXP_WARN_章节.3 需要: 书页 18,20,21,24|r
>>|cRXP_WARN_章节.4 需要: 书页 25,26,27|r
>>|cRXP_WARN_把刚买的书页都存入银行. 如果你无法获得缺失的书页就跳过此步|r
.target Newton Burnside
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Booty Bay >> 飞往藏宝海湾
.target Dungar Longdrink
step
.goto Stranglethorn Vale,27.000,77.124
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科博克|r
.accept 209 ,, Skullsplitter Tusks
.target Kebok
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 ,, Sunken Treasure
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在旅店内与|cRXP_FRIENDLY_利刃凯特琳|r对话
.turnin 603 ,, Ansirem's Key
.accept 610 ,, "Pretty Boy" Duncan
.target Catelyn the Blade
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 600 ,, Venture Company Mining
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1118 ,, Back to Booty Bay
.isOnQuest 1118
step
.goto Stranglethorn Vale,27.039,77.310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板斯金德|r
.home >> 绑定炉石到藏宝海湾
.target Innkeeper Skindle
step
.goto Stranglethorn Vale,26.756,76.383
.target Privateer Bloads
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_私掠者布劳兹|r
.accept 617 ,, Akiris by the Bundle
step
.goto Stranglethorn Vale,27.782,77.071
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海狼麦克基雷|r
.accept 606 ,, Scaring Shaky
step
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.accept 628 ,, Excelsior
step
.goto Stranglethorn Vale,28.096,76.217
.target First Mate Crazz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副克拉兹|r
.accept 595 ,, The Bloodsail Buccaneers
step
#completewith next
>> 击杀|cRXP_ENEMY_‘帅小伙’邓肯|r. 拾取|cRXP_LOOT_凯特琳的匕首|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,27.278,69.521
>>点击木桶上的|cRXP_PICK_血帆海盗的信件|r
.turnin 595 ,, The Bloodsail Buccaneers
.accept 597 ,, The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,27.40,69.39
>> 击杀|cRXP_ENEMY_‘帅小伙’邓肯|r. 拾取|cRXP_LOOT_凯特琳的匕首|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,28.096,76.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大副克拉兹|r
.turnin 597 ,, The Bloodsail Buccaneers
.accept 599 ,, The Bloodsail Buccaneers
.target First Mate Crazz
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_利刃凯特琳|r
.turnin 610 ,, "Pretty Boy" Duncan
.accept 611 ,, The Curse of the Tides
.target Catelyn the Blade
step
.goto Stranglethorn Vale,26.920,77.347
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪格|r
.accept 587 ,, Up to Snuff
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 599 ,, The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_独眼迪兹|r
.accept 576 ,, Keep An Eye Out
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17,70,0
.goto Stranglethorn Vale,33.43,62.94,70,0
.goto Stranglethorn Vale,34.27,64.75,70,0
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17
>> 击杀|cRXP_ENEMY_老迈的迷雾谷猩猩|r. 拾取他们的|cRXP_LOOT_薄雾谷猩猩的内脏|r和|cRXP_LOOT_猩猩牙|r
>>|cRXP_WARN_为之后的任务保留|cRXP_LOOT_猩猩牙|r|r
.complete 606,1 
.mob Elder Mistvale Gorilla
step
.goto Stranglethorn Vale,27.27,49.48,70,0
.goto Stranglethorn Vale,28.13,47.27,70,0
.goto Stranglethorn Vale,28.66,43.72,70,0
.goto Stranglethorn Vale,31.22,43.40,70,0
.goto Stranglethorn Vale,31.85,40.88
>> 击杀|cRXP_ENEMY_丛林潜猎者|r
.complete 196,1 
.mob Jungle Stalker
step
.goto Stranglethorn Vale,41.65,43.69,40,0
.goto Stranglethorn Vale,41.79,41.17,40,0
.goto Stranglethorn Vale,41.65,43.69
>> 击杀|cRXP_ENEMY_风险投资公司工头|r, |cRXP_ENEMY_风险投资公司勘探员|r, |cRXP_ENEMY_风险投资公司露天矿工|r和|cRXP_ENEMY_风险投资公司技工|r. 拾取他们的|cRXP_LOOT_蓝色歌唱水晶|r
.complete 600,1 
.mob Venture Co. Foreman
.mob Venture Co. Surveyor
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>点击房子里的|cRXP_PICK_书呆子赫罗德的档案|r
.turnin 200 ,, Bookie Herod
.accept 328 ,, The Hidden Key
step
.solo
#completewith Strongbox
.goto Stranglethorn Vale,46.30,7.61,30 >> 进入储藏室 (库尔森洞穴)
step
.group 2
#completewith GroupKurzen
.goto Stranglethorn Vale,46.30,7.61,30 >> 进入储藏室 (库尔森洞穴)
step
.group 2
#completewith next
>> 击杀|cRXP_ENEMY_库尔森精英|r和|cRXP_ENEMY_库尔森副首领|r
>> 击杀|cRXP_ENEMY_库尔森上校|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 202,1 
.complete 202,2 
.complete 202,3 
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step
#label Strongbox
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>> 点击地上的|cRXP_PICK_书呆子赫罗德的保险箱|r
.turnin 328 ,, The Hidden Key
.accept 329 ,, The Spy Revealed!
step
#label GroupKurzen
.group 2
.goto Stranglethorn Vale,49.943,3.953
>> 击杀|cRXP_ENEMY_库尔森精英|r和|cRXP_ENEMY_库尔森副首领|r
>> 击杀|cRXP_ENEMY_库尔森上校|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 202,1 
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
.complete 202,2 
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
.complete 202,3 
.goto Stranglethorn Vale,49.943,3.953
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step
.group
.goto Stranglethorn Vale,38.042,3.012
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.turnin 202 ,, Colonel Kurzen
.isQuestComplete 202
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.turnin 329 ,, The Spy Revealed!
.accept 330 ,, Patrol Schedules
.target Lieutenant Doren
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞斯曼下士|r
.turnin 330 ,, Patrol Schedules
.accept 331 ,, Report to Doren
.target Corporal Sethman
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多伦中尉|r
.turnin 331 ,, Report to Doren
.target Lieutenant Doren
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 196 ,, Raptor Mastery
.accept 197 ,, Raptor Mastery
.target Hemet Nesingwary
step
.abandon 202 ,, Colonel Kurzen
step
#completewith next
.goto Stranglethorn Vale,29.471,19.119,70 >> 前往巴拉尔废墟
step
.goto Stranglethorn Vale,29.471,19.119
>>打开|cRXP_PICK_月亮照耀着山谷|r. 拾取|cRXP_LOOT_巨魔传说第一章|r
.complete 207,1
step
#completewith next
.goto Stranglethorn Vale,24.719,8.905,150 >> 前往祖昆达废墟
step
.goto Stranglethorn Vale,24.719,8.905
>>打开|cRXP_PICK_帝王之墓|r. 拾取|cRXP_LOOT_巨魔传说第四章|r
.complete 207,4
step
.goto Stranglethorn Vale,22.94,12.01
>>打开|cRXP_PICK_古拉巴什的毁灭|r. 拾取|cRXP_LOOT_巨魔传说第三章|r
.complete 207,3
step
.goto Stranglethorn Vale,21.55,16.57,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,30.02,26.92,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,21.55,16.57
>>Kill a |cRXP_ENEMY_老海鳄|r. 拾取|cRXP_LOOT_老鳄鱼的皮|r
.complete 628,1 
.unitscan Elder Saltwater Crocolisk
step
#completewith Gazban
+|cRXP_WARN_密切关注你的呼吸条!!!|r
.isOnQuest 207,611
step
.goto Stranglethorn Vale,24.765,22.871
>>打开水下的|cRXP_PICK_游荡者格里雷克|r. 拾取|cRXP_LOOT_巨魔传说第二章|r
.complete 207,2
step
#completewith next
.goto Stranglethorn Vale,24.957,23.586
.cast 3678 >> |cRXP_WARN_对水下的|cRXP_PICK_海潮祭坛|r使用|r|T135637:0|t[凯特琳的匕首]|cRXP_WARN_召唤|r|cRXP_ENEMY_加兹班|r
.use 4027
step
#label Gazban
.goto Stranglethorn Vale,24.957,23.586
>> 击杀|cRXP_ENEMY_加兹班|r. 拾取|cRXP_LOOT_海潮之石|r
.complete 611,1 
.mob Gazban
step
#completewith next
.goto Stranglethorn Vale,39.10,5.09,50 >> 前往叛军营地
step
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼麦兹修士|r
.turnin 207 ,, Kurzen's Mystery
.accept 205 ,, Troll Witchery
.target Brother Nimetz
step
#completewith BBTurnin
.hs >> 炉石回藏宝海湾
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 600 ,, Venture Company Mining
.target Crank Fizzlebub
step
#label BBTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r和|cRXP_FRIENDLY_大财主里维加兹|r
.accept 604 ,, The Bloodsail Buccaneers
.goto Stranglethorn Vale,27.173,77.007
.turnin 611 ,, The Curse of the Tides
.goto Stranglethorn Vale,27.227,76.870
.target Fleet Master Seahorn
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r和|cRXP_FRIENDLY_掘金者里克|r
.bankwithdraw 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> 从银行取出下列物品:
>>你找到的所有|T134332:0|t[荆棘谷的青山 - 书页]
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r和|cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 2799 >>将以下物品存入银行:
>>|T134298:0|t[猩猩牙] (如果你有的话)
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
#completewith start2
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师奥利雷|r
+|cRXP_WARN_购买缺失的|r|T134332:0|t[荆棘谷的青山 - 书页]
>>|cRXP_WARN_章节.1: 1,4,6,8|r
>>|cRXP_WARN_章节.2: 10,11,14,16|r
>>|cRXP_WARN_章节.3: 18,20,21,24|r
>>|cRXP_WARN_章节.4: 25,26,27|r
>>|cRXP_WARN_如果你无法获得缺失的书页就跳过此步|r
.target Auctioneer O'reely
step
.goto Stranglethorn Vale,26.896,73.590
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_‘病鬼’菲力浦|r
.turnin 606 ,, Scaring Shaky
.target "Shaky" Phillipe
.accept 607 ,, Return to MacKinley
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海狼麦克基雷|r
.turnin 607 ,, Return to MacKinley
.target "Sea Wolf" MacKinley
step
#label start2
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_崔斯里克|r
.turnin 628 ,, Excelsior
step
#completewith next
>>击杀|cRXP_ENEMY_血帆海盗|r. 拾取他们的|cRXP_LOOT_鼻烟|r和|cRXP_LOOT_迪兹的眼睛|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>> 击杀|cRXP_ENEMY_血帆剑客|r
>> 拾取|cRXP_LOOT_血帆海图|r和|cRXP_LOOT_血帆计划书|r. 它们可能刷新在某个营地或者小排船里
.complete 604,1 
.complete 604,2 
.complete 604,3 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>击杀|cRXP_ENEMY_Bloodsail|r. 拾取他们的|cRXP_LOOT_鼻烟|r和|cRXP_LOOT_迪兹的眼睛|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
#completewith next
.goto Stranglethorn Vale,24.83,63.70,100 >> 前往荆棘谷海角
step
#completewith next
>> 击杀|cRXP_ENEMY_纳迦探险者|r. 拾取他们的|cRXP_LOOT_海蛇草|r
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.961,61.931
>> 点击|cRXP_PICK_圣泉|r. 拾取|cRXP_LOOT_圣泉之水|r
.collect 737,1,48,1 
step
.goto Stranglethorn Vale,27.04,63.00,60,0
.goto Stranglethorn Vale,26.32,60.20,60,0
.goto Stranglethorn Vale,25.12,60.07,60,0
.goto Stranglethorn Vale,24.69,64.29,60,0
.goto Stranglethorn Vale,25.99,62.45
>> 击杀|cRXP_ENEMY_纳迦探险者|r. 拾取他们的|cRXP_LOOT_海蛇草|r
.complete 617,1 
.mob Naga Explorer
step
.group 2
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,31.12,43.17
>> 击杀|cRXP_ENEMY_泰希斯|r. 拾取他的|cRXP_LOOT_爪子|r
>>|cRXP_ENEMY_泰希斯|r|cRXP_WARN_会在此区域巡逻|r
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,28.73,44.84
.xp 43 >> 击杀|cRXP_ENEMY_丛林潜猎者|r直到你达到43级
.mob Jungle Stalker
step
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>击杀所有|cRXP_ENEMY_劈颅巨魔|r. 拾取他们的|cRXP_LOOT_獠牙|r
>> 击杀|cRXP_ENEMY_劈颅秘法师|r和|cRXP_ENEMY_劈颅巫医|r. 拾取他们的|cRXP_LOOT_劈颅巨魔的神像|r
.complete 209,1 
.complete 205,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Witch Doctor
step
.group 2
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>> 击杀|cRXP_ENEMY_巴尔瑟拉|r. 拾取|cRXP_LOOT_巴尔瑟拉的牙齿|r
>>|cRXP_ENEMY_巴尔瑟拉|r|cRXP_WARN_可能会刷在莫什奥格食人魔山的北边或者西边|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找|r|cRXP_ENEMY_巴尔瑟拉|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
#completewith PagesTurnIn
.goto Stranglethorn Vale,35.658,10.808,80 >> 前往奈辛瓦里远征队营地
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔加丁爵士|r和|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 193 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.turnin 197 ,, Raptor Mastery
.accept 208 ,, Big Game Hunter
.goto Stranglethorn Vale,35.658,10.808
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
step
#label PagesTurnIn
.goto Stranglethorn Vale,35.662,10.528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尼尔·石罐|r
>>|cRXP_WARN_交还所有的|r|T134332:0|t[荆棘谷的青山 - 书页]
>>|cRXP_WARN_如果你没凑齐所有的|r|T133677:0|t[荆棘谷的青山 - 章节]就跳过此步
.accept 338 ,, The 荆棘谷的青山
.accept 339 ,, Chapter I
.accept 340 ,, Chapter II
.accept 341 ,, Chapter III
.accept 342 ,, Chapter IV
.turnin 339 ,, Chapter I
.turnin 340 ,, Chapter II
.turnin 341 ,, Chapter III
.turnin 342 ,, Chapter IV
.turnin 338 ,, The Green Hills of Stranglethorn
.target Barnil Stonepot
step
.group 2
.goto Stranglethorn Vale,38.20,35.57
>> 击杀|cRXP_ENEMY_虎王邦加拉什|r. 拾取|cRXP_LOOT_邦加拉什的头颅|r
>>|cRXP_ENEMY_虎王邦加拉什|r|cRXP_WARN_会在半血时召唤2只|cRXP_ENEMY_黑豹|r. 尽量在半血前眩晕它这样就能避免它招出随从|r
.complete 208,1 
.mob King Bangalash
step
.group
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 208 ,, Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
step
.goto Stranglethorn Vale,37.832,3.559
.target Brother Nimetz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼麦兹修士|r
.turnin 205 ,, Troll Witchery
step
#completewith next
.goto Duskwood,44.6,86.4
.zone Duskwood >> 向北前往暮色森林, 然后向西前往西部荒野
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛林布兹·雷酒|r
.accept 48 ,, Sweet Amber
.turnin 48 ,, Sweet Amber
.accept 49 ,, Sweet Amber
step
.goto Westfall,56.556,52.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
.fly Duskwood >> 飞往夜色镇
.target Thor
.zoneskip Duskwood
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 43-44 悲伤沼泽 II
#next 44-45 塔纳利斯
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守卫队长索里加尔|r
.turnin 1477 ,, Vital Supplies
.target Watchmaster Sorigal
step
#completewith SwampEntry
.goto Duskwood,88.47,41.00,50,0
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50 >> 前往悲伤沼泽
.zoneskip Swamp of Sorrows
step
#label SwampEntry
.goto Swamp of Sorrows,26.74,59.82
.target Watcher Biggs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY看守者比格斯|r
.accept 1398 ,, Driftwood
step
.isOnQuest 1364
#completewith mazens
>> 击杀|cRXP_ENEMY_沼泽漫步者|r, |cRXP_ENEMY_沼泽漫步者长老|r, |cRXP_ENEMY_纠缠恐兽|r和|cRXP_ENEMY_泥沼之王|r. 拾取|cRXP_LOOT_卡德加的空间收敛研究笔记|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
.goto Swamp of Sorrows,62.547,23.115
>> 拾取地上的|cRXP_LOOT_一袋大麦|r
.complete 49,1
step
.goto Swamp of Sorrows,65.471,18.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加林·古瓦德|r
>>|cRXP_WARN_这将开启护送任务|r
.accept 1393 ,, Galen's Escape
.target Galen Goodward
step
.isOnQuest 1393
.goto Swamp of Sorrows,53.045,29.644
>> 护送|cRXP_FRIENDLY_加林·古瓦德|r安全离开农田避难所
.complete 1393,1 
.target Galen Goodward
step
.isQuestComplete 1393
.goto Swamp of Sorrows,47.806,39.760
>> 点击地上的|cRXP_PICK_加林的保险箱|r
.turnin 1393 ,, Galen's Escape
step
#completewith next
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
>> 沿着海岸拾取地上的|cRXP_LOOT_晒干的流木|r
.complete 1398,1 
step
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>> 击杀|cRXP_ENEMY_淤泥蟹|r和|cRXP_ENEMY_巨型淤泥蟹|r. 拾取他们的|cRXP_LOOT_新鲜的螃蟹腿|r
.complete 1258,1 
.mob Silt Crawler
.mob Monstrous Crawler
.isOnQuest 1258
step
#label mazens
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>> 沿着海岸拾取地上的|cRXP_LOOT_晒干的流木|r
.complete 1398,1 
step
.isOnQuest 1364
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>> 击杀|cRXP_ENEMY_沼泽漫步者|r, |cRXP_ENEMY_沼泽漫步者长老|r, |cRXP_ENEMY_纠缠恐兽|r和|cRXP_ENEMY_泥沼之王|r. 拾取|cRXP_LOOT_卡德加的空间收敛研究笔记|r
>>|cRXP_WARN_此物品掉率极低. 杀光迷雾谷都没出的话就跳过此步|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step 
.xp 44 >> 刷到44级
step
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY看守者比格斯|r
.turnin 1398 ,, Driftwood
.accept 1425 ,, Deliver the Shipment
.target Watcher Biggs
step
#completewith ExitBL
.goto Swamp of Sorrows,33.23,67.31,0
.goto Blasted Lands,51.98,7.43
.zone Blasted Lands >> 前往诅咒之地
step
.isQuestComplete 1364
.goto Blasted Lands,67.646,19.165
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_看守者马哈尔巴|r对话
.turnin 1364 ,, Mazen's Behest
.target Watcher Mahar Ba
step
.isOnQuest 1425
.goto Blasted Lands,66.521,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_军需官朗格尔斯|r
.turnin 1425 ,, Deliver the Shipment
.target Quartermaster Lungertz
step
.goto Blasted Lands,65.54,24.34
.abandon 1364 ,, Mazen's Behest
step
#label ExitBL
#completewith next << !Mage !Druid
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fp Blasted Lands>> 开启诅咒之地飞行点
.target Alexandra Constantine
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step << !Mage !Druid !Warrior !Paladin
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Stormwind >> 飞往暴风城
.target Alexandra Constantine
.zoneskip Blasted Lands,1
step << Mage
#completewith next
.goto Blasted Lands,65.54,24.34
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << Priest
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >> 学习职业技能
.target Brother Joshua
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>进入已宰的羔羊并下楼
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Spackle Thornberry
step
#completewith BBTurnIn
.hs >> 炉石回藏宝海湾
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迪格|r, |cRXP_FRIENDLY_克拉兹克|r和|cRXP_FRIENDLY_科博克|r
.turnin 587 ,, Up to Snuff
.goto Stranglethorn Vale,26.920,77.347
.accept 2864 ,, Tran'rek
.goto Stranglethorn Vale,26.943,77.207
.turnin 209 ,, Skullsplitter Tusks
.goto Stranglethorn Vale,27.000,77.124
.target Deeg
.target Krazek
.target Kebok
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 604 ,, The Bloodsail Buccaneers
.accept 670 ,, Sunken Treasure
.target Fleet Master Seahorn
step
#label BBTurnIn
.goto Stranglethorn Vale,26.756,76.383
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_私掠者布劳兹|r
.turnin 617 ,, Akiris by the Bundle
.accept 623 ,, Akiris by the Bundle
.target Privateer Bloads
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r和|cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 738,4494 >>将以下物品存入银行:

>>|T134058:0|t[一袋大麦] 
>>|T133466:0|t[海角船长的密信] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海狼麦克基雷|r
.accept 2872 ,, Stoley's Debt
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 ,, Keep An Eye Out
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> 乘船前往棘齿城
.zoneskip Stranglethorn Vale,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 44-45 塔纳利斯
#next 45-46 菲拉斯
step
#completewith next
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Theramore>> 飞往塞拉摩
.target Bragok
step
.goto Dustwallow Marsh,68.836,53.225,40,0
.goto Dustwallow Marsh,67.716,51.708
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_私掠者格罗伊|r
>>|cRXP_FRIENDLY_私掠者格罗伊|r|cRXP_WARN_在塞拉摩岛巡逻|r
.turnin 623 ,, Akiris by the Bundle
.target Privateer Groy
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在城堡楼上与|cRXP_FRIENDLY_伊文凯恩队长|r对话
.trainer >> 学习职业技能
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔曼修士|r
.trainer >> 学习职业技能
.target Brother Karman
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.accept 6624 ,, Triage
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >> |cRXP_WARN_使用|r|T133682:0|t[急救绷带]|cRXP_WARN_对|cRXP_FRIENDLY_联盟士兵|r. 优先对|cRXP_FRIENDLY_受致命伤的士兵|r使用|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.turnin 6624 ,, Triage
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >> 摧毁|T133682:0|t[急救绷带]. 你不需要它了
step
.isQuestComplete 1258
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1258 ,, ... and Bugs
.target Morgan Stern
step
#completewith next
.goto Dustwallow Marsh,54.95,50.70,25 >>向西游往飞艇坠落点
step
.isOnQuest 1187
.goto Dustwallow Marsh,54.071,56.490
>>打开|cRXP_PICK_基兹莫瑞货箱|r. 拾取|cRXP_LOOT_爆盐增压器|r
.complete 1187,1 
step
.dungeon ZF
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔贝萨|r
.accept 2846 ,, Tiara of the Deep
.target Tabetha
step
#completewith next
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.fly Tanaris>> 飞往塔纳利斯
.target Baldruc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r和|cRXP_FRIENDLY_操作员鲁葛兰克|r
.accept 1690 ,, Wastewander Justice
.goto Tanaris,52.462,28.514
.accept 1707 ,, Water Pouch Bounty
.goto Tanaris,52.486,28.445
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉兹弗斯|r
.stable >> 把你的宠物存入兽栏. 你很快就会抓一只|cRXP_ENEMY_饥饿的疱爪土狼|r
.target Laziphus
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.accept 3022 ,, Handle With Care
.target Curgle Cranklehop
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 2864 ,, Tran'rek
.target Tran'rek
step << Hunter
#completewith st2
.goto Tanaris,47.70,27.04,0
.goto Tanaris,47.70,27.04,50,0
.goto Tanaris,53.45,24.29
>>|cRXP_WARN_对|cRXP_ENEMY_饥饿的疱爪土狼|r|r|cRXP_WARN_施放|r|T132164:0|t[驯服野兽]
.train 23111 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132120:0|t[突进 (等级 2)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.mob Starving Blisterpaw
step
#completewith NFF
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >> 前往闪光平原
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲兹尔·铜栓|r
.turnin 1137 ,, News for Fizzle
.target Fizzle Brassbolts
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1187 ,, Razzeric's Tweaking
.accept 1188 ,, Safety First
.target Razzeric
step
#label NFF
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.accept 1190 ,, Keeping Pace
.target Pozzik
step
#completewith next
.goto Thousand Needles,79.809,77.028
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札米克|r以支开瑞兹尔
.turnin 1191 ,, Zamek's Distraction
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.208,77.386
>> 点击地上的|cRXP_PICK_瑞兹尔的计划|r
.turnin 1190 ,, Keeping Pace
.accept 1194 ,, Rizzle's Schematics
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普兹克|r
.turnin 1194 ,, Rizzle's Schematics
.target Pozzik
step
.destroy 5866 >> 摧毁|T134575:0|t[精铁矿石样本]你不再需要它了
step
#completewith next
.goto Tanaris,50.50,18.52
.zone Tanaris >> 前往加基森
step
.goto Tanaris,50.960,27.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_史瑞夫|r
.turnin 1188 ,, Safety First
.accept 1189 ,, Safety First
.target Shreev
step
#completewith next
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >> 前往闪光平原
step
#label st2
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1189 ,, Safety First
.target Razzeric
step
#completewith next
.goto Tanaris,50.50,18.52
.zone Tanaris >> 前往塔纳利斯
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉兹弗斯|r
.stable >> 从兽栏取出你的主力宠物
.target Laziphus
step
#completewith vultures
>> 击杀|cRXP_ENEMY_大鹏|r. 拾取他们的|cRXP_LOOT_胃囊|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
#completewith PortQ
>> 击杀|cRXP_ENEMY_废土强盗|r和|cRXP_ENEMY_废土窃贼|r. 拾取他们的|cRXP_LOOT_废土水带|r
>>|cRXP_WARN_沿途击杀他们直到热砂港. 不用现在就完成此任务|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.accept 3520 ,, Screecher Spirits
.target Yeh'kinya
step
#label PortQ
.goto Tanaris,67.109,23.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯杜雷|r
.turnin 2872 ,, Stoley's Debt
.target Stoley
step
.goto Tanaris,60.14,23.42,0
.goto Tanaris,63.85,29.26,50,0
.goto Tanaris,63.63,31.66,50,0
.goto Tanaris,63.27,33.57,50,0
.goto Tanaris,62.77,30.20,50,0
.goto Tanaris,63.93,31.60
>> 击杀|cRXP_ENEMY_废土强盗|r和|cRXP_ENEMY_废土窃贼|r. 拾取他们的|cRXP_LOOT_废土水带|r
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,65.737,36.729
>> 拾取地上的|cRXP_LOOT_一袋玉米|r
.complete 49,2 
step
#label vultures
.goto Tanaris,63.93,31.60
.xp 45 >> 击杀|cRXP_ENEMY_废土强盗|r和|cRXP_ENEMY_废土窃贼|r直到45级
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,55.62,25.46,50,0
.goto Tanaris,53.19,31.69,50,0
.goto Tanaris,49.48,35.85
>> 击杀|cRXP_ENEMY_大鹏|r. 拾取他们的|cRXP_LOOT_胃囊|r
>>|cRXP_WARN_|cRXP_ENEMY_大鹏|r与|cRXP_ENEMY_饥饿的疱爪土狼s|r共享刷新点. 你可能需要击杀|cRXP_ENEMY_饥饿的疱爪土狼|r以使|cRXP_ENEMY_大鹏|r刷新|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
.isOnQuest 49
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 739 >>将以下物品存入银行:
>>|T134059:0|t[一袋玉米] 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r和|cRXP_FRIENDLY_操作员鲁葛兰克|r
.turnin 1690 ,, Wastewander Justice
.goto Tanaris,52.462,28.514
.turnin 1707 ,, Water Pouch Bounty
.goto Tanaris,52.486,28.445
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 45-46 菲拉斯
#next 46-47 辛特兰/荒芜之地
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Feathermoon>> 飞往羽月要塞
.target Bera Stonehammer
step << Hunter
#completewith next
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安塔留斯|r
.stable >> 把你的宠物存入兽栏. 你很快就会抓一只|cRXP_ENEMY_长牙奔跑者|r
.target Antarius
step << Hunter
.goto Feralas,29.80,49.19
>>|cRXP_WARN_对|cRXP_ENEMY_长牙奔跑者|r|r|cRXP_WARN_施放|r|T132164:0|t[驯服野兽]
.train 17266 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132278:0|t[撕咬 (等级 6)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.mob Longtooth Runner
step
#completewith start
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛德拉克·绿井|r
>>|cRXP_WARN_补给吃喝. 下面将有很长一段时间刷刷刷|r
.vendor >>|cRXP_BUY_购买5组吃喝|r
.target Mardrack Greenwell
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·马克格鲁比|r
.accept 2821 ,, The Mark of Quality
.target Pratt McGrubben
step << Hunter
#completewith start
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法拉罗恩|r
.vendor >>|cRXP_BUY_购买25组弹药|r
.target Faralorn
step
.goto Feralas,30.966,43.488
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板希瑞亚|r
.home >> 绑定炉石到菲拉斯
.target Innkeeper Shyria
step << Hunter
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安塔留斯|r
.stable >> 从兽栏取出你的宠物
.target Antarius
.zoneskip Feralas,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉托尼库斯·月矛|r和|cRXP_FRIENDLY_珊蒂斯·羽月|r
.accept 4124 ,, The Missing Courier
.goto Feralas,30.379,46.170
.accept 2866 ,, The Ruins of Solarsal
.goto Feralas,30.276,46.168
.target Latronicus Moonspear
.target Shandris Feathermoon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特洛亚斯·月风|r和|cRXP_FRIENDLY_安吉拉斯·月风|r
.accept 2939 ,, In Search of Knowledge
.goto Feralas,31.777,45.498
.accept 2982 ,, The High Wilderness
.goto Feralas,31.828,45.611
.target Troyas Moonbreeze
.target Angelas Moonbreeze
step
#label start
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_基恩诺·燃炉|r对话
.turnin 4124 ,, The Missing Courier
.accept 4125 ,, The Missing Courier
.target Ginro Hearthkindle
step
#completewith next
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛加纳斯|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]
>>|cRXP_WARN_如果|cRXP_FRIENDLY_洛加纳斯|r这没有库存就跳过此步|r
.target Logannas
step
.goto Feralas,26.316,52.343
>>点击|cRXP_PICK_索兰萨尔掺望台|r
.turnin 2866 ,, The Ruins of Solarsal
.accept 2867 ,, Return to Feathermoon Stronghold
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_珊蒂斯·羽月|r和|cRXP_FRIENDLY_拉托尼库斯·月矛|r
.turnin 2867 ,, Return to Feathermoon Stronghold
.accept 3130 ,, Against the Hatecrest
.goto Feralas,30.276,46.168
.turnin 3130 ,, Against the Hatecrest
.accept 2869 ,, Against the Hatecrest
.goto Feralas,30.379,46.170
.target Latronicus Moonspear
.target Shandris Feathermoon
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
>> 击杀|cRXP_ENEMY_憎世尖啸者|r, |cRXP_ENEMY_憎世御浪者|r, |cRXP_ENEMY_憎世战士|r和|cRXP_ENEMY_憎世海妖|r. 拾取他们的|cRXP_LOOT_纳迦鳞片|r
.complete 2869,1 
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉托尼库斯·月矛|r
.turnin 2869 ,, Against the Hatecrest
.target Latronicus Moonspear
step
#completewith next
.goto Feralas,45.07,44.89,150 >> 游到主岛
step
.goto Feralas,45.44,64.96
>>点击水中的|cRXP_PICK_失事的独木舟|r
.turnin 4125 ,, The Missing Courier
.accept 4127 ,, Boat Wreckage
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step << Mage
#completewith next
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >> 炉石回羽月要塞
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_基恩诺·燃炉|r对话
.turnin 4127 ,, Boat Wreckage
.accept 4129 ,, The Knife Revealed
.target Ginro Hearthkindle
step
.goto Feralas,32.447,43.788
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在树屋顶部与|cRXP_FRIENDLY_奎恩提斯|r对话
.turnin 4129 ,, The Knife Revealed
.timer 12,The Knife Revealed RP
.accept 4130 ,, Psychometric Reading
.target Quintis Jonespyre
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_基恩诺·燃炉|r对话
.turnin 4130 ,, Psychometric Reading
.accept 4131 ,, The Woodpaw Gnolls
.target Ginro Hearthkindle
step
#completewith spirits
.goto Feralas,47.3,44.7,65 >> 游到大陆
step
#completewith spirits
.goto Feralas,52.05,48.88,0
.goto Feralas,46.6,39.4,0
.goto Feralas,57.8,50.8,0
>> 击杀|cRXP_ENEMY_山谷尖啸者|r和|cRXP_ENEMY_游荡的山谷尖啸者|r
.use 10699 >> |cRXP_WARN_对它们的尸体使用|r|T135474:0|t[叶基亚的树枝]|cRXP_WARN_以召唤|r|cRXP_FRIENDLY_尖啸者的灵魂|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尖啸者的灵魂|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
#completewith spirits
.goto Feralas,58.8,59.0,0
>> 击杀|cRXP_ENEMY_铁鬃熊|r, |cRXP_ENEMY_铁鬃灰熊|r和|cRXP_ENEMY_格罗多克猿人|r. 拾取他们的|cRXP_LOOT_肝脏|r
.complete 1452,2 
.complete 1452,3 
.mob Ironfur Bear
.mob Grizzled Ironfur Bear
.mob Groddoc Ape
step
.goto Feralas,55.41,45.54
.zone 1414 >> |cRXP_WARN_你必须发现厄运之槌区域. 这是之后一个任务的前置条件. 靠近厄运之槌区域边界直到你的综合频道变更为厄运之槌|r
.link https://youtu.be/ayEKuXSUU2A >> |cRXP_WARN_点击此处查看视频参考|r
step
.goto Feralas,55.63,56.44,50,0
.goto Feralas,53.50,55.47
>> 击杀|cRXP_ENEMY_深痕雪人|r, |cRXP_ENEMY_暴怒的深痕雪人|r和|cRXP_ENEMY_暴怒的巨型深痕雪人|r. 拾取他们的|cRXP_LOOT_厚重的雪人皮|r
>>|cRXP_WARN_如果没有信心就不要进入主|cRXP_ENEMY_雪人|r洞|r
.complete 2821,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
step
#label spirits
>> 击杀|cRXP_ENEMY_戈杜尼萨满祭司|r, |cRXP_ENEMY_戈杜尼术士|r和|cRXP_ENEMY_戈杜尼蛮兵|r
>>|cRXP_WARN_优先击杀|cRXP_ENEMY_戈杜尼萨满祭司|r. 你可能需要击杀其他|cRXP_ENEMY_戈杜尼食人魔|r以使|cRXP_ENEMY_戈杜尼萨满祭司|r刷新|r
.complete 2982,2 
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.48,66.77
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,1 
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,59.54,63.13
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,3 
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,61.02,56.10
.mob Gordunni Shaman
.mob Gordunni Warlock
.mob Gordunni Brute
step
#completewith next
.goto Feralas,58.40,55.57,0
.goto Feralas,57.29,54.10,0
.goto Feralas,55.40,53.49,0
.goto Feralas,56.94,60.64,0
.goto Feralas,59.28,60.55,0
>> 击杀|cRXP_ENEMY_铁鬃熊|r, |cRXP_ENEMY_铁鬃灰熊|r和|cRXP_ENEMY_格罗多克猿人|r. 拾取他们的|cRXP_LOOT_肝脏|r
.complete 1452,2 
.complete 1452,3 
.mob Ironfur Bear
.mob Grizzled Ironfur Bear
.mob Groddoc Ape
step
.goto Feralas,53.2,47.2,60,0
.goto Feralas,58.0,47.8,60,0
.goto Feralas,60.8,50.8,60,0
.goto Feralas,55.8,54.0,60,0
.goto Feralas,58.6,58.8,60,0
.goto Feralas,60.6,62.2
.goto Feralas,53.2,47.2,0
.goto Feralas,58.0,47.8,0
.goto Feralas,60.8,50.8,0
.goto Feralas,55.8,54.0,0
.goto Feralas,58.6,58.8,0
>> 击杀|cRXP_ENEMY_山谷尖啸者|r和|cRXP_ENEMY_游荡的山谷尖啸者|r
.use 10699 >> |cRXP_WARN_对它们的尸体使用|r|T135474:0|t[叶基亚的树枝]|cRXP_WARN_以召唤|r|cRXP_FRIENDLY_尖啸者的灵魂|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尖啸者的灵魂|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
.goto Feralas,58.40,55.57,55,0
.goto Feralas,57.29,54.10,55,0
.goto Feralas,55.40,53.49,55,0
.goto Feralas,56.94,60.64,55,0
.goto Feralas,59.28,60.55
>> 击杀|cRXP_ENEMY_铁鬃熊|r, |cRXP_ENEMY_铁鬃灰熊|r和|cRXP_ENEMY_格罗多克猿人|r. 拾取他们的|cRXP_LOOT_肝脏|r
.complete 1452,2 
.complete 1452,3 
.mob Ironfur Bear
.mob Grizzled Ironfur Bear
.mob Groddoc Ape
step
.goto Feralas,66.56,46.87,0
.goto Feralas,66.56,46.87,30,0
.goto Feralas,65.945,45.651
>>|cRXP_WARN_接受这个护送任务前, 先在关押|cRXP_FRIENDLY_被俘获的小精龙|r的笼子边击杀一些|cRXP_ENEMY_恐怖图腾|r|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛达尔·月纹|r
.accept 2969 ,, Freedom for All Creatures
.target Kindal Moonweaver
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
step
.goto Feralas,66.666,46.754
>>点击|cRXP_PICK_笼门|r以释放|cRXP_FRIENDLY_被俘获的小精龙|r
>>击杀所有攻击|cRXP_FRIENDLY_被俘获的小精龙|r的|cRXP_ENEMY_恐怖图腾|r
.complete 2969,1
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
.target Captured Sprite Darter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛达尔·月纹|r和|cRXP_FRIENDLY_耶尔卡·月纹|r
.turnin 2969 ,, Freedom for All Creatures
.goto Feralas,65.945,45.651
.accept 2970 ,, Doling Justice
.goto Feralas,65.946,45.607
.target Kindal Moonweaver
.target Jer'kai Moonweaver
step
.goto Feralas,66.65,46.58,60,0
.goto Feralas,68.70,46.91,60,0
.goto Feralas,69.14,39.10,60,0
.goto Feralas,66.85,38.80,60,0
.goto Feralas,69.14,39.10
.goto Feralas,66.85,38.80,0
>> 击杀|cRXP_ENEMY_恐怖图腾自然学家|r, |cRXP_ENEMY_恐怖图腾劫掠者|r和|cRXP_ENEMY_恐怖图腾萨满|r
.complete 2970,1 
.complete 2970,2 
.complete 2970,3 
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
step
.goto Feralas,65.946,45.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶尔卡·月纹|r
.turnin 2970 ,, Doling Justice
.accept 2972 ,, Doling Justice
.target Jer'kai Moonweaver
step
.goto Feralas,73.314,56.311
>>点击树上的|cRXP_PICK_大皮包|r
.turnin 4131 ,, The Woodpaw Gnolls
.accept 4135 ,, The Writhing Deep
step
.goto Feralas,73.31,56.30
.use 11463 >>|cRXP_WARN_使用|T133464:0|t[|cRXP_LOOT_未递送的包裹|r]并接受任务|r
.collect 11463,1,4281
.accept 4281 ,, Thalanaar Delivery
step
#completewith next
.goto Feralas,73.57,63.13,100,0
.goto Feralas,72.78,64.48,15 >> 从西南方的入口进入痛苦深渊巢穴
step
.goto Feralas,72.080,63.713
>>点击|cRXP_PICK_祖卡什虫茧|r
.turnin 4135 ,, The Writhing Deep
.accept 4265 ,, Freed from the Hive
.timer 19,Freed from the Hive RP
step
.goto Feralas,72.080,63.713
>>|cRXP_WARN_等待剧情结束|r
.complete 4265,1
step
.goto Feralas,66.65,46.58
>>一直刷怪直到炉石CD好了
.hs >>炉石回羽月要塞
.zoneskip Feralas,1
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 2821 ,, The Mark of Quality
.target Pratt McGrubben
step
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛德拉克·绿井|r
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.target Mardrack Greenwell
.zoneskip Feralas,1
step << Hunter
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法拉罗恩|r
.vendor >>|cRXP_BUY_如果有需要就购买弹药|r
.target Faralorn
.zoneskip Feralas,1
step
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛加纳斯|r
.vendor >> |cRXP_BUY_购买|r|T134833:0|t[优质治疗药水]
>>|cRXP_WARN_如果|cRXP_FRIENDLY_洛加纳斯|r这没有库存就跳过此步|r
.zoneskip Feralas,1
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基恩诺·燃炉|r上楼
.turnin 4265 ,, Freed from the Hive
.accept 4266 ,, A Hero's Welcome
.target Ginro Hearthkindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉托尼库斯·月矛|r和|cRXP_FRIENDLY_珊蒂斯·羽月|r
.accept 2870 ,, Against Lord Shalzaru
.goto Feralas,30.379,46.170
.turnin 4266 ,, A Hero's Welcome
.accept 4267 ,, Rise of the Silithid
.goto Feralas,30.276,46.168
.target Latronicus Moonspear
.target Shandris Feathermoon
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
.xp 46 >> 刷到46级
>> 击杀|cRXP_ENEMY_憎世尖啸者|r, |cRXP_ENEMY_憎世御浪者|r, |cRXP_ENEMY_憎世战士|r和|cRXP_ENEMY_憎世海妖|r. 拾取|T132836:0|t[|cRXP_LOOT_定位器OOX-22/FE|r]
>>|cRXP_WARN_D先不要接受此任务. 继续正常做任务. 一会再做这个任务|r
>>|cRXP_WARN_如果你到达46级时还没有刷到它, 就暂时跳过|r

.collect 8705,1,2766 
.disablecheckbox

.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
#completewith next
.goto Feralas,25.49,64.92,40,0
.goto Feralas,26.13,67.41,30 >> 前往恐怖之岛. 进入沙尔扎鲁的巢穴
step
.goto Feralas,28.51,70.59
>> 击杀|cRXP_ENEMY_沙尔扎鲁领主|r. 拾取|cRXP_LOOT_神秘遗物|r
.complete 2870,1 
.mob Lord Shalzaru
step
#completewith next
.goto Feralas,30.276,46.168,150 >> 前往羽月要塞
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉托尼库斯·月矛|r
.turnin 2870 ,, Against Lord Shalzaru
.accept 2871 ,, Delivering the Relic
.target Latronicus Moonspear
step
.goto Feralas,30.077,45.060
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯提亚·月矛|r
.turnin 2871 ,, Delivering the Relic
.target Vestia Moonspear
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉斯·月风|r
.turnin 2982 ,, The High Wilderness
.target Angelas Moonbreeze
step << !Mage !Druid
.goto Feralas,30.239,43.251
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲尔迪恩·月羽|r
.fly Teldrassil >> 飞往泰达希尔
.target Fyldren Moonfeather
.zoneskip Feralas,1
step << Druid
.cast 18960 >> 施放传送: 月光林地
.zoneskip Feralas,1
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
>>|cRXP_WARN_如果之前你已经学习了职业技能就跳过此步|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
.zoneskip Moonglade,1
step << Druid
.goto Moonglade,44.148,45.229
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
.fly Teldrassil >> 飞往达纳苏斯
.skipgossip
.timer 153,Flight to Darnassus
.target Silva Fil'naveth
.zoneskip Moonglade,1
step << Mage
.goto Feralas,30.239,43.251
.zone Darnassus >>传送到达纳苏斯
>>如果你没学|T135755:0|t[传送: 达纳苏斯]就飞过去
.zoneskip Feralas,1
step << Mage
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_格拉希娜·灵风|r对话
.turnin 4267 ,, Rise of the Silithid
.target Gracina Spiritmight
.zoneskip Darnassus,1
step << Mage
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰兰德·语风|r
.turnin 2972 ,, Doling Justice
.target Tyrande Whisperwind
.zoneskip Darnassus,1
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 3022 ,, Handle With Care
.accept 3661 ,, Favored of Elune?
.target Erelas Ambersky
step
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_达蕾恩·轻风|r对话
.turnin 2939 ,, In Search of Knowledge
.target Daryn Lightwind
step
.goto Teldrassil,55.219,91.454
>>点击地上的|cRXP_PICK_菲拉斯的历史|r
.accept 2940 ,, Feralas: A History
step
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达蕾恩·轻风|r
.turnin 2940 ,, Feralas: A History
.accept 2941 ,, The Borrower
.target Daryn Lightwind
step
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r和|cRXP_FRIENDLY_伊迪瑞娜|r
.bankdeposit 9329,11463 >>将以下物品存入银行:
>>|T133469:0|t[简短的便笺] 
>>|T133628:0|t[未递送的包裹] 
>>|T132836:0|t[定位器OOX-22/FE] (如果有的话) 
.target Garryeth
.target Lairn
.target Idriana
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r和|cRXP_FRIENDLY_伊迪瑞娜|r
.bankwithdraw 4494 >> 从银行取出下列物品:
>>|T133466:0|t[海角船长的密信] 
.target Garryeth
.target Lairn
.target Idriana
step
#completewith MoonTemple
.goto Darnassus,39.01,81.43,40 >> 前往月神殿
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_格拉希娜·灵风|r对话
.turnin 4267 ,, Rise of the Silithid
.target Gracina Spiritmight
step
#label MoonTemple
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_泰兰德·语风|r
.turnin 2972 ,, Doling Justice
.target Tyrande Whisperwind
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_埃丽莎·仲马|r
.train 3565 >> 学习传送: 达纳苏斯
.target Elissa Dumas
step << Mage
#completewith next
.zone Ironforge >>传送到铁炉堡
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁克|r
.trainer >> 学习职业技能
.target Dink
step << Mage
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Arathi>> 飞往阿拉希高地
.target Gryth Thurden
.zoneskip Ironforge,1
step << NightElf
>>|cRXP_WARN_如果买得起就购买坐骑!|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱兰奈|r和|cRXP_FRIENDLY_贾萨姆|r
.vendor >>|cRXP_BUY_购买|r|T132267:0|t[|cFF0070FF霜刃豹|r]|cRXP_BUY_或者|r|T132225:0|t[|cFF0070FF夜刃豹|r]
.goto Darnassus,38.283,15.365
.train 828 >>学习|T132242:0|t[骑术：豹]
.goto Darnassus,38.694,15.857
.skill riding,75,1 
.zoneskip Darnassus,1
.target Lelanai
.target Jartsam
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿雷亚斯塔·刃咏|r
.goto Darnassus,58.72,34.92
.trainer >> 学习职业技能
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
.trainer >> 学习职业技能
.target Jandria
.zoneskip Darnassus,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >> 学习职业技能
.target Syurna
.zoneskip Darnassus,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
.trainer >> 学习职业技能
.target Jocaste
.zoneskip Darnassus,1
step << !Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step << !Mage
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Darkshore >> 飞往黑海岸
.target Vesprystus
.zoneskip Teldrassil,1
step << !Mage
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_在等待前往米奈希尔港的船时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
.zone Wetlands >> 乘船前往米奈希尔港
.zoneskip Arathi Highlands
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.goto Wetlands,9.490,59.694
.fly Arathi>> 飞往阿拉希高地
.target Shellei Brondir
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 46-47 辛特兰/荒芜之地
#next 47-48 塔纳利斯
step
#completewith next
.goto Arathi Highlands,30.74,66.94,60,0
.goto Arathi Highlands,22.72,71.98,50,0
.goto Arathi Highlands,21.50,75.91,40,0
.goto Arathi Highlands,21.98,79.96,30 >> 前往法迪尔海湾
step
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 670 >> Sunken Treasure
.accept 667 ,, Death From Below
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,31.530,81.946,10,0
.goto Arathi Highlands,31.465,81.010,10 >> 沿匝道快速上船
step
.goto Arathi Highlands,32.103,80.685
>>在|cRXP_ENEMY_娜迦|r来袭的地方点击|cRXP_PICK_加农炮|r
.complete 667,1 
step
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 667 ,, Death From Below
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >> 在洞里面的石头上登出再登入
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >> |cRXP_WARN_点击此处查看视频参考|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟迪克·普罗斯|r
.goto Arathi Highlands,45.73,46.09
.fly Hinterlands >> 飞往辛特兰
.target Cedrik Prose
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_狮鹫兽管理员沙拉克·鹰斧|r
.accept 2988 ,, Witherbark Cages
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗拉加尔|r
.accept 2880 ,, Troll Necklace Bounty
.target Fraggar Thundermantle
step
#completewith Rye
>> 拾取地上的|cRXP_LOOT_枭兽羽毛|r
.complete 3661,1 
step
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉普索迪·铁铲|r
.turnin 1452 ,, Rhapsody's Kalimdor Kocktail
.timer 35,Rhapsody's Kalimdor Kocktail RP
.accept 1469 ,, Rhapsody's Tale
.target Rhapsody Shindigger
step
#completewith FinalCages
>> 击杀|cRXP_ENEMY_枯木巨魔|r. 拾取他们的|cRXP_LOOT_巨魔部族项链|r
.complete 2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,31.98,57.31
>>点击|cRXP_PICK_Third Witherbark Cage|r
.complete 2988,3 
step
#label FinalCages
>>点击|cRXP_PICK_第一只枯木牢笼|r和|cRXP_PICK_第二只枯木牢笼|r
.complete 2988,1 
.goto The Hinterlands,23.28,58.81
.complete 2988,2 
.goto The Hinterlands,23.12,58.82
step
.goto The Hinterlands,21.92,56.04,70,0
.goto The Hinterlands,25.09,59.20,70,0
.goto The Hinterlands,32.23,58.21
>> 击杀|cRXP_ENEMY_枯木巨魔|r. 拾取他们的|cRXP_LOOT_巨魔部族项链|r
.complete 2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗拉加尔|r
.turnin 2880 ,, Troll Necklace Bounty
.target Fraggar Thundermantle
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_狮鹫兽管理员沙拉克·鹰斧|r
.turnin 2988 ,, Witherbark Cages
.accept 2989 ,, The Altar of Zul
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,48.814,68.387
>>|cRXP_WARN_一路清怪到祖尔祭坛顶部. 确保登顶时你是满血!|r
>>|cRXP_WARN_跑到触发点, 然后跳到边上的台子上以躲避顶部的精英. 在台子上等待脱战. 查看下面的视频参考|r
.complete 2989,1 
.link https://www.youtube.com/watch?v=FtTS3K7T7Tw >> |cRXP_WARN_点击此处查看视频参考|r
step
#label Rye
.goto The Hinterlands,39.984,66.256
>> 拾取地上的|cRXP_PICK_一袋黑麦|r
.complete 49,3 
step
.goto The Hinterlands,42.5,54.5,70,0
.goto The Hinterlands,33.5,58.1,70,0
.goto The Hinterlands,29.6,62.0,70,0
.goto The Hinterlands,27.7,54.5,70,0
.goto The Hinterlands,21.0,56.1,70,0
.goto The Hinterlands,20.0,48.2,70,0
.goto The Hinterlands,15.7,52.5,70,0
.goto The Hinterlands,28.1,58.1
>> 拾取地上的|cRXP_LOOT_枭兽羽毛|r
>>|cRXP_WARN_这些羽毛散布于整个辛特兰|r
.complete 3661,1 
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_狮鹫兽管理员沙拉克·鹰斧|r
.turnin 2989 ,, The Altar of Zul
.accept 2990 ,, Thadius Grimshade
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fly Ironforge >> 飞往铁炉堡
.target Guthrum Thunderfist
.zoneskip The Hinterlands,1
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷矛|r
.accept 2398 ,, The Lost Dwarves
.target Prospector Stormpike
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗姆·粗臂|r
.accept 1360 ,, Reclaimed Treasures
.target Krom Stoutarm
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_宾吉·羽哨|r和|cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>学习|T132247:0|t[骑术：机械陆行鸟]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_购买|r|T132247:0|t[|cFF0070FF机械陆行鸟|r]
.goto Dun Morogh,49.123,47.956
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维隆·冻石|r和|cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_购买|r|T132248:0|t[|cFF0070FF山羊|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>学习|T132248:0|t[骑术：羊]
.goto Dun Morogh,63.944,50.095
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> 学习职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行购买以下物品. 这一步为可选步骤. 拥有这些东西可以让你多完成几个任务.|r
>>|T134800:0|t[冰霜之油]
>>|T134377:0|t[发条式同步协调陀螺仪]|cRXP_WARN_(除非你有|r|T134800:0|t[冰霜之油]|cRXP_WARN_否则不要购买)|r
>>|T132606:0|t[青铜花纹护腕]|cRXP_WARN_(除非你有|r|T134377:0|t[发条式同步协调陀螺仪]|cRXP_WARN_和|r|T134800:0|t[冰霜之油]|cRXP_WARN_否则不要购买)|r
>>|T134831:0|t[治疗药水]|cRXP_WARN_和|r|T134798:0|t[次级隐形药水]|cRXP_WARN_(除非你有|r|T134377:0|t[发条式同步协调陀螺仪]|cRXP_WARN_和|r|T134800:0|t[冰霜之油]|cRXP_WARN_否则不要购买)|r
.collect 3829,1,713,1 
.collect 4389,1,714,1 
.collect 2868,1,716,1 
.collect 929,1,715,1 
.collect 3823,1,715,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 4306 >> 从银行取出下列物品:
>>15 |T132905:0|t[丝绸] (如果你有的话)
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 740,10819,9468 >>存入下列物品:
>>|T134059:0|t[一袋黑麦] 
>>|T132927:0|t[枭兽羽毛] 
>>|T135992:0|t[沙普比克的羽毛] 
.target Bailey Stonemantle
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行购买以下物品|r
>>|T132905:0|t[丝绸]
.collect 4306,15,4449,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> 飞往洛克莫丹
.target Gryth Thurden
.zoneskip Ironforge,1
step
.dungeon Ulda
.isQuestTurnedIn 2500 
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克|r
.accept 17 ,, Uldaman Reagent Run
.target Ghak Healtouch
step
.dungeon Ulda
.isQuestTurnedIn 739 
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.accept 704 ,, Agmond's Fate
.target Prospector Ironband
step
#completewith RockEle
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >> 前往荒芜之地
step 
.dungeon Ulda
.goto Badlands,53.027,33.944
>>点击地上的|cRXP_PICK_弄皱的地图|r
.accept 720 ,, A Sign of Hope
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷杜尔|r
.turnin 720 ,, A Sign of Hope
.accept 721 ,, A Sign of Hope
.goto Badlands,53.421,43.393
.target Prospector Ryedol
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加瑞克|r
.accept 732 ,, Tremors of the Earth
.target Garek
step
.loop 60,Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
>> 击杀|cRXP_ENEMY_索葛兰|r. 拾取他的|cRXP_LOOT_大地印章|r
>>|cRXP_ENEMY_索葛兰|r|cRXP_WARN_在整个荒芜之地巡逻|r
.complete 732,1 
.unitscan Boss Tho'grun
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加瑞克|r
.turnin 732 ,, Tremors of the Earth
.target Garek
step
.isQuestTurnedIn 687
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 692 ,, The Lost Fragments
.target Theldurin the Lost
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 ,, Solution to Doom
.target Theldurin the Lost
step
.goto Badlands,54.66,83.91
>> 击杀|cRXP_ENEMY_被激怒的石元素|r. 拾取他们的|cRXP_LOOT_卷轴碎片|r
.complete 692,1
.complete 692,2
.complete 692,3
.isOnQuest 692
.mob Enraged Rock Elemental
step
.goto Badlands,51.386,76.874
.target Theldurin the Lost
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 692 ,, The Lost Fragments
.isOnQuest 692
step
#label RockEle
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 712 ,, Study of the Elements: Rock
step
.dungeon Ulda
#completewith LFGUlda
+完成此任务后就会前往奥达曼. 现在开始寻找前往奥达曼的副本队伍
step
.goto Badlands,4.33,77.75,70,0
.goto Badlands,2.70,81.25,50,0
.goto Badlands,14.68,89.49,70,0
.goto Badlands,2.70,81.25
>> 击杀|cRXP_ENEMY_巨型石元素|r. 拾取他们的|cRXP_LOOT_护腕|r
.complete 712,1 
.mob Greater Rock Elemental
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 712 ,, Study of the Elements: Rock
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 713 ,, Coolant Heads Prevail
.turnin 713 ,, Coolant Heads Prevail
.itemcount 3829,1
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 714 ,, Gyro... What?
.turnin 714 ,, Gyro... What?
.itemcount 4389,1
.isQuestTurnedIn 713
step
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 734 ,, This Is Going to Be Hard
step
.isQuestTurnedIn 714
.goto Badlands,25.82,44.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢希恩·枪穗|r
.turnin 734 ,, This Is Going to Be Hard
.target Lucien Tosselwrench
.accept 777 ,, This Is Going to Be Hard
step
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢希恩·枪穗|r
.accept 716 ,, Stone Is Better than Cloth
.turnin 716 ,, Stone Is Better than Cloth
.itemcount 2868,1
step
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卢希恩·枪穗|r
.accept 715 ,, Liquid Stone
.turnin 715 ,, Liquid Stone
.itemcount 3823,1
.itemcount 929,1
step
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 777 ,, This Is Going to Be Hard
.target Lotwil Veriatus
.accept 778 ,, This Is Going to Be Hard
step
.isQuestTurnedIn 714
.goto Badlands,26.07,46.69
>>击杀|cRXP_ENEMY_法姆雷托守护者|r. 拾取its |cRXP_LOOT_镣铐|r
.complete 778,1 
.mob Fam'retor Guardian
step
#label LFGUlda
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 778 ,, This Is Going to Be Hard
step
.dungeon Ulda
.goto Badlands,4.0,80.6
.goto Badlands,15.4,88.6
.goto Badlands,11.0,88.0
.goto Badlands,44.70,12.09
.zone 1415 >> 在寻找队伍前往奥达曼时刷|cRXP_ENEMY_食人魔|r和|cRXP_ENEMY_巨型石元素|r 
step
.dungeon Ulda
#completewith HammertoeGrez
.goto 1415,54.46,57.78
.zone 1415 >> 前往奥达曼
step
.dungeon Ulda
#completewith HammertoeGrez
>> 拾取地上的|cRXP_LOOT_雕纹石罐|r
>>|cRXP_WARN_这个任务只能在奥达曼副本外完成|r
.complete 704,1 
.isOnQuest 704
step
.dungeon Ulda
#completewith HammertoeGrez
>> 拾取地上的|cRXP_LOOT_紫色蘑菇|r
>>|cRXP_WARN_这个任务在奥达曼副本内外都可以完成|r
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁趾格雷兹|r
.turnin 721 ,, A Sign of Hope
.accept 722 ,, Amulet of Secrets
.target Hammertoe Grez
step
.dungeon Ulda
.goto 1415,54.12,58.05,30,0
.goto 1415,54.09,58.21
>> 击杀|cRXP_ENEMY_马格雷甘·深影|r. 拾取|cRXP_LOOT_铁趾的护符|r
>>|cRXP_WARN_这个任务在奥达曼副本外完成|r
.complete 722,1 
.mob Magregan Deepshadow
.isOnQuest 722
step
.dungeon Ulda
.goto 1415,54.140,58.246
>>打开|cRXP_PICK_上古之柜|r. 拾取|cRXP_LOOT_雷乌纳石板|r
>>|cRXP_WARN_这个任务在奥达曼副本外完成|r
.complete 709,1 
.isOnQuest 709
step
.dungeon Ulda
.goto 1415,53.874,58.577
>> 拾取地上的|cRXP_LOOT_克罗姆·粗臂的宝藏|r
>>|cRXP_WARN_这个任务在奥达曼副本外完成|r
.complete 1360,1 
.isOnQuest 1360
step
.dungeon Ulda
#label HammertoeGrez
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_铁趾格雷兹|r
.turnin 722 ,, Amulet of Secrets
.accept 723 ,, Prospect of Faith
.target Hammertoe Grez
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>> 拾取地上的|cRXP_LOOT_雕纹石罐|r和|cRXP_LOOT_紫色蘑菇|r
>>|cRXP_WARN_优先|cRXP_LOOT_雕纹石罐|r. 此物品只能在奥达曼副本外找到. 你可以进入奥达曼后再完成拾取|cRXP_LOOT_紫色蘑菇|r|r
.complete 704,1 
.complete 17,1 
.disablecheckbox
.isOnQuest 704
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>> 拾取地上的|cRXP_LOOT_雕纹石罐|r
>>|cRXP_WARN_这个任务只能在奥达曼副本外完成|r
.complete 704,1 
.isOnQuest 704

step
.dungeon Ulda
.goto 1415,53.850,57.641
.subzone 1337,2 >> 进入奥达曼
step
.dungeon Ulda
#completewith HiddenChamber
>> 拾取地上的|cRXP_LOOT_紫色蘑菇|r
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尔洛戈|r
.turnin 2398 ,, The Lost Dwarves
.accept 2240 ,, The Hidden Chamber
.target Baelog
.isOnQuest 2398
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴尔洛戈|r
.accept 2240 ,, The Hidden Chamber
.target Baelog
step
.dungeon Ulda
#completewith next
>>打开|cRXP_PICK_巴尔洛戈的箱子|r. 拾取|T133276:0|t[|cRXP_LOOT_尼基夫徽章|r]
>> 击杀|cRXP_ENEMY_鲁维罗什|r. 拾取|T135225:0|t[|cRXP_LOOT_索尔之杖|r]
>>|cRXP_WARN_注意: 其他队伍成员也能拾取这些物品并合成|r|T135138:0|t[史前法杖]|cRXP_WARN_. 只需要一人做出法杖就行了|r
.collect 7740,1,2240,1 
.collect 7741,1,2240,1 
.use 7740 
.use 7741 
.mob Revelosh
.isOnQuest 2240
step
.dungeon Ulda
#label HiddenChamber
>>|cRXP_WARN_使用|r|T133276:0|t[|cRXP_LOOT_尼基夫徽章|r]|cRXP_WARN_和|r|T135225:0|t[|cRXP_LOOT_索尔之杖|r]|cRXP_WARN_以合成|r|T135138:0|t[史前法杖]
>>|cRXP_WARN_对|cRXP_PICK_钥匙之石|r|cRXP_WARN_使用|r|T135138:0|t[史前法杖]以召唤|r|cRXP_ENEMY_艾隆纳亚|r
>> 击杀|cRXP_ENEMY_艾隆纳亚|r. |cRXP_WARN_然后进入她身后的密室|r
.use 7740 
.use 7741 
.use 7733 
.complete 2240,1 
.isOnQuest 2240
step
.dungeon Ulda
>> 拾取地上的|cRXP_LOOT_紫色蘑菇|r
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>> 击杀|cRXP_ENEMY_阿札达斯|r
>> 点击|cRXP_PICK_诺甘农圆盘|r
.accept 2278 ,, The Platinum Discs
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺甘农的看门人|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
step
.dungeon Ulda
>> 点击|cRXP_PICK_诺甘农圆盘|r
.turnin 2278 ,, The Platinum Discs
.accept 2279 ,, The Platinum Discs
step
.dungeon Ulda
>>|cRXP_WARN_使用|T133289:0|t[|cRXP_LOOT_破碎的项链|r]并接受任务|r
.accept 2198 ,, The Shattered Necklace
.use 7666 
.itemcount 7666,1 
step
.dungeon Ulda
+全队一起离开奥达曼到荒芜之地交任务. 最近的出口在奥达曼后门
.zoneskip Badlands
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 709 ,, Solution to Doom
.target Theldurin the Lost
.isQuestComplete 709
step
.dungeon Ulda
#label HammertoeGrez
.goto Badlands,53.421,43.393
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷杜尔|r
.turnin 723 ,, Prospect of Faith
.accept 724 ,, Prospect of Faith
.target Prospector Ryedol
.isQuestTurnedIn 721
step
.dungeon Ulda
#completewith UldaLoch
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >> 前往洛克莫丹
step
.dungeon Ulda
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.turnin 704 ,, Agmond's Fate
.target Prospector Ironband
.isQuestComplete 704
step
.dungeon Ulda
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加克|r
.turnin 17 ,, Uldaman Reagent Run
.target Ghak Healtouch
.isQuestComplete 17
step
.dungeon Ulda
#label UldaLoch
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Ironforge >> 飞往铁炉堡
.target Thorgrum Borrelson
step
.dungeon Ulda
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_资深探险家麦格拉斯|r
.turnin 2279 ,, The Platinum Discs
.accept 2439 ,, The Platinum Discs
.target High Explorer Magellas
.isQuestTurnedIn 2278
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_勘察员雷矛|r
.turnin 2240 ,, The Hidden Chamber
.target Prospector Stormpike
.isQuestComplete 2240
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗姆·粗臂|r
.turnin 1360 ,, Reclaimed Treasures
.target Krom Stoutarm
.isQuestComplete 1360
step
.dungeon Ulda
.group 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_历史学家卡尼克|r和|cRXP_FRIENDLY_顾问贝尔格拉姆|r
.turnin 724 ,, Prospect of Faith
.accept 725 ,, Passing Word of a Threat
.goto Ironforge,77.539,11.834
.turnin 725 ,, Passing Word of a Threat
.accept 726 ,, Passing Word of a Threat
.goto Ironforge,77.343,9.714
.turnin 726 ,, Passing Word of a Threat
.accept 762 ,, An Ambassador of Evil
.goto Ironforge,77.539,11.834
.target Historian Karnik
.target Advisor Belgrum
.isQuestTurnedIn 721
step
.dungeon Ulda
.solo 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_历史学家卡尼克|r和|cRXP_FRIENDLY_顾问贝尔格拉姆|r
.turnin 724 ,, Prospect of Faith
.accept 725 ,, Passing Word of a Threat
.goto Ironforge,77.539,11.834
.turnin 725 ,, Passing Word of a Threat
.accept 726 ,, Passing Word of a Threat
.goto Ironforge,77.343,9.714
.turnin 726 ,, Passing Word of a Threat
.goto Ironforge,77.539,11.834
.target Historian Karnik
.target Advisor Belgrum
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto Ironforge,33.874,59.136
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁尼塔·石衣|r
.turnin 2439 ,, The Platinum Discs
.target Dinita Stonemantle
.isQuestTurnedIn 2278
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_资深探险家麦格拉斯|r和|cRXP_FRIENDLY_历史学家卡尼克|r
.accept 2963 ,, Portents of Uldum
.goto Ironforge,69.930,18.548
.turnin 2963 ,, Portents of Uldum
.accept 2946 ,, Seeing What Happens
.goto Ironforge,77.539,11.834
.target High Explorer Magellas
.target Historian Karnik
.isQuestTurnedIn 2278
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
.goto Ironforge,36.377,3.614
.turnin 2198 ,, The Shattered Necklace
.target Talvash del Kissel
.isOnQuest 2198
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
.goto Ironforge,36.377,3.614
.accept 2199 ,, Lore for a Price
.target Talvash del Kissel
.isQuestTurnedIn 2198
step
.dungeon Ulda
.goto Ironforge,36.377,3.614
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
>>Bring 5 |T133215:0|t[银锭] to |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
>>|cRXP_WARN_如果弄不到这些东西就跳过这个任务|r
.complete 2199,1 
.turnin 2199 ,, Lore for a Price
.target Talvash del Kissel
.isOnQuest 2199
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> 飞往洛克莫丹
.target Gryth Thurden
.zoneskip Ironforge,1
step
.dungeon Ulda
.abandon 2199 ,, Lore for a Price
step
.dungeon Ulda
.goto Badlands,49.23,7.80
.zone Badlands >> 前往荒芜之地
step
.dungeon Ulda
.group
#completewith next
.goto Badlands,42.87,29.77,60 >> 进入苦痛堡垒
step
.dungeon Ulda
.group 2
.isOnQuest 762
.goto Badlands,41.92,26.26,20,0
.goto Badlands,42.10,28.89
>> 击杀|cRXP_ENEMY_因弗努斯大使|r. 拾取|cFF00B|cRXP_FRIENDLY_因弗努斯大使的护腕|r
>>|cRXP_ENEMY_因弗努斯大使|r|cRXP_WARN_在下面那层|r
.complete 762,1 
.mob Ambassador Infernus
step
#completewith next
.goto Badlands,1.02,63.09,0
.goto Searing Gorge,76.28,56.39
.zone Searing Gorge >> 前往灼热峡谷
step
.goto Searing Gorge,65.592,62.172
>>点击|cRXP_PICK_木制厕所|r
.accept 4449 ,, Caught!
step
.goto Searing Gorge,63.1,60.9
>> 如果你的丝绸还不够就击杀|cRXP_ENEMY_黑铁地质学家|r拾取他们的|cRXP_LOOT_丝绸|r
.complete 4449,1 
.collect 4306,15 
.mob Dark Iron Geologist
step
.goto Searing Gorge,65.592,62.172
>>点击|cRXP_PICK_木制厕所|r
.turnin 4449 ,, Caught!
.accept 4450 ,, Ledger from Tanaris
step
.goto Searing Gorge,65.505,62.184
>> 拾取地上的|cRXP_LOOT_古德斯迪尔的账本|r
.complete 4450,1 
step
#completewith next
.goto Searing Gorge,65.93,36.83,0
.goto Searing Gorge,65.4,48.4,0
.goto Searing Gorge,62.40,70.03,0
>> 击杀|cRXP_ENEMY_晶网蜘蛛|r. 拾取他们的|cRXP_LOOT_水晶蜘蛛腿|r
>>|cRXP_WARN_优先完成下一步的护送任务. 如果他不在那就在等待的同时击杀|cRXP_ENEMY_晶网蜘蛛|r|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,63.879,60.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜里奥斯·脆石|r
>>|cRXP_WARN_这会开启护送. 在接受前清空场地|r
.accept 3367 ,, Suntara Stones
.target Dorius Stonetender
step
#completewith EscortDorius
.goto Searing Gorge,65.93,36.83,0
.goto Searing Gorge,65.4,48.4,0
.goto Searing Gorge,62.40,70.03,0
>> 击杀|cRXP_ENEMY_晶网蜘蛛|r. 拾取他们的|cRXP_LOOT_水晶蜘蛛腿|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,74.448,19.287
>> 护送|cRXP_FRIENDLY_杜里奥斯·脆石|r到洛克莫丹通道
.complete 3367,1 
.target Dorius Stonetender
step
#label EscortDorius
.goto Searing Gorge,74.448,19.287
>>点击地上的|cRXP_PICK_烧焦的信件|r
>>|cRXP_WARN_如果|cRXP_PICK_烧焦的信件|r没有刷出来, 你就需要放弃任务并重新护送. 这是怀旧服的一个Bug|r
.turnin 3367 ,, Suntara Stones
.accept 3368 ,, Suntara Stones
step
.goto Searing Gorge,61.16,70.43,70,0
.goto Searing Gorge,65.4,48.4,50,0
.goto Searing Gorge,65.93,36.83,50,0
.goto Searing Gorge,65.4,48.4,50,0
.goto Searing Gorge,61.16,70.43,70,0
.goto Searing Gorge,65.4,48.4
>> 击杀|cRXP_ENEMY_晶网蜘蛛|r. 拾取他们的|cRXP_LOOT_水晶蜘蛛腿|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,31.70,34.18,30,0
.goto Searing Gorge,34.31,26.41
.subzone 1446 >> 前往瑟银岗哨
.zoneskip Searing Gorge,1
step
.dungeon Ulda
.isQuestComplete 762
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰尼·瑞德|r
.fp Thorium Point >> 开启瑟银岗哨飞行点
.fly Ironforge >> 飞往铁炉堡 << !Mage
.target Lanie Reed
.zoneskip Searing Gorge,1
step << Mage
.dungeon Ulda
.isQuestComplete 762
.zone Ironforge >> 传送到铁炉堡
.zoneskip Searing Gorge,1
step
.dungeon Ulda
.isQuestComplete 762
.goto Ironforge,77.343,9.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_顾问贝尔格拉姆|r
.turnin 762 ,, An Ambassador of Evil
.target Advisor Belgrum
step
.dungeon Ulda
.isQuestComplete 3368
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_索里奥斯馆长|r|cRXP_WARN_在整个探险者大厅巡逻|r
.turnin 3368 ,, Suntara Stones
.target Curator Thorius
.zoneskip Ironforge,1
step << !Mage
.dungeon Ulda
.isQuestTurnedIn 762
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >> 进入矿道地铁. 乘坐地铁前往暴风城
step
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰尼·瑞德|r
.fp Thorium Point >> 开启瑟银岗哨飞行点
.fly Stormwind >> 飞往暴风城 << !Mage
.target Lanie Reed
.zoneskip Searing Gorge,1
step << Mage
#completewith next
.zone Stormwind City >> 传送到暴风城
step
.goto Stormwind City,64.328,20.627
.target Brohann Caskbelly
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布罗哈恩·铁桶|r
.turnin 1469 ,, Rhapsody's Tale
step
.dungeon Ulda
.abandon 762 ,, An Ambassador of Evil
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 738,739,740,11463,8705 >> 从银行取出下列物品:
>>|T134058:0|t[一袋大麦] 
>>|T134059:0|t[一袋玉米] 
>>|T134059:0|t[一袋黑麦] 
>>|T133628:0|t[未递送的包裹] 
>>|T132836:0|t[定位器OOX-22/FE] (如果有的话) 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 11725,11727,10443 >>将以下物品存入银行:
>>|T134321:0|t[水晶蜘蛛腿] 
>>|T133741:0|t[古德斯迪尔的账本] 
>>|T133471:0|t[烧焦的信件] (如果有的话) 
.target Newton Burnside
step
#completewith next
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买|r|T133222:0|t[真银锭]|cRXP_BUY_和2个|r|T134823:0|t[坚韧药剂]
.collect 6037,1,50,1 
.collect 3825,2,3842,1 
>>|cRXP_WARN_如果你无法获得它们就跳过此步|r
.target Auctioneer Jaxon
step
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Westfall >> 飞往西部荒野
.target Dungar Longdrink
.zoneskip Stormwind City,1
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛林布兹·雷酒|r
.turnin 49 ,, Sweet Amber
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛林布兹·雷酒|r
.accept 50 ,, Sweet Amber
.turnin 50 ,, Sweet Amber
.itemcount 6037,1
step
.isQuestTurnedIn 50
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛林布兹·雷酒|r
.accept 51 ,, Sweet Amber
step
#completewith Egg
.hs >> 炉石回羽月要塞
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安吉拉斯·月风|r
.target Angelas Moonbreeze
.accept 3445 ,, The Sunken Temple
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
.xp 47 >> 刷到47级
>> 击杀|cRXP_ENEMY_憎世纳迦|r直到你打到|T132836:0|t[|cRXP_LOOT_定位器OOX-22/FE|r]
.use 8705 >> |cRXP_WARN_使用|T132836:0|t[|cRXP_LOOT_定位器OOX-22/FE|r]并接受任务|r
>>|cRXP_WARN_如果你到达47级都没有打到它就跳过此任务|r
.collect 8705,1,2766 
.disablecheckbox
.accept 2766 ,, Find OOX-22/FE!
.disablecheckbox
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.use 8705 >> |cRXP_WARN_使用|T132836:0|t[|cRXP_LOOT_定位器OOX-22/FE|r]并接受任务|r
.collect 8705,1,2766 
.accept 2766 ,, Find OOX-22/FE!
.itemcount 8705,1 
step
#completewith Egg
.goto Feralas,47.3,44.7,85 >> 游到大陆
step
.isOnQuest 2766
.goto Feralas,55.44,56.45,40,0
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
>>|cRXP_WARN_除非你在队伍中否则不要接受后续护送任务|r
.turnin 2766 ,, Find OOX-22/FE!
.target Homing Robot OOX-22/FE
step
.isQuestTurnedIn 2766
.group 2
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
.accept 2767 ,, Rescue OOX-22/FE!
.target Homing Robot OOX-22/FE
step
.isOnQuest 2767
.group 2
.goto Feralas,45.67,43.38
>> 护送|cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r到安全地点
.complete 2767,1
.target Homing Robot OOX-22/FE
step
.line Feralas,55.86,67.93,54.90,67.20,54.14,67.90,54.14,68.91,54.28,70.94,54.14,71.54,54.91,73.50,55.30,73.98,55.92,74.67,56.84,74.84,55.92,74.67,55.30,73.98,54.91,73.50,54.14,71.54,54.28,70.94,54.14,68.91,54.14,67.90,54.90,67.20,55.86,67.93,
.goto Feralas,55.86,67.93,60,0
.goto Feralas,54.90,67.20,60,0
.goto Feralas,54.14,67.90,60,0
.goto Feralas,54.14,68.91,60,0
.goto Feralas,54.28,70.94,60,0
.goto Feralas,54.14,71.54,60,0
.goto Feralas,54.91,73.50,60,0
.goto Feralas,55.30,73.98,60,0
.goto Feralas,55.92,74.67,60,0
.goto Feralas,56.84,74.84,60,0
.goto Feralas,55.92,74.67,60,0
.goto Feralas,55.30,73.98,60,0
.goto Feralas,54.91,73.50,60,0
.goto Feralas,54.14,71.54,60,0
.goto Feralas,54.28,70.94,60,0
.goto Feralas,54.14,68.91,60,0
.goto Feralas,54.14,67.90,60,0
.goto Feralas,54.90,67.20,60,0
.goto Feralas,55.86,67.93,60,0
.goto Feralas,54.14,71.54
>>击杀|cRXP_ENEMY_被诅咒的塞卡摩|r. 拾取its |cRXP_LOOT_枫树枝|r
>>|cRXP_WARN_|cRXP_ENEMY_被诅咒的塞卡摩|r的巡逻路线已标记在地图上|r
.complete 51,1 
.isOnQuest 51
.unitscan Cursed Sycamore
step
#label Egg
.goto Feralas,53.657,74.365,0
.goto Feralas,56.653,75.892,0
.goto Feralas,56.708,76.724,0
.goto Feralas,55.906,76.035,0
.goto Feralas,53.657,74.365,10,0
.goto Feralas,56.653,75.892,10,0
.goto Feralas,56.708,76.724,10,0
.goto Feralas,55.906,76.035,0
>>从一处鸟巢拾取1枚|cRXP_LOOT_角鹰兽的蛋|r
.collect 8564,1,2741,1 
step
.goto Feralas,65.945,45.651
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛达尔·月纹|r
.accept 3841 ,, An Orphan Looking For a Home
.target Kindal Moonweaver
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法芬德尔|r
.turnin 4281 ,, Thalanaar Delivery
.use 11463 
.target Falfindel Waywarder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赛希亚娜|r
.goto Feralas,89.497,45.853
.fly Tanaris >> 飞往塔纳利斯
.target Thyssiana
.zoneskip Feralas,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 47-48 塔纳利斯
#next 48-49 荆棘谷/辛特兰 II
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 9329 >> 从银行取出下列物品:
>>|T133469:0|t[简短的便笺] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 742,11102 >>将以下物品存入银行:
>>|T133749:0|t[枫树枝] (如果有的话) 
>>|T132833:0|t[未孵化的小精龙卵] 
.target Gimblethorn
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r
.accept 1691 ,, More Wastewander Justice
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >> 绑定炉石到加基森
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.turnin 2941 ,, The Borrower
.target Curgle Cranklehop
step
.goto Tanaris,52.387,26.968
>>点击地上的|cRXP_PICK_测蛋器|r
.turnin 2741 ,, The Super Egg-O-Matic
.itemcount 8564,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2750 ,, A Bad Egg
.turnin 2750 ,, A Bad Egg
.target Curgle Cranklehop
.itemcount 8646,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2749 ,, An Ordinary Egg
.turnin 2749 ,, An Ordinary Egg
.target Curgle Cranklehop
.itemcount 8645,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2748 ,, A Fine Egg
.turnin 2748 ,, A Fine Egg
.target Curgle Cranklehop
.itemcount 8644,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2747 ,, An Extraordinary Egg
.turnin 2747 ,, An Extraordinary Egg
.target Curgle Cranklehop
.itemcount 8643,1 
step
+打开|T132594:0|t[补给物品盒]
.itemcount 9539,1 
.use 9539
step
+打开|T132595:0|t[法术盒]
.itemcount 9540,1 
.use 9540
step
+打开|T132597:0|t[糖果盒]
.itemcount 9541,1 
.use 9541
step
.goto Tanaris,51.835,27.038
>>点击|cRXP_PICK_通缉告示|r
.accept 2781 ,, WANTED: Caliph Scorpidsting
.accept 2875 ,, WANTED: Andre Firebeard
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 992 ,, Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,39.016,29.244
.use 8584 >> |cRXP_WARN_在流沙岗哨水池使用|r|T134867:0|t[未使用的寻水器]|cRXP_WARN_. 避开沿途的精英|cRXP_ENEMY_沙怒巨魔|r|r
>>|cRXP_WARN_一旦你装满|T134867:0|t[未使用的寻水器], 两只37/38级的|cRXP_ENEMY_森提帕尔掘洞蝎|r就会刷出来. |r|cRXP_WARN_你可以杀掉它们或者直接逃跑|r
.complete 992,1 
.mob Centipaar Tunneler
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 ,, Gadgetzan Water Survey
.target Senior Surveyor Fizzledowser
step
#label tStart
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3445 ,, The Sunken Temple
.accept 3444 ,, The Stone Circle
.accept 3161 ,, Gahz'ridian
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,58.75,39.34,0
.goto Tanaris,58.72,36.54,0
.goto Tanaris,60.07,37.31,0
.goto Tanaris,60.76,32.67,0
.goto Tanaris,63.57,37.80,0
.goto Tanaris,63.89,39.86,0
.goto Tanaris,65.03,39.49,0
.goto Tanaris,65.41,36.62,0
>> 击杀|cRXP_ENEMY_废土游荡者|r, |cRXP_ENEMY_废土刺客|r和|cRXP_ENEMY_废土暗影法师|r
>>|cRXP_ENEMY_废土游荡者|r|cRXP_WARN_处于|r|T132320:0|t[潜行]状态
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
.goto Tanaris,59.4,41.1,60,0
.goto Tanaris,61.8,38.2,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,61.0,35.9,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,60.85,37.82
>> 击杀|cRXP_ENEMY_卡利夫·斯科比斯汀|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_ENEMY_卡利夫·斯科比斯汀|r|cRXP_WARN_与2名|cRXP_ENEMY_废土游荡者|r一起穿越清泉平原巡逻|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62
>> 击杀|cRXP_ENEMY_废土游荡者|r, |cRXP_ENEMY_废土刺客|r和|cRXP_ENEMY_废土暗影法师|r
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
#completewith next
.goto Tanaris,67.058,23.891
.subzone 977 >> 前往热砂港
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 3520 ,, Screecher Spirits
.target Yeh'kinya
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 ,, Pirate Hats Ahoy!
.target Haughty Modiste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安全主管膨啸|r和|cRXP_FRIENDLY_斯杜雷|r
.accept 8366 ,, Southsea Shakedown
.goto Tanaris,67.058,23.891
.accept 2873 ,, Stoley's Shipment
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
step
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> 前往落帆海湾
step
#completewith StoleyShip
>> 击杀|cRXP_ENEMY_南海海盗|r, |cRXP_ENEMY_南海掠劫者|r, |cRXP_ENEMY_南海码头工人|r和|cRXP_ENEMY_南海流氓|r. 拾取他们的|cRXP_LOOT_海盗帽|r和|T132596:0|t[|cRXP_LOOT_海盗的手提箱|r]
>>|cRXP_WARN_打开|r|T132596:0|t[|cRXP_LOOT_海盗的手提箱|r]|cRXP_WARN_直到你找到|r|T134939:0|t[|cRXP_LOOT_船运时刻表|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_船运时刻表|r]并接受任务|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.collect 9250,1,2876 
.accept 2876 ,, Ship Schedules
.use 9276 
.use 9250 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith StoleyShip
.goto Tanaris,73.37,47.14,0
>> 击杀|cRXP_ENEMY_安德雷·火胡|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 2875,1 
.mob Andre Firebeard
step
#label StoleyShip
.goto Tanaris,72.15,46.76
>>Travel upstairs in the house
>>打开|cRXP_PICK_被偷走的货物|r. 拾取|cRXP_LOOT_斯杜雷的货物|r
.complete 2873,1 
step
#completewith next
>> 击杀|cRXP_ENEMY_南海海盗|r, |cRXP_ENEMY_南海掠劫者|r, |cRXP_ENEMY_南海码头工人|r和|cRXP_ENEMY_南海流氓|r. 拾取他们的|cRXP_LOOT_海盗帽|r和|T132596:0|t[|cRXP_LOOT_海盗的手提箱|r]
>>|cRXP_WARN_打开|r|T132596:0|t[|cRXP_LOOT_海盗的手提箱|r]|cRXP_WARN_直到你找到|r|T134939:0|t[|cRXP_LOOT_船运时刻表|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_船运时刻表|r]并接受任务|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.collect 9250,1,2876 
.accept 2876 ,, Ship Schedules
.use 9276 
.use 9250 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.goto Tanaris,73.37,47.14
>> 击杀|cRXP_ENEMY_安德雷·火胡|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 2875,1 
.mob Andre Firebeard
step
>> 击杀|cRXP_ENEMY_南海海盗|r, |cRXP_ENEMY_南海掠劫者|r, |cRXP_ENEMY_南海码头工人|r和|cRXP_ENEMY_南海流氓|r. 拾取他们的|cRXP_LOOT_海盗帽|r和|T132596:0|t[|cRXP_LOOT_海盗的手提箱|r]
>>|cRXP_WARN_打开|r|T132596:0|t[|cRXP_LOOT_海盗的手提箱|r]|cRXP_WARN_直到你找到|r|T134939:0|t[|cRXP_LOOT_船运时刻表|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_船运时刻表|r]并接受任务|r
.complete 8366,1 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,2 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,3 
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73
.complete 8366,4 
.goto Tanaris,75.17,45.84
.complete 8365,1 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.collect 9250,1,2876 
.accept 2876 ,, Ship Schedules
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.use 9276 
.use 9250 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.xp 48 >> 刷到48级
>>击杀所有种类的|cRXP_ENEMY_南海海盗|r. 拾取|T132836:0|t[|cRXP_LOOT_定位器OOX-17/TN|r]
>>|cRXP_WARN_暂时先不要接受此任务|r
>>|cRXP_WARN_如果刷到48级还没有打到它就跳过此任务|r

.collect 8623,1,351 
.disablecheckbox

.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith SWP
.goto Tanaris,67.058,23.891
.subzone 977 >> 前往热砂港
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安全主管膨啸|r和|cRXP_FRIENDLY_斯杜雷|r
.turnin 8366 ,, Southsea Shakedown
.turnin 2875 ,, WANTED: Andre Firebeard
.turnin 2876 ,, Ship Schedules
.goto Tanaris,67.058,23.891
.turnin 2873 ,, Stoley's Shipment
.accept 2874 ,, Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
.itemcount 9250,1 
.use 9250 
step
#label SWP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安全主管膨啸|r和|cRXP_FRIENDLY_斯杜雷|r
.turnin 8366 ,, Southsea Shakedown
.turnin 2875 ,, WANTED: Andre Firebeard
.goto Tanaris,67.058,23.891
.turnin 2873 ,, Stoley's Shipment
.accept 2874 ,, Deliver to MacKinley
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 ,, Pirate Hats Ahoy!
.target Haughty Modiste
step
#completewith GadgetTurnins
.subzone 976 >> 前往加基森
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r
.turnin 1691 ,, More Wastewander Justice
.turnin 2781 ,, WANTED: Caliph Scorpidsting
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安迪·利恩|r
.accept 5863 ,, The Dunemaul Compound
.target Andi Lynn
step
#label GadgetTurnins
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 82 ,, Noxious Lair Investigation
.target Senior Surveyor Fizzledowser
step
#completewith next
.goto Tanaris,34.75,46.05
.subzone 982 >> 前往腐化之巢
step
.goto Tanaris,32.31,49,93,80,0
.goto Tanaris,35.09,48.45,80,0
.goto Tanaris,36.06,41.07,80,0
.goto Tanaris,35.09,48.45
>>击杀|cRXP_ENEMY_森提帕尔虫子|r. 拾取他们的|cRXP_LOOT_昆虫肢体|r
>>|cRXP_WARN_待在地表. 避免进入任何虫巢|r
.complete 82,1 
.mob Centipaar Wasp
.mob Centipaar Stinger
.mob Centipaar Worker
.mob Centipaar Swarmer
.mob Centipaar Sandreaver
step
#completewith Ravager
.goto Tanaris,41.50,57.81
.subzone 983 >> 前往砂槌营地
step
#completewith next
>> 击杀|cRXP_ENEMY_砂槌蛮兵|r和|cRXP_ENEMY_砂槌执行者|r
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#label Ravager
.goto Tanaris,41.50,57.81
>> 击杀|cRXP_ENEMY_劫毁者格玛洛克|r
>>|cRXP_WARN_注意! |r|cRXP_ENEMY_劫毁者格玛洛克|r|cRXP_WARN_会|r|T136224:0|t[激怒]|cRXP_WARN_. 能快速造成巨量伤害|r
.complete 5863,3 
.mob Gor'marok the Ravager
step
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10,70,0
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10
>> 击杀|cRXP_ENEMY_砂槌蛮兵|r和|cRXP_ENEMY_砂槌执行者|r
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#completewith Ridian
.goto Tanaris,40.52,72.95,200 >> 前往南月废墟
step
#completewith next
.itemStat 1,QUALITY,>1
.cast 11992 >> 装备|T133151:0|t[加兹瑞迪安探测器]
.use 9978
.isOnQuest 3161
step
#label Ridian
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83,70,0
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83
>> 在废墟周围拾取地上的|cRXP_LOOT_加兹瑞迪安饰物|r
>>|cRXP_WARN_如果装备了|r|T133151:0|t[加兹瑞迪安探测器], |cRXP_LOOT_加兹瑞迪安饰物|r会显示在小地图上.|r
.complete 3161,1 
.use 9978
step
#completewith next
.itemStat 1,QUALITY,1
.cast 11992 >> 装备你自己的|T133127:0|t[头盔]
.isOnQuest 3161
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3161 ,, Gahz'ridian
.target Marvon Rivetseeker
step
.goto Tanaris,50.886,26.963
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 82 ,, Noxious Lair Investigation
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2944 ,, The Super Snapper FX
.target Curgle Cranklehop
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_安迪·利恩|r
.turnin 5863 ,, The Dunemaul Compound
.target Andi Lynn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 9328,8623 >>将以下物品存入银行:
>>|T134442:0|t[超级摄影器FX] 
>>|T132836:0|t[定位器OOX-17/TN] (如果有的话) 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Ratchet >> 飞往棘齿城
.target Bera Stonehammer
.zoneskip The Barrens
.zoneskip Stranglethorn Vale
step
.goto The Barrens,63.677,38.618
.zone Stranglethorn Vale >> 乘船前往藏宝海湾
>>|cRXP_WARN_等待时|r|cRXP_WARN_升级|r|T135966:0|t[急救]
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 48-49 荆棘谷/辛特兰 II
#next 49-50 灼热峡谷
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海狼麦克基雷|r
.turnin 2874 ,, Deliver to MacKinley
.accept 609 ,, Voodoo Dues
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 621 ,, Zanzil's Secret
step
.group
.goto Stranglethorn Vale,27.173,77.007
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.accept 608 ,, The Bloodsail Buccaneers
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 ,, Rescue OOX-22/FE!
.isQuestComplete 2767
step << skip 
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 ,, Rescue OOX-17/TN!
.isQuestComplete 648
step
.group 2
#completewith next
.goto Stranglethorn Vale,30.04,89.38,150 >> 前往血帆海盗船
.isQuestAvailable 608,624
step
.group 2
>> 击杀|cRXP_ENEMY_尼哈鲁船长|r, |cRXP_ENEMY_舰队指挥官菲尔拉伦|r和|cRXP_ENEMY_斯蒂沃特船长|r
>>|cRXP_WARN_他们各自待在一艘船上, 都在第二层|r
>>|cRXP_WARN_搜索每艘船的底层寻找|r|T134939:0|t[|cRXP_LOOT_科泰罗的谜题|r]|cRXP_WARN_. 可能刷在任意一艘船上|r
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_科泰罗的谜题|r]并接受任务|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找它的位置|r << Hunter
.complete 608,2 
.goto Stranglethorn Vale,29.27,88.32
.complete 608,3 
.goto Stranglethorn Vale,30.58,90.63
.complete 608,1 
.goto Stranglethorn Vale,32.89,88.23
.collect 4056,1,624,1 
.accept 624 ,, Cortello's Riddle
.goto Stranglethorn Vale,29.27,88.32,0
.goto Stranglethorn Vale,30.58,90.63,0
.goto Stranglethorn Vale,32.89,88.23,0
.goto Stranglethorn Vale,29.35,89.17,35,0
.goto Stranglethorn Vale,30.61,89.76,35,0
.goto Stranglethorn Vale,33.49,88.20,35,0 
.mob Captain Keelhaul
.mob Fleet Master Firallon
.mob Captain Stillwater
step
#completewith Chucky
.goto Stranglethorn Vale,39.99,58.24
.subzone 311 >> 前往阿博拉兹废墟
step
#completewith next
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>击杀|cRXP_ENEMY_赞吉尔|r. 拾取他们的|cRXP_LOOT_赞吉尔的药剂|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#label Chucky
.goto Stranglethorn Vale,39.99,58.24
>> 击杀|cRXP_ENEMY_拇指苏克|r. 拾取他的|cRXP_LOOT_苏克的巨型戒指|r
.complete 609,3 
.mob Chucky "Ten Thumbs"
step
#completewith FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
.subzone 477 >> 前往朱布瓦尔废墟
step
#completewith FinalZanzil
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>击杀|cRXP_ENEMY_赞吉尔|r. 拾取他们的|cRXP_LOOT_赞吉尔的药剂|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#completewith next
.goto Stranglethorn Vale,34.92,51.84
>> 击杀|cRXP_ENEMY_‘乌鸦’乔乔|r. 拾取他的|cRXP_LOOT_乔乔的金色望远镜|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,35.26,51.28
>> 击杀|cRXP_ENEMY_玛雷·‘木脚’·维尔金斯|r. 拾取他的|cRXP_LOOT_玛雷的畸形足|r
.complete 609,1 
.mob Maury "Club Foot" Wilkins
step
#label FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
>> 击杀|cRXP_ENEMY_‘乌鸦’乔乔|r. 拾取他的|cRXP_LOOT_乔乔的金色望远镜|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84
.goto Stranglethorn Vale,39.99,58.24,0
>>击杀|cRXP_ENEMY_赞吉尔|r. 拾取他们的|cRXP_LOOT_赞吉尔的药剂|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,31.12,43.17
>> 击杀|cRXP_ENEMY_泰希斯|r. 拾取他的|cRXP_LOOT_爪子|r
>>|cRXP_ENEMY_泰希斯|r|cRXP_WARN_会在此区域巡逻|r
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>> 击杀|cRXP_ENEMY_巴尔瑟拉|r. 拾取|cRXP_LOOT_巴尔瑟拉的牙齿|r
>>|cRXP_ENEMY_巴尔瑟拉|r|cRXP_WARN_可能会刷在莫什奥格食人魔山的北边或者西边|r
>>|cRXP_WARN_施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_寻找|r|cRXP_ENEMY_巴尔瑟拉|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾尔加丁爵士|r和|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 193 ,, Panther Mastery
.goto Stranglethorn Vale,35.556,10.546
.turnin 197 ,, Raptor Mastery
.accept 208 ,, Big Game Hunter
.goto Stranglethorn Vale,35.658,10.808
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
step
.goto Stranglethorn Vale,38.20,35.57
>> 击杀|cRXP_ENEMY_虎王邦加拉什|r. 拾取|cRXP_LOOT_邦加拉什的头颅|r
>>|cRXP_ENEMY_虎王邦加拉什|r|cRXP_WARN_会在半血时召唤|cRXP_ENEMY_黑豹|r at 50% health. 尽量在半血前眩晕它这样就能避免它招出随从|r
>>|cRXP_WARN_如果你没有把握就跳过此步|r
.complete 208,1 
.mob King Bangalash
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_小赫米特·奈辛瓦里|r
.turnin 208 ,, Big Game Hunter
.target Hemet Nesingwary
.isQuestComplete 208
step
.abandon 208 ,, Big Game Hunter
step
#completewith ReturnSTV
.goto Stranglethorn Vale,28.97,73.05,100 >> 前往藏宝海湾
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海狼麦克基雷|r
.turnin 609 ,, Voodoo Dues
.target "Sea Wolf" MacKinley
step
#label ReturnSTV
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威士忌·狡黠|r和|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 580 ,, Whiskey Slim's Lost Grog
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 ,, Zanzil's Secret
.accept 1119 ,, Zanzil's Mixture and a Fool's Stout
.goto Stranglethorn Vale,27.120,77.208
.target Whiskey Slim
.target Crank Fizzlebub
step
.isQuestComplete 608
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 608 ,, The Bloodsail Buccaneers
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r和|cRXP_FRIENDLY_掘金者里克|r
.bankwithdraw 742,9468 >> 从银行取出下列物品:
>>|T133749:0|t[枫树枝] (如果有的话) 
>>|T135992:0|t[沙普比克的羽毛] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.abandon 608 ,, The Bloodsail Buccaneers
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >> 飞往西部荒野
.target Gyll
.isQuestComplete 51
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛林布兹·雷酒|r
.turnin 51 ,, Sweet Amber
.accept 53 ,, Sweet Amber
.isQuestTurnedIn 50 
step << !Mage
.goto Westfall,56.556,52.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔|r
.fly Stormwind >> 飞往暴风城
.target Thor
.isOnQuest 53
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> 飞往暴风城
.target Gyll
.isQuestAvailable 51
.zoneskip Stranglethorn Vale,1
step << Mage
#completewith next
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >> 学习职业技能
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>进入已宰的羔羊并下楼
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Spackle Thornberry
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Darkshire >> 飞往夜色镇
.target Dungar Longdrink
.isQuestAvailable 1395
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守卫队长索里加尔|r
.target Watchmaster Sorigal
.accept 1395 ,, Supplies for Nethergarde
step
#completewith Thadius
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲利希亚·玛林|r
.target Felicia Maline
.fly Nethergarde >> 飞往守望堡
.zoneskip Swamp of Sorrows
step
.goto Blasted Lands,66.522,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_军需官朗格尔斯|r
.turnin 1395 ,, Supplies for Nethergarde
.target Quartermaster Lungertz
step
#label Thadius
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_萨迪斯·格希德|r对话
.turnin 2990 ,, Thadius Grimshade
.target Thadius Grimshade
step
.dungeon ZF
.isQuestTurnedIn 2990
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_萨迪斯·格希德|r对话
.accept 2991 ,, Nekrum's Medallion
.target Thadius Grimshade
step
#completewith Jarquia
.goto Blasted Lands,52.34,9.63,0
.goto Swamp of Sorrows,33.60,65.32
.zone Swamp of Sorrows >> 前往悲伤沼泽
step
.group
.goto Swamp of Sorrows,22.87,48.18
>> 点击桥下水中的|cRXP_PICK_浸水的卷轴|r
.turnin 624 ,, Cortello's Riddle
.accept 625 ,, Cortello's Riddle
.isOnQuest 624
step
.group
.goto Swamp of Sorrows,22.87,48.18
>> 点击桥下水中的|cRXP_PICK_浸水的卷轴|r
.accept 625 ,, Cortello's Riddle
.isQuestTurnedIn 624
step
#label Jarquia
.goto Swamp of Sorrows,91.87,68.35,40,0
.goto Swamp of Sorrows,94.386,61.489,40,0
.goto Swamp of Sorrows,94.730,51.849,40,0
.goto Swamp of Sorrows,91.87,68.35,40,0
.goto Swamp of Sorrows,94.386,61.489,40,0
.goto Swamp of Sorrows,94.730,51.849,40,0
.goto Swamp of Sorrows,94.386,61.489
>> 击杀|cRXP_ENEMY_加奎亚|r. 拾取他的|cRXP_LOOT_古德斯迪尔的长剑|r
>>|cRXP_ENEMY_加奎亚|r|cRXP_WARN_沿着海岸有几个不同的刷新点|r
.complete 4450,4 
.mob Jarquia
step
#completewith Orphan
.hs Gadgetzan >> 炉石回加基森
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 11723 >>将以下物品存入银行:
>>|T135272:0|t[古德斯迪尔的长剑] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 11102 >> 从银行取出下列物品:
>>|T132833:0|t[未孵化的小精龙卵] 
.target Gimblethorn
step
#completewith Orphan
.goto Thousand Needles,77.782,77.263
.subzone 2240 >> 前往沙漠赛道
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1119 ,, Zanzil's Mixture and a Fool's Stout
.timer 13,Kravel Koalbeard RP
.accept 1120 ,, Get the Gnomes Drunk
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,77.563,76.941
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_地精车队老板|r
.turnin 1120 ,, Get the Gnomes Drunk
.isQuestTurnedIn 1118
.target Gnome Pit Boss
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1122 ,, Report Back to Fizzlebub
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎恩丁|r
.turnin 3841 ,, An Orphan Looking For a Home
.accept 3842 ,, A Short Incubation
.turnin 3842 ,, A Short Incubation
.itemcount 3825,2 
.target Quentin
step
#label Orphan
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎恩丁|r
.turnin 3841 ,, An Orphan Looking For a Home
.target Quentin
step
.dungeon ZF
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 2770 ,, Gahz'rilla
.target Wizzle Brassbolts
step
.dungeon ZF
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 ,, Troll Temper
.target Trenton Lighthammer
step
.dungeon ZF
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r
.accept 2768 ,, Divino-matic Rod
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 2865 ,, Scarab Shells
.target Tran'rek
step
.dungeon ZF
.isQuestTurnedIn 3520
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.accept 3527 ,, The Prophecy of Mosh'aru
.target Yeh'kinya
step
.dungeon ZF
.goto Tanaris,73.37,47.14
.goto Tanaris,38.731,19.839
.subzone 978 >> 现在前往祖尔法拉克. 在寻找队伍时刷|cRXP_ENEMY_海盗|r
step
.dungeon ZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.subzone 978,2 >> 进入祖尔法拉克
step
.dungeon ZF
#completewith Gahzrilla
>> 击杀|cRXP_ENEMY_巨魔|r. 拾取他们的|cRXP_LOOT_巨魔调和剂|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith next
>> 击杀|cRXP_ENEMY_甲虫|r. 拾取他们的|cRXP_LOOT_完整的圣甲虫壳|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
>> 击杀|cRXP_ENEMY_殉教者塞卡|r. 拾取|cRXP_LOOT_第一块摩沙鲁石板|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
step
.dungeon ZF
>> 击杀|cRXP_ENEMY_甲虫|r. 拾取他们的|cRXP_LOOT_完整的圣甲虫壳|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
#completewith NekrumMedallion
+爬上金字塔
>>击杀|cRXP_ENEMY_沙怒刽子手|r. 拾取|cRXP_LOOT_刽子手的钥匙|r
>>|cRXP_WARN_队伍中的所有人都可以拾取|r|cRXP_LOOT_钥匙|r
>>|cRXP_WARN_对一个|cRXP_PICK_巨魔牢笼|r使用|r|cRXP_LOOT_刽子手的钥匙|r|cRXP_WARN_以释放|cRXP_FRIENDLY_布莱中士|r和他的狱友|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2991,2768
.mob Sandfury Executioner
step
.dungeon ZF
>>保护|cRXP_FRIENDLY_布莱中士|r和他的狱友, 然后等一会和他们一起下去
>> 击杀|cRXP_ENEMY_耐克鲁姆|r. 拾取|cRXP_LOOT_耐克鲁姆的徽章|r
>>在你击杀|cRXP_ENEMY_耐克鲁姆|r后, 吃喝恢复然后与|cRXP_FRIENDLY_布莱中士|r对话并击杀他
>> 击杀|cRXP_ENEMY_布莱中士|r. 拾取|cRXP_LOOT_探水棒|r
.complete 2991,1 
.complete 2768,1 
.isOnQuest 2991
.isOnQuest 2768
.skipgossip
step
.dungeon ZF
>>保护|cRXP_FRIENDLY_布莱中士|r和他的狱友, 然后等一会和他们一起下去
>> 击杀|cRXP_ENEMY_耐克鲁姆|r. 拾取|cRXP_LOOT_耐克鲁姆的徽章|r
.complete 2991,1 
.isOnQuest 2991
.skipgossip
step
.dungeon ZF
#label NekrumMedallion
>>保护|cRXP_FRIENDLY_布莱中士|r和他的狱友, 然后等一会和他们一起下去
>> 击杀|cRXP_ENEMY_耐克鲁姆|r后, 吃喝恢复然后与|cRXP_FRIENDLY_布莱中士|r对话并击杀他
>> 击杀|cRXP_ENEMY_布莱中士|r. 拾取|cRXP_LOOT_探水棒|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
step
.dungeon ZF
>> 击杀|cRXP_ENEMY_水占师维蕾萨|r. 拾取|cRXP_LOOT_深渊皇冠|r和|cRXP_LOOT_第二块摩沙鲁石板|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
step
.dungeon ZF
>> 击杀|cRXP_ENEMY_水占师维蕾萨|r. 拾取|cRXP_LOOT_深渊皇冠|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
step
.dungeon ZF
>> 击杀|cRXP_ENEMY_水占师维蕾萨|r. 拾取|cRXP_LOOT_第二块摩沙鲁石板|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
step
.dungeon ZF
#label Gahzrilla
>>|cRXP_WARN_对|cRXP_PICK_祖尔法拉克铁锣|r|cRXP_WARN_使用|r|T133056:0|t[祖尔法拉克之槌]以召唤|r|cRXP_ENEMY_加兹瑞拉|r
>> 击杀|cRXP_ENEMY_加兹瑞拉|r. 拾取|cRXP_LOOT_加兹瑞拉的鳞片|r
>>|cRXP_WARN_如果你的队伍中没人有|r|T133056:0|t[祖尔法拉克之槌]|cRXP_WARN_你们就不能召唤|r|cRXP_ENEMY_加兹瑞拉|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
step
.dungeon ZF
>> 击杀|cRXP_ENEMY_巨魔|r. 拾取他们的|cRXP_LOOT_巨魔调和剂|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith ZFTurnIn
.hs >> 炉石回加基森
step
.dungeon ZF
.isQuestComplete 3042
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 ,, Troll Temper
.target Trenton Lighthammer
step
.dungeon ZF
.isQuestComplete 2768
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_首席工程师膨啸|r
.turnin 2768 ,, Divino-matic Rod
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.isQuestComplete 2865
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 ,, Scarab Shells
.target Tran'rek
step
.dungeon ZF
.isQuestComplete 3527
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 3527 ,, The Prophecy of Mosh'aru

.target Yeh'kinya
step
.dungeon ZF
#completewith ZFTurnIn
.goto Thousand Needles,77.782,77.263
.subzone 2240 >> 前往沙漠赛道
step
.dungeon ZF
.isQuestComplete 2770
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 2770 ,, Gahz'rilla
.target Wizzle Brassbolts
step
.dungeon ZF
.abandon 2770 ,, Gahz'rilla
step 
#label ZFTurnIn
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奎恩丁|r
.accept 3843 ,, The Newest Member of the Family
.isQuestTurnedIn 3842
.target Quentin
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 9328 >> 从银行取出下列物品:
>>|T134442:0|t[超级摄影器FX] 
.target Gimblethorn
step
.isQuestTurnedIn 1118
.goto Tanaris,52.297,28.915
.itemcount 5807,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 5807 >>将以下物品存入银行:
>>|T133471:0|t[蠢人酒试验报告] 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Theramore >> 飞往塞拉摩
.target Bera Stonehammer
.isOnQuest 4450,625
step
.group
.isOnQuest 625 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板詹妮|r
.goto Dustwallow Marsh,66.587,45.223
.home >> 绑定炉石到塞拉摩
.target Innkeeper Janene
step
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >> 游到山岭西边
step
.goto Dustwallow Marsh,54.079,55.897
>>打开|cRXP_PICK_破损的箱子|r. 拾取|cRXP_LOOT_延误的包裹|r
.complete 4450,3 
step
.dungeon ZF
.isQuestComplete 2991
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔贝萨|r
.turnin 2846 ,, Tiara of the Deep
.target Tabetha
step
.group
.goto Dustwallow Marsh,31.098,66.145
>>点击石头上的|cRXP_PICK_发霉的卷轴|r
.turnin 625 ,, Cortello's Riddle
.accept 626 ,, Cortello's Riddle
.isQuestTurnedIn 624
step
.group
.isOnQuest 626
#completewith next
.goto Dustwallow Marsh,30.970,65.965,-1
.goto 1414,53.26,71.18,-1
+|cRXP_WARN_在蘑菇上小退以传送到剃刀高地入口处然后进入剃刀高地|r
.link /run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_一旦你进入剃刀高地就点击此处复制粘贴这个宏命令以自动炉石回塞拉摩岛|r
.link https://www.youtube.com/watch?v=rOxk6Y1-pBM >> |cRXP_WARN_点击此处查看视频参考|r
>>如果你不会就跑回塞拉摩岛
step
.goto Dustwallow Marsh,67.476,51.300
.subzone 513 >> 前往塞拉摩岛
.isOnQuest 4450,626
step
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> 乘船前往米奈希尔港
.zoneskip The Hinterlands
step
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Hinterlands >> 飞往辛特兰
.target Shellei Brondir
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗拉加尔|r
.accept 2877 ,, Skulk Rock Clean-up
.target Fraggar Thundermantle
step
.goto The Hinterlands,13.81,42.67,20,0
.goto The Hinterlands,14.33,41.18,20,0
.goto The Hinterlands,13.644,41.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板苏弗拉姆|r
>>|cRXP_FRIENDLY_旅店老板苏弗拉姆|r|cRXP_WARN_在楼上巡逻|r
.home Aerie Peak >> 绑定炉石到鹰巢山
.target Innkeeper Thulfram
step
.goto The Hinterlands,14.154,43.623
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿格纳|r
>>|cRXP_FRIENDLY_阿格纳|r|cRXP_WARN_在城堡下层|r
.turnin 3843 ,, The Newest Member of the Family
.accept 4297 ,, Food for Baby
.isQuestTurnedIn 3842
.target Agnar Beastamer
step
#completewith next
.goto The Hinterlands,46.56,40.60
.subzone 1884 >> 前往亚戈瓦萨
step
.goto The Hinterlands,46.56,40.60,60,0
.goto The Hinterlands,46.24,39.85,60,0
.goto The Hinterlands,57.65,42.83
>> 击杀|cRXP_ENEMY_绿色淤泥怪|r和|cRXP_ENEMY_玉石软泥怪|r
.complete 2877,1 
.complete 2877,2 
.mob Green Sludge
.mob Jade Ooze
step
.isOnQuest 4297
.goto The Hinterlands,58.8,49.0,80,0
.goto The Hinterlands,71.6,53.0,80,0
.goto The Hinterlands,69.6,62.4,80,0
.goto The Hinterlands,59.6,51.6,80,0
.goto The Hinterlands,69.8,56.2
>> 击杀|cRXP_ENEMY_银鬃捕猎者|r. 拾取他们的|cRXP_LOOT_银鬃捕猎者的肉|r
>>|cRXP_WARN_|cRXP_ENEMY_银鬃捕猎者|r处于|r|T132320:0|t[潜行]状态
.complete 4297,1 
.mob Silvermane Stalker
step
.goto The Hinterlands,45.61,68.92,75,0
.goto The Hinterlands,44.08,65.22,75,0
.goto The Hinterlands,48.08,62.18,75,0
.goto The Hinterlands,50.40,63.79,75,0
.goto The Hinterlands,47.20,65.95
>> 击杀|cRXP_ENEMY_邪枝部族巨魔|r. 拾取|T132836:0|t[|cRXP_LOOT_定位器OOX-09/HL|r]
.use 8704 >>|cRXP_WARN_使用|T132836:0|t[|cRXP_LOOT_定位器OOX-09/HL|r]并接受任务|r
>>|cRXP_WARN_如果你时运不济一直没有打到它就跳过此步. 尽管如此也建议你一直刷到它为止|r
.collect 8704,1,485,1 
.accept 485 ,, Find OOX-09/HL!
.mob Vilebranch Axe Thrower
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
.mob Vilebranch Wolf Pup
step
.isOnQuest 485
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
>>|cRXP_WARN_除非你在队伍中否则不要接受后续护送任务|r
.turnin 485 ,, Find OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.isQuestTurnedIn 485
.group 2
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 836 ,, Rescue OOX-09/HL!
.target Homing Robot OOX-09/HL
step
.isOnQuest 836
.group 2
.goto The Hinterlands,72.46,66.16,40,0
.goto The Hinterlands,76.22,61.81,45,0
.goto The Hinterlands,79.33,61.26
>> 护送|cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r到安全区域
.complete 836,1 
.target Homing Robot OOX-22/FE
step
#completewith next
>> 拾取地上的|cRXP_LOOT_紫葡萄酒|r
.complete 580,1 
step
.line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64
.goto The Hinterlands,81.95,49.41,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,81.98,54.30,70,0
.goto The Hinterlands,81.97,56.42,70,0
.goto The Hinterlands,80.77,58.37,70,0
.goto The Hinterlands,80.34,59.40,70,0
.goto The Hinterlands,79.45,60.76,70,0
.goto The Hinterlands,78.69,61.39,70,0
.goto The Hinterlands,76.86,62.73,70,0
.goto The Hinterlands,75.91,63.81,70,0
.goto The Hinterlands,75.29,65.60,70,0
.goto The Hinterlands,76.72,66.85,70,0
.goto The Hinterlands,78.53,67.51,70,0
.goto The Hinterlands,78.60,68.97,70,0
.goto The Hinterlands,77.90,70.97,70,0
.goto The Hinterlands,76.71,71.26,70,0
.goto The Hinterlands,76.52,72.95,70,0
.goto The Hinterlands,77.07,74.64,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,75.91,63.81
.use 9328 >> |cRXP_WARN_对|r|cRXP_ENEMY_加莫里塔|r|cRXP_WARN_使用|r|T134442:0|t[超级摄影器FX]
>>|cRXP_WARN_这会让|cRXP_ENEMY_加莫里塔|r开始攻击你. 做好照相后逃跑的准备|r
.complete 2944,1 
.unitscan Gammerita
step
.goto The Hinterlands,81.7,49.3,70,0
.goto The Hinterlands,79.3,60.5,70,0
.goto The Hinterlands,77.5,70.3,70,0
.goto The Hinterlands,75.7,64.5,70,0
.goto The Hinterlands,81.9,52.9,70,0
.goto The Hinterlands,77.9,65.5
>> 拾取地上的|cRXP_LOOT_紫葡萄酒|r
.complete 580,1 
step
.group
.goto The Hinterlands,80.78,46.82
>>点击水下的|cRXP_PICK_科泰罗的宝藏|r
.turnin 626 ,, Cortello's Riddle
.isOnQuest 626
step
#completewith SkullRock
.goto The Hinterlands,47.20,65.95
.hs >> 炉石回鹰巢山
>>一直刷怪直到炉石CD好了
.cooldown item,6948,<0
step
#completewith SkullRock
.hs >> 炉石回鹰巢山
.cooldown item,6948,>0,1
step
.goto The Hinterlands,14.154,43.623
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿格纳|r
>>|cRXP_FRIENDLY_阿格纳|r|cRXP_WARN_在城堡下层|r
.turnin 4297 ,, Food for Baby
.accept 4298 ,, Becoming a Parent
.turnin 4298 ,, Becoming a Parent
.isQuestTurnedIn 3842
.target Agnar Beastamer
step
#label SkullRock
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗拉加尔|r
.target Fraggar Thundermantle
.turnin 2877 ,, Skulk Rock Clean-up
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fly Wetlands >> 飞往湿地
.target Guthrum Thunderfist
.zoneskip The Hinterlands,1
step 
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板赫布瑞克|r
.home >> 绑定炉石到湿地
.target Innkeeper Helbrek
step
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 3900,9328,9330,11724 >>将以下物品存入银行:
>>|T132796:0|t[紫葡萄酒] 
>>|T134442:0|t[超级摄影器FX] 
>>|T134300:0|t[加莫里塔的照片] 
>>|T132766:0|t[延误的包裹] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 10443 >> 从银行取出以下物品:
>>|T133471:0|t[烧焦的信件] (如果有的话) 
.target Bailey Stonemantle
step
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_索里奥斯馆长|r|cRXP_WARN_在整个探险者大厅巡逻|r
.turnin 3368 ,, Suntara Stones
.accept 3371 ,, Dwarven Justice
.target Curator Thorius
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Searing Gorge >> 飞往灼热峡谷
.target Gryth Thurden
.zoneskip Searing Gorge
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 40-50 (汉化By猎風)
#classic
<< Alliance
#name 49-50 灼热峡谷
#next 50-51 塔纳利斯/安戈洛环形山
step
.group
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大铁匠博恩奈特|r
.accept 7722 ,, What the Flux?
.target Master Smith Burninate
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉瑟尔·重拳|r
.accept 7723 ,, Curse These Fat Fingers
.accept 7724 ,, Fiery Menace!
.accept 7727 ,, Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.solo
.goto Searing Gorge,37.645,26.481
>>点击|cRXP_PICK_通缉告示|r
.accept 7728 ,, STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 ,, JOB OPPORTUNITY: Culling the Competition
step
.group
.goto Searing Gorge,37.645,26.481
>>点击|cRXP_PICK_通缉告示|r
.accept 7728 ,, STOLEN: Smithing Tuyere and Lookout's Spyglass
.accept 7729 ,, JOB OPPORTUNITY: Culling the Competition
.accept 7701 ,, WANTED: Overseer Maltorius
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.accept 3441 ,, Divine Retribution
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.skipgossip
.complete 3441,1 
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3441 ,, Divine Retribution
.accept 3442 ,, The Flawless Flame
.target Velarok Windblade
step
#completewith FlawlessFlame
>> 击杀|cRXP_ENEMY_重型战争魔像|r和|cRXP_ENEMY_巨型熔岩蜘蛛|r
.complete 7723,1 
.goto Searing Gorge,33.20,43.58,0
.complete 7724,1 
.goto Searing Gorge,27.56,45.45,0
.mob Heavy War Golem
.mob Greater Lava Spider
step
#completewith FlawlessFlame
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
#label FlawlessFlame
.goto Searing Gorge,43.83,35.08,0
.goto Searing Gorge,24.18,54.52,0
.goto Searing Gorge,28.54,64.55,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16
>> 击杀|cRXP_ENEMY_炼狱元素|r, |cRXP_ENEMY_炽热元素|r和|cRXP_ENEMY_熔岩元素|r. 拾取他们的|cRXP_LOOT_烈焰之心|r
>> 击杀|cRXP_ENEMY_重型战争魔像|r和|cRXP_ENEMY_熔岩元素|r. 拾取他们的|cRXP_LOOT_傀儡之油|r
>>|cRXP_WARN_优先完成这两个目标|r
.complete 3442,1 
.complete 3442,2 
.mob Inferno Elemental
.mob Blazing Elemental
.mob Magma Elemental
.mob Heavy War Golem
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3442 ,, The Flawless Flame
.accept 3443 ,, Forging the Shaft
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,47.54,46.89
.subzone 1443 >> 跳到下面的平台并进入洞穴. 跟随箭头
step
.goto Searing Gorge,46.66,42.48,40,0
.goto Searing Gorge,51.67,37.02,40,0
.goto Searing Gorge,45.41,21.65
>> 击杀|cRXP_ENEMY_熏火龙|r
.complete 7727,1 
.mob Incendosaur
step
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >> 原路跑出洞穴然后沿着道路进入上层洞穴
.isOnQuest 7729,3443,7722,7701
step
.group 4
.isOnQuest 7722,7701
#completewith next
>> 击杀|cRXP_ENEMY_监督者玛托留斯|r. 拾取他的|cRXP_LOOT_头颅|r
>> 拾取长凳上的|cRXP_LOOT_秘密设计图：炽热助熔剂|r
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.mob Overseer Maltorius
step
.goto Searing Gorge,43.18,35.09,60,0
.goto Searing Gorge,43.54,31.51,60,0
.goto Searing Gorge,45.81,25.66,60,0
.goto Searing Gorge,43.18,35.09
>> 击杀|cRXP_ENEMY_黑铁监工|r和|cRXP_ENEMY_黑铁奴隶|r. 拾取他们的|cRXP_LOOT_瑟银匕首|r和|T134246:0|t[|cRXP_LOOT_格里塞特厕所钥匙|r]
>>|cRXP_WARN_任意|cRXP_ENEMY_黑铁矮人|r都可能掉落|cRXP_LOOT_瑟银匕首|r和|r|T134246:0|t[|cRXP_LOOT_格里塞特厕所钥匙|r]
>>|cRXP_WARN_使用|T134246:0|t[|cRXP_LOOT_格里塞特厕所钥匙|r]并接受任务|r
.complete 7729,1 
.complete 7729,2 
.complete 3443,1 
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 ,, The Key to Freedom
.use 11818 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
.group 4
.isOnQuest 7722,7701
>> 击杀|cRXP_ENEMY_监督者玛托留斯|r. 拾取他的|cRXP_LOOT_头颅|r
>> 拾取长凳上的|cRXP_LOOT_秘密设计图：炽热助熔剂|r
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.mob Overseer Maltorius
step
.solo
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_濒死的考古学家|r
.turnin 3371 ,, Dwarven Justice
.target Dying Archaeologist
step
.group
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_濒死的考古学家|r
.turnin 3371 ,, Dwarven Justice
.accept 3372 ,, Release Them
.target Dying Archaeologist
step
#completewith next
+登出跳过以快速离开洞穴. 这里有多处地点可以利用
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_点击此处查看视频参考|r
step
.solo
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3443 ,, Forging the Shaft
.target Velarok Windblade
step
.group
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3443 ,, Forging the Shaft
.accept 3452 ,, The Flame's Casing
.target Velarok Windblade
step
.group 3
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>> 击杀|cRXP_ENEMY_暮光黑暗萨满|r, |cRXP_ENEMY_暮光火焰卫士|r, |cRXP_ENEMY_暮光地卜师|r和|cRXP_ENEMY_暮光崇拜者|r. 拾取|cRXP_LOOT_拉格纳罗斯符记|r
>>|cRXP_WARN_如果你现在无法完成此步就先跳过|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.group
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3452 ,, The Flame's Casing
.accept 3453 ,, The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 ,, The Torch of Retribution
.accept 3454 ,, The Torch of Retribution
.target Velarok Windblade
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.accept 3453 ,, The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 ,, The Torch of Retribution
.accept 3454 ,, The Torch of Retribution
.target Velarok Windblade
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>点击|cRXP_PICK_惩戒火炬|r
.turnin 3454 ,, The Torch of Retribution
step
.group
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r和|cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3462 ,, Squire Maltrake
.goto Searing Gorge,39.057,38.990
.turnin 3462 ,, Squire Maltrake
.accept 3463 ,, Set Them Ablaze!
.goto Searing Gorge,39.165,38.997
.target Velarok Windblade
.target Squire Maltrake
step
#completewith WarGolem
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
#completewith next
>> 击杀|cRXP_ENEMY_重型战争魔像|r
.complete 7723,1 
.goto Searing Gorge,33.20,43.58,0
.mob Heavy War Golem
step
>> 击杀|cRXP_ENEMY_巨型熔岩蜘蛛|r
.complete 7724,1 
.goto Searing Gorge,32.05,42.00,70,0
.goto Searing Gorge,27.4,45.6,70,0
.goto Searing Gorge,28.4,56.6,70,0
.goto Searing Gorge,30.90,66.71,70,0
.goto Searing Gorge,22.86,76.47,70,0
.goto Searing Gorge,27.56,45.45
.mob Greater Lava Spider
step
#label WarGolem
>> 击杀|cRXP_ENEMY_重型战争魔像|r
.complete 7723,1 
.goto Searing Gorge,50.6,39.6,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,32.8,45.8,70,0
.goto Searing Gorge,32.4,53.6,70,0
.goto Searing Gorge,35.6,40.4,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,33.20,43.58
.mob Heavy War Golem
step
.solo
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,40,0
.goto Searing Gorge,43.33,51.12,40,0
.goto Searing Gorge,40.42,49.93
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,33.303,54.477,50,0
.goto Searing Gorge,35.667,60.682,50,0
.goto Searing Gorge,44.030,60.908,50,0
.goto Searing Gorge,50.069,54.737
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
.group
#completewith next
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
.group
.isQuestTurnedIn 3452
>>点击塔顶的|cRXP_PICK_岗哨火盆|r
>>|cRXP_WARN_你必须装备惩戒火炬|r|T135466:0|t[惩戒火炬]|cRXP_WARN_才能完成|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
.goto Searing Gorge,54.553,50.414
>> 点击|cRXP_PICK_烧焦的橡木|r. 拾取|cRXP_LOOT_一捆烧焦的橡木|r
.complete 53,1 
.isQuestTurnedIn 50
step
.goto Searing Gorge,65.592,62.172
>>点击|cRXP_PICK_木制厕所|r
.accept 4451 ,, The Key to Freedom
.turnin 4451 ,, The Key to Freedom
.use 11818 
.itemcount 11818,1 
step
.group 2
.goto Searing Gorge,71.92,73.79,50,0
.goto Searing Gorge,72.64,79.74
>> 击杀|cRXP_ENEMY_狂暴的玛尔戈|r. 拾取|T134229:0|t[|cRXP_LOOT_玛尔戈的角|r]
.use 10000 >>|cRXP_WARN_使用|T134229:0|t[|cRXP_LOOT_玛尔戈的角|r]并接受任务|r
.collect 10000,1,3181,1 
.accept 3181 ,, The Horn of the Beast
.mob Margol the Rager
step
>> 击杀|cRXP_ENEMY_黑铁锻造师|r. 拾取|cRXP_LOOT_冶炼鼓风机|r
>> 击杀|cRXP_ENEMY_黑铁监视者|r. 拾取|cRXP_LOOT_侦查员的望远镜|r
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,40,0
.goto Searing Gorge,43.33,51.12,40,0
.goto Searing Gorge,40.42,49.93
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,33.303,54.477,50,0
.goto Searing Gorge,35.667,60.682,50,0
.goto Searing Gorge,44.030,60.908,50,0
.goto Searing Gorge,50.069,54.737
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_侍卫玛特拉克|r
.turnin 3463 ,, Set Them Ablaze!
.target Squire Maltrake
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>点击地上的|cRXP_PICK_黑龙军团宝箱|r
.accept 3481 ,, Trinkets...
.turnin 3481 ,, Trinkets...
step
.group
.isQuestTurnedIn 3452
#completewith TPturnins
.use 10569 >>|cRXP_WARN_打开|r|T132595:0|t[黑龙军团宝箱]
+|cRXP_WARN_一定要保存好|r|T134430:0|t[黑龙皮]|cRXP_WARN_. 不要把它摧毁了. 后续会有任务用到它|r
step
.isQuestComplete 7701
.goto Searing Gorge,37.737,26.561
>>对话|cRXP_FRIENDLY_侦察队长洛洛尔|r
.turnin 7701 ,, WANTED: Overseer Maltorius
.target Lookout Captain Lolo Longstriker
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_汉瑟尔·重拳|r
.turnin 7723 ,, Curse These Fat Fingers
.turnin 7724 ,, Fiery Menace!
.turnin 7727 ,, Incendosaurs? Whateverosaur is More Like It
.target Hansel Heavyhands
step
.isQuestComplete 7722
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大铁匠博恩奈特|r
.turnin 7722 ,, What the Flux?
.target Master Smith Burninate
step
#label TPturnins
.goto Searing Gorge,38.973,27.505
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7729 ,, JOB OPPORTUNITY: Culling the Competition
.turnin 7728 ,, STOLEN: Smithing Tuyere and Lookout's Spyglass
.target Taskmaster Scrange
step
.isOnQuest 3181
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰尼·瑞德|r
.fly Loch Modan>> 飞往洛克莫丹
.target Lanie Reed
step
.abandon 7701 ,, WANTED: Overseer Maltorius
.abandon 7722 ,, What the Flux?
.abandon 3452 ,, The Flame's Casing
step
.isOnQuest 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人贝波蒂|r
.turnin 3181 ,, The Horn of the Beast
.target Mountaineer Pebblebitty
step
.isQuestTurnedIn 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人贝波蒂|r
.accept 3182 ,, Proof of Deed
.target Mountaineer Pebblebitty
step << !Mage
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Ironforge >> 飞往铁炉堡
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step << Mage
#completewith next
.zone Ironforge >>传送到铁炉堡
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁克|r
.trainer >> 学习职业技能
.target Dink
step << Mage
#completewith SWH
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_金妮·长莓|r
.vendor >> |cRXP_BUY_购买10个|r|T134419:0|t[传送符文]
.collect 17031,10 
.target Ginny Longberry
step << !Mage
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰尼·瑞德|r
.fly Ironforge >> 飞往铁炉堡
.zoneskip Searing Gorge,1
.target Lanie Reed
step << !Druid !Hunter !Warrior !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> 学习职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> 学习职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step
.isQuestTurnedIn 3181
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_索里奥斯馆长|r|cRXP_WARN_在整个探险者大厅巡逻|r
.turnin 3182 ,, Proof of Deed
.accept 3201 ,, At Last!
.target Curator Thorius
step
.isQuestTurnedIn 2963
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_历史学家卡尼克|r
.accept 2946 ,, Seeing What Happens
.target Historian Karnik
step
.isOnQuest 3201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >> 飞往洛克莫丹
.zoneskip Ironforge,1
.target Gryth Thurden
step
.isOnQuest 3201
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巡山人贝波蒂|r
.turnin 3201 ,, At Last!
.target Mountaineer Pebblebitty
step
.isOnQuest 53
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Westfall >> 飞往西部荒野
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step
.isOnQuest 53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Westfall >> 飞往西部荒野
.zoneskip Ironforge,1
.target Gryth Thurden
step
.goto Westfall,44.620,80.254
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛林布兹·雷酒|r
.turnin 53 ,, Sweet Amber
.isOnQuest 53
.target Grimbooze Thunderbrew
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step
.group
.isQuestTurnedIn 3463
.destroy 10515 >> 摧毁|T135466:0|t[惩戒火炬]. 你不需要它了
step
#label SWH
#completewith next
.hs >> 炉石回米奈希尔港
step
#completewith next
.goto Wetlands,7.270,62.527,25 >> 前往米奈希尔港码头
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> 乘船前往塞拉摩
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Tanaris >> 飞往塔纳利斯
.target Baldruc
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 50-51 塔纳利斯/安戈洛环形山
#next 51-52 诅咒之地
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马林·诺格弗格|r
.accept 2605 ,, The Thirsty Goblin
.target Marin Noggenfogger
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 11727,11725,11724,11723,8623 >> 从银行取出下列物品:
>>|T133741:0|t[古德斯迪尔的账本] 
>>|T134321:0|t[水晶蜘蛛腿] 
>>|T132766:0|t[延误的包裹] 
>>|T135272:0|t[古德斯迪尔的长剑] 
>>|T132836:0|t[定位器OOX-17/TN] (如果有的话) 
.target Gimblethorn
step
.isQuestTurnedIn 3481
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 10575 >>将以下物品存入银行:
>>|T134430:0|t[黑龙皮] (如果有的话) 
.target Gimblethorn
step
.goto Tanaris,51.465,28.814
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 4450 ,, Ledger from Tanaris
.target Krinkle Goodsteel
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >> 绑定炉石到加基森
.target Innkeeper Fizzgrimble
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 3362 ,, Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 10 ,, The Scrimshank Redemption
.target Senior Surveyor Fizzledowser
step
#completewith next
.goto Tanaris,54.63,70.75,20 >> 进入大裂口虫巢
step
.goto Tanaris,55.956,71.164
>> 拾取地上的|cRXP_LOOT_谢申克的勘探设备|r
>>|cRXP_WARN_|cRXP_LOOT_谢申克的勘探设备|r在虫巢内|r
.complete 10,1 
step
.goto Tanaris,60.235,64.714
.use 8623 >>|cRXP_WARN_使用|T132836:0|t[|cRXP_LOOT_定位器OOX-17/TN|r]并接受任务|r
>>|cRXP_WARN_如果你没有就跳过此步|r
.collect 8623,1,351,1 
.accept 351 ,, Find OOX-17/TN
.itemcount 8623,1
step
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
>>|cRXP_WARN_除非你在队伍中否则不要接受后续护送任务|r
.turnin 351 ,, Find OOX-17/TN!
.isOnQuest 351
.target Homing Robot OOX-17/TN
step
.group 2
.isQuestTurnedIn 351
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
.accept 648 ,, Rescue OOX-17/TN!
.target Homing Robot OOX-17/TN
step
.group 2
.isOnQuest 648
.goto Tanaris,66.99,23.14
>> 护送|cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r到安全区域
.complete 648,1 
.target Homing Robot OOX-17/TN
step
#completewith next
.isOnQuest 2946 
.goto Tanaris,39.231,80.091,20,0
.goto Tanaris,37.632,81.398,10 >> 走山路以避开精英|cRXP_ENEMY_沙丘重击者|r
step
.goto Tanaris,37.632,81.398
.isOnQuest 2946
>>点击|cRXP_PICK_奥丹姆石座|r
>>|cRXP_WARN_有一只巡逻的|cRXP_ENEMY_沙丘重击者|r. 确保你避开它. 其他的都是固定位置|r
.turnin 2946 ,, Seeing What Happens
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>点击|cRXP_PICK_奥丹姆石座|r
.accept 2954 ,, The Stone Watcher
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_诺甘农的石之看守者|r
>>|cRXP_WARN_有一只巡逻的|cRXP_ENEMY_沙丘重击者|r. 确保你避开它|r
.skipgossip 1
.target Stone Watcher of Norgannon
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>点击|cRXP_PICK_奥丹姆石座|r
.turnin 2954 ,, The Stone Watcher
.accept 2977 ,, Return to Ironforge
step
.isOnQuest 2605
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>> 击杀|cRXP_ENEMY_长瘤的灌木兽|r和|cRXP_ENEMY_灌木塑根者|r
>> 击杀|cRXP_ENEMY_灌木露水收集者|r. 拾取|cRXP_LOOT_饱满的露水腺|r
>>|cRXP_WARN_优先击杀|cRXP_ENEMY_灌木露水收集者|r, |cRXP_LOOT_饱满的露水腺|r掉率比较低|r
.complete 3362,1 
.complete 3362,2 
.complete 2605,1 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
.mob Thistleshrub Dew Collector
step
.isOnQuest 2605
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>> 击杀|cRXP_ENEMY_灌木露水收集者|r. 拾取|cRXP_LOOT_饱满的露水腺|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>> 击杀|cRXP_ENEMY_长瘤的灌木兽|r和|cRXP_ENEMY_灌木塑根者|r
.complete 3362,1 
.complete 3362,2 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper

step
.goto Tanaris,29.37,59.97,80,0
.goto Tanaris,28.70,67.32,80,0
.goto Tanaris,31.66,74.70
.goto Tanaris,29.37,59.97,0
.goto Tanaris,28.70,67.32,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_图加|r
>>|cRXP_WARN_这将开启护送任务|r
>>|cRXP_WARN_如果你到处都找不到|cRXP_FRIENDLY_图加|r也可以选择跳过此步|r
.accept 1560 ,, Tooga's Quest
.unitscan Tooga
step
.isOnQuest 1560
.goto Tanaris,66.571,25.632
>> 护送图加穿越塔纳利斯抵达热砂港
>>|cRXP_WARN_不要太过远离|cRXP_FRIENDLY_图加|r否则任务可能会失败!|r
.complete 1560,1 
.target Tooga
step
.isQuestComplete 1560
.goto Tanaris,66.571,25.632
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔塔|r
.turnin 1560 ,, Tooga's Quest
.target Torta
step
#completewith next
.goto Tanaris,26.98,56.09,0
.goto Tanaris,26.98,56.09,125,0
.goto Un'Goro Crater,71.63,75.95
.zone 1449 >> 前往安戈洛环形山
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4290 ,, The Fare of Lar'korwi
.target Torwa Pathfinder
step
#completewith CompleteCrystals
>> 在你在安戈洛环形山做任务时顺便拾取地上的|cRXP_LOOT_能量水晶|r
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith Soils
>> 在你在安戈洛环形山做任务时顺便拾取地上的|cRXP_LOOT_安戈洛的泥土|r
.collect 11018,25 
step
.goto Un'Goro Crater,63.02,68.60
>>点击|cRXP_PICK_破碎的木筏|r
.accept 3844 ,, It's a Secret to Everybody
step
.goto Un'Goro Crater,63.107,69.057
>>点击水下的|cRXP_PICK_小背包|r
.turnin 3844 ,, It's a Secret to Everybody
.accept 3845 ,, It's a Secret to Everybody
step
#label CompleteCrystals
.goto Un'Goro Crater,68.73,56.70
>> 拾取|cRXP_LOOT_蛇颈龙肉块|r
.complete 4290,1 
step
.goto Un'Goro Crater,45.41,12.13
>>前往马绍尔营地
>> 拾取沿途地上的|cRXP_LOOT_能量水晶|r
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith next
.goto Un'Goro Crater,45.41,12.13
.subzone 541 >> 前往马绍尔营地
step
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫尔金|r
.accept 4141 ,, Muigin and Larion
.target Muigin
step
.goto Un'Goro Crater,44.658,8.098
.use 11107 >> |cRXP_WARN_打开|r|T133653:0|t[小背包]
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
.isOnQuest 3845
step
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3845 ,, It's a Secret to Everybody
.accept 3908 ,, It's a Secret to Everybody
.target Linken
step
.destroy 11108 >> 摧毁|T134944:0|t[褪色的照片]
.destroy 3108 >> 摧毁|T135427:0|t[重型飞刀] << !Rogue
>>|cRXP_WARN_你不再需要这些东西了|r
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.accept 4284 ,, Crystals of Power
.turnin 4284 ,, Crystals of Power
.target J.D. Collie
step
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fp Un'Goro >> 开启安戈洛环形山飞行点
.target Gryfe
step
#completewith lashers
.goto Un'Goro Crater,67.6,32.6,0
>> 击杀|cRXP_ENEMY_血瓣花鞭笞者|r, |cRXP_ENEMY_血瓣花痛击者|r和|cRXP_ENEMY_血瓣花撕掠者|r. 拾取他们的|cRXP_LOOT_血瓣花|r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4290 ,, The Fare of Lar'korwi
.accept 4291 ,, The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727,8,0
.goto Un'Goro Crater,60.926,72.234,8,0
.goto Un'Goro Crater,62.285,65.985,8,0
.goto Un'Goro Crater,63.240,77.350,8,0
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727
.goto Un'Goro Crater,67.324,73.041,0
.goto Un'Goro Crater,60.926,72.234,0
.goto Un'Goro Crater,62.285,65.985,0
.goto Un'Goro Crater,63.240,77.350,0
>> 击杀|cRXP_ENEMY_拉克维的配偶|r. 拾取他们的|cRXP_LOOT_暴掠龙信息素|r
>>|cRXP_WARN_从地上的|cRXP_PICK_迅猛龙巢穴|r上走过会使1只|cRXP_ENEMY_拉克维的配偶|r刷新|r
.complete 4291,1 
.mob Lar'korwi Mate
step
#label lashers
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4291 ,, The Scent of Lar'korwi
.target Torwa Pathfinder
step
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6,80,0
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6
>> 击杀|cRXP_ENEMY_血瓣花鞭笞者|r, |cRXP_ENEMY_血瓣花痛击者|r和|cRXP_ENEMY_血瓣花撕掠者|r. 拾取他们的|cRXP_LOOT_血瓣花|r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
step
#label Soils
>> 击杀|cRXP_ENEMY_暴掠龙|r. 拾取|T133743:0|t[被撕破的日记]
>>|cRXP_WARN_任意种类的安戈洛环形山的怪都可能掉落|r
>>|cRXP_WARN_使用|T133743:0|t[被撕破的日记]并接受任务|r
.collect 11116,1,3884,1 
.accept 3884 ,, Williden's Journal
.use 11116
step
.dungeon Mara
.goto Un'Goro Crater,63.04,66.10
>>刷|cRXP_ENEMY_迅猛龙|r直到你找到前往玛拉顿的副本队伍
>>|cRXP_WARN_一旦你的队伍开始组人就炉石回加基森交几个任务, 然后飞往凄凉之地. 你需要在前往玛拉顿之前完成几个凄凉之地的任务|r
.hs >> 炉石回加基森
step
#completewith next
.hs >> 炉石回加基森
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马林·诺格弗格|r
.turnin 2605 ,, The Thirsty Goblin
.accept 2606 ,, In Good Taste
.target Marin Noggenfogger
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 10 ,, The Scrimshank Redemption
.accept 110 ,, Insect Part Analysis
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 110 ,, Insect Part Analysis
.accept 113 ,, Insect Part Analysis
.target Alchemist Pestlezugg
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普琳科|r
.turnin 2606 ,, In Good Taste
.accept 2641 ,, Sprinkle's Secret Ingredient
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 3362 ,, Thistleshrub Valley
.target Tran'rek
step
.goto Tanaris,50.210,27.483
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 113 ,, Insect Part Analysis
.accept 162 ,, Rise of the Silithid
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 2799,5807,3900 >> 从银行取出下列物品:
>>|T134298:0|t[猩猩牙] (如果你有的话) 
>>|T133471:0|t[蠢人酒试验报告] 
>>|T132796:0|t[紫葡萄酒] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 11018,11133,8594 >>将以下物品存入银行:
>>|T133849:0|t[安戈洛的泥土] 
>>|T135357:0|t[林克的训练之剑] 
>>|T134331:0|t[昆虫分析报告] 
.target Gimblethorn
step
.dungeon Mara
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Desolace >> 飞往凄凉之地
.zoneskip Tanaris,1
.target Bera Stonehammer
step
.dungeon Mara
.goto Desolace,64.64,9.25,15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者玛兰迪斯|r
.accept 7065 ,, Corruption of Earth and Seed
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板利莎瑞亚|r
.home >> 绑定炉石到凄凉之地
.target Innkeeper Lyshaerya
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔琳德莉亚|r
.accept 7041 ,, Vyletongue Corruption
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维洛|r
.accept 7028 ,, Twisted Evils
.target Willow
step
.dungeon Mara
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_半人马贱民|r
>>|cRXP_WARN_|cRXP_FRIENDLY_半人马贱民|r在南凄凉之地小范围巡逻|r
.accept 7067 ,, The Pariah's Instructions
.target Centaur Pariah
step
.dungeon Mara
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >> 前往玛拉顿
step
.dungeon Mara
#completewith EnterMaraudon
>>击杀所有玛拉顿内的|cRXP_ENEMY_怪物|r. 拾取他们的|cRXP_LOOT_瑟莱德丝水晶雕像|r
>>|cRXP_WARN_此任务在副本内外都可以完成. 不要尝试现在就完成它|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
>> 击杀|cRXP_ENEMY_无名预言者|r. 拾取|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>>|cRXP_WARN_此任务需在副本外完成. |cRXP_ENEMY_无名预言者|r可能会巡逻|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
step << skip 
.dungeon Mara
#completewith next
>> 击杀|cRXP_ENEMY_裂影击碎者|r和|cRXP_ENEMY_裂影巡游者|r. 拾取他们的|cRXP_LOOT_暗影残片|r
>>|cRXP_WARN_此任务只能在副本紫门外完成|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>>|cRXP_WARN_对|r|cRXP_FRIENDLY_吉尔克之灵|r|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>> 击杀|cRXP_ENEMY_吉尔克|r. 拾取|T134104:0|t[|cRXP_LOOT_第二可汗的宝石|r]
>>|cRXP_WARN_此任务需在副本外完成|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
step << skip 
.dungeon Mara
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>> 击杀|cRXP_ENEMY_裂影击碎者|r和|cRXP_ENEMY_裂影巡游者|r. 拾取他们的|cRXP_LOOT_暗影残片|r
>>|cRXP_WARN_此任务只能在副本紫门外完成|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.497,57.721
>>|cRXP_WARN_对|r|cRXP_FRIENDLY_科尔克之灵|r|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]
>> 击杀|cRXP_ENEMY_科尔克|r. 拾取|T134129:0|t[|cRXP_LOOT_第一可汗的宝石|r]
>>|cRXP_WARN_此任务需在副本外完成|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
step
.dungeon Mara
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_半人马贱民|r
.accept 7044 ,, Legends of Maraudon
.target Cavindra
step
.dungeon Mara
.goto 1414,38.928,58.354
>>|cRXP_WARN_在橙色水池中|r|cRXP_WARN_使用|r|T134865:0|t[天蓝水瓶]
.complete 7041,2 
.use 17693 
.isOnQuest 7041
step
.dungeon Mara
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]|cRXP_WARN_对|r|cRXP_FRIENDLY_玛格拉之灵|r
>> 击杀|cRXP_ENEMY_玛格拉|r. 拾取|T134135:0|t[|cRXP_LOOT_第三可汗的宝石|r]
>>|cRXP_WARN_此任务需在副本外完成|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
step
.dungeon Mara
#label EnterMaraudon
.goto 1414,39.266,58.205
.subzone 2100,2 >> 从橙门进入玛拉顿
step
.dungeon Mara
#completewith CrystalCarving
>>击杀所有玛拉顿内的|cRXP_ENEMY_怪物|r. 拾取他们的|cRXP_LOOT_瑟莱德丝水晶雕像|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
#completewith next
>>|cRXP_WARN_在橙门内的小花/植物上使用|r|T134804:0|t[装满水的天蓝水瓶]
>>击杀召唤出来的|cRXP_ENEMY_诺克赛恩幼体|r
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]|cRXP_WARN_对|r|cRXP_FRIENDLY_温格之灵|r
>> 击杀|cRXP_ENEMY_温格|r. 拾取|T134116:0|t[|cRXP_LOOT_第五可汗的宝石|r]
>>|cRXP_ENEMY_温格|r|cRXP_WARN_在玛拉顿橙门内巡逻|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_在橙门内的小花/植物上使用|r|T134804:0|t[装满水的天蓝水瓶]
>>击杀召唤出来的|cRXP_ENEMY_诺克赛恩幼体|r
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>> 击杀|cRXP_ENEMY_诺克赛恩|r. 拾取|cRXP_LOOT_塞雷布拉斯魔棒|r
>> 击杀|cRXP_ENEMY_维利塔恩领主|r. 拾取|cRXP_LOOT_塞雷布拉斯钻石|r
>>|cRXP_ENEMY_诺克赛恩|r|cRXP_WARN_在橙门里, |cRXP_ENEMY_维利塔恩领主|r在紫门里|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
step
.dungeon Mara
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵魂坠饰|r]|cRXP_WARN_on the|r|cRXP_FRIENDLY_玛劳杜斯之灵|r
>> 击杀|cRXP_ENEMY_玛劳杜斯|r. 拾取|T134132:0|t[|cRXP_LOOT_第四可汗的宝石|r]
>>|cRXP_ENEMY_玛劳杜斯|r|cRXP_WARN_在玛拉顿紫门内巡逻|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_使用任意|r|T134129:0|t|T134104:0|t|T134135:0|t|T134132:0|t|T134116:0|t[|cRXP_LOOT_可汗宝石|r]|cRXP_WARN_以制造|r|T133277:0|t[|cRXP_LOOT_联合坠饰|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
step
.dungeon Mara
>> 击杀|cRXP_ENEMY_被诅咒的塞雷布拉斯|r然后跟|cRXP_FRIENDLY_赎罪的塞雷布拉斯|r对话
.turnin 7044 ,, Legends of Maraudon
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.accept 7046 ,, The Scepter of Celebras
.timer 14,Incantation of Celebras Spawning RP
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
.cast 6477 >> 点击地上的|cRXP_PICK_塞雷布拉斯的咒语|r
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|cRXP_WARN_等待剧情结束|r
.complete 7046,1 
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.turnin 7046 ,, The Scepter of Celebras
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
>> 击杀|cRXP_ENEMY_瑟莱德丝公主|r
.complete 7065,1 
.mob Princess Theradras
.isOnQuest 7065
step
.dungeon Mara
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_札尔塔的灵魂|r
.accept 7066 ,, Seed of Life
.target Zaetar's Spirit
step
.dungeon Mara
>>击杀所有玛拉顿内的|cRXP_ENEMY_怪物|r. 拾取他们的|cRXP_LOOT_瑟莱德丝水晶雕像|r
>>|cRXP_WARN_此任务在副本内外都可以完成|r
.complete 7028,1 
.isOnQuest 7028
step << Druid
.dungeon Mara
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
.dungeon Mara
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step << Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 ,, Seed of Life
.target Keeper Remulos
step
.dungeon Mara
.hs >> 炉石回尼耶尔前哨站
step
.dungeon Mara
.goto Desolace,64.64,9.15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者玛兰迪斯|r
.turnin 7065 ,, Corruption of Earth and Seed
.target Keeper Marandis
.isQuestComplete 7065
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔琳德莉亚|r
.turnin 7041 ,, Vyletongue Corruption
.target Talendria
.isQuestComplete 7041
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维洛|r
.turnin 7028 ,, Twisted Evils
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_半人马贱民|r
>>|cRXP_WARN_|cRXP_FRIENDLY_半人马贱民|r在南凄凉之地小范围巡逻|r
.turnin 7067 ,, The Pariah's Instructions
.target Centaur Pariah
.isQuestComplete 7067
step
.dungeon Mara
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴瑞特纳斯·天河|r
.fly Un'Goro Crater >> 飞往安戈洛环形山
.target Baritanas Skyriver
.zoneskip Desolace,1
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro Crater >> 飞往安戈洛环形山
.zoneskip Tanaris,1
.target Bera Stonehammer
step
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威利德·马绍尔|r
.collect 11116,1,3884,1 
.accept 3884 ,, Williden's Journal
.turnin 3884 ,, Williden's Journal
.use 11116
.target Williden Marshal
step
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莫尔金|r
.turnin 4141 ,, Muigin and Larion
.accept 4142 ,, A Visit to Gregan
.target Muigin
step
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Ratchet >> 飞往棘齿城
.zoneskip Un'Goro Crater,1
.target Gryfe
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往藏宝海湾
step
.group
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.accept 8551 ,, The Captain's Chest
step
.group
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬·菲兹拉克|r
.accept 348 ,, Stranglethorn Fever
.target Fin Fizracket
step
.goto Stranglethorn Vale,27.135,77.451
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威士忌·狡黠|r
.turnin 580 ,, Whiskey Slim's Lost Grogstep
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1122 ,, Report Back to Fizzlebub
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_掘金者维兹尼克|r和|cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 11316 >>将以下物品存入银行:
>>|T133941:0|t[血瓣花] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 ,, Rescue OOX-22/FE!
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 ,, Rescue OOX-17/TN!
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 836 ,, Rescue OOX-09/HL!
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.accept 3721 ,, An OOX of Your Own
.turnin 3721 ,, An OOX of Your Own
.isQuestTurnedIn 836
.isQuestTurnedIn 648
.isQuestTurnedIn 2767
step
.group 3
.goto Stranglethorn Vale,23.24,71.92
>> 击杀|cRXP_ENEMY_摩卡什|r. 拾取|T133694:0|t[|cRXP_LOOT_刺着字母的腰带|r]
>>|cRXP_WARN_使用|T133694:0|t[|cRXP_LOOT_刺着字母的腰带|r]并接受任务|r
>>|cRXP_WARN_如果需要可以围着巨型地精雕像风筝|cRXP_ENEMY_摩卡什|r|r
.collect 3985,1,8552,1 
.accept 8552 ,, The Monogrammed Sash
.link https://www.twitch.tv/videos/850022146?t=04h16m26s >> |cRXP_WARN_点击此处查看视频参考|r
.mob Mok'rash
step
.group 3
.goto Stranglethorn Vale,36.95,69.73
>> 击杀|cRXP_ENEMY_高拉什|r. 拾取|cRXP_LOOT_斯莫特的箱子|r
.complete 8551,1 
.mob Gorlash
step
.goto Stranglethorn Vale,32.38,82.23,0
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
.goto Stranglethorn Vale,36.29,83.22,60,0
.goto Stranglethorn Vale,36.69,77.51,60,0
.goto Stranglethorn Vale,41.59,76.88,60,0
.goto Stranglethorn Vale,35.28,72.67,60,0
.goto Stranglethorn Vale,37.08,68.55,60,0
.goto Stranglethorn Vale,37.23,65.05,60,0
.goto Stranglethorn Vale,38.66,61.78
>>沿着海岸打开|cRXP_PICK_半埋的瓶子|r. 拾取|T133469:0|t[|cRXP_LOOT_仔细折叠的便笺|r]
>>|cRXP_WARN_使用|T133469:0|t[|cRXP_LOOT_仔细折叠的便笺|r]并接受任务|r
.use 4098
.collect 4098,1,594,1 
.accept 594 ,, Message in a Bottle
step
#completewith next
.goto Stranglethorn Vale,37.02,81.53
.subzone 297 >> 前往哈圭罗岛
step
.goto Stranglethorn Vale,38.532,80.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普巴尔公主|r
>>|cRXP_WARN_小心! 岛上的|cRXP_ENEMY_丛林猎豹|r处于|r|T132320:0|t[潜行]|cRXP_WARN_状态|r
.turnin 594 ,, Message in a Bottle
.target Princess Poobah
step
.group
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普巴尔公主|r
.accept 630 ,, Message in a Bottle
step
.group 4
.goto Stranglethorn Vale,40.94,83.89
>> 击杀|cRXP_ENEMY_穆克拉|r. 拾取|cRXP_LOOT_镣铐钥匙|r
.complete 630,1 
.mob King Mukla
step
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普巴尔公主|r
.turnin 630 ,, Message in a Bottle
.isQuestComplete 630
step
.group 3
.goto Stranglethorn Vale,35.271,60.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医安巴格瓦|r
>>|cRXP_WARN_提交10个|r|T134298:0|t[猩猩牙]|cRXP_WARN_以召唤|r|cRXP_ENEMY_野蛮的莫克|r
>> 击杀|cRXP_ENEMY_野蛮的莫克|r. 拾取|cRXP_LOOT_莫克的心脏|r
>>|cRXP_WARN_你将处理3波|r|cRXP_ENEMY_猩猩|r
.complete 348,1 
.collect 2799,10 
.disablecheckbox
.link https://www.twitch.tv/videos/850022146?t=04h38m04s >> |cRXP_WARN_点击此处查看视频参考|r
.target Witch Doctor Unbagwa
.mob Mokk the Savage
step
#completewith ReturnBB
.goto Stranglethorn Vale,28.97,73.05,100 >> 前往藏宝海湾
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8551 ,, The Captain's Chest
.turnin 8552 ,, The Monogrammed Sash
.accept 615 ,, The Captain's Cutlass
.isQuestComplete 8551
.isQuestComplete 8552
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8551 ,, The Captain's Chest
.isQuestComplete 8551
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8552 ,, The Monogrammed Sash
.accept 615 ,, The Captain's Cutlass
.isQuestComplete 8552
step
.isQuestTurnedIn 8552
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r和|cRXP_FRIENDLY_斯普罗格|r
.accept 615 ,, The Captain's Cutlass
.goto Stranglethorn Vale,26.694,73.613
.turnin 615 ,, The Captain's Cutlass
.goto Stranglethorn Vale,26.655,73.642
.target Captain Hecklebury Smotts
.target Sprogger
step
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬·菲兹拉克|r
.turnin 348 ,, Stranglethorn Fever
.isQuestComplete 348
.target Fin Fizracket
step
.abandon 8551 ,, The Captain's Chest
step
.abandon 348 ,, Stranglethorn Fever
step
.abandon 630 ,, Message in a Bottle
step << !Mage
#label ReturnBB
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> 飞往暴风城
.zoneskip Stranglethorn Vale,1
.target Gyll
step << Mage
#label ReturnBB
#completewith next
.zone Stormwind City >> 传送到暴风城
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >> 学习职业技能
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.accept 8417 ,, A Troubled Spirit
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>进入已宰的羔羊并下楼
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Spackle Thornberry
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Blasted Lands>> 飞往诅咒之地
.target Dungar Longdrink
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 51-52 诅咒之地
#next 52-52 灼热峡谷/西瘟疫之地
step
.goto Blasted Lands,67.570,19.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_奥达兰大使|r对话
.accept 2783 ,, Petty Squabbles
.target Ambassador Ardalan
step
.dungeon ZF
.isQuestComplete 2991
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_萨迪斯·格希德|r对话
.turnin 2991 ,, Nekrum's Medallion
.accept 2992 ,, The Divination
.timer 11,The Divination RP
.turnin 2992 ,, The Divination
.accept 2993 ,, Return to the Hinterlands
.target Thadius Grimshade
step
.dungeon ZF
.isQuestTurnedIn 2991
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_萨迪斯·格希德|r对话
.accept 2992 ,, The Divination
.timer 11,The Divination RP
.turnin 2992 ,, The Divination
.accept 2993 ,, Return to the Hinterlands
.target Thadius Grimshade
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2783 ,, Petty Squabbles
.turnin 8417 ,, A Troubled Spirit << Warrior
.accept 2801 ,, A Tale of Sorrow
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.complete 2801,1 
.skipgossip
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2801 ,, A Tale of Sorrow
.target Fallen Hero of the Horde
step << Hunter/Rogue
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>> 击杀|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_蝎钳|r
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r
>> 击杀|cRXP_ENEMY_野猪|r. 拾取他们的|cRXP_LOOT_肺|r
>> 击杀|cRXP_ENEMY_蜥蜴|r. 拾取他们的|cRXP_LOOT_大脑|r
>> 击杀|cRXP_ENEMY_土狼|r. 拾取他们的|cRXP_LOOT_颚骨|r
>>|cRXP_WARN_优先击杀|cRXP_ENEMY_蝎子|r, |cRXP_ENEMY_秃鹫|r和|cRXP_ENEMY_野猪|r以获得25敏捷Buff|r
>>|cRXP_WARN_|cRXP_ENEMY_蜥蜴|r与|cRXP_ENEMY_野猪|r共享刷新, 而|cRXP_ENEMY_土狼|r与|cRXP_ENEMY_蝎子|r共享刷新|r
.collect 8393,3,2585,1 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8396,2,2585,1 
.goto Blasted Lands,55.14,36.37,0
.collect 8392,1,2585,1 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8394,11 
.disablecheckbox
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8391,5 
.disablecheckbox
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥达兰大使|r
.accept 2585 ,, The Decisive Striker
.turnin 2585 ,, The Decisive Striker
.target Bloodmage Drazial
step << Hunter/Rogue
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>> 击杀|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_蝎钳|r
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r
>> 击杀|cRXP_ENEMY_野猪|r. 拾取他们的|cRXP_LOOT_肺|r
>> 击杀|cRXP_ENEMY_蜥蜴|r. 拾取他们的|cRXP_LOOT_大脑|r
>> 击杀|cRXP_ENEMY_土狼|r. 拾取他们的|cRXP_LOOT_颚骨|r
>>|cRXP_WARN_|cRXP_ENEMY_蜥蜴|r与|cRXP_ENEMY_野猪|r共享刷新, 而|cRXP_ENEMY_土狼|r与|cRXP_ENEMY_蝎子|r共享刷新|r
.collect 8393,3 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8396,12 
.goto Blasted Lands,55.14,36.37,0
.collect 8392,5 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8394,11 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8391,5 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师莱诺雷|r和|cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2601 ,, The Basilisk's Bite
.turnin 2601 ,, The Basilisk's Bite
.accept 2603 ,, Vulture's Vigor
.turnin 2603 ,, Vulture's Vigor
.goto Blasted Lands,50.640,14.299
.accept 2585 ,, The Decisive Striker
.turnin 2585 ,, The Decisive Striker
.accept 2583 ,, A Boar's Vitality
.turnin 2583 ,, A Boar's Vitality
.accept 2581 ,, Snickerfang Jowls
.turnin 2581 ,, Snickerfang Jowls
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>> 击杀|cRXP_ENEMY_土狼|r. 拾取他们的|cRXP_LOOT_颚骨|r
>> 击杀|cRXP_ENEMY_野猪|r. 拾取他们的|cRXP_LOOT_肺|r
>> 击杀|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_蝎钳|r
>> 击杀|cRXP_ENEMY_蜥蜴|r. 拾取他们的|cRXP_LOOT_大脑|r
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r
>>|cRXP_WARN_优先击杀|cRXP_ENEMY_土狼|r, |cRXP_ENEMY_野猪|r和|cRXP_ENEMY_蝎子|r以获得25敏捷Buff|r
>>|cRXP_WARN_|cRXP_ENEMY_蜥蜴|r与|cRXP_ENEMY_野猪|r共享刷新, 而|cRXP_ENEMY_土狼|r与|cRXP_ENEMY_蝎子|r共享刷新|r
.collect 8391,3,2581,1 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8392,2,2581,1 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8393,1,2581,1 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8394,11 
.disablecheckbox
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8396,14 
.disablecheckbox
.goto Blasted Lands,55.14,36.37,0
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2581 ,, Snickerfang Jowls
.turnin 2581 ,, Snickerfang Jowls
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>> 击杀|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_蝎钳|r
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r
>> 击杀|cRXP_ENEMY_野猪|r. 拾取他们的|cRXP_LOOT_肺|r
>> 击杀|cRXP_ENEMY_蜥蜴|r. 拾取他们的|cRXP_LOOT_大脑|r
>> 击杀|cRXP_ENEMY_土狼|r. 拾取他们的|cRXP_LOOT_颚骨|r
>>|cRXP_WARN_|cRXP_ENEMY_蜥蜴|r与|cRXP_ENEMY_野猪|r共享刷新, 而|cRXP_ENEMY_土狼|r与|cRXP_ENEMY_蝎子|r共享刷新|r
.collect 8391,2 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8392,4 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8393,5 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8394,11 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8396,14 
.goto Blasted Lands,55.14,36.37,0
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Paladin/Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师莱诺雷|r和|cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2601 ,, The Basilisk's Bite
.turnin 2601 ,, The Basilisk's Bite
.accept 2603 ,, Vulture's Vigor
.turnin 2603 ,, Vulture's Vigor
.goto Blasted Lands,50.640,14.299
.accept 2585 ,, The Decisive Striker
.turnin 2585 ,, The Decisive Striker
.accept 2583 ,, A Boar's Vitality
.turnin 2583 ,, A Boar's Vitality
.accept 2581 ,, Snickerfang Jowls
.turnin 2581 ,, Snickerfang Jowls
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
step << !Druid !Paladin !Warrior !Rogue !Hunter
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>> 击杀|cRXP_ENEMY_蝎子|r. 拾取他们的|cRXP_LOOT_蝎钳|r
>> 击杀|cRXP_ENEMY_秃鹫|r. 拾取他们的|cRXP_LOOT_胃囊|r
>> 击杀|cRXP_ENEMY_野猪|r. 拾取他们的|cRXP_LOOT_肺|r
>> 击杀|cRXP_ENEMY_蜥蜴|r. 拾取他们的|cRXP_LOOT_大脑|r
>> 击杀|cRXP_ENEMY_土狼|r. 拾取他们的|cRXP_LOOT_颚骨|r
>>|cRXP_WARN_|cRXP_ENEMY_蜥蜴|r与|cRXP_ENEMY_野猪|r共享刷新, 而|cRXP_ENEMY_土狼|r与|cRXP_ENEMY_蝎子|r共享刷新|r
.collect 8391,5 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8392,6 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8393,6 
.goto Blasted Lands,44.25,26.93,0
.goto Blasted Lands,47.28,19.43,0
.collect 8394,11 
.goto Blasted Lands,61.66,27.83,0
.goto Blasted Lands,56.33,30.72,0
.collect 8396,14 
.goto Blasted Lands,55.14,36.37,0
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << !Druid !Paladin !Warrior !Rogue !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_血法师莱诺雷|r和|cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2601 ,, The Basilisk's Bite
.turnin 2601 ,, The Basilisk's Bite
.accept 2603 ,, Vulture's Vigor
.turnin 2603 ,, Vulture's Vigor
.goto Blasted Lands,50.640,14.299
.accept 2585 ,, The Decisive Striker
.turnin 2585 ,, The Decisive Striker
.accept 2583 ,, A Boar's Vitality
.turnin 2583 ,, A Boar's Vitality
.accept 2581 ,, Snickerfang Jowls
.turnin 2581 ,, Snickerfang Jowls
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
step
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_收藏家库米沙|r
.accept 3501 ,, Everything Counts In Large Amounts
.turnin 3501 ,, Everything Counts In Large Amounts
.collect 10593,1,3501,1 
.itemcount 10593,1 
.target Kum'isha the Collector
step
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_收藏家库米沙|r
.accept 2521 ,, To Serve Kum'isha
.turnin 2521 ,, To Serve Kum'isha
.collect 8244,1,2521,1 
.itemcount 8244,1 
.target Kum'isha the Collector
step
#label BLend
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Redridge >> 飞往赤脊山
.target Alexandra Constantine
.zoneskip Burning Steppes
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >> 前往燃烧平原
step
.goto Burning Steppes,82.4,63.6,60,0
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥拉留斯|r
.accept 3823 ,, Extinguish the Firegut
.target Oralius
step
.goto Burning Steppes,75.34,48.62,70,0
.goto Burning Steppes,82.89,37.61,70,0
.goto Burning Steppes,80.74,44.38
>> 击杀|cRXP_ENEMY_火腹食人魔法师|r, |cRXP_ENEMY_火腹食人魔|r和|cRXP_ENEMY_火腹蛮兵|r
.complete 3823,1 
.complete 3823,2 
.complete 3823,3 
.mob Firegut Ogre Mage
.mob Firegut Ogre
.mob Firegut Brute
step
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥拉留斯|r
.turnin 3823 ,, Extinguish the Firegut
.target Oralius
step
.goto Burning Steppes,84.334,68.326
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博古斯·粗臂|r
.fly Searing Gorge >> 飞往灼热峡谷
.target Borgus Stoutarm
.zoneskip Searing Gorge
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 52-52 灼热峡谷/西瘟疫之地
#next 52-53 费伍德森林
step 
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.accept 3452 ,, The Flame's Casing
.target Velarok Windblade
step
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>> 击杀|cRXP_ENEMY_暮光黑暗萨满|r, |cRXP_ENEMY_暮光火焰卫士|r, |cRXP_ENEMY_暮光地卜师|r和|cRXP_ENEMY_暮光崇拜者|r. 拾取|cRXP_LOOT_拉格纳罗斯符记|r
>>|cRXP_WARN_如果你没信心单挑这些精英就跳过此步|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.turnin 3452 ,, The Flame's Casing
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r
.accept 3453 ,, The Torch of Retribution
.timer 28,The Torch of Retribution RP
.turnin 3453 ,, The Torch of Retribution
.accept 3454 ,, The Torch of Retribution
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>点击|cRXP_PICK_惩戒火炬|r
.turnin 3454 ,, The Torch of Retribution
step
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡拉然·温布雷|r和|cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3462 ,, Squire Maltrake
.goto Searing Gorge,39.057,38.990
.turnin 3462 ,, Squire Maltrake
.accept 3463 ,, Set Them Ablaze!
.goto Searing Gorge,39.165,38.997
.target Velarok Windblade
.target Squire Maltrake
step
.isQuestTurnedIn 3452
>>点击塔顶的|cRXP_PICK_岗哨火盆|r
>>|cRXP_WARN_你必须装备|r|T135466:0|t[惩戒火炬]|cRXP_WARN_才能完成|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_侍卫玛特拉克|r
.turnin 3463 ,, Set Them Ablaze!
.target Squire Maltrake
step
.isQuestTurnedIn 3463
.destroy 10515 >> 摧毁|T135466:0|t[惩戒火炬]. 你不需要它了
step
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>点击地上的|cRXP_PICK_黑龙军团宝箱|r
.accept 3481 ,, Trinkets...
.turnin 3481 ,, Trinkets...
step
.itemcount 10569,1
.use 10569 >>|cRXP_WARN_打开|r|T132595:0|t[黑龙军团宝箱]
+|cRXP_WARN_一定要保存好|r|T134430:0|t[黑龙皮]|cRXP_WARN_. 不要把它摧毁了. 后续会有任务用到它|r
step
.group 4
.isOnQuest 3372
.goto Searing Gorge,24.61,30.97,25,0
.goto Searing Gorge,29.144,25.849
>>打开|cRXP_PICK_暮光神器|r. 拾取|cRXP_LOOT_神秘的古器|r
>>|cRXP_WARN_跳上|cRXP_PICK_暮光神器|r以拾取它|r
>>|cRXP_WARN_如果不能完成就跳过此步|r
.complete 3372,1 
step
.group 4
.goto Searing Gorge,29.505,26.325
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨麦尔·月棘|r
.accept 3377 ,, Prayer to Elune
.skipgossip
.turnin 3377 ,, Prayer to Elune
.accept 3378 ,, Prayer to Elune
.target Zamael Lunthistle
step
.group 4
.isOnQuest 3378
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>> 击杀|cRXP_ENEMY_暮光黑暗萨满|r, |cRXP_ENEMY_暮光火焰卫士|r, |cRXP_ENEMY_暮光地卜师|r和|cRXP_ENEMY_暮光崇拜者|r. 拾取|cRXP_LOOT_艾露恩祷言|r
>>|cRXP_WARN_如果不能完成就跳过此步|r
.complete 3378,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.group 4
#completewith next
.isQuestComplete 3372
.goto Searing Gorge,49.56,45.38
.subzone 1443 >> 跳下熔渣之池. 跟随指示
step
.group 4
.isQuestComplete 3372
.goto Searing Gorge,41.252,25.408
>>点击|cRXP_PICK_苏塔拉祭坛|r
.turnin 3372 ,, Release Them
step
.group
.abandon 3372 ,, Release Them
step
.group 4
.isQuestTurnedIn 3372
.goto Searing Gorge,41.163,25.541
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_濒死的考古学家|r
.target Dying Archaeologist
.accept 3566 ,, Rise, Obsidion!
step
.group 4
.isQuestTurnedIn 3372
>> 击杀|cRXP_ENEMY_黑衣拉索里克|r和|cRXP_ENEMY_奥比斯顿|r. 拾取|cRXP_LOOT_黑衣拉索里克的头颅|r和|cRXP_LOOT_奥比斯顿的心脏|r
.complete 3566,1 
.complete 3566,2 
.mob Lathoric the Black
.mob Obsidion
step << !Mage
.group
.isQuestTurnedIn 3372
#completewith next
+登出跳过以快速离开洞穴. 这里有多处地点可以利用
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >> |cRXP_WARN_点击此处查看视频参考|r
step << !Mage
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰尼·瑞德|r
.fly Ironforge >> 飞往铁炉堡
.zoneskip Searing Gorge,1
.target Lanie Reed
step << Mage
#completewith next
.zone Ironforge >>传送到铁炉堡
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁克|r
.accept 8250 ,, Magecraft
.trainer >> 学习职业技能
.target Dink
step
.isQuestTurnedIn 3481
.itemcount 10575,1 
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 10575 >>将以下物品存入银行:
>>|T134430:0|t[黑龙皮] (如果有的话) 
.target Bailey Stonemantle
step
#completewith CHam
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_信差考雷·落锤|r
>>|cRXP_FRIENDLY_信差考雷·落锤|r|cRXP_WARN_在整个铁炉堡巡逻|r
.accept 5090 ,, A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step << Warlock
.goto Ironforge,51.088,6.603
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_瑟斯哈特|r
.trainer >> 学习职业技能
.accept 8419 ,, An Imp's Request
.target Thistleheart
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warrior
.goto Ironforge,65.905,88.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r
.trainer >> 学习职业技能
.target Bilban Tosslespanner
step << Hunter
.goto Ironforge,70.889,83.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥尔明·燃须|r
.trainer >> 学习职业技能
.accept 8151 ,, The Hunter's Charm
.target Olmin Burningbeard
step << Rogue
.goto Ironforge,51.981,14.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_霍夫丹·黑须|r
.trainer >> 学习职业技能
.accept 8233 ,, A Simple Request
.target Hulfdan Blackbeard
step << Paladin
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r
.trainer >> 学习职业技能
.accept 8415 ,, Chillwind Point
.target Brandur Ironhammer
step << Priest
.goto Ironforge,26.970,7.323,15,0
.goto Ironforge,24.337,10.433,5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师洛汉|r
.trainer >> 学习职业技能
.accept 8254 ,, Cenarion Aid
.target High Priest Rohan
step
.isQuestComplete 3566
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_索里奥斯馆长|r|cRXP_WARN_在整个探险者大厅巡逻|r
.turnin 3566 ,, Rise Obsidion!
.target Curator Thorius
step
.abandon 3566 ,, Rise Obsidion!
step
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_历史学家卡尼克|r
.accept 3448 ,, Passing the Burden
.target Historian Karnik
step
.isOnQuest 2977
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_历史学家卡尼克|r
.turnin 2977 ,, Return to Ironforge
.accept 2964 ,, A Future Task
.target Historian Karnik
step
.isQuestTurnedIn 2977
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_历史学家卡尼克|r
.accept 2964 ,, A Future Task
.target Historian Karnik
step
.isOnQuest 2964
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_资深探险家麦格拉斯|r
.turnin 2964 ,, A Future Task
.target High Explorer Magellas
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里斯·空轮|r
.accept 4512 ,, A Little Slime Goes a Long Way
.target Laris Geardawdle
step
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法师泰摩尔|r
.turnin 3448 ,, Passing the Burden
.accept 3449 ,, Arcane Runes
.accept 3450 ,, An Easy Pickup
.target Tymor
step
#label CHam
.goto Ironforge,70.860,94.570
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希格斯·熔火|r
.turnin 3450 ,, An Easy Pickup
.accept 3451 ,, Signal for Pickup
.turnin 3451 ,, Signal for Pickup
.target Xiggs Fuselighter
step
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
.goto Ironforge,33.0,22.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_信差考雷·落锤|r
>>|cRXP_FRIENDLY_信差考雷·落锤|r|cRXP_WARN_在整个铁炉堡巡逻|r
.accept 5090 ,, A Call to Arms: The Plaguelands!
.unitscan Courier Hammerfall
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板洛雷·火酒|r
.home Ironforge >> 绑定炉石到铁炉堡
.target Innkeeper Firebrew
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 10444,10445 >>将以下物品存入银行:
>>|T134537:0|t[标准型闪光信号枪] 
>>|T132594:0|t[绘图工具包] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 10819,9328,9330 >> 从银行取出下列物品:
>>|T132927:0|t[枭兽羽毛] 
>>|T134442:0|t[超级摄影器FX] 
>>|T134300:0|t[加莫里塔的照片] 
.target Bailey Stonemantle
step << Rogue
#completewith AzureBag
.isOnQuest 8233
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Southshore >> 飞往南海镇
.target Gryth Thurden
step << Rogue
.isOnQuest 8233
.goto Hillsbrad Foothills,75.575,22.076,20,0
.goto Hillsbrad Foothills,86.026,78.879
.subzone 3486 >> 前往拉文霍德庄园
step << Rogue
.isOnQuest 8233
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_乔拉齐·拉文霍德领主|r对话
.turnin 8233 ,, A Simple Request
.accept 8234 ,, Sealed Azure Bag
.target Lord Jorach Ravenholdt
step << Rogue
.isQuestTurnedIn 8233
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_乔拉齐·拉文霍德领主|r对话
.accept 8234 ,, Sealed Azure Bag
.target Lord Jorach Ravenholdt
step << Rogue
.isOnQuest 8234
#label AzureBag
#completewith Tragan
.goto Hillsbrad Foothills,83.395,32.309,90,0
.goto The Hinterlands,7.50,58.87
.zone The Hinterlands >> 前往辛特兰
step
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Hinterlands>> 飞往辛特兰
.target Gryth Thurden
.zoneskip The Hinterlands
step
.dungeon ZF
.isOnQuest 2993
.goto The Hinterlands,48.814,68.387
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_狮鹫兽管理员沙拉克·鹰斧|r
.turnin 2993 ,, Return to the Hinterlands
.target Gryphon Master Talonaxe
step
#label Tragan
.goto The Hinterlands,40.63,59.65
>> 拾取水底的|cRXP_LOOT_紫色水生菇|r
.complete 2641,1 
step
#completewith FlyWPL
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fly Western Plaguelands>> 飞往西瘟疫之地
.target Guthrum Thunderfist
step
.isOnQuest 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 5066 ,, A Call to Arms: The Plaguelands!
.turnin 8415 ,, Chillwind Point << Paladin
.accept 8414 ,, Dispelling Evil << Paladin
.accept 5092 ,, Clear the Way
.target Commander Ashlam Valorfist
step
.isQuestTurnedIn 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 8415 ,, Chillwind Point << Paladin
.accept 8414 ,, Dispelling Evil << Paladin
.accept 5092 ,, Clear the Way
.target Commander Ashlam Valorfist
step
.isOnQuest 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 5091 ,, A Call to Arms: The Plaguelands!
.turnin 8415 ,, Chillwind Point << Paladin
.accept 8414 ,, Dispelling Evil << Paladin
.accept 5092 ,, Clear the Way
.target Commander Ashlam Valorfist
step
.isQuestTurnedIn 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 8415 ,, Chillwind Point << Paladin
.accept 8414 ,, Dispelling Evil << Paladin
.accept 5092 ,, Clear the Way
.target Commander Ashlam Valorfist
step
.isOnQuest 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 5090 ,, A Call to Arms: The Plaguelands!
.turnin 8415 ,, Chillwind Point << Paladin
.accept 8414 ,, Dispelling Evil << Paladin
.accept 5092 ,, Clear the Way
.target Commander Ashlam Valorfist
step
.isQuestTurnedIn 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 8415 ,, Chillwind Point << Paladin
.accept 8414 ,, Dispelling Evil << Paladin
.accept 5092 ,, Clear the Way
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.968,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_银色黎明军官普尔哈特|r
.accept 5401 ,, Argent Dawn Commission
.turnin 5401 ,, Argent Dawn Commission
.target Argent Officer Pureheart
step
#completewith next
.cast 17670 >> |cRXP_WARN_装备|r|T133440:0|t[银色黎明委任徽章]|cRXP_WARN_以开始收集|r|T133447:0|t[天灾石]
.use 12846
step
#label FlyWPL
.goto Western Plaguelands,48.91,80.84,70,0
.goto Western Plaguelands,50.01,76.90
>> 击杀|cRXP_ENEMY_骷髅撕掠者|r和|cRXP_ENEMY_被奴役的食尸鬼|r << !Paladin
>> 击杀|cRXP_ENEMY_骷髅撕掠者|r和|cRXP_ENEMY_被奴役的食尸鬼|r. 拾取他们的|cRXP_LOOT_爪牙的天灾石|r << Paladin
.complete 5092,1 
.complete 5092,2 
.complete 8414,1 << Paladin 
.mob Skeletal Flayer
.mob Slavering Ghoul
step << Paladin
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师赛尔邓尼斯|r
.turnin 8414 ,, Dispelling Evil
.accept 8416 ,, Inert Scourgestones
.target High Priest Thel'danis
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 5092 ,, Clear the Way
.turnin 8416 ,, Inert Scourgestones << Paladin
.target Commander Ashlam Valorfist
step << !Mage
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.fly Menethil Harbor >> 飞往米奈希尔港
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
step << !Mage
.goto Wetlands,4.560,57.160
.zone Darkshore >> 乘船前往黑海岸
.zoneskip Darnassus
.zoneskip Teldrassil
step << !Mage
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯莱斯·月羽|r
.fly Teldrassil >> 飞往泰达希尔
.target Caylais Moonfeather
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 3661 ,, Favored of Elune?
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
>>|cRXP_WARN_如果你低于52级就跳过此步. 稍后再来做|r
.accept 978 ,, Moontouched Wildkin
.target Erelas Ambersky
.xp <52,1
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达蕾恩·轻风|r对话
.turnin 2944 ,, The Super Snapper FX
.accept 2943 ,, Return to Troyas
.target Daryn Lightwind
step << !Mage
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step << Mage
#completewith next
.zone Darnassus >> 传送到达纳苏斯
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊迪瑞娜|r, |cRXP_FRIENDLY_加瑞斯|r和|cRXP_FRIENDLY_莱恩|r
.bankwithdraw 8594,11133,11018 >> 从银行取出下列物品:
>>|T134331:0|t[昆虫分析报告] 
>>|T135357:0|t[林克的训练之剑] 
>>|T133849:0|t[安戈洛的泥土] (如果你有20个的话) 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊迪瑞娜|r, |cRXP_FRIENDLY_加瑞斯|r和|cRXP_FRIENDLY_莱恩|r
.bankdeposit 8526 >>将以下物品存入银行:
>>|T134527:0|t[紫色水生菇] 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板塞琳尼|r
.accept 3763 ,, Assisting Arch Druid Staghelm
.target Innkeeper Saelienne
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 3763 ,, Assisting Arch Druid Staghelm
.target Arch Druid Fandral Staghelm
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.accept 3764 ,, Un'Goro Soil
.itemcount 11018,20 
.target Arch Druid Fandral Staghelm
step
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶纳尔|r
.turnin 3764 ,, Un'Goro Soil
.itemcount 11018,20 
.target Jenal
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格拉希娜·灵风|r
.turnin 162 ,, Rise of the Silithid
.accept 4493 ,, March of the Silithid
.target Gracina Spiritmight
step
.group
.isQuestComplete 3378
.goto Darnassus,38.334,80.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿斯塔利·逐星|r
.turnin 3378 ,, Prayer to Elune
.target Astarii Starseeker
step
.group
.abandon 3378 ,, Prayer to Elune
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
.trainer >> 学习职业技能
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿雷亚斯塔·刃咏|r
.goto Darnassus,58.718,34.905
.trainer >> 学习职业技能
.target Arias'ta Bladesinger
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
.trainer >> 学习职业技能
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
.trainer >> 学习职业技能
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
.trainer >> 学习职业技能
.target Jocaste
step
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 3661 ,, Favored of Elune?
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
>>|cRXP_WARN_如果你低于52级就跳过此步. 稍后再来做|r
.accept 978 ,, Moontouched Wildkin
.target Erelas Ambersky
.xp <52,1
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_达蕾恩·轻风|r对话
.turnin 2944 ,, The Super Snapper FX
.accept 2943 ,, Return to Troyas
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Azshara >> 飞往艾萨拉
.zoneskip Teldrassil,1
.target Vesprystus
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 52-53 费伍德森林
#next 53-54 菲拉斯/艾萨拉
step
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗哈图|r
.accept 5535 ,, Spiritual Unrest
.accept 5536 ,, A Land Filled with Hatred
.target Loh'atu
step
#completewith next
.goto Azshara,17.12,69.00,0
.goto Azshara,14.22,72.74,0
>> 击杀|cRXP_ENEMY_精灵贵族的亡魂|r和|cRXP_ENEMY_精灵贵族鬼巫|r
.complete 5535,1 
.complete 5535,2 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,19.35,63.02,60,0
.goto Azshara,20.65,60.89
>> 击杀|cRXP_ENEMY_哈达尔萨特|r, |cRXP_ENEMY_哈达尔欺诈者|r和|cRXP_ENEMY_哈达尔魔仆|r
.complete 5536,1 
.complete 5536,2 
.complete 5536,3 
.mob Haldarr Satyr
.mob Haldarr Trickster
.mob Haldarr Felsworn
step
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>> 击杀|cRXP_ENEMY_精灵贵族的亡魂|r和|cRXP_ENEMY_精灵贵族鬼巫|r
>>|cRXP_WARN_如果掉落了|cRXP_LOOT_亡灵腐液|r, 就为之后的沉没的神庙职业任务保留1个|r << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1,8256,1,1 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗哈图|r
.turnin 5535 ,, Spiritual Unrest
.turnin 5536 ,, A Land Filled with Hatred
.target Loh'atu
step
#completewith next
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> 前往费伍德森林
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
.accept 4101 ,, Cleansing Felwood
.target Arathandris Silversky
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格拉兹|r
.accept 8460 ,, Timbermaw Ally
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>> 击杀|cRXP_ENEMY_死木战士|r, |cRXP_ENEMY_死木寻路者|r和|cRXP_ENEMY_死木园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格拉兹|r
.turnin 8460 ,, Timbermaw Ally
.accept 8462 ,, Speak to Nafien
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
.reputation 576,unfriendly
>>|cRXP_WARN_不要跳过此步. 你需要此任务给予的声望来穿过北边的木喉要塞|r
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>|cRXP_WARN_你将需要12组|r|T132892:0|t[魔纹布]|cRXP_WARN_以完成几个主城的交布任务. 熊怪很适合刷魔纹布. 如果你已经集齐了就跳过此步|r
.collect 4338,240 
.xp 52.5
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step << Warlock
.goto Felwood,43.27,84.98,45,0
.goto Felwood,43.41,88.13,70,0
.goto Felwood,39.45,84.55
>> 击杀|cRXP_ENEMY_碧火萨特|r和|cRXP_ENEMY_碧火魔仆|r. 拾取恶魔布
.collect 14256,1,8419,1 
.mob Jadefire Satyr
.mob Jadefire Felsworn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5155 ,, Forces of Jaedenar
.goto Felwood,51.21,82.10
.target Greta Mosshoof
step
#completewith next
.use 11912 >> |cRXP_WARN_打开|r|T132763:0|t[一组软泥怪采样瓶]
.collect 11914,6 
.collect 11948,6 
step
.goto Felwood,40.77,66.86
>> 击杀|cRXP_ENEMY_被诅咒的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[被诅咒的软泥怪采样瓶]
.complete 4512,1 
.use 11912 
.use 11914 
.mob Cursed Ooze
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.turnin 8419 ,, An Imp's Request
.accept 8421 ,, The Wrong Stuff
.target Impsy
step << Warlock
#completewith FinalOoze
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>> 击杀|cRXP_ENEMY_被污染的软泥怪|r. 拾取他们的|cRXP_LOOT_血毒精华|r
.complete 8421,2 
.mob Tainted Ooze
step
#completewith next
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>> 击杀|cRXP_ENEMY_被污染的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[被污染的软泥怪采样瓶]
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,35.01,59.83,60,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,38.55,59.14,60,0
.goto Felwood,36.49,61.40
>> 击杀|cRXP_ENEMY_加德纳尔恶犬|r, |cRXP_ENEMY_加德纳尔守护者|r, |cRXP_ENEMY_加德纳尔精兵|r和|cRXP_ENEMY_加德纳尔祭司|r
.complete 5155,1 
.complete 5155,2 
.complete 5155,3 
.complete 5155,4 
.mob Jaedenar Hound
.mob Jaedenar Guardian
.mob Jaedenar Adept
.mob Jaedenar Cultist
step
#label FinalOoze
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>> 击杀|cRXP_ENEMY_被污染的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[被污染的软泥怪采样瓶]
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step << Warlock
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>> 击杀|cRXP_ENEMY_被污染的软泥怪|r. 拾取他们的|cRXP_LOOT_血毒精华|r
.complete 8421,2 
.mob Tainted Ooze
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5155 ,, Forces of Jaedenar
.accept 5157 ,, Collection of the Corrupt Water
.target Greta Mosshoof
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,35.173,59.778
.use 12922 >>|cRXP_WARN_在加德纳尔中间的月亮井处|r|cRXP_WARN_使用|r|T132788:0|t[空壶]
.complete 5157,1 
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5157 ,, Collection of the Corrupt Water
.accept 5158 ,, Seeking Spiritual Aid
.target Greta Mosshoof
step << Warlock
Felwood,49.0,29.6,70,0
Felwood,53.0,22.8,70,0
Felwood,49.4,18.0,70,0
Felwood,46.4,24.6,70,0
Felwood,49.0,29.6,70,0
Felwood,53.0,22.8,70,0
Felwood,49.4,18.0,70,0
Felwood,46.4,24.6
>> 击杀|cRXP_ENEMY_铁木践踏者|r, |cRXP_ENEMY_铁木漫游者|r和|cRXP_ENEMY_枯萎的保卫者|r. 拾取他们的|cRXP_LOOT_腐烂的木头|r
.complete 8421,1 
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Withered Protector
step
#completewith next
.goto Felwood,61.50,16.96,100,0
.goto Felwood,62.488,24.242
.subzone 1998 >> 前往刺枝林地
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米萨琳娜|r
.fp Felwood>> 开启费伍德森林飞行点
.target Mishellena
step
.goto Felwood,64.768,8.129
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
.turnin 8462 ,, Speak to Nafien
.target Nafien
step << !Druid
.dungeon Mara
.isOnQuest 7066
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Moonglade,35.77,71.94
.zone Moonglade >> 穿过木喉要塞前往月光林地
>>|cRXP_WARN_确保木喉要塞声望至少达到冷淡. 如果你与木喉要塞处于敌对关系它们会攻击你. 刷熊怪以提升声望至冷淡|r
step << !Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 ,, Seed of Life
.target Keeper Remulos
step << !Druid
.dungeon Mara
.isQuestTurnedIn 7066
.goto Moonglade,35.77,71.94,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> 穿过木喉要塞前往冬泉谷
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> 穿过木喉要塞前往冬泉谷
>>|cRXP_WARN_确保木喉要塞声望至少达到冷淡. 如果你与木喉要塞处于敌对关系它们会攻击你. 刷熊怪以提升声望至冷淡|r
step
#hardcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了[视灵药剂]任务线, 现在在官方怀旧服上该任务不再会导致你的角色死亡|r
.turnin 3908 ,, It's a Secret to Everybody
.timer 36,It's a Secret to Everybody RP
.accept 3909 ,, The Videre Elixir
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_你现在能安全的完成[视灵药剂]任务|r
.turnin 3908 ,, It's a Secret to Everybody
.timer 36,It's a Secret to Everybody RP
.accept 3909 ,, The Videre Elixir
.target Donova Snowden
step
#completewith FlyFelwood
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>> 拾取地上的|cRXP_LOOT_月光羽毛|r
>>|cRXP_WARN_你可以先跳过此任务并在之后再来完成|r
.complete 978,1
.isOnQuest 978
step
#completewith next
.goto Winterspring,62.334,36.609 << !Hunter
.goto Winterspring,60.389,37.917 << Hunter
.subzone 2255 >> 前往永望镇
step << Hunter
#completewith next
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿兹雷比|r
.stable >> 把你的宠物存入兽栏. 你很快就会抓一只|cRXP_ENEMY_魔爪劫毁者|r
.target Azzleby
step
#label FlyFelwood
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦瑟蕾亚|r
.fly Felwood >> 飞往费伍德森林
.zoneskip Winterspring,1
.target Maethrya
step << Hunter
.goto Felwood,62.19,17.11
>>|cRXP_WARN_|cRXP_WARN_对|cRXP_ENEMY_魔爪劫毁者|r施放|r|T132164:0|t[驯服野兽]|r 
.train 17267 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132278:0|t[撕咬 (等级 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.mob Felpaw Ravager
step << Hunter
.goto Felwood,51.22,29.61,70,0
.goto Felwood,49.66,34.65,70,0
.goto Felwood,39.23,36.84,70,0
.goto Felwood,38.38,41.71,70,0
.goto Felwood,38.56,50.18
>>|cRXP_WARN_放弃你当前的宠物|r|cRXP_FRIENDLY_魔爪劫毁者|r
>>|cRXP_WARN_对|cRXP_ENEMY_铁喙狩猎者|r和|cRXP_ENEMY_怒爪巨熊|r|cRXP_WARN_施放|r|T132164:0|t[驯服野兽]|r 
.train 2977 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132140:0|t[爪击 (等级 7)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.mob Ironbeak Hunter
.mob Angerclaw Mauler
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.turnin 8421 ,, The Wrong Stuff
.target Impsy
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step << !Mage
#completewith next
.hs >> 炉石回铁炉堡
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step << Mage
#completewith next
.zone Ironforge >>传送到铁炉堡
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁克|r
.trainer >> 学习职业技能
.target Dink
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里斯·空轮|r
.turnin 4512 ,, A Little Slime Goes a Long Way
.timer 10,A Little Slime Goes a Long Way RP
.accept 4513 ,, A Little Slime Goes a Long Way
.target Laris Geardawdle
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_陶德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >> 学习职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_雷格努斯·雷岩|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >> 学习职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
.goto Ironforge,69.294,83.568
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌布雷克·火拳|r
.stable >> 从兽栏取出你的宠物
.target Ulbrek Firehand
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 11316 >> 从银行取出下列物品:
>>|T133941:0|t[血瓣花] 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankdeposit 12907,11955 >>将以下物品存入银行:
>>|T132788:0|t[腐化的月亮井水] 
>>|T133622:0|t[一包空的软泥怪采样瓶] 
.target Bailey Stonemantle
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行购买|r|T133021:0|t[秘银外壳]|cRXP_BUY_. 之后安戈洛环形山的一个任务会用到|r
>>|cRXP_WARN_如果无法获取到就跳过此步|r
.collect 10561,1,4244,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Priest
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话一名|cRXP_FRIENDLY_铁炉堡拍卖师|r
>>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[亡灵腐液]|cRXP_BUY_. 你需要此物品以完成沉没的神庙职业任务|r
>>|cRXP_WARN_如果无法获取到就跳过此步|r
.collect 7972,1,8256,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.506,47.746
.fly Wetlands >> 飞往湿地
.target Gryth Thurden
.zoneskip Ironforge,1
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >> 乘船前往塞拉摩
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板詹妮|r
.goto Dustwallow Marsh,66.587,45.223
.home >> 绑定炉石到塞拉摩
.target Innkeeper Janene
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Feathermoon >> 飞往羽月要塞
.target Baldruc
.zoneskip Dustwallow Marsh,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 53-54 菲拉斯/艾萨拉
#next 54-55 安戈洛环形山
step
.goto Feralas,30.632,42.706
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·马克格鲁比|r
.accept 7733 ,, Improved Quality
step
.goto Feralas,31.777,45.498
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特洛亚斯·月风|r
.turnin 2943 ,, Return to Troyas
.timer 13,Return to Troyas RP
.accept 2879 ,, The Stave of Equinex
.target Troyas Moonbreeze
step
#completewith next
.goto Feralas,44.810,43.423,60 >> 游到|cRXP_FRIENDLY_索尔宾·范达瑟|r处
step
#era
.goto Feralas,44.810,43.423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔宾·范达瑟|r
.accept 7003 ,, Zapped Giants
.accept 7721 ,, Fuel for the Zapping
.target Zorbin Fandazzle
step
#completewith next
>> 击杀|cRXP_ENEMY_海元素|r和|cRXP_ENEMY_巨型海元素|r. 拾取他们的|cRXP_LOOT_水元素核心|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0
>> 击杀|cRXP_ENEMY_波涛巨人|r, |cRXP_ENEMY_深海巨人|r和|cRXP_ENEMY_海岸巨人|r. 拾取他们的|cRXP_LOOT_微缩残渣|r
.use 18904 >>|cRXP_WARN_使用|r[索尔宾的超级压缩器]|cRXP_WARN_削弱他们|r
.complete 7003,1 
.mob Wave Strider
.mob Deep Strider
.mob Shore Strider
step
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0
>> 击杀|cRXP_ENEMY_海元素|r和|cRXP_ENEMY_巨型海元素|r. 拾取他们的|cRXP_LOOT_水元素核心|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
.goto Feralas,44.810,43.423
.target Zorbin Fandazzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_索尔宾·范达瑟|r
.turnin 7003 ,, Zapped Giants
.turnin 7721 ,, Fuel for the Zapping
step
.destroy 18904 >> 摧毁|T133003:0|t[索尔宾的超级压缩器]
step
.goto Feralas,54.84,32.84
>> 击杀|cRXP_ENEMY_怒痕雪人的毛皮|r, |cRXP_ENEMY_老年怒痕雪人|r和|cRXP_ENEMY_残忍的怒痕雪人|r. 拾取他们的|cRXP_LOOT_怒痕雪人的毛皮|r和|T134362:0|t[|cRXP_LOOT_原始雪人毛皮|r]
>>|cRXP_WARN_使用|T134362:0|t[|cRXP_LOOT_原始雪人毛皮|r]并接受任务|r
>>|cRXP_WARN_如果你没打到|T134362:0|t[|cRXP_LOOT_原始雪人毛皮|r]就跳过此步|r
.complete 7733,1 
.collect 18969,1,7735 
.disablecheckbox
.accept 7735 ,, Pristine Yeti Hide
.disablecheckbox
.use 18969 
.mob Rage Scar Yeti
.mob Elder Rage Scar
.mob Ferocious Rage Scar
step
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷甘·山酒|r
.turnin 4142 ,, A Visit to Gregan
.target Gregan Brewspewer
step
.isOnQuest 3909
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷甘·山酒|r
>>|cFF0E8312Buy|r|T134006:0|t[Bait]
.collect 11141,1,3909,1 
.target Gregan Brewspewer
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗克比特|r
.accept 2844 ,, The Giant Guardian
.target Rockbiter
step
.isOnQuest 3909
#completewith next
.goto Feralas,44.627,10.568
.cast 14008 >> |cRXP_WARN_将|r|T134006:0|t[诱饵]|cRXP_WARN_放置在|cRXP_FRIENDLY_米布隆·乱齿|r旁边以分散他的注意|r
.use 11141 
.target Miblon Snarltooth
step
.isOnQuest 3909
.goto Feralas,44.605,10.185,-1
.goto Feralas,44.517,10.220,-1
>> 在废墟内拾取|cRXP_LOOT_灵根草|r
.collect 11242,1,3909,1 
.use 11141 
step
.isOnQuest 2879
>> 拾取|cRXP_PICK_Four Flames|r以获得|cRXP_LOOT_Essences|r
.collect 9257,1,2879,1
.goto Feralas,40.538,12.657
.collect 9258,1,2879,1
.goto Feralas,38.507,15.790
.collect 9255,1,2879,1
.goto Feralas,37.750,12.177
.collect 9256,1,2879,1
.goto Feralas,39.927,9.436
step
.isOnQuest 2879
.goto Feralas,38.88,13.13
.use 9263 >>|cRXP_WARN_在|r|cRXP_PICK_艾奎尼克斯石碑|r|cRXP_WARN_处使用|r|T135145:0|t[特洛亚斯的法杖]
.complete 2879,1
step
.goto Feralas,38.82,13.17
>>点击|cRXP_PICK_艾奎尼克斯石碑|r
.turnin 2879 ,, The Stave of Equinex
.accept 2942 ,, The Morrow Stone
step
#completewith next
>>刷|cRXP_ENEMY_鹰身人|r直到炉石CD<10分钟
.cooldown item,6948,<10m
step
.goto Feralas,38.224,10.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙恩·飘叶|r
.turnin 2844 ,, The Giant Guardian
.target Shay Leafrunner
step
.goto Feralas,38.224,10.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙恩·飘叶|r
>>|cRXP_WARN_这将开启护送任务|r
.accept 2845 ,, Wandering Shay
.target Shay Leafrunner
step
.goto Feralas,38.252,10.293
>>打开|cRXP_PICK_沙恩的箱子|r. 拾取|T133706:0|t[|cRXP_LOOT_沙恩的铃铛|r]
.complete 2845,1 
.target Shay Leafrunner
step
.goto Feralas,42.38,22.00
>> 护送|cRXP_FRIENDLY_沙恩·飘叶|r到安全区域
.use 9189 >>|cRXP_WARN_只要|cRXP_FRIENDLY_沙恩·飘叶|r远离你了就|r|cRXP_WARN_使用|r|T133706:0|t[|cRXP_LOOT_沙恩的铃铛|r]
>>|cRXP_WARN_如果你离得太远了任务就会失败|r
.complete 2845,2 
.target Shay Leafrunner
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_罗克比特|r
.turnin 2845 ,, Wandering Shay
.target Rockbiter
step
#hardcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_WARN_暴雪已经调整了[视灵药剂]任务, 现在在官方怀旧服上该任务不再会导致你的角色死亡|r
.accept 4041 ,, The Videre Elixir
.turnin 4041 ,, The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
#softcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_WARN_你现在能安全的完成[视灵药剂]任务|r
.accept 4041 ,, The Videre Elixir
.turnin 4041 ,, The Videre Elixir
.complete 3909,1 
.target Gregan Brewspewer
step
#completewith next
.goto Feralas,31.777,45.498
.subzone 1116 >> 前往羽月要塞. 游过去比等船快
step
.goto Feralas,31.777,45.498
.target Troyas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特洛亚斯·月风|r
.turnin 2942 ,, The Morrow Stone
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 7733 ,, Improved Quality
.turnin 7735 ,, Pristine Yeti Hide
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 7733 ,, Improved Quality
.target Pratt McGrubben
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 7735 ,, Pristine Yeti Hide
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.hs Theramore >> 炉石回塞拉摩
.zoneskip Feralas,1
step
#completewith SetHS
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.fly Ratchet >> 飞往棘齿城
.target Baldruc
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兹拉克|r和|cRXP_FRIENDLY_兹科尔|r
.bankwithdraw 12907,10444,10445 >> 从银行取出下列物品:
>>|T132788:0|t[腐化的月亮井水] 
>>|T134537:0|t[标准型闪光信号枪] 
>>|T132594:0|t[绘图工具包] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 5158 ,, Seeking Spiritual Aid
.timer 48,Seeking Spiritual Aid RP
.accept 5159 ,, Cleansed Water Returns to Felwood
.target Islen Waterseer
step
#label SetHS
.goto The Barrens,62.049,39.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维尔雷|r
.home >> 绑定炉石到棘齿城
.target Innkeeper Wiley
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兹拉克|r和|cRXP_FRIENDLY_兹科尔|r
.bankdeposit 12906,12383 >>将以下物品存入银行:
>>|T134754:0|t[净化过的月亮井水] 
>>|T132926:0|t[月光羽毛] (如果你有的话) 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Azshara >> 飞往艾萨拉
.target Bragok
.zoneskip Azshara
step << Mage
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 ,, Meeting with the Master
.target Sanath Lim-yo
step << Mage
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_大法师克希雷姆|r对话
.turnin 8250 ,, Magecraft
.accept 8251 ,, Magic Dust
.target Archamge Xylem
step << Mage
#completewith KJI
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这将把你传送回去|r
.turnin 3421 ,, Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8151 ,, The Hunter's Charm << Hunter
.accept 8153 ,, Courser Antlers << Hunter
.turnin 8254 ,, Cenarion Aid << Priest
.accept 8255 ,, Of Coursers We Know << Priest
.target Ogtinc
step << Hunter/Priest
#completewith Missing
>> 击杀|cRXP_ENEMY_苔蹄快步者|r. 拾取他们的|cRXP_LOOT_完美的鹿角|r << Hunter
>> 击杀|cRXP_ENEMY_苔蹄快步者|r. 拾取他们的|cRXP_LOOT_健康的野鹿腺体|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Rogue
.goto Azshara,48.42,30.29,70,0
.goto Azshara,44.34,26.09,70,0
.goto Azshara,45.26,21.60
>>|T133644:0|t[偷窃]|cRXP_ENEMY_木喉萨满|r. 拾取|cRXP_LOOT_密封的蓝袋子|r
>>|cRXP_WARN_你可能需要在你的声望面板对[木喉要塞]勾选[交战]以使他们处于敌对状态|r
.complete 8234,1 
.mob Timbermaw Shaman
step
#label KJI
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基姆加尔|r
.accept 3601 ,, Kim'jael Indeed!
.target Kim'jael
step << Mage
#completewith next
>> 击杀|cRXP_ENEMY_血精灵搜寻者|r和|cRXP_ENEMY_血精灵勘测员|r. 拾取他们的|cRXP_LOOT_闪光尘埃|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>打开|cRXP_PICK_基姆加尔的设备|r. 拾取|cRXP_LOOT_基姆加尔的指南针|r, |cRXP_LOOT_基姆加尔的望远镜|r, |cRXP_LOOT_基姆加尔的烧鸡|r和|cRXP_LOOT_基姆加尔的花生|r
>>|cRXP_PICK_基姆加尔的设备|r|cRXP_WARN_散布在整个|cRXP_ENEMY_血精灵|r营地|r
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << Mage
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>> 击杀|cRXP_ENEMY_血精灵搜寻者|r和|cRXP_ENEMY_血精灵勘测员|r. 拾取他们的|cRXP_LOOT_闪光尘埃|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基姆加尔|r
.turnin 3601 ,, Kim'jael Indeed!
.accept 5534 ,, Kim'jael's "Missing" Equipment
.target Kim'jael
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 ,, Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_大法师克希雷姆|r对话
.turnin 8251 ,, Magic Dust << Mage
.accept 8252 ,, The Siren's Coral << Mage
.turnin 8234 ,, Sealed Azure Bag << Rogue
.accept 8235 ,, Encoded Fragments << Rogue
.target Archamge Xylem
step << Rogue
.isQuestTurnedIn 8234
#completewith next
+|cRXP_WARN_确保在你的声望面板对[木喉要塞]取消勾选[交战]以使他们重新变回非敌对状态|r
step << Mage/Rogue
#completewith RuneRubbing
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这将把你传送回去|r
.turnin 3421 ,, Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Mage
#completewith RuneRubbing
>> 击杀|cRXP_ENEMY_恶鞭海妖|r. 拾取他们的|cRXP_LOOT_魔化珊瑚|r
.complete 8252,1 
.mob Spitelash Siren
step
#completewith RuneRubbing
>>|cRXP_ENEMY_恶鞭侍从|r和|cRXP_ENEMY_恶鞭海妖|r. 拾取|cRXP_LOOT_一些符文|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step
#label RuneRubbing
>>点击|cRXP_PICK_符文|r. 拾取|cRXP_LOOT_拓印|r
.complete 3449,2 
.goto Azshara,39.57,50.32
.complete 3449,1 
.goto Azshara,36.95,53.18
.complete 3449,3 
.goto Azshara,39.33,55.42
.complete 3449,4 
.goto Azshara,42.34,64.14
step << Mage
#completewith next
>> 击杀|cRXP_ENEMY_恶鞭海妖|r. 拾取他们的|cRXP_LOOT_魔化珊瑚|r
.complete 8252,1 
.mob Spitelash Siren
step
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>|cRXP_ENEMY_恶鞭侍从|r和|cRXP_ENEMY_恶鞭海妖|r. 拾取|cRXP_LOOT_一些符文|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step << Mage
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>> 击杀|cRXP_ENEMY_恶鞭海妖|r. 拾取他们的|cRXP_LOOT_魔化珊瑚|r
.complete 8252,1 
.mob Spitelash Siren
step
#label Missing
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_基姆加尔|r
.turnin 5534 ,, Kim'jael's "Missing" Equipment
.target Kim'jael
step << Rogue
.goto Azshara,66.6,25.6,70,0
.goto Azshara,68.8,29.4,70,0
.goto Azshara,74.2,29.6,70,0
.goto Azshara,76.6,25.0,70,0
.goto Azshara,80.8,24.6,70,0
.goto Azshara,86.6,19.6,70,0
.goto Azshara,74.6,12.6,70,0
.goto Azshara,69.0,27.6
>> 击杀|cRXP_ENEMY_森林软泥怪|r. 拾取他们的|cRXP_LOOT_密文碎片|r
.complete 8235,1 
.mob Forest Ooze
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 ,, Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_大法师克希雷姆|r对话
.turnin 8252 ,, The Siren's Coral << Mage
.turnin 8235 ,, Encoded Fragments << Rogue
.target Archamge Xylem
step << Mage/Rogue
.dungeon ST
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_大法师克希雷姆|r对话
.accept 8253 ,, Destroy Morphaz << Mage
.accept 8236 ,, The Azure Key << Rogue
.target Archamge Xylem
step << Mage/Rogue
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这将把你传送回去|r
.turnin 3421 ,, Return Trip
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
.goto Azshara,51.0,30.8,80,0
.goto Azshara,47.0,19.0,80,0
.goto Azshara,57.2,21.2,80,0
.goto Azshara,71.0,29.6,80,0
.goto Azshara,75.8,21.8,80,0
.goto Azshara,57.2,21.2
>> 击杀|cRXP_ENEMY_苔蹄快步者|r. 拾取他们的|cRXP_LOOT_完美的鹿角|r << Hunter
>> 击杀|cRXP_ENEMY_苔蹄快步者|r. 拾取他们的|cRXP_LOOT_健康的野鹿腺体|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step
.goto Azshara,56.55,28.36
.xp 53.5 >> 刷|cRXP_ENEMY_血精灵|r直到你达到53级半
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8153 ,, Courser Antlers << Hunter
.accept 8231 ,, Wavethrashing << Hunter
.turnin 8255 ,, Of Coursers We Know << Priest
.accept 8256 ,, The Ichor of Undeath << Priest
.target Ogtinc
step << Hunter
.goto Azshara,88.69,25.88,70,0
.goto Azshara,87.0,9.0
.goto Azshara,54.2,42.2,0
.goto Azshara,59.2,35.6,0
.goto Azshara,71.6,36.8,0
.goto Azshara,90.4,33.6,0
.goto Azshara,88.69,25.88,0
>> 击杀|cRXP_ENEMY_碎浪多头蛇|r. 拾取他们的|cRXP_LOOT_碎浪多头怪的鳞片|r
>>|cRXP_WARN_它们可能比较难找到. 确保你开了|r|T132328:0|t[追踪野兽]|cRXP_WARN_并施放|r|T132172:0|t[鹰眼术]|cRXP_WARN_以在海岸附近快速找到它们|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Priest
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>> 击杀|cRXP_ENEMY_精灵贵族的亡魂|r和|cRXP_ENEMY_精灵贵族鬼巫|r. 拾取an |cRXP_LOOT_亡灵腐液|r
.complete 8256,1 
.mob Highborne Apparition
.mob Highborne Lichling
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8231 ,, Wavethrashing << Hunter
.turnin 8256 ,, The Ichor of Undeath << Priest
.target Ogtinc
step << Hunter/Priest
.dungeon ST
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.accept 8232 ,, The Green Drake << Hunter
.accept 8257 ,, Blood of Morphaz << Priest
.target Ogtinc
step
#completewith ArcaneRunes
.goto Azshara,60.11,73.02,150,0
.goto Azshara,72.71,75.91,150,0
.goto Azshara,77.800,91.327,20 >> Swim around to the small island with the Landing Pad
step
#completewith next
.cast 12283 >>|cRXP_WARN_在登陆点上使用|r|T134537:0|t[标准型闪光信号枪]|cRXP_WARN_并等待|cRXP_FRIENDLY_驾驶员希格斯·熔火|r的到来|r
.timer 40,Arcane Runes RP
.use 10444
step
#label ArcaneRunes
.goto Azshara,77.800,91.327
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_驾驶员希格斯·熔火|r
.turnin 3449 ,, Arcane Runes
.accept 3461 ,, Return to Tymor
.target Pilot Xiggs Fuselighter
step
.destroy 10444 >> 摧毁|T134537:0|t[标准型闪光信号枪]
step << Mage
#completewith next
.zone Ironforge >>传送到铁炉堡
.xp <54,1
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁克|r
.trainer >> 学习职业技能
.target Dink
.xp <54,1
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>Go to Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.trainer >> 学习职业技能
.accept 9063 ,, Torwa Pathfinder
.target Loganaar
step
#completewith FlyTanaris
.hs >> 炉石回棘齿城
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.accept 4502 ,, Volcanic Activity
.target Liv Rizzlefix
step
.goto The Barrens,62.500,38.546
>>打开|cRXP_PICK_玛尔冯的箱子|r. 拾取|cRXP_LOOT_石环|r
.complete 3444,1 
step
#label FlyTanaris
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Tanaris >> 飞往塔纳利斯
.target Bragok
.zoneskip The Barrens,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 54-55 安戈洛环形山
#next 55-56 费伍德森林 II
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 11018,8526,11955 >> 从银行取出下列物品:
>>|T133849:0|t[安戈洛的泥土] (如果你有的话) 
>>|T134527:0|t[紫色水生菇] 
>>|T133622:0|t[一包空的软泥怪采样瓶] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 10445 >>将以下物品存入银行:
>>|T132594:0|t[绘图工具包] 
.target Gimblethorn
step << skip
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 4504 ,, Super Sticky
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普琳科|r
.turnin 2641 ,, Sprinkle's Secret Ingredient
.accept 2661 ,, Delivery for Marin
.target Sprinkle
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4493 ,, March of the Silithid
.accept 4496 ,, Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马林·诺格弗格|r
.turnin 2661 ,, Delivery for Marin
.accept 2662 ,, Noggenfogger Elixir
.turnin 2662 ,, Noggenfogger Elixir
.target Marin Noggenfogger
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3444 ,, The Stone Circle
.target Marvon Rivetseeker
step
#completewith Pylons
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro>> 飞往安戈洛环形山
.target Bera Stonehammer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威利德·马绍尔|r和|cRXP_FRIENDLY_霍莱伊·马绍尔|r
.accept 3881 ,, Expedition Salvation
.goto Un'Goro Crater,43.947,7.137
.accept 3883 ,, Alien Ecology
.goto Un'Goro Crater,43.889,7.240
.target Williden Marshal
.target Hol'anyee Marshal
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克·尼米尔|r
.accept 3882 ,, Roll the Bones
.target Spark Nilminer
step
#completewith next
.use 11955 >> |cRXP_WARN_打开|r|T133622:0|t[一包空的软泥怪采样瓶]
.collect 11953,10 
step
#label Pylons
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.accept 4285 ,, The Northern Pylon
.accept 4287 ,, The Eastern Pylon
.accept 4288 ,, The Western Pylon
.target J.D. Collie
step
.goto Un'Goro Crater,43.533,8.436
>>点击|cRXP_PICK_通缉告示|r
.accept 4501 ,, Beware of Pterrordax
step
.goto Un'Goro Crater,43.615,8.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普拉格·弗劳克|r
.accept 4492 ,, Lost!
.target Spraggle Frock
step
.goto Un'Goro Crater,44.232,11.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希兹尔|r
.accept 4503 ,, Shizzle's Flyer
.target Shizzle
step
#completewith NorthPylon
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_幼双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith NorthPylon
>> 击杀|cRXP_ENEMY_翼手龙|r和|cRXP_ENEMY_小翼手龙|r. 拾取他们的|cRXP_LOOT_精细的翼手龙鳞片|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#label NorthPylon
.goto Un'Goro Crater,56.503,12.492
>>点击|cRXP_PICK_北部水晶塔|r
.complete 4285,1 
.skipgossip
step
#completewith Bait
>> 击杀|cRXP_ENEMY_翼手龙|r和|cRXP_ENEMY_小翼手龙|r. 拾取他们的|cRXP_LOOT_精细的翼手龙鳞片|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#completewith Bait
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_幼双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith Bait
>> 击杀|cRXP_ENEMY_胶质软泥怪|r和|cRXP_ENEMY_粘稠的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[纯净样本瓶]
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,68.541,36.539
>> 拾取地上的|cRXP_LOOT_食物箱|r
.complete 3881,1 
step
.goto Un'Goro Crater,77.225,49.980
>>点击|cRXP_PICK_东部水晶塔|r
.complete 4287,1 
.skipgossip
step
#label Bait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4292 ,, The Bait for Lar'korwi
.turnin 9063 ,, Torwa Pathfinder << Druid
.accept 9052 ,, Bloodpetal Poison << Druid
.target Torwa Pathfinder
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4289 ,, The Apes of Un'Goro
.target Torwa Pathfinder
step
.use 11568 >> |cRXP_WARN_打开|r|T133635:0|t[托尔瓦的麻袋]|cRXP_WARN_拾取|r|T133970:0|t[蛇颈龙肉]|cRXP_WARN_和|r|T134743:0|t[恐龙信息素]
.collect 11569,1,4292,1 
.collect 11570,1,4292,1 
step << Druid
#completewith GlandWallSample
>>打开地上的|cRXP_PICK_血瓣花苗|r. 拾取|cRXP_LOOT_血帽|r
.complete 9052,2 
step
#completewith GlandWallSample
>> 击杀|cRXP_ENEMY_胶质软泥怪|r和|cRXP_ENEMY_粘稠的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[纯净样本瓶]
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#completewith FinishBait
>> 击杀|cRXP_ENEMY_翼手龙|r和|cRXP_ENEMY_小翼手龙|r. 拾取他们的|cRXP_LOOT_精细的翼手龙鳞片|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
.goto Un'Goro Crater,79.929,49.896
>>|cRXP_WARN_在石台上使用|r|T133970:0|t[蛇颈龙肉]|cRXP_WARN_, 然后对它使用|r|T134743:0|t[恐龙信息素]|cRXP_WARN_以召唤|r|cRXP_ENEMY_拉克维|r
>> 击杀|cRXP_ENEMY_拉克维|r. 拾取他的|cRXP_LOOT_头颅|r
.use 11568 
.use 11569 
.use 11570 
.complete 4292,1 
.mob Lar'korwi
step
#label FinishBait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4292 ,, The Bait for Lar'korwi
.target Torwa Pathfinder
step
#completewith GlandWallSample
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_幼双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.3,90.4,40,0
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.1,66.2,70,0
.goto Un'Goro Crater,53.5,62.9,70,0
.goto Un'Goro Crater,52.3,69.8,70,0
.goto Un'Goro Crater,44.3,90.4
>> 击杀|cRXP_ENEMY_翼手龙|r. 拾取他们的|cRXP_LOOT_精细的翼手龙鳞片|r
>>|cRXP_WARN_你不需要现在就集齐|cRXP_LOOT_精细的翼手龙鳞片|r|r
.complete 4501,1 
.complete 4503,2 
.disablecheckbox
.mob Pterrordax
step
#label GlandWallSample
.goto Un'Goro Crater,49.93,81.70,70 >> 进入巨痕谷虫巢
.isOnQuest 4496,3883
step << Druid
#completewith ScentGland
>> 击杀|cRXP_ENEMY_格里什毒刺蝎|r和|cRXP_ENEMY_格里什异种蝎|r. 拾取他们的|cRXP_LOOT_格里什钉刺|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step
#completewith next
>>击杀|cRXP_ENEMY_格里什虫子|r. 拾取他们的|cRXP_LOOT_格里什信息素|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step
.goto Un'Goro Crater,48.671,85.322
>>|cRXP_WARN_进入巨痕谷虫巢|r
>>|cRXP_WARN_在圆环房间的中间|r|cRXP_WARN_使用|r|T134864:0|t[未使用的采集瓶]
.complete 3883,1 
step
#label ScentGland
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>击杀|cRXP_ENEMY_格里什虫子|r. 拾取他们的|cRXP_LOOT_格里什信息素|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step << Druid
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>> 击杀|cRXP_ENEMY_格里什毒刺蝎|r和|cRXP_ENEMY_格里什异种蝎|r. 拾取他们的|cRXP_LOOT_格里什钉刺|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step << Druid
#completewith UngoroAsh
>>打开地上的|cRXP_PICK_血瓣花苗|r. 拾取|cRXP_LOOT_血帽|r
.complete 9052,2 
step
#completewith WesternPylon
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_老年双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith WesternPylon
>> 击杀|cRXP_ENEMY_狂怒的翼手龙|r. 拾取他们的|cRXP_LOOT_精细的翼手龙鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith WesternPylon
>> 击杀|cRXP_ENEMY_胶质软泥怪|r和|cRXP_ENEMY_粘稠的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[纯净样本瓶]
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,38.457,66.066
>> 拾取地上的|cRXP_LOOT_研究设备|r
.complete 3881,2 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉兰克|r
.accept 974 ,, Finding the Source
.target Krakle
step
#label WesternPylon
.goto Un'Goro Crater,23.827,59.201
>>点击|cRXP_PICK_西部水晶塔|r
.complete 4288,1 
.skipgossip
step
#completewith CompletePterro
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_老年双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith CompletePterro
>> 击杀|cRXP_ENEMY_胶质软泥怪|r和|cRXP_ENEMY_粘稠的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[纯净样本瓶]
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#label CompletePterro
.goto Un'Goro Crater,20.6,60,40,70,0
.goto Un'Goro Crater,22.4,50.0,70,0
.goto Un'Goro Crater,22.2,41,0,70,0
.goto Un'Goro Crater,34.8,29.4,70,0
.goto Un'Goro Crater,39.6,42.2,70,0
.goto Un'Goro Crater,36.8,76.6,70,0
.goto Un'Goro Crater,24.6,61.6
>> 击杀|cRXP_ENEMY_狂怒的翼手龙|r. 拾取他们的|cRXP_LOOT_精细的翼手龙鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_老年双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>> 击杀|cRXP_ENEMY_胶质软泥怪|r和|cRXP_ENEMY_粘稠的软泥怪|r
>>|cRXP_WARN_对它们的尸体|r|cRXP_WARN_使用|r|T134864:0|t[纯净样本瓶]
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>> 击杀|cRXP_ENEMY_双帆龙|r和|cRXP_ENEMY_老年双帆龙|r. 拾取他们的|cRXP_LOOT_恐龙骨头|r和|cRXP_LOOT_精细的双帆龙鳞片|r
>>|cRXP_LOOT_恐龙骨头|r|cRXP_WARN_也能在地上捡到. 位置已标记在地图西南方|r
.complete 3882,1 
.goto Un'Goro Crater,31.04,77.70,0
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith next
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.67,49.33,15,0
.goto Un'Goro Crater,48.02,47.05,10,0
.goto Un'Goro Crater,48.81,45.94,10 >> |cRXP_WARN_沿着熔岩捷径一路上到火羽山山顶. 请精确地跟随指示|r
step
.goto Un'Goro Crater,49.631,45.694
.use 12472 >>|cRXP_WARN_在火羽山顶热点|r|cRXP_WARN_使用|r|T132995:0|t[克拉兰克的温度计]
.complete 974,1 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克拉兰克|r
.turnin 974 ,, Finding the Source
.accept 980 ,, The New Springs
.target Krakle
step
#label UngoroAsh
.goto Un'Goro Crater,45.4,45.2,70,0
.goto Un'Goro Crater,46,0,56.6,70,0
.goto Un'Goro Crater,56.6,55.6,70,0
.goto Un'Goro Crater,53.8,41.6,70,0
.goto Un'Goro Crater,49.8,53.4
>> 击杀|cRXP_ENEMY_灼热元素|r和|cRXP_ENEMY_有生烈焰|r. 拾取他们的|cRXP_LOOT_安戈洛灰烬|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
step << Druid
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>打开地上的|cRXP_PICK_血瓣花苗|r. 拾取|cRXP_LOOT_血帽|r
.complete 9052,2 
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9052 ,, Bloodpetal Poison
.accept 9051 ,, Toxic Test
.target Torwa Pathfinder
step << Druid
>>找到一只|cRXP_ENEMY_魔暴龙|r和|cRXP_ENEMY_铁皮魔暴龙|r. 避开|cRXP_ENEMY_霸王魔暴龙|r
>>|cRXP_WARN_你能在地图上看到他们的巡逻路线|r
>>|cRXP_WARN_通过一直|r|T136090:0|t[休眠]|cRXP_WARN_完成此任务. 你只需要一直用|r|T136090:0|t[休眠]|cRXP_WARN_, 不要放其他技能. 如果它醒了就再次|r|T136090:0|t[休眠]|cRXP_WARN_, 它们的速度是170%, 因此你无法跑赢|r|cRXP_ENEMY_魔暴龙|r
>>|cRXP_WARN_一旦它被你|r|T136090:0|t[休眠]|cRXP_WARN_就使用|r|T135125:0|t[魔暴龙之刺]
>>|cRXP_WARN_完成后就切|r|T132144:0|t[旅行形态]|cRXP_WARN_然后跑开脱战|r
.complete 9051,1 
.use 22432 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9051 ,, Toxic Test
.target Torwa Pathfinder
step
.goto Un'Goro Crater,51.909,49.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林格|r
.turnin 4492 ,, Lost!
.accept 4491 ,, A Little Help From My Friends
>>|cRXP_WARN_这将开启护送任务|r
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>> 护送|cRXP_FRIENDLY_林格|r返回马绍尔营地
.use 11804 >> |cRXP_WARN_他晕倒了就对他|r|cRXP_WARN_使用|r|T132805:0|t[斯普拉格的水壶]
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4491 ,, A Little Help From My Friends
.turnin 4501 ,, Beware of Pterrordax
.target Spraggle Frock
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克·尼米尔|r
.turnin 3882 ,, Roll the Bones
.target Spark Nilminer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威利德·马绍尔|r和|cRXP_FRIENDLY_霍莱伊·马绍尔|r
.turnin 3883 ,, Alien Ecology
.goto Un'Goro Crater,43.889,7.240
.turnin 3881 ,, Expedition Salvation
.goto Un'Goro Crater,43.947,7.137
.target Hol'anyee Marshal
.target Williden Marshal
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.turnin 4285 ,, The Northern Pylon
.turnin 4287 ,, The Eastern Pylon
.turnin 4288 ,, The Western Pylon
.accept 4321 ,, Making Sense of It
.turnin 4321 ,, Making Sense of It
.target J.D. Collie
step
.destroy 11482 >> 摧毁|T133740:0|t[水晶塔使用手册]
step
.goto Un'Goro Crater,44.232,11.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希兹尔|r
.turnin 4503 ,, Shizzle's Flyer
.target Shizzle
step
.group
.goto Un'Goro Crater,46.378,13.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔纳·雷塔维|r
.accept 4243 ,, Chasing A-Me 01
.target Karna Remtravel
step
.group
#completewith next
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >> 前往蘑菇石
step
.group 2
.goto Un'Goro Crater,63.66,16.56,70,0
.goto Un'Goro Crater,65.47,16.48
>> 击杀|cRXP_ENEMY_安戈洛猩猩|r, |cRXP_ENEMY_安戈洛巨猩猩|r和|cRXP_ENEMY_安戈洛大猩猩|r. 拾取他们的|cRXP_LOOT_皮|r
>>|cRXP_ENEMY_安戈洛猩猩|r|cRXP_WARN_在低血量时会呼叫周围的怪来帮忙, 尽量确保周围没有其他猩猩|r
>>|cRXP_ENEMY_安戈洛巨猩猩|r|cRXP_WARN_在低血量时会|r|T136224:0|t[激怒]
>>|cRXP_ENEMY_安戈洛大猩猩|r|cRXP_WARN_会施放高伤害的|r|T136105:0|t[雷霆一击]
.complete 4289,1 
.complete 4289,2 
.complete 4289,3 
.mob Un'Goro Gorilla
.mob Un'Goro Stomper
.mob Un'Goro Thunderer
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4289 ,, The Apes of Un'Goro
.accept 4301 ,, The Mighty U'cha
.target Torwa Pathfinder
step << skip
#som
#phase 3-6
.goto Un'Goro Crater,46.86,15.11,100,0
.goto Un'Goro Crater,42.03,21.77,100,0
.goto Un'Goro Crater,49.54,20.49,100,0
.goto Un'Goro Crater,52.00,27.21,100,0
.goto Un'Goro Crater,64.11,24.14,100,0
.goto Un'Goro Crater,59.65,31.29
>>击杀此区域的焦油兽. 拾取焦油
>>注意! 焦油兽王会施放纠缠根须 << !Warrior !Rogue !Paladin
>>注意! 焦油兽王会施放纠缠根须, and all 焦油兽 have a thorns-like effect where you can be 缴械ed for 4 seconds << Warrior/Rogue/Paladin
.complete 4504,1 
step
.group
#completewith AMe
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >> 前往蘑菇石
step
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 ,, Chasing A-Me 01
.itemcount 10561,<1 
.target A-Me 01
step
#label AMe
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_A-Me 01|r
>>|cRXP_WARN_暂时不要接受后续任务|r
.turnin 4243 ,, Chasing A-Me 01
.itemcount 10561,1 
.target A-Me 01
step
.group
.goto Un'Goro Crater,68.49,12.18
>> 击杀|cRXP_ENEMY_尤尔查|r. 拾取他的|cRXP_LOOT_皮|r
.complete 4301,1 
.mob U'cha
step
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_A-Me 01|r
.accept 4244 ,, Chasing A-Me 01
.turnin 4244 ,, Chasing A-Me 01
.accept 4245 ,, Chasing A-Me 01
.itemcount 10561,1 
.target A-Me 01
step
.isQuestTurnedIn 4244
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_A-Me 01|r
.accept 4245 ,, Chasing A-Me 01
.target A-Me 01
step
.group 2
.isOnQuest 4245
.goto Un'Goro Crater,46.378,13.444
>> 护送|cRXP_FRIENDLY_A-Me 01|r回到马绍尔营地的|cRXP_FRIENDLY_卡尔纳·雷塔维|r处
.complete 4245,1 
.target A-Me 01
step
.group
.isQuestComplete 4245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡尔纳·雷塔维|r
.turnin 4245 ,, Chasing A-Me 01
.target Karna Remtravel
step
.isQuestTurnedIn 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>> 拾取地上的|cRXP_LOOT_安戈洛的泥土|r
.collect 11018,5,4496,1 
step
.isQuestAvailable 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>> 拾取地上的|cRXP_LOOT_安戈洛的泥土|r
.collect 11018,25,4496,1
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4301 ,, The Mighty U'cha
.target Torwa Pathfinder
step
.abandon 4301 ,, The Mighty U'cha
step
.abandon 4243 ,, Chasing A-Me 01
step
.solo
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Tanaris >> 飞往加基森
.target Gryfe
.zoneskip Un'Goro Crater,1
step
.group
#completewith next
.goto Tanaris,50.88,26.96
.subzone 976 >> 前往塔纳利斯
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4496 ,, Bungle in the Jungle
.target Alchemist Pestlezugg
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 12906,12383 >> 从银行取出下列物品:
>>|T134754:0|t[净化过的月亮井水] 
>>|T132926:0|t[月光羽毛] (如果你有的话) 
.target Gimblethorn
step
.isOnQuest 4513
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 11954 >>将以下物品存入银行:
>>|T134836:0|t[纯净的样本] 
.target Gimblethorn
step << skip
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 ,, Super Sticky
step
#era/som
.hs >> 炉石回棘齿城
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
#era/som
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.turnin 4502 ,, Volcanic Activity
.target Liv Rizzlefix
step << Mage
#completewith Morrowgrain
.zone Darnassus >> 传送到达纳苏斯
step << !Mage
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Teldrassil >> 飞往泰达希尔
.target Bragok
.zoneskip The Barrens,1
step << !Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 ,, Moontouched Wildkin
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 978 ,, Moontouched Wildkin
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_达蕾恩·轻风|r对话
.accept 5250 ,, Starfall
.target Daryn Lightwind
step << !Mage
#completewith Morrowgrain
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.goto Darnassus,36.6,42.4,60,0
.goto Darnassus,37.6,16.2,60,0
.goto Darnassus,52.6,19.2,60,0
.goto Darnassus,56.6,8.8,50,0
.goto Darnassus,65.4,15.8,50,0
.goto Darnassus,60.8,23.4,50,0
.goto Darnassus,62.4,55.6,50,0
.goto Darnassus,68.0,59.2,50,0
.goto Darnassus,63.8,72.2,50,0
.goto Darnassus,60.2,67.8,50,0
.goto Darnassus,49.2,80.8,50,0
.goto Darnassus,39.6,74.6,50,0
.goto Darnassus,38.6,47.0,50,0
.goto Darnassus,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫拉德·月巡者|r
>>|cRXP_FRIENDLY_赫拉德·月巡者|r|cRXP_WARN_在整个达纳苏斯巡逻|r
.accept 1047 ,, The New Frontier
.unitscan Herald Moonstalker
step
.goto Darnassus,64.021,23.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱顿·暗影|r
>>做达纳苏斯交布声望任务. 你每种布需要3组. 如果你不能完成全部3个任务就先跳过此步
.turnin 7792 ,, A Donation of Wool
.turnin 7798 ,, A Donation of Silk
.turnin 7799 ,, A Donation of Mageweave
.turnin 7800 ,, A Donation of Runecloth
.target Raedon Duskstriker
step
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板塞琳尼|r
.accept 3763 ,, Assisting Arch Druid Staghelm
.target Innkeeper Saelienne
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 3763 ,, Assisting Arch Druid Staghelm
.accept 3764 ,, Un'Goro Soil
.turnin 1047 ,, The New Frontier
.accept 6761 ,, The New Frontier
.target Arch Druid Fandral Staghelm
step
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_耶纳尔|r
.turnin 3764 ,, Un'Goro Soil
.target Jenal
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.accept 3781 ,, Morrowgrain Research
.target Arch Druid Fandral Staghelm
step
#label Morrowgrain
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在中层与|cRXP_FRIENDLY_玛斯雷·驭熊者|r对话
.turnin 3781 ,, Morrowgrain Research
.turnin 6761 ,, The New Frontier
.accept 6762 ,, Rabine Saturna
.target Mathrengyl Bearwalker
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
.trainer >> 学习职业技能
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿雷亚斯塔·刃咏|r
.goto Darnassus,58.718,34.905
.trainer >> 学习职业技能
.target Arias'ta Bladesinger
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_贾德莉亚|r
.trainer >> 学习职业技能
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞尤娜|r
.trainer >> 学习职业技能
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_祖卡斯特|r
.trainer >> 学习职业技能
.target Jocaste
step
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 ,, Moontouched Wildkin
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 978 ,, Moontouched Wildkin
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_达蕾恩·轻风|r对话
.accept 5250 ,, Starfall
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Felwood >> 飞往费伍德森林
.target Vesprystus
.zoneskip Teldrassil,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 55-56 费伍德森林 II
#next 56-57 燃烧平原
step
#completewith next
.goto Felwood,55.78,17.11
.subzone 1768 >> 前往铁木山洞
step
.goto Felwood,57.30,17.79
>> 击杀|cRXP_ENEMY_扭木食苔者|r和|cRXP_ENEMY_扭木撕裂者|r. 拾取他们的|cRXP_LOOT_血琥珀|r
.complete 4101,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
#completewith next
.goto Felwood,51.21,82.10
.subzone 2479 >> 前往翡翠圣地
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5159 ,, Cleansed Water Returns to Felwood
.target Greta Mosshoof
step
.group
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5165 ,, Dousing the Flames of Protection
.target Greta Mosshoof
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔诺恩·红羽|r
.accept 5156 ,, Verifying the Corruption
.target Taronn Redfeather
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.accept 4421 ,, The Corruption of the Jadefire
.goto Felwood,51.350,81.511
.target Eridan Bluewind
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
.turnin 4101 ,, Cleansing Felwood
.target Arathandris Silversky
step
.isQuestTurnedIn 4101
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
>>|cRXP_WARN_选择:|r "我需要一个塞纳里奥信标."
.collect 11511,1 
.target Arathandris Silversky
step
.isQuestTurnedIn 4101
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>> 击杀|cRXP_ENEMY_死木战士|r, |cRXP_ENEMY_死木寻路者|r和|cRXP_ENEMY_死木园丁|r. 拾取他们的|cRXP_LOOT_被污染的灵魂碎片|r
.collect 11515,6,5882,1 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.isQuestTurnedIn 4101
.goto Felwood,54.20,86.80
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
.accept 5882 ,, Salve via Hunting
.turnin 5882 ,, Salve via Hunting
step
.isQuestTurnedIn 4101
#completewith next
+从现在开始你就能净化地上的|cRXP_PICK_被腐化的轻歌花|r了. 净化后, 点击|cRXP_PICK_净化过的轻歌花|r会给你一个持续1小时的Buff, 可以提供5%暴击和15点全属性.
>>需要消耗2个|T132804:0|t[塞纳里奥植物药膏]
step
.group 2
>> 击杀|cRXP_ENEMY_碧火魔仆|r, |cRXP_ENEMY_碧火巡影者|r, |cRXP_ENEMY_碧火盗贼|r和|cRXP_ENEMY_萨瓦瑟拉斯|r
>>|cRXP_WARN_请万分小心! 这里很危险|r
>>|cRXP_ENEMY_碧火魔仆|r|cRXP_WARN_会施放|r|T136135:0|t[残废术]|cRXP_WARN_能够降低你的移速|r
>>|cRXP_ENEMY_碧火巡影者|r|cRXP_WARN_处于|r|T132320:0|t[潜行]|cRXP_WARN_状态并在附近巡逻, 同时他们也能施放|r|T136093:0|t[减速毒药]|cRXP_WARN_持续25秒|r
.complete 4421,1 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob Jadefire Felsworn
.mob Jadefire Shadowstalker
.mob Jadefire Rogue
.mob Xavathras
step
.group
#completewith eStart
.goto Felwood,35.367,58.376
.subzone 1770 >> 前往暗影堡
step
.group 2
#completewith next
>>点击4个地上的|cRXP_PICK_火盆|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.group 2
>> 击杀|cRXP_ENEMY_加德纳尔执行者|r, |cRXP_ENEMY_加德纳尔暗法师|r, |cRXP_ENEMY_加德纳尔术士|r和|cRXP_ENEMY_加德纳尔军团士兵|r. 拾取|T134235:0|t[|cRXP_LOOT_血红钥匙|r]
>>|cRXP_WARN_使用|T134235:0|t[|cRXP_LOOT_血红钥匙|r]并接受任务|r
>>|cRXP_WARN_这将开启护送任务. 即使你还没完成灭火任务也直接开启护送|r
.collect 13140,1,5202 
.accept 5202 ,, A Strange Red Key
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
step
.group 2
#label eStart
.goto Felwood,36.207,55.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_被俘虏的亚科纳琳|r
.turnin 5202 ,, A Strange Red Key
.accept 5203 ,, Rescue From Jaedenar
.target Captured Arko'narin
step
.group 2
#completewith next
>>点击4个地上的|cRXP_PICK_火盆|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.group 2
.goto Felwood,35.44,59.01
>>|cRXP_WARN_护送|cRXP_FRIENDLY_亚科纳琳|r穿越暗影堡. 一旦你抵达并靠近最后一个|cRXP_PICK_火盆|r, 就会刷出3个|cRXP_ENEMY_恶魔守卫|r|r
>>|cRXP_WARN_在离开暗影堡后, 你需要击杀|cRXP_ENEMY_特雷·莱弗治之灵|r. 尽量让|cRXP_FRIENDLY_亚科纳琳|r扛着|r
.complete 5203,1 
.target Arko'narin
.mob Spirit of Trey Lightforge
step
.group 2
>>点击4个地上的|cRXP_PICK_火盆|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.group
.isQuestComplete 5165
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5165 ,, Dousing the Flames of Protection
.accept 5242 ,, A Final Blow
.target Greta Mosshoof
step
.group
.isQuestTurnedIn 5165
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5242 ,, A Final Blow
.target Greta Mosshoof
step
.group
.abandon 5165 ,, Dousing the Flames of Protection
step
.group
.isQuestComplete 5203
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5203 ,, Rescue From Jaedenar
.accept 5204 ,, Retribution of the Light
.target Jessir Moonbow
step
.group
.isQuestTurnedIn 5203
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰希尔·月弓|r
.accept 5204 ,, Retribution of the Light
.target Jessir Moonbow
step
.group
.isQuestComplete 4421
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4421 ,, The Corruption of the Jadefire
.accept 4906 ,, Further Corruption
.target Eridan Bluewind
step
.group
.isQuestTurnedIn 4421
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.accept 4906 ,, Further Corruption
.target Eridan Bluewind
step
.group
#completewith ShadowLord
.goto Felwood,35.367,58.376
.subzone 1770 >> 前往暗影堡
step
.group 2
.isQuestTurnedIn 5203
.goto Felwood,38.499,50.414
>> 击杀|cRXP_ENEMY_拉凯雅|r
.complete 5204,1 
.mob Rakaiah
step
.group 2
.isQuestTurnedIn 5203
.goto Felwood,38.499,50.414
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特雷·莱弗治的残骸|r
.turnin 5204 ,, Retribution of the Light
.accept 5385 ,, The Remains of Trey Lightforge
.target Remains of Trey Lightforge
step
.group 2
#label ShadowLord
.isQuestTurnedIn 5165
.goto Felwood,38.814,46.782
>>|cRXP_WARN_Continue further into 暗影堡|r
>> 击杀|cRXP_ENEMY_萨莉亚|r, |cRXP_ENEMY_米莱恩|r和|cRXP_ENEMY_暗影领主费尔丹|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_WARN_|cRXP_ENEMY_萨莉亚|r会|r|T136206:0|t[精神控制]|cRXP_WARN_, 优先击杀她|r
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
.mob Salia
.mob Moora
.mob Shadow Lord Fel'dan
step
.group
#completewith next
.goto Felwood,38.744,47.008
+|cRXP_WARN_在|cRXP_ENEMY_暗影领主费尔丹|r边上的瓮上进行登出跳过操作以传送到铁木林地|r
.link https://www.twitch.tv/videos/1219250841?t=02h06m57s >> |cRXP_WARN_点击此处查看视频参考|r
.subzoneskip 1770,1
step
.group
.isQuestTurnedIn 4421
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>> 击杀|cRXP_ENEMY_萨瓦里克|r. 拾取|T133942:0|t[|cRXP_LOOT_萨瓦里克长笛|r]
>>|cRXP_WARN_使用|T133942:0|t[|cRXP_LOOT_萨瓦里克长笛|r]并接受任务|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 ,, Flute of Xavaric
.use 11668 
.mob Xavaric
step
.group
.isQuestTurnedIn 4421
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>> 击杀|cRXP_ENEMY_碧火唤魔者|r, |cRXP_ENEMY_碧火背叛者|r和|cRXP_ENEMY_碧火欺诈者|r. 拾取他们的|cRXP_LOOT_碧火魔符|r
.complete 4906,1 
.complete 4906,2 
.complete 4906,3 
.complete 939,1 
.mob Jadefire Hellcaller slain (8)
.mob Jadefire Betrayer slain (8)
.mob Jadefire Trickster slain (8)
step
>> 击杀|cRXP_ENEMY_热能野兽|r和|cRXP_ENEMY_热能恐兽|r
>>|cRXP_WARN_注意在碎痕谷巡逻的精英|cRXP_ENEMY_地狱火|r|r
.complete 5156,1 
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,2 
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,3 
.goto Felwood,41.535,43.007
.mob Entropic Beast
.mob Entropic Horror
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塔诺恩·红羽|r
.turnin 5156 ,, Verifying the Corruption
.target Taronn Redfeather
step
.group
.isQuestComplete 5242
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5242 ,, A Final Blow
.target Greta Mosshoof
step
.group
.isOnQuest 5385
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5385 ,, The Remains of Trey Lightforge
.target Jessir Moonbow
step
.group
.isQuestComplete 4906
.isQuestComplete 939
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4906 ,, Further Corruption
.turnin 939 ,, Flute of Xavaric
.target Eridan Bluewind
step
.group
.isQuestComplete 4906
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4906 ,, Further Corruption
.target Eridan Bluewind
step
.group
.isQuestComplete 939
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 939 ,, Flute of Xavaric

.target Eridan Bluewind
step
.abandon 5242 ,, A Final Blow
step
.abandon 5385 ,, The Remains of Trey Lightforge
step
.abandon 4421 ,, The Corruption of the Jadefire
step << Warlock
.dungeon ST
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.accept 8422 ,, Trolls of a Feather
.target Impsy
step
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
.accept 8461 ,, Deadwood of the North
.target Nafien
step
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
>> 击杀|cRXP_ENEMY_死木守卫|r, |cRXP_ENEMY_死木复仇者|r和|cRXP_ENEMY_死木萨满祭司|r
>>|cRXP_WARN_如果你打到了|T136232:0|t[|cRXP_LOOT_死木仪祭图腾|r], 先不要接受任务|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Avenger
.mob Deadwood Shaman
step
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
.xp 55 >> 刷熊怪直到55级
step
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
.turnin 8461 ,, Deadwood of the North
.accept 8465 ,, Speak to Salfa
.target Nafien
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳菲恩|r
>>|cRXP_WARN_如果你有超过5个|r|T132926:0|t[死木头饰羽毛]|cRXP_WARN_就可以上交以换取木喉要塞声望|r
.dailyturnin 8467 >> 提交 给纳菲恩的羽毛
.itemcount 21377,>5 
.target Nafien
step
#completewith next
.goto Felwood,65.48,3.47,20 >> 穿过木喉要塞去找|cRXP_FRIENDLY_克尔达|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_克尔达|r|cRXP_WARN_在木喉要塞下层道路上巡逻|r
.use 20741 >>|cRXP_WARN_使用|T136232:0|t[|cRXP_LOOT_死木仪祭图腾|r]并接受任务|r
.accept 8470 ,, Deadwood Ritual Totem
.turnin 8470 ,, Deadwood Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅罗什|r
.accept 6031 ,, Runecloth
.turnin 6031 ,, Runecloth
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#completewith next
.goto Winterspring,27.736,34.499,20 >> 穿过木喉要塞去找冬泉谷的|cRXP_FRIENDLY_萨尔法|r
step
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔法|r
.turnin 8465 ,, Speak to Salfa
.accept 8464 ,, Winterfall Activity
.target Salfa
step
#softcoreserver
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_不要接受后续任务: 墓地相见|r
.turnin 3909 ,, The Videre Elixir
.turnin 980 ,, The New Springs
.accept 5082 ,, Threat of the Winterfall
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 980 ,, The New Springs
.accept 5082 ,, Threat of the Winterfall
.target Donova Snowden
step
#softcoreserver
.destroy 11243 >> 摧毁你所有的|T134813:0|t[视灵药剂]
step
#hardcoreserver
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了[视灵药剂]任务线,现在在官方怀旧服上该任务不再会导致你的角色死亡|r
.turnin 3909 ,, The Videre Elixir
.accept 3912 ,, Meet at the Grave
.turnin 980 ,, The New Springs
.accept 5082 ,, Threat of the Winterfall
.target Donova Snowden
step
#hardcoreserver
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了[视灵药剂]任务线,现在在官方怀旧服上该任务不再会导致你的角色死亡|r
.accept 3912 ,, Meet at the Grave
.turnin 980 ,, The New Springs
.accept 5082 ,, Threat of the Winterfall
.target Donova Snowden
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 980 ,, The New Springs
.accept 5082 ,, Threat of the Winterfall
.target Donova Snowden
step
.goto Winterspring,42.3,42.6,70,0
.goto Winterspring,33.8,36.2,70,0
.goto Winterspring,30.1,35.6,90,0
.goto Winterspring,41.3,43.3
>> 击杀|cRXP_ENEMY_冬泉探路者|r, |cRXP_ENEMY_冬泉巢穴守卫|r和|cRXP_ENEMY_冬泉图腾师|r. 拾取|T134865:0|t[|cRXP_LOOT_空的火酒瓶|r]
.use 12771 >>|cRXP_WARN_使用|T134865:0|t[|cRXP_LOOT_空的火酒瓶|r]并接受任务|r
>>|cRXP_WARN_先不管杀|cRXP_ENEMY_冬泉熊怪|r的任务, 打出|r|T134865:0|t[|cRXP_LOOT_空的火酒瓶|r]|cRXP_WARN_就离开|r
.collect 12771,1,5083,1 
.accept 5083 ,, Winterfall Firewater
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5083 ,, Winterfall Firewater
.accept 5084 ,, Falling to Corruption
.target Donova Snowden
step
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>> 拾取地上的|cRXP_LOOT_月光羽毛|r
.complete 978,1
.isOnQuest 978
step
#completewith next
.goto Winterspring,61.348,38.973
.subzone 2255 >> 前往永望镇
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格雷戈·格雷斯通|r和|cRXP_FRIENDLY_洁西卡·雷德帕斯|r
.accept 6028 ,, The Everlook Report
.accept 6030 ,, Duke Nicholas Zverenhoff
.goto Winterspring,61.348,38.973
.accept 5601 ,, Sister Pamela
.goto Winterspring,61.281,38.981
.target Gregor Greystone
.target Jessica Redpath
step
.hs >> 炉石回棘齿城
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.zoneskip Winterspring,1
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兹拉克|r和|cRXP_FRIENDLY_兹科尔|r
.bankdeposit 15788,15790,20741 >>将以下物品存入银行:
>>|T134942:0|t[永望镇报告] 
>>|T133737:0|t[灵语研究] 
>>|T136232:0|t[死木仪祭图腾] (如果有的话) 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兹拉克|r和|cRXP_FRIENDLY_兹科尔|r
.bankwithdraw 10575,11954,10445 >> 从银行取出下列物品:
>>|T134430:0|t[黑龙皮] (如果有的话) 
>>|T134836:0|t[纯净的样本] 
>>|T132594:0|t[绘图工具包] 
.target Fuzruckle
.target Zikkel
step 
#hardcoreserver
.isOnQuest 3912
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Tanaris >> 飞往塔纳利斯
.target Bragok
step
#hardcoreserver
.isOnQuest 3912
#completewith next
.goto Tanaris,53.99,28.63
.cast 14050 >> |cRXP_WARN_在塔纳利斯墓地|r|cRXP_WARN_使用|r|T134813:0|t[视灵药剂]
>>|cRXP_WARN_暴雪已调整此任务. 在官方硬核服务器上使用此药剂并不会杀死你|r
.use 11243 
step
#hardcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须在死亡状态下才能看到|r|cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_暴雪已调整此任务. 在官方硬核服务器上使用此药剂并不会杀死你|r
.use 11243 
.turnin 3912 ,, Meet at the Grave
.accept 3913 ,, A Grave Situation
.target Gaeriyan
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须在死亡状态下才能看到|r|cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_暴雪已调整此任务. 在官方硬核服务器上使用此药剂并不会杀死你|r
.use 11243 
.accept 3913 ,, A Grave Situation
.target Gaeriyan
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>点击|cRXP_PICK_明显的墓碑|r
.turnin 3913 ,, A Grave Situation
.accept 3914 ,, Linken's Sword
step
#hardcoreserver
#completewith next
.destroy 11243 >> 摧毁所有剩余的|T134813:0|t[视灵药剂]
step
.isQuestTurnedIn 3912
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro >> 飞往安戈洛环形山
.target Bera Stonehammer
.zoneskip Tanaris,1
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3914 ,, Linken's Sword
.accept 3941 ,, A Gnome's Assistance
.target Linken
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.turnin 3941 ,, A Gnome's Assistance
.timer 25,A Gnome's Assistance RP
.accept 3942 ,, Linken's Memory
.target J.D. Collie
step << Druid 
.dungeon ST
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Un'Goro >> 飞往安戈洛环形山
.target Bragok
.zoneskip The Barrens,1
step << Druid
.dungeon ST
.isQuestTurnedIn 9051
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 9053 ,, A Better Ingredient
.target Torwa Pathfinder
step << !Mage
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_葛莱夫|r
.fly Theramore >> 飞往尘泥沼泽
.target Gryfe
.zoneskip Un'Goro Crater,1
step << !Mage 
.dungeon !ST << Druid
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Theramore >> 飞往尘泥沼泽
.target Bragok
.zoneskip The Barrens,1
step << !Mage
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >> 乘船从塞拉摩前往湿地
step << !Mage
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >> 飞往铁炉堡
.target Shellei Brondir
step << Mage
.zone Ironforge >> 传送到铁炉堡
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 56-57 燃烧平原
#next 57-58 西/东瘟疫之地
step << Mage
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法师泰摩尔|r
.turnin 3461 ,, Return to Tymor
.isOnQuest 3461
.target Tymor
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉里斯·空轮|r
.turnin 4513 ,, A Little Slime Goes a Long Way
.target Laris Geardawdle
step << !Mage
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法师泰摩尔|r
.turnin 3461 ,, Return to Tymor
.isOnQuest 3461
.target Tymor
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.accept 3702 ,, The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.skipgossip
.complete 3702,1 
.target Royal Historian Archesonus
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.turnin 3702 ,, The Smoldering Ruins of Thaurissan
.accept 3701 ,, The Smoldering Ruins of Thaurissan
.target Royal Historian Archesonus
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板洛雷·火酒|r
.home Ironforge >> 绑定炉石到铁炉堡
.target Innkeeper Firebrew
.zoneskip Ironforge,1
step
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Burning Steppes>> 飞往燃烧平原
.target Gryth Thurden
.zoneskip Ironforge,1
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥拉留斯|r
.accept 4283 ,, FIFTY! YEP!
.accept 3824 ,, Gor'tesh the Brute Lord
.target Oralius
step
.group
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫林迪斯·河角|r
.accept 4182 ,, Dragonkin Menace
.target Helendis Riverhorn
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >> 前往烈焰峰
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁奇·斯迪波尔|r和|cRXP_FRIENDLY_麦克斯沃特·尤柏格林|r
.accept 4726 ,, Broodling Essence
.goto Burning Steppes,65.236,24.007
.accept 4296 ,, Tablet of the Seven
.goto Burning Steppes,65.152,23.911
.target Tinkee Steamboil
.target Maxwort Uberglint
step
.group 3
#completewith BroodlingEssence
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
>> 击杀|cRXP_ENEMY_黑色小龙|r, |cRXP_ENEMY_黑色龙裔|r, |cRXP_ENEMY_黑色龙人|r和1只|cRXP_ENEMY_黑龙|r
.complete 4182,1 
.complete 4182,2 
.complete 4182,4 
.complete 4182,3 
.isOnQuest 4182
.mob Black Broodling
.mob Black Dragonspawn
.mob Black Drake
.mob Black Wyrmkin
step
#completewith next
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
.use 12284 >> |cRXP_WARN_对|cRXP_ENEMY_黑色小龙|r|cRXP_WARN_使用|r|T133001:0|t[龙灵采集器900型], 然后击杀它们. 注意, 承受伤害将会打断施放|r
>> 在它们死后拾取地上的|cRXP_LOOT_雏龙精华|r
.complete 4726,1 
.mob Black Broodling
step
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.accept 4022 ,, A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
step
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>选择: "赛勒斯，我向你出示我的证据."
.complete 4022,1 
.turnin 4022 ,, A Taste of Flame
.itemcount 10575,1 
.target Cyrus Therepentous
step
#label BroodlingEssence
.goto Burning Steppes,91.64,33.51,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
.use 12284 >> |cRXP_WARN_对|cRXP_ENEMY_黑色小龙|r|cRXP_WARN_使用|r|T133001:0|t[龙灵采集器900型], 然后击杀它们. 注意, 承受伤害将会打断施放|r
>> 在它们死后拾取地上的|cRXP_LOOT_雏龙精华|r
.complete 4726,1 
.mob Black Broodling
step
.group 3
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
>> 击杀|cRXP_ENEMY_黑色小龙|r, |cRXP_ENEMY_黑色龙裔|r, |cRXP_ENEMY_黑色龙人|r和1只|cRXP_ENEMY_黑龙|r
.complete 4182,1 
.complete 4182,2 
.complete 4182,4 
.complete 4182,3 
.isOnQuest 4182
.mob Black Broodling
.mob Black Dragonspawn
.mob Black Drake
.mob Black Wyrmkin
step
#completewith next
>>点击地上的|cRXP_PICK_索瑞森圣物|r
.complete 3701,1 
step
.goto Burning Steppes,54.121,40.757
>>点击|cRXP_PICK_七贤石板|r. 拾取|cRXP_LOOT_石板拓文|r
.complete 4296,1 
.skipgossip
step
.goto Burning Steppes,54.2,38.3,60,0
.goto Burning Steppes,65.6,43.9,60,0
.goto Burning Steppes,63.5,33.8,60,0
.goto Burning Steppes,57.4,36.4
>>点击地上的|cRXP_PICK_索瑞森圣物|r
.complete 3701,1 
step
#completewith next
>> 击杀|cRXP_ENEMY_黑石兽人|r和|cRXP_ENEMY_座狼|r. 拾取他们的|cRXP_LOOT_黑石奖章|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
step
.goto Burning Steppes,39.21,55.27
>> 击杀|cRXP_ENEMY_戈泰什|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 3824,1 
.mob Gor'tesh
step
.goto Burning Steppes,39.21,55.27,0
.goto Burning Steppes,41.8,35.4,0
.goto Burning Steppes,49.6,55.4,0
.goto Burning Steppes,50.6,61.8,0
.goto Burning Steppes,55.4,54.6,0
.goto Burning Steppes,39.21,55.27,60,0
.goto Burning Steppes,49.6,55.4,0,60,0
.goto Burning Steppes,50.6,61.8,0,60,0
.goto Burning Steppes,55.4,54.6,0,60,0
.goto Burning Steppes,48.8,59.6
>> 击杀|cRXP_ENEMY_黑石兽人|r和|cRXP_ENEMY_座狼|r. 拾取他们的|cRXP_LOOT_黑石奖章|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥拉留斯|r
.turnin 4283 ,, FIFTY! YEP!
.turnin 3824 ,, Gor'tesh the Brute Lord
.accept 3825 ,, Ogre Head On A Stick = Party
.target Oralius
step
.group
.isQuestComplete 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫林迪斯·河角|r
.turnin 4182 ,, Dragonkin Menace
.accept 4183 ,, The True Masters
.target Helendis Riverhorn
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_赫林迪斯·河角|r
.accept 4183 ,, The True Masters
.target Helendis Riverhorn
step
.group
.abandon 4182 ,, Dragonkin Menace
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博古斯·粗臂|r
.fly Redridge >> 飞往赤脊山
.target Borgus Stoutarm
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_所罗门镇长|r
.turnin 4183 ,, The True Masters
.accept 4184 ,, The True Masters
.target Magistrate Solomon
step
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >> 飞往暴风城
.target Ariena Stormfeather
.zoneskip Redridge Mountains,1
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r
.accept 6182 ,, The First and the Last
.turnin 4184 ,, The True Masters
.accept 4185 ,, The True Masters
.target Highlord Bolvar Fordragon
.xp <56,1
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r
.turnin 4184 ,, The True Masters
.accept 4185 ,, The True Masters
.target Highlord Bolvar Fordragon
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.102,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡特拉娜·普瑞斯托女士|r
.complete 4185,1 
.skipgossip
.target Lady Katrana Prestor
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r
.turnin 4185 ,, The True Masters
.accept 4186 ,, The True Masters
.target Highlord Bolvar Fordragon
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 前往楼上寻找|cRXP_FRIENDLY_马迪亚斯·肖尔|r
step
.group
.isQuestTurnedIn 4182
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.turnin 6182 ,, The First and the Last
.accept 6183 ,, Honor the Dead
.turnin 6183 ,, Honor the Dead
.accept 6184 ,, Flint Shadowmore
.target Master Mathias Shaw
.xp <56,1
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Redridge>> 飞往赤脊山
.zoneskip Stormwind City,1
.target Dungar Longdrink
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_所罗门镇长|r
.turnin 4186 ,, The True Masters
.accept 4223 ,, The True Masters
.target Magistrate Solomon
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Burning Steppes >> 飞往燃烧平原
.zoneskip Redridge Mountains,1
.target Ariena Stormfeather
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦克斯韦尔元帅|r
.turnin 4223 ,, The True Masters
.accept 4224 ,, The True Masters
.target Marshal Maxwell
step
.destroy 11467 >> 摧毁所有剩余的|T133439:0|t[黑石奖章]
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >> 前往烈焰峰
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_丁奇·斯迪波尔|r和|cRXP_FRIENDLY_麦克斯沃特·尤柏格林|r
.turnin 4726 ,, Broodling Essence
.accept 4808 ,, Felnok Steelspring
.goto Burning Steppes,65.236,24.007
.turnin 4296 ,, Tablet of the Seven
.goto Burning Steppes,65.152,23.911
.target Tinkee Steamboil
.target Maxwort Uberglint
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,65.012,23.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_狼狈不堪的约翰|r
.complete 4224,1 
.skipgossip
.target Ragged John
step
.goto Burning Steppes,80.997,46.790
>>点击山顶的|cRXP_PICK_软土堆|r
.complete 3825,1 
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥拉留斯|r
.turnin 3825 ,, Ogre Head On A Stick = Party
.target Oralius
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦克斯韦尔元帅|r
.turnin 4224 ,, The True Masters
.target Marshal Maxwell
step
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博古斯·粗臂|r
.fly Stormwind >> 飞往暴风城
.target Borgus Stoutarm
step
.goto Stormwind City,44.274,73.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_Clavicus Knavingham|r对话
>>做暴风城布匹声望任务. 你每种布需要3组. 如果你不能完成全部3个任务就先跳过此步
.turnin 7791 ,, A Donation of Wool
.turnin 7793 ,, A Donation of Silk
.turnin 7794 ,, A Donation of Mageweave
.turnin 7795 ,, A Donation of Runecloth
.target Clavicus Knavingham
step
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r
.accept 6182 ,, The First and the Last
.target Highlord Bolvar Fordragon
.xp <56,1
step
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >> 进入军情七处. 前往楼上寻找|cRXP_FRIENDLY_马迪亚斯·肖尔|r
step
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_马迪亚斯·肖尔|r
.turnin 6182 ,, The First and the Last
.accept 6183 ,, Honor the Dead
.turnin 6183 ,, Honor the Dead
.accept 6184 ,, Flint Shadowmore
.target Master Mathias Shaw
.xp <56,1
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Spackle Thornberry
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >> 学习职业技能
.target Sheldras Moontree
step
.hs >> 炉石回铁炉堡
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.zoneskip Stormwind City,1
step
.goto Ironforge,32.209,63.266
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛泰姆中尉|r
.accept 7261 ,, The Sovereign Imperative 
.target Lieutenant Rotimer
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 15788,15790 >> 从银行取出下列物品:
>>|T134942:0|t[永望镇报告] 
>>|T133737:0|t[灵语研究] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 12438 >>将以下物品存入银行:
>>|T133469:0|t[丁奇的信] 
.target Bailey Stonemantle
step
#sticky
.goto Ironforge,74.082,48.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴巴罗·阿克巴斯|r
>>做诺莫瑞根布匹声望任务. 你每种布需要3组. 如果你不能完成全部3个任务就先跳过此步
.turnin 7807 ,, A Donation of Wool
.turnin 7808 ,, A Donation of Silk
.turnin 7809 ,, A Donation of Mageweave
.turnin 7811 ,, A Donation of Runecloth
.zoneskip Ironforge,1
.target Bubulo Acerbus
step
#sticky
.goto Ironforge,43.224,31.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米斯蒂娜·钢盾|r
>>做铁炉堡布匹声望任务. 你每种布需要3组. 如果你不能完成全部3个任务就先跳过此步
.turnin 7802 ,, A Donation of Wool
.turnin 7803 ,, A Donation of Silk
.turnin 7804 ,, A Donation of Mageweave
.turnin 7805 ,, A Donation of Runecloth
.zoneskip Ironforge,1
.target Mistina Steelshield
step
.goto Ironforge,38.368,55.303
.target Royal Historian Archesonus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.turnin 3701 ,, The Smoldering Ruins of Thaurissan
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Southshore >> 飞往南海镇
.zoneskip Ironforge,1
.target Gryth Thurden
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 57-58 西/东瘟疫之地
#next 58-59 费伍德森林/冬泉谷
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板安德森|r
.home >> 绑定炉石到南海镇
.target Innkeeper Anderson
step
#completewith next
.goto Alterac Mountains,39.461,81.230,100 >> 前往奥特兰克山脉寻找|cRXP_FRIENDLY_哈格丁中尉|r
step
.isOnQuest 7261
.goto Alterac Mountains,39.461,81.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_哈格丁中尉|r
.turnin 7261 ,, The Sovereign Imperative
.target Lieutenant Haggerdin
step
#completewith TravelWPL
.goto Western Plaguelands,42.702,84.031
.zone Western Plaguelands >> 前往西瘟疫之地
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.accept 5215 ,, The Scourge Cauldrons
.accept 5097 ,, All Along the Watchtowers
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.967,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_银色黎明军官普尔哈特|r
.turnin 6028 ,, The Everlook Report
.target Argent Officer Pureheart
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5215 ,, The Scourge Cauldrons
.accept 5216 ,, Target: Felstone Field
.target High Priestess MacDonnell
step
#label TravelWPL
.goto Western Plaguelands,43.419,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨尼尔·杜马|r
.accept 5903 ,, A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗林特·沙多摩尔|r
.turnin 6184 ,, Flint Shadowmore
.accept 6185 ,, The Eastern Plagues
.target Flint Shadowmore
step
.goto Western Plaguelands,37.015,57.145
>> 击杀|cRXP_ENEMY_护锅领主拜尔摩|r. 拾取|cRXP_LOOT_费尔斯通农场的瘟疫之锅钥匙|r
>>|cRXP_ENEMY_护锅领主拜尔摩|r|cRXP_WARN_会在你靠近|cRXP_PICK_瘟疫之锅|r时刷新|r
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.194,56.860
>>点击|cRXP_PICK_瘟疫之锅|r
.turnin 5216 ,, Target: Felstone Field
.accept 5217 ,, Return to Chillwind Camp
step
#completewith next
.subzone 3197 >> 前往冰风岗营地
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5217 ,, Return to Chillwind Camp
.accept 5219 ,, Target: Dalson's Tears
.target High Priestess MacDonnell
step
.goto Western Plaguelands,46.681,71.135,-1
.goto Western Plaguelands,46.558,71.156,-1
.use 12815 >> |cRXP_WARN_在塔楼入口处附近使用|r|T135432:0|t[信号火炬]|cRXP_WARN_. 你可以在不引到塔内的精英|cRXP_ENEMY_骷髅督军|r的情况下完成|r
.complete 5097,4 
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会施放|r|T135848:0|t[冰霜速冻]|cRXP_WARN_. 这个技能可以眩晕你5秒. 尽全力避免同时引到多只|r

.accept 4984 ,, The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith DalsonCauldron
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,46.6,40.4,0
>> 击杀|cRXP_ENEMY_染病的狼|r
>>|cRXP_ENEMY_染病的狼|r|cRXP_WARN_与|cRXP_ENEMY_腐虫潜伏者|r共享刷新. 你可能需要击杀它们以使|cRXP_ENEMY_染病的狼|r刷新|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,47.796,50.671
>>|cRXP_WARN_进入达尔松之泪谷仓|r
>> 点击地上的|cRXP_PICK_达尔松夫人的日记|r
.accept 5058 ,, Mrs. Dalson Diary
.turnin 5058 ,, Mrs. Dalson Diary
step
.goto Western Plaguelands,47.86,49.88,25,0
.goto Western Plaguelands,48.48,51.56,25,0
.goto Western Plaguelands,47.39,51.77,25,0
.goto Western Plaguelands,46.64,49.21,25,0
.goto Western Plaguelands,47.86,49.88
>>击杀|cRXP_LOOT_游荡的骷髅|r. 拾取|cRXP_LOOT_达尔松厕所钥匙|r
>>|cRXP_WARN_|cRXP_LOOT_游荡的骷髅|r环绕达尔松之泪谷仓与房子巡逻|r
.collect 12738,1,5060,1 
.unitscan Wandering Skeleton
step
.goto Western Plaguelands,48.109,49.654
>>点击|cRXP_PICK_厕所|r以召唤|cRXP_ENEMY_农夫达尔松|r
.turnin 5059 ,, Locked Away
step
.goto Western Plaguelands,48.115,49.814
>> 击杀|cRXP_ENEMY_农夫达尔松|r. 拾取|cRXP_LOOT_达尔松橱柜钥匙|r
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
.goto Western Plaguelands,47.353,49.626
>>点击房屋楼上的|cRXP_PICK_锁住的柜橱|r
.turnin 5060 ,, Locked Away
step
.goto Western Plaguelands,46.156,52.427
>> 击杀|cRXP_ENEMY_护锅领主玛维诺斯|r. 拾取|cRXP_LOOT_达尔松之泪的瘟疫之锅钥匙|r
>>|cRXP_ENEMY_护锅领主玛维诺斯|r|cRXP_WARN_会在你靠近|cRXP_PICK_瘟疫之锅|r时刷新|r
.complete 5219,1 
.unitscan Cauldron Lord Malvinious
step
#label DalsonCauldron
.goto Western Plaguelands,46.176,52.009
>>点击|cRXP_PICK_瘟疫之锅|r
.turnin 5219 ,, Target: Dalson's Tears
.accept 5220 ,, Return to Chillwind Camp
step
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4,70,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4
>> 击杀|cRXP_ENEMY_染病的狼|r
>>|cRXP_ENEMY_染病的狼|r|cRXP_WARN_与|cRXP_ENEMY_腐虫潜伏者|r共享刷新. 你可能需要击杀它们以使|cRXP_ENEMY_染病的狼|r刷新|r
.complete 4984,1 
.unitscan Diseased Wolf

step << skip 
#requires wolves
.goto Western Plaguelands,38.401,54.053
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5050 ,, Good Luck Charm
.target Janice Felstone
.accept 5051 ,, Two Halves Become One
.isQuestTurnedIn 5022
step << skip 
#sticky
#completewith next
.goto Western Plaguelands,36.9,58.2
>>击杀并拾取围绕农场巡逻的|cRXP_LOOT_喋喋不休的食尸鬼|r
.collect 12722,1
.isQuestTurnedIn 5022
step << skip 
>>右键点击一半好运护符合成完整的好运护符
.complete 5051,1 
.isQuestTurnedIn 5022
step << skip 
.goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5051 ,, Two Halves Become One
.isQuestTurnedIn 5022

step
.goto Western Plaguelands,44.217,63.319,-1
.goto Western Plaguelands,44.247,63.131,-1
.use 12815 >> |cRXP_WARN_在塔楼入口处附近使用|r|T135432:0|t[信号火炬]|cRXP_WARN_. 你可以在不引到塔内的精英|cRXP_ENEMY_骷髅督军|r的情况下完成|r
.complete 5097,3 
step
.goto Western Plaguelands,42.326,66.105,-1
.goto Western Plaguelands,42.422,66.222,-1
.use 12815 >> |cRXP_WARN_在塔楼入口处附近使用|r|T135432:0|t[信号火炬]|cRXP_WARN_. 你可以在不引到塔内的精英|cRXP_ENEMY_骷髅督军|r的情况下完成|r
.complete 5097,2 
step
.goto Western Plaguelands,40.116,71.561,-1
.goto Western Plaguelands,40.038,71.713,-1
.use 12815 >> |cRXP_WARN_在塔楼入口处附近使用|r|T135432:0|t[信号火炬]|cRXP_WARN_. 你可以在不引到塔内的精英|cRXP_ENEMY_骷髅督军|r的情况下完成|r
.complete 5097,1 
step
#completewith next
.subzone 3197 >> 前往冰风岗营地
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 5097 ,, All Along the Watchtowers

.target Commander Ashlam Valorfist
.accept 5533 ,, Scholomance
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师阿尔比顿|r
.turnin 5533 ,, Scholomance
.target Alchemist Arbington
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.target High Priestess MacDonnell
.turnin 5220 ,, Return to Chillwind Camp
.accept 5222 ,, Target: Writhing Haunt
step
.isQuestTurnedIn 5097
.destroy 12815 >> 摧毁|T135432:0|t[信号火炬]
step
.goto Western Plaguelands,53.021,66.052
>> 击杀|cRXP_ENEMY_护锅领主拉札奇|r. 拾取|cRXP_LOOT_嚎哭鬼屋的瘟疫之锅钥匙|r
>>|cRXP_ENEMY_护锅领主拉札奇|r|cRXP_WARN_会在你靠近|cRXP_PICK_瘟疫之锅|r时刷新|r
>>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会施放|r|T135848:0|t[冰霜速冻]|cRXP_WARN_. 这个技能可以眩晕你5秒. 尽全力避免同时引到多只|r
.complete 5222,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.020,65.718
>>点击|cRXP_PICK_瘟疫之锅|r
.turnin 5222 ,, Target: Writhing Haunt
.accept 5223 ,, Return to Chillwind Camp
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会施放|r|T135848:0|t[冰霜速冻]|cRXP_WARN_. 这个技能可以眩晕你5秒. 尽全力避免同时引到多只|r

.turnin 4984 ,, The Wildlife Suffers Too
.accept 4985 ,, The Wildlife Suffers Too
.target Mulgris Deepriver
step
#completewith ArriveTirion
.isOnQuest 4985
>>在前往东瘟疫之地的路上击杀所有遇到的|cRXP_ENEMY_染病的灰熊|r
>>|cRXP_WARN_这很重要, 但是你不需要现在就完成此任务|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
#completewith next
.goto Eastern Plaguelands,9.57,66.20
.zone Eastern Plaguelands >> 前往东瘟疫之地
step
#label ArriveTirion
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.accept 5542 ,, Demon Dogs
.accept 5543 ,, Blood Tinged Skies
.accept 5544 ,, Carrion Grubbage
.target Tirion Fordring
step
#completewith PamelaRedpath
>> 击杀|cRXP_ENEMY_瘟疫蝙蝠|r
>> 击杀|cRXP_ENEMY_瘟疫幼犬|r
>> 击杀|cRXP_ENEMY_食腐虫|r. 拾取他们的|cRXP_LOOT_食腐虫肉块|r
.complete 5543,1 
.complete 5542,1 
.complete 5544,1 
.mob Plaguebat
.mob Plaguehound Runt
.mob Carrion Grub
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,27.266,74.956
>>点击地上的|cRXP_PICK_破碎的人类残骸|r. 拾取|cRXP_LOOT_军情七处徽章（弗雷多）|r
.complete 6185,2 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.805,74.880
>>点击地上的|cRXP_PICK_破碎的人类残骸|r. 拾取|cRXP_LOOT_军情七处徽章（特伊恩）|r
.complete 6185,3 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.806,79.853
>>点击地上的|cRXP_PICK_破碎的人类残骸|r. 拾取|cRXP_LOOT_军情七处徽章（拉戈尔）|r
.complete 6185,1 
step
#label PamelaRedpath
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_帕米拉·雷德帕斯|r
.turnin 5601 ,, Sister Pamela
.accept 5149 ,, Pamela's Doll
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.038,92.549,15,0
.goto Eastern Plaguelands,39.643,92.522,15,0
.goto Eastern Plaguelands,39.622,90.079
>> 在达隆郡的建筑里拾取|T134164:0|t[|cRXP_LOOT_帕米拉的洋娃娃的脑袋|r], |T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的左身|r]和|T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的右身|r]
>>|cRXP_WARN_它们随机刷新在达隆郡的3栋建筑里|r
.collect 12886,1,5149,1 
.collect 12887,1,5149,1 
.collect 12888,1,5149,1 
step
>>|cRXP_WARN_使用|r|T134164:0|t[|cRXP_LOOT_帕米拉的洋娃娃的脑袋|r]|cRXP_WARN_,|r|T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的左身|r]|cRXP_WARN_或者|r|T134230:0|t[|cRXP_LOOT_帕米拉的洋娃娃的右身|r]|cRXP_WARN_以合成|r|cRXP_LOOT_帕米拉的洋娃娃|r
.complete 5149,1 
.use 12886
.use 12887
.use 12888
step
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_帕米拉·雷德帕斯|r
.turnin 5149 ,, Pamela's Doll
.accept 5152 ,, Auntie Marlene
.accept 5241 ,, Uncle Carlin
.target Pamela Redpath
step
>> 击杀|cRXP_ENEMY_瘟疫蝙蝠|r
>> 击杀|cRXP_ENEMY_瘟疫幼犬|r和|cRXP_ENEMY_瘟疫犬|r
>> 击杀|cRXP_ENEMY_食腐虫|r. 拾取他们的|cRXP_LOOT_食腐虫肉块|r
.complete 5543,1 
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,1 
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,2 
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
.complete 5544,1 
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
.mob Plaguebat
.mob Plaguehound Runt
.mob Plaguehound
.mob Carrion Grub
step
.goto Eastern Plaguelands,81.437,59.820
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r
.turnin 6030 ,, Duke Nicholas Zverenhoff
.target Duke Nicholas Zverenhoff
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5241 ,, Uncle Carlin
.accept 5211 ,, Defenders of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯琳·钢翼|r
.fp Chapel >> 开启圣光之愿礼拜堂飞行点
.target Khaelyn Steelwing
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_护理者奥林|r
.accept 5281 ,, The Restless Souls
.accept 6021 ,, Zaeldarr the Outcast
.target Caretaker Alen
step
#completewith Egan
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
>> 击杀|cRXP_ENEMY_染病的撕掠者|r, |cRXP_ENEMY_喋喋不休的食尸鬼|r和|cRXP_ENEMY_吃人的食尸鬼|r. 对话出现的|cRXP_FRIENDLY_达隆郡居民的灵魂|r
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,69.2,50.6,70,0
.goto Eastern Plaguelands,64.6,32.0,70,0
.goto Eastern Plaguelands,51.6,30.6,70,0
.goto Eastern Plaguelands,56.6,40.0,70,0
.goto Eastern Plaguelands,44.4,36.4,70,0
.goto Eastern Plaguelands,48.0,24.6,70,0
.goto Eastern Plaguelands,50.9,38.3
>> 击杀|cRXP_ENEMY_狂怒的瘟疫犬|r
.complete 5542,3 
.mob Frenzied Plaguehound
step
.goto Eastern Plaguelands,41.2,25.2,70,0
.goto Eastern Plaguelands,42.1,38.2,70,0
.goto Eastern Plaguelands,32.0,35.8,70,0
.goto Eastern Plaguelands,33.8,25.8,70,0
.goto Eastern Plaguelands,29.9,23.1,70,0
.goto Eastern Plaguelands,26.5,37.5,70,0
.goto Eastern Plaguelands,20.4,20.8,70,0
.goto Eastern Plaguelands,31.4,29.6
>>在病木林打开|cRXP_PICK_大白蚁丘|r. 拾取|cRXP_LOOT_瘟疫白蚁|r
.complete 5903,1 
step
#label Egan
.goto Eastern Plaguelands,14.448,33.740
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊根|r
.turnin 5281 ,, The Restless Souls
.target Egan
step
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
.goto Eastern Plaguelands,28.35,28.49,70,0
.goto Eastern Plaguelands,37.85,31.10,70,0
.goto Eastern Plaguelands,66.0,39.2,80,0
.goto Eastern Plaguelands,59.4,69.0,100,0
.goto Eastern Plaguelands,77.4,54.0,70,0
.goto Eastern Plaguelands,80.6,43.6,80,0
.goto Eastern Plaguelands,66.0,39.2
>> 击杀|cRXP_ENEMY_染病的撕掠者|r, |cRXP_ENEMY_喋喋不休的食尸鬼|r和|cRXP_ENEMY_吃人的食尸鬼|r. 对话出现的|cRXP_FRIENDLY_达隆郡居民的灵魂|r
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5211 ,, Defenders of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5542 ,, Demon Dogs
.turnin 5543 ,, Blood Tinged Skies
.turnin 5544 ,, Carrion Grubbage
.accept 5742 ,, Redemption
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.complete 5742,1 
.skipgossip
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5742 ,, Redemption
.target Tirion Fordring
step
.group
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.accept 5781 ,, Of Forgotten Memories
.target Tirion Fordring
step
#completewith next
.goto Eastern Plaguelands,27.850,86.245,15 >> 进入墓室
step
.goto Eastern Plaguelands,27.467,84.853
>> 击杀|cRXP_ENEMY_流亡者塞达尔|r. 拾取他的|cRXP_LOOT_头颅|r
.complete 6021,1 
.mob Zaeldarr the Outcast
step
.group
.goto Eastern Plaguelands,27.276,85.213
>>点击地上的|cRXP_PICK_破损的卷轴|r
.accept 6024 ,, Hameya's Plea
step
.group 3
#completewith next
.goto Eastern Plaguelands,28.307,86.885
.cast 6478 >>点击|cRXP_PICK_松软的泥土堆|r以召唤|cRXP_ENEMY_米库提奥·肮脏吞咽者|r和3名|cRXP_ENEMY_墓穴劫盗者|r
step
.group 3
.goto Eastern Plaguelands,28.307,86.885
>> 击杀|cRXP_ENEMY_米库提奥·肮脏吞咽者|r. 拾取|cRXP_LOOT_泰兰之锤|r
.complete 5781,1 
.mob Mercutio Filthgorger
step
.group
.isQuestComplete 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5781 ,, Of Forgotten Memories
.accept 5845 ,, Of Lost Honor
.target Tirion Fordring
step
.group
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.accept 5845 ,, Of Lost Honor
.target Tirion Fordring
step
.group
.abandon 5781 ,, Of Forgotten Memories
step
.hs >> 炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
#completewith next
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fly Western Plaguelands >> 飞往西瘟疫之地
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5223 ,, Return to Chillwind Camp
.accept 5225 ,, Target: Gahrron's Withering
.target High Priestess MacDonnell
step
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨尼尔·杜马|r
.turnin 5903 ,, A Plague Upon Thee
.accept 5904 ,, A Plague Upon Thee
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,28.806,79.853
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_弗林特·沙多摩尔|r
.turnin 6185 ,, The Eastern Plagues
.accept 6186 ,, The Blightcaller Cometh
.target Flint Shadowmore
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师阿尔比顿|r
.accept 5537 ,, Skeletal Fragments
.target Alchemist Arbington
step
.isQuestTurnedIn 5903
.destroy 15043 >> 摧毁剩余的|T134321:0|t[瘟疫白蚁]
step
.goto Western Plaguelands,49.2,78.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
>>|cRXP_FRIENDLY_玛莱恩·雷德帕斯|r也可能在楼上
.turnin 5152 ,, Auntie Marlene
.accept 5153 ,, A Strange Historian
.target Marlene Redpath
step
.goto Western Plaguelands,49.696,76.754
>> 点击|cRXP_PICK_约瑟夫·雷德帕斯的纪念碑|r. 拾取|cRXP_LOOT_约瑟夫的结婚戒指|r
.complete 5153,1 
step
#completewith CountingTime
>> 击杀|cRXP_ENEMY_骷髅刽子手|r和|cRXP_ENEMY_骷髅侍僧|r. 拾取他们的|cRXP_LOOT_骸骨碎片|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.solo
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗米|r对话
.turnin 5153 ,, A Strange Historian
.accept 5154 ,, The Annals of Darrowshire
.target Chromie
step
.group
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗米|r对话
.turnin 5153 ,, A Strange Historian
.accept 5154 ,, The Annals of Darrowshire
.accept 4971 ,, A Matter of Time
.target Chromie
step
#completewith next
.goto Western Plaguelands,43.822,69.250,10,0 >> 进入安多哈尔废墟城镇大厅
.link https://www.youtube.com/watch?v=AGTlKDlGeUA >> |cRXP_WARN_点击此处查看视频参考: 如何安全的进入城镇大厅|r
step
.goto Western Plaguelands,43.50,69.46
>> 进入安多哈尔废墟城镇大厅
>>打开|cRXP_PICK_发霉的书籍|r. 拾取|cRXP_LOOT_达隆郡的历史|r
>>|cRXP_WARN_真的|cRXP_PICK_达隆郡的历史|r书页呈暗黑色或者有棕色斑痕. 如果是半黑半白的就是陷阱|r
>>|cRXP_WARN_有时候可能所有的|cRXP_PICK_发霉的书籍|r都是陷阱, 你可能需要点击所有书籍以使达隆郡的历史刷新出来|r
.complete 5154,1 
.link https://www.youtube.com/watch?v=AGTlKDlGeUA&t=20s >> |cRXP_WARN_点击此处查看视频参考: 如何正确识别|r|cRXP_PICK_发霉的书籍|r
step
.group 3
.goto Western Plaguelands,45.172,62.559,25,0
.goto Western Plaguelands,46.858,62.040,25,0
.goto Western Plaguelands,48.324,62.610,25,0
.goto Western Plaguelands,48.10,63.92,20,0
.goto Western Plaguelands,48.06,66.18
>> 击杀|cRXP_ENEMY_时光寄生虫|r
.use 12627 >>|cRXP_WARN_在筒仓处使用|r|T134229:0|t[时光置换器]|cRXP_WARN_以使它们刷新. 如果筒仓不闪蓝光就不会刷新|r|cRXP_ENEMY_时光寄生虫|r
>>|cRXP_WARN_多个|cRXP_ENEMY_时光寄生虫|r能同时刷新, 一只死后另一只会立马刷出来|r
.complete 4971,1 
.mob Temporal Parasite
step
.isQuestComplete 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗米|r对话
.turnin 4971 ,, A Matter of Time
.accept 4972 ,, Counting Out Time
.turnin 5154 ,, The Annals of Darrowshire
.accept 5210 ,, Brother Carlin
.target Chromie
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗米|r对话
.accept 4972 ,, Counting Out Time
.turnin 5154 ,, The Annals of Darrowshire
.accept 5210 ,, Brother Carlin
.target Chromie
step
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗米|r对话
.turnin 5154 ,, The Annals of Darrowshire
.accept 5210 ,, Brother Carlin
.target Chromie
step
.abandon 4971 ,, A Matter of Time
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,38.71,68.25,20,0
.goto Western Plaguelands,38.51,69.74,20,0
.goto Western Plaguelands,40.63,68.40,20,0
.goto Western Plaguelands,41.08,67.45,20,0
.goto Western Plaguelands,40.69,66.16,20,0
.goto Western Plaguelands,41.46,69.85,15,0
.goto Western Plaguelands,42.17,68.88,20,0
.goto Western Plaguelands,42.67,70.31
>>打开|cRXP_PICK_小箱子|r. 拾取|cRXP_LOOT_安多哈尔怀表|r
>>|cRXP_WARN_你能在被烧毁的房子里找到它们|r
.complete 4972,1 
step
#label CountingTime
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克罗米|r
.turnin 4972 ,, Counting Out Time
.target Chromie
step
.goto Western Plaguelands,37.8,70.6,70,0
.goto Western Plaguelands,42.6,73.8,70,0
.goto Western Plaguelands,49.6,69.4,70,0
.goto Western Plaguelands,49.6,63.6,70,0
.goto Western Plaguelands,43.0,63.4,70,0
.goto Western Plaguelands,39.8,67.4
>> 击杀|cRXP_ENEMY_骷髅刽子手|r和|cRXP_ENEMY_骷髅侍僧|r. 拾取他们的|cRXP_LOOT_骸骨碎片|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师阿尔比顿|r
.turnin 5537 ,, Skeletal Fragments
.target Alchemist Arbington
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.fly Eastern Plaguelands >> 飞往东瘟疫之地
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 ,, Brother Carlin
.accept 5181 ,, Villains of Darrowshire
.target Carlin Redpath
step
.group
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5168 ,, Heroes of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_护理者奥林|r
.turnin 6021 ,, Zaeldarr the Outcast
.target Caretaker Alen
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,71.300,33.959
>> 在水下拾取|cRXP_LOOT_失落荣耀的象征|r
.complete 5845,1 
step
.group 2
.goto Eastern Plaguelands,64.80,21.45,35,0
.goto Eastern Plaguelands,70.8,16.2
>> 击杀|cRXP_ENEMY_渗透者哈米亚|r. 拾取|cRXP_LOOT_哈米亚的钥匙|r
>>|cRXP_ENEMY_烂苔斥候|r|cRXP_WARN_会在你引到它们后立马逃跑并呼叫帮助|r
>>|cRXP_ENEMY_渗透者哈米亚|r|cRXP_WARN_在祖尔玛莎墓地巡逻|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
.goto Eastern Plaguelands,51.106,49.937
>> 在水下拾取|cRXP_LOOT_霍古斯的颅骨|r
.complete 5181,1 
step
.goto Eastern Plaguelands,53.913,65.755
>> 拾取地上的|cRXP_LOOT_马杜克的破碎之剑|r
.complete 5181,2 
step
.group
.isQuestComplete 6024
.goto Eastern Plaguelands,28.036,86.155
>>点击|cRXP_PICK_一堆泥土|r
.turnin 6024 ,, Hameya's Plea
step
.abandon 6024 ,, Hameya's Plea
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_提里恩·弗丁|r
.turnin 5845 ,, Of Lost Honor
.accept 5846 ,, Of Love and Family
.target Tirion Fordring
step
#completewith next
>> 击杀|cRXP_ENEMY_染病的灰熊|r
>>|cRXP_ENEMY_染病的灰熊|r|cRXP_WARN_与|cRXP_ENEMY_瘟疫潜伏者|r共享刷新. 你可能需要击杀它们以使|cRXP_ENEMY_染病的灰熊|r刷新|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.group
.isOnQuest 5168
.goto Western Plaguelands,63.789,57.192
>> 拾取地上的|cRXP_LOOT_雷德帕斯之盾|r
>>|cRXP_WARN_此任务的其他目标需要进入壁炉谷. 如果你不想进入壁炉谷就跳过此步并放弃: 达隆郡的英雄|r
.complete 5168,2 
step
.goto Western Plaguelands,62.644,58.945
>> 击杀|cRXP_ENEMY_护锅领主索瓦斯|r. 拾取|cRXP_LOOT_盖罗恩农场的瘟疫之锅钥匙|r
>>|cRXP_ENEMY_护锅领主索瓦斯|r|cRXP_WARN_会在你靠近|cRXP_PICK_瘟疫之锅|r时刷新|r
.complete 5225,1 
.unitscan Cauldron Lord Soulwrath
step
.goto Western Plaguelands,62.573,58.573
>>点击|cRXP_PICK_瘟疫之锅|r
.turnin 5225 ,, Target: Gahrron's Withering
.accept 5226 ,, Return to Chillwind Camp
step
.goto Western Plaguelands,58.8,58.6,70,0
.goto Western Plaguelands,53.6,48.0,70,0
.goto Western Plaguelands,58.8,52.6,70,0
.goto Western Plaguelands,67.2,46.6,70,0
.goto Western Plaguelands,66.0,55.6,70,0
.goto Western Plaguelands,60.8,50.8
>> 击杀|cRXP_ENEMY_染病的灰熊|r
>>|cRXP_ENEMY_染病的灰熊|r|cRXP_WARN_与|cRXP_ENEMY_瘟疫潜伏者|r共享刷新. 你可能需要击杀他们以使|cRXP_ENEMY_染病的灰熊|r刷新|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冰冷的食尸鬼|r|cRXP_WARN_会施放|r|T135848:0|t[冰霜速冻]|cRXP_WARN_. 这个技能可以眩晕你5秒. 尽全力避免同时引到多只|r

.turnin 4985 ,, The Wildlife Suffers Too
.accept 4986 ,, Glyphed Oaken Branch
.target Mulgris Deepriver
step
#completewith next
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
.subzone 2298 >> 前往凯尔达隆
step
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_画家瑞弗蕾|r
.turnin 5846 ,, Of Love and Family
.target Artist Renfray
step
.goto Western Plaguelands,48.348,31.996
>>点击|cRXP_PICK_北山伐木场箱子|r以放置|cRXP_PICK_白蚁桶|r然后点击|cRXP_PICK_白蚁桶|r
.skipgossip
.turnin 5904 ,, A Plague Upon Thee
.accept 6389 ,, A Plague Upon Thee
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6004 ,, Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.85,40.68,60,0
.goto Western Plaguelands,51.97,44.47,60,0
.goto Western Plaguelands,41.23,51.54,60,0
.goto Western Plaguelands,50.85,40.68
>> 击杀|cRXP_ENEMY_血色医师|r, |cRXP_ENEMY_血色猎人|r, |cRXP_ENEMY_血色法师|r和|cRXP_ENEMY_血色骑士|r
>>|cRXP_ENEMY_血色医师|r|cRXP_WARN_和|cRXP_ENEMY_血色猎人|r共享刷新|r
>>|cRXP_ENEMY_血色法师|r|cRXP_WARN_和|cRXP_ENEMY_血色骑士|r共享刷新|r
.complete 6004,1 
.complete 6004,2 
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Medic
.mob Scarlet Hunter
.mob Scarlet Mage
.mob Scarlet Knight
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6004 ,, Unfinished Business
.accept 6023 ,, Unfinished Business
.target Kirsta Deepshadow
step
.goto Western Plaguelands,56.38,34.11,50,0
.goto Western Plaguelands,57.83,36.10
>> 击杀|cRXP_ENEMY_猎人莱德雷|r
.complete 6023,1 
.mob Huntsman Radley
step
.goto Western Plaguelands,54.520,23.818
>> 击杀|cRXP_ENEMY_骑士杜尔根|r
>>|cRXP_ENEMY_骑士杜尔根|r|cRXP_WARN_在塔里上下巡逻. 在塔底等他而不要上去找他|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
.solo
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 ,, Unfinished Business
.target Kirsta Deepshadow
step
.group
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 ,, Unfinished Business
.accept 6025 ,, Unfinished Business
.target Kirsta Deepshadow
step
.group
#completewith HearthglenFinish
.goto Western Plaguelands,45.7,18.8
.subzone 190 >> 前往壁炉谷
step
.group 2
.goto Western Plaguelands,45.7,18.8
>>爬上壁炉谷塔楼
>>|cRXP_WARN_你可以直接跑到塔顶然后跳下来或者清出一条路上去|r
>>|cRXP_WARN_避开|cRXP_ENEMY_保卫者洛瑞克|r, 他是一只绕壁炉谷巡逻的强力精英|r
>>|cRXP_WARN_此任务比较难. 如果你没把握进入壁炉谷就跳过此任务|r
.complete 6025,1 
.link https://www.twitch.tv/videos/680869322?t=00h43m31s >> |cRXP_WARN_点击此处查看视频参考|r
.unitscan High Protector Lorik
step
.group 4
#label HearthglenFinish
.isOnQuest 5168
.goto Western Plaguelands,42.519,18.990
>> 拾取桌子上的|cRXP_LOOT_Davil's Libram|r
>>|cRXP_WARN_避开|cRXP_ENEMY_保卫者洛瑞克|r, 他是一只绕壁炉谷巡逻的强力精英|r
>>|cRXP_WARN_此任务比较难. 如果你没把握进入壁炉谷就跳过此任务|r
.complete 5168,1 
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6025 ,, Unfinished Business
.isQuestComplete 6025
.target Kirsta Deepshadow
step
.abandon 6025 ,, Unfinished Business
step
.hs >> 炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.zoneskip Western Plaguelands,1
step
#completewith PlagueUpon
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fly Western Plaguelands >> 飞往西瘟疫之地
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5226 ,, Return to Chillwind Camp
.target High Priestess MacDonnell
step
.goto Western Plaguelands,42.702,84.031
.target Commander Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.accept 5237 ,, Mission Accomplished!
.turnin 5237 ,, Mission Accomplished!
step
#label PlagueUpon
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_纳萨尼尔·杜马|r
.turnin 6389 ,, A Plague Upon Thee
.target Nathaniel Dumah
step << Paladin
.dungeon ST
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.accept 8418 ,, Forging the Mightstone
.target Commander Ashlam Valorfist
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.fly Eastern Plaguelands >> 飞往东瘟疫之地
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
step
.isQuestComplete 5168
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 ,, Villains of Darrowshire
.turnin 5168 ,, Heroes of Darrowshire
.target Carlin Redpath
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 ,, Villains of Darrowshire
.target Carlin Redpath
step
.abandon 5168 ,, Heroes of Darrowshire
step << Mage
.dungeon !ST
#completewith next
.zone Stormwind City >> 传送到暴风城
step << Mage
.dungeon !ST
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << !Mage
.dungeon !ST
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯琳·钢翼|r
.fly Stormwind >> 飞往暴风城
.target Khaelyn Steelwing
step
.dungeon ST
#completewith IntoTheTemple
+你现在将各处飞行接取沉没的神庙任务. 开始寻找前往沉没的神庙的副本队伍
>>你一会还是需要完成2个诅咒之地任务以解锁职业任务. 其中一个需要击杀50只怪 << Warrior
step
.dungeon ST
#completewith next
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_凯琳·钢翼|r
.fly Hinterlands >> 飞往辛特兰
.target Khaelyn Steelwing
step
.dungeon ST
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿塔莱流放者|r
.accept 1446 ,, Jammal'an the Prophet
.target Atal'ai Exile
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fly Wetlands >> 飞往湿地
.target Guthrum Thunderfist
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >> 乘船前往塞拉摩
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Tanaris >> 飞往塔纳利斯
.target Baldruc
step
.dungeon ST
.isQuestTurnedIn 3444
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3446 ,, Into the Depths
.accept 3447 ,, Secret of the Circle
.target Marvon Rivetseeker
step
.dungeon ST
.isQuestTurnedIn 4787 
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.accept 3528 ,, The God Hakkar
.target Yeh'kinya
step << Mage
.dungeon ST
#completewith next
.zone Stormwind City >> 传送到暴风城
step << Mage
.dungeon ST
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >> 学习职业技能
.target Elsharin
.target Jennea Cannon
step << !Mage
.dungeon ST
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Ratchet >> 飞往棘齿城
.target Bera Stonehammer
.zoneskip Tanaris,1
step << !Mage
.dungeon ST
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >> 乘船前往藏宝海湾
.zoneskip The Hinterlands
step << !Mage
.dungeon ST
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >> 飞往暴风城
.target Gyll
step
.dungeon ST
#label IntoTheTemple
.isQuestTurnedIn 1469
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布罗哈恩·铁桶|r
.accept 1475 ,, Into The Temple of Atal'Hakkar
.target Brohann Caskbelly
step
.isQuestTurnedIn 6183
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大领主伯瓦尔·弗塔根|r
.turnin 6186 ,, The Blightcaller Cometh
.target Highlord Bolvar Fordragon
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >> 前往光明大教堂
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
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_武神|r和|cRXP_FRIENDLY_伊尔莎·考宾|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >> 学习职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >> 学习职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >> 学习职业技能
.target Einris Brightspear
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>进入已宰的羔羊并下楼
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >> 学习职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_斯巴克尔|r
.vendor >> |cRXP_BUY_为你的宠物|r|cRXP_BUY_购买|r|T133738:0|t[魔典]
.target Spackle Thornberry
step
.dungeon ST
#completewith STEntry
.zone Blasted Lands >> 现在前往沉没的神庙. 如果还没组到队伍就继续寻找. 你可以在等待队伍的间隙在诅咒之地刷怪 << !Warrior
.zone Blasted Lands >> 在你完成诅咒之地的2个职业任务时继续寻找前往沉没的神庙的队伍 << Warrior
.zoneskip Swamp of Sorrows
.zoneskip 1415
step << Warrior
.dungeon !ST
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Blasted Lands >> 飞往诅咒之地
.target Dungar Longdrink
.isQuestAvailable 8423,8424
step
.dungeon ST
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Blasted Lands >> 飞往诅咒之地
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Warrior 
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8423 ,, Warrior Kinship
.target Fallen Hero of the Horde
step << Warrior 
.goto Blasted Lands,44.2,34.8,70,0
.goto Blasted Lands,47.7,38.6,70,0
.goto Blasted Lands,52.2,37.4,70,0
.goto Blasted Lands,54.8,44.8,70,0
.goto Blasted Lands,51.2,55.6,70,0
.goto Blasted Lands,45.8,48.2,70,0
.goto Blasted Lands,49.0,36.6
>> 击杀|cRXP_ENEMY_Helboars|r
.complete 8423,1 
.mob Helboar
step << Warrior 
#label WarriorST
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8423 ,, Warrior Kinship
.accept 8424 ,, War on the Shadowsworn
.target Fallen Hero of the Horde
step << Warrior 
.goto Blasted Lands,63.8,30.1,60,0
.goto Blasted Lands,63.1,45.8,60,0
.goto Blasted Lands,65.9,33.3,60,0
.goto Blasted Lands,63.6,39.2
>> 击杀|cRXP_ENEMY_影誓专家|r, |cRXP_ENEMY_影誓祭司|r和|cRXP_ENEMY_影誓暴徒|r
.complete 8424,1 
.complete 8424,2 
.complete 8424,3 
.mob Shadowsworn Adept
.mob Shadowsworn Cultist
.mob Shadowsworn Thug
step << Warrior 
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8424 ,, War on the Shadowsworn
.target Fallen Hero of the Horde
step << Warrior
.dungeon !ST
#completewith TravelRatchet
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Booty Bay >> 飞往藏宝海湾
.target Alexandra Constantine
step << Warrior
.dungeon ST
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8425 ,, Voodoo Feathers
.target Fallen Hero of the Horde
step
.dungeon ST
#label STEntry
.goto 1415,56.33,76.28
.subzone 1477 >> 前往沉没的神庙
step
.dungeon ST
.isOnQuest 1475
#completewith next
>> 拾取地上的|cRXP_LOOT_阿塔莱石板|r
>>|cRXP_WARN_你可以在前往副本门口的路上或者副本内找到它们|r
.complete 1475,1 
step
.dungeon ST
.goto 1415,56.33,76.28,40,0
.goto 1415,56.46,75.54,20,0
.goto 1415,56.83,75.86,20,0
.goto 1415,56.94,76.03,15,0
.goto 1415,57.06,75.58,20,0
.goto 1415,56.76,75.35,15,0
.goto 1415,56.809,75.151
.subzone 1477,2 >> 进入沉没的神庙
step
.dungeon ST
.isOnQuest 1475
#sticky
>> 拾取地上的|cRXP_LOOT_阿塔莱石板|r
.complete 1475,1 
step << Druid
.dungeon ST
.isOnQuest 9053
#completewith Altar
>> 击杀|cRXP_ENEMY_阿塔拉利恩|r. 拾取|cRXP_LOOT_腐烂藤蔓|r
>>|cRXP_ENEMY_阿塔拉利恩|r|cRXP_WARN_在沉没的神庙下层通过点击所有平台上的|cRXP_PICK_阿塔莱塑像|r召唤出来|r
.complete 9053,1 
step 
.dungeon ST
.isOnQuest 3446
#completewith next
>>点击|cRXP_PICK_哈卡祭坛|r
>>|cRXP_WARN_|cRXP_PICK_哈卡祭坛|r在沉没的神庙下层|r
.turnin 3446 ,, Into the Depths
step 
.dungeon ST
.isOnQuest 3447
>>点击|cRXP_PICK_哈卡神像|r
>>|cRXP_WARN_点击所有平台上的|cRXP_PICK_阿塔莱塑像|r将会激活|r|cRXP_PICK_哈卡神像|r
>>|cRXP_WARN_|cRXP_PICK_哈卡神像|r在沉没的神庙下层|r
.turnin 3447 ,, Secret of the Circle
step 
.dungeon ST
.isOnQuest 3446
#label Altar
>>点击|cRXP_PICK_哈卡祭坛|r
>>|cRXP_WARN_|cRXP_PICK_哈卡祭坛|r在沉没的神庙下层|r
.turnin 3446 ,, Into the Depths
step << Druid
.dungeon ST
.isOnQuest 9053
>> 击杀|cRXP_ENEMY_阿塔拉利恩|r. 拾取|cRXP_LOOT_腐烂藤蔓|r
>>|cRXP_ENEMY_阿塔拉利恩|r|cRXP_WARN_在沉没的神庙下层通过点击所有平台上的|cRXP_PICK_阿塔莱塑像|r召唤出来|r
.complete 9053,1 
step << Paladin/Warrior/Warlock
.dungeon ST
.isOnQuest 8418,8425,8422
>> 击杀|cRXP_ENEMY_加什尔|r和|cRXP_ENEMY_祖罗尔|r. 拾取他们的|cRXP_LOOT_琥珀巫毒羽毛|r
>> 击杀|cRXP_ENEMY_米杉|r和|cRXP_ENEMY_胡库|r. 拾取他们的|cRXP_LOOT_蓝色巫毒羽毛|r
>> 击杀|cRXP_ENEMY_祖罗|r和|cRXP_ENEMY_洛若尔|r. 拾取他们的|cRXP_LOOT_绿色巫毒羽毛|r
>>|cRXP_WARN_此任务在沉没的神庙下层完成|r
.complete 8418,1 << Paladin 
.complete 8418,2 << Paladin 
.complete 8418,3 << Paladin 
.complete 8425,1 << Warrior 
.complete 8425,2 << Warrior 
.complete 8425,3 << Warrior 
.complete 8422,1 << Warlock 
.complete 8422,2 << Warlock 
.complete 8422,3 << Warlock 
step
.dungeon ST
.isOnQuest 3528
>>|cRXP_WARN_在龙骨堆边使用|r|T132834:0|t[哈卡之卵]|cRXP_WARN_然后完成事件|r
>>击杀|cRXP_ENEMY_哈卡|r小怪直到|cRXP_ENEMY_哈卡的化身|r出现
>>击杀|cRXP_ENEMY_哈卡的化身|r. 拾取|T136148:0|t[|cRXP_LOOT_哈卡精华|r]
>>|cRXP_WARN_使用|r|T136148:0|t[|cRXP_LOOT_哈卡精华|r]|cRXP_WARN_填满|r|T132834:0|t[哈卡之卵]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
step
.dungeon ST
.isOnQuest 1446
>> 击杀|cRXP_ENEMY_预言者迦玛兰|r. 拾取他的|cRXP_LOOT_头颅|r
>>|cRXP_WARN_你必须击杀上层平台的6个|cRXP_ENEMY_巨魔|r才能击杀|r|cRXP_ENEMY_预言者迦玛兰|r
.complete 1446,1 
step << Hunter/Mage/Priest/Rogue
.dungeon ST
.isOnQuest 8232,8253,8257,8236
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_摩弗拉斯之牙|r << Hunter
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_奥术碎片|r << Mage
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_摩弗拉斯之血|r << Priest
>> 击杀|cRXP_ENEMY_摩弗拉斯|r. 拾取|cRXP_LOOT_碧蓝钥匙|r << Rogue
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.complete 8236,1 << Rogue 
step
.dungeon ST
>>击杀|cRXP_ENEMY_伊兰尼库斯之影|r. 拾取|T135229:0|t[|cRXP_LOOT_伊兰尼库斯精华|r]
>>|cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_伊兰尼库斯精华|r]并接受任务|r
>>|cRXP_WARN_在击杀|cRXP_ENEMY_伊兰尼库斯之影|r前, 确保你已击杀上层的全部|cRXP_ENEMY_龙人|r小怪. 否则它们全部会过来进战斗|r
.collect 10454,1,3373,1 
.accept 3373 ,, The Essence of Eranikus
step
.dungeon ST
.isOnQuest 3373
>>点击|cRXP_PICK_Essence Font|r
.turnin 3373 ,, The Essence of Eranikus
step << Warrior
.dungeon ST
.isQuestComplete 8425
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_部落英雄的灵魂|r
>>|cRXP_WARN_强烈建议你选择|r|T132788:0|t[|cFF0070FF钻石水瓶|r]|cRXP_WARN_作为任务奖励.尽管其他奖励也很好, 也很难比上|r|T132788:0|t[|cFF0070FF钻石水瓶|r]
.turnin 8425 ,, Voodoo Feathers
.target Fallen Hero of the Horde
step
.dungeon ST
#completewith TempleTurnIn
.zone Stormwind City >> 前往暴风城
step
.dungeon ST
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Stormwind >> 飞往暴风城
.target Alexandra Constantine
.zoneskip Stormwind City
step
.dungeon ST
.isQuestComplete 1475
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布罗哈恩·铁桶|r
.turnin 1475 ,, Into The Temple of Atal'Hakkar
.target Brohann Caskbelly
step
.dungeon ST
#completewith next
.hs >> 炉石回南海镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.isOnQuest 1446,8418
step
.dungeon ST
.isQuestComplete 1446
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Hinterlands >> 飞往辛特兰
.target Darla Harris
step
.dungeon ST
.isQuestComplete 1446
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1446 ,, Jammal'an the Prophet
.target Atal'ai Exile
step << Warrior/Priest/Hunter/Rogue/Warlock
.dungeon ST
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fly Booty Bay >> 飞往藏宝海湾
.target Guthrum Thunderfist
step << Paladin
.dungeon ST
.isQuestComplete 8418
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_戈斯鲁姆|r
.fly Western Plaguelands >> 飞往西瘟疫之地
.target Guthrum Thunderfist
step << Paladin
.dungeon ST
.isQuestComplete 8418
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官阿胥拉姆·瓦罗菲斯特|r
.turnin 8418 ,, Forging the Mightstone
.target Commander Ashlam Valorfist
step << Paladin
.dungeon ST
.isQuestTurnedIn 8418
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_比比尔法兹|r
.fly Booty Bay >> 飞往藏宝海湾
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
step << Mage
#completewith next
.cast 3565 >> 传送到达纳苏斯
step << Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 4986 ,, Glyphed Oaken Branch
.target Mathrengyl Bearwalker
step << Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 ,, Moontouched Wildkin
.target Erelas Ambersky
step << Mage
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Azshara >> 飞往艾萨拉
.target Vesprystus
.zoneskip Teldrassil,1
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step << Druid
.isOnQuest 6762
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6762 ,, Rabine Saturna
.target Rabine Saturna
step << Druid
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德拉尔|r
.fly Azshara >> 飞往艾萨拉
.target Sindrayl
.zoneskip Moonglade,1
step << !Druid !Mage
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Booty Bay >> 飞往藏宝海湾
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << !Druid !Mage
#label TravelRatchet
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >> 乘船前往棘齿城
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 58-59 费伍德森林/冬泉谷
#next 59-60 冬泉谷/希利苏斯 I
step << !Druid !Mage
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_布莱格|r
.fly Azshara >> 飞往艾萨拉
.target Bragok
step << Hunter/Priest
.dungeon ST
.isQuestComplete 8232 << Hunter
.isQuestComplete 8257 << Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_奥汀克|r
.turnin 8232 ,, The Green Drake << Hunter
.turnin 8257 ,, Blood of Morphaz << Priest
.target Ogtinc
step << Mage/Rogue
.dungeon ST
.isQuestComplete 8253 << Mage
.isQuestComplete 8236 << Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 ,, Meeting with the Master
.target Sanath Lim-yo
step << Mage/Rogue
.dungeon ST
.isQuestComplete 8253 << Mage
.isQuestComplete 8236 << Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_大法师克希雷姆|r对话
.turnin 8253 ,, Destroy Morphaz << Mage
.turnin 8236 ,, The Azure Key << Rogue
.target Archamge Xylem
step << Mage/Rogue
.dungeon ST
.isQuestTurnedIn 8253 << Mage
.isQuestTurnedIn 8236 << Rogue
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这将把你传送回去|r
.turnin 3421 ,, Return Trip
.timer 8,Return Trip RP
.target Nyrill
step
#completewith next
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> 前往费伍德森林
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 ,, Linken's Memory
.accept 4084 ,, Silver Heart
.target Eridan Bluewind
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.accept 4421 ,, The Corruption of the Jadefire
.target Eridan Bluewind
step
#hardcoreserver
.isQuestTurnedIn 3912
#completewith next
>> 在费伍德森林击杀|cRXP_ENEMY_熊|r和|cRXP_ENEMY_狼|r. 拾取他们的|cRXP_LOOT_银爪|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
>> 击杀|cRXP_ENEMY_碧火魔仆|r, |cRXP_ENEMY_碧火巡影者|r, |cRXP_ENEMY_碧火盗贼|r和|cRXP_ENEMY_萨瓦瑟拉斯|r
>>|cRXP_WARN_请万分小心! 这里很危险|r
>>|cRXP_ENEMY_碧火魔仆|r|cRXP_WARN_会施放|r|T136135:0|t[残废术]|cRXP_WARN_能够降低你的移速|r
>>|cRXP_ENEMY_碧火巡影者|r|cRXP_WARN_处于|r|T132320:0|t[潜行]|cRXP_WARN_状态并在附近巡逻, 同时他们也能施放|r|T136093:0|t[减速毒药]|cRXP_WARN_持续25秒|r
.complete 4421,1 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob Jadefire Felsworn
.mob Jadefire Shadowstalker
.mob Jadefire Rogue
.mob Xavathras
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4421 ,, The Corruption of the Jadefire
.accept 4906 ,, Further Corruption
.target Eridan Bluewind
step << Warlock
.dungeon ST
.isQuestComplete 8422
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊普斯|r
.turnin 8422 ,, Trolls of a Feather
.target Impsy
step
#hardcoreserver
.isQuestTurnedIn 3912
>> 在费伍德森林击杀|cRXP_ENEMY_熊|r和|cRXP_ENEMY_狼|r. 拾取他们的|cRXP_LOOT_银爪|r
>> 击杀|cRXP_ENEMY_铁木践踏者|r和|cRXP_ENEMY_铁木漫游者|r. 拾取他们的|cRXP_LOOT_铁树之心|r
.complete 4084,1 
.goto Felwood,55.6,23.4,70,0
.goto Felwood,56.3,20.6,70,0
.goto Felwood,50.5,12.6,70,0
.goto Felwood,62.4,16.1,70,0
.goto Felwood,53.5,28.1,70,0
.goto Felwood,46.8,19.6,70,0
.goto Felwood,39.8,30.8,70,0
.goto Felwood,55.6,23.4
.complete 4084,2 
.goto Felwood,48.4,29.2,70,0
.goto Felwood,46.8,23.9,70,0
.goto Felwood,50.3,18.6,70,0
.goto Felwood,51.8,25.5
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Angerclaw Grizzly
.mob Angerclaw Mauler
.mob Felpaw Ravager
.mob Felpaw Scavenger
step
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>> 击杀|cRXP_ENEMY_萨瓦里克|r. 拾取|T133942:0|t[|cRXP_LOOT_萨瓦里克长笛|r]
>>|cRXP_WARN_使用|T133942:0|t[|cRXP_LOOT_萨瓦里克长笛|r]并接受任务|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 ,, Flute of Xavaric
.use 11668 
.mob Xavaric
step
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>> 击杀|cRXP_ENEMY_碧火唤魔者|r, |cRXP_ENEMY_碧火背叛者|r和|cRXP_ENEMY_碧火欺诈者|r. 拾取他们的|cRXP_LOOT_碧火魔符|r
.complete 4906,1 
.complete 4906,2 
.complete 4906,3 
.complete 939,1 
.mob Jadefire Hellcaller slain (8)
.mob Jadefire Betrayer slain (8)
.mob Jadefire Trickster slain (8)
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 ,, Silver Heart
.accept 4005 ,, Aquementas
.target Eridan Bluewind
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 939 ,, Flute of Xavaric
.turnin 4906 ,, Further Corruption
.accept 4441 ,, Felbound Ancients
.target Eridan Bluewind
step
#completewith next
.goto Felwood,60.204,5.841
.subzone 1762 >> 前往魔爪村
step
.goto Felwood,60.204,5.841
>>点击|cRXP_PICK_死木蒸锅|r
>>|cRXP_WARN_如果你已清出一条出路就可以直接点击|cRXP_PICK_死木蒸锅|r然后跑开. 你不需要清理周围的全部|r|cRXP_ENEMY_熊怪|r
.turnin 5084 ,, Falling to Corruption
.accept 5085 ,, Mystery Goo
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> 穿过木喉要塞前往冬泉谷
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5085 ,, Mystery Goo
.accept 5086 ,, Toxic Horrors
.target Donova Snowden
step
#completewith next
.goto Winterspring,27.898,34.449,15,0
.goto Winterspring,27.898,34.449,0
.goto Felwood,65.280,7.515,20 >> 穿过木喉要塞前往费伍德森林
step
.goto Felwood,50.6,22.4,70,0
.goto Felwood,49.6,26.6,70,0
.goto Felwood,48.0,24.0,70,0
.goto Felwood,49.6,26.6
>> 击杀|cRXP_ENEMY_剧毒之水|r. 拾取他们的|cRXP_LOOT_剧毒水滴|r
.complete 5086,1 
.mob Toxic Horror
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >> 穿过木喉要塞前往冬泉谷
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5086 ,, Toxic Horrors
.accept 5087 ,, Winterfall Runners
.accept 4842 ,, Strange Sources
.target Donova Snowden
step
#sticky
#label runners
>>击杀|cRXP_ENEMY_冬泉信使|r. 拾取他们的|cRXP_LOOT_冬泉箱子|r
>>|cRXP_WARN_他的刷新点在冬泉谷西部靠近木喉通道的地方. 巡逻路线已标记在地图上|r
.complete 5087,1 
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.unitscan Winterfall Runner
step
.goto Winterspring,32.4,37.6,0
.goto Winterspring,30.6,35.8,70,0
.goto Winterspring,33.6,36.8,70,0
.goto Winterspring,39.4,43.8,70,0
.goto Winterspring,41.6,42.8
>> 击杀|cRXP_ENEMY_冬泉探路者|r, |cRXP_ENEMY_冬泉巢穴守卫|r和|cRXP_ENEMY_冬泉图腾师|r
>>|cRXP_WARN_如果你打到了|T135816:0|t[|cRXP_LOOT_冬泉仪祭图腾|r], 先不要接受任务|r
.complete 5082,1 
.complete 5082,2 
.complete 5082,3 
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
#completewith next
.goto Felwood,65.48,3.47,20 >> 穿过木喉要塞找|cRXP_FRIENDLY_克尔达|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_克尔达|r|cRXP_WARN_在木喉要塞下层道路上巡逻|r
.use 20741 >>|cRXP_WARN_使用|T136232:0|t[|cRXP_LOOT_死木仪祭图腾|r]并接受任务|r
.accept 8470 ,, Deadwood Ritual Totem
.turnin 8470 ,, Deadwood Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_克尔达|r|cRXP_WARN_在木喉要塞下层道路上巡逻|r
.use 20742 >>|cRXP_WARN_使用|T135816:0|t[|cRXP_LOOT_冬泉仪祭图腾|r]并接受任务|r
.accept 8471 ,, Winterfall Ritual Totem
.turnin 8471 ,, Winterfall Ritual Totem
.reputation 576,neutral,<0,1 
.itemcount 20742,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_梅罗什|r
.accept 6031 ,, Runecloth
.turnin 6031 ,, Runecloth
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#requires runners
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_做好交了冬泉信使任务后马上远离|cRXP_FRIENDLY_多诺瓦·雪山|r的准备, 3只|cRXP_ENEMY_冬泉伏击者|r会攻击此处|r
.turnin 5082 ,, Threat of the Winterfall
.turnin 5087 ,, Winterfall Runners
.target Donova Snowden
step
.group
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5121 ,, High Chief Winterfall
.target Donova Snowden
step
#completewith next
.goto Winterspring,51.971,30.387
.subzone 2253 >> 前往坠星村
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_威恩德·夜风|r和|cRXP_FRIENDLY_加隆·石矛|r
.turnin 5250 ,, Starfall
.accept 5244 ,, The Ruins of Kel'Theril
.goto Winterspring,51.971,30.387
.turnin 5244 ,, The Ruins of Kel'Theril
.accept 4861 ,, Enraged Wildkin
.goto Winterspring,52.139,30.429
.target Wynd Nightchaser
.target Jaron Stoneshaper
step
.group 3
#completewith next
.goto Winterspring,69.75,38.24
>> 击杀|cRXP_ENEMY_冬泉酋长|r. 拾取他的|T133740:0|t[|cRXP_LOOT_潦草的日志|r]
>>|cRXP_WARN_使用|T133740:0|t[|cRXP_LOOT_潦草的日志|r]并接受任务|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 ,, The Final Piece
.use 12842 
.mob High Chief Winterfall
step
.goto Winterspring,66.83,34.86,70,0
.goto Winterspring,68.00,37.71
>> 击杀|cRXP_ENEMY_冬泉萨满|r, |cRXP_ENEMY_冬泉巢穴守卫|r和|cRXP_ENEMY_冬泉巨熊怪|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.group 3
.goto Winterspring,69.75,38.24
>> 击杀|cRXP_ENEMY_冬泉酋长|r. 拾取他的|T133740:0|t[|cRXP_LOOT_潦草的日志|r]
>>|cRXP_WARN_使用|T133740:0|t[|cRXP_LOOT_潦草的日志|r]并接受任务|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 ,, The Final Piece
.use 12842 
.mob High Chief Winterfall
step
#completewith next
.subzone 2255 >> 前往永望镇
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿兹雷比|r
.stable >> 把你的宠物存入兽栏. 你很快就会抓一只|cRXP_ENEMY_冬泉鸣枭|r
.target Azzleby
.zoneskip Winterspring,1
step << Hunter
.goto Winterspring,57.8,26.4,70,0
.goto Winterspring,59.6,18.0
>>|cRXP_WARN_施放|r|T132164:0|t[驯服野兽]|cRXP_WARN_对|cRXP_ENEMY_冬泉鸣枭|r|r
.train 3666 >>|cRXP_WARN_用它去攻击小怪以学会|r|T132140:0|t[爪击 (等级 8)]
.link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_点击此处查看更多宠物训练的信息|r
.mob Winterspring Screecher
.zoneskip Winterspring,1
step << Hunter
#completewith next
.subzone 2255 >> 前往永望镇
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌布雷克·火拳|r
.stable >> 从兽栏取出你的宠物
.target Azzleby
.zoneskip Winterspring,1
step
.goto Winterspring,61.358,38.837
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_旅店老板维兹奇|r
.home >> 绑定炉石到永望镇
.target Innkeeper Vizzie
.zoneskip Winterspring,1
step
.isOnQuest 4808
.goto Winterspring,61.455,36.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊兹·考伯加布|r
.bankwithdraw 12438 >> 从银行取出下列物品:
>>|T133469:0|t[丁奇的信] 
.target Izzy Coppergrab
step
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.turnin 4808 ,, Felnok Steelspring
.accept 4809 ,, Chillwind Horns
.target Felnok Steelspring
step
.group
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医玛艾里|r
.accept 969 ,, Luck Be With You
.target Witch Doctor Mau'ari
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.accept 3783 ,, Are We There, Yeti?
.target Umi Rumplesnicker
step
#completewith YetiCave
>> 击杀|cRXP_ENEMY_冰风奇美拉幼兽|r, |cRXP_ENEMY_冰风奇美拉|r和|cRXP_ENEMY_冰风劫毁者|r. 拾取他们的|cRXP_LOOT_完整的冰风奇美拉角|r
>>|cRXP_WARN_不要偏离目的地线路去击杀他们|r
.complete 4809,1 

.mob Chillwind Chimaera

step
.goto Winterspring,66.3,42.6
>> 击杀|cRXP_ENEMY_冰蓟雪人|r和|cRXP_ENEMY_游荡的冰蓟雪人|r. 拾取他们的|cRXP_LOOT_厚雪人毛皮|r
.complete 3783,1
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.turnin 3783 ,, Are We There, Yeti?
.accept 977 ,, Are We There, Yeti?
.target Umi Rumplesnicker
step
#label YetiCave
#completewith next
.goto Winterspring,67.59,42.96,35,0
.goto Winterspring,67.97,41.44,30 >> 进入雪人洞
step
.goto Winterspring,69.90,41.67
>> 击杀|cRXP_ENEMY_冰蓟雪人女王|r和|cRXP_ENEMY_冰蓟雪人王|r. 拾取他们的|cRXP_LOOT_完美的雪人角|r
.complete 977,1 
.mob Ice Thistle Matriarch
.mob Ice Thistle Patriarch
step
#completewith next
>> 击杀|cRXP_ENEMY_冰风奇美拉幼兽|r, |cRXP_ENEMY_冰风奇美拉|r和|cRXP_ENEMY_冰风劫毁者|r. 拾取他们的|cRXP_LOOT_完整的冰风奇美拉角|r
>>|cRXP_WARN_不要偏离目的地线路去击杀他们|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
#completewith next
.subzone 2248 >> 向南前往丹曼达尔
step
.goto Winterspring,58.991,59.784
>>点击地上的|cRXP_PICK_破损的箱子|r
.turnin 4861 ,, Enraged Wildkin
.accept 4863 ,, Enraged Wildkin
step
.goto Winterspring,61.439,60.691
>>点击|cRXP_PICK_加隆的马车|r
.turnin 4863 ,, Enraged Wildkin
.accept 4864 ,, Enraged Wildkin
step
.goto Winterspring,61.398,60.728
>> 拾取地上的|cRXP_LOOT_加隆的补给物资|r
.complete 4864,1 
step
.goto Winterspring,63.86,59.39,70,0
.goto Winterspring,65.52,60.29,70,0
.goto Winterspring,65.05,63.03,70,0
.goto Winterspring,65.52,60.29
>> 击杀|cRXP_ENEMY_疯狂的枭兽|r, |cRXP_ENEMY_月光枭兽|r和|cRXP_ENEMY_狂暴枭兽|r. 拾取|cRXP_LOOT_蓝色羽毛护符|r
.complete 4864,2 
.mob Crazed Owlbeast
.mob Moontouched Owlbeast
.mob Berserk Owlbeast
step
#completewith DDG
>> 击杀|cRXP_ENEMY_冰风奇美拉幼兽|r, |cRXP_ENEMY_冰风奇美拉|r和|cRXP_ENEMY_冰风劫毁者|r. 拾取他们的|cRXP_LOOT_完整的冰风奇美拉角|r
>>|cRXP_WARN_不要偏离目的地线路去击杀他们|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.group 3
.goto Winterspring,59.06,68.33
>> 拾取散布在霜语峡谷地上的|cRXP_LOOT_霜槌碎片|r
.complete 969,1 
step
#label DDG
.goto Winterspring,59.88,73.95
>>侦查暗语峡谷. 你不需要引到任何精英就能做到
.complete 4842,1 
step
.hs >> 炉石回永望镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
.zoneskip Winterspring,1
step
.isQuestComplete 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.turnin 977 ,, Are We There, Yeti?
.accept 5163 ,, Are We There, Yeti?
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.accept 5163 ,, Are We There, Yeti?
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,61.543,38.615
.use 12928 >> |cRXP_WARN_对|r|cRXP_FRIENDLY_莱加奇|r|cRXP_WARN_使用|r|T133003:0|t[乌米的机械雪人]
.complete 5163,1 
.target Legacki
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.turnin 4809 ,, Chillwind Horns
.target Felnok Steelspring
step
.group
.isQuestComplete 969
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_巫医玛艾里|r
.turnin 969 ,, Luck Be With You
.target Witch Doctor Mau'ari
step
.abandon 969 ,, Luck Be With You
step
#completewith SalfaTurnIn
>> 击杀|cRXP_ENEMY_冰风奇美拉幼兽|r, |cRXP_ENEMY_冰风奇美拉|r和|cRXP_ENEMY_冰风劫毁者|r. 拾取他们的|cRXP_LOOT_完整的冰风奇美拉角|r
>>|cRXP_WARN_不要偏离目的地线路去击杀他们|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
#completewith next
.goto Winterspring,52.139,30.429
.subzone 2253 >> 前往坠星村
step
.goto Winterspring,52.139,30.429
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_加隆·石矛|r
.turnin 4864 ,, Enraged Wildkin
.target Jaron Stoneshaper
step
.group
.isQuestComplete 5121
.isQuestComplete 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 ,, Strange Sources
.turnin 5121 ,, High Chief Winterfall
.turnin 5123 ,, The Final Piece
.accept 5128 ,, Words of the High Chief
.target Donova Snowden
step
.group
.isQuestComplete 5121
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 ,, Strange Sources
.turnin 5121 ,, High Chief Winterfall
.target Donova Snowden
step
.group
.isQuestComplete 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 ,, Strange Sources
.turnin 5123 ,, The Final Piece
.accept 5128 ,, Words of the High Chief
.target Donova Snowden
step
.group
.isQuestTurnedIn 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 ,, Strange Sources
.accept 5128 ,, Words of the High Chief
.target Donova Snowden
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 ,, Strange Sources
.target Donova Snowden
step
.abandon 5121 ,, High Chief Winterfall
step
#label SalfaTurnIn
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_萨尔法|r
.turnin 8464 ,, Winterfall Activity
.target Salfa
step << !Druid
#completewith next
.goto Moonglade,35.77,71.94
.zone Moonglade >> 穿过木喉要塞前往月光林地
step << Druid
#completewith next
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << Druid
>>传送到月光林地
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >> 学习职业技能
.target Loganaar
step
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6762 ,, Rabine Saturna
.accept 1124 ,, Wasteland
.target Rabine Saturna
step
.group
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
>>|cRXP_WARN_如果厄运之槌对话不可用就跳过此步|r
.skipgossip
.accept 5527 ,, A Reliquary of Purity
.target Rabine Saturna
step << Druid
.goto Moonglade,44.148,45.228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
.fly Teldrassil >> 飞往泰达希尔
.target Silva Fil'naveth
.skipgossip
step << !Druid
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德拉尔|r
.fp Moonglade >> 开启月光林地飞行点
.fly Teldrassil >> 飞往泰达希尔 << !Mage
.target Sindrayl
.zoneskip Moonglade,1
step << Mage
.zone Darnassus >> 传送到达纳苏斯
.zoneskip Moonglade,1
step << Mage
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_在月神殿内的月亮井处|r|cRXP_WARN_使用|r|T134870:0|t[艾瑞丹的瓶子]
.complete 4441,1 
step << Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 ,, Moontouched Wildkin
.target Erelas Ambersky
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 979 ,, Find Ranshalla
.target Erelas Ambersky
step << !Mage
#completewith BlessedWater
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step << !Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 4986 ,, Glyphed Oaken Branch
.target Mathrengyl Bearwalker
step << !Mage
#label BlessedWater
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_在月神殿内的月亮井处|r|cRXP_WARN_使用|r|T134870:0|t[艾瑞丹的瓶子]
.complete 4441,1 
step << !Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
.zoneskip Darnassus,1
step
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_维斯派塔斯|r
.fly Azshara >> 飞往艾萨拉
.target Vesprystus
step
#completewith FelboundAncients
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >> 前往费伍德森林
step
.group
.isOnQuest 5128
.goto Felwood,51.136,81.754
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科雷克·望天|r
.turnin 5128 ,, Words of the High Chief
.target Kelek Skykeeper
step
#label FelboundAncients
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4441 ,, Felbound Ancients
.timer 16,Felbound Ancients RP
.accept 4442 ,, Purified!
.turnin 4442 ,, Purified!
.target Eridan Bluewind
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
>>|cRXP_WARN_上交剩余的|r|T132884:0|t[|cRXP_LOOT_被污染的灵魂碎片|r]|cRXP_WARN_换取|r|T132804:0|t[|cRXP_LOOT_塞纳里奥植物药膏|r]
>>|cRXP_WARN_如果你没有就跳过此步|r
.daily 4103 >> 接受 狩猎换药膏
.dailyturnin 4103 >> 提交 狩猎换药膏
.target Arathandris Silversky
.zoneskip Felwood,1
step
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.goto Felwood,52.893,87.825,25,0
.goto Felwood,45.942,85.219,25,0
.goto Felwood,48.260,75.650,25,0
.goto Felwood,40.142,56.523,25,0
.goto Felwood,40.142,44.353,25,0
.goto Felwood,50.575,13.918,25,0
.goto Felwood,55.808,10.438,25,0
.goto Felwood,63.336,22.610,25,0
.cast 6478 >> |cRXP_WARN_找到一只|cRXP_PICK_被腐化的轻歌花|r. 点击以净化它. 点击|cRXP_PICK_净化过的轻歌花|r以获得|r|T135934:0|t[风歌夜曲]|cRXP_WARN_Buff|r
>>|cRXP_WARN_位置已标记在地图上. 如果你找不到就跳过|r
.itemcount 11516,2 
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米萨琳娜|r
.fly Tanaris >> 飞往塔纳利斯
.target Mishellena
.zoneskip Felwood,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 59-60 冬泉谷/希利苏斯 I
#next 59-60 冬泉谷/希利苏斯 II
step
.group
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4507 ,, Pawn Captures Queen
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 977
.goto Tanaris,51.059,26.873
.use 12928 >> |cRXP_WARN_对|r|cRXP_FRIENDLY_斯普琳科|r|cRXP_WARN_使用|r|T133003:0|t[乌米的机械雪人]
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.accept 4504 ,, Super Sticky
.target Tran'rek
step
#hardcoreserver
.isQuestTurnedIn 4084
#completewith SummonAquementas
>>打开|T133647:0|t[艾瑞丹的补给品] 拾取 |T133742:0|t[阿奎尔之书], |cRXP_LOOT_银爪|r和|cRXP_LOOT_铁树之心|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step 
.dungeon ST
.isQuestComplete 3528
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_叶基亚|r
.turnin 3528 ,, The God Hakkar
.target Yeh'kinya
step
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >> 前往落帆海湾
step
.isQuestTurnedIn 4084
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >> |cRXP_WARN_在落帆海湾的石头法阵处使用|r|T133742:0|t[阿奎尔之书]|cRXP_WARN_以召唤|cRXP_ENEMY_亚奎门塔斯|r|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>> 击杀|cRXP_ENEMY_亚奎门塔斯|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
#completewith next
.subzone 976 >> 前往加基森
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro >> 飞往安戈洛环形山
.target Bera Stonehammer
.zoneskip Tanaris,1
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_科琳|r
.turnin 4005 ,, Aquementas
.accept 3961 ,, Linken's Adventure
.target J.D. Collie
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3961 ,, Linken's Adventure
.accept 3962 ,, It's Dangerous to Go Alone
.target Linken
step
.isQuestTurnedIn 977
.goto Un'Goro Crater,43.660,9.371
.use 12928 >> |cRXP_WARN_对|r|cRXP_FRIENDLY_奎克希尔|r|cRXP_WARN_使用|r|T133003:0|t[乌米的机械雪人]
.complete 5163,3 
.target Quixxil
step
#hardcoreserver
.isQuestTurnedIn 4005
.destroy 11169 >> 摧毁|T133742:0|t[阿奎尔之书]
step
.goto Un'Goro Crater,46.2,19.6,70,0
.goto Un'Goro Crater,50.6,26.6,70,0
.goto Un'Goro Crater,48.4,32.8,70,0
.goto Un'Goro Crater,59.6,32.4,70,0
.goto Un'Goro Crater,63.4,23.6,70,0
.goto Un'Goro Crater,59.4,24.6,70,0
.goto Un'Goro Crater,51.6,24.8
>> 击杀|cRXP_ENEMY_焦油兽|r, |cRXP_ENEMY_焦油爬行者|r, |cRXP_ENEMY_焦油潜伏者|r和|cRXP_ENEMY_焦油兽王|r. 拾取他们的|cRXP_LOOT_极度粘稠的沥青|r
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lurker
.mob Tar Lord
step << Druid
.dungeon ST
.isQuestComplete 9053
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9053 ,, A Better Ingredient
.target Torwa Pathfinder
step
#hardcoreserver
.group 3
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_找路前往火羽山顶|r
.cast 14247 >>|cRXP_WARN_装备|r|T135467:0|t[亚奎门塔斯的银图腾]|cRXP_WARN_到副手|r
>>|cRXP_WARN_对|cRXP_ENEMY_火焰使者|r使用|r|T135467:0|t[亚奎门塔斯的银图腾]|cRXP_WARN_以驱散他的光环. 他的光环能击退你, 并会在战斗中周期性的重新施放. 确保一直有人能使用|r|T135467:0|t[亚奎门塔斯的银图腾]
.use 11522 
step
#hardcoreserver
.group 3
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_对|cRXP_ENEMY_火焰使者|r使用|r|T135467:0|t[亚奎门塔斯的银图腾]|cRXP_WARN_以驱散他的光环|r
>> 击杀|cRXP_ENEMY_火焰使者|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#hardcoreserver
.group 3
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>打开|cRXP_PICK_华丽的箱子|r. 拾取|cRXP_LOOT_金色火焰|r
.complete 3962,2 
step
.group 3
#completewith next
.goto Un'Goro Crater,49.93,81.70,70 >> 进入巨痕谷虫巢
.isOnQuest 4507
step
.group 3
#completewith next
.cast 15627 >> |cRXP_WARN_在巨痕谷内的|cRXP_PICK_格里什水晶|r处使用|r|T134809:0|t[格里什皇后诱引剂]|cRXP_WARN_. 你需要击退3波来袭的|cRXP_ENEMY_格里什虫子|r. 如果你在主厅外面击杀每波的最后一只怪, 就可以在每波的间隙吃喝恢复|r
.use 11833
.isOnQuest 4507
step
.group 3
.goto Un'Goro Crater,43.520,81.079
>>击败3波|cRXP_ENEMY_格里什虫子|r. 如果需要就使用房间外面作为重置点吃喝恢复
>>击杀|cRXP_ENEMY_格里什蜂后|r. 拾取她掉落的|cRXP_LOOT_大脑|r
.use 11833
.complete 4507,1
.isOnQuest 4507

step
#completewith next
.goto Un'Goro Crater,28.71,21.43,40,0
.goto Un'Goro Crater,29.78,10.25,40,0
.goto Silithus,88.40,23.81,60,0
.goto Un'Goro Crater,28.71,21.43,0
.zone Silithus >> 前往希利苏斯
step
.solo
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 ,, Wasteland
.target Layo Starstrike
step
.group
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 ,, Wasteland
.accept 1125 ,, The Spirits of Southwind
.target Layo Starstrike
step
#completewith end
.xpto60 >>一旦你有足够的经验升到60级就跳到 冬泉谷/希利苏斯 II 指南 
step
#phase 4
#completewith CH1
.subzone 3425 >> 前往塞纳里奥要塞
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡兰德拉斯|r
.accept 8307 ,, Desert Recipe
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,51.80,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_比提克斯·斯巴格|r对话
.accept 8277 ,, Deadly Desert Venom
.target Beetix Ficklespragg
step
.group
#phase 4
.goto Silithus,51.351,38.273
>>点击|cRXP_PICK_通缉告示: 死亡弯钩|r
.accept 8283 ,, Wanted - Deathclasp, Terror of the Sands
step
#phase 4
.isOnQuest 8275
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.turnin 8275 ,, Taking Back Silithus
.accept 8280 ,, Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.accept 8280 ,, Securing the Supply Lines
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.673,37.461
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_地理学家拉克斯班|r
.accept 8284 ,, The Twilight Mystery
.target Geologist Larksbane
step
#phase 4
#label CH1
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲍尔·蛮鬃|r
.accept 8318 ,, Secret Communication
.target Bor Wildmane
step
#phase 4
.goto Silithus,37.943,45.315
>>在暮光营地点击|cRXP_PICK_盖满沙子的烹饪书|r
>>|cRXP_WARN_从南边靠近暮光营地以更轻易的到达|r|cRXP_PICK_盖满沙子的烹饪书|r
.turnin 8307 ,, Desert Recipe
.accept 8313 ,, Sharing the Knowledge
.skill cooking,<285,1 
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡兰德拉斯|r
.turnin 8313 ,, Sharing the Knowledge
.accept 8317 ,, Kitchen Assistance
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>> 击杀|cRXP_ENEMY_掘泥打击者|r. 拾取他们的|cRXP_LOOT_沙虫的肉|r
>> 击杀|cRXP_ENEMY_掠沙诱捕者|r. 拾取他们的|cRXP_LOOT_掠沙蜘蛛的牙齿|r
>> 击杀|cRXP_ENEMY_石鞭蝎|r. 拾取他们的|cRXP_LOOT_蝎刺|r
>>|cRXP_WARN_你不需要现在就集齐|cRXP_LOOT_沙虫的肉|r|r
.skill cooking,<285,1 
.complete 8280,1 
.collect 20424,10,8317,1,1 
.complete 8277,2 
.complete 8277,1 
.mob Dredge Striker
.mob Sand Skitterer
.mob Stonelash Scorpid
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>> 击杀|cRXP_ENEMY_掘泥打击者|r
>> 击杀|cRXP_ENEMY_掠沙诱捕者|r. 拾取他们的|cRXP_LOOT_掠沙蜘蛛的牙齿|r
>> 击杀|cRXP_ENEMY_石鞭蝎|r. 拾取他们的|cRXP_LOOT_蝎刺|r
.complete 8280,1 
.complete 8277,2 
.complete 8277,1 
.mob Dredge Striker
.mob Sand Skitterer
.mob Stonelash Scorpid
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.turnin 8280 ,, Securing the Supply Lines
.accept 8281 ,, Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.70,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_比提克斯·斯巴格|r对话
.turnin 8277 ,, Deadly Desert Venom
.accept 8278 ,, Noggle's Last Hope
.target Beetix Ficklespragg
step
.group 2
#completewith next
.goto Silithus,63.72,48.98,50,0 
>> 击杀|cRXP_ENEMY_被折磨的德鲁伊|r和|cRXP_ENEMY_被折磨的哨兵|r. |cRXP_WARN_每次只拉1只|cRXP_ENEMY_被折磨的德鲁伊|r和|cRXP_ENEMY_被折磨的哨兵|r. 当他们死的时候有几率刷新1只|cRXP_ENEMY_亚什雄蝎|r. 你也需要击杀它|r
>>|cRXP_ENEMY_亚什雄蝎|r可能掉落|T133463:0|t[|cRXP_LOOT_布莱恩·铜须的信件|r]
.use 20461 >>|cRXP_WARN_使用|T133463:0|t[|cRXP_LOOT_布莱恩·铜须的信件|r]并接受任务|r
.complete 1125,1 
.complete 1125,2 
.collect 20461,1,8308,1,1 
.accept 8308 ,, Brann Bronzebeard's Lost Letter
.disablecheckbox
.mob Tortured Druid
.mob Tortured Sentinel
step
.group 2
.isOnQuest 5527
.goto Silithus,63.225,55.354
>> 进入小屋子
>>打开地上的|cRXP_PICK_覆满灰尘的箱子|r. 拾取|cRXP_LOOT_净化之匣|r
.complete 5527,1 
step
.group 2
.goto Silithus,63.72,48.98 
>> 击杀|cRXP_ENEMY_被折磨的德鲁伊|r和|cRXP_ENEMY_被折磨的哨兵|r. |cRXP_WARN_每次只拉1只|cRXP_ENEMY_被折磨的德鲁伊|r和|cRXP_ENEMY_被折磨的哨兵|r. 当他们死的时候有几率刷新1只|cRXP_ENEMY_亚什雄蝎|r. 你也需要击杀它|r
>>|cRXP_ENEMY_亚什雄蝎|r可能掉落|T133463:0|t[|cRXP_LOOT_布莱恩·铜须的信件|r]
.use 20461 >>|cRXP_WARN_使用|T133463:0|t[|cRXP_LOOT_布莱恩·铜须的信件|r]并接受任务|r
.complete 1125,1 
.complete 1125,2 
.collect 20461,1,8308,1,1 
.accept 8308 ,, Brann Bronzebeard's Lost Letter
.disablecheckbox
.mob Tortured Druid
.mob Tortured Sentinel
step
.group
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1125 ,, The Spirits of Southwind
.accept 1126 ,, Hive in the Tower
.target Layo Starstrike
step
.group 2
.goto Silithus,60.354,52.558
>>爬上南风村塔楼. 你需要击杀进入塔楼时刷新的3只|cRXP_ENEMY_亚什雄蝎|r
>>点击|cRXP_PICK_亚什虫茧|r在塔顶与. 这会刷新2只|cRXP_ENEMY_亚什伏击者|r
>>击杀|cRXP_ENEMY_亚什伏击者|r. 拾取|cRXP_LOOT_异种蝎粘液包裹的物体|r
.complete 1126,1 
.mob Hive'Ashi Ambusher
step
.group
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_莱耶·星击|r
.turnin 1126 ,, Hive in the Tower
.accept 6844 ,, Umber, Archivist
.target Layo Starstrike
step
.group
.isQuestTurnedIn 1126
.destroy 17345 >> 摧毁|T134437:0|t[异种蝎粘液]. 这东西没卵用
step
#phase 4
#completewith next
.subzone 2740 >> 前往水晶谷. 避开沿途的精英|cRXP_ENEMY_亚什异种蝎|r
step
#phase 4
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,19.7,22.0,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4
>> 拾取地上的|cRXP_LOOT_暮光石板碎片|r
.complete 8284,1 
step
#phase 4
#completewith next
.subzone 3425 >> 前往塞纳里奥要塞
step
#phase 4
.goto Silithus,49.673,37.461
.target Geologist Larksbane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_地理学家拉克斯班|r
.turnin 8284 ,, The Twilight Mystery
.accept 8285 ,, The Deserter
step
#phase 4
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官玛尔利斯|r
.accept 8304 ,, Dearest Natalia
.target Commander Mar'alith
.xp <58,1
step
#phase 4
#completewith FinishKilling
>> 击杀|cRXP_ENEMY_石鞭撕掠者|r和|cRXP_ENEMY_石鞭巨钳蝎|r. 拾取他们的|cRXP_LOOT_蝎刺|r
>> 击杀|cRXP_ENEMY_石行蜘蛛|r. 拾取他们的|cRXP_LOOT_牙齿|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
#completewith FinishKilling
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r. 拾取他们的|cRXP_LOOT_沙虫的肉|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#completewith FinishKilling
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特加尔·塑纹者|r
.accept 8308 ,, Brann Bronzebeard's Lost Letter
.turnin 8308 ,, Brann Bronzebeard's Lost Letter
.use 20461 
.itemcount 20461,1 
.target Rutgar Glyphshaper
step
#phase 4
.isOnQuest 8304
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲁特加尔·塑纹者|r
.skipgossip
.complete 8304,2 
.target Rutgar Glyphshaper
step
#label FinishKilling
#phase 4
.isOnQuest 8304
.goto Silithus,40.815,88.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_法兰克尔·石桥|r
.skipgossip
.complete 8304,1 
.target Frankal Stonebridge
step
.group 3
#phase 4
.isOnQuest 8283
.goto Silithus,44.06,90.48,25,0
.goto Silithus,44.97,92.48
>> 击杀|cRXP_ENEMY_死亡弯钩|r. 拾取她掉落的|cRXP_LOOT_蝎钳|r
>>|cRXP_ENEMY_死亡弯钩|r|cRXP_WARN_拥有击退技能并能眩晕8秒. 确保一直远离它的近战范围. 如果没有信心击杀它就跳过此步|r
.complete 8283,1 
.mob Deathclasp
step
#phase 4
#completewith FinishCrushers
>> 击杀|cRXP_ENEMY_石鞭撕掠者|r和|cRXP_ENEMY_石鞭巨钳蝎|r. 拾取他们的|cRXP_LOOT_蝎刺|r
>> 击杀|cRXP_ENEMY_石行蜘蛛|r. 拾取他们的|cRXP_LOOT_牙齿|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r. 拾取他们的|cRXP_LOOT_沙虫的肉|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#label FinishCrushers
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
>> 击杀|cRXP_ENEMY_掘泥摧毁者|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
>> 击杀|cRXP_ENEMY_石鞭撕掠者|r和|cRXP_ENEMY_石鞭巨钳蝎|r. 拾取他们的|cRXP_LOOT_蝎刺|r
>> 击杀|cRXP_ENEMY_石行蜘蛛|r. 拾取他们的|cRXP_LOOT_牙齿|r
.complete 8278,1 
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.complete 8278,2 
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
.complete 8278,3 
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_隐士奥泰尔|r
.turnin 8285 ,, The Deserter
.accept 8279 ,, The Twilight Lexicon
.target Hermit Ortell
step
#phase 4
#completewith DearestNatalia
.subzone 3425 >> 前往塞纳里奥要塞
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_唤风者傲角|r
.turnin 8281 ,, Stepping Up Security
.target Windcaller Proudhorn
step
#phase 4
.isQuestTurnedIn 8313
.goto Silithus,49.880,36.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米希塔|r
>>|cRXP_BUY_购买10个|r|T134059:0|t[舒心草]
.collect 3713,10,8317,1 
.skill cooking,<285,1 
.target Mishta
step
#phase 4
.isQuestTurnedIn 8313
.goto Silithus,50.866,38.414
>>|cRXP_WARN_在塞纳里奥要塞烹饪火盆处|r|cRXP_WARN_用|r|T133971:0|t[烹饪]|cRXP_WARN_技能, 做10个|r|T134020:0|t[沙漠肉丸子]
.collect 20452,10,8317,1 
.skill cooking,<285,1 
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_卡兰德拉斯|r
.turnin 8317 ,, Kitchen Assistance
.itemcount 20452,10 
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_比提克斯·斯巴格|r和|cRXP_FRIENDLY_诺格·斯巴格|r对话
.turnin 8278 ,, Noggle's Last Hope
.goto Silithus,51.70,38.50
.accept 8282 ,, Noggle's Lost Satchel
.goto Silithus,51.615,38.517
.target Beetix Ficklespragg
.target Noggle Ficklespragg
step
#phase 4
#label DearestNatalia
.isOnQuest 8304
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官玛尔利斯|r
.turnin 8304 ,, Dearest Natalia
.target Commander Mar'alith
step
#phase 4
.isQuestComplete 8283
.goto Silithus,50.755,33.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在塔顶与|cRXP_FRIENDLY_维斯·库鲁兹|r对话
.turnin 8283 ,, Wanted - Deathclasp, Terror of the Sands
.target Vish Kozus
step
#phase 4
#completewith FinalKeeper
>>击杀所有类型的|cRXP_ENEMY_暮光之锤|r. 拾取他们的|cRXP_LOOT_暮光密文信|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,40.86,42.22
>> 击杀|cRXP_ENEMY_暮光守护者哈弗斯·灵刃|r. 拾取|cRXP_LOOT_暮光词典 - 第三章|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.66,36.08
>> 击杀|cRXP_ENEMY_暮光守护者玛恩纳|r. 拾取|cRXP_LOOT_暮光词典 - 第一章|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#label FinalKeeper
#phase 4
.goto Silithus,16.13,86.52
>> 击杀|cRXP_ENEMY_暮光守护者巴灵顿·埃克斯特|r. 拾取|cRXP_LOOT_暮光词典 - 第二章|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
.goto Silithus,18.6,82.2,70,0
.goto Silithus,19.8,87.0
>>击杀所有类型的|cRXP_ENEMY_暮光之锤|r. 拾取他们的|cRXP_LOOT_暮光密文信|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,44.562,91.379
>> 拾取地上的|cRXP_LOOT_诺格的背包|r
>>|cRXP_WARN_等待|cRXP_ENEMY_死亡弯钩|r走到山坡上再拾取|r|cRXP_LOOT_诺格的背包|r
.complete 8282,1 
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_隐士奥泰尔|r
.turnin 8279 ,, The Twilight Lexicon
.accept 8287 ,, A Terrible Purpose
.accept 8323,1 ,, True Believers
.turnin 8323 ,, True Believers
.target Hermit Ortell
step
#phase 4
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_鲍尔·蛮鬃|r
.turnin 8318 ,, Secret Communication
.target Bor Wildmane
step
#phase 4
#label end
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_指挥官玛尔利斯|r
.turnin 8287 ,, A Terrible Purpose
.target Commander Mar'alith
step
#phase 4
.goto Silithus,51.615,38.517
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_诺格·斯巴格|r对话
.turnin 8282 ,, Noggle's Lost Satchel
.target Noggle Ficklespragg
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 7
#group RXP联盟生存指南|猎風精翻版V1.0
#subgroup RXP生存指南 50-60 (汉化By猎風)
#classic
<< Alliance
#name 59-60 冬泉谷/希利苏斯 II
step
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克劳德·天舞者|r
.fly Un'Goro >> 飞往安戈洛环形山
.target Cloud Skydancer
step
#hardcoreserver
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_林克|r
.turnin 3962 ,, It's Dangerous to Go Alone
.target Linken
step
#hardcoreserver
.abandon 3962 ,, It's Dangerous to Go Alone
step
#completewith GadgetzanTurnins
.goto Silithus,50.581,34.448,-1
.goto Un'Goro Crater,45.234,5.833,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_克劳德·天舞者|r和|cRXP_FRIENDLY_葛莱夫|r
.fly Tanaris >> 飞往塔纳利斯
.target Cloud Skydancer
.target Gryfe
step
.isQuestComplete 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 ,, Pawn Captures Queen
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4508 ,, Calm Before the Storm
.target Alchemist Pestlezugg
step
.abandon 4507 ,, Pawn Captures Queen
step
#label GadgetzanTurnins
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 ,, Super Sticky
.target Tran'rek
step
.hs >> 炉石回永望镇
>>|cRXP_BUY_购买必要的吃喝|r << !Warrior !Rogue
>>|cRXP_BUY_购买必要的食物|r << Warrior/Rogue
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.turnin 4809 ,, Chillwind Horns
.target Felnok Steelspring
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_乌米|r
.turnin 5163 ,, Are We There, Yeti?
.target Umi Rumplesnicker
step
#completewith next
>> 击杀|cRXP_ENEMY_冰风奇美拉幼兽|r, |cRXP_ENEMY_冰风奇美拉|r和|cRXP_ENEMY_冰风劫毁者|r. 拾取他们的|cRXP_LOOT_完整的冰风奇美拉角|r
>>|cRXP_WARN_不要偏离目的地线路去击杀他们|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_兰莎尔拉|r
.turnin 979 ,, Find Ranshalla
.accept 4901,1 ,, Guardians of the Altar
>>|cRXP_WARN_接受祭坛守护者将会开启护送任务. 如果你在队伍中先确保每个人都已经提交了寻找兰莎尔拉. 自动任务接受已为此任务关闭|r
.target Ranshalla
step
.goto Winterspring,64.59,61.06,20,0
.goto Winterspring,65.82,58.76,20,0
.goto Winterspring,66.48,60.02,20,0
.goto Winterspring,66.25,61.50,20,0
.goto Winterspring,65.56,64.57,20,0
.goto Winterspring,64.797,63.784
>> 护送|cRXP_FRIENDLY_兰莎尔拉|r穿越枭翼树丛
>>当|cRXP_FRIENDLY_兰莎尔拉|r开始对他们施法时, 点击洞内的|cRXP_PICK_艾露恩之光|r火炬 , 然后在最后|cRXP_PICK_艾露恩祭坛|r
.complete 4901,1
.target Ranshalla
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.turnin 4809 ,, Chillwind Horns
.target Felnok Steelspring
step 
#label horns
#completewith next
>> 击杀|cRXP_ENEMY_冰风奇美拉幼兽|r, |cRXP_ENEMY_冰风奇美拉|r和|cRXP_ENEMY_冰风劫毁者|r. 拾取他们的|cRXP_LOOT_完整的冰风奇美拉角|r
.complete 4809,1 
.goto Winterspring,66.4,47.2,75,0
.goto Winterspring,57.0,40.2,75,0
.goto Winterspring,53.2,37.4,75,0
.goto Winterspring,47.2,43.6,75,0
.goto Winterspring,44.6,41.2,75,0
.goto Winterspring,39.2,36.4,75,0
.goto Winterspring,56.4,25.4,75,0
.goto Winterspring,57.0,20.4,75,0
.goto Winterspring,65.4,27.6,75,0
.goto Winterspring,60.2,24.6
.turnin 4809 ,, Chillwind Horns
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_菲诺克|r
.target Felnok Steelspring
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step 
#completewith horns
.xpto60 >> 如果你有足够的经验到达60级就跳过|cRXP_ENEMY_奇美拉|r任务并交还手上的任务 
step << Druid
.isOnQuest 6844,5527
.cast 18960 >> 施放传送: 月光林地
.zoneskip Moonglade
step << !Druid
.isOnQuest 6844,5527
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦瑟蕾亚|r
.fly Moonglade >> 飞往月光林地
.target Maethrya
step
.isQuestTurnedIn 1126
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿姆伯尔|r
>>|cRXP_FRIENDLY_阿姆伯尔|r|cRXP_WARN_可能在整个永夜港巡逻|r
.turnin 6844 ,, Umber, Archivist
.accept 6845 ,, Uncovering Past Secrets
.target Umber
step
.isQuestTurnedIn 1126
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6845 ,, Uncovering Past Secrets
.target Rabine Saturna
step
.isQuestComplete 5527
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 5527 ,, A Reliquary of Purity
.target Rabine Saturna
step
.isQuestTurnedIn 1126
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_阿姆伯尔|r
>>|cRXP_FRIENDLY_阿姆伯尔|r|cRXP_WARN_可能在整个永夜港巡逻|r
.accept 1185 ,, Under the Chitin Was...
.turnin 1185 ,, Under the Chitin Was...
.target Umber
step
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_辛德拉尔|r
.fly Felwood >> 飞往费伍德森林
.target Sindrayl
.zoneskip Moonglade,1
step
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_麦瑟蕾亚|r
.fly Felwood >> 飞往费伍德森林
.target Maethrya
.zoneskip Winterspring,1
step << !Mage
#sticky
.goto Felwood,62.77,10.57,70,0
.goto Felwood,62.77,10.57,0
.xpto60 >>  在魔爪村刷|cRXP_ENEMY_熊怪|r直到你有足够的经验到达60级, 然后飞往达纳苏斯
.mob Deadwood Shaman
.mob Deadwood Den Watcher
.mob Deadwood Avenger
step << !Mage
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_米萨琳娜|r
.fly Teldrassil >> 飞往泰达希尔
.target Mishellena
step << Mage
#sticky
.goto Felwood,62.77,10.57
.xpto60 >> 在魔爪村刷|cRXP_ENEMY_熊怪|r直到你有足够的经验到达60级, 然后传送到达纳苏斯
.mob Deadwood Shaman
.mob Deadwood Den Watcher
.mob Deadwood Avenger
step << Mage
.zone Darnassus >> 传送到达纳苏斯
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 4901 ,, Guardians of the Altar
.target Erelas Ambersky
step << !Mage
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 4902 ,, Wildkin of Elune
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.isQuestTurnedIn 4507
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼与|cRXP_FRIENDLY_格拉希娜·灵风|r对话
.turnin 4508 ,, Calm Before the Storm
.accept 4510 ,, Calm Before the Storm
.target Gracina Spiritmight
step
.goto Darnassus,39.38,42.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_伊迪瑞娜|r
.turnin 4510 ,, Calm Before the Storm
.target Idriana
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >> 穿过紫色传送门前往鲁瑟兰村
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 4901 ,, Guardians of the Altar
.target Erelas Ambersky
step << Mage
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 4902 ,, Wildkin of Elune
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.889,89.456
.zone Darnassus >> 穿过紫色传送门进入达纳苏斯
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 4902 ,, Wildkin of Elune
.target Arch Druid Fandral Staghelm
step
+恭喜您完成RXP1-60硬核生存指南! 感谢您的使用.
.link https://discord.gg/restedxp >> 因为本指南是在PTR上测试的, 所以在所难免会有一些Bug. 如果你在使用过程中遇到任何Bug, 请在此处上报!
]])
