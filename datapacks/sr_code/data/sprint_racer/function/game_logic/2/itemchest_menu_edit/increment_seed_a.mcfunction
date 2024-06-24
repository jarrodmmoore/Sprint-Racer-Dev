execute if entity @s[scores={itemchestSeedA=21..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={itemchestSeedA=..20}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={itemchestSeedA=..20}] run scoreboard players add @s itemchestSeedA 1

scoreboard players set @s dropOrangeDye 1
tag @s add dontInherit