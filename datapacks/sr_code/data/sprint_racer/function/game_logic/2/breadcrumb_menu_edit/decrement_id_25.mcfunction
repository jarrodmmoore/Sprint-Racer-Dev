execute if entity @s[scores={AIBC_id=..1}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={AIBC_id=2..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={AIBC_id=2..}] run scoreboard players remove @s AIBC_id 25

scoreboard players set @s[scores={AIBC_id=..0}] AIBC_id 1

scoreboard players set @s dropRedDye 1
tag @s add dontInherit