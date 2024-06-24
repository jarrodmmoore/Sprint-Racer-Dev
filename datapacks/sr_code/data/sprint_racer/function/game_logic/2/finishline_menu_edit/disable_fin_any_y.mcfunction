tag @s remove finAnyY
scoreboard players set @s fin_y_min -1
scoreboard players set @s fin_y_max 10
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit