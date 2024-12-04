execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere,limit=1,type=marker,distance=..1] store result score @e[tag=self,sort=nearest,limit=1,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dx *= #vel10 value

scoreboard players set @s mvmt_coord_x 0