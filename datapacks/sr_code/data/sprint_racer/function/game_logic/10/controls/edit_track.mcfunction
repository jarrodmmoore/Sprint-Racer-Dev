function sprint_racer_language:_dlc_1/lobby/custom_track/edit_track

tag @e[tag=w,type=armor_stand] remove findLocation
tag @e[tag=w,type=armor_stand] add editingTrack
effect clear @a
schedule function sprint_racer:game_logic/10/clear_inv 2t

execute as @e[tag=focusT,limit=1] run function sprint_racer:teleport_to_custom_track

scoreboard players set @s inputCooldown 15