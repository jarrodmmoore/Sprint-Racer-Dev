tag @e[tag=mykartpig] remove mykartpig
tag @e[tag=mykart] remove mykart

tag @e[limit=1,sort=nearest,type=minecart,tag=playerkart] add mykart
execute as @e[tag=mykart] at @s positioned ~ ~-.2 ~ run tag @e[limit=1,tag=kartpig,sort=nearest] add mykartpig

#some misc stuff...
execute if entity @s[scores={speedBoost=..0}] if entity @e[tag=node,tag=speedboost,distance=..2] run scoreboard players set @s speedBoost 1
execute if entity @e[tag=slimetrap,tag=sDeployed,distance=..2,tag=!dissolve] run function sprint_racer:items/item_tick/slime_trap_hit
execute if entity @e[tag=magmatrap,tag=sDeployed,distance=..2,tag=!dissolve] run function sprint_racer:items/item_tick/magma_trap_hit
execute if entity @s[scores={rot_pitch=..-26,hitstun=..0}] if entity @e[tag=mykartpig,nbt={OnGround:1b}] run function sprint_racer:cheats/kart_jump
execute if entity @e[tag=node,tag=jumpboost,distance=..2] run function sprint_racer:cheats/kart_jumpboost

#========================================
#kart moves toward the direction the driver faces

tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 100000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 100000

execute if entity @e[tag=mykartpig,nbt={OnGround:1b}] if entity @s[scores={speedBoost=1..}] run function sprint_racer:cheats/kart_velocity_boosted
execute if entity @e[tag=mykartpig,nbt={OnGround:1b}] if entity @s[scores={speedBoost=..0,hitstun=..0}] run function sprint_racer:cheats/kart_velocity_grounded
execute if entity @e[tag=mykartpig,nbt={OnGround:1b}] if entity @s[scores={speedBoost=..0,hitstun=1..}] run function sprint_racer:cheats/kart_velocity_hitstun
execute unless entity @e[tag=mykartpig,nbt={OnGround:1b}] run function sprint_racer:cheats/kart_velocity_airborne

execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dx run data get entity @s Pos[0] 100000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dz run data get entity @s Pos[2] 100000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z

execute unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=01a] run function sprint_racer:cheats/kart_velocity_scale_a
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=01a] run function sprint_racer:cheats/kart_velocity_scale_b

tag @s remove self

kill @e[tag=lookinghere]
#========================================

#tp @e[tag=mykart,limit=1,sort=nearest] @s
execute as @e[tag=mykart,limit=1,sort=nearest] rotated ~90 0 run rotate @s ~ ~

execute positioned ~ ~0.7 ~ rotated ~ 0 run particle large_smoke ^ ^ ^-1.5 .05 .05 .05 0 1
execute if entity @s[scores={hitstun=1..}] if entity @e[tag=mykartpig,nbt={OnGround:1b}] run playsound minecraft:entity.shulker.close master @a ~ ~ ~ .7 .8
execute if entity @s[scores={hitstun=..0,speedBoost=..0}] if entity @e[tag=mykartpig,nbt={OnGround:1b}] run playsound minecraft:entity.shulker.close master @a ~ ~ ~ .7 1.4
execute if entity @s[scores={hitstun=..0,speedBoost=1..}] if entity @e[tag=mykartpig,nbt={OnGround:1b}] run playsound minecraft:entity.shulker.close master @a ~ ~ ~ .7 1.8
execute unless entity @e[tag=mykartpig,nbt={OnGround:1b}] run playsound minecraft:entity.shulker.close master @a ~ ~ ~ .7 2

tag @e[tag=mykart] add kartHasOwner
scoreboard players set @e[tag=mykart] lifespan 30

execute if entity @s[tag=ejectkart] as @e[tag=mykart] at @s run function sprint_racer:cheats/kart_burst

tag @e[tag=mykartpig] remove mykartpig
tag @e[tag=mykart] remove mykart