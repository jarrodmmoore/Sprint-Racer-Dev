execute if entity @s[scores={teleport=25..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={teleport=..24}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={teleport=..24}] run scoreboard players add @s teleport 1

scoreboard players set @s dropEndermanEgg 1