execute if score @s trans_x matches ..-2 positioned ~1 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_x_correction
execute if score @s trans_x matches 2.. positioned ~-1 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_x_correction

execute if score @s trans_x matches -1..1 run function sprint_racer:items/item_tick/missile_check/rocket_explode_y