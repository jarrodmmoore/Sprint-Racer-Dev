tag @e[limit=1,sort=nearest,tag=itemcontainer,tag=chest1,type=armor_stand,distance=..3] add chestTarget
execute as @e[tag=chestTarget,type=armor_stand,distance=..3] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 2 1
execute as @e[tag=chestTarget,type=armor_stand,distance=..3] at @s run particle block{block_state:"minecraft:chest"} ~ ~1.5 ~ .2 .2 .2 1 20
execute as @e[tag=chestTarget,type=armor_stand,distance=..3,tag=!homer] at @s positioned ~ ~1 ~ run scoreboard players set @e[limit=1,sort=nearest,tag=itemchest,tag=node] itemBlockState 1000
kill @e[tag=chestTarget,type=armor_stand,distance=..3]

execute unless entity @e[tag=w,type=armor_stand,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:items/pick_type/_main
execute if entity @e[tag=w,type=armor_stand,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:items/pick_type_battle/_main
#cheat 15 enabled? get an extra random item
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:items/pick_type/_main
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=15a] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:items/pick_type_battle/_main


scoreboard players set @s itemCooldown2 0
scoreboard players set @s itemCooldown 80
scoreboard players set @s itemBlockState 0