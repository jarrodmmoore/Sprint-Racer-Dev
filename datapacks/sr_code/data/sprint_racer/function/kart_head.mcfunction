execute if block ~ ~ ~ water run tag @s add kart_water
execute if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run tag @s add kart_water
execute if block ~ ~ ~ #minecraft:stairs[waterlogged=true] run tag @s add kart_water

execute unless entity @s[scores={rot_pitch=-30..30}] run tag @s add kart_water

execute if entity @s[tag=kart_model,tag=kart_water] run tag @s add removekart
execute if entity @s[tag=removekart] run tag @s remove kart_model
execute if entity @s[tag=removekart] run clear @s stone_button

execute if entity @s[tag=!kart_model,tag=!kart_water,tag=!removekart] run tag @s add addkart
execute if entity @s[tag=addkart] run tag @s add kart_model
execute if entity @s[tag=addkart] run clear @s stone_button

tag @s[tag=addkart] remove addkart
tag @s[tag=removekart] remove removekart

tag @s remove kart_water