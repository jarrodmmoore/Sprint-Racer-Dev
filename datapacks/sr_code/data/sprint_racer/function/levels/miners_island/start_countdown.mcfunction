#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

#make sure switch is off when race starts
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 42 69 -726 42 69 -724 red_wool
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[type=marker,tag=MIcheckpoint] remove checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[type=marker,tag=MIcheckpointB] add checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 31 55 -714 35 56 -714 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 41 60 -692 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 41 61 -692 red_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 41 60 -686 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 41 61 -686 red_concrete
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run fill 31 59 -713 34 59 -711 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run setblock 31 59 -713 grass_block
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

#summon gerald
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run kill @e[type=chicken,tag=gerald]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run summon minecraft:chicken -15 72 -736 {Invulnerable:1b,CustomNameVisible:1b,Leashed:1b,PersistenceRequired:1b,NoAI:1b,Tags:["gerald","chickenstay"],CustomName:'{"text":"Gerald"}',Leash:{X:-15,Y:67,Z:-736}}