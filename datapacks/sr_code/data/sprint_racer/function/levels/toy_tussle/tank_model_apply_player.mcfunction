clear @s stone_button
execute store result score @s kart_model run random value 1..8
scoreboard players add @s kart_model 100

#force team color in teams mode
execute if entity @s[tag=playerOrange] run scoreboard players set @s kart_model 104
execute if entity @s[tag=playerCyan] run scoreboard players set @s kart_model 107