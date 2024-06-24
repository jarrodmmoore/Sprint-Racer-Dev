#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run setblock 1115 66 1039 red_wool
execute if entity @e[tag=w,scores={gameTime=120}] run setblock 1112 66 1039 red_wool
execute if entity @e[tag=w,scores={gameTime=140}] run setblock 1109 66 1039 red_wool

execute if entity @e[tag=w,scores={gameTime=160}] run setblock 1115 66 1039 lime_wool
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 1112 66 1039 lime_wool
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 1109 66 1039 lime_wool

execute if entity @e[tag=w,scores={gameTime=240}] run setblock 1115 66 1039 gray_wool
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 1112 66 1039 gray_wool
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 1109 66 1039 gray_wool