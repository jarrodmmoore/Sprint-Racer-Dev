#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!


#move all thwomps to their start position
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] as @e[type=marker,tag=bcThwomp] run function mkmc:bowsers_castle/thwomp_set_start_positions
#done so the pattern is always the same in time attack mode


#animate the start line

#start with the lights off
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=10}] run setblock 9693 161 -9203 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=10}] run setblock 9697 161 -9203 stone
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=10}] run setblock 9701 161 -9203 stone

#3..2..1..
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 9693 161 -9203 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 9697 161 -9203 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 9701 161 -9203 redstone_block

#go!
#(do nothing)