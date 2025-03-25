#choose one of 4 different car types
scoreboard players operation #randomcar value = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..4}] rNumber
execute if score #randomcar value matches 1 run summon armor_stand ~ 50 ~ {equipment:{head:{id:"stone_button",count:1,components:{"minecraft:item_model":"sr/object/retro_car_1"}}},DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car1","retroSynthCar"]}
execute if score #randomcar value matches 2 run summon armor_stand ~ 50 ~ {equipment:{head:{id:"stone_button",count:1,components:{"minecraft:item_model":"sr/object/retro_car_3"}}},DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car2","retroSynthCar"]}
execute if score #randomcar value matches 3 run summon armor_stand ~ 50 ~ {equipment:{head:{id:"stone_button",count:1,components:{"minecraft:item_model":"sr/object/retro_car_4"}}},DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car3","retroSynthCar"]}
execute if score #randomcar value matches 4 run summon armor_stand ~ 50 ~ {equipment:{head:{id:"stone_button",count:1,components:{"minecraft:item_model":"sr/object/retro_car_2a"}}},DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","car4","retroSynthCar"]}
execute if score #randomcar value matches 4 run summon armor_stand ~ 50 ~ {equipment:{head:{id:"stone_button",count:1,components:{"minecraft:item_model":"sr/object/retro_car_2b"}}},DisabledSlots:2039583,Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["setcar","setcar2","car4","retroSynthCar"]}

#tp to here (get alignment from spawnpoint)
tp @e[tag=setcar,type=armor_stand] @s
execute as @e[tag=setcar2,type=armor_stand] at @e[limit=1,tag=setcar,type=armor_stand] positioned ^ ^ ^-7.5 run tp @s ~ ~ ~ ~ ~

#randomize the delay between car spawns
scoreboard players operation #carCooldown value = @e[limit=1,type=armor_stand,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10..40}] rNumber
execute if score #carCooldown value matches ..9 run scoreboard players set #carCooldown value 10

#clear tags
tag @e[tag=setcar,type=armor_stand] remove setcar
tag @e[tag=setcar2,type=armor_stand] remove setcar2

#mark ourself as the last used spawnpoint
tag @e[type=armor_stand,tag=retroCarLast] remove retroCarLast
tag @s add retroCarLast