tag @s remove finWarn
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit