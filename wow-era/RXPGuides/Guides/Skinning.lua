RXPGuides.RegisterGuide([[
#wotlk
#group +专业升级
<< Horde
#name 1-450 剥皮 (H)
#displayname 1-450 Skinning

step << Mage
    #completewith Thuwd
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .zoneskip Orgrimmar
    .zoneskip Dalaran
    .skill skinning,75,1
step << !Mage
    #completewith Thuwd
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Orgrimmar,63.0,45.5,0,0
    >>从 Thuwd 旁边的 Tamar 处购买剥皮刀
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Thuwd
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8613 >>在奥格瑞玛的建筑中向 Thuwd 学习剥皮学徒 (1-75)
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Durotar,45.5,12.2
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .skill skinning,75,1
step
    #requires Shank
    .openmap Durotar
    .skill skinning,75 >>在杜隆塔尔，通过杀死野兽、抢劫它们然后剥皮，将剥皮等级从 1 级提高到 75 级。按“M”打开地图查看路线。
    .loop 45,Durotar,54.5,68.2,54.2,60.1,54.7,58.9,54.5,54.3,51.2,51.8,51.1,46.6,47.4,42.7,45.7,37.7,45.0,34.3,43.0,34.9,42.6,37.0,40.8,37.0,38.5,34.3,36.5,31.3,36.9,25.0,38.5,21.7,40.8,21.1,43.0,21.4,44.4,19.2,43.5,15.7,
step << !Mage
    .goto Orgrimmar,48.8,91.0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << Mage
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .skill skinning,125,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,125,1
    .zoneskip Orgrimmar
step << !Mage
    #completewith next
    .goto Dalaran,55.5,25.5
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .skill skinning,125,1
step
    .goto Orgrimmar,62.1,45.7,20,0
    .goto Orgrimmar,63.4,45.4
    .train 8617 >>火车熟练工剥皮 (75-150) 从奥格瑞玛建筑中的 Thuwd 处获取
    .skill skinning,125,1
step
    #completewith next
    .goto Orgrimmar,45.1,63.9
    .fly Crossroads >>飞向十字路口
    .zoneskip The Barrens
    .skill skinning,125,1
step
    >>在到达陶拉祖营地之前，目标是至少达到 125 级技能等级
    .skill skinning,125 >>将贫瘠之地的剥皮等级从 75 提高到 125 级
    .loop 45,The Barrens,51.0,31.7,51.0,35.0,50.2,36.3,49.3,38.0,49.6,39.9,49.0,42.5,50.2,45.4,49.5,47.8,46.0,51.7,45.9,53.7,46.3,56.2,
step
    .goto The Barrens,45.1,59.1
    .train 8618 >>向陶拉祖营地的德兰学习剥皮专家 (150-225)
    .skill skinning,165,1
step
    .skill skinning,165 >>将贫瘠之地的剥皮等级从 125 级提升至 165 级
    .loop 45,The Barrens,46.1,59.9,46.9,63.1,46.7,65.3,46.9,68.0,45.6,71.5,45.4,74.6,45.0,77.6,47.1,79.2,46.8,82.0,44.8,85.2
step
    #completewith next
    .goto Thousand Needles,32.1,22.7
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
    .skill skinning,205,1
step
    .skill skinning,205 >>将千针石林的剥皮等级从 165 级提升至 205 级
    .loop 45,Thousand Needles,31.4,25.4,30.8,28.2,31.4,31.2,30.0,34.2,29.9,41.7,31.2,47.5,32.2,52.4,38.8,56.7,42.9,59.7,48.4,59.4,53.3,54.0,57.7,56.5,61.7,60.1,66.6,61.6,69.9,62.7,72.1,67.7,71.8,74.2,72.9,81.3,77.4,84.0,80.9,87.7,78.6,91.1,75.7,89.7
step
    .goto Feralas,88.8,41.4,-1
    .goto Tanaris,51.3,21.4,-1
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Tanaris,51.6,25.4
    .fly Camp Mojache >>飞往莫沙彻营地
    .skill skinning,230,1
    .zoneskip Feralas
step
    .goto Feralas,74.7,43.0,12,0
    .goto Feralas,74.5,43.0
    .train 10768 >>在莫沙彻营地的大帐篷里，从库莱格那里训练工匠剥皮 (225-300)
    .skill skinning,230,1
step
    .skill skinning,230 >>在菲拉斯将你的剥皮等级从 205 提高到 230
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>杀死山洞里的雪人或者山洞外的角鹰兽，然后剥下它们的皮
    .skill skinning,260 >>在菲拉斯将你的剥皮等级从 230 提高到 260
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>杀死山洞里的雪人或者山洞外的野兽，然后剥下它们的皮
    .skill skinning,280 >>在菲拉斯将你的剥皮等级从 260 提高到 280
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step
    #completewith next
    .goto Feralas,75.4,44.4
    >>骑车返回莫沙彻营地
    .fly Marshal's Refuge >>飞往元帅避难所
    .zoneskip Un'Goro Crater
    .skill skinning,300,1
step
    .skill skinning,300 >>在安戈洛环形山将剥皮等级从 280 提高到 300
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .goto Dalaran,37.3,66.2
    .zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
    .skill skinning,305,1
    .zoneskip Hellfire Peninsula
step
    #completewith Moorutu
    .goto Shattrath City,64.1,41.1
    .fly Thrallmar >>飞往萨尔玛
    .skill skinning,305,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.3,38.6
    .zone Hellfire Peninsula >>前往: |cRXP_PICK_地狱火半岛|r
    .skill skinning,305,1
    .skill riding,<300,1
step
    #label Moorutu
    .goto Hellfire Peninsula,56.3,38.6
    .train 32678 >>训练大师剥皮 (300-375) 来自萨尔玛的穆鲁图
    .skill skinning,305,1
step
    >>杀死饥饿的地狱野猪，然后剥皮
    .skill skinning,305 >>在地狱火半岛将你的剥皮等级从 300 提高到 305 级
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>杀死疯狂的地狱野猪，然后剥皮
    .skill skinning,310 >>在地狱火半岛将你的剥皮等级从 305 提高到 310
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>杀死剃刀牙幼崽和剃刀牙掠夺者，然后剥去它们的皮
    .skill skinning,330 >>在地狱火半岛将你的剥皮等级从 310 提高到 330
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
    .skill skinning,375,1
    .zoneskip Nagrand
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >>前往: |cRXP_PICK_纳格兰|r
    .skill skinning,375,1
step
    >>杀死塔布牛和裂蹄牛，然后剥皮
    .skill skinning,350 >>在纳格兰将你的剥皮等级从 330 提高到 350
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << !Mage
    #completewith next
    .goto Shattrath City,52.3,52.5,40,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .skill skinning,375,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .goto Orgrimmar,52.6,85.4,40,0
    .goto Durotar,41.4,18.0,40,0
    .skill skinning,375,1
    .cooldown item,6948,<0,1
    .zone Borean Tundra >>前往: |cRXP_PICK_北风苔原|r
step << Mage
    #completewith next
    .zone Dalaran >>前往: |cRXP_PICK_达拉然|r
    .skill skinning,375,1
    .zoneskip Borean Tundra
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .zoneskip Shattrath City
    .skill skinning,375,1
step << !Mage
    #completewith next
    .goto Borean Tundra,42.6,53.2
    .zone Borean Tundra >>前往: |cRXP_PICK_北风苔原|r
    .skill skinning,375,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly Taunka'le Village >>飞往 北风苔原 (陶卡雷村)
    .skill skinning,375,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label Tiponi
    .goto Borean Tundra,76.2,37.6
    .train 50305 >>在 Taunka'le Village 向 Tiponi Stormwhisper 学习大师级剥皮 (350-450)
    .skill skinning,375,1
step
    #label BoreanTundra
    .skill skinning,375,1 >>在北风苔原将剥皮等级从 350 提高到 375
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >>前往: |cRXP_PICK_达拉然|r
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >>前往: |cRXP_PICK_祖达克|r
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >>飞往祖达克（银色圣地）
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >>在祖达克将剥皮等级从 375 提高到 400
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >>前往: |cRXP_PICK_风暴峭壁|r
    .skill skinning 450,1
step
    .skill skinning,400 >>将你的风暴峭壁剥皮等级从 400 提高到 450
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +恭喜您达到剥皮技能等级 450！
]])

RXPGuides.RegisterGuide([[
#wotlk
#group +专业升级
<< Alliance
#name 1-450 剥皮 (A)
#displayname 1-450 Skinning

step << Mage
    #completewith Maris
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .skill skinning,75,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,75,1
    .zoneskip Stormwind City
step << !Mage
    .goto Dalaran,38.9,62.6
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .skill skinning,75,1
step
    #sticky
    #label Shank
    .goto Stormwind City,71.6,62.8,0,0
    >>从西蒙旁边的吉莉安那里购买一把剥皮刀
    .collect 7005,1 --Skinning Knife (1)
    .skill skinning,75,1
step
    #label Maris
    .goto Stormwind City,72.6,62.1,12,0
    .goto Stormwind City,72.1,62.2
    .train 8613 >>在暴风城的房屋中向马里斯学习剥皮学徒 (1-75)
    .skill skinning,75,1
step
    #requires Shank
    #completewith next
    .goto Elwynn Forest,32.3,49.9
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .skill skinning,75,1
step
    #requires Shank
    .openmap Elwynn Forest
    .skill skinning,75 >>在艾尔文，通过杀死野猪、抢劫它们然后剥皮，将你的剥皮等级从 1 级提高到 75 级。按“M”打开地图查看路线。
	.loop 25,Elwynn Forest,32.6,83.0,31.0,85.6,32.6,87.8,33.6,85.4,32.6,83.0
step << Mage
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .skill skinning,125,1
step << !Mage
    .goto Stormwind City,68.2,72.9,20,0
    .goto Stormwind City,71.0,72.5
    >>前往: |cRXP_PICK_暴风城|r
    .fly Ironforge
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Ironforge
    .skill skinning,125,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,125,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >>前往: |cRXP_PICK_暴风城|r
    .skill skinning,125,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8617 >>火车熟练工剥皮 (75-150) 铁炉堡巴尔萨斯处购买
    .skill skinning,125,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Thelsamar >>飞往塞尔萨玛
    .skill skinning,125,1
    .zoneskip Loch Modan
step
    .skill skinning,115 >>在洛克莫丹将剥皮等级从 75 级提高到 115 级
    .loop 45,Loch Modan,34.4,53.8,37.7,52.3,41.7,54.4,44.4,64.1,49.9,69.3,55.6,66.9,63.9,63.4,59.4,62.0,63.0,57.0,64.3,48.7,62.2,38.9,59.9,36.9,59.5,29.8,58.9
step
    .skill skinning,125 >>在洛克莫丹将剥皮等级从 115 级提高到 125 级
    .loop 45,Loch Modan,61.5,40.9,72.4,41.8,76.8,47.9,77.4,41.4,59.9,28.0,61.5,40.9
step << Mage
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .skill skinning,155,1
step << !Mage
    .goto Loch Modan,33.9,51.0
    >>返回塞尔萨玛
    .fly Ironforge
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Ironforge
    .skill skinning,155,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,155,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >>前往: |cRXP_PICK_暴风城|r
    .skill skinning,155,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 8618 >>在铁炉堡的巴尔萨斯处训练“剥皮专家”(150-225)
    .skill skinning,155,1
step
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >>飞往米奈希尔港
    .skill skinning,155,1
    .zoneskip Wetlands
step
    .skill skinning,155 >>将湿地的剥皮等级从 140 提高到 155 级
    .loop 45,Wetlands,31.9,42.0,30.4,45.1,29.9,47.5,27.7,46.7,26.6,47.8,26.5,49.7,24.6,53.8,22.7,57.4,20.2,54.4,18.9,50.7
step
    #completewith next
    .goto Wetlands,9.5,59.7
    >>返回米奈希尔
    .fly Refuge Pointe >>飞往 Refuge Pointe
    .zoneskip Arathi Highlands
step
    .skill skinning,185 >>在阿拉希高地将剥皮等级从 155 级提高到 185 级
    .loop 45,Arathi Highlands,44.9,52.8,47.0,54.9,49.7,50.6,52.4,46.0,55.2,48.3,59.4,45.1,64.4,45.4,68.6,39.1,66.8,34.3,64.3,38.0,59.6,38.4,55.5,42.9,51.3,40.4,46.5,41.1,43.3,38.7,42.0,43.4,40.7,48.4,36.2,49.8
step
    .skill skinning,205 >>在阿拉希高地将剥皮等级从 185 级提高到 205 级
    .loop 45,Arathi Highlands,47.2,69.9,46.8,73.0,45.7,76.4,45.6,81.2,48.2,82.6,51.1,74.4,54.1,69.9,56.6,68.0,54.9,62.9,48.7,60.6,47.2,69.9
step << Mage
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .skill skinning,230,1
step << !Mage
    .goto Arathi Highlands,45.8,46.1
    >>返回 Refuge Pointe
    .fly Ironforge
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Ironforge
    .skill skinning,230,1
    .cooldown item,6948,<0,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,230,1
    .zoneskip Ironforge
step << !Mage
    #completewith next
    .goto Dalaran,39.2,63.7
    .zone Ironforge >>前往: |cRXP_PICK_暴风城|r
    .skill skinning,230,1
step
    .goto Ironforge,42.1,33.2,15,0
    .goto Ironforge,40.4,35.5,12,0
    .goto Ironforge,39.9,32.5
    .train 10768 >>在铁炉堡的巴尔萨斯处学习工匠剥皮 (225-300)
    .skill skinning,230,1
step << Mage
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
    .skill skinning,230,1
step << !Mage
    #completewith next
    .goto Ironforge,55.5,47.7
    .fly Menethil >>飞往米奈希尔港。或者，向法师支付前往塞拉摩的传送门
    .skill skinning,230,1
    .zoneskip Dustwallow Marsh
    .zoneskip Feralas
step << !Mage
    .goto Wetlands,5.0,63.5
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
    .skill skinning,230,1
    .zoneskip Feralas
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3
    .fly Thalanaar >>飞往萨兰纳尔
    .skill skinning,230,1
    .zoneskip Feralas
step
    .skill skinning,230 >>在菲拉斯将你的剥皮等级从 205 提高到 230
    .loop 45,Feralas,72.3,44.4,71.1,41.5,74.4,40.7,76.7,39.4,76.7,39.4,79.2,38.3,79.7,39.9,79.2,44.1,78.9,46.2,78.3,47.8,76.5,48.7,75.4,51.9,73.1,54.6,
step
    >>杀死山洞里的雪人或者山洞外的角鹰兽，然后剥下它们的皮
    .skill skinning,260 >>在菲拉斯将你的剥皮等级从 230 提高到 260
    .loop 45,Feralas,58.7,55.0,57.2,56.4,55.3,56.3,56.2,58.3,55.5,62.1,56.1,63.9,54.6,65.4,53.4,68.5,53.8,70.0,54.5,73.6,56.3,73.5,55.5,69.9
step
    >>杀死山洞里的雪人或者山洞外的野兽，然后剥下它们的皮
    .skill skinning,280 >>在菲拉斯将你的剥皮等级从 260 提高到 280
    .loop 45,Feralas,48.4,37.9,49.9,33.7,52.,31.8,49.4,31.5,49.5,29.3,50.1,26.4,47.6,24.5,45.8,24.6,46.5,27.5,46.3,29.9
step << Mage
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
    .skill skinning,300,1
step
    #completewith next
    .goto Dustwallow Marsh,67.5,51.3 << Mage
    .goto Feralas,30.2,43.2 << !Mage
    >>前往羽月要塞 << !Mage
    .fly Marshal's Refuge >>飞往元帅避难所
    .skill skinning,300,1
    .zoneskip Un'Goro Crater
step
    .skill skinning,300 >>在安戈洛环形山将剥皮等级从 280 提高到 300
    .loop 45,Un'Goro Crater,31.5,28.9,37.1,28.9,42.1,33.4,42.7,40.2,40.7,45.1,34.3,44.6,29.4,40.0,29.4,34.4,31.5,28.9
step << Mage
    #completewith next
    .zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,330,1
    .zoneskip Hellfire Peninsula
step >>!mage
    #completewith next
    .goto Dalaran,37.2,66.4
    .zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
    .skill skinning,330.1
    .zoneskip Hellfire Peninsula
step
    #completewith Jelena
    .goto Shattrath City,64.1,41.1
    .fly Honor Hold >>飞往荣誉堡
    .skill skinning,330,1
    .skill riding,300,1
    .zoneskip Hellfire Peninsula
step
    #completewith next
    .goto Hellfire Peninsula,56.7,63.8
    .zone Hellfire Peninsula >>前往: |cRXP_PICK_地狱火半岛|r
    .skill skinning,330,1
    .skill riding,<300,1
step
    #label Jelena
    .goto Hellfire Peninsula,54.9,63.6,12,0
    .goto Hellfire Peninsula,54.5,63.2
    .train 32678 >>荣耀堡旅店中的耶莲娜处训练大师剥皮 (300-375)
    .skill skinning,305,1
step
    >>杀死饥饿的地狱野猪，然后剥皮
    .skill skinning,305 >>在地狱火半岛将你的剥皮等级从 300 提高到 305 级
    .loop 45,Hellfire Peninsula,61.6,57.2,63.3,61.3,65.3,61.8,68.9,62.0,70.1,64.5,68.1,66.2,65.1,66.6,63.8,69.4,63.6,73.1,63.4,77.2,60.9,77.7,59.0,74.1,56.6,71.8
step
    >>杀死疯狂的地狱野猪，然后剥皮
    .skill skinning,310 >>在地狱火半岛将你的剥皮等级从 305 提高到 310
    .loop 45,Hellfire Peninsula, 47.7,77.9,47.5,73.2,48.6,69.8,49.3,66.7,51.0,66.1,52.4,69.7,53.2,74.0,51.6,78.0,49.6,79.5,47.7,77.9
step
    >>杀死剃刀牙幼崽和剃刀牙掠夺者，然后剥去它们的皮
    .skill skinning,330 >>在地狱火半岛将你的剥皮等级从 310 提高到 330
    .loop 45,Hellfire Peninsula,41.1,82.5,35.2,87.4,34.7,91.1,37.2,91.8,40.3,88.5,42.4,85.3,41.1,82.5
step << Mage
    #completewith next
    .zone Shattrath City >>前往: |cRXP_PICK_沙塔斯城|r
    .skill skinning,350,1
    .zoneskip Nagrand
step << !Mage
    #completewith next
    .hs >>沙塔斯城
    .skill skinning,350,1
    .zoneskip Nagrand
    .cooldown item,6948,>0,1
step
    #completewith next
    .goto Nagrand,77.4,54.6
    .zone Nagrand >>前往: |cRXP_PICK_纳格兰|r
    .skill skinning,350,1
step
    >>杀死塔布牛和裂蹄牛，然后剥皮
    .skill skinning,350 >>在纳格兰将你的剥皮等级从 330 提高到 375
    .loop 45,Nagrand,51.3,37.6,52.3,33.6,54.1,30.0,52.8,26.1,50.6,25.3,48.4,26.8,46.6,27.2,46.6,33.6,46.5,40.3,47.0,45.1,49.2,49.2,53.5,53.8,55.3,52.8,57.3,49.8,60.1,48.4,62.0,46.1,60.6,43.4,57.9,42.5,54.7,42.5,52.7,40.7,51.3,37.6
step << Mage
    #completewith next
    .zone Dalaran >>前往: |cRXP_PICK_达拉然|r
    .skill skinning,375,1
step << !Mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,375,1
step
    #completewith next
    .goto Dalaran,72.4,45.5
    .fly Valiance Keep >>飞往 北风苔原 (无畏要塞)
    .skill riding,300,1
    .skill skinning,375,1
step
    #completewith next
    .goto Borean Tundra,57.6,71.8 >>骑上你的飞行坐骑飞往北风苔原的无畏要塞
    .skill riding,<300,1
    .skill skinning,375,1
step
    #label Jack
    .train 50305 >>从无畏要塞的诱捕者杰克处学习大师级剥皮 (350-450)
    .skill skinning,375,1
step
    .skill skinning,375,1 >>在北风苔原将剥皮等级从 350 提高到 375
    .loop 20,Borean Tundra,47.3,39.4,44.7,39.8,42.2,42.6,40.6,42.8,42.1,48.0,42.2,48.9,47.9,48.0,47.3,39.4
    .loop 20,Borean Tundra,49.7,74.3,43.4,76.4,40.1,73.8,40.6,70.3,45.8,69.7,48.7,68.9,50.7,66.7,52.1,68.7,49.7,74.3
step << Mage
    #completewith next
    .zone Dalaran >>前往: |cRXP_PICK_达拉然|r
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !mage
    #completewith next
    .hs >>炉石到达拉然
    .skill skinning,400,1
    .zoneskip Zul'Drak
step << !Mage
    #completewith next
    .zone Zul'Drak >>前往: |cRXP_PICK_祖达克|r
    .skill skinning,400,1
    .skill riding,<300,1
step << !Mage
    #completewith next
    .goto Dalaran,71.8,45.6
    .fly The Argent Stand >>飞往祖达克（银色圣地）
    .skill skinning,400,1
    .skill riding,300,1
    .zoneskip Borean Tundra
step
    #label ZulDrak
    .skill skinning,400 >>在祖达克将剥皮等级从 375 提高到 400
    .loop 20,Zul'Drak,34.7,58.1,34.5,46.1,37.1,46.5,43.3,49.2,43.5,36.8,46.4,36.0,46.3,50.8,39.9,58.2,34.7,58.1
step
    #completewith next
    .zone The Storm Peaks >>前往: |cRXP_PICK_风暴峭壁|r
    .skill skinning 450,1
step
    .skill skinning,400 >>将你的风暴峭壁剥皮等级从 400 提高到 450
    .loop 20,The Storm Peaks,60.6,61.7,59.9,57.5,57.9,58.7,56.4,63.4,53.5,65.5,56.0,68.2,60.6,61.7,
step
    +恭喜您达到剥皮技能等级 450！
]])
