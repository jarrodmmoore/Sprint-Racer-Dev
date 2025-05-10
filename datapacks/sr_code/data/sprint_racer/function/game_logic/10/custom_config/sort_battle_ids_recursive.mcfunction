#before calling for the first time, you should set #ctQueryID value to the first ID value that should be assigned
#you should also make sure tag=ctQueried is removed from all tracks

#next in the list is the track with lowest ID
scoreboard players set #min value 2147483647
scoreboard players operation #min value < @e[type=armor_stand,tag=custombattle,tag=!ctQueried] customTrackBID
execute as @e[type=armor_stand,tag=custombattle,tag=!ctQueried] if score @s customTrackBID <= #min value run tag @s add ctMin

#select an arbitrary track with min ID to be next
execute as @e[type=armor_stand,tag=ctMin,limit=1,sort=arbitrary] run function sprint_racer:game_logic/10/custom_config/sort_battle_get_id
tag @e[tag=ctMin,type=armor_stand] remove ctMin

#next track gets next highest id
scoreboard players add #ctQueryID value 1

#recursion if there's still more
execute if entity @e[type=armor_stand,tag=custombattle,tag=!ctQueried] run function sprint_racer:game_logic/10/custom_config/sort_battle_ids_recursive