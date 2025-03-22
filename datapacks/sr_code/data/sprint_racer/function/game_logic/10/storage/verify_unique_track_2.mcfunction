#executed with storage $(filename):track_data

#if a track has all the same coordinates, that's a duplicate!
$execute if entity @e[tag=customtrack,type=armor_stand,scores={coord_x=$(coord_x),coord_y=$(coord_y),coord_z=$(coord_z)}] run scoreboard players set #success value 0
$execute if score #success value matches 0 if entity @s[type=player] run tellraw @s ["",{translate:"sr.custom_track.import_failed_duplicate",color:"red",bold:true,with:[{text:"x=$(coord_x), y=$(coord_y), z=$(coord_z)",color:"light_purple",bold:false}]}]