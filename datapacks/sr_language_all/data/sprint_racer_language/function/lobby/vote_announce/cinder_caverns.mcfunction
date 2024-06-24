tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_track","color":"white","bold":true},{"text":"Cinder Caverns","bold":true,"color":"aqua"}]

scoreboard players set @e[tag=w,type=armor_stand] lap 3
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"translate":"sr.lobby.created_by","color":"white","bold":false},{"text":"Flamingosaurus","color":"dark_aqua"},{"text":", ","color":"white"},{"text":"AriaZeroQueen","color":"light_purple"},{"text":", ","color":"white"},{"text":"Broncofan","color":"red"},{"text":", ","color":"white"},{"text":"virtualpain","color":"dark_purple"},{"text":", and ","color":"white"},{"text":"combat900","color":"yellow"}]