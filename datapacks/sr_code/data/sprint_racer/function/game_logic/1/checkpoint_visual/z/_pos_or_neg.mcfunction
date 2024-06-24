execute if score @s visualZoffset matches 1.. run function sprint_racer:game_logic/1/checkpoint_visual/z/p2048
execute if score @s visualZoffset matches 0 run function sprint_racer:game_logic/1/checkpoint_visual/yaw/_pos_or_neg
execute if score @s visualZoffset matches ..-1 run function sprint_racer:game_logic/1/checkpoint_visual/z/n2048