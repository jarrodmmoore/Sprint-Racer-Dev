tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add findLocation
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove editingTrack
effect clear @a
clear @a

execute as @e[tag=focusT,limit=1] run function sprint_racer:teleport_to_custom_track

function sprint_racer_language:_dlc_1/lobby/custom_track/setting_coordinates