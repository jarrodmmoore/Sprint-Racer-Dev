#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run setblock 863 72 1070 red_concrete
execute if entity @e[tag=w,scores={gameTime=120}] run setblock 863 72 1067 red_concrete
execute if entity @e[tag=w,scores={gameTime=140}] run setblock 863 72 1064 red_concrete

execute if entity @e[tag=w,scores={gameTime=160}] run setblock 863 72 1070 lime_concrete
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 863 72 1067 lime_concrete
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 863 72 1064 lime_concrete

execute if entity @e[tag=w,scores={gameTime=240}] run setblock 863 72 1070 gray_concrete
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 863 72 1067 gray_concrete
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 863 72 1064 gray_concrete