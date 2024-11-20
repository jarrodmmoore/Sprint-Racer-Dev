tellraw @s[tag=!minChat] ["",{"text":" "}]
execute if entity @s[tag=!minChat] run function sprint_racer_language:gameplay/show_lap_times/finished
execute if entity @s[tag=!minChat] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={lap=2..}] run function sprint_racer:game_logic/1/record_lap/finish_show_all_laps
execute if entity @s[tag=!minChat] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={lap=..1}] run function sprint_racer_language:gameplay/show_lap_times/show_overall_time
tellraw @s[tag=!minChat] ["",{"text":" "}]