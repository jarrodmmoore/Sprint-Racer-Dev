execute if score #temp visualYaw matches 128.. run scoreboard players remove #temp visualYaw 128

execute unless score #temp visualYaw matches 64.. run function sprint_racer:game_logic/1/checkpoint_visual/yaw/p32
execute if score #temp visualYaw matches 64.. rotated ~64 ~ run function sprint_racer:game_logic/1/checkpoint_visual/yaw/p32