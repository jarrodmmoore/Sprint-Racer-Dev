execute if score #temp visualYaw matches ..-256 run scoreboard players add #temp visualYaw 256

execute unless score #temp visualYaw matches ..-128 run function sprint_racer:game_logic/1/checkpoint_visual/yaw/n64
execute if score #temp visualYaw matches ..-128 rotated ~-128 ~ run function sprint_racer:game_logic/1/checkpoint_visual/yaw/n64