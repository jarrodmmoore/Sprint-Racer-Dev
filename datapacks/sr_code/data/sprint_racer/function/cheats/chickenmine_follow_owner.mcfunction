tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 100000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 100000

execute if entity @e[tag=revengineer,distance=..3] run summon marker ^ ^ ^0.0003 {Tags:["lookinghere"]}
execute unless entity @e[tag=revengineer,distance=..3] run summon marker ^ ^ ^0.00065 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dx run data get entity @s Pos[0] 100000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dz run data get entity @s Pos[2] 100000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s mvmt_coord_dx
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s mvmt_coord_dy
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s mvmt_coord_dz

kill @e[tag=lookinghere]
tag @s remove self