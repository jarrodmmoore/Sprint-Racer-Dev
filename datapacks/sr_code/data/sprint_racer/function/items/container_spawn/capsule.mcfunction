summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest3","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}

scoreboard players set @e[tag=chest3,tag=cSETME] itemBlockState 3
execute as @e[tag=chest3,type=armor_stand,tag=cSETME] at @s run function sprint_racer:items/container_spawn/random_initial_rotation

#=======================
#item odds depend on whether we're in battle mode or not
#(lobby and free-roam are considered "race" here)
execute unless entity @e[tag=w,type=armor_stand,scores={gameState=3}] run function sprint_racer:items/container_spawn/capsule_category_odds/race
execute if entity @e[tag=w,type=armor_stand,scores={gameState=3}] run function sprint_racer:items/container_spawn/capsule_category_odds/battle
#=======================

scoreboard players reset @s rNumber

#DEBUG
#function sprint_racer_language:gameplay/capsule_item/1

scoreboard players set @e[tag=capsuleSummon] itemBlockState 99
execute as @e[tag=capsuleSummon] at @s run particle cloud ~ ~.22 ~ 0 0 0 0 3
tag @e[tag=capsuleSummon] remove capsuleSummon

execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players set @e[tag=chest3,tag=cSETME] itemBlockState 10
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest3,tag=cSETME] add trap
execute if entity @s[type=item,tag=itemCyan,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @e[tag=chest3,tag=cSETME] add itemCyan
execute if entity @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run scoreboard players operation @e[tag=cSETME] playerID = @s playerID

execute if entity @s[tag=aiCantSee] run tag @e[tag=cSETME] add aiCantSee

tag @e[tag=cSETME] remove cSETME