execute if entity @s[tag=!dontInherit] run function sprint_racer:game_logic/2/itemchest_menu_edit/inherit_chest_data
execute if entity @s[tag=dontInherit] run function sprint_racer:game_logic/2/itemchest_menu_edit/update_nearby_chest
tag @s remove dontInherit

tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":" "}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"text":"==\\/==","color":"gold","bold":true},{"text":" "},{"translate":"sr.editor.config.itemchest.name","color":"gold","bold":true},{"text":" "},{"text":"==\\/==","color":"gold","bold":true}]
tellraw @s[tag=!itemBattle,scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.gamemode","color":"white","bold":true},{"translate":"sr.editor.config.itemchest.race","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/disable_battlemode"},"hoverEvent":{"action":"show_text","contents":"Race"}},{"text":"  "},{"translate":"sr.editor.config.itemchest.battle","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/enable_battlemode"},"hoverEvent":{"action":"show_text","contents":"Battle"}}]
tellraw @s[tag=itemBattle,scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.gamemode","color":"white","bold":true},{"translate":"sr.editor.config.itemchest.race","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/disable_battlemode"},"hoverEvent":{"action":"show_text","contents":"Race"}},{"text":"  "},{"translate":"sr.editor.config.itemchest.battle","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/enable_battlemode"},"hoverEvent":{"action":"show_text","contents":"Battle"}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.race_seed","color":"white","bold":true},{"score":{"name":"@s","objective":"itemchestSeedA","color":"white","bold":false}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_a"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_a"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.battle_seed","color":"white","bold":true},{"score":{"name":"@s","objective":"itemchestSeedB","color":"white","bold":false}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_b"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_b"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]
tellraw @s[scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.resource_control_seed","color":"white","bold":true},{"score":{"name":"@s","objective":"itemchestSeedR","color":"white","bold":false}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/increment_seed_r"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/decrement_seed_r"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]
tellraw @s[tag=!aiCantSee,scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.visible_to_ai","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cansee"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cannotsee"},"hoverEvent":{"action":"show_text","contents":"No"}}]
tellraw @s[tag=aiCantSee,scores={dropOrangeDye=1..}] ["",{"translate":"sr.editor.config.itemchest.visible_to_ai","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cansee"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/itemchest_menu_edit/ai_cannotsee"},"hoverEvent":{"action":"show_text","contents":"No"}}]



scoreboard players reset @s dropOrangeDye