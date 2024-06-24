execute if entity @s[scores={AIBC_spread=5..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_spread=..4}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_spread=..4}] run scoreboard players add @s AIBC_spread 1

scoreboard players set @s dropRedDye 1
tag @s add dontInherit