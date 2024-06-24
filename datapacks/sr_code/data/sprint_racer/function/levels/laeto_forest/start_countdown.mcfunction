#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run fill 854 69 526 854 69 536 red_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run setblock 854 69 533 red_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run setblock 854 69 531 light_gray_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=100}] run setblock 854 69 529 light_gray_concrete

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=120}] run setblock 854 69 531 red_concrete

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=140}] run setblock 854 69 529 red_concrete

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill 854 69 526 854 69 536 lime_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 854 69 533 lime_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 854 69 531 lime_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run setblock 854 69 529 lime_concrete

#make sure switch is off by default
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run clone 784 56 542 787 56 551 784 65 542
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill 776 66 585 776 66 587 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run tag @e[tag=w,type=armor_stand] remove switchON

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run fill 854 69 526 854 69 536 light_gray_stained_glass
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run setblock 854 69 533 light_gray_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run setblock 854 69 531 light_gray_concrete
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=240}] run setblock 854 69 529 light_gray_concrete