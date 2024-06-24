function sprint_racer:game_logic/1/record_lap/get_old_lap_time/_index
function sprint_racer:game_logic/1/record_lap/calculate_and_show_lap

scoreboard players add @s lapShowTime 1

scoreboard players operation @s math = @e[tag=w,type=armor_stand,limit=1] lap
scoreboard players operation @s math -= @s lapShowTime

execute unless entity @s[scores={math=..-1}] run function sprint_racer:game_logic/1/record_lap/recursive_lap_display