#don't do anything if chunks aren't loaded
execute unless loaded 7237 63 -9297 run return 0
execute unless loaded 7270 63 -9265 run return 0
#=====

#switch colors
execute if score #missionPiston AIBC_dir4 matches 1 run fill 7237 63 -9297 7237 63 -9295 lime_wool
execute if score #missionPiston AIBC_dir4 matches 50.. run fill 7237 63 -9297 7237 63 -9295 red_wool

#light up the piston thing when it moves out
execute if score #missionPiston AIBC_dir4 matches 1 run fill 7259 65 -9261 7266 72 -9261 redstone_block
execute if score #missionPiston AIBC_dir4 matches 19 run fill 7259 65 -9261 7266 72 -9261 stone

#players take damage if they touch the arm while moving
execute if score #missionPiston AIBC_dir4 matches 1..18 as @a[tag=playing,gamemode=adventure,x=7256,y=63,z=-9289,dx=11,dy=12,dz=20] at @s if block ~ ~1 ~ andesite run damage @s 10 falling_block at 7262.5 65 -9270

#move the arm and cause damage
#go out
execute if score #missionPiston AIBC_dir4 matches 1 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9271
execute if score #missionPiston AIBC_dir4 matches 2 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9272
execute if score #missionPiston AIBC_dir4 matches 3 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9273
execute if score #missionPiston AIBC_dir4 matches 4 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9274
execute if score #missionPiston AIBC_dir4 matches 5 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9275
execute if score #missionPiston AIBC_dir4 matches 6 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9276
execute if score #missionPiston AIBC_dir4 matches 7 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9277
execute if score #missionPiston AIBC_dir4 matches 8 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9278
execute if score #missionPiston AIBC_dir4 matches 9 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9279
execute if score #missionPiston AIBC_dir4 matches 10 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9280
execute if score #missionPiston AIBC_dir4 matches 11 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9281
execute if score #missionPiston AIBC_dir4 matches 12 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9282
execute if score #missionPiston AIBC_dir4 matches 13 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9283
execute if score #missionPiston AIBC_dir4 matches 14 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9284
execute if score #missionPiston AIBC_dir4 matches 15 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9285
execute if score #missionPiston AIBC_dir4 matches 16 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9286
execute if score #missionPiston AIBC_dir4 matches 17 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9287
#go back
execute if score #missionPiston AIBC_dir4 matches 19 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9286
execute if score #missionPiston AIBC_dir4 matches 21 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9285
execute if score #missionPiston AIBC_dir4 matches 23 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9284
execute if score #missionPiston AIBC_dir4 matches 25 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9283
execute if score #missionPiston AIBC_dir4 matches 27 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9282
execute if score #missionPiston AIBC_dir4 matches 29 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9281
execute if score #missionPiston AIBC_dir4 matches 31 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9280
execute if score #missionPiston AIBC_dir4 matches 33 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9279
execute if score #missionPiston AIBC_dir4 matches 35 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9278
execute if score #missionPiston AIBC_dir4 matches 37 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9277
execute if score #missionPiston AIBC_dir4 matches 39 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9276
execute if score #missionPiston AIBC_dir4 matches 41 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9275
execute if score #missionPiston AIBC_dir4 matches 43 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9274
execute if score #missionPiston AIBC_dir4 matches 45 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9273
execute if score #missionPiston AIBC_dir4 matches 47 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9272
execute if score #missionPiston AIBC_dir4 matches 49 run clone 7259 53 -9271 7266 60 -9265 7259 65 -9271


#timer
scoreboard players add #missionPiston AIBC_dir4 1
execute if score #missionPiston AIBC_dir4 matches 51.. run scoreboard players set #missionPiston AIBC_dir4 0
