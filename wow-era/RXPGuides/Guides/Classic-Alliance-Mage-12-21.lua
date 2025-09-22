local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 12-18 黑海岸 法师 AoE
#version 1
#group RestedXP 联盟法师
#defaultfor Alliance Mage
#next 18-21 赤脊山 法师 AoE

step
    #completewith next
    .goto Darkshore,36.77,44.28
    .vendor >>您可以从莱尔德（鱼贩）处购买极其便宜的 5 级食物
step
    >>上楼到顶楼
    .goto Darkshore,36.98,44.14
.target Wizbang Cranktoggle
>>对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
step
    >>跳到一楼
    .goto Darkshore,37.04,44.13
    .home >>将你的炉石设为奥伯丁
step
    .goto Darkshore,37.32,43.64
.target Barithras Moonshade
>>对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
step
    .goto Darkshore,37.68,43.38
.target Sentinel Glynda Nal'Shea
>>对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接任务: |cRXP_LOOT_红色水晶|r
step
    .goto Darkshore,38.84,43.41
.target 萨纳利恩护树人
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
step
    .goto Darkshore,39.37,43.49
.target Terenthis
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接任务: |cRXP_LOOT_熊怪的威胁|r
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
step
    .goto Darkshore,36.34,45.58
    .fp Auberdine >>获取奥伯丁飞行路线
step
    #completewith 熊
     >>杀死海岸沿线的爬行者
    .complete 983,1 --Crawler Leg (6)
step
    .goto Darkshore,36.38,50.88
     >>掠夺海洋生物
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >>找到一只狂暴的蓟熊。攻击它并使用背包中的萨纳瑞恩的希望（紫色球体）
    .complete 2118,1 --Rabid Thistle 熊 Captured (1)
step
    .goto Darkshore,39.01,53.70
     >>前往熊怪营地附近
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label 熊
    >>找到一只狂暴的蓟熊。攻击它并使用背包中的萨纳瑞恩的希望（紫色球体）
    .goto Darkshore,38.47,57.92
    .complete 2118,1 --Rabid Thistle 熊 Captured (1)
step
    .goto Darkshore,36.61,54.29,150,0
    .goto Darkshore,36.10,44.42
    >>杀死海岸沿线的爬行者
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >>保存 5 只鳐鱼肉以供日后使用
    .collect 5469,5,2178,1
step
    .goto Darkshore,36.66,46.26
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
step
    .goto Darkshore,36.62,45.59
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
.target Gwennyth Bly'Leggonde
    .accept 4681 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
step
    .goto Darkshore,36.73,44.06,40,0
    >>奔向码头
    .goto Darkshore,35.74,43.70
.target Cerellean Whiteclaw
>>对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接任务: |cRXP_LOOT_永志不渝|r
step
    #sticky
    #completewith Thundris
     >>杀死海里的黑海岸捕食者
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto Darkshore,33.70,42.45,60 >>跑到码头，然后在路口跳入水中
step
    .goto Darkshore,31.86,46.33
    >>点击水下的海龟头
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.62,45.59
    >>返回岸边途中杀死长尾鲨
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
step
    .goto Darkshore,38.84,43.41
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
.target 萨纳利恩护树人
    .accept 2138 >>接任务: |cRXP_LOOT_清除疫病|r
step
    .goto Darkshore,39.37,43.49
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
.target Terenthis
    .accept 985 >>接任务: |cRXP_LOOT_熊怪的威胁|r
    .accept 4761 >>接任务: |cRXP_LOOT_桑迪斯·织风|r
step
    >>杀死熊怪
    .goto Darkshore,39.83,56.11
    .goto Darkshore,39.74,53.76,0
    .complete 985,1 --黑木探路者 (8)
    .complete 985,2 --黑木风语者 (5)
step
    .goto Darkshore,39.37,43.48
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 985 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
.target Terenthis
    .accept 986 >>接任务: |cRXP_LOOT_丢失的主人|r
step
    >>上楼
    .goto Darkshore,39.04,43.55
.target Sentinel Elissa Starbreeze
>>对话: |cRXP_FRIENDLY_哨兵艾莉萨·星风|r
    .accept 965 >>接任务: |cRXP_LOOT_奥萨拉克斯之塔|r
step
    .goto Darkshore,38.11,41.16
.target Gorbold Steelhand
>>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接任务: |cRXP_LOOT_深不可测的海洋|r
step
    #label Thundris
    .goto Darkshore,37.39,40.13
>>对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
.target Thundris Windweaver
    .accept 4762 >>接任务: |cRXP_LOOT_壁泉河|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .accept 958 >>接任务: |cRXP_LOOT_上层精灵的工具|r
