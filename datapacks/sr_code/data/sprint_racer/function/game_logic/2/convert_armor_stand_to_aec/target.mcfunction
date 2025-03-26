summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","tatarget","showing"],Age:-2147483648,Particle:{type:"block",block_state:{Name:"air"}},Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
execute if entity @s[tag=targetImpossible] run tag @e[tag=setup] add targetImpossible

#name self
execute as @e[tag=setup] run function sprint_racer_language:_dlc_1/editor_mode/name/name_target

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s