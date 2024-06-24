execute if score #temp visualYaw matches ..-32 run scoreboard players add #temp visualYaw 32

execute unless score #temp visualYaw matches ..-16 run function sprint_racer:game_logic/1/checkpoint_visual/yaw/n8
execute if score #temp visualYaw matches ..-16 rotated ~-16 ~ run function sprint_racer:game_logic/1/checkpoint_visual/yaw/n8