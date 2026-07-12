#executed by w


#move round sequence data into a generic storage
execute unless data storage sprint_racer:round_sequence race_and_battle run function sprint_racer:game_logic/0/round_sequence/_setup_defaults
function sprint_racer:game_logic/0/round_sequence/load_active_sequence

#current round
scoreboard players operation #round_number value = @s roundNumber

#max number of rounds (which is the length of the "active" array)
execute store result storage sprint_racer:round_sequence length int 1 run data get storage sprint_racer:round_sequence active
execute store result score #round_max_number value run data get storage sprint_racer:round_sequence length 1

#use macro to read current round
execute store result score #index value run scoreboard players get #round_number value
scoreboard players remove #index value 1
execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get #index value
execute unless entity @s[tag=optChoose] run function sprint_racer:game_logic/0/round_sequence/get_current_round_data_macro with storage sprint_racer:func_args
#"[CHOOSE]" track select will always override and set to 4
execute if entity @s[tag=optChoose] run scoreboard players set #round_game_type value 4


#failed to read anything valid? fall back to race mode
execute unless score #round_game_type value matches 1..4 run scoreboard players set #round_game_type value 1

#if round_game_type is 3 (random), pick race or battle at random
execute if score #round_game_type value matches 3 run function sprint_racer:game_logic/0/round_sequence/pick_random_mode

#no skip2next if we're in optRandom mode
execute if entity @s[tag=optRandom] if score #round_game_type value matches 4 run tag @s add noskip2next