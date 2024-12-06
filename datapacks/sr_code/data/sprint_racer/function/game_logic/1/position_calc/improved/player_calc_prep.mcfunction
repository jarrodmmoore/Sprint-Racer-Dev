#abort immediately if we've got an invalid lap count
execute unless score @s lap matches 1..20 run return run scoreboard players set #useFastCalc value 0
#=====

#fallback: in case we don't get ranked, take whatever the last value on #racePosCalc was last tick
scoreboard players operation @s racePosCalc = #lastRacePosCalc value

#summon interaction that will hold a reference back to ourselves via interaction.target
data modify storage sprint_racer:player_pos_calc uuid set from entity @s UUID
execute store result storage sprint_racer:player_pos_calc check int 1 run scoreboard players get @s check
execute store result storage sprint_racer:player_pos_calc lap int 1 run scoreboard players get @s lap
execute if loaded ~ ~ ~ summon interaction run function sprint_racer:game_logic/1/position_calc/improved/summon_pos_marker_entity

#Q: why are we using an interaction?
#A: sprint racer doesn't use any other interactions (selectors are efficient), it can hold references to other entities via UUID access them with "execute on", and the hitbox is un-viewable when width and height are 0

#log which checkpoints and laps are relevant
function sprint_racer:game_logic/1/position_calc/improved/player_calc_log_checkpoints with storage sprint_racer:player_pos_calc
execute if score @s lap < #relevantLapMin value run scoreboard players operation #relevantLapMin value = @s lap
execute if score @s lap > #relevantLapMax value run scoreboard players operation #relevantLapMax value = @s lap