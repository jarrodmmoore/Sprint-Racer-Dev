summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","checkpoint","showing","visualBound","showDispenser"],Age:-2147483648,custom_particle:{type:"block",block_state:{Name:"air"}},Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] check = @s check
execute if entity @s[tag=checkAnyY] run tag @e[tag=setup] add checkAnyY
execute if entity @s[tag=checkSound] run tag @e[tag=setup] add checkSound
execute if entity @s[tag=checkText] run tag @e[tag=setup] add checkText
execute if entity @s[tag=checkWarn] run tag @e[tag=setup] add checkWarn
execute if entity @s[tag=checkWrongWay] run tag @e[tag=setup] add checkWrongWay
execute if entity @s[tag=posCalc] run tag @e[tag=setup] add posCalc

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_checkpoint

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s