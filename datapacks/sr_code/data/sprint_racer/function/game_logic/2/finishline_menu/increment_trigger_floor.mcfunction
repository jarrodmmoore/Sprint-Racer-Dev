playsound minecraft:block.note_block.hat master @s
execute if score @s fin_y_min matches ..-9999 run scoreboard players set @s fin_y_min -2
tag @s remove finAnyY

scoreboard players add @s fin_y_min 1

scoreboard players set @s dropCowEgg 1