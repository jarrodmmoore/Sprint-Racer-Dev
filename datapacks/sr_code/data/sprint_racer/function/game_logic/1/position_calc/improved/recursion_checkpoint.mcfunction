#executed by w

#shoutout to zero-based indexing. without it, this would not work


#example case: called from finishline on a track with 5 checkpoints
#coords loaded for CP5
#looking for score 4..
#coords for next iteration will be CP4

#relevant checkpoint is index [4], which is checkpoint 5


#should we care about this checkpoint?
$execute store result score #test4 value run data get storage sprint_racer:pos_calc check_array_$(lap)[$(check)] 1

#player is approaching checkpoint if their check >= #posCalcCheck value
$execute if score #test value matches 1 positioned $(checkpoint_x) $(checkpoint_y) $(checkpoint_z) as @e[type=interaction,tag=playerPosMarker,sort=nearest] if score @s lap >= #relevantLapMax value if score @s check >= #posCalcCheck value run function sprint_racer:game_logic/1/position_calc/improved/get_pos_marker

#done with this slot
$data modify storage sprint_racer:pos_calc check_array_$(lap)[$(check)] set value 0


#grab coordinates for next checkpoint before we go deeper
$data modify storage sprint_racer:pos_calc_pos checkpoint_x set from storage sprint_racer:pos_calc_pos checkpoint$(check).x
$data modify storage sprint_racer:pos_calc_pos checkpoint_y set from storage sprint_racer:pos_calc_pos checkpoint$(check).y
$data modify storage sprint_racer:pos_calc_pos checkpoint_z set from storage sprint_racer:pos_calc_pos checkpoint$(check).z

#go deeper?
scoreboard players remove #posCalcCheck value 1
execute store result storage sprint_racer:pos_calc_pos check int 1 run scoreboard players get #posCalcCheck value
execute if score #posCalcCheck value matches 0.. run return run function sprint_racer:game_logic/1/position_calc/improved/recursion_checkpoint with storage sprint_racer:pos_calc_pos
#=====

#if not going deeper, possibly do another lap
scoreboard players remove #relevantLapMax value 1
execute if score #relevantLapMax value matches 1.. if score #relevantLapMax value >= #relevantLapMin value run function sprint_racer:game_logic/1/position_calc/improved/recursion_loop