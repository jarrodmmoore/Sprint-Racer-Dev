#find data for current round and max rounds
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #round_number value
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get #round_max_number value

#set sidebar
scoreboard objectives remove lobbyDisplay
function sprint_racer:game_logic/0/sidebar/show_round_macro with storage sprint_racer:func_args

#gamemode subtext depending on active gamemode
execute if entity @s[tag=optChoose] run scoreboard players set #round_game_type value 4
execute if score #round_game_type value matches 1 run function sprint_racer_language:lobby/sidebar/gamemode_race
execute if score #round_game_type value matches 2 run function sprint_racer_language:lobby/sidebar/gamemode_battle
execute if score #round_game_type value matches 3 run function sprint_racer_language:lobby/sidebar/gamemode_random
execute if score #round_game_type value matches 4 run function sprint_racer_language:lobby/sidebar/gamemode_choice

scoreboard objectives setdisplay sidebar lobbyDisplay