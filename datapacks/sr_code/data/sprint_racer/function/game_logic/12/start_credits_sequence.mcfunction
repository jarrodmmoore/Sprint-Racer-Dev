kill @e[type=armor_stand,tag=c_cam]

scoreboard players set @e[tag=w,type=armor_stand] creditsSeq1 1
scoreboard players set @e[tag=w,type=armor_stand] creditsSeq2 0

#summon camera points
summon armor_stand 1088 63 806 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_start"]}
execute as @e[tag=c_cam_start,type=armor_stand] at @s run tp @s ~ ~ ~ facing ~-5 ~ ~

summon armor_stand 1054 91 836 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_end"]}
execute as @e[tag=c_cam_end,type=armor_stand] at @s run tp @s ~ ~ ~ facing ~5 ~-4 ~

summon armor_stand 1037 62 819 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon armor_stand 1091 82 791 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon armor_stand 1060 62 867 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon armor_stand 1117 85 859 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon armor_stand 1154 71 887 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}

summon armor_stand 1090 64 828 {CustomNameVisible:0b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["setup","c_life","c_cam","c_cam_follow"]}

scoreboard players set @e[tag=setup,type=armor_stand] lifespan 20
tag @e[tag=setup] remove setup