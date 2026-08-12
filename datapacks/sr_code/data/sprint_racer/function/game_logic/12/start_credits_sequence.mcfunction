kill @e[type=item_display,tag=c_cam]

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] creditsSeq1 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] creditsSeq2 0

#summon camera points

#river valley
execute if score #creditsTrack value matches 1 run summon item_display 1088 63 806 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_start"]}
execute if score #creditsTrack value matches 1 as @e[tag=c_cam_start,type=item_display] at @s positioned ~ ~1.8 ~ run tp @s ~ ~ ~ facing ~-5 ~ ~

execute if score #creditsTrack value matches 1 run summon item_display 1054 91 836 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_end"]}
execute if score #creditsTrack value matches 1 as @e[tag=c_cam_end,type=item_display] at @s positioned ~ ~1.8 ~ run tp @s ~ ~ ~ facing ~5 ~-4 ~

execute if score #creditsTrack value matches 1 run summon item_display 1037 63 819 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 1 run summon item_display 1091 83 791 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 1 run summon item_display 1060 64 867 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 1 run summon item_display 1117 86 859 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 1 run summon item_display 1154 73 887 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}

execute if score #creditsTrack value matches 1 run summon item_display 1090 65 828 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_follow"]}


#monochrome road
execute if score #creditsTrack value matches 2 run summon item_display -1477 139 -1001 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_start"]}
execute if score #creditsTrack value matches 2 as @e[tag=c_cam_start,type=item_display] at @s positioned ~ ~1.8 ~ run tp @s ~ ~ ~ facing ~ ~ ~-5

execute if score #creditsTrack value matches 2 run summon item_display -1472 136 -1016 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_end"]}
execute if score #creditsTrack value matches 2 as @e[tag=c_cam_end,type=item_display] at @s positioned ~ ~1.8 ~ run tp @s ~ ~ ~ facing -1478 135 -1007

execute if score #creditsTrack value matches 2 run summon item_display -1477 142 -1074 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 2 run summon item_display -1549 139 -1050 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 2 run summon item_display -1584 136 -985 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 2 run summon item_display -1501 138 -952 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}
execute if score #creditsTrack value matches 2 run summon item_display -1469 143 -1002 {CustomNameVisible:false,teleport_duration:3,Tags:["setup","c_life","c_cam","c_cam_dynamic"]}

execute if score #creditsTrack value matches 2 run summon item_display -1572 157 -1052 {CustomNameVisible:false,teleport_duration:2,Tags:["setup","c_life","c_cam","c_cam_follow"]}


scoreboard players set @e[tag=setup,type=item_display] lifespan 20
tag @e[tag=setup,type=item_display] remove setup