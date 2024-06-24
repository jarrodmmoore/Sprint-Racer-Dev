scoreboard players add @s scriptMove 1
scoreboard players set @s[scores={scriptMove=5..}] scriptMove 1

tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":" "}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"text":"==\\/==","color":"light_purple","bold":true},{"text":" "},{"translate":"sr.editor.config.scriptmove.name","color":"light_purple","bold":true},{"text":" "},{"text":"==\\/==","color":"light_purple","bold":true}]
tellraw @s[scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.number","color":"white","bold":true},{"score":{"name":"@s","objective":"scriptMove","color":"white","bold":false}},{"text":"  "},{"translate":"sr.editor.config.scriptmove.drop_to_cycle"}]
tellraw @s[tag=scriptStart,scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.start","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_start"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_start"},"hoverEvent":{"action":"show_text","contents":"No"}}]
tellraw @s[tag=!scriptStart,scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.start","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_start"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_start"},"hoverEvent":{"action":"show_text","contents":"No"}}]
tellraw @s[tag=requireBoost,scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.require_boost","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_boost"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_nothing"},"hoverEvent":{"action":"show_text","contents":"No"}}]
tellraw @s[tag=!requireBoost,scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.require_boost","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_boost"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/require_nothing"},"hoverEvent":{"action":"show_text","contents":"No"}}]
tellraw @s[tag=scriptEnd,scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.end","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_end"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_end"},"hoverEvent":{"action":"show_text","contents":"No"}}]
tellraw @s[tag=!scriptEnd,scores={dropEndermiteEgg=1..}] ["",{"translate":"sr.editor.config.scriptmove.end","color":"white","bold":true},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/enable_end"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/scriptmove_menu/disable_end"},"hoverEvent":{"action":"show_text","contents":"No"}}]


scoreboard players reset @s dropEndermiteEgg