tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest3,distance=..3] add chestTarget
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 2 1
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run particle block{block_state:"minecraft:glass"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run data merge entity @e[distance=..2,limit=1,sort=nearest,type=item,tag=capsuleItem] {PickupDelay:0,Age:10}
execute as @e[tag=chestTarget,type=armor_stand,limit=1,sort=nearest] at @s run tag @e[distance=..2,limit=1,sort=nearest,type=item,tag=capsuleItem] add itemGet
execute at @s run tp @e[limit=1,sort=nearest,tag=itemGet,tag=capsuleItem] @s
scoreboard players set @e[tag=itemGet,tag=capsuleItem] itemDropAge 60
tag @e[tag=itemGet] remove capsuleItem
kill @e[tag=chestTarget]

#while we're here, let's get rid of any invalid capsules that had their items blown away by an explosion or something
execute as @e[type=item,tag=capsuleItem,tag=!itemGet] at @s positioned ~ ~-1 ~ unless entity @e[distance=..3,tag=chest3] run data merge entity @s {PickupDelay:0,Age:10,NoGravity:0}
execute as @e[tag=chest3,type=armor_stand] at @s positioned ~ ~1 ~ unless entity @e[distance=..3,tag=capsuleItem] run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
execute as @e[tag=chest3,type=armor_stand] at @s positioned ~ ~1 ~ unless entity @e[distance=..3,tag=capsuleItem] run kill @s

#no need to call a function here this time
#cheat 15 enabled? get an extra random item
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] unless entity @e[tag=w,scores={gameState=3}] run function sprint_racer:items/pick_type/_main
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] if entity @e[tag=w,scores={gameState=3}] run function sprint_racer:items/pick_type_battle/_main

scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0