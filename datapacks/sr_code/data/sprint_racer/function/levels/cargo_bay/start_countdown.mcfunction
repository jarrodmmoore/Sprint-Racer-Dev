#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=50}] if entity @e[type=armor_stand,tag=51a,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:levels/cargo_bay/stadium_layout_on
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=50}] unless entity @e[type=armor_stand,tag=51a,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:levels/cargo_bay/stadium_layout_off


execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=50}] run setblock 467 68 -1317 redstone_lamp[lit=false]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=50}] run setblock 467 68 -1315 redstone_lamp[lit=false]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=50}] run setblock 467 68 -1313 redstone_lamp[lit=false]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=100}] run setblock 467 68 -1317 redstone_lamp[lit=true]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=120}] run setblock 467 68 -1315 redstone_lamp[lit=true]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=140}] run setblock 467 68 -1313 redstone_lamp[lit=true]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=230}] run setblock 467 68 -1317 redstone_lamp[lit=false]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=230}] run setblock 467 68 -1315 redstone_lamp[lit=false]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=230}] run setblock 467 68 -1313 redstone_lamp[lit=false]