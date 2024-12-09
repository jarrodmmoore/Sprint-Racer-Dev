execute as @e[limit=1,type=villager,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","itemchest","showing"]}
kill @e[limit=1,type=villager,tag=killme]

execute if entity @s[tag=itemBattle] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] add itemBattle
execute if entity @s[tag=aiCantSee] run tag @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] add aiCantSee
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] itemchestSeedA = @s itemchestSeedA
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] itemchestSeedB = @s itemchestSeedB
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] itemchestSeedR = @s itemchestSeedR
scoreboard players set @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] playerRequire 5

execute as @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] run function sprint_racer_language:editor_mode/name/name_itemchest
tag @e[limit=1,tag=node,tag=setup,tag=itemchest,type=marker] remove setup