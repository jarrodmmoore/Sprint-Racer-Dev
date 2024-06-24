#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run setblock 553 79 772 red_wool
execute if entity @e[tag=w,scores={gameTime=120}] run setblock 553 80 775 red_wool
execute if entity @e[tag=w,scores={gameTime=140}] run setblock 553 79 778 red_wool

execute if entity @e[tag=w,scores={gameTime=160}] run setblock 553 79 772 lime_wool
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 553 80 775 lime_wool
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 553 79 778 lime_wool

execute if entity @e[tag=w,scores={gameTime=240}] run setblock 553 79 772 gray_wool
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 553 80 775 gray_wool
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 553 79 778 gray_wool