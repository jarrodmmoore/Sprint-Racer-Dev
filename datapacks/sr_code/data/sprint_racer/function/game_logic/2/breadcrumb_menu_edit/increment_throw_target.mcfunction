execute if entity @s[scores={AIBC_condition=625..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_condition=..624}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_condition=..624}] run scoreboard players add @s AIBC_condition 1

scoreboard players set @s dropRedDye 1
tag @s add dontInherit