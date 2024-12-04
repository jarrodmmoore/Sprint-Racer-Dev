#shoot tnt

tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 10000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 10000

execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet rotated ~-45 ~-10 run summon marker ^ ^ ^0.001 {Tags:["lookinghere1"]}
execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet rotated ~-22.5 ~-10 run summon marker ^ ^ ^0.001 {Tags:["lookinghere2"]}
execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet rotated ~ ~-10 run summon marker ^ ^ ^0.001 {Tags:["lookinghere3"]}
execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet rotated ~22.5 ~-10 run summon marker ^ ^ ^0.001 {Tags:["lookinghere4"]}
execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet rotated ~45 ~-10 run summon marker ^ ^ ^0.001 {Tags:["lookinghere5"]}
execute unless entity @e[tag=looktarget] rotated ~-45 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere1"]}
execute unless entity @e[tag=looktarget] rotated ~-22.5 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere2"]}
execute unless entity @e[tag=looktarget] rotated ~ ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere3"]}
execute unless entity @e[tag=looktarget] rotated ~22.5 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere4"]}
execute unless entity @e[tag=looktarget] rotated ~25 ~ run summon marker ^ ^ ^0.001 {Tags:["lookinghere5"]}

#TNT 1
execute as @e[tag=lookinghere1,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere1,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere1,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a tnt and give it the right velocity
execute facing entity @e[tag=lookinghere1,limit=1,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel,distance=..4] remove giveVel
kill @e[tag=lookinghere1,distance=..1]

#TNT 2
execute as @e[tag=lookinghere2,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere2,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere2,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a tnt and give it the right velocity
execute facing entity @e[tag=lookinghere2,limit=1,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel,distance=..4] remove giveVel
kill @e[tag=lookinghere2,distance=..1]

#TNT 3
execute as @e[tag=lookinghere3,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere3,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere3,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a tnt and give it the right velocity
execute facing entity @e[tag=lookinghere3,limit=1,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel,distance=..4] remove giveVel
kill @e[tag=lookinghere3,distance=..1]

#TNT 4
execute as @e[tag=lookinghere4,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere4,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere4,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a tnt and give it the right velocity
execute facing entity @e[tag=lookinghere4,limit=1,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel,distance=..4] remove giveVel
kill @e[tag=lookinghere4,distance=..1]

#TNT 5
execute as @e[tag=lookinghere5,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere5,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere5,distance=..1] store result score @e[tag=self,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 10000
scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value
#summon a tnt and give it the right velocity
execute facing entity @e[tag=lookinghere5,limit=1,distance=..1] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel,distance=..4] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel,distance=..4] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel,distance=..4] remove giveVel
kill @e[tag=lookinghere5,distance=..1]

#look at target for a moment
scoreboard players set #setTime value 8
execute facing entity @e[limit=1,tag=looktarget] eyes run function sprint_racer:ai/general/movement/face_direction_temporarily

tag @e[tag=looktarget] remove looktarget

tag @s remove self


execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=5,sort=nearest] add itemCyan
execute if entity @s[tag=playerCyan] run team join playerCyan @e[tag=giveID,limit=5,sort=nearest]
execute if entity @s[tag=playerOrange] run team join playerOrange @e[tag=giveID,limit=5,sort=nearest]
scoreboard players operation @e[tag=giveID] playerID = @s playerID
tag @e[tag=giveID] remove giveID



scoreboard players set @s aiActICooldown 30
scoreboard players set @s inputCooldown 9
scoreboard players remove @s aiHasItem23 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem23=1..}] aiHoldingItem 23
scoreboard players set @s[scores={aiHasItem23=1..}] aiActICooldown 10