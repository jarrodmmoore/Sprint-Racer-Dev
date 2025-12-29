tag @e[tag=selectChest,tag=itemchest] add dasme

scoreboard players add @e[tag=dasme,tag=itemchest] itemchestSeedA 0
scoreboard players add @e[tag=dasme,tag=itemchest] itemchestSeedB 0

scoreboard players operation @s itemchestSeedA = @e[limit=1,tag=node,tag=dasme,tag=itemchest] itemchestSeedA
scoreboard players operation @s itemchestSeedB = @e[limit=1,tag=node,tag=dasme,tag=itemchest] itemchestSeedB
scoreboard players operation @s itemchestSeedR = @e[limit=1,tag=node,tag=dasme,tag=itemchest] itemchestSeedR
scoreboard players operation @s itemchestSeedG = @e[limit=1,tag=node,tag=dasme,tag=itemchest] itemchestSeedG
execute if entity @e[limit=1,tag=node,tag=dasme,tag=itemchest,tag=itemBattle] run tag @s add itemBattle
execute if entity @e[limit=1,tag=node,tag=dasme,tag=itemchest,tag=!itemBattle] run tag @s remove itemBattle
execute if entity @e[limit=1,tag=node,tag=dasme,tag=itemchest,tag=aiCantSee] run tag @s add aiCantSee
execute if entity @e[limit=1,tag=node,tag=dasme,tag=itemchest,tag=!aiCantSee] run tag @s remove aiCantSee
tag @e[limit=1,tag=node,tag=dasme,tag=itemchest] remove dasme