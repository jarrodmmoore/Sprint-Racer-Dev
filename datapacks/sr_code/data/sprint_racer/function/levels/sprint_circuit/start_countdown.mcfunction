#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=20}] run setblock 1601 75 -381 gray_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=20}] run setblock 1599 75 -381 gray_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=20}] run setblock 1597 75 -381 gray_wool

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run setblock 1601 75 -381 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=120}] run setblock 1599 75 -381 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=140}] run setblock 1597 75 -381 red_wool

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 1601 75 -381 light_blue_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 1599 75 -381 light_blue_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 1597 75 -381 light_blue_wool

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=220}] run setblock 1601 75 -381 gray_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=220}] run setblock 1599 75 -381 gray_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=220}] run setblock 1597 75 -381 gray_wool
