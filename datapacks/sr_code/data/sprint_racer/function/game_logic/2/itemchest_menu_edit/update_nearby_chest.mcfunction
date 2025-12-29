tag @e[tag=selectChest,tag=itemchest] add setup

scoreboard players add @s itemchestSeedA 0
scoreboard players add @s itemchestSeedB 0

scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedA = @s itemchestSeedA
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedB = @s itemchestSeedB
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedR = @s itemchestSeedR
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedG = @s itemchestSeedG
execute if entity @s[tag=itemBattle] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest] add itemBattle
execute if entity @s[tag=!itemBattle] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest] remove itemBattle
execute if entity @s[tag=aiCantSee] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest] add aiCantSee
execute if entity @s[tag=!aiCantSee] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest] remove aiCantSee
execute as @e[limit=1,tag=node,tag=setup,tag=itemchest] run function sprint_racer_language:editor_mode/name/name_itemchest
tag @e[limit=1,tag=node,tag=setup,tag=itemchest] remove setup