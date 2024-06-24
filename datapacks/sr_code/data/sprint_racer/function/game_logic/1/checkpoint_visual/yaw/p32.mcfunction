execute if score #temp visualYaw matches 64.. run scoreboard players remove #temp visualYaw 64

execute unless score #temp visualYaw matches 32.. run function sprint_racer:game_logic/1/checkpoint_visual/yaw/p16
execute if score #temp visualYaw matches 32.. rotated ~32 ~ run function sprint_racer:game_logic/1/checkpoint_visual/yaw/p16