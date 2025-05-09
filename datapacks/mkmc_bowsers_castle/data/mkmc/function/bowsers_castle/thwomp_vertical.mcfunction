#executed by a thwomp entity on every tick

#all vertical thwomps in n64 bowser's castle sit on the same y level
#so i'm going to take some shortcuts.

#unlike in mkmc i'm also not going to bother moving them at all.
#varying the y coordinate of the execution context will do just fine!


#using AIBC_dir4 as our timer. sprint racer cleans that variable out when we're done
scoreboard players add @s AIBC_dir4 1
execute if score @s AIBC_dir4 matches 100.. run scoreboard players set @s AIBC_dir4 0


#be lazy and don't clone when nobody's around to see us
execute unless entity @a[distance=..70] unless entity @e[tag=ai,distance=..8] run return 0
#=====

#slowly rise up
execute if score @s AIBC_dir4 matches 15 positioned ~ 156 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
execute if score @s AIBC_dir4 matches 30 positioned ~ 157 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
execute if score @s AIBC_dir4 matches 45 positioned ~ 158 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
execute if score @s AIBC_dir4 matches 60 positioned ~ 159 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
#quickly fall down
execute if score @s AIBC_dir4 matches 75 positioned ~ 158 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
execute if score @s AIBC_dir4 matches 77 positioned ~ 157 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
execute if score @s AIBC_dir4 matches 79 positioned ~ 156 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
#impact
execute if score @s AIBC_dir4 matches 81 positioned ~ 155 ~ run function mkmc:bowsers_castle/thwomp_vertical_frame
execute if score @s AIBC_dir4 matches 81 positioned ~1.5 155 ~1.5 run particle block{block_state:"minecraft:stone"} ~ ~.25 ~ 1.0 0 1.0 1 30 force @a[distance=..40]
execute if score @s AIBC_dir4 matches 81 positioned ~1.5 155 ~1.5 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 2.2 0.8
execute if score @s AIBC_dir4 matches 81 positioned ~1.5 155 ~1.5 as @e[tag=activeplayer,distance=4..6,nbt={OnGround:1b}] at @s run tp @s ~ ~.25 ~
execute if score @s AIBC_dir4 matches 81 positioned ~1.5 155 ~1.5 as @e[tag=activeplayer,distance=..4,nbt={OnGround:1b}] run damage @s 7 falling_block at ~ ~ ~