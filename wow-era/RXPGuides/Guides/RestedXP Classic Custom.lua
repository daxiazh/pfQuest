RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate >1.99
#name 24-26 南贫瘠之地
#version 21
#group RestedXP 部落 22-30
#next 26-28 灰谷；26-28 赛季服 灰谷
step << Rogue/Shaman
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.vendor >>|cRXP_BUY_卖掉垃圾，然后根据需要补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉垃圾，然后在必要时补充食物|r << Rogue/Warrior
.target Innkeeper Byula
.dungeon !WC
step
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.accept 879 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith CampTHS2
+|cRXP_WARN_使用剩余的|r |T134128:0|t[血腥碎片] |cRXP_WARN_来获得|r |T136104:0|t[剃须皮] |cRXP_WARN_和其他增益效果|r << !Mage !Druid
+|cRXP_WARN_使用剩余的|r |T134128:0|t[血腥碎片] |cRXP_WARN_来获得增益|r << Mage/Druid
+|cRXP_WARN_为此，请确保关闭 Questie 或 Leatrix Plus 等插件的所有自动完成功能！|r
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
.daily 235,742,6382 >>接任务: |cRXP_LOOT_灰谷狩猎|r
.target Jorn Skyseer
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
.turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r
.accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
.target Ruga Ragetotem
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.home >>将你的炉石设为陶拉祖营地
.vendor >>|cRXP_BUY_卖掉垃圾，然后根据需要补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉垃圾，然后在必要时补充食物|r << Rogue/Warrior
.target Innkeeper Byula
.dungeon WC
step << !Rogue !Shaman
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
.vendor >>|cRXP_BUY_卖掉垃圾，然后根据需要补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉垃圾，然后在必要时补充食物|r << Rogue/Warrior
.target Innkeeper Byula
.dungeon !WC
step
#optional
#label CampTHS2
step << Warlock
#season 2
#sticky
#completewith BarrensEnd
#label ExplorerImp
>>在执行任务时对怪物施放 |T136163:0|t|cRXP_FRIENDLY_[吸取灵魂]|r 直到你收到 |T133257:0|t|cRXP_LOOT_探险者的灵魂|r。|cRXP_WARN_使用它来学习如何召唤|r |T236294:0|t|cRXP_FRIENDLY_[探险者小鬼]|r
.train 445459 >>|cRXP_WARN_使用|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_学习如何召唤|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
.train 445459,1 
.train 1120,3 
.use 221978
step << Warlock/Mage
#season 2
#requires ExplorerImp << Warlock
#sticky
#completewith BarrensEnd
#label FelPortalRune
>>您所在的区域有 |cRXP_FRIENDLY_Fel Portals|r。如果您发现一个，请召唤您的 |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] 并在传送门旁边与其交谈，以将其送去探险。10-20 分钟后，它将带着战利品回来，并有机会奖励您 |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
>>您所在的区域有 |cRXP_FRIENDLY_Fel Portals|r。如果您发现一个，请使用 |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r] 关闭它。这将奖励您 |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
>>|cRXP_WARN_留意传送门，直到你得到符文|r
.collect 221499,1 << Warlock 
.collect 223147,1 << Mage 
.itemcount 220792,1 << Mage 
.use 223148 << Warlock 
.use 220792 << Mage
.train 429311,1 << Mage
.train 431756,1 << Warlock
.train 1120,3 << Warlock 
.unitscan Fel Sliver
.unitscan Fel Crack
.unitscan Fel Tear
.unitscan Fel Scar
.unitscan Fel Rift
step << Warlock/Mage
#season 2
#requires FelPortalRune
#sticky
#completewith BarrensEnd
.itemcount 221499,1 << Warlock 
.itemcount 223147,1 << Mage 
.train 431756 >>|cRXP_WARN_使用|r |T134419:0|t[|cRXP_FRIENDLY_恶魔守卫符文|r] |cRXP_WARN_学习|r |T136216:0|t[召唤恶魔守卫] << Warlock
.train 429311 >>|cRXP_WARN_使用|r |T134939:0|t[|cRXP_FRIENDLY_法术说明：Balefire Bolt|r |cRXP_WARN_训练|r |T135809:0|t[Balefire Bolt] << Mage
.use 221499 << Warlock
.use 223147 << Mage
step
#completewith next
>>杀死一只 |cRXP_ENEMY_Thunderhawk|r。掠夺它的 |cRXP_LOOT_Wings|r
.complete 913,1 
.mob Thunderhawk Hatchling
.mob Thunderhawk Cloudscraper
.mob Greater Thunderhawk
step
.goto The Barrens,44.63,62.71,80,0
.goto The Barrens,45.78,63.09,80,0
.goto The Barrens,49.57,59.36
>>在该区域附近找到杀死 |cRXP_ENEMY_Owatanka|r (蓝色雷霆蜥蜴) 的生物。从他身上搜刮 |T133723:0|t[|cRXP_LOOT_Owatanka 的尾刺|r]。使用它来开始任务
>>|cRXP_WARN_如果你找不到他，请跳过此任务|r
.collect 5102,1,884 
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.use 5102
.unitscan Owatanka
step << Warrior
#loop
.line The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
.goto The Barrens,45.17,69.08,25,0
.goto The Barrens,43.87,68.84,25,0
.goto The Barrens,42.17,69.65,25,0
.goto The Barrens,42.35,71.85,25,0
.goto The Barrens,42.77,72.28,25,0
.goto The Barrens,43.86,72.06,25,0
.goto The Barrens,45.38,72.25,25,0
.goto The Barrens,45.17,69.08,25,0
>>杀死 |cRXP_ENEMY_Silithid Protectors|r、|cRXP_ENEMY_Silithid Swarmers|r、|cRXP_ENEMY_Silithid Creepers|r 和 |cRXP_ENEMY_Silithid Grubs|r。拾取它们的 |T133027:0|t[Twitching Antenna]
>>|cRXP_WARN_注意：|T133027:0|t[Twitching Antenna] 仅持续 15 分钟，请勿在此任务期间离开或注销|r
.complete 1824,1 
.mob Silithid Protector
.mob Silithid Swarmer
.mob Silithid Creeper
.mob Silithid Grub
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
>>|cRXP_WARN_跳过后续|r
.turnin 1824 >>交任务: |cRXP_FRIENDLY_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#completewith next
>>杀死 |cRXP_ENEMY_Silithid Harvester|r。拾取它以获得 |T134321:0|t[|cRXP_LOOT_Harvester's Head|r]。使用它来启动任务
>>|cRXP_WARN_如果你找不到他，请跳过此任务|r
.collect 5138,1,897,1 
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.use 5138
.unitscan Silithid Harvester
step
#label SilithidEggs
.goto The Barrens,45.04,69.85,60,0
.goto The Barrens,42.91,69.86,60,0
.goto The Barrens,42.97,71.11,60,0
.goto The Barrens,45.36,72.36,60,0
.goto The Barrens,47.40,70.11,60,0
.goto The Barrens,48.40,70.08,60,0
.goto The Barrens,42.91,69.86
>>掠夺 |cRXP_PICK_Silithid 土墩|r 以获得 |cRXP_LOOT_Silithid 蛋|r
.complete 868,1 
.isOnQuest 868
.maxlevel 26
step << Shaman
#completewith next
.goto The Barrens,44.76,74.79,45,0
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>前往 |cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
.turnin 1536 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 1534 >>接任务: |cRXP_LOOT_水之召唤|r
.target Brine
step
#completewith next
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Gann1
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols 路上南北|r
.accept 843 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.maxlevel 26
step << Mage
#season 2
.train 415936,1
.train 1953,3 
.goto The Barrens,45.45,80.00
.aura 421063,1 >>|cRXP_WARN_对着墙上的|r |cRXP_PICK_蚀刻雕刻|r |cRXP_WARN_眨眼即可获得|r |T236168:0|t[无台阶之路] |cRXP_WARN_buff|r
step << Mage
#season 2
.train 415936,1
.train 1953,3 
.goto The Barrens,45.28,80.14,5,0
.goto The Barrens,45.23,80.42,5,0
.goto The Barrens,45.06,80.57,5,0
.goto The Barrens,44.94,80.80,5,0
.goto The Barrens,44.87,81.08,5,0
.goto The Barrens,44.80,81.37
.train 415936 >>|cRXP_WARN_Cast|r |T135736:0|t[闪烁] |cRXP_WARN_逐个进入绿色圆圈。最后，对着|r |cRXP_PICK_蚀刻雕刻|r |cRXP_WARN_进行闪烁训练|r |T236220:0|t[活体炸弹]
step
#completewith Lok
>>杀死 |cRXP_ENEMY_钢鬃追猎者s|r 和 |cRXP_ENEMY_钢鬃探路者s|r。拾取他们以获得 |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
>>杀死 |cRXP_ENEMY_钢鬃预言者s|r。掠夺他们以获得 |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
>>杀死 |cRXP_ENEMY_Razormane Warfrenzies|r。掠夺他们以获得 |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
>>|cRXP_WARN_|cRXP_ENEMY_钢鬃追猎者s|r 处于隐身状态|r
.collect 5093,1,893,1 
.mob +钢鬃追猎者
.mob +钢鬃探路者
.collect 5092,1,893,1 
.mob +钢鬃预言者
.collect 5094,1,893,1 
.mob +钢鬃战争狂潮
step
#completewith next
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,44.06,80.02,45,0
.goto The Barrens,43.91,80.46,45,0
.goto The Barrens,44.03,80.38,45,0
.goto The Barrens,44.16,80.46,45,0
.goto The Barrens,44.31,80.79,45,0
.goto The Barrens,44.66,80.49,45,0
.goto The Barrens,45.10,80.30,45,0
.goto The Barrens,45.52,80.47,45,0
.goto The Barrens,45.46,80.91,45,0
.goto The Barrens,44.83,80.95,45,0
.goto The Barrens,44.15,81.44,45,0
.goto The Barrens,43.79,81.40,45,0
.goto The Barrens,43.63,80.97,45,0
.goto The Barrens,43.49,80.48,45,0
.goto The Barrens,43.24,80.49,45,0
.goto The Barrens,42.82,80.23,45,0
.goto The Barrens,42.65,79.87,45,0
.goto The Barrens,43.07,78.98,45,0
.goto The Barrens,43.48,78.95,45,0
.goto The Barrens,43.66,79.12,45,0
.goto The Barrens,43.80,79.46,45,0
.goto The Barrens,44.43,78.71,45,0
.goto The Barrens,44.89,78.87,45,0
.goto The Barrens,45.12,79.20,45,0
.goto The Barrens,45.05,79.75,45,0
.goto The Barrens,44.83,79.87,45,0
.goto The Barrens,44.37,79.85
#loop
.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
.goto The Barrens,44.37,79.85,25,0
.goto The Barrens,44.83,79.87,25,0
.goto The Barrens,45.05,79.75,25,0
.goto The Barrens,45.12,79.20,25,0
.goto The Barrens,44.89,78.87,25,0
.goto The Barrens,44.43,78.71,25,0
.goto The Barrens,43.80,79.46,25,0
.goto The Barrens,43.66,79.12,25,0
.goto The Barrens,43.48,78.95,25,0
.goto The Barrens,43.07,78.98,25,0
.goto The Barrens,42.65,79.87,25,0
.goto The Barrens,42.82,80.23,25,0
.goto The Barrens,43.24,80.49,25,0
.goto The Barrens,43.49,80.48,25,0
.goto The Barrens,43.63,80.97,25,0
.goto The Barrens,43.79,81.40,25,0
.goto The Barrens,44.15,81.44,25,0
.goto The Barrens,44.83,80.95,25,0
.goto The Barrens,45.46,80.91,25,0
.goto The Barrens,45.52,80.47,25,0
.goto The Barrens,45.10,80.30,25,0
.goto The Barrens,44.66,80.49,25,0
.goto The Barrens,44.31,80.79,25,0
.goto The Barrens,44.16,80.46,25,0
.goto The Barrens,44.03,80.38,25,0
.goto The Barrens,43.91,80.46,25,0
.goto The Barrens,44.06,80.02,25,0
.goto The Barrens,44.37,79.85,25,0
>>杀死 |cRXP_ENEMY_Kuz|r。掠夺他以获取 |cRXP_LOOT_Kuz 的头骨|r
>>|cRXP_ENEMY_Kuz|r |cRXP_WARN_patrols 稍微四处走动|r
.complete 879,1 
.unitscan Kuz
step
#completewith next
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Lok
.goto The Barrens,40.31,80.70,20,0
.goto The Barrens,40.14,80.56
>>杀死 |cRXP_ENEMY_Lok Orcbane|r。掠夺他以获取 |cRXP_LOOT_Lok 的头骨|r
.complete 879,3 
.mob Lok Orcbane
step
#completewith WandShield
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#completewith NakSkull
>>杀死 |cRXP_ENEMY_钢鬃追猎者s|r 和 |cRXP_ENEMY_钢鬃探路者s|r。从他们身上搜刮物品，获得 |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
>>|cRXP_WARN_|cRXP_ENEMY_钢鬃追猎者s|r 处于隐身状态|r
.collect 5093,1,893,1 
.mob 钢鬃追猎者
.mob 钢鬃探路者
step
#label WandShield
#loop
.line The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
.goto The Barrens,42.57,78.81,25,0
.goto The Barrens,42.12,78.48,25,0
.goto The Barrens,41.49,78.69,25,0
.goto The Barrens,41.22,79.72,25,0
.goto The Barrens,40.91,80.60,25,0
.goto The Barrens,40.55,80.84,25,0
.goto The Barrens,41.62,80.92,25,0
.goto The Barrens,41.54,82.28,25,0
.goto The Barrens,42.48,82.28,25,0
.goto The Barrens,42.57,78.81,25,0
>>杀死 |cRXP_ENEMY_钢鬃预言者s|r。掠夺他们以获得 |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
>>杀死 |cRXP_ENEMY_Razormane Warfrenzies|r。掠夺他们以获得 |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
.collect 5092,1,893,1 
.mob +钢鬃预言者
.collect 5094,1,893,1 
.mob +钢鬃战争狂潮
step
#label NakSkull
.goto The Barrens,43.87,83.43
>>杀死 |cRXP_ENEMY_Nak|r。掠夺他以获取 |cRXP_LOOT_Nak 的头骨|r
.complete 879,2 
.mob Nak
step
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89
>>杀死 |cRXP_ENEMY_钢鬃追猎者s|r 和 |cRXP_ENEMY_钢鬃探路者s|r。从他们身上搜刮物品，获得 |T135640:0|t[|cRXP_LOOT_Razormane Backstabber|r]
>>|cRXP_WARN_|cRXP_ENEMY_钢鬃追猎者s|r 处于隐身状态|r
.collect 5093,1,893,1 
.mob 钢鬃追猎者
.mob 钢鬃探路者
step
#completewith next
>>杀死 |cRXP_ENEMY_Bael'dun 挖掘机|r 和 |cRXP_ENEMY_Bael'dun 工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
.isOnQuest 843
step
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19
>>杀死 |cRXP_ENEMY_Prospector Khazgorm|r。搜刮他的物品，获取 |cRXP_LOOT_Khazgorm 的日记|r
.complete 843,3 
.mob Prospector Khazgorm
.isOnQuest 843
step
#loop
.goto The Barrens,47.22,84.98,40,0
.goto The Barrens,47.28,85.74,40,0
.goto The Barrens,47.60,85.66,40,0
.goto The Barrens,48.43,86.34,40,0
.goto The Barrens,48.03,85.46,40,0
.goto The Barrens,47.94,84.86,40,0
.goto The Barrens,47.37,84.01,40,0
.goto The Barrens,46.92,84.22,40,0
.goto The Barrens,46.99,85.82,40,0
.goto The Barrens,47.22,84.98,40,0
>>杀死 |cRXP_ENEMY_Bael'dun 挖掘机|r 和 |cRXP_ENEMY_Bael'dun 工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
.isOnQuest 843
step
#completewith BaelModan
.goto The Barrens,47.21,79.35,45,0
.goto The Barrens,47.22,79.72,45,0
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols 路上南北|r
.turnin 843 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestComplete 843
step
#optional
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols 路上南北|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label BaelModan
#completewith RevengeofGann2
.goto The Barrens,48.63,84.49,110 >>前往巴尔莫丹
.isQuestTurnedIn 843
step
#completewith TearMoons2
>>杀死 |cRXP_ENEMY_Bael'dun 矮人|r。掠夺他们的 |cRXP_LOOT_Nitroglycerin|r、|cRXP_LOOT_Wood Pulp|r 和 |cRXP_LOOT_赛季服ium Nitrate|r
>>|cRXP_WARN_小心！|r |cRXP_ENEMY_巴尔丹军官|r |cRXP_WARN_在进行防御姿态动画后，8 秒内招架几率增加 50%|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.group 0
.isQuestTurnedIn 843
step
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >>接任务: |cRXP_LOOT_众月之泪|r
.target Feegly the Exiled
.group 3
.isQuestTurnedIn 843
step
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>前往巴尔丹的底层
.group
.isQuestTurnedIn 843
step
.goto The Barrens,49.13,84.25
>>打开 |cRXP_PICK_General Twinbraid 的保险箱|r。从中获取 |cRXP_LOOT_月之泪|r
>>|cRXP_WARN_小心！在 |cRXP_ENEMY_General Twinbraid|r 的房间里很容易被拉过头|r
>>|cRXP_WARN_直接拉除 |cRXP_ENEMY_General Twinbraid|r 之外的任何怪物|r
.complete 857,1 
.group 3
.isQuestTurnedIn 843
step
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>离开巴尔丹要塞
.group
.isQuestTurnedIn 843
step
#label TearMoons2
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.turnin 857 >>交任务: |cRXP_FRIENDLY_众月之泪|r
.target Feegly the Exiled
.isQuestComplete 857
.group
step
#label RevengeofGann2
#loop
.goto The Barrens,48.96,84.36,30,0
.goto The Barrens,48.88,84.02,30,0
.goto The Barrens,49.28,83.76,30,0
.goto The Barrens,49.22,84.21,30,0
.goto The Barrens,49.47,84.41,30,0
.goto The Barrens,49.09,84.67,30,0
.goto The Barrens,48.96,84.36,30,0
>>杀死 |cRXP_ENEMY_Bael'dun 矮人|r。掠夺他们的 |cRXP_LOOT_Nitroglycerin|r、|cRXP_LOOT_Wood Pulp|r 和 |cRXP_LOOT_赛季服ium Nitrate|r
>>|cRXP_WARN_小心！|r |cRXP_ENEMY_巴尔丹军官|r |cRXP_WARN_在进行防御姿态动画后，8 秒内招架几率增加 50%|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.isQuestTurnedIn 843
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols 路上南北|r
.turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
.goto The Barrens,46.97,85.63
>>点击平台顶部的 |cRXP_PICK_Bael Modan 飞行器|r
>>|cRXP_WARN_射程为 50 码|r
.complete 849,1 
.isQuestTurnedIn 843
step
#completewith WashtethePawne
>>杀死一只 |cRXP_ENEMY_Thunderhawk|r。掠夺它的 |cRXP_LOOT_Wings|r
.complete 913,1 
.mob Thunderhawk Hatchling
.mob Thunderhawk Cloudscraper
.mob Greater Thunderhawk
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrols 路上南北|r
.turnin 849 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label WashtethePawne
#loop
.line The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
.goto The Barrens,44.85,78.81,25,0
.goto The Barrens,44.44,78.97,25,0
.goto The Barrens,43.14,80.75,25,0
.goto The Barrens,43.35,81.16,25,0
.goto The Barrens,47.22,79.72,25,0
.goto The Barrens,47.21,79.35,25,0
.goto The Barrens,44.76,74.79,25,0
.goto The Barrens,44.85,78.81,25,0
>>杀死 |cRXP_ENEMY_Washte Pawne|r。从他身上搜刮 |T135992:0|t[|cRXP_LOOT_Washte Pawne's Feather|r]。使用它来启动任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#loop
.goto The Barrens,47.08,78.69,0
.goto The Barrens,47.45,74.53,0
.goto The Barrens,44.95,75.19,0
.waypoint The Barrens,46.81,76.47,60,0
.waypoint The Barrens,47.08,78.69,60,0
.waypoint The Barrens,46.98,79.83,60,0
.waypoint The Barrens,48.73,79.22,60,0
.waypoint The Barrens,47.45,74.53,60,0
.waypoint The Barrens,44.95,75.19,60,0
>>杀死一只 |cRXP_ENEMY_Thunderhawk|r。掠夺它的 |cRXP_LOOT_Wings|r
.complete 913,1 
.mob Thunderhawk Hatchling
.mob Thunderhawk Cloudscraper
.mob Greater Thunderhawk
step
.goto The Barrens,50.48,78.72,100 >>前往尘泥沼泽
.zoneskip Dustwallow Marsh
step
#completewith next
.goto Dustwallow Marsh,30.65,45.34,40,0
.goto Dustwallow Marsh,32.28,42.80,40,0
.goto Dustwallow Marsh,33.12,40.85,40,0
.goto Dustwallow Marsh,33.55,38.71,40,0
.goto Dustwallow Marsh,34.73,37.66,40,0
.goto Dustwallow Marsh,34.31,34.40,40,0
.goto Dustwallow Marsh,33.30,31.23,40,0
.goto Dustwallow Marsh,34.58,30.62,40,0
.goto Dustwallow Marsh,36.64,31.72,120 >>前往蕨墙村
>>|cRXP_WARN_小心！该区域有 36-38 级怪物。请按照路径箭头指示安全|r
step << Warrior/Shaman
.goto Dustwallow Marsh,36.17,31.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Zulrg|r|cRXP_BUY_交谈。如果价格上涨，请从他那里购买|r |T135158:0|t[Big Stick] |cRXP_BUY_|r
.collect 12251,1,873,1 
.money <4.3117
.target Zulrg
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
.vendor >>|cRXP_BUY_从她那里购买|r |T134831:0|t[治疗药水] |cRXP_BUY_和|r |T134937:0|t[卷轴] |cRXP_BUY_（如果它们涨价的话）|r
.target Balai Lok'Wein
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
>>|cRXP_BUY_从她那里购买|r |T133735:0|t[急救手册] |cRXP_BUY_|r
.collect 16112,1,873,1 >>手册：厚丝质绷带 (1)
.collect 16113,1,873,1 >>手册：魔纹绷带 (1)
.collect 16084,1,873,1 >>手册：专业急救 - 保密 (1)
.target Balai Lok'Wein
.skill firstaid,<1,1
step
#completewith WeaponsofChoiceTurnin
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取蕨墙村飞行路线
.fly Camp Taurajo >>飞往陶拉霍营地
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,<0
step
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取蕨墙村飞行路线
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,>0
step << Druid
#completewith DruidTraining33
.cast 18960 >>施放 |T135758:0|t[传送：月光林地]
.zoneskip Moonglade
.cooldown item,6948,>0,1
step << Druid
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1075 >>训练你的职业法术
.target Loganaar
.xp <24,1
.xp >26,1
.cooldown item,6948,>0,1
step << Druid
#optional
#label DruidTraining33
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1850 >>训练你的职业法术
.target Loganaar
.xp <26,1
.cooldown item,6948,>0,1
step
#completewith WeaponsofChoiceTurnin
.hs >>炉火之源至陶拉祖营地
.use 6948
.cooldown item,6948,>0
step
#label WeaponsofChoiceTurnin
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.target Tatternack Steelforge
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.itemcount 5102,1
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.target Jorn Skyseer
.itemcount 5103,1
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.itemcount 5138,1
.target Jorn Skyseer
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
.accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
.accept 6382 >>接任务: |cRXP_LOOT_灰谷狩猎|r
.target Jorn Skyseer
step
.goto The Barrens,44.54,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r
.accept 906 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.50,30.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
.turnin 906 >>交任务: |cRXP_FRIENDLY_内奸|r
.target Thork
step
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 868 >>交任务: |cRXP_FRIENDLY_蝎卵|r
.target Korran
.isQuestComplete 868
step
#optional
.destroy 5058 >>摧毁: |cRXP_ENEMY_异种蝎卵|r
.itemcount 5058,1
step
#optional
.abandon 868 >>放弃寻蛋
.isOnQuest 868
step << skip
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >>将炉石设置为十字路口
.target Innkeeper Boorand Plainswind
step << Rogue
.goto The Barrens,51.39,30.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈拉玛|r
.vendor >>|cRXP_BUY_储备|r |T134387:0|t[闪光粉] |cRXP_BUY_并供应|r |T132273:0|t[速效毒药]
.target Hula'mahi
step
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞往棘齿城
.target Devrak
step
#sticky
#completewith LeaveRatchet
#season 2
.goto The Barrens,61.8,39.4
>>|cRXP_WARN_如果您有 |cRXP_LOOT_3 金币|r 剩余，您可以从 |r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in Ratchet 旅馆购买符文。自行判断您是否能负担得起以及符文是否对您的职业有用。您以后可以随时购买。|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
.use 210822 << Priest
.use 210820 << Paladin
.use 210654 << Mage
.use 210818 << Hunter
.use 210817 << Druid
.use 210825 << Warrior
.use 210824 << Warlock
.use 210653 << Rogue
.use 210823 << Shaman
.train 415995 >>|cRXP_WARN_购买并使用|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_训练|r |T237549:0|t[Serendipity] << Priest
.train 410010 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_牺牲符文|r] |cRXP_WARN_训练|r |T134596:0|t[雕刻裤子 - 神圣牺牲] << Paladin
.train 401761 >>|cRXP_WARN_购买并使用|r |T134939:0|t[|cRXP_FRIENDLY_拼写注释：倒带时间|r] |cRXP_WARN_训练|r |T237538:0|t[倒带时间] << Mage
.train 410122 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_孤狼符文|r] |cRXP_WARN_训练|r |T132266:0|t[孤狼] << Hunter
.train 416042 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_生存符文|r] |cRXP_WARN_训练|r |T132126:0|t[适者生存] << Druid
.train 425445 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_战争使者符文|r] |cRXP_WARN_训练|r |T236319:0|t[战争使者] << Warrior
.train 425476 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_契约符文|r] |cRXP_WARN_训练|r |T237562:0|t[恶魔契约] << Warlock
.train 424990 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_Main Gauche 符文|r] |cRXP_WARN_训练|r |T237531:0|t[Main Gauche] << Rogue
.train 410096 >>|cRXP_WARN_购买并使用|r |T134419:0|t[|cRXP_FRIENDLY_双持专长符文|r] |cRXP_WARN_训练|r |T132686:0|t[雕刻胸甲 - 双持专长] << Shaman
.target Grizzby
.train 415995,1 << Priest
.train 410010,1 << Paladin
.train 401761,1 << Mage
.train 410122,1 << Hunter
.train 416042,1 << Druid
.train 425445,1 << Warrior
.train 425476,1 << Warlock
.train 424990,1 << Rogue
.train 410096,1 << Shaman
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
.target Mahren Skyseer
step
#loop
.goto The Barrens,65.67,46.63,0
.goto The Barrens,64.74,50.35,0
.goto The Barrens,63.60,53.54,0
.waypoint The Barrens,65.77,45.28,50,0
.waypoint The Barrens,65.67,46.63,50,0
.waypoint The Barrens,64.74,50.35,50,0
.waypoint The Barrens,63.60,53.54,50,0
>>杀死 |cRXP_ENEMY_Isha Awak|r。掠夺他以获得 |cRXP_LOOT_Isha Awak 之心|r
>>|cRXP_WARN_他在海岸边有四个不同的刷新点|r
.complete 873,1 
.unitscan Isha Awak
step
#label BarrensEnd
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
.target Mahren Skyseer
step
#label LeaveRatchet
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
step << Warlock
.goto Orgrimmar,48.25,45.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
.trainer >>训练你的职业法术
.turnin 1512 >>交任务: |cRXP_FRIENDLY_爱的礼物|r
.accept 1513 >>接任务: |cRXP_LOOT_誓缚|r
.target Gan'rul Bloodeye
step << Warlock
#completewith next
.cast 9224 >>在召唤圈使用 |T133290:0|t[多格兰的吊坠]
.use 6626
step << Warlock
.goto Orgrimmar,49.66,50.15
>>杀死|cRXP_ENEMY_Summoned Succubus|r
.complete 1513,1 
.mob Summoned Succubus
.use 6626
step << Warlock
.goto Orgrimmar,48.25,45.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
.turnin 1513 >>交任务: |cRXP_FRIENDLY_誓缚|r
.target Gan'rul Bloodeye
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Pephredo|r交谈
.train 2121 >>训练你的职业法术
.target Pephredo
.xp <24,1
.xp >26,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Pephredo|r交谈
.train 120 >>训练你的职业法术
.target Pephredo
.xp <26,1
step << Mage
.goto Orgrimmar,38.66,85.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r |cRXP_FRIENDLY_Thuul|r 交谈
.train 3567 >>火车 |T135759:0|t[传送：奥格瑞玛]
.target Thuul
step << Troll Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
.turnin 5642 >>交任务: |cRXP_FRIENDLY_暗影守卫|r
.trainer >>训练你的职业法术
.target Ur'kyo
.isOnQuest 5642
step << Troll Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
.turnin 5680 >>交任务: |cRXP_FRIENDLY_暗影守卫|r
.trainer >>训练你的职业法术
.target Ur'kyo
.isQuestAvailable 5680
step << Undead Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
.train 3747 >>训练你的职业法术
.target Ur'kyo
.xp <24,1
.xp >26,1
step << Undead Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r |cRXP_FRIENDLY_Ur'kyo|r交谈
.train 992 >>训练你的职业法术
.target Ur'kyo
.xp <26,1
step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里购买|r |T135139:0|t[燃烧魔杖] |cRXP_BUY_|r
.collect 5210,1 
.money <0.5808
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
.target Katis
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 905 >>训练你的职业法术
.target Kardris Dreamseeker
.xp <24,1
.xp >26,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 943 >>训练你的职业法术
.target Kardris Dreamseeker
.xp <26,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 6762 >>训练你的职业法术
.target Ormok
.xp <24,1
.xp >26,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 1833 >>训练你的职业法术
.target Ormok
.xp <26,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 5308 >>训练你的职业法术
.target Grezz Ragefist
.xp <24,1
.xp >26,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 6178 >>训练你的职业法术
.target Grezz Ragefist
.xp <26,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
.goto Orgrimmar,81.52,19.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
.train 197 >>训练双手斧
.target Hanashi
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14262 >>训练你的职业法术
.target Ormak Grimshot
.xp <24,1
.xp >26,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 3045 >>训练你的职业法术
.target Ormak Grimshot
.xp <26,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24558 >>训练你的宠物法术
.target Xao'tsu
.xp <24,1
step << Hunter
.goto Orgrimmar,78.08,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Jin'sora 交谈|r
>>|cRXP_BUY_从他那里购买|r |T132382:0|t[利箭] |cRXP_BUY_|r
.collect 2515,1800 << Hunter 
.target Jin'sora
.itemcount 2515,<1000
.xp >25,1
step << Hunter
.goto Orgrimmar,78.08,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r |cRXP_FRIENDLY_Jin'sora 交谈|r
>>|cRXP_BUY_从他那里购买|r |T132382:0|t[剃刀箭] |cRXP_BUY_|r
.collect 3030,1800 << Hunter 
.target Jin'sora
.xp <25,1
.itemcount 3030,<1000
step << Shaman
#xprate >1.99
#season 2
.equip 18,206387 >>|cRXP_WARN_装备|r |T134920:0|t|cRXP_LOOT_[卡贾里克图标]|r
.use 206387
.itemcount 206387,1 
.train 410095,1
step << Shaman
#xprate >1.99
#season 2
.goto Orgrimmar,52.77,48.97
.subzone 2437 >>进入暗影裂隙内的怒焰裂谷
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#xprate >1.99
#season 2
>>|cRXP_WARN_靠墙的右侧。走下斜坡后（就在第五个怪物后面），走进你右侧的浅熔岩池|r
>>|cRXP_WARN_受到的伤害从 |r |T135805:0|t[Lava] |cRXP_WARN_ 减少到 91，而装备 |r |T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r |cRXP_WARN_|r
.aura 408828 >>|cRXP_WARN_受到 |T135805:0|t[Lava] |cRXP_WARN_source 的伤害 5 次|r
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#xprate >1.99
#season 2
>>|cRXP_WARN_移出|r |T135805:0|t[熔岩]
.cast 402265 >>|cRXP_WARN_使用|r |T134920:0|t|cRXP_LOOT_[卡贾里克图标]|r |cRXP_WARN_学习|r |T133816:0|t[雕刻手套 - 熔岩爆裂]
.use 206387
.aura -408828
.itemStat 18,QUALITY,2
.train 410095,1
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_如果有的话，从拍卖行购买|r |T133021:0|t[Shredder 操作手册页] |cRXP_BUY_|r 
.target Auctioneer Thathung
.collect 16645,1,6504,1 
.collect 16646,1,6504,1 
.collect 16647,1,6504,1 
.collect 16648,1,6504,1 
.collect 16649,1,6504,1 
.collect 16650,1,6504,1 
.collect 16651,1,6504,1 
.collect 16652,1,6504,1 
.collect 16653,1,6504,1 
.collect 16654,1,6504,1 
.collect 16655,1,6504,1 
.collect 16656,1,6504,1 
step << Hunter
#xprate <2.1
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >>飞往斯普林特树岗哨
.target Doras
.zoneskip Thunder Bluff
step
#xprate >2.09 << Hunter
#completewith next
.goto Orgrimmar,26.22,61.58,80,0
.goto Orgrimmar,15.66,63.33,30,0
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.zoneskip The Barrens
step
#xprate >2.09 << Hunter
#completewith next
.goto Kalimdor,56.80,45.45,15,0
.goto Ashenvale,94.54,76.15,40,0
.goto Ashenvale,93.49,73.76,40,0
.goto Ashenvale,92.47,71.18,40,0
.goto Ashenvale,91.85,68.71,40,0
.goto Ashenvale,91.39,65.86,25 >>沿河向北前往灰谷
step
#xprate >2.09 << Hunter
.goto Ashenvale,89.87,68.07,40,0
.goto Ashenvale,86.89,68.65,40,0
.goto Ashenvale,79.89,68.38,40,0
.goto Ashenvale,73.52,63.50,30 >>前往斯普林特里岗哨
>>|cRXP_WARN_你可能会遇到一些 29-30 级的怪物，尽量避开它们|r
]])
