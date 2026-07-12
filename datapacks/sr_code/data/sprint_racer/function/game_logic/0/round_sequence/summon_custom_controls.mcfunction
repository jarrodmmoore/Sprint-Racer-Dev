#add and remove
execute positioned ^.25 ^1 ^.25 run summon interaction ~ ~ ~ {Tags:["lobbyprop","customRoundControls","customRoundButton","customRoundAdd"],width:0.3,height:0.2,Passengers:[ \
    {id:"minecraft:text_display",Tags:["lobbyprop","customRoundControls"],text:{text:"[+]",color:"green"},view_range:0.1,billboard:fixed,Rotation:[90.0f,-90.0f],transformation:{translation:[0f,-0.15f,-0.15f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}\
]}
execute positioned ^.25 ^1 ^.75 run summon interaction ~ ~ ~ {Tags:["lobbyprop","customRoundControls","customRoundButton","customRoundRemove"],width:0.3,height:0.2,Passengers:[ \
    {id:"minecraft:text_display",Tags:["lobbyprop","customRoundControls"],text:{text:"[-]",color:"red"},view_range:0.1,billboard:fixed,Rotation:[90.0f,-90.0f],transformation:{translation:[0f,-0.15f,-0.15f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}\
]}

#calculate max number of rounds (which is the length of the "custom" array)
execute store result storage sprint_racer:round_sequence length int 1 run data get storage sprint_racer:round_sequence custom
execute store result score #round_max_number_custom value run data get storage sprint_racer:round_sequence length 1


scoreboard players set #mode_display_round value 0

scoreboard players set #recursions value 16
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #mode_display_round value
scoreboard players add #mode_display_round value 1
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #mode_display_round value
execute positioned ^-0.05 ^.8 ^.125 run function sprint_racer:game_logic/0/round_sequence/summon_custom_control_round with storage sprint_racer:func_args
execute if score #round_max_number_custom value matches ..16 run return 0
#=====

scoreboard players set #recursions value 16
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #mode_display_round value
scoreboard players add #mode_display_round value 1
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #mode_display_round value
execute positioned ^-0.05 ^.55 ^.125 run function sprint_racer:game_logic/0/round_sequence/summon_custom_control_round with storage sprint_racer:func_args
execute if score #round_max_number_custom value matches ..32 run return 0
#=====

scoreboard players set #recursions value 16
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #mode_display_round value
scoreboard players add #mode_display_round value 1
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #mode_display_round value
execute positioned ^-0.05 ^.3 ^.125 run function sprint_racer:game_logic/0/round_sequence/summon_custom_control_round with storage sprint_racer:func_args
execute if score #round_max_number_custom value matches ..48 run return 0
#=====

scoreboard players set #recursions value 16
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #mode_display_round value
scoreboard players add #mode_display_round value 1
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #mode_display_round value
execute positioned ^-0.05 ^.05 ^.125 run function sprint_racer:game_logic/0/round_sequence/summon_custom_control_round with storage sprint_racer:func_args
