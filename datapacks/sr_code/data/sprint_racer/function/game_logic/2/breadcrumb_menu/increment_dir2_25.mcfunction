execute if entity @s[scores={AIBC_dir2=625..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_dir2=..624}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_dir2=..624}] run scoreboard players add @s AIBC_dir2 25

scoreboard players set @s[scores={AIBC_dir2=626..}] AIBC_dir2 625

scoreboard players set @s dropPigEgg 1