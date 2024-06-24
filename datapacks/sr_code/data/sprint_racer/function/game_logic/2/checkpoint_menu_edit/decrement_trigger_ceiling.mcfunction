playsound minecraft:block.note_block.hat master @s
execute if score @s check_y_max matches 9999.. run scoreboard players set @s check_y_max 11
tag @s remove checkAnyY

scoreboard players remove @s check_y_max 1

scoreboard players set @s dropWhiteDye 1
tag @s add dontInherit