tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_battle_arena","color":"white","bold":true},{"selector":"@e[tag=chosenTrack]"}]

execute if entity @e[tag=chosenTrack,tag=trackSmall] run tag @e[tag=w,type=armor_stand] add sizeSmall
execute if entity @e[tag=chosenTrack,tag=trackMedium] run tag @e[tag=w,type=armor_stand] add sizeMedium
execute if entity @e[tag=chosenTrack,tag=trackLarge] run tag @e[tag=w,type=armor_stand] add sizeLarge
function sprint_racer_language:lobby/vote_announce/__arena_size

tellraw @a ["",{"translate":"sr.lobby.this_is_a_custom_track","color":"white","bold":false}]