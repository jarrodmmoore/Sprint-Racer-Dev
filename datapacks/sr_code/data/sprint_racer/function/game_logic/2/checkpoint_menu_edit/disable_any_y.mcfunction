tag @s remove checkAnyY
scoreboard players set @s check_y_min -1
scoreboard players set @s check_y_max 10
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit