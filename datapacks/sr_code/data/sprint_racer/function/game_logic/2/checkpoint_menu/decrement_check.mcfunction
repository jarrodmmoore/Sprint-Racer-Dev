execute if entity @s[scores={check=..1}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={check=2..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={check=2..}] run scoreboard players remove @s check 1

scoreboard players set @s dropSheepEgg 1