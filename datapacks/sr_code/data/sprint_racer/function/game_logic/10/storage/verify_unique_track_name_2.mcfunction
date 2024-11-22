#executed with storage $(filename):track_data

$execute if entity @e[tag=customtrack,type=armor_stand,name="$(track_name)"] run scoreboard players set #success value 0
$execute if score #success value matches 0 run tellraw @s ["",{"translate":"sr.custom_track.import_failed_duplicate_name","color":"red","bold":true,"with":[{"text":"$(track_name)","color":"light_purple","bold":false}]}]