execute if entity @s[scores={AIBC_dir3=..0}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_dir3=1..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_dir3=1..}] run scoreboard players remove @s AIBC_dir3 25

scoreboard players set @s[scores={AIBC_dir3=..-1}] AIBC_dir3 0

scoreboard players set @s dropPigEgg 1