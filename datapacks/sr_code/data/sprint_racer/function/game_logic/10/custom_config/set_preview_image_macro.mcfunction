#call with {customtrackuid:x,map_id:x}

playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

$data modify storage sprint_racer:custom_track_storage_$(customtrackuid) preview_image set value $(map_id)
tag @e[tag=focusT,type=armor_stand] add usingMacroPreview
tag @e[tag=focusT,type=armor_stand] add customPreview

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_2
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_2

tag @e[tag=w,type=armor_stand,limit=1] add NOPARTICLE
function sprint_racer:game_logic/10/update_display/_index