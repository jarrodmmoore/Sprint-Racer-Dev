kill @e[tag=jailtext]

execute if entity @e[tag=w,type=armor_stand,tag=optRAInever] run kill @e[tag=lobbyprop,tag=jailz1]
execute if entity @e[tag=w,type=armor_stand,tag=optBAInever] run kill @e[tag=lobbyprop,tag=jailz2]

execute if entity @e[tag=w,type=armor_stand,tag=!optRAInever] unless entity @e[tag=lobbyprop,tag=jail,tag=jailz1] positioned 1620 88 361 run summon zombie ~ ~ ~ {NoGravity:1b,NoAI:1,Invulnerable:1b,Silent:1b,Tags:["lobbyprop","jail","jailz1"]}
execute if entity @e[tag=w,type=armor_stand,tag=!optBAInever] unless entity @e[tag=lobbyprop,tag=jail,tag=jailz2] positioned 1620 88 354 run summon zombie ~ ~ ~ {NoGravity:1b,NoAI:1,Invulnerable:1b,Silent:1b,Tags:["lobbyprop","jail","jailz2"]}

execute as @e[tag=jailz1] at @s run tp @s ~ ~ ~ 90 ~
execute as @e[tag=jailz2] at @s run tp @s ~ ~ ~ 90 ~

#macro args
execute store result storage sprint_racer:func_args arg1 int 1 run scoreboard players get @e[tag=w,type=armor_stand,limit=1] optRAIcount
execute store result storage sprint_racer:func_args arg2 int 1 run scoreboard players get @e[tag=w,type=armor_stand,limit=1] optBAIcount

#update ai settings
execute as @e[tag=w,type=armor_stand] run function sprint_racer_language:_dlc_6/lobby/ai_settings with storage sprint_racer:func_args