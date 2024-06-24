execute if entity @e[tag=w,tag=calcStart] run function sprint_racer:game_logic/1/position_calc/start_cycle

function sprint_racer:game_logic/1/position_calc/cycle_tick_fast_calc_recursive

execute if entity @e[tag=w,tag=calcEnd] run function sprint_racer:game_logic/1/position_calc/end_cycle