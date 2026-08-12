#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 1091 98 575 redstone_block
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 1095 98 575 redstone_block
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 1099 98 575 redstone_block

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run fill 1091 98 575 1099 98 575 oak_planks

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160,gameState=7}] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add allow_meme
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] run function sprint_racer:levels/logmill/memecut

#trap/alternate route is hidden initially
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove switchON
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 1100 69 581 1102 69 581 red_wool
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 1084 70 580 1086 70 582 minecraft:oak_trapdoor[facing=west,half=top,open=false]