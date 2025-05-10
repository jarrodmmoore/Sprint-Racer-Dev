execute if entity @s[tag=!dontInherit] run function sprint_racer:game_logic/2/itemchest_menu_edit/inherit_chest_data
execute if entity @s[tag=dontInherit] run function sprint_racer:game_logic/2/itemchest_menu_edit/update_nearby_chest
tag @s remove dontInherit

tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{text:"==\\/==",color:"gold",bold:true},{text:" "},{translate:"sr.editor.config.itemchest.name",color:"gold",bold:true},{text:" "},{text:"==\\/==",color:"gold",bold:true}]
tellraw @s[tag=!itemBattle,scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.gamemode",color:"white",bold:true},{translate:"sr.editor.config.itemchest.race",color:"yellow",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/disable_battlemode"},hover_event:{action:"show_text",value:"Race"}},{text:"  "},{translate:"sr.editor.config.itemchest.battle",color:"gray",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/enable_battlemode"},hover_event:{action:"show_text",value:"Battle"}}]
tellraw @s[tag=itemBattle,scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.gamemode",color:"white",bold:true},{translate:"sr.editor.config.itemchest.race",color:"gray",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/disable_battlemode"},hover_event:{action:"show_text",value:"Race"}},{text:"  "},{translate:"sr.editor.config.itemchest.battle",color:"yellow",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/enable_battlemode"},hover_event:{action:"show_text",value:"Battle"}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.race_seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedA",color:"white",bold:false}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_a"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_a"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.battle_seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedB",color:"white",bold:false}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_b"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_b"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.resource_control_seed",color:"white",bold:true},{score:{name:"@s",objective:"itemchestSeedR",color:"white",bold:false}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_r"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_r"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]
tellraw @s[tag=!aiCantSee,scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.visible_to_ai",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"yellow",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cansee"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"gray",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cannotsee"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]
tellraw @s[tag=aiCantSee,scores={dropOrangeDye=1..}] ["",{translate:"sr.editor.config.itemchest.visible_to_ai",color:"white",bold:true},{translate:"sr.text_menu.yes",color:"gray",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cansee"},hover_event:{action:"show_text",value:[{translate:"sr.basic.yes"}]}},{text:"  "},{translate:"sr.text_menu.no",color:"yellow",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cannotsee"},hover_event:{action:"show_text",value:[{translate:"sr.basic.no"}]}}]



scoreboard players reset @s dropOrangeDye