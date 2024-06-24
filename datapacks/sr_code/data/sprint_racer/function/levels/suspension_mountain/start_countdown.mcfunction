#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run setblock 814 67 779 red_concrete
execute if entity @e[tag=w,scores={gameTime=120}] run setblock 814 67 777 red_concrete
execute if entity @e[tag=w,scores={gameTime=140}] run setblock 814 67 775 red_concrete

execute if entity @e[tag=w,scores={gameTime=160}] run setblock 814 67 779 lime_concrete
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 814 67 777 lime_concrete
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 814 67 775 lime_concrete

execute if entity @e[tag=w,scores={gameTime=240}] run setblock 814 67 779 gray_concrete
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 814 67 777 gray_concrete
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 814 67 775 gray_concrete