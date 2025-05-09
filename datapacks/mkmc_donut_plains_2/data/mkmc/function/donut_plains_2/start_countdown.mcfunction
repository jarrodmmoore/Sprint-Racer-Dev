#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!


#animate the start line

#3..2..1..
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run fill 7930 65 -9376 7931 66 -9376 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run fill 7934 65 -9376 7935 66 -9376 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 7938 65 -9376 7939 66 -9376 red_stained_glass
#go!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7930 65 -9376 7931 66 -9376 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7934 65 -9376 7935 66 -9376 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7938 65 -9376 7939 66 -9376 lime_stained_glass

#turn gray again after a while
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 7930 65 -9376 7931 66 -9376 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 7934 65 -9376 7935 66 -9376 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 7938 65 -9376 7939 66 -9376 light_gray_stained_glass