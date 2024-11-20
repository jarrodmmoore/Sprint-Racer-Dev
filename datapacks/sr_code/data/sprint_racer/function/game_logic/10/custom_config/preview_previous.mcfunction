playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

scoreboard players remove @e[tag=focusT] customPreview 1
scoreboard players set @e[tag=focusT,scores={customPreview=..10999}] customPreview 11050
scoreboard players set @e[tag=focusT,scores={customPreview=11051..}] customPreview 11000

tag @e[tag=focusT] remove usingMacroPreview

#value > 0, note that this track will have a custom preview
tag @e[tag=focusT] remove customPreview
tag @e[tag=focusT,scores={customPreview=11001..}] add customPreview

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race_2
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle_2

tag @e[tag=w,type=armor_stand,limit=1] add NOPARTICLE
function sprint_racer:game_logic/10/update_display/_index