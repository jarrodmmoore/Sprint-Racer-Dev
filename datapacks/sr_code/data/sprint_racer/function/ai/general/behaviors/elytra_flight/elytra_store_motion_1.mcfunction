#store current motion
execute store result score @s dummy_x run data get entity @s Motion[0] 100000
execute store result score @s dummy_y run data get entity @s Motion[1] 100000
execute store result score @s dummy_z run data get entity @s Motion[2] 100000