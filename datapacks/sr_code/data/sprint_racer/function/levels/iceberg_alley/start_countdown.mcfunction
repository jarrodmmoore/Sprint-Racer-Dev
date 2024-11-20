#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=20}] run setblock 761 73 1432 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=20}] run setblock 754 73 1440 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=20}] run setblock 747 73 1431 stone

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 761 73 1432 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 754 73 1440 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 747 73 1431 redstone_block