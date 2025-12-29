#before calling for the first time, you should set #ctQueryID value to the first ID value that should be assigned
#you should also make sure tag=ctQueried is removed from all tracks

#next in the list is the track with lowest ID
scoreboard players set #min value 2147483647
scoreboard players operation #min value < @e[type=armor_stand,tag=custombattle,tag=!ctQueried] customTrackBID

#select an arbitrary track with min ID to be next (using macro to avoid command branching)
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get #min value
function sprint_racer:game_logic/10/custom_config/sort_battle_ids_min_macro with storage sprint_racer:func_args

#keep sorting if there's still more
execute if entity @e[type=armor_stand,tag=custombattle,tag=!ctQueried] run function sprint_racer:game_logic/10/custom_config/sort_battle_ids_recursive