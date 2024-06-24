scoreboard players set #draw_mode value 2

scoreboard players operation #temp visualXoffset = @s visualXoffset
scoreboard players operation #temp visualYoffset = @s visualYoffset
scoreboard players operation #temp visualZoffset = @s visualZoffset
scoreboard players operation #temp visualYaw = @s visualYaw
scoreboard players operation #temp visualPitch = @s visualPitch
scoreboard players operation #temp visualLength = @s visualLength

execute if score @s visualXoffset matches 1.. rotated 0 0 run function sprint_racer:game_logic/1/checkpoint_visual/x/p2048
execute if score @s visualXoffset matches 0 rotated 0 0 run function sprint_racer:game_logic/1/checkpoint_visual/y/_pos_or_neg
execute if score @s visualXoffset matches ..-1 rotated 0 0 run function sprint_racer:game_logic/1/checkpoint_visual/x/n2048