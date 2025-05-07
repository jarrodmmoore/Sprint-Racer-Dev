#call with {customtrackuid:x,track_group:x}

#compile check via a fake tag command to validate the string (which will one day get used as a tag)
$tag _hugh_laurie remove $(track_group)

playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

$data modify storage sprint_racer:custom_track_storage_$(customtrackuid) track_group set value "$(track_group)"

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_3