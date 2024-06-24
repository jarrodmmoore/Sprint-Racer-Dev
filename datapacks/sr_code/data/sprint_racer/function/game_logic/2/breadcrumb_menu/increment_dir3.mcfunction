execute if entity @s[scores={AIBC_dir3=625..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_dir3=..624}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_dir3=..624}] run scoreboard players add @s AIBC_dir3 1

scoreboard players set @s dropPigEgg 1