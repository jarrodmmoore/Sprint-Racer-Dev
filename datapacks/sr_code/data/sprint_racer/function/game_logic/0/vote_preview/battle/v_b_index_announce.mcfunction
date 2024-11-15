execute if entity @s[tag=custombattle] run function sprint_racer_language:_dlc_1/lobby/vote_announce/_custom_battle

#error handler track
execute if entity @s[scores={rNumber=50}] run function sprint_racer_language:_dlc_4/lobby/vote_announce/underworld

execute if entity @s[scores={rNumber=1}] run function sprint_racer_language:lobby/vote_announce/windy_watch
execute if entity @s[scores={rNumber=2}] run function sprint_racer_language:lobby/vote_announce/shiver_stream_caverns
execute if entity @s[scores={rNumber=3}] run function sprint_racer_language:lobby/vote_announce/block_island
execute if entity @s[scores={rNumber=4}] run function sprint_racer_language:lobby/vote_announce/sedove_isle
execute if entity @s[scores={rNumber=5}] run function sprint_racer_language:lobby/vote_announce/metro_plaza
execute if entity @s[scores={rNumber=6}] run function sprint_racer_language:lobby/vote_announce/scorched_sands

execute if entity @s[scores={rNumber=7}] run function sprint_racer_language:_dlc_1/lobby/vote_announce/greenhouse

execute if entity @s[scores={rNumber=8}] run function sprint_racer_language:_dlc_2/lobby/vote_announce/colosseum
execute if entity @s[scores={rNumber=9}] run function sprint_racer_language:_dlc_2/lobby/vote_announce/hidden_garden
execute if entity @s[scores={rNumber=10}] run function sprint_racer_language:_dlc_2/lobby/vote_announce/battle_house
execute if entity @s[scores={rNumber=11}] run function sprint_racer_language:_dlc_2/lobby/vote_announce/bit_city

execute if entity @s[scores={rNumber=12}] run function sprint_racer_language:_dlc_3/lobby/vote_announce/sugar_rush
execute if entity @s[scores={rNumber=13}] run function sprint_racer_language:_dlc_3/lobby/vote_announce/honeybee_hideout
execute if entity @s[scores={rNumber=14}] run function sprint_racer_language:_dlc_3/lobby/vote_announce/battle_labyrinth
execute if entity @s[scores={rNumber=15}] run function sprint_racer_language:_dlc_3/lobby/vote_announce/end_core

execute if entity @s[scores={rNumber=16}] run function sprint_racer_language:_dlc_4/lobby/vote_announce/pyramid_village

execute if entity @s[scores={rNumber=17}] run function sprint_racer_language:_dlc_5/lobby/vote_announce/aldeao_redentor

execute if entity @s[scores={rNumber=18}] run function sprint_racer_language:_dlc_6/lobby/vote_announce/toy_tussle
execute if entity @s[scores={rNumber=19}] run function sprint_racer_language:_dlc_6/lobby/vote_announce/minotaur_maze

#add more here...

execute as @a[scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] run function sprint_racer_language:_dlc_1/lobby/player_chose_track
tellraw @a ["",{"text":" "}]