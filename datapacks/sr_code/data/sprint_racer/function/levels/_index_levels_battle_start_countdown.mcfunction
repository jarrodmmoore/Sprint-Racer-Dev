execute if entity @s[tag=customtrack,tag=usingMacroCodePath] run function sprint_racer:levels/_custom_general/start_countdown_with_macro_path with storage sprint_racer:func_args
execute if entity @s[tag=customtrack,tag=!usingMacroCodePath,scores={customCodePath=1..50}] run function sprint_racer:levels/_index_levels_custom_path_start_countdown_1_50
execute if entity @s[tag=customtrack,tag=!usingMacroCodePath,scores={customCodePath=51..100}] run function sprint_racer:levels/_index_levels_custom_path_start_countdown_51_100

execute if entity @s[scores={rNumber=50}] run function sprint_racer:levels/underworld/start_countdown
execute if entity @s[scores={rNumber=1}] run function sprint_racer:levels/windy_watch/start_countdown
execute if entity @s[scores={rNumber=2}] run function sprint_racer:levels/shiver_stream_caverns/start_countdown
execute if entity @s[scores={rNumber=3}] run function sprint_racer:levels/block_island/start_countdown
execute if entity @s[scores={rNumber=4}] run function sprint_racer:levels/sedove_isle/start_countdown
execute if entity @s[scores={rNumber=5}] run function sprint_racer:levels/metro_plaza/start_countdown
execute if entity @s[scores={rNumber=6}] run function sprint_racer:levels/scorched_sands/start_countdown
execute if entity @s[scores={rNumber=7}] run function sprint_racer:levels/greenhouse/start_countdown
execute if entity @s[scores={rNumber=8}] run function sprint_racer:levels/colosseum/start_countdown
execute if entity @s[scores={rNumber=9}] run function sprint_racer:levels/hidden_garden/start_countdown
execute if entity @s[scores={rNumber=10}] run function sprint_racer:levels/battle_house/start_countdown
execute if entity @s[scores={rNumber=11}] run function sprint_racer:levels/bit_city/start_countdown
execute if entity @s[scores={rNumber=12}] run function sprint_racer:levels/sugar_rush/start_countdown
execute if entity @s[scores={rNumber=13}] run function sprint_racer:levels/honeybee_hideout/start_countdown
execute if entity @s[scores={rNumber=14}] run function sprint_racer:levels/battle_labyrinth/start_countdown
execute if entity @s[scores={rNumber=15}] run function sprint_racer:levels/end_core/start_countdown
execute if entity @s[scores={rNumber=16}] run function sprint_racer:levels/pyramid_village/start_countdown
execute if entity @s[scores={rNumber=17}] run function sprint_racer:levels/aldeao_redentor/start_countdown
execute if entity @s[scores={rNumber=18}] run function sprint_racer:levels/toy_tussle/start_countdown
execute if entity @s[scores={rNumber=19}] run function sprint_racer:levels/minotaur_maze/start_countdown