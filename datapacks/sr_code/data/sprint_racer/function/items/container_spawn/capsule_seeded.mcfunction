summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest3","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:item_model":"sr/container/glass"}}],HandItems:[{},{}],DisabledSlots:2039583}

scoreboard players set @e[tag=chest3,tag=cSETME] itemBlockState 3
execute as @e[tag=chest3,type=armor_stand,tag=cSETME] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

#spawn item based on seed
scoreboard players operation @s rNumber = @s itemchestSeedB

execute if entity @s[scores={rNumber=0..5}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_0_5
execute if entity @s[scores={rNumber=6..10}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_6_10
execute if entity @s[scores={rNumber=11..15}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_11_15
execute if entity @s[scores={rNumber=16..20}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_16_20
#fishing rod babyyy
execute if entity @s[scores={rNumber=21}] run function sprint_racer_language:gameplay/capsule_item/fishing_rod

#DEBUG
#function sprint_racer_language:gameplay/capsule_item/1

scoreboard players set @e[tag=capsuleSummon] itemBlockState 99
execute as @e[tag=capsuleSummon] at @s run particle cloud ~ ~.22 ~ 0 0 0 0 3
tag @e[tag=capsuleSummon] remove capsuleSummon

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest3,tag=cSETME] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest3,tag=cSETME] add trap
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME] playerID = @s playerID

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME] add aiCantSee

tag @e[tag=cSETME] remove cSETME