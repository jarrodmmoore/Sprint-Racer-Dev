execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 10000
execute as @e[tag=lookinghere,limit=1,type=marker,distance=..1] store result score @e[tag=self,sort=nearest,limit=1,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000

scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dz *= #vel10 value

scoreboard players set @s mvmt_coord_z 0