#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=100}] run setblock 1276 69 826 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=120}] run setblock 1280 69 826 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=140}] run setblock 1284 69 826 redstone_block

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run fill 1276 69 826 1284 69 826 stone

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill 1334 61 815 1336 62 815 yellow_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] as @e[tag=node,tag=GLtpnode] at @s run tp @s ~ 61 ~
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill 1334 60 817 1336 60 819 lime_glazed_terracotta
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill 1364 61 818 1370 62 818 red_stained_glass

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=90}] run tag @e[tag=GLcheckpoint] remove posCalc
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=90}] run tag @e[tag=GLcheckpoint,tag=route1] add posCalc

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=90}] run scoreboard players set @e[tag=GLaibcSetMe] AIBC_dir1 2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=90}] run scoreboard players set @e[tag=GLaibcSetMe] AIBC_event 3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=90}] run scoreboard players set @e[tag=GLaibcSetMe] AIBC_condition 20


#time attack shortcut?
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gameTime=160}] run function sprint_racer:levels/green_labyrinth/time_attack_close_shortcut
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7,gameTime=160}] run function sprint_racer:levels/green_labyrinth/time_attack_open_shortcut

#GLaibcSetMe