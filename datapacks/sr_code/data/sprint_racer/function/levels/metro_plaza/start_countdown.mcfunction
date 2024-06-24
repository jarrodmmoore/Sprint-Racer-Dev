#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=90}] as @e[type=item_frame,tag=fixframe] run data merge entity @s {ItemRotation:0b,Invulnerable:1b,Silent:1b}