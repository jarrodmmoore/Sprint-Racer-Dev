summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest3","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Passengers:[ \
    {id:"minecraft:item_display",Tags:["setChestDisplay","glassChestDisplay"],item:{id:"minecraft:glass",count:1,components:{"minecraft:item_model":"sr/container/glass"}},item_display:"head",teleport_duration:10,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.3f,0f],scale:[0.6f,0.6f,0.6f]}} \
]}


#armor stand stuff

scoreboard players set @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 3
execute as @e[tag=chest3,type=armor_stand,tag=cSETME,distance=..3] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

#=======================
#item odds depend on whether we're in battle mode or not
#(lobby and free-roam are considered "race" here)
execute unless score global gameState matches 3 run function sprint_racer:items/container_spawn/capsule_category_odds/race
execute if score global gameState matches 3 run function sprint_racer:items/container_spawn/capsule_category_odds/battle
#=======================

scoreboard players reset @s rNumber

#DEBUG
#function sprint_racer_language:gameplay/capsule_item/1

#handle summoned item entity
#scoreboard players set @e[tag=capsuleSummon,type=item,distance=..3] itemBlockState 99
execute as @e[tag=capsuleSummon,type=item_display,distance=..3] at @s run particle cloud ~ ~.22 ~ 0 0 0 0 3
execute as @e[tag=capsuleSummon,type=item_display,distance=..3] run ride @s mount @e[limit=1,type=item_display,distance=..3,tag=setChestDisplay]
tag @e[tag=capsuleSummon,type=item_display,distance=..3] remove capsuleSummon

#visual display setup
execute as @e[type=item_display,distance=..3,tag=setChestDisplay] run function sprint_racer:items/container_spawn/setup_generic_chest_item_display

#trapped chest stuff
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] add trap
execute if entity @s[type=item,tag=itemCyan,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] add itemCyan
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME,type=armor_stand,distance=..3] playerID = @s playerID

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=11a] run function sprint_racer:items/container_spawn/homing_cheat
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=41a] run function sprint_racer:items/container_spawn/prank_cheat

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME,type=armor_stand,distance=..3] add aiCantSee

tag @e[tag=cSETME,type=armor_stand,distance=..3] remove cSETME