execute if entity @s[scores={itemchestSeedB=21..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={itemchestSeedB=..20}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={itemchestSeedB=..20}] run scoreboard players add @s itemchestSeedB 1

scoreboard players set @s dropVillagerEgg 1