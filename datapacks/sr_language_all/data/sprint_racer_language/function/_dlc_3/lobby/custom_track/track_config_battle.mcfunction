tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":" "}]
tellraw @a ["",{"text":"===\\/=== ","color":"red"},{"selector":"@e[limit=1,tag=focusT,type=armor_stand]"},{"text":" ===\\/===","color":"red"}]

#name
tellraw @a ["",{"translate":"sr.custom_track.track_name","color":"white","bold":true},{"translate":"sr.custom_track.change_name","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=focusT] run data merge entity @s {CustomName:'{\"color\":\"light_purple\",\"text\":\"TRACKNAME\"}'}"},"hoverEvent":{"action":"show_text","contents":"Rename track (replace \"TRACKNAME\")"}}]

#tagline (macro)
execute as @e[tag=focusT,type=armor_stand] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_tagline_macro with storage sprint_racer:func_args

#coords
tellraw @a ["",{"translate":"sr.custom_track.coordinates","color":"white","bold":true},{"text":"x=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"coord_x"},"color":"white","bold":false},{"text":", y=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"coord_y"},"color":"white","bold":false},{"text":", z=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"coord_z"},"color":"white","bold":false},{"text":"  "},{"translate":"sr.custom_track.change_coordinates","color":"light_purple","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/go_find_coordinates"},"hoverEvent":{"action":"show_text","contents":"Set where your track is located within the world!"}}]

#ai?
execute if entity @e[tag=focusT,type=armor_stand,tag=!noAItrack] run tellraw @a ["",{"translate":"sr.custom_track.supports_ai","color":"white","bold":true},{"text":" "},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_enable"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_disable"},"hoverEvent":{"action":"show_text","contents":"No"}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=noAItrack] run tellraw @a ["",{"translate":"sr.custom_track.supports_ai","color":"white","bold":true},{"text":" "},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_enable"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_disable"},"hoverEvent":{"action":"show_text","contents":"No"}}]

#targets
execute if entity @e[tag=focusT,type=armor_stand] run tellraw @a ["",{"translate":"sr.custom_track.time_attack_targets","color":"white","bold":true},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"customTTargets"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/targets_increase"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/targets_decrease"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]

#size
execute if entity @e[tag=focusT,type=armor_stand,tag=trackSmall] run tellraw @a ["",{"translate":"sr.custom_track.track_size","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.lobby.size_small","color":"green","bold":false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackMedium] run tellraw @a ["",{"translate":"sr.custom_track.track_size","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.lobby.size_medium","color":"aqua","bold":false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackLarge] run tellraw @a ["",{"translate":"sr.custom_track.track_size","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/size_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.lobby.size_large","color":"red","bold":false}]

#custom functions
execute if entity @e[tag=focusT,type=armor_stand,scores={customCodePath=..0}] run tellraw @a ["",{"translate":"sr.custom_track.custom_functions","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/code_path_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/code_path_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.inventory.none","color":"gray","bold":false}]
execute if entity @e[tag=focusT,type=armor_stand,scores={customCodePath=1..}] run tellraw @a ["",{"translate":"sr.custom_track.custom_functions","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/code_path_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/code_path_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"text":"datapacks/sr_custom/data/sr_c/functions/track","color":"white","bold":false},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"customCodePath"},"color":"white"}]

tellraw @a ["",{"text":"[<<]","color":"dark_gray"},{"text":"  "},{"text":"p. 1/2","italic":true},{"text":"  "},{"text":"[>>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/page_next"},"hoverEvent":{"action":"show_text","contents":"Next page"}}]
tellraw @a ["",{"text":"===/\\=== ","color":"red"},{"selector":"@e[limit=1,tag=focusT,type=armor_stand]"},{"text":" ===/\\===","color":"red"}]