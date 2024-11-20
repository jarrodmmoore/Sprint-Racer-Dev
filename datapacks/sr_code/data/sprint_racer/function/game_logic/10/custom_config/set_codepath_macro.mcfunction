#call with {customtrackuid:x,namespace:x,folder:x}

playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

$data modify storage sprint_racer:custom_track_storage_$(customtrackuid) function_namespace set value $(namespace)
$data modify storage sprint_racer:custom_track_storage_$(customtrackuid) function_path set value $(folder)
tag @e[tag=focusT,type=armor_stand] add usingMacroCodePath

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle