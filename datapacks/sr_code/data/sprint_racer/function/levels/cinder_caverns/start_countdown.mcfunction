#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 394 22 500 redstone_ore

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 394 22 498 redstone_ore

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 394 22 496 redstone_ore

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 394 22 500 diamond_ore
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 394 22 498 diamond_ore
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 394 22 496 diamond_ore

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run setblock 394 22 500 coal_ore
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run setblock 394 22 498 coal_ore
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=240}] run setblock 394 22 496 coal_ore