#projectiles multiply?
execute as @e[tag=missile,type=armor_stand,tag=!touhou] at @s run function sprint_racer:cheats/th_missile_multiply
execute as @e[type=tnt,tag=!touhou] at @s run function sprint_racer:cheats/th_tnt_multiply
execute as @e[type=snowball,tag=sHasID,tag=!touhou] at @s run function sprint_racer:cheats/th_snowball_multiply

#shoot randomly
scoreboard players add global touhou 1
execute if score #halftick value matches 1 run scoreboard players add global touhou 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick,scores={gameState=1,gameTime=240..}] run scoreboard players add global touhou 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gameTime=240..}] run scoreboard players add global touhou 1

execute if score global touhou matches 40.. as @e[limit=1,sort=random,tag=activeplayer] at @s as @e[limit=1,type=marker,tag=node,sort=random,distance=15..55] at @s facing entity @e[limit=1,sort=nearest,tag=activeplayer] eyes run function sprint_racer:cheats/th_random

#still above 40? add delay...
execute if score global touhou matches 40.. run scoreboard players set global touhou 0