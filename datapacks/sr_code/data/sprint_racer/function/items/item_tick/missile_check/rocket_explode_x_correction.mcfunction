#determine where we are within our current voxel
execute store result score #voxelLocationX value run data get entity @s Pos[0] 100
scoreboard players operation #voxelLocationX value %= #100 value

#explode near the center of the block
execute if score #voxelLocationX value matches ..9 positioned ~.4 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 10..19 positioned ~.3 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 20..29 positioned ~.2 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 30..39 positioned ~.1 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 40..59 positioned ~ ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 60..69 positioned ~-.1 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 70..79 positioned ~-.2 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 80..89 positioned ~-.3 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y
execute if score #voxelLocationX value matches 90.. positioned ~-.4 ~ ~ run function sprint_racer:items/item_tick/missile_check/rocket_explode_y