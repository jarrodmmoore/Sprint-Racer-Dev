summon marker ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["refreshcloud","setup","node","itemchest","showing"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#carry over scoreboard stuff
execute if entity @s[tag=itemBattle] run tag @e[tag=setup] add itemBattle
execute if entity @s[tag=aiCantSee] run tag @e[tag=setup] add aiCantSee
scoreboard players operation @e[tag=setup] itemchestSeedA = @s itemchestSeedA
scoreboard players operation @e[tag=setup] itemchestSeedB = @s itemchestSeedB
scoreboard players operation @e[tag=setup] itemchestSeedR = @s itemchestSeedR
execute if entity @s[tag=5plus] run tag @e[tag=setup] add 5plus
execute if entity @s[tag=5plus] run scoreboard players set @e[tag=setup] playerRequire 5

#name self
execute as @e[tag=setup] run function sprint_racer_language:editor_mode/name/name_itemchest
execute as @e[tag=setup,tag=5plus] run function sprint_racer_language:_dlc_3/editor_mode/name/name_itemchest_5plus

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s