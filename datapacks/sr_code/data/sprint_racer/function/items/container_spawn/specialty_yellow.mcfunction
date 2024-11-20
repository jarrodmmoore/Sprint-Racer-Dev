summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest6","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}

scoreboard players set @e[tag=chest6,tag=cSETME] itemBlockState 6
execute as @e[tag=chest6,type=armor_stand,tag=cSETME] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest6,tag=cSETME] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest6,tag=cSETME] add trap
execute if entity @s[type=item,tag=itemCyan,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest6,tag=cSETME] add itemCyan
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME] playerID = @s playerID

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME] add aiCantSee

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] run function sprint_racer:items/container_spawn/homing_cheat
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=41a] run function sprint_racer:items/container_spawn/prank_cheat

tag @e[tag=cSETME] remove cSETME