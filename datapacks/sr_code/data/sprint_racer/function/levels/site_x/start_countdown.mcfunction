#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=100}] run setblock -348 104 -1047 minecraft:redstone_lamp[lit=true]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=120}] run setblock -348 104 -1045 minecraft:redstone_lamp[lit=true]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=140}] run setblock -348 104 -1043 minecraft:redstone_lamp[lit=true]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run setblock -348 104 -1047 minecraft:redstone_lamp[lit=false]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run setblock -348 104 -1045 minecraft:redstone_lamp[lit=false]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run setblock -348 104 -1043 minecraft:redstone_lamp[lit=false]