step
     #label Threshers
     #sticky
     >>沿着海岸游泳，杀死长尾鲨
    .complete 1001,1 --Thresher Eye (3)
step
    .goto Darkshore,38.93,29.33,40,0
    .goto Darkshore,38.23,28.79
     >>从船体上的洞进入第一艘船，然后前往船的最底层后面
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto Darkshore,40.30,27.69,40,0
    .goto Darkshore,39.63,27.45
     >>从船体上的洞进入第二艘船，然后前往船的最底层后面
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto Darkshore,41.96,28.64
    .turnin 1001 >>交任务: |cRXP_FRIENDLY_传声盒411号|r
    .accept 1002 >>接任务: |cRXP_LOOT_传声盒323号|r
step
    .goto Darkshore,41.94,31.47
    .accept 4723 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    .goto Felwood,27.70,10.03
>>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
.target Asterion
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
step
    .goto Felwood,29.13,12.34
     >>杀死小魔怪。掠夺他们的耳环
    .complete 955,1 --Grell Earring (8)
step
    .goto Felwood,27.70,10.03
>>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
.target Asterion
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
step
    .goto Felwood,29.60,12.52
     >>杀死萨特。掠夺他们以获得封印
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto Felwood,27.70,10.03
>>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
.target Asterion
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
step
    #sticky
    #completewith ReadAndy
     >>杀死任意类型的月夜猎手。掠夺它们的尖牙
    .complete 1002,1 --月夜猎者 Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>杀死你看到的狂暴蓟熊。至少有 50% 的法力，并在它们给你狂暴症（减益效果）之前消灭它们
    .complete 2138,1 --Rabid Thistle 熊 (20)
step
    .goto Darkshore,50.77,25.43
    >>使用包中的空采样管
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +保存你抢到的小蛋，以便以后提高烹饪水平。保存你得到的所有轻羽毛，以备后用
step
    .goto Darkshore,47.11,48.63
     >>跑到山里的红水晶那里
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接任务: |cRXP_LOOT_亚米萨兰的毁灭|r
step
    #sticky
    #label anaya
    .goto Darkshore,42.29,60.46,0
     >>杀死安纳亚·黎明行者。她在阿米萨兰中部巡逻
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >>杀死鬼魂，掠夺他们的遗物
    .complete 958,1 --Highborne Relic (7)
step
    .goto Felwood,25.98,40.62
     >>点击地面上的石板
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Felwood,25.66,39.11
     >>点击凉亭上的绿色火炬
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Felwood,26.71,35.53
     >>点击地面上的石板
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务: |cRXP_FRIENDLY_亚米萨兰的毁灭|r
step
    .goto Darkshore,38.83,60.82
    >>杀死疯狂蓟熊并获得游鳐肉
    .complete 2138,1 --Rabid Thistle 熊 (20)
    .collect 5469,5,2178,1
step
    >>掠夺海龟
    .goto Darkshore,37.14,62.12
    .accept 4722 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    >>掠夺海龟
    .goto Darkshore,36.02,70.79
    .accept 4728 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    .hs >>哈思至奥伯丁
step
    .goto Darkshore,38.84,43.42
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2138 >>交任务: |cRXP_FRIENDLY_清除疫病|r
.target 萨纳利恩护树人
    .accept 2139 >>接任务: |cRXP_LOOT_萨纳瑞恩的希望|r
step
    .goto Darkshore,38.11,41.17
.target Gorbold Steelhand
>>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务: |cRXP_FRIENDLY_深不可测的海洋|r
    .vendor >>从戈尔博德购买一些温和的香料，直到你有足够的香料来煮所有的鸡蛋
step
    .goto Darkshore,37.69,40.66
    >>确保你有 10 分烹饪，否则你不能接受/提交任务
.target Alanndarian Nightsong
>>对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_LOOT_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
step
    .goto Darkshore,37.40,40.13
>>对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 958 >>交任务: |cRXP_FRIENDLY_上层精灵的工具|r
    .turnin 4762 >>交任务: |cRXP_FRIENDLY_壁泉河|r
.target Thundris Windweaver
    .accept 4763 >>接任务: |cRXP_LOOT_黑木熊怪的堕落|r
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_LOOT_健忘的勘察员|r
step
    .goto Darkshore,37.71,43.36
>>对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4811 >>交任务: |cRXP_FRIENDLY_红色水晶|r
.target Sentinel Glynda Nal'Shea
    .accept 4812 >>接任务: |cRXP_LOOT_清洗水晶|r
step
    .goto Darkshore,37.78,44.06
     >>在月亮井处填满空水管
    .complete 4812,1
     >>在月亮井处填满空碗
    .collect 12347,1,4763,1
step
    #completewith next
    .goto Darkshore,36.83,43.91
    .vendor >>从塔尔丹那里购买 15 级饮料
step
    >>回到码头
    .goto Felwood,18.10,18.48
.target Cerellean Whiteclaw
>>对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .turnin 963 >>交任务: |cRXP_FRIENDLY_永志不渝|r
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_LOOT_海中的水果|r
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4722 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4723 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4728 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r << Gnome
step
    .goto Darkshore,47.32,48.70
     >>点击红色水晶
    .turnin 4812 >>交任务: |cRXP_FRIENDLY_清洗水晶|r
    .accept 4813 >>接任务: |cRXP_LOOT_水晶中的碎骨|r
step
    #sticky
    #label 月夜猎者sF
     >>杀死任意类型的月夜猎手。掠夺它们的尖牙
    .complete 1002,1 --月夜猎者 Fang (6)
    .unitscan 月夜猎者;月夜猎者 Runt
step
    .goto Darkshore,44.18,36.29
.target Asterion
>>对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
step
    .goto Darkshore,50.66,34.98
    >>装备你的新魔杖
    >>从桶里拾取黑木谷物样本，然后向东南方向跑向巢母（不要与怪物战斗）
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto Darkshore,52.60,36.65,45,0
    >>杀死巢穴之母。小心她的幼崽会将你击倒 2 秒
    >>如果你觉得困难，就努力达到 16 级，然后再试一次
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step
    >>从桶里拾取黑木坚果样本
    .goto Darkshore,51.80,33.51
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>从桶里拾取黑木水果样本。一群暴徒会在你的面前和西边的小屋之间出现——你可能需要跑
    .goto Darkshore,52.85,33.42
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>在篝火旁使用库存中的已装满的清洁碗。这会让附近的所有熊怪都变得友好。
    >>杀死营地之间出现的萨特，然后绕着火跑。从最大射程开始，因为他可能很难对付。杀死他后，捡起掉落在地上的篮子
    .goto Darkshore,52.38,33.29
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto Darkshore,54.98,32.79,35 >>前往瀑布上方的洞穴
step
    .goto Darkshore,55.66,34.89
     >>留在洞穴的上部。如果顶部末端没有死亡帽，则跳下去并从下面拿一顶
     >>当你拾取死亡帽时，洞口的第一个蓝色怪物应该已经重生了
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto Darkshore,54.97,24.89
>>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
.target Balthule Shadowstrike
    .accept 966 >>接任务: |cRXP_LOOT_奥萨拉克斯之塔|r
step
    >>杀死黑暗海岸狂热分子。掠夺他们的羊皮纸
    .goto Darkshore,55.36,26.84
    .complete 966,1 --Worn Parchment (4)
step
    .goto Darkshore,54.97,24.89
>>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
.target Balthule Shadowstrike
    .accept 967 >>接任务: |cRXP_LOOT_奥萨拉克斯之塔|r
step
    #requires 月夜猎者sF
    .goto Darkshore,53.11,18.16
    .accept 4727 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    #sticky
    #completewith Turtles
     >>沿着海岸杀死礁石爬行者，不要费力地完成这个任务 - 不要杀死 4 级或以上的怪物
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto Darkshore,51.38,24.19,25,0
    .goto Darkshore,51.29,24.53
    .turnin 1002 >>交任务: |cRXP_FRIENDLY_传声盒323号|r
    .accept 1003 >>接任务: |cRXP_LOOT_传声盒525号|r
step
    #softcore
    #label Turtles
    >>留一些附近的鱼人活着，接受这个任务后你会被他们杀死
    .goto Darkshore,44.18,20.60
    .accept 4725 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    #hardcore
    #label Turtles
    .goto Darkshore,44.18,20.60
    .accept 4725 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    #softcore
    .deathskip >>在奥伯丁死亡并重生
step
    .goto Darkshore,37.40,40.13
    >>装备你的新魔杖
.target Thundris Windweaver
>>对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4763 >>交任务: |cRXP_FRIENDLY_黑木熊怪的堕落|r
step
    .goto Darkshore,38.84,43.42
.target 萨纳利恩护树人
>>对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2139 >>交任务: |cRXP_FRIENDLY_萨纳瑞恩的希望|r
step
    .goto Darkshore,37.71,43.36
.target Sentinel Glynda Nal'Shea
>>对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4813 >>交任务: |cRXP_FRIENDLY_水晶中的碎骨|r
step
    .goto Darkshore,37.32,43.64
>>对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
.target Barithras Moonshade
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
step
    .goto Darkshore,37.23,44.23
     >>点击旅馆外的通缉令
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step
    .isQuestComplete 1138
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
step
    #label end
    #requires bowl
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4727 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4725 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
step
     #completewith Murkdeep
     >>如果你愿意，可以杀死你找到的任何 月夜猎者 Sire 和 Matriarchs。从他们身上掠夺毛皮。他们与 灰蓟熊s 共享产卵。
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .unitscan 月夜猎者 Sire;月夜猎者 Matriarch
step
     #completewith Murkdeep
    .goto Darkshore,38.60,80.50,0
     >>杀死灰蓟熊。掠夺它们的头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,43.55,76.29
>>对话: |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
.target Onu
    .accept 944 >>接任务: |cRXP_LOOT_主宰之剑|r
step
    #completewith next
    .goto Darkshore,43.69,76.64
    .vendor >>从蒂亚妮处购买 15 级水
step << Human
    >>掠夺遗体
    .goto Darkshore,35.97,70.90
    .accept 4728 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    #label Murkdeep
    .goto Darkshore,36.52,76.55
    >>清理鱼人营地，远离中心的篝火
    >>清除所有东西后，移动到营地中心召唤 Murkdeep
    >>如果你很幸运的话，Murkdeep 可能已经到达西边海岸约 30 码的地方了（如果之前有人在那里死了的话）。
    .complete 4740,1 --Murkdeep (1)
step
     >>沿海岸猎杀螃蟹，获取优质蟹块
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>掠夺遗体
    .goto Darkshore,32.70,80.73
    .accept 4730 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    >>抢劫遗骸。要小心，因为先知会发出 90 点伤害的闪电，当他们的生命值低于 55% 时，可以达到满治疗波。这里的乌龟头有视线
    >>一定要给自己留一条逃生路线。潮汐猎人并不那么糟糕，但要注意他们的低伤害毒药能力
    >>尽量把你的治疗药水留到以后用，尤其是大药水
    .goto Darkshore,31.70,83.72
    .accept 4731 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    >>岛上的龟壳有视线
    .goto Darkshore,31.22,85.56
    .accept 4732 >>接任务: |cRXP_LOOT_搁浅的海龟|r
step
    >>抢夺它的脖子，小心隐藏在地形中的 2 个怪物（你只需要杀死 3 个怪物就可以抢夺这个）
    .goto Darkshore,31.28,87.39
    .accept 4733 >>接任务: |cRXP_LOOT_搁浅的海洋生物|r
step
    .goto Darkshore,35.72,83.69
.target Prospector Remtravel
>>对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
step
    .goto Darkshore,35.72,83.69
     >>这个任务非常难。如果可以，请与其他玩家一起完成。
     >>开始护送任务
.target Prospector Remtravel
>>对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .accept 731,1 >>接任务: |cRXP_LOOT_健忘的勘察员|r
step
     >>护送勘探者 Remtravel
     >>让 Remtravel 激怒一切（因为怪物需要攻击他才能激怒他），然后用火球轰炸怪物
     >>Remtravel 非常脆弱，所以尽量从其他怪物那里夺走他的仇恨
     >>当穴居人出现时，变形他没有攻击的穴居人，然后在另一个穴居人攻击他时将其击杀。首先变形在靠近终点处出现的法师，然后向勘探者发射火球
     >>如果您第一次无法完成这个任务，请跳过它 - 它非常需要技巧，也非常依赖运气。
     .complete 731,1 --护送勘探者 Remtravel (1)
step
     #completewith Glaive
     >>如果你愿意，可以杀死你找到的任何 月夜猎者 Sire 和 Matriarchs。从他们身上掠夺毛皮。他们与 灰蓟熊s 共享产卵。
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .unitscan 月夜猎者 Sire;月夜猎者 Matriarch
step
    >>杀死平原行者。确保你至少有 1 根轻羽毛，以备后用
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto Darkshore,38.60,80.50,0
     >>杀死灰蓟熊。掠夺它们的头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>留意“地下力量”。这是一项低掉落率的免费任务
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >>接任务: |cRXP_LOOT_深渊之神|r
step
    #label Glaive
    .goto Darkshore,38.30,87.12
     >>进入主宰之刃并清除中心祭坛周围的怪物
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto Darkshore,38.65,87.34
.target Therylune
>>对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    .accept 945 >>接任务: |cRXP_LOOT_护送瑟瑞露尼|r
step
     >>将占卜碗从你的库存中扔到地上
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
step
    .goto Darkshore,38.55,86.03
     >>点击基座顶部的书。如果你已经开始了，请注意不要让 Therylune 跑掉
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    .accept 950 >>接任务: |cRXP_LOOT_向安努回复|r
step
    #label Therylune
    #requires TheryluneE
    >>完成护送任务
    >>当你杀死最后一个从剑里出来的怪物时，生起一堆火，把所有的肉和鸡蛋都煮熟，你仍然需要提高你的烹饪技能
    >>你需要 50 烹饪技能才能完成夜色镇的免费任务
    .complete 945,1 --护卫 Therylune away from the Master's Glaive (1)
step
     #sticky
    #label 月夜猎者P
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
     >>如果你愿意，可以杀死你找到的任何 月夜猎者 Sire 和 Matriarchs。从他们身上掠夺毛皮。他们与 灰蓟熊s 共享产卵
     >>如果你在生成和掉落率方面运气不佳，你可以跳过此任务
    .complete 986,1 --Fine 月夜猎者 Pelt (5)
    .unitscan 月夜猎者 Sire;月夜猎者 Matriarch
step
    .goto Darkshore,38.60,80.50
     >>杀死黑海岸南部的灰蓟熊。掠夺它们以获取头皮
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,41.40,80.56
    .turnin 1003 >>交任务: |cRXP_FRIENDLY_传声盒525号|r
step
    #requires 月夜猎者P
    .goto Darkshore,43.55,76.29
.target Onu
>>对话: |cRXP_FRIENDLY_安努|r
    .turnin 950 >>交任务: |cRXP_FRIENDLY_向安努回复|r
step
    #completewith next
    .goto Darkshore,43.69,76.63
    .vendor >>如果需要的话，向 Tiyani 购买食物和饮料
step
    >>接受 Kerlonian 护送任务。如果他不在，请跳过此步骤
    .goto Darkshore,44.40,76.42
.target Kerlonian Evershade
>>对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    .accept 5321 >>接任务: |cRXP_LOOT_昏昏欲睡|r
step
    .isOnQuest 5321
    >>抢劫 Kerlonian 旁边的灰色小箱子
    .goto Darkshore,44.40,76.42
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto Ashenvale,26.84,36.74
    >>向南跑到灰谷。将觉醒之角绑在你的铁栏上，当 Kerlonian 开始原地行走并睡着时，使用它
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto Ashenvale,27.26,35.58
.target Liladris Moonriver
>>对话: |cRXP_FRIENDLY_利拉迪斯·月河|r
    .turnin 5321 >>交任务: |cRXP_FRIENDLY_昏昏欲睡|r
step
    .goto Ashenvale,26.19,38.70
.target Delgren the Purifier
>>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step
    #softcore
    >>沿着路往南跑。前往艾森娜神殿
    -->>执行此操作时，开始打开 ​​Website Unstuck 工具，然后选择您的角色。不过，先不要确认
    .goto Ashenvale,22.64,51.91
.target Therysil
>>对话: |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
step
    #hardcore
    >>沿着路往南跑。前往艾森娜神殿
    .goto Ashenvale,22.64,51.91
.target Therysil
>>对话: |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
step
    .hs >>哈思至奥伯丁
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
step
    .goto Darkshore,36.62,45.60
.target Gwennyth Bly'Leggonde
>>对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4730 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
    .turnin 4731 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4732 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
    .turnin 4733 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
step
    .goto Darkshore,37.73,43.38
.target Sentinel Glynda Nal'Shea
>>对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务: |cRXP_FRIENDLY_通缉：莫克迪普！|r
step
    .isQuestComplete 986
    >>将任务的下一部分保留在你的任务日志中，以获得 +3 耐力斗篷。当你不再需要斗篷时，放弃任务
    .goto Darkshore,39.37,43.48
>>对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
.target Terenthis
    .accept 993 >>接任务: |cRXP_LOOT_丢失的主人|r
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .isQuestComplete 731
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 741 >>接任务: |cRXP_LOOT_健忘的勘察员|r
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>跑回码头。等待前往达纳苏斯的船抵达
    .goto Darkshore,36.43,43.84,30,0
    .goto Darkshore,33.17,40.17,40
step
    .isOnQuest 741
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
step
    .isOnQuest 741
    .goto Teldrassil,55.95,89.86,30 >>穿过紫色传送门
step
    .isOnQuest 741
    .goto Darnassus,31.24,84.49
>>对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
    .turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Chief Archaeologist Greywhisker
    .accept 942 >>接任务: |cRXP_LOOT_健忘的勘察员|r
step
    .goto Teldrassil,58.40,94.02
    .fp Teldrassil >>获取泰达希尔飞行路线
    .fly Auberdine >>飞往 奥伯丁
step
    .goto Darkshore,32.42,43.75,50,0
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
    #completewith next
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>如果你有 8s，请检查 Neal Allen 的青铜管，如果有的话就买下来。否则，跳过此步骤
    .collect 4371,1,175,1
step
    .goto Wetlands,9.49,59.69
    .fly Ironforge >>飞往铁炉堡
step << skip --logout skip
    #completewith next
    .goto Ironforge,56.23,46.83,0
    +通过跳到狮鹫的头顶来跳过登出，然后登出，然后再重新登入
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>点击这里
step
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    #completewith FlyAndy
    .goto StormwindClassic,55.21,7.04
    .vendor >>如果你还没有，那就买一根青铜管吧
    >>这是限量供应物品，如果NPC没有，请跳过此步骤
    .bronzetube
step << Human
    #label FlyAndy
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
step << Gnome
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Gnome
    #label FlyAndy
    >>跑进暴风城并获得飞行路线
    .goto StormwindClassic,57.62,59.48,50,0
    .goto StormwindClassic,66.27,62.13
    .fp Stormwind City >>获取暴风城飞行路线
step << Gnome
    .goto StormwindClassic,66.05,65.64,12,0
    .goto StormwindClassic,64.97,67.69,18 >>撞上白墙，跳到小壁架上。小心。沿着它跑向暴风城的出口
step
    >>跑进金郡旅馆的楼上
    .goto Elwynn Forest,42.97,65.65,15,0
    .goto Elwynn Forest,43.81,66.46,15,0
    .goto Elwynn Forest,43.25,66.19
    .trainer >>训练你的职业法术
step
    .goto Elwynn Forest,91.42,73.59,125,0
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r,一路向东跑到赤脊山。路上整理好你的按键绑定，确保你的法术栏上有足够的空间
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 18-21 赤脊山 法师 AoE
#version 1
#group RestedXP 联盟法师
#defaultfor Alliance Mage
#next 21-22 暮色森林法师 AoE

step
    #sticky
    #completewith Gnolls
    +开始对你看到的 3 个以上群组的需要任务的怪物进行 AoEing。
    >>如果需要的话，请在另一个选项卡中打开本教程以查看 赤脊山 AoE 部分：
    .link https://youtu.be/SxMc2GoP33c?t=56 >>点击这里
step
    >>与警卫帕克交谈。他在十字路口附近巡逻一小会儿
    .goto Elwynn Forest,99.05,72.15
.target Guard Parker
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >>接任务: |cRXP_LOOT_豺狼人的入侵|r
step
    #sticky
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
>>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
.target Deputy Feldon
    .accept 246 >>接任务: |cRXP_LOOT_审时度势|r
step
    .goto Redridge Mountains,30.59,59.40
    .fp Redridge Mountains >>获取赤脊山飞行路线
step
    #requires Gnolls
    .goto Redridge Mountains,33.51,48.96
.target 马里斯元帅
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .accept 20 >>接任务: |cRXP_LOOT_黑石氏族的威胁|r
step
    .goto Redridge Mountains,32.14,48.64
.target 工头奥斯洛
>>对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .accept 125 >>接任务: |cRXP_LOOT_丢失的工具|r
step
    .goto Redridge Mountains,30.94,47.24
.target Verner Osgood
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
    .accept 118 >>接任务: |cRXP_LOOT_马掌|r
step
    >>市政厅内部
    .goto Redridge Mountains,29.72,44.26
.target 法警康纳彻
>>对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    .accept 91 >>接任务: |cRXP_LOOT_所罗门的律法|r
step
    .goto Redridge Mountains,29.99,44.45
    >>进入大楼
.target 所罗门法官
>>对话: |cRXP_FRIENDLY_所罗门镇长|r
    .accept 120 >>接任务: |cRXP_LOOT_送往暴风城的信|r
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>对话: |cRXP_FRIENDLY_码头管理员巴伦|r
    .accept 127 >>接任务: |cRXP_LOOT_卖鱼|r
step
    .goto Redridge Mountains,26.75,46.42
    .accept 180 >>接任务: |cRXP_LOOT_通缉：范高雷中尉|r
step
    >>客栈内部
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>接任务: |cRXP_LOOT_免费的午餐|r
step
    .goto Redridge Mountains,27.01,44.82
    .home >>将你的炉石设为湖畔镇
step
    .goto Redridge Mountains,29.32,53.64
.target Shawn
>>对话: |cRXP_FRIENDLY_肖恩|r
    .accept 3741 >>接任务: |cRXP_LOOT_希拉里的项链|r
step
    >>在水下寻找希拉里的项链。它位于一块棕色的泥土中
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto Redridge Mountains,15.47,62.40,0
    +对营地里的豺狼人进行范围攻击
step
    .goto Redridge Mountains,15.28,71.47
>>Talk to |cRXP_FRIENDLY_Guard Parker|r
    .turnin 129 >>交任务: |cRXP_FRIENDLY_免费的午餐|r
.target Guard Parker
    .accept 130 >>接任务: |cRXP_LOOT_寻访草药师|r
step
    .goto Redridge Mountains,30.59,59.41
    .fly Stormwind >>飞往暴风城
step
    >>进入暴风城。前往武器训练师
   .goto StormwindClassic,57.13,57.71
   .trainer >>训练 1h 剑与匕首
