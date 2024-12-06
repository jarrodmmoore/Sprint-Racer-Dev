#executed by w


#finishline
execute if score #posCalcPosCache value matches 0 as @e[type=marker,tag=posCalc,tag=finishline,scores={nodeState=1..}] run function sprint_racer:game_logic/1/position_calc/improved/cache_pos_calc_position_finishline

#don't bother updating coordinates for checkpoints that aren't on this track
execute if score #posCalcPosCache value > @s check run return 0
#=====

#checkpoints
execute if score #posCalcPosCache value matches 1..25 as @e[type=marker,tag=posCalc,tag=checkpoint,scores={nodeState=1..}] if score @s check = #posCalcPosCache value run function sprint_racer:game_logic/1/position_calc/improved/cache_pos_calc_position_checkpoint