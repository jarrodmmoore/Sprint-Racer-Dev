#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#Starting Line Lights
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 7893 69 -9054 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 7893 69 -9058 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 7893 69 -9062 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 7893 69 -9054 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 7893 69 -9058 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 7893 69 -9062 stone