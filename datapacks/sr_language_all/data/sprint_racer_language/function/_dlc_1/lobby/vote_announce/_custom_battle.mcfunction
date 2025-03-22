tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.next_battle_arena",color:"white",bold:true},{selector:"@e[tag=chosenTrack]"}]

execute if entity @e[tag=chosenTrack,tag=trackTiny] run function sprint_racer_language:_dlc_3/lobby/vote_announce/__arena_size_tiny
execute if entity @e[tag=chosenTrack,tag=trackSmall] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add sizeSmall
execute if entity @e[tag=chosenTrack,tag=trackMedium] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add sizeMedium
execute if entity @e[tag=chosenTrack,tag=trackLarge] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add sizeLarge
function sprint_racer_language:lobby/vote_announce/__arena_size

#custom track creator name? use it
execute if entity @e[type=armor_stand,tag=chosenTrack,tag=useTagLine,limit=1] run return run execute as @e[type=armor_stand,tag=chosenTrack,tag=useTagLine,limit=1] run function sprint_racer:levels/_custom_general/announce_creator

#otherwise say custom track
tellraw @a ["",{translate:"sr.lobby.this_is_a_custom_track",color:"white",bold:false}]