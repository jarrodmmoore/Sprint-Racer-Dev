#called with argument (filename:"<name>")

#keep track of whether the export runs properly
scoreboard players set #success value 0

#store some important macro args
$data modify storage sprint_racer:func_args filename set value "$(filename)"
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @e[tag=focusT,type=armor_stand,limit=1] customTagLine


#do the export! we're storing different stuff for race and battle
execute as @e[tag=focusT,type=armor_stand,tag=customrace] run function sprint_racer:game_logic/10/storage/export_track_race with storage sprint_racer:func_args
execute as @e[tag=focusT,type=armor_stand,tag=custombattle] run function sprint_racer:game_logic/10/storage/export_track_battle with storage sprint_racer:func_args


#notify if write succeeded or failed
$execute if score #success value matches 1 run tellraw @a ["",{translate:"sr.custom_track.export_success",with:[{text:"saves/.../data/command_storage_$(filename).dat",color:"yellow"}]}]
execute if score #success value matches 1 run tellraw @a ["",{translate:"sr.custom_track.remember_to_include_region_files",italic:true,color:"gray"}]
execute if score #success value matches 0 run tellraw @a ["",{translate:"sr.custom_track.export_failed",color:"red",bold:true}]