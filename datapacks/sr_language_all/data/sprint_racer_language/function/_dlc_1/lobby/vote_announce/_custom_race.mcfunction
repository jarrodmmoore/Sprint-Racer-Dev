tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_track","color":"white","bold":true},{"selector":"@e[tag=chosenTrack]"}]

scoreboard players operation @e[tag=w,type=armor_stand] lap = @e[limit=1,tag=chosenTrack] lap
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"translate":"sr.lobby.this_is_a_custom_track","color":"white","bold":false}]