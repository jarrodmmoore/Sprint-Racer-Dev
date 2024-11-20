#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 226 68 600 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 230 68 600 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 234 68 600 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run fill 226 68 600 234 68 600 birch_planks

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] as @e[tag=node,tag=moveThisNode] at @s run tp @s ~ 60 ~
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 208 59 541 210 59 543 lime_glazed_terracotta
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 240 60 542 240 60 544 lime_wool