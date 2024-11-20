function sprint_racer_language:_dlc_1/lobby/custom_track/edit_track

#set state
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove findLocation
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add editingTrack

#inventory cleanup
effect clear @a
schedule function sprint_racer:game_logic/10/clear_inv 2t

#track teleport location
execute as @e[tag=focusT,limit=1] run function sprint_racer:teleport_to_custom_track

#set time
execute as @e[tag=focusT,limit=1] store result storage sprint_racer:func_args time int 1 run scoreboard players get @s customTrackTime
function sprint_racer:levels/_custom_general/set_time_macro with storage sprint_racer:func_args

scoreboard players set @s inputCooldown 15