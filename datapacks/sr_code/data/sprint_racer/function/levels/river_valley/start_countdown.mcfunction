#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 1077 67 810 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 1077 67 806 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 1077 67 802 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run fill 1077 67 802 1077 67 810 stone