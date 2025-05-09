#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#lights

#3,2,1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run fill 9699 154 -7608 9699 156 -7606 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run fill 9699 155 -7603 9699 157 -7601 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 9699 154 -7598 9699 156 -7596 red_stained_glass

#go!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 9699 154 -7608 9699 156 -7606 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 9699 155 -7603 9699 157 -7601 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 9699 154 -7598 9699 156 -7596 lime_stained_glass

#turn gray again
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 9699 154 -7608 9699 156 -7606 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 9699 155 -7603 9699 157 -7601 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 9699 154 -7598 9699 156 -7596 light_gray_stained_glass
