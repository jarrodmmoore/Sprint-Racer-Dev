tag @s add finAnyY
scoreboard players set @s fin_y_min -9999
scoreboard players set @s fin_y_max 9999
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit