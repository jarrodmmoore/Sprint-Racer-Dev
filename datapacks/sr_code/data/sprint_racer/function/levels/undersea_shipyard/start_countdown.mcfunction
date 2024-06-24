#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,type=armor_stand,scores={gameTime=70}] run fill 417 41 -918 419 45 -910 air
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=70}] run clone 435 34 -918 437 38 -910 435 41 -918