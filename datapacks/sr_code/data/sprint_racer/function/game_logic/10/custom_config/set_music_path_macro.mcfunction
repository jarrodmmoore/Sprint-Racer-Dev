#call with {customtrackuid:x,namespace:x,folder:x}

playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

$data modify storage sprint_racer:custom_track_storage_$(customtrackuid) music_namespace set value "$(namespace)"
$data modify storage sprint_racer:custom_track_storage_$(customtrackuid) music_path set value "$(folder)"
tag @e[tag=focusT,type=armor_stand] add useCustomSongPath

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_2