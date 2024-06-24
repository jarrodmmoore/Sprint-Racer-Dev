playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

execute if entity @e[tag=focusT,tag=trackNovice] run tag @s add act1
execute if entity @e[tag=focusT,tag=trackIntermed] run tag @s add act2
execute if entity @e[tag=focusT,tag=trackExpert] run tag @s add act3
execute if entity @e[tag=focusT,tag=trackMaster] run tag @s add act4

tag @e[tag=focusT] remove trackNovice
tag @e[tag=focusT] remove trackIntermed
tag @e[tag=focusT] remove trackExpert
tag @e[tag=focusT] remove trackMaster

execute if entity @s[tag=act1] run tag @e[tag=focusT] add trackIntermed
execute if entity @s[tag=act2] run tag @e[tag=focusT] add trackExpert
execute if entity @s[tag=act3] run tag @e[tag=focusT] add trackMaster
execute if entity @s[tag=act4] run tag @e[tag=focusT] add trackNovice

tag @s remove act1
tag @s remove act2
tag @s remove act3
tag @s remove act4

execute if entity @e[tag=w,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_race
execute if entity @e[tag=w,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_3/lobby/custom_track/track_config_battle