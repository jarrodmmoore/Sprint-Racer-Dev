execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcRunning,scores={checkCalc=..0}] run function sprint_racer:game_logic/1/position_calc/lap_logic

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcRunning,scores={checkCalc=1..}] run function sprint_racer:game_logic/1/position_calc/check_logic

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcEnd] run function sprint_racer:game_logic/1/position_calc/cycle_tick_fast_calc_recursive