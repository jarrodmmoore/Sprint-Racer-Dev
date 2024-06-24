tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_battle_arena","color":"white","bold":true},{"text":"Bit City","bold":true,"color":"red"}]

tag @e[tag=w,type=armor_stand] add sizeSmall
function sprint_racer_language:lobby/vote_announce/__arena_size

tellraw @a ["",{"translate":"sr.lobby.created_by","color":"white","bold":false},{"text":"Flamingosaurus","color":"dark_aqua"}]