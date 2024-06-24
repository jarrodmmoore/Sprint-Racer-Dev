execute if score @s trans_z matches ..-2 positioned ~ ~ ~1 run function sprint_racer:items/item_tick/missile_check/rocket_explode_z_correction
execute if score @s trans_z matches 2.. positioned ~ ~ ~-1 run function sprint_racer:items/item_tick/missile_check/rocket_explode_z_correction

execute if score @s trans_z matches -1..1 run function sprint_racer:items/item_tick/missile_hit