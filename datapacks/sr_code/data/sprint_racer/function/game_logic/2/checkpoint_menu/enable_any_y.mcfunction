tag @s add checkAnyY
scoreboard players set @s check_y_min -9999
scoreboard players set @s check_y_max 9999
execute if entity @s run playsound minecraft:block.note_block.hat master @s
scoreboard players set @s dropSheepEgg 1