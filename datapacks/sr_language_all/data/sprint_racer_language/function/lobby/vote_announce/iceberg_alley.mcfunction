tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_track","color":"white","bold":true},{"text":"Iceberg Alley","bold":true,"color":"aqua"}]

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"translate":"sr.lobby.created_by","color":"white","bold":false},{"text":"Flamingosaurus","color":"dark_aqua"},{"text":" and ","color":"white"},{"text":"AriaZeroQueen","color":"light_purple"}]