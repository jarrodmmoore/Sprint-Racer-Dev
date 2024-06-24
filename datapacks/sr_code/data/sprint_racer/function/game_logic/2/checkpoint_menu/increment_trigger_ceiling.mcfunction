playsound minecraft:block.note_block.hat master @s
execute if score @s check_y_max matches 9999.. run scoreboard players set @s check_y_max 9
tag @s remove checkAnyY

scoreboard players add @s check_y_max 1

scoreboard players set @s dropSheepEgg 1