#throw an ender pearl

tag @s add self
tag @s add aiDontFace

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 10000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 10000

execute if entity @e[tag=looktarget] facing entity @e[limit=1,sort=nearest,tag=looktarget] feet run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}
execute unless entity @e[tag=looktarget] run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dz run data get entity @s Pos[2] 10000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z
scoreboard players operation @s mvmt_coord_dx *= #vel10 value
scoreboard players operation @s mvmt_coord_dz *= #vel10 value

#summon an enderpearl and give it the right velocity
execute facing entity @e[tag=lookinghere,limit=1,sort=nearest] feet positioned ^ ^ ^1 run summon ender_pearl ~ ~1.8 ~ {Tags:["myenderpearl","P_rememberAI","pearlHasID"]}
execute at @e[tag=myenderpearl] run playsound minecraft:entity.snowball.throw master @a ~ ~ ~ .75 .5
execute store result entity @e[limit=1,tag=myenderpearl] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[limit=1,tag=myenderpearl] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[limit=1,tag=myenderpearl] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz
scoreboard players operation @e[tag=myenderpearl] playerID = @s playerID
scoreboard players operation @e[tag=myenderpearl] check = @s check
tag @e[tag=myenderpearl] remove myenderpearl

#look at target for a moment
scoreboard players set #setTime value 15
execute facing entity @e[limit=1,tag=looktarget] eyes run function sprint_racer:ai/general/movement/face_direction_temporarily

tag @e[tag=looktarget] remove looktarget
kill @e[tag=lookinghere]

tag @s remove self

scoreboard players set @s aiPearlTime 300

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 60
scoreboard players remove @s aiHasItem11 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem11=1..}] aiHoldingItem 11
scoreboard players set @s[scores={aiHasItem11=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem11=..0}] aiHoldingItem 0