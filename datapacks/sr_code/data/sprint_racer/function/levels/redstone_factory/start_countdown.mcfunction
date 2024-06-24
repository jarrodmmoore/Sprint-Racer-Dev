#this is run every tick between gameTime=0 and gameTime=240
#gameTime=100 3..
#gameTime=120 2..
#gameTime=140 1..
#gameTime=160 GO!

execute if entity @e[tag=w,scores={gameTime=90}] run setblock 310 57 334 air
execute if entity @e[tag=w,scores={gameTime=200}] run setblock 310 57 334 redstone_block

execute if entity @e[tag=w,scores={gameTime=160}] run fill 297 68 284 297 69 286 minecraft:air
execute if entity @e[tag=w,scores={gameTime=160}] run fill 297 68 277 297 69 280 minecraft:smooth_stone_slab[type=double]
execute if entity @e[tag=w,scores={gameTime=160}] run fill 297 68 271 297 69 273 minecraft:smooth_stone_slab[type=double]
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 299 75 285 redstone_block
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 312 71 279 redstone_block
execute if entity @e[tag=w,scores={gameTime=160}] run setblock 320 73 272 redstone_block
execute if entity @e[tag=w,scores={gameTime=160}] run tag @e[tag=RFcheckpoint] remove posCalc
execute if entity @e[tag=w,scores={gameTime=160}] run tag @e[tag=RFcheckpoint,tag=route1] add posCalc
execute if entity @e[tag=w,scores={gameTime=160}] run scoreboard players set @e[tag=node,tag=AIBC,tag=set_ai_route] AIBC_dir1 9

execute if entity @e[tag=w,scores={gameTime=72}] run setblock 310 58 362 redstone_block
execute if entity @e[tag=w,scores={gameTime=240}] run setblock 310 58 362 air

#future proofing, forces the door open in case piston mechanics change again for the 60th time
execute if entity @e[tag=w,scores={gameTime=240}] run fill 310 61 331 312 63 331 air