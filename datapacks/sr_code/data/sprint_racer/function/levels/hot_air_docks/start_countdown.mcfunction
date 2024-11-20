#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=100}] run setblock -327 150 -1254 minecraft:soul_lantern[hanging=true]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=120}] run setblock -327 150 -1252 minecraft:soul_lantern[hanging=true]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=140}] run setblock -327 150 -1250 minecraft:soul_lantern[hanging=true]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run particle falling_dust{block_state:"minecraft:soul_fire"} -327 150 -1254 0.34 0.34 0.34 1 20
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run particle falling_dust{block_state:"minecraft:soul_fire"} -327 150 -1252 0.34 0.34 0.34 1 20
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run particle falling_dust{block_state:"minecraft:soul_fire"} -327 150 -1250 0.34 0.34 0.34 1 20

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run setblock -327 150 -1254 minecraft:lantern[hanging=true]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run setblock -327 150 -1252 minecraft:lantern[hanging=true]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=240}] run setblock -327 150 -1250 minecraft:lantern[hanging=true]

#switch stuff
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill -282 143 -1255 -281 143 -1250 polished_blackstone replace minecraft:lime_glazed_terracotta
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill -282 143 -1258 -282 144 -1258 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill -286 143 -1254 -286 144 -1254 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run tag @e[tag=node,type=marker,tag=HADcheckpoint] remove checkpoint
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run fill -247 147 -1225 -247 147 -1223 red_wool