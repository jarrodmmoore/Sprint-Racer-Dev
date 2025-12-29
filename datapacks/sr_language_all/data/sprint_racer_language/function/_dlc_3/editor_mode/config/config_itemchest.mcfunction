#item chest seed G name
scoreboard players operation #math value = @s itemchestSeedG
function sprint_racer_language:_dlc_3/editor_mode/config/lookup_item_seeds_general
data modify storage sprint_racer:item_name name_general set from storage sprint_racer:item_name lookup

#item chest seed A name
scoreboard players operation #math value = @s itemchestSeedA
function sprint_racer_language:_dlc_3/editor_mode/config/lookup_item_seeds_timeattack
data modify storage sprint_racer:item_name name_ta_race set from storage sprint_racer:item_name lookup

#item chest seed B name
scoreboard players operation #math value = @s itemchestSeedB
function sprint_racer_language:_dlc_3/editor_mode/config/lookup_item_seeds_timeattack
data modify storage sprint_racer:item_name name_ta_battle set from storage sprint_racer:item_name lookup

#resource control seed name
scoreboard players operation #math value = @s itemchestSeedR
function sprint_racer_language:_dlc_3/editor_mode/config/lookup_item_seeds_timeattack
data modify storage sprint_racer:item_name name_ta_resource set from storage sprint_racer:item_name lookup

tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{text:"==\\/==",color:"gold",bold:true},{text:" "},{translate:"sr.editor.config.itemchest.name",color:"gold",bold:true},{text:" "},{text:"==\\/==",color:"gold",bold:true}]
tellraw @s[tag=!itemBattle,scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.gamemode",color:"white",bold:true},{translate:"sr.editor.config.itemchest.race",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1175"},hover_event:{action:"show_text",value:"Race"}},{text:"  "},{translate:"sr.editor.config.itemchest.battle",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1176"},hover_event:{action:"show_text",value:"Battle"}}]
tellraw @s[tag=itemBattle,scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.gamemode",color:"white",bold:true},{translate:"sr.editor.config.itemchest.race",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1175"},hover_event:{action:"show_text",value:"Race"}},{text:"  "},{translate:"sr.editor.config.itemchest.battle",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1176"},hover_event:{action:"show_text",value:"Battle"}}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedG"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tEditor set 1289"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tEditor set 1290"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" (",color:"white"},{storage:"sprint_racer:item_name",nbt:"name_general",interpret:true},{text:")",color:"white"}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.race_seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedA"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tEditor set 1177"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tEditor set 1178"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" (",color:"white"},{storage:"sprint_racer:item_name",nbt:"name_ta_race",interpret:true},{text:")",color:"white"}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.battle_seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedB"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tEditor set 1179"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tEditor set 1180"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" (",color:"white"},{storage:"sprint_racer:item_name",nbt:"name_ta_battle",interpret:true},{text:")",color:"white"}]
tellraw @s[scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.resource_control_seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedR"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tEditor set 1181"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tEditor set 1182"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}},{text:" (",color:"white"},{storage:"sprint_racer:item_name",nbt:"name_ta_resource",interpret:true},{text:")",color:"white"}]
tellraw @s[tag=!aiCantSee,scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.visible_to_ai",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1183"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1184"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=aiCantSee,scores={dropVillagerEgg=1..}] ["",{translate:"sr.editor.config.itemchest.visible_to_ai",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/trigger tEditor set 1183"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/trigger tEditor set 1184"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]


scoreboard players reset @s dropVillagerEgg