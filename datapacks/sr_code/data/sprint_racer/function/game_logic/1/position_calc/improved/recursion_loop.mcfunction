#executed by w

#start at highest checkpoint, then work backwards
scoreboard players operation #posCalcCheck value = @s check
execute store result storage sprint_racer:pos_calc_pos check int 1 run scoreboard players get #posCalcCheck value
execute store result storage sprint_racer:pos_calc_pos lap int 1 run scoreboard players get #relevantLapMax value
function sprint_racer:game_logic/1/position_calc/improved/recursion_finishline with storage sprint_racer:pos_calc_pos