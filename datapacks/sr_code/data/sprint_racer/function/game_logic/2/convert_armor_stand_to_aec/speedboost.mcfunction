summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","speedboost","showing"],Age:-2147483648,custom_particle:{type:"block",block_state:{Name:"air"}},Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
execute if entity @s[tag=superSpeed] run tag @e[tag=setup] add superSpeed

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_speedboost

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s