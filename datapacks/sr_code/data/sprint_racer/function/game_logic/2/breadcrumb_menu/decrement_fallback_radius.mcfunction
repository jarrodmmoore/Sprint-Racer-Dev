execute if entity @s[scores={AIBC_condition=..4}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_condition=5..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_condition=5..}] run scoreboard players remove @s AIBC_condition 5

scoreboard players set @s dropPigEgg 1