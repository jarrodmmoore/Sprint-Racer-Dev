execute if entity @s[scores={itemchestSeedR=23..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={itemchestSeedR=..22}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={itemchestSeedR=..22}] run scoreboard players add @s itemchestSeedR 1

scoreboard players set @s dropVillagerEgg 1