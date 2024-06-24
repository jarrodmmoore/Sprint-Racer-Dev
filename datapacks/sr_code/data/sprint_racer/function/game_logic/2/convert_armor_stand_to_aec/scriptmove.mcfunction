summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","scriptmove","showDispenser","showing"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] scriptMove = @s scriptMove
execute if entity @s[tag=scriptStart] run tag @e[tag=setup] add scriptStart
execute if entity @s[tag=requireBoost] run tag @e[tag=setup] add requireBoost
execute if entity @s[tag=scriptEnd] run tag @e[tag=setup] add scriptEnd

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_scriptmove

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s