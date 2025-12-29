execute if entity @s[scores={itemchestSeedG=1000..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={itemchestSeedG=..999}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={itemchestSeedG=..999}] run scoreboard players add @s itemchestSeedG 1

scoreboard players set @s dropOrangeDye 1
tag @s add dontInherit