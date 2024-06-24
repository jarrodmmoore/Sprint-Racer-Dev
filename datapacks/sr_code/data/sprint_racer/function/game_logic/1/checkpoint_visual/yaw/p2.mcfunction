execute if score #temp visualYaw matches 4.. run scoreboard players remove #temp visualYaw 4

execute unless score #temp visualYaw matches 2.. run function sprint_racer:game_logic/1/checkpoint_visual/yaw/p1
execute if score #temp visualYaw matches 2.. rotated ~2 ~ run function sprint_racer:game_logic/1/checkpoint_visual/yaw/p1