playsound minecraft:block.note_block.hat master @s
execute if score @s fin_y_max matches 9999.. run scoreboard players set @s fin_y_max 9
tag @s remove finAnyY

scoreboard players add @s fin_y_max 1

scoreboard players set @s dropCowEgg 1