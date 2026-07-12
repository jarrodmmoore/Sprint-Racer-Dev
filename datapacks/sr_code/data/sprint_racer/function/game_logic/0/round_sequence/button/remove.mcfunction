#calculate max number of rounds (which is the length of the "custom" array)
execute store result storage sprint_racer:round_sequence length int 1 run data get storage sprint_racer:round_sequence custom
execute store result score #round_max_number_custom value run data get storage sprint_racer:round_sequence length 1

#do nothing at ..1
execute if score #round_max_number_custom value matches ..1 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#=====

#add a new round
data remove storage sprint_racer:round_sequence custom[-1]
playsound block.note_block.hat master @a

#resummon displays and stuff
function sprint_racer:game_logic/0/round_sequence/manage_custom_controls