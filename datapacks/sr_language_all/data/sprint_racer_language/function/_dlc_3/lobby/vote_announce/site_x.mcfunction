tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_track","color":"white","bold":true},{"text":"Site-X","bold":true,"color":"aqua"}]

scoreboard players set @e[tag=w,type=armor_stand] lap 4
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"translate":"sr.lobby.created_by","color":"white","bold":false},{"text":"RedstoneBattery","color":"red"}]