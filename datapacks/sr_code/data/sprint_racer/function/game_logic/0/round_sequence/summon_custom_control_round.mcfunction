#read array at index
$execute store result score #mode_display value run data get storage sprint_racer:round_sequence custom[$(num1)] 1

#quit if there's no valid data here
execute unless score #mode_display value matches 1..4 run return 0
#=====

#summon the thing
$execute if score #mode_display value matches 1 positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:["lobbyprop","customRoundControls","customRoundButton","customRoundNum"],width:0.15,height:0.2,data:{index:$(num1)},Passengers:[ \
    {id:"minecraft:text_display",Tags:["lobbyprop","customRoundControls"],text:{text:"$(num2)",color:"aqua"},view_range:0.1,billboard:fixed,Rotation:[90.0f,0.0f],transformation:{translation:[0f,-0.25f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.6f,0.85f,0.6f],right_rotation:[0f,0f,0f,1f]}}\
]}
$execute if score #mode_display value matches 2 positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:["lobbyprop","customRoundControls","customRoundButton","customRoundNum"],width:0.15,height:0.2,data:{index:$(num1)},Passengers:[ \
    {id:"minecraft:text_display",Tags:["lobbyprop","customRoundControls"],text:{text:"$(num2)",color:"red"},view_range:0.1,billboard:fixed,Rotation:[90.0f,0.0f],transformation:{translation:[0f,-0.25f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.6f,0.85f,0.6f],right_rotation:[0f,0f,0f,1f]}}\
]}
$execute if score #mode_display value matches 3 positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:["lobbyprop","customRoundControls","customRoundButton","customRoundNum"],width:0.15,height:0.2,data:{index:$(num1)},Passengers:[ \
    {id:"minecraft:text_display",Tags:["lobbyprop","customRoundControls"],text:{text:"$(num2)",color:"white"},view_range:0.1,billboard:fixed,Rotation:[90.0f,0.0f],transformation:{translation:[0f,-0.25f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.6f,0.85f,0.6f],right_rotation:[0f,0f,0f,1f]}}\
]}
$execute if score #mode_display value matches 4 positioned ^ ^ ^ run summon interaction ~ ~ ~ {Tags:["lobbyprop","customRoundControls","customRoundButton","customRoundNum"],width:0.15,height:0.2,data:{index:$(num1)},Passengers:[ \
    {id:"minecraft:text_display",Tags:["lobbyprop","customRoundControls"],text:{text:"$(num2)",color:"yellow"},view_range:0.1,billboard:fixed,Rotation:[90.0f,0.0f],transformation:{translation:[0f,-0.25f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.6f,0.85f,0.6f],right_rotation:[0f,0f,0f,1f]}}\
]}

#keep going?
scoreboard players remove #recursions value 1
execute if score #recursions value matches ..0 run return 0
#=====

#recursion
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #mode_display_round value
scoreboard players add #mode_display_round value 1
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #mode_display_round value
execute positioned ^ ^ ^.25 run function sprint_racer:game_logic/0/round_sequence/summon_custom_control_round with storage sprint_racer:func_args