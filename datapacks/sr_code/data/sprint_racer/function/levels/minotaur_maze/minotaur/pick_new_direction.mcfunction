tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..4}] add pickViable

#move direction (lastTeleport)
#1 = positive x
#2 = positive z
#3 = negative x
#4 = negative z

#don't go into a solid wall
execute if block ~5 1 ~ magenta_wool run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] remove pickViable
execute if block ~ 1 ~5 magenta_wool run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] remove pickViable
execute if block ~-5 1 ~ magenta_wool run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] remove pickViable
execute if block ~ 1 ~-5 magenta_wool run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] remove pickViable

#count how many viable directions exist
execute store result score #test value run execute if entity @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..4},tag=pickViable]

#more than 1 viable direction: don't ever go in reverse of last direction
execute if score #test value matches 2.. if score @s lastTeleport matches 1 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] remove pickViable
execute if score #test value matches 2.. if score @s lastTeleport matches 2 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] remove pickViable
execute if score #test value matches 2.. if score @s lastTeleport matches 3 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] remove pickViable
execute if score #test value matches 2.. if score @s lastTeleport matches 4 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] remove pickViable

#pick one at random
scoreboard players set @s lastTeleport 0
scoreboard players operation @s lastTeleport = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..4},tag=pickViable] rNumber

#got direction? need to move 5 blocks to next junction
scoreboard players set @s age 5