#shoot tnt

tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 10000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 10000

execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet rotated ~ ~-10 run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}
execute unless entity @e[tag=looktarget] run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dz run data get entity @s Pos[2] 10000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value

#summon a snowball and give it the right velocity
execute facing entity @e[tag=lookinghere,limit=1,sort=nearest] feet positioned ^ ^ ^.5 run summon tnt ~ ~1.8 ~ {fuse:1000,Tags:["giveVel","giveID"]}
execute at @e[limit=1,tag=giveVel] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=giveVel] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=giveVel] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=giveVel] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
tag @e[tag=giveVel] remove giveVel

#look at target for a moment
scoreboard players set #setTime value 8
execute facing entity @e[limit=1,tag=looktarget] feet run function sprint_racer:ai/general/movement/face_direction_temporarily

tag @e[tag=looktarget] remove looktarget
kill @e[tag=lookinghere]

tag @s remove self


execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=1,sort=nearest] add itemCyan
execute if entity @s[tag=playerCyan] run team join playerCyan @e[tag=giveID,limit=1,sort=nearest]
execute if entity @s[tag=playerOrange] run team join playerOrange @e[tag=giveID,limit=1,sort=nearest]
scoreboard players operation @e[tag=giveID] playerID = @s playerID
tag @e[tag=giveID] remove giveID


scoreboard players set @s aiActICooldown 30
scoreboard players set @s inputCooldown 9
scoreboard players remove @s aiHasItem3 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem3=1..}] aiHoldingItem 3
scoreboard players set @s[scores={aiHasItem3=1..}] aiActICooldown 10