step
    #softcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    +去拍卖行。如果价格合适，买一个青铜管
    >>如果这里没有或者太贵，你也可以从矮人区的比利布那里买一个
    >>如果找不到，请跳过此步骤
    .bronzetube
step
    #hardcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor >>在矮人区的 Billibub 找到青铜管。如果有的话就买一个
    .bronzetube
step
    .goto StormwindClassic,63.99,75.34
>>对话: |cRXP_FRIENDLY_马库斯·乔纳森将军|r
    .turnin 120 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
.target General Marcus Jonathan
    .accept 121 >>接任务: |cRXP_LOOT_送往暴风城的信|r
step
    >>奔向金郡
    .goto Elwynn Forest,41.71,65.55
>>对话: |cRXP_FRIENDLY_铁匠阿古斯|r
    .turnin 118 >>交任务: |cRXP_FRIENDLY_马掌|r
.target Smith Argus
    .accept 119 >>接任务: |cRXP_LOOT_回复弗纳|r
step
    >>奔向哨兵岭
    .goto Westfall,56.33,47.52
.target 格里安·斯托曼托
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .accept 65 >>接任务: |cRXP_LOOT_迪菲亚兄弟会|r
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >>如果 Lakeshire 可用，则前往 Hearth
step
    #completewith hsLakeshire
    #label WFFP
    .goto Westfall,56.55,52.65
    .fp Westfall >>获取西部荒野飞行路线 << Gnome
    .fly Redridge >>飞往赤脊山
step
    #requires WFFP
    .goto Redridge Mountains,30.97,47.27
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
    .turnin 119 >>交任务: |cRXP_FRIENDLY_回复弗纳|r
.target Verner Osgood
    .accept 122 >>接任务: |cRXP_LOOT_雏龙的鳞片|r
    .accept 124 >>接任务: |cRXP_LOOT_豺狼人的乱吠|r
step
    >>进入要塞
    .goto Redridge Mountains,29.93,44.46
>>对话: |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 121 >>交任务: |cRXP_FRIENDLY_送往暴风城的信|r
.target 所罗门法官
    .accept 143 >>接任务: |cRXP_LOOT_送往西部荒野的信|r
.target 法警康纳彻
>>对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    .accept 91 >>接任务: |cRXP_LOOT_所罗门的律法|r
step
    >>进入旅馆顶层
    .goto Redridge Mountains,26.47,45.35
>>对话: |cRXP_FRIENDLY_黑衣威利|r
    .turnin 65 >>交任务: |cRXP_FRIENDLY_迪菲亚兄弟会|r
.target Wiley the Black
    .accept 132 >>接任务: |cRXP_LOOT_迪菲亚兄弟会|r
step
    .goto Redridge Mountains,29.24,53.63
.target Hilary
>>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>交任务: |cRXP_FRIENDLY_希拉里的项链|r
step
    #era/som
    #completewith Murlocs
    >>在你完成其他任务的同时升级 Redridge Goulash 的前 3 件物品。同时获取足够的大块野猪肉，让你的烹饪水平达到 50
    >>尽量集中精力对付血牙怪，先不要担心蜘蛛肉
    .collect 2296,5,92,1 --大血牙 Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>杀死幼龙。掠夺它们的鳞片
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>对区域内的豺狼人进行范围攻击。如有需要，请参阅范围攻击视频
    >>在范围攻击期间将偷猎者锁定在死区，这样你就不会被射中
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>对区域内的鱼人进行范围攻击。你必须单挑潮唤者（闪电 + 治疗波）
    >>你可以对 Shorestrikers（冲锋）和 Flesheaters（攻击时造成 25 点伤害，瞬间吸血）进行范围攻击。创造性地进行拉动
    >>保存 8 个鳍以供日后使用
    .goto Redridge Mountains,48.82,69.49
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>从这个区域获取秃鹫肉和幼龙鳞片。如果你在等待重生，那么去东边拿一些斧头，然后再回来
    .goto Redridge Mountains,61.04,77.55
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>从这个区域获取幼龙鳞片。如果你在等待重生，那么向东走去拿一些斧头，然后再回来
    .goto Redridge Mountains,61.04,77.55
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>攻击该区域的兽人。抢夺他们的斧头。当 Outrunners Net 和 Renegades 的盾牌猛击时要小心。
    >>由于叛徒等级较高，尽量避免杀死他们。一次最多拉 3 个。在这里进行 AoE 风险非常高，回报中等
    >>先不要把所有的斧头都拿下来，以后你还有更好的机会完成它
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>潜入水下。抢夺灰色盒子
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>在这里完成血牙兽的鼻子
    .goto Redridge Mountains,32.07,70.54
    .collect 2296,5,92,1 --大血牙 Snout (5)
step
    .goto Redridge Mountains,30.74,60.00
.target Deputy Feldon
>>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 246 >>交任务: |cRXP_FRIENDLY_审时度势|r
step
    .isQuestComplete 20
    .goto Redridge Mountains,33.50,48.96
.target 马里斯元帅
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 20 >>交任务: |cRXP_FRIENDLY_黑石氏族的威胁|r
step
    .goto Redridge Mountains,32.14,48.63
>>对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .turnin 125 >>交任务: |cRXP_FRIENDLY_丢失的工具|r
.target 工头奥斯洛
    .accept 89 >>接任务: |cRXP_LOOT_止水湖上的桥|r
step
    .goto Redridge Mountains,30.98,47.27
.target Verner Osgood
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
    .turnin 122 >>交任务: |cRXP_FRIENDLY_雏龙的鳞片|r
step
    #level 20
    .goto Redridge Mountains,27.72,47.38
>>对话: |cRXP_FRIENDLY_码头管理员巴伦|r
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
.target Dockmaster Baren
    .accept 150 >>接任务: |cRXP_LOOT_鱼人偷猎者|r
    .turnin 150 >>交任务: |cRXP_FRIENDLY_鱼人偷猎者|r
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>对话: |cRXP_FRIENDLY_码头管理员巴伦|r
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
step
    .goto Redridge Mountains,21.86,46.33
>>对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 130 >>交任务: |cRXP_FRIENDLY_寻访草药师|r
.target Martie Jainrose
    .accept 131 >>接任务: |cRXP_LOOT_水仙诉衷情|r
    .accept 34 >>接任务: |cRXP_LOOT_不速之客|r
step
    >>杀死 Bellygrub。一路放风筝把她带回镇上的守卫 Adams 那里
    >>要小心，因为她会颤抖（立即造成 80 点范围伤害）和冲锋（尽可能让她减速并保持新星状态）
    >>确保造成大部分伤害（51%+）
    >>这个任务非常困难
    .goto Redridge Mountains,15.66,49.31
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 34 >>交任务: |cRXP_FRIENDLY_不速之客|r
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    >>杀死豺狼人。掠夺他们的长矛和铆钉
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>杀死成群结队的兽人。掠夺他们以完成斧头
    >>如果你在清除近距离群体后运气不佳，你以后还有另一次机会
    .goto Redridge Mountains,37.05,45.15,50,0
    .goto Redridge Mountains,38.28,41.85,50,0
    .goto Redridge Mountains,40.46,40.52,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto Redridge Mountains,49.25,39.66,150 >>跑向蜘蛛
step
    #era/som
    >>杀死蜘蛛。掠夺它们的肉
    >>要小心，因为它们的毒药可能会造成伤害
    >>小心 Chatter（罕见），因为他有 8 秒的眩晕效果
    .goto Redridge Mountains,57.23,45.24
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>杀死兽人并拿到斧头
    .goto Redridge Mountains,61.74,42.82
    .complete 20,1 --Blackrock Axe (10)
step
    .goto Redridge Mountains,33.50,48.96
.target 马里斯元帅
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 20 >>交任务: |cRXP_FRIENDLY_黑石氏族的威胁|r
step
    .goto Redridge Mountains,32.15,48.64
.target 工头奥斯洛
>>对话: |cRXP_FRIENDLY_工头奥斯洛|r
    .turnin 89 >>交任务: |cRXP_FRIENDLY_止水湖上的桥|r
step
    .goto Redridge Mountains,30.98,47.28
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
    .turnin 124 >>交任务: |cRXP_FRIENDLY_豺狼人的乱吠|r
.target Verner Osgood
    .accept 126 >>接任务: |cRXP_LOOT_群山中的嚎叫|r
step
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>交任务: |cRXP_FRIENDLY_水仙诉衷情|r
step
    .goto Redridge Mountains,27.01,44.81
    .vendor >>购买 15 级饮料
step
    #era/som
    .goto Redridge Mountains,22.70,44.00
    >>离开旅馆。向西走，然后进入大楼
.target Chef Breanna
>>对话: |cRXP_FRIENDLY_厨师布雷纳|r
    .accept 92 >>接任务: |cRXP_LOOT_赤脊山炖肉|r
    .turnin 92 >>交任务: |cRXP_FRIENDLY_赤脊山炖肉|r
step
    #era/som
    #completewith next
    .goto Redridge Mountains,26.54,44.90
    +将所有野猪肉煮至烹饪技能达到 50 点
    >>如果你没有足够的肉，可以在去往夜色镇的路上磨碎一些野猪肉
step
    .goto Redridge Mountains,6.50,91.18,90,0
    .zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
]])
