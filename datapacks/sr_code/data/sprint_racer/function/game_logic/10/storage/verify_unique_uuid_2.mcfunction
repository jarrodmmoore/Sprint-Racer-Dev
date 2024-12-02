#executed with storage $(filename):track_data

#if a track has all the same uuid components, that's a duplicate!

#get 4 integer components of UUID
$scoreboard players set #UUID_check_0 value $(track_uuid_0)
$scoreboard players set #UUID_check_1 value $(track_uuid_1)
$scoreboard players set #UUID_check_2 value $(track_uuid_2)
$scoreboard players set #UUID_check_3 value $(track_uuid_3)

#something went wrong if all components are 0
$execute if score #UUID_check_0 value matches 0 if score #UUID_check_1 value matches 0 if score #UUID_check_2 value matches 0 if score #UUID_check_3 value matches 0 run tellraw @a ["",{"translate":"sr.custom_track.import_failed_bad_data","color":"red","bold":true,"with":[{"text":"command_storage_$(file_name).dat","color":"white","bold":false}]}]
execute if score #UUID_check_0 value matches 0 if score #UUID_check_1 value matches 0 if score #UUID_check_2 value matches 0 if score #UUID_check_3 value matches 0 run return run scoreboard players set #success value -1
#=====

#check if any custom tracks have our uuid
execute as @e[tag=customtrack,type=armor_stand] run function sprint_racer:game_logic/10/storage/check_for_duplicate_uuid
$execute if score #success value matches -1 if entity @s[type=player] run tellraw @s ["",{"translate":"sr.custom_track.import_failed_uuid","color":"red","bold":true,"with":[$(track_name)]}]

#good if we made it here without a match
execute if score #success value matches 0 run scoreboard players set #success value 1