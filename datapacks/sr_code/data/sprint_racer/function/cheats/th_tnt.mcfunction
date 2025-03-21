tag @s add selfT

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 10000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 10000

summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=selfT,limit=1,sort=nearest] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=selfT,limit=1,sort=nearest] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=selfT,limit=1,sort=nearest] mvmt_coord_dz run data get entity @s Pos[2] 10000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value

#summon a TNT and give it the right velocity
execute facing entity @e[tag=lookinghere,limit=1,sort=nearest] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID","touhou"]}
execute store result entity @e[limit=1,tag=giveVel] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel,limit=1] remove giveVel

kill @e[tag=lookinghere,limit=1]

tag @s remove selfT

execute if entity @s[tag=itemCyan] run tag @e[tag=giveID,limit=1,sort=nearest] add itemCyan
execute if entity @s[tag=itemCyan] run team join playerCyan @e[tag=giveID,limit=1,sort=nearest]
execute if entity @s[tag=!itemCyan] run team join playerOrange @e[tag=giveID,limit=1,sort=nearest]
scoreboard players operation @e[tag=giveID,limit=1] playerID = @s playerID
tag @e[tag=giveID,limit=1] remove giveID