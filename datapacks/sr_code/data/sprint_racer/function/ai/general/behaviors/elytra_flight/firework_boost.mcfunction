#as @e[tag=myElytra,type=armor_stand,limit=1,sort=nearest] run

tag @s add fb_self


#via breadcrumb event
execute if entity @s[tag=!elytra_specific_2,scores={AIBC_condition=1..}] as @e[type=marker,tag=node,tag=AIBC,scores={AIBC_id=1..}] if score @s AIBC_id = @e[limit=1,sort=nearest,tag=fb_self] AIBC_condition run tag @s add look_at_me
execute if entity @s[tag=elytra_specific_2,scores={AIBC_id=1..}] as @e[type=marker,tag=node,tag=AIBC,scores={AIBC_id=1..}] if score @s AIBC_id = @e[limit=1,sort=nearest,tag=fb_self] AIBC_id run tag @s add look_at_me

tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTargetB

#didn't find a target? use auto behavior instead
execute unless entity @e[type=marker,tag=look_at_me] run tag @s remove elytra_specific

tag @e[tag=look_at_me,type=marker] remove look_at_me


playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 4 1
particle firework ~ ~1 ~ .6 .6 .6 .1 20

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 100000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 100000

execute facing entity @e[limit=1,tag=aiElyTargetB,sort=nearest] feet run summon marker ^ ^ ^0.0012 {Tags:["flyinghere"]}

execute as @e[tag=flyinghere,type=marker,limit=1,sort=nearest] store result score @e[tag=fb_self,limit=1,sort=nearest] mvmt_coord_dx run data get entity @s Pos[0] 100000
execute as @e[tag=flyinghere,type=marker,limit=1,sort=nearest] store result score @e[tag=fb_self,limit=1,sort=nearest] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=flyinghere,type=marker,limit=1,sort=nearest] store result score @e[tag=fb_self,limit=1,sort=nearest] mvmt_coord_dz run data get entity @s Pos[2] 100000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z

#give it the right velocity
execute store result entity @e[tag=myElytra,type=armor_stand,limit=1,sort=nearest] Motion[0] double 0.0156 run scoreboard players get @s mvmt_coord_dx
execute store result entity @e[tag=myElytra,type=armor_stand,limit=1,sort=nearest] Motion[1] double 0.0156 run scoreboard players get @s mvmt_coord_dy
execute store result entity @e[tag=myElytra,type=armor_stand,limit=1,sort=nearest] Motion[2] double 0.0156 run scoreboard players get @s mvmt_coord_dz

kill @e[tag=flyinghere,type=marker,limit=1,sort=nearest]

scoreboard players set @s aiHasFirework 0

tag @s remove fb_self
tag @s remove fireworkBoost