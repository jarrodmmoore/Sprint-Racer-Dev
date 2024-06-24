playsound minecraft:block.note_block.hat master @s
execute if score @s check_y_min matches ..-9999 run scoreboard players set @s check_y_min -2
tag @s remove checkAnyY

scoreboard players add @s check_y_min 1

scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit