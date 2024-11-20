#executed by @e[limit=1,type=armor_stand,tag=wmCustomT,tag=usingMacroPreview]

execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
function sprint_racer_language:_dlc_6/lobby/worldmap/custom/custom_battle_custom_preview_macro_2 with storage sprint_racer:func_args
