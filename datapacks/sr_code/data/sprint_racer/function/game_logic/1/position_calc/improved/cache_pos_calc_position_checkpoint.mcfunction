#executed by posCalc checkpoint
execute store result storage sprint_racer:player_pos_calc check int 1 run scoreboard players get @s check
function sprint_racer:game_logic/1/position_calc/improved/cache_pos_calc_position_checkpoint_macro with storage sprint_racer:player_pos_calc

#also forceload our chunk while we're here
execute store result score #chunktest value run forceload query ~ ~
execute if score #chunktest value matches 0 run forceload add ~ ~