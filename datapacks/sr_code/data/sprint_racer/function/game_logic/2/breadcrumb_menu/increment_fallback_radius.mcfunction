execute if entity @s[scores={AIBC_condition=26..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_condition=..25}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_condition=..25}] run scoreboard players add @s AIBC_condition 5

scoreboard players set @s dropPigEgg 1