function sprint_racer:levels/miners_island/map

#cannon blast
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] as @e[tag=activeplayer,scores={scriptMove=1}] at @s if block ~ 78 ~ structure_void positioned 22 74 -740 run function sprint_racer:levels/miners_island/cannon_blast
execute if score #halftick value matches 1 as @e[tag=activeplayer,scores={scriptMove=1..2}] at @s if block ~ 78 ~ structure_void positioned 22 74 -740 run function sprint_racer:levels/miners_island/cannon_blast

#slime bouncer
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gerald 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!halftick,scores={gerald=5..}] gerald 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick,scores={gerald=3..}] gerald 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gerald=1}] if entity @a[gamemode=adventure,x=-12,y=66,z=-737,dx=0,dy=0,dz=2] if block -13 66 -737 slime_block run setblock -16 65 -736 redstone_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gerald=1}] unless entity @a[gamemode=adventure,x=-12,y=66,z=-737,dx=0,dy=0,dz=2] unless block -13 66 -737 slime_block run setblock -16 65 -736 stone
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove slimebouncer

#make sure gerald exists
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=180..}] if block -15 72 -736 air unless entity @e[tag=gerald,type=chicken] run summon minecraft:chicken -15 72 -736 {Invulnerable:1b,CustomNameVisible:1b,Leashed:1b,PersistenceRequired:1b,NoAI:1b,Tags:["gerald","chickenstay"],CustomName:{text:"Gerald"},Leash:{X:-15,Y:67,Z:-736}}