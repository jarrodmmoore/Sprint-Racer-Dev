execute if entity @s[scores={AIBC_hook=4..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_hook=..3}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_hook=..3}] run scoreboard players add @s AIBC_hook 1

scoreboard players set @s dropPigEgg 1