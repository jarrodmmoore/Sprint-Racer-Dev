kill @e[tag=jailtext]

execute if entity @e[tag=w,tag=optRAInever] run kill @e[tag=lobbyprop,tag=jailz1]
execute if entity @e[tag=w,tag=optBAInever] run kill @e[tag=lobbyprop,tag=jailz2]

execute if entity @e[tag=w,tag=!optRAInever] unless entity @e[tag=lobbyprop,tag=jail,tag=jailz1] positioned 1620 88 361 run summon zombie ~ ~ ~ {NoGravity:1,NoAI:1,Invulnerable:1,Silent:1b,Tags:["lobbyprop","jail","jailz1"]}
execute if entity @e[tag=w,tag=!optBAInever] unless entity @e[tag=lobbyprop,tag=jail,tag=jailz2] positioned 1620 88 354 run summon zombie ~ ~ ~ {NoGravity:1,NoAI:1,Invulnerable:1,Silent:1b,Tags:["lobbyprop","jail","jailz2"]}

execute as @e[tag=jailz1] at @s run tp @s ~ ~ ~ 90 ~
execute as @e[tag=jailz2] at @s run tp @s ~ ~ ~ 90 ~

function sprint_racer_language:_dlc_4/lobby/ai_settings