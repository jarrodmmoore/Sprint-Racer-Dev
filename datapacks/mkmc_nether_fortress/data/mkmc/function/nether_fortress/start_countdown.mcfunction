#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#lights

#3,2,1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 6959 248 -7779 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 6957 248 -7779 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 6955 248 -7779 red_stained_glass

#go!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 6959 248 -7779 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 6957 248 -7779 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 6955 248 -7779 lime_stained_glass

#turn gray again
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 6959 248 -7779 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 6957 248 -7779 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 6955 248 -7779 light_gray_stained_glass
