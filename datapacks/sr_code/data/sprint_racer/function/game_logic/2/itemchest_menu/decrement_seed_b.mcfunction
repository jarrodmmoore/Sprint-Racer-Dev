execute if entity @s[scores={itemchestSeedB=..0}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={itemchestSeedB=1..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={itemchestSeedB=1..}] run scoreboard players remove @s itemchestSeedB 1

scoreboard players set @s dropVillagerEgg 1