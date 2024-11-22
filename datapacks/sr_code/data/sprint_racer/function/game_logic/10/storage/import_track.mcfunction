#executed by player or system
#called with argument (filename:"<name>")

#first, test to see if the track exists
scoreboard players set #success value 0
$function sprint_racer:game_logic/10/storage/verify_track_data_exists {filename:"$(filename)"}

#error message if storage wasn't found
execute if score #success value matches 0 run return run tellraw @s ["",{"translate":"sr.custom_track.import_failed","color":"red","bold":true}]
#=====


#storage exists? check and see if it's a duplicate track
$function sprint_racer:game_logic/10/storage/verify_unique_track_name {filename:"$(filename)"}

#kick out if it's a duplicate
execute if score #success value matches 0 run return 0
#=====


#still here? do it!
#remember: #test2 holds the value dictating whether the stored track is race or battle
scoreboard players set #success value 0
$execute if score #test2 value matches 1 run function sprint_racer:game_logic/10/storage/import_track_race_lookup {filename:"$(filename)"}
$execute if score #test2 value matches 2 run function sprint_racer:game_logic/10/storage/import_track_battle_lookup {filename:"$(filename)"}