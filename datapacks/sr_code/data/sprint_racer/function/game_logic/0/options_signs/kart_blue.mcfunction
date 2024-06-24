execute if entity @s[scores={kart_model=3}] run tag @s add bye_kart

scoreboard players set @s kart_model 3
execute if entity @s[tag=!bye_kart] at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 .7

scoreboard players set @s[tag=bye_kart] kart_model 0
execute if entity @s[tag=bye_kart] at @s run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ 1 1.7

clear @s stone_button
tag @s remove kart_model

tag @s[tag=bye_kart] remove bye_kart