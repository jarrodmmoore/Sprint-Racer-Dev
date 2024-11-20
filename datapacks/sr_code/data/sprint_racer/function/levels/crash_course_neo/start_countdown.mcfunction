#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#switch is ON by default
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run clone 425 54 113 433 58 113 425 61 113
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 427 61 114 431 64 114 lime_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 426 60 109 430 60 111 lime_glazed_terracotta
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] as @e[tag=ccneo_pad1,type=marker] at @s run tp @s ~ 61 ~
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run fill 442 60 87 442 60 89 lime_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run scoreboard players set @e[tag=ccneo_bc1,type=marker] AIBC_event 1

#arrow signs near the start, lap 1 only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run clone 435 58 100 435 59 105 435 61 100

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=140}] run scoreboard players set @a tutorProgress 0