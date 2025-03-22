#macro for round number
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get @s gpRound
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get @s gpNumber
function sprint_racer_language:_dlc_3/grand_prix/round_number_macro with storage sprint_racer:func_args

#no rounds? error message
execute unless entity @s[scores={gpNumber=1..}] run data merge entity @e[limit=1,type=armor_stand,tag=gp_round_show] {CustomName:{translate:"sr.grand_prix.no_tracks_have_been_added",color:"white",bold:false},CustomNameVisible:true}

function sprint_racer:game_logic/11/get_gamemode
execute if entity @s[tag=read_race] run fill 1598 70 439 1598 73 441 light_blue_concrete
execute if entity @s[tag=read_battle] run fill 1598 70 439 1598 73 441 red_concrete
execute if entity @s[tag=read_random] run fill 1598 70 439 1598 73 441 white_concrete
tag @s remove read_race
tag @s remove read_battle
tag @s remove read_random
tag @s remove read_rtrack