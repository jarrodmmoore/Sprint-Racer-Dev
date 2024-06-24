tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_battle_arena","color":"white","bold":true},{"text":"Block Island","bold":true,"color":"red"}]

tag @e[tag=w,type=armor_stand] add sizeMedium
function sprint_racer_language:lobby/vote_announce/__arena_size

tellraw @a ["",{"translate":"sr.lobby.created_by","color":"white","bold":false},{"text":"Flamingosaurus","color":"dark_aqua"}]