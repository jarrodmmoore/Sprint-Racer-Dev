#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 1100 69 276 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 1100 69 272 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 1100 69 268 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run clone 1043 41 291 1049 47 291 1043 61 291
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 1129 60 286 1129 60 288 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run scoreboard players set @a tutorProgress 0

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run fill 1100 69 268 1100 69 276 stone