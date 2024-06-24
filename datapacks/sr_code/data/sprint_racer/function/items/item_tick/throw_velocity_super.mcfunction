playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2 1.4

tag @s add selfT

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 100000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 100000

summon marker ^ ^ ^0.0015 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=selfT,limit=1,sort=nearest] mvmt_coord_dx run data get entity @s Pos[0] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=selfT,limit=1,sort=nearest] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=selfT,limit=1,sort=nearest] mvmt_coord_dz run data get entity @s Pos[2] 100000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z

#give our entity velocity
execute store result entity @e[limit=1,sort=nearest,tag=giveID] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,sort=nearest,tag=giveID] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,sort=nearest,tag=giveID] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz

kill @e[tag=lookinghere,limit=1]

tag @s remove selfT