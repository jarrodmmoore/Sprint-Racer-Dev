execute if score #temp visualZoffset matches ..-2 run scoreboard players add #temp visualZoffset 2

execute unless score #temp visualZoffset matches ..-1 run function sprint_racer:game_logic/1/checkpoint_visual/yaw/_pos_or_neg
execute if score #temp visualZoffset matches ..-1 positioned ~ ~ ~.1 run function sprint_racer:game_logic/1/checkpoint_visual/yaw/_pos_or_neg