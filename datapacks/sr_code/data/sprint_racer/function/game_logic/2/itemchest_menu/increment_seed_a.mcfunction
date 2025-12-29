execute if entity @s[scores={itemchestSeedA=1000..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={itemchestSeedA=..999}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={itemchestSeedA=..999}] run scoreboard players add @s itemchestSeedA 1

scoreboard players set @s dropVillagerEgg 1