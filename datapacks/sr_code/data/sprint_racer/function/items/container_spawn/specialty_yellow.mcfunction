summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest6","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"yellow_wool",count:1,components:{"minecraft:item_model":"sr/container/yellow"}}},DisabledSlots:2039583,Passengers:[ \
    {id:"minecraft:item_display",Tags:["setChestDisplay"],item:{id:"minecraft:yellow_wool",count:1,components:{"minecraft:item_model":"sr/container/yellow"}},item_display:"head",teleport_duration:10,interpolation_duration:0} \
]}


#visual display setup
execute as @e[type=item_display,distance=..3,tag=setChestDisplay] run function sprint_racer:items/container_spawn/setup_geneic_chest_item_display


#armor stand stuff
scoreboard players set @e[tag=chest6,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 6
execute as @e[tag=chest6,type=armor_stand,tag=cSETME,distance=..3] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest6,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest6,tag=cSETME,type=armor_stand,distance=..3] add trap
execute if entity @s[type=item,tag=itemCyan,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest6,tag=cSETME,type=armor_stand,distance=..3] add itemCyan
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME,type=armor_stand,distance=..3] playerID = @s playerID

execute if entity @s[tag=aiCantSee,type=armor_stand,distance=..3] run tag @e[tag=cSETME] add aiCantSee

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] run function sprint_racer:items/container_spawn/homing_cheat
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=41a] run function sprint_racer:items/container_spawn/prank_cheat

tag @e[tag=cSETME,type=armor_stand,distance=..3] remove cSETME