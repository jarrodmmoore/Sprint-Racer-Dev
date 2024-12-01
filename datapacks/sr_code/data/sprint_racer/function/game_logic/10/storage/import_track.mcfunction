#executed by player or system
#called with argument (filename:"<name>")

#first, test to see if the track exists
scoreboard players set #success value 0
$function sprint_racer:game_logic/10/storage/verify_track_data_exists {filename:"$(filename)"}

#error message if storage wasn't found
execute if score #success value matches 0 run return run tellraw @s ["",{"translate":"sr.custom_track.import_failed","color":"red","bold":true}]
#=====

#check for duplicate UUID
scoreboard players set #success value 0
#sr.custom_track.import_failed_uuid
$function sprint_racer:game_logic/10/storage/verify_unique_uuid {filename:"$(filename)"}
#kick out if it's a duplicate
$execute if score #success value matches 0 if entity @s[type=player] run tellraw @a ["",{"translate":"sr.custom_track.import_failed_bad_data","color":"red","bold":true,"with":[{"text":"command_storage_$(filename).dat","color":"white","bold":false}]}]
execute if score #success value matches -1..0 run return 0
#=====

#storage exists? check and see if it's a duplicate track
$function sprint_racer:game_logic/10/storage/verify_unique_track {filename:"$(filename)"}
#kick out if it's a duplicate
execute if score #success value matches 0 run return 0
#=====


#still here? do it!
#remember: #test2 holds the value dictating whether the stored track is race or battle
scoreboard players set #success value 0

#may use different constructor functions depending on what version the custom track was created in
#i figured it'd be good to give myself room to add more data to custom tracks in the future if people want that

#race
$execute if score #test2 value matches 1 if score #version_created_in value matches ..10600 run function sprint_racer:game_logic/10/storage/import_track_race_lookup {filename:"$(filename)"}
$execute if score #test2 value matches 1 if score #version_created_in value matches 10601.. run function sprint_racer:game_logic/10/storage/import_track_race_lookup {filename:"$(filename)"}

#battle
$execute if score #test2 value matches 2 if score #version_created_in value matches ..10600 run function sprint_racer:game_logic/10/storage/import_track_battle_lookup {filename:"$(filename)"}
$execute if score #test2 value matches 2 if score #version_created_in value matches 10601.. run function sprint_racer:game_logic/10/storage/import_track_battle_lookup {filename:"$(filename)"}