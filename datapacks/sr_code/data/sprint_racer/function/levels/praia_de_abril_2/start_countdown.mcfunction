#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#switch OFF by default
execute if entity @e[tag=w,scores={gameTime=160}] run tag @e[tag=w,type=armor_stand] remove switchON