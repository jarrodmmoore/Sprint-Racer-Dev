#hit 1 = explode
#hit 2 = despawn
scoreboard players set #hit value 0

#keep passenger alive
execute on passengers run scoreboard players set @s lifespan 3
#sync rotation with self
execute on passengers run rotate @s ~ ~

#get coordinates with high accuracy
execute store result score @s coord_x run data get entity @s Pos[0] 100
execute store result score @s coord_y run data get entity @s Pos[1] 100
execute store result score @s coord_z run data get entity @s Pos[2] 100

#determine where we are within our current voxel
scoreboard players operation #voxelLocationX value = @s coord_x
scoreboard players operation #voxelLocationX value %= #100 value
scoreboard players operation #voxelLocationY value = @s coord_y
scoreboard players operation #voxelLocationY value %= #100 value
scoreboard players operation #voxelLocationZ value = @s coord_z
scoreboard players operation #voxelLocationZ value %= #100 value

#must be in a valid place. if we go out of bounds or into an unloaded chunk, delete rocket
execute unless loaded ^ ^ ^2 run scoreboard players set #hit value 2

#move
execute if entity @s[tag=!homing] unless score @s bounceCount matches 1.. run tp @s ^ ^ ^0.85 ~ ~
execute if entity @s[tag=!homing] if score @s bounceCount matches 1.. run tp @s ^ ^ ^0.75 ~ ~1
execute if entity @s[tag=homing] run tp @s ^ ^ ^0.625

#now get post-teleport coordinates with high accuracy and use them to find delta x,y,z
execute store result score @s coord_x2 run data get entity @s Pos[0] 100
execute store result score @s coord_y2 run data get entity @s Pos[1] 100
execute store result score @s coord_z2 run data get entity @s Pos[2] 100
scoreboard players operation @s coord_x2 -= @s coord_x
scoreboard players operation @s coord_y2 -= @s coord_y
scoreboard players operation @s coord_z2 -= @s coord_z

#determine if we crossed over a space on the 3D block grid
scoreboard players set @s trans_x 0
scoreboard players set @s trans_y 0
scoreboard players set @s trans_z 0
execute if score @s coord_x2 matches 1.. run function sprint_racer:items/item_tick/missile_check/x_positive
execute if score @s coord_x2 matches ..-1 run function sprint_racer:items/item_tick/missile_check/x_negative
execute if score @s coord_y2 matches 1.. run function sprint_racer:items/item_tick/missile_check/y_positive
execute if score @s coord_y2 matches ..-1 run function sprint_racer:items/item_tick/missile_check/y_negative
execute if score @s coord_z2 matches 1.. run function sprint_racer:items/item_tick/missile_check/z_positive
execute if score @s coord_z2 matches ..-1 run function sprint_racer:items/item_tick/missile_check/z_negative

#explode if inside a block
#execute unless block ~ ~ ~ #phan:not_solid run scoreboard players set #hit value 1

#check for collisions with blocks
execute if score @s trans_x matches 1.. positioned ~1 ~ ~ unless block ~ ~ ~ #sprint_racer:missile_do_not_explode run scoreboard players set @s trans_x 2
execute if score @s trans_y matches 1.. positioned ~ ~1 ~ unless block ~ ~ ~ #sprint_racer:missile_do_not_explode run scoreboard players set @s trans_y 2
execute if score @s trans_z matches 1.. positioned ~ ~ ~1 unless block ~ ~ ~ #sprint_racer:missile_do_not_explode run scoreboard players set @s trans_z 2
execute if score @s trans_x matches ..-1 positioned ~-1 ~ ~ unless block ~ ~ ~ #sprint_racer:missile_do_not_explode run scoreboard players set @s trans_x -2
execute if score @s trans_y matches ..-1 positioned ~ ~-1 ~ unless block ~ ~ ~ #sprint_racer:missile_do_not_explode run scoreboard players set @s trans_y -2
execute if score @s trans_z matches ..-1 positioned ~ ~ ~-1 unless block ~ ~ ~ #sprint_racer:missile_do_not_explode run scoreboard players set @s trans_z -2
execute unless score @s trans_x matches -1..1 run scoreboard players set #hit value 3
execute unless score @s trans_y matches -1..1 run scoreboard players set #hit value 3
execute unless score @s trans_z matches -1..1 run scoreboard players set #hit value 3

#explode if we've been alive too long
execute if score @s age matches 120.. run scoreboard players set #hit value 1

#explode after 50 bounces
execute if score @s bounceCount matches 50.. run scoreboard players set #hit value 1

#if we're responding to something, do it in a better position
execute if score #hit value matches 1.. at @s run function sprint_racer:items/item_tick/missile_check/rocket_explode_x