scoreboard players operation @s[scores={lap=1}] recordLap1 = @s currentTime
scoreboard players operation @s[scores={lap=2}] recordLap2 = @s currentTime
scoreboard players operation @s[scores={lap=3}] recordLap3 = @s currentTime
scoreboard players operation @s[scores={lap=4}] recordLap4 = @s currentTime
scoreboard players operation @s[scores={lap=5}] recordLap5 = @s currentTime
execute if entity @s[scores={lap=6..}] run function sprint_racer:game_logic/1/record_lap/_index_6_25

scoreboard players operation @s lapTimeMsec = @s currentTime

scoreboard players operation @s lapShowTime = @s lap


scoreboard players operation @s math = @e[tag=w,limit=1] lap
scoreboard players operation @s math -= @s lapShowTime

execute if entity @s[tag=!minChat] unless entity @s[scores={math=..0}] run tellraw @s ["",{"text":" "}]
execute if entity @s[tag=!minChat] unless entity @s[scores={math=..0}] run function sprint_racer_language:gameplay/show_lap_times/lap_completed
execute if entity @s[tag=!minChat] unless entity @s[scores={math=..0}] run function sprint_racer:game_logic/1/record_lap/calculate_and_show_lap
execute if entity @s[tag=!minChat] unless entity @s[scores={math=..0}] run tellraw @s ["",{"text":" "}]