execute if entity @s[scores={nCheck=25..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={nCheck=..24}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={nCheck=..24}] run scoreboard players add @s nCheck 1

scoreboard players set @s dropCowEgg 1