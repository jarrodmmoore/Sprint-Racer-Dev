#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#make sure switch is off when race starts
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 10502 72 -8924 10502 76 -8920 black_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 10495 71 -8922 10497 71 -8922 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON