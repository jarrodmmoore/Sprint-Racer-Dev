summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","elytrajump","showing"],Age:-2147483648,custom_particle:{type:"block",block_state:{Name:"air"}},Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
execute if entity @s[tag=elytraShort] run tag @e[tag=setup] add elytraShort
execute if entity @s[tag=elytraMed] run tag @e[tag=setup] add elytraMed
execute if entity @s[tag=elytraHigh] run tag @e[tag=setup] add elytraHigh
execute if entity @s[tag=auto_elytra] run tag @e[tag=setup] add auto_elytra

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_elytrajump

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s