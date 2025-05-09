#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#start line lights
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=100}] run fill 7789 66 -8523 7790 67 -8523 red_stained_glass

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=120}] run fill 7793 66 -8523 7794 67 -8523 red_stained_glass

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 7797 66 -8523 7798 67 -8523 red_stained_glass

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7789 66 -8523 7790 67 -8523 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7793 66 -8523 7794 67 -8523 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7797 66 -8523 7798 67 -8523 lime_stained_glass

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 7789 66 -8523 7790 67 -8523 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 7793 66 -8523 7794 67 -8523 light_gray_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=220}] run fill 7797 66 -8523 7798 67 -8523 light_gray_stained_glass