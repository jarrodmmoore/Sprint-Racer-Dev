summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest11","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"quartz_slab",count:1,components:{"minecraft:item_model":"sr/container/cake"}}},DisabledSlots:2039583}

scoreboard players set @e[tag=chest11,tag=cSETME] itemBlockState 11
execute as @e[tag=chest11,type=armor_stand,tag=cSETME] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest11,tag=cSETME] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest11,tag=cSETME] add trap
execute if entity @s[type=item,tag=itemCyan,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest11,tag=cSETME] add itemCyan
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME] playerID = @s playerID

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME] add aiCantSee

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] run function sprint_racer:items/container_spawn/homing_cheat

tag @e[tag=cSETME] remove cSETME