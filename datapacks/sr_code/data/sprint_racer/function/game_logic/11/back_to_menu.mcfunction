tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove settingTracks
effect clear @a
clear @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove choosingTrack

scoreboard players set @a inputCooldown 50

function sprint_racer:game_logic/11/update_display
function sprint_racer_language:_dlc_3/grand_prix/returned_to_setup