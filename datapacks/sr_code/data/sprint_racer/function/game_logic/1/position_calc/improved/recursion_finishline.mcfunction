#executed by w


#should we care about this finishline?
$execute store result score #test4 value run data get storage sprint_racer:pos_calc check_array_$(lap)[25] 1

#player is approaching finishline if their check >= #posCalcCheck value
$execute if score #test4 value matches 1 positioned $(finishline_x) $(finishline_y) $(finishline_z) as @e[type=interaction,tag=playerPosMarker,sort=nearest] if score @s lap >= #relevantLapMax value if score @s check >= #posCalcCheck value run function sprint_racer:game_logic/1/position_calc/improved/get_pos_marker

#done with this slot
$data modify storage sprint_racer:pos_calc check_array_$(lap)[25] set value 0


#grab coordinates for next checkpoint before we go deeper
$data modify storage sprint_racer:pos_calc_pos checkpoint_x set from storage sprint_racer:pos_calc_pos checkpoint$(check).x
$data modify storage sprint_racer:pos_calc_pos checkpoint_y set from storage sprint_racer:pos_calc_pos checkpoint$(check).y
$data modify storage sprint_racer:pos_calc_pos checkpoint_z set from storage sprint_racer:pos_calc_pos checkpoint$(check).z

#now switch to checkpoints, starting at the highest one that this track is supposed to have
scoreboard players remove #posCalcCheck value 1
execute store result storage sprint_racer:pos_calc_pos check int 1 run scoreboard players get #posCalcCheck value
function sprint_racer:game_logic/1/position_calc/improved/recursion_checkpoint with storage sprint_racer:pos_calc_pos