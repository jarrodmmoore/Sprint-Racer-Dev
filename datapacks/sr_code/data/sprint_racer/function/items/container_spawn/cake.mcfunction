summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest11","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Passengers:[ \
    {id:"minecraft:item_display",Tags:["setChestDisplay"],item:{id:"minecraft:cake",count:1,components:{"minecraft:item_model":"sr/container/cake"}},item_display:"head",teleport_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[0.6f,0.6f,0.6f]}} \
]}

#visual display setup
execute as @e[type=item_display,distance=..3,tag=setChestDisplay] run function sprint_racer:items/container_spawn/setup_generic_chest_item_display

#armor_stand setup
scoreboard players set @e[tag=chest11,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 11
execute as @e[tag=chest11,type=armor_stand,tag=cSETME,distance=..3] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest11,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest11,tag=cSETME,type=armor_stand,distance=..3] add trap
execute if entity @s[type=item,tag=itemCyan,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest11,tag=cSETME,type=armor_stand,distance=..3] add itemCyan
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME,type=armor_stand,distance=..3] playerID = @s playerID

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME,type=armor_stand,distance=..3] add aiCantSee

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] run function sprint_racer:items/container_spawn/homing_cheat

tag @e[tag=cSETME,type=armor_stand,distance=..3] remove cSETME