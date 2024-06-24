#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=100}] run clone 571 61 401 572 67 401 571 61 385
execute if entity @e[tag=w,scores={gameTime=100}] run clone 571 61 401 572 67 401 571 61 397
execute if entity @e[tag=w,scores={gameTime=100}] run setblock 571 66 388 red_wool

execute if entity @e[tag=w,scores={gameTime=120}] run setblock 571 66 391 red_wool

execute if entity @e[tag=w,scores={gameTime=140}] run setblock 571 66 394 red_wool

execute if entity @e[tag=w,scores={gameTime=160}] run clone 571 61 402 572 67 402 571 61 385
execute if entity @e[tag=w,scores={gameTime=160}] run clone 571 61 402 572 67 402 571 61 397
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 571 66 388 lime_wool
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 571 66 391 lime_wool
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 571 66 394 lime_wool

execute if entity @e[tag=w,scores={gameTime=240}] run clone 571 61 400 572 67 400 571 61 385
execute if entity @e[tag=w,scores={gameTime=240}] run clone 571 61 400 572 67 400 571 61 397
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 571 66 388 gray_wool
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 571 66 391 gray_wool
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 571 66 394 gray_wool

#make sure switch is off when race starts
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 550 73 300 air
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 547 73 300 air
execute if entity @e[tag=w,scores={gameTime=160}] run fill 519 73 253 519 73 255 red_wool
execute if entity @e[tag=w,scores={gameTime=160}] run tag @e[tag=w,type=armor_stand] remove switchON