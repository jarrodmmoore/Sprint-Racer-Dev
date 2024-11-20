#choose one of 4 different car types
scoreboard players operation #randomcar value = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..4}] rNumber
execute if score #randomcar value matches 1 run summon armor_stand 30 70 2036 {ArmorItems:[{},{},{},{id:"stone_button",count:1,components:{"minecraft:custom_model_data":2111111}}],DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car1"]}
execute if score #randomcar value matches 2 run summon armor_stand 30 70 2036 {ArmorItems:[{},{},{},{id:"stone_button",count:1,components:{"minecraft:custom_model_data":2111112}}],DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car2"]}
execute if score #randomcar value matches 3 run summon armor_stand 30 70 2036 {ArmorItems:[{},{},{},{id:"stone_button",count:1,components:{"minecraft:custom_model_data":2111113}}],DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car3"]}
execute if score #randomcar value matches 4 run summon armor_stand 30 70 2036 {ArmorItems:[{},{},{},{id:"stone_button",count:1,components:{"minecraft:custom_model_data":2111114}}],DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car4"]}
execute if score #randomcar value matches 4 run summon armor_stand 30 70 2036 {ArmorItems:[{},{},{},{id:"stone_button",count:1,components:{"minecraft:custom_model_data":2111115}}],DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","setcar2","car4"]}

#choose a random spawnpoint
scoreboard players operation #randomcar value = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..4}] rNumber
execute if score #randomcar value matches 1 run tp @e[tag=setcar,tag=!setcar2,type=armor_stand] -28 86 2004
execute if score #randomcar value matches 2 run tp @e[tag=setcar,tag=!setcar2,type=armor_stand] -28 86 2064
execute if score #randomcar value matches 1..2 run tag @e[tag=setcar,type=armor_stand] add carMoveA
execute if score #randomcar value matches 3 run tp @e[tag=setcar,tag=!setcar2,type=armor_stand] 88 86 1998
execute if score #randomcar value matches 4 run tp @e[tag=setcar,tag=!setcar2,type=armor_stand] 88 86 2058
execute if score #randomcar value matches 3..4 run tag @e[tag=setcar,type=armor_stand] add carMoveB
execute as @e[tag=setcar2,type=armor_stand,tag=carMoveA] at @e[limit=1,tag=setcar,type=armor_stand] positioned ~-7.5 ~ ~ run tp @s ~ ~ ~
execute as @e[tag=setcar2,type=armor_stand,tag=carMoveB] at @e[limit=1,tag=setcar,type=armor_stand] positioned ~7.5 ~ ~ run tp @s ~ ~ ~

#randomize the delay between car spawns
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] carCooldown = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10..30}] rNumber
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 10
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] carCooldown *= @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={carCooldown=..100}] carCooldown 100

scoreboard players set @e[tag=setcar,type=armor_stand] lifespan 115
scoreboard players set @e[tag=setcar,type=armor_stand] carCooldown 115
scoreboard players set @e[tag=setcar2,type=armor_stand] lifespan 130
scoreboard players set @e[tag=setcar2,type=armor_stand] carCooldown 130
tag @e[tag=setcar,type=armor_stand] remove setcar
tag @e[tag=setcar2,type=armor_stand] remove setcar2