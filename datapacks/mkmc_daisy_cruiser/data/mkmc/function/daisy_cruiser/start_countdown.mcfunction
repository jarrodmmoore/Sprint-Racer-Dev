#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#make sure switch is off when race starts
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7819 72 -7875 7819 72 -7869 oak_fence
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 7851 53 -7880 7851 53 -7878 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON