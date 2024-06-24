execute if entity @s[scores={check=25..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={check=..24}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={check=..24}] run scoreboard players add @s check 1

scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit