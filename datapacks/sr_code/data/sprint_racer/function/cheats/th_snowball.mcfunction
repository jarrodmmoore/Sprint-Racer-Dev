#throw a snowball up

tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 100000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 100000

summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=self,limit=1,sort=nearest] mvmt_coord_dx run data get entity @s Pos[0] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=self,limit=1,sort=nearest] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest] store result score @e[tag=self,limit=1,sort=nearest] mvmt_coord_dz run data get entity @s Pos[2] 100000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z

#summon a snowball and give it the right velocity
summon snowball ~ ~1.8 ~ {Tags:["newsnowball","touhou","sHasID"]}
execute store result entity @e[limit=1,tag=newsnowball] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=newsnowball] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=newsnowball] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
scoreboard players set @s useSnowball 1

execute if entity @s[tag=itemCyan] run tag @e[tag=newsnowball,limit=1,sort=nearest] add itemCyan
scoreboard players operation @e[tag=newsnowball,limit=1] playerID = @s playerID

tag @e[tag=newsnowball,limit=1,sort=nearest] remove newsnowball

kill @e[tag=lookinghere,limit=1,sort=nearest]

tag @s remove self