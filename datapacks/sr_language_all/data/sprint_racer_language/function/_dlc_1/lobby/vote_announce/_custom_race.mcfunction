tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_track","color":"white","bold":true},{"selector":"@e[tag=chosenTrack]"}]

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap = @e[limit=1,tag=chosenTrack] lap
function sprint_racer_language:lobby/vote_announce/__lap_count

#custom track creator name? use it
execute if entity @e[type=armor_stand,tag=chosenTrack,tag=useTagLine,limit=1] run return run execute as @e[type=armor_stand,tag=chosenTrack,tag=useTagLine,limit=1] run function sprint_racer:levels/_custom_general/announce_creator

#otherwise say custom track
tellraw @a ["",{"translate":"sr.lobby.this_is_a_custom_track","color":"white","bold":false}]