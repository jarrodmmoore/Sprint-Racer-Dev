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
tellraw @a ["",{"text":"===\\/=== ","color":"aqua"},{"selector":"@e[limit=1,tag=focusT,type=armor_stand]"},{"text":" ===\\/===","color":"aqua"}]

#name
tellraw @a ["",{"translate":"sr.custom_track.track_name","color":"white","bold":true},{"translate":"sr.custom_track.change_name","color":"light_purple","clickEvent":{"action":"suggest_command","value":"/execute as @e[tag=focusT] run data merge entity @s {CustomName:'{\"color\":\"light_purple\",\"text\":\"TRACKNAME\"}'}"},"hoverEvent":{"action":"show_text","contents":"Rename track (replace \"TRACKNAME\")"}}]

#tagline (macro)
execute as @e[tag=focusT,type=armor_stand] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_tagline_macro with storage sprint_racer:func_args

#coords
tellraw @a ["",{"translate":"sr.custom_track.coordinates","color":"white","bold":true},{"text":"x=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"coord_x"},"color":"white","bold":false},{"text":", y=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"coord_y"},"color":"white","bold":false},{"text":", z=","color":"white"},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"coord_z"},"color":"white","bold":false},{"text":"  "},{"translate":"sr.custom_track.change_coordinates","color":"light_purple","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/go_find_coordinates"},"hoverEvent":{"action":"show_text","contents":"Set where your track is located within the world."}}]

#laps
tellraw @a ["",{"translate":"sr.custom_track.lap_count","color":"white","bold":true},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"lap"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/increase_laps"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/decrease_laps"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]

#checkpoints
tellraw @a ["",{"translate":"sr.custom_track.checkpoints_per_lap","color":"white","bold":true},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"check"}},{"text":"  "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/increase_check"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/decrease_check"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]

#ai?
execute if entity @e[tag=focusT,type=armor_stand,tag=!noAItrack] run tellraw @a ["",{"translate":"sr.custom_track.supports_ai","color":"white","bold":true},{"text":"  "},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_enable"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_disable"},"hoverEvent":{"action":"show_text","contents":"No"}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=noAItrack] run tellraw @a ["",{"translate":"sr.custom_track.supports_ai","color":"white","bold":true},{"text":"  "},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_enable"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/ai_disable"},"hoverEvent":{"action":"show_text","contents":"No"}}]

#time limit
execute if entity @e[tag=focusT,type=armor_stand,tag=!customGauntlet] run tellraw @a ["",{"translate":"sr.custom_track.time_limit","color":"white","bold":true},{"score":{"name":"@e[limit=1,tag=focusT,type=armor_stand]","objective":"timeRemaining"}},{"text":" min  ","color":"white"},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/increase_time_limit"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/decrease_time_limit"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=customGauntlet] run tellraw @a ["",{"translate":"sr.custom_track.time_limit","color":"gray","bold":true},{"text":" 10 min","color":"gray"}]

#difficulty
execute if entity @e[tag=focusT,type=armor_stand,tag=trackNovice] run tellraw @a ["",{"translate":"sr.custom_track.difficulty_rating","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.custom_track.difficulty.novice","color":"green","bold":false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackIntermed] run tellraw @a ["",{"translate":"sr.custom_track.difficulty_rating","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.custom_track.difficulty.intermediate","color":"aqua","bold":false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackExpert] run tellraw @a ["",{"translate":"sr.custom_track.difficulty_rating","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.custom_track.difficulty.expert","color":"red","bold":false}]
execute if entity @e[tag=focusT,type=armor_stand,tag=trackMaster] run tellraw @a ["",{"translate":"sr.custom_track.difficulty_rating","color":"white","bold":true},{"text":" "},{"text":"[<]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_previous"},"hoverEvent":{"action":"show_text","contents":"Previous"}},{"text":" "},{"text":"[>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/difficulty_next"},"hoverEvent":{"action":"show_text","contents":"Next"}},{"text":" "},{"text":" "},{"translate":"sr.custom_track.difficulty.master","color":"light_purple","bold":false}]

#gauntlet?
execute if entity @e[tag=focusT,type=armor_stand,tag=!customGauntlet] run tellraw @a ["",{"translate":"sr.custom_track.gauntlet_track","color":"white","bold":true},{"text":"  "},{"translate":"sr.text_menu.yes","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/gauntlet_enable"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/gauntlet_disable"},"hoverEvent":{"action":"show_text","contents":"No"}}]
execute if entity @e[tag=focusT,type=armor_stand,tag=customGauntlet] run tellraw @a ["",{"translate":"sr.custom_track.gauntlet_track","color":"white","bold":true},{"text":"  "},{"translate":"sr.text_menu.yes","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/gauntlet_enable"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":"  "},{"translate":"sr.text_menu.no","color":"gray","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/gauntlet_disable"},"hoverEvent":{"action":"show_text","contents":"No"}}]

#custom functions (macro)
execute as @e[tag=focusT,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_codepath_macro with storage sprint_racer:func_args

tellraw @a ["",{"text":"[<<]","color":"dark_gray"},{"text":"  "},{"text":"p. 1/2","italic":true},{"text":"  "},{"text":"[>>]","color":"yellow","clickEvent":{"action":"run_command","value":"/function sprint_racer:game_logic/10/custom_config/page_next"},"hoverEvent":{"action":"show_text","contents":"Next page"}}]
tellraw @a ["",{"text":"===/\\=== ","color":"aqua"},{"selector":"@e[limit=1,tag=focusT,type=armor_stand]"},{"text":" ===/\\===","color":"aqua"}]