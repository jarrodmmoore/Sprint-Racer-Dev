#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run fill 119 60 1560 121 60 1560 red_wool
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run tag @e[tag=w,type=armor_stand] remove switchON
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=160}] run clone 144 41 1530 150 47 1530 144 61 1530

execute if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=160}] run fill 152 61 1542 152 65 1542 ice
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=160}] run fill 153 61 1542 153 63 1542 ice
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=160}] run fill 165 61 1542 165 65 1542 ice
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1,gameTime=160}] run fill 164 61 1542 164 63 1542 ice

execute if entity @e[tag=w,type=armor_stand,scores={gameState=7,gameTime=160}] run fill 152 61 1542 152 65 1542 air
execute if entity @e[tag=w,type=armor_stand,scores={gameState=7,gameTime=160}] run fill 153 61 1542 153 63 1542 air
execute if entity @e[tag=w,type=armor_stand,scores={gameState=7,gameTime=160}] run fill 165 61 1542 165 65 1542 air
execute if entity @e[tag=w,type=armor_stand,scores={gameState=7,gameTime=160}] run fill 164 61 1542 164 63 1542 air