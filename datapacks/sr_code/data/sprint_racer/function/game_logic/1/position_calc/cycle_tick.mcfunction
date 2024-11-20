execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcStart] run function sprint_racer:game_logic/1/position_calc/start_cycle

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcEnd] run function sprint_racer:game_logic/1/position_calc/end_cycle

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcRunning,scores={checkCalc=..0}] run function sprint_racer:game_logic/1/position_calc/lap_logic

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=calcRunning,scores={checkCalc=1..}] run function sprint_racer:game_logic/1/position_calc/check_logic