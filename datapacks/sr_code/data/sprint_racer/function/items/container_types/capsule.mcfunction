tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest3,type=armor_stand,distance=..3] add chestTarget
#if there's nothing in the capsule, exit out
execute at @e[tag=chestTarget,type=armor_stand,distance=..3,limit=1] unless entity @e[distance=..2,limit=1,sort=nearest,type=item_display,tag=capsuleItemDisplay] run return run tag @e[tag=chestTarget,type=armor_stand,distance=..2] remove chestTarget
#=====
#if there IS something in the capsule, break it and give the item
execute as @e[tag=chestTarget,type=armor_stand,distance=..3] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1
execute as @e[tag=chestTarget,type=armor_stand,distance=..3] at @s run particle block{block_state:"minecraft:white_stained_glass"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,type=armor_stand,distance=..3,tag=!homer] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000

#"get" the item from the capsule (read the tags on the item_display and give ourselves the proper item)
tag @s add capsuleCollect
execute at @e[tag=chestTarget,type=armor_stand,distance=..3] as @e[distance=..2,limit=1,sort=nearest,type=item_display,tag=capsuleItemDisplay] run function sprint_racer:items/container_types/capsule_item_collect_item_display
tag @s remove capsuleCollect

execute as @e[tag=chestTarget,type=armor_stand,distance=..3] run function sprint_racer:items/container_types/destroy_chest_target

#no need to call a function here this time
#cheat 15 enabled? get an extra random item
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:items/pick_type/_main
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:items/pick_type_battle/_main

scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0