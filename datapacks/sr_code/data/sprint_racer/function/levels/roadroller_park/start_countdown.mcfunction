#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock -397 148 -736 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock -397 148 -732 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock -397 148 -728 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run setblock -397 148 -736 iron_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run setblock -397 148 -732 iron_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run setblock -397 148 -728 iron_block