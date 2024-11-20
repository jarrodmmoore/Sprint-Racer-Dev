playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

execute if entity @e[tag=focusT,tag=trackSmall] run tag @s add act1
execute if entity @e[tag=focusT,tag=trackMedium] run tag @s add act2
execute if entity @e[tag=focusT,tag=trackLarge] run tag @s add act3

tag @e[tag=focusT] remove trackSmall
tag @e[tag=focusT] remove trackMedium
tag @e[tag=focusT] remove trackLarge

execute if entity @s[tag=act1] run tag @e[tag=focusT] add trackLarge
execute if entity @s[tag=act2] run tag @e[tag=focusT] add trackSmall
execute if entity @s[tag=act3] run tag @e[tag=focusT] add trackMedium

tag @s remove act1
tag @s remove act2
tag @s remove act3

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run function sprint_racer_language:_dlc_6/lobby/custom_track/track_config_battle