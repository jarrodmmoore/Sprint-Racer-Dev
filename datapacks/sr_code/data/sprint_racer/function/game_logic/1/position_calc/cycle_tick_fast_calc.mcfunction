execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcStart] run function sprint_racer:game_logic/1/position_calc/start_cycle

function sprint_racer:game_logic/1/position_calc/cycle_tick_fast_calc_recursive

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcEnd] run function sprint_racer:game_logic/1/position_calc/end_cycle