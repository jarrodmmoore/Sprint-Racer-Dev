summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","jumpboost","showing"],Age:-2147483648,Particle:{type:"block",block_state:{Name:"air"}},Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] jump = @s jump

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_jumpboost

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s