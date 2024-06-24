execute if score #temp visualYaw matches 2.. run scoreboard players remove #temp visualYaw 2

execute unless score #temp visualYaw matches 1.. run function sprint_racer:game_logic/1/checkpoint_visual/pitch/_pos_or_neg
execute if score #temp visualYaw matches 1.. rotated ~1 ~ run function sprint_racer:game_logic/1/checkpoint_visual/pitch/_pos_or_neg