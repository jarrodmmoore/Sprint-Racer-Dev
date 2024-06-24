execute if entity @s[scores={nCheck=..1}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.8

execute if entity @s[scores={nCheck=2..}] run playsound minecraft:block.note_block.hat master @s
execute if entity @s[scores={nCheck=2..}] run scoreboard players remove @s nCheck 1

scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit