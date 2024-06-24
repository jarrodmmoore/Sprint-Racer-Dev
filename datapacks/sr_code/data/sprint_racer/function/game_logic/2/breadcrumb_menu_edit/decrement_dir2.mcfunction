execute if entity @s[scores={AIBC_dir2=..0}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_dir2=1..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_dir2=1..}] run scoreboard players remove @s AIBC_dir2 1

scoreboard players set @s dropRedDye 1
tag @s add dontInherit