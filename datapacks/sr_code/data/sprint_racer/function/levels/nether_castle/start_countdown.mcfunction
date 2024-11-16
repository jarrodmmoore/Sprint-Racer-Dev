#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run setblock 2101 98 3041 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=120}] run setblock 2101 98 3038 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=140}] run setblock 2101 98 3035 red_wool

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 2101 98 3041 lime_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 2101 98 3038 lime_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 2101 98 3035 lime_wool

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run setblock 2101 98 3041 light_gray_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run setblock 2101 98 3038 light_gray_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run setblock 2101 98 3035 light_gray_wool