kill @e[type=item_display,tag=c_cam]

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] creditsSeq1 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] creditsSeq2 0

#summon camera points
summon item_display 1088 63 806 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_start"]}
execute as @e[tag=c_cam_start,type=item_display] at @s positioned ~ ~1.8 ~ run tp @s ~ ~ ~ facing ~-5 ~ ~

summon item_display 1054 91 836 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_end"]}
execute as @e[tag=c_cam_end,type=item_display] at @s positioned ~ ~1.8 ~ run tp @s ~ ~ ~ facing ~5 ~-4 ~

summon item_display 1037 63 819 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon item_display 1091 83 791 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon item_display 1060 64 867 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon item_display 1117 86 859 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
summon item_display 1154 73 887 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}

summon item_display 1090 65 828 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_follow"]}

scoreboard players set @e[tag=setup,type=item_display] lifespan 20
tag @e[tag=setup,type=item_display] remove setup