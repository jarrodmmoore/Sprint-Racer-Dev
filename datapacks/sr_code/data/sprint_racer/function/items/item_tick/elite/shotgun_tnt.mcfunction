clear @s tnt[custom_data~{elite3:1b}] 1

playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 .6
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 .8
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1.4

tag @s add selfT

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 10000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 10000

execute rotated ~-45 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere1"]}
execute rotated ~-22.5 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere2"]}
execute rotated ~ ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere3"]}
execute rotated ~22.5 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere4"]}
execute rotated ~45 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere5"]}

#SUMMON TNT 1
execute as @e[limit=1,tag=lookinghere1,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[limit=1,tag=lookinghere1,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[limit=1,tag=lookinghere1,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a TNT and give it the right velocity
execute facing entity @e[limit=1,tag=lookinghere1,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
kill @e[limit=1,tag=lookinghere1,distance=..1]
tag @e[tag=giveVel,distance=..4] remove giveVel

#SUMMON TNT 2
execute as @e[limit=1,tag=lookinghere2,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[limit=1,tag=lookinghere2,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[limit=1,tag=lookinghere2,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a TNT and give it the right velocity
execute facing entity @e[limit=1,tag=lookinghere2,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .6
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
kill @e[limit=1,tag=lookinghere2,distance=..1]
tag @e[tag=giveVel,distance=..4] remove giveVel

#SUMMON TNT 3
execute as @e[limit=1,tag=lookinghere3,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[limit=1,tag=lookinghere3,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[limit=1,tag=lookinghere3,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a TNT and give it the right velocity
execute facing entity @e[limit=1,tag=lookinghere3,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .7
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
kill @e[limit=1,tag=lookinghere3,distance=..1]
tag @e[tag=giveVel,distance=..4] remove giveVel

#SUMMON TNT 4
execute as @e[limit=1,tag=lookinghere4,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[limit=1,tag=lookinghere4,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[limit=1,tag=lookinghere4,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a TNT and give it the right velocity
execute facing entity @e[limit=1,tag=lookinghere4,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .8
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
kill @e[limit=1,tag=lookinghere4,distance=..1]
tag @e[tag=giveVel,distance=..4] remove giveVel

#SUMMON TNT 5
execute as @e[limit=1,tag=lookinghere5,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[limit=1,tag=lookinghere5,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[limit=1,tag=lookinghere5,distance=..1] store result score @e[limit=1,tag=selfT,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a TNT and give it the right velocity
execute facing entity @e[limit=1,tag=lookinghere5,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .9
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
kill @e[limit=1,tag=lookinghere5,distance=..1]
tag @e[tag=giveVel,distance=..4] remove giveVel

execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=5,sort=nearest] add itemCyan
execute if entity @s[tag=playerCyan] run team join playerCyan @e[tag=giveID,limit=5,sort=nearest]
execute if entity @s[tag=playerOrange] run team join playerOrange @e[tag=giveID,limit=5,sort=nearest]
scoreboard players operation @e[tag=giveID] playerID = @s playerID
tag @e[tag=giveID] remove giveID

tag @s remove selfT


scoreboard players set @s inputCooldown 9