#executed by a thwomp entity on every tick


#using AIBC_dir4 as our timer. sprint racer cleans that variable out when we're done
scoreboard players add @s AIBC_dir4 1
execute if score @s AIBC_dir4 matches 160.. run scoreboard players set @s AIBC_dir4 1


#be lazy and don't clone when nobody's around to see us
execute positioned ~ ~ ~10 unless entity @a[distance=..30] unless entity @e[tag=ai,distance=..10] run return 0
#=====

#move forth
execute if score @s AIBC_dir4 matches 5 positioned ~ ~ -9267 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 10 positioned ~ ~ -9266 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 15 positioned ~ ~ -9265 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 20 positioned ~ ~ -9264 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 25 positioned ~ ~ -9263 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 30 positioned ~ ~ -9262 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 35 positioned ~ ~ -9261 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 40 positioned ~ ~ -9260 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 45 positioned ~ ~ -9259 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 50 positioned ~ ~ -9258 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 55 positioned ~ ~ -9257 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 60 positioned ~ ~ -9256 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 65 positioned ~ ~ -9255 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 70 positioned ~ ~ -9254 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 75 positioned ~ ~ -9253 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 80 positioned ~ ~ -9252 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 85 positioned ~ ~ -9251 run function mkmc:bowsers_castle/thwomp_horizontal_frame
#move back
execute if score @s AIBC_dir4 matches 90 positioned ~ ~ -9252 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 95 positioned ~ ~ -9253 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 100 positioned ~ ~ -9254 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 105 positioned ~ ~ -9255 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 110 positioned ~ ~ -9256 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 115 positioned ~ ~ -9257 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 120 positioned ~ ~ -9258 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 125 positioned ~ ~ -9259 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 130 positioned ~ ~ -9260 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 135 positioned ~ ~ -9261 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 140 positioned ~ ~ -9262 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 145 positioned ~ ~ -9263 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 150 positioned ~ ~ -9264 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 155 positioned ~ ~ -9265 run function mkmc:bowsers_castle/thwomp_horizontal_frame
execute if score @s AIBC_dir4 matches 160 positioned ~ ~ -9266 run function mkmc:bowsers_castle/thwomp_horizontal_frame
