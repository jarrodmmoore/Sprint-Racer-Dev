#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#lights
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run setblock 8950 67 -5987 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run setblock 8947 67 -5987 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run setblock 8944 67 -5987 red_wool

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 8950 67 -5987 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 8947 67 -5987 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 8944 67 -5987 lime_wool

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 8950 67 -5987 gray_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 8947 67 -5987 gray_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run setblock 8944 67 -5987 gray_wool