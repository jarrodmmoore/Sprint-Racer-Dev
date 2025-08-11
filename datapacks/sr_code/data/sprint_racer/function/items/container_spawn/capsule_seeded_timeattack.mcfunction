summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest3","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"glass",count:1,components:{"minecraft:item_model":"sr/container/glass"}}},DisabledSlots:2039583,Passengers:[ \
    {id:"minecraft:item_display",Tags:["setChestDisplay"],item:{id:"minecraft:glass",count:1,components:{"minecraft:item_model":"sr/container/glass"}},item_display:"head",teleport_duration:10,interpolation_duration:0} \
]}


#visual display setup
execute as @e[type=item_display,distance=..3,tag=setChestDisplay] run function sprint_racer:items/container_spawn/setup_geneic_chest_item_display


#armor stand setup

scoreboard players set @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 3
execute as @e[tag=chest3,type=armor_stand,tag=cSETME,distance=..3] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

#spawn item based on seed
scoreboard players set @s rNumber 0
execute if score global gameState matches ..7 run scoreboard players operation @s rNumber = @s itemchestSeedA
execute if score global gameState matches 8.. run scoreboard players operation @s rNumber = @s itemchestSeedB

execute if entity @s[scores={rNumber=0..5}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_0_5
execute if entity @s[scores={rNumber=6..10}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_6_10
execute if entity @s[scores={rNumber=11..15}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_11_15
execute if entity @s[scores={rNumber=16..20}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_16_20

#DEBUG
#function sprint_racer_language:gameplay/capsule_item/1

scoreboard players set @e[tag=capsuleSummon,type=item,distance=..3] itemBlockState 99
execute as @e[tag=capsuleSummon,type=item,distance=..3] at @s run particle cloud ~ ~.22 ~ 0 0 0 0 3
tag @e[tag=capsuleSummon,type=item,distance=..3] remove capsuleSummon

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest3,tag=cSETME,type=armor_stand,distance=..3] add trap
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME,type=armor_stand,distance=..3] playerID = @s playerID

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME,type=armor_stand,distance=..3] add aiCantSee

tag @e[tag=cSETME,type=armor_stand,distance=..3] remove cSETME