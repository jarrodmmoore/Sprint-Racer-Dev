execute as @e[limit=1,type=villager,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","itemchest","showing"]}
kill @e[limit=1,type=villager,tag=killme]
execute if entity @s[tag=itemBattle] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest] add itemBattle
execute if entity @s[tag=aiCantSee] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest] add aiCantSee
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedA = @s itemchestSeedA
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedB = @s itemchestSeedB
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest] itemchestSeedR = @s itemchestSeedR
execute as @e[limit=1,tag=node,tag=setup,tag=itemchest] run function sprint_racer_language:editor_mode/name/name_itemchest
tag @e[limit=1,tag=node,tag=setup,tag=itemchest] remove setup