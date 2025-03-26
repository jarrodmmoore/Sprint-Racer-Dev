summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","teleporter","showing"],Age:-2147483648,Particle:{type:"block",block_state:{Name:"air"}},Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] teleport = @s teleport
execute if entity @s[tag=teledest] run tag @e[tag=setup] add showDispenser
execute if entity @s[tag=teledest] run tag @e[tag=setup] add teledest
execute if entity @s[tag=teleparticle] run tag @e[tag=setup] add teleparticle
execute if entity @s[tag=telesound] run tag @e[tag=setup] add telesound

#name self
execute as @e[tag=setup,tag=!teledest] run function sprint_racer_language:editor_mode/name/name_teleport_source
execute as @e[tag=setup,tag=teledest] run function sprint_racer_language:editor_mode/name/name_teleport_destination

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s