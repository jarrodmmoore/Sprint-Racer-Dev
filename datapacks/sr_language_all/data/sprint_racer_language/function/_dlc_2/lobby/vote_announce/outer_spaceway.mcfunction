tellraw @a ["",{"text":" "}]
tellraw @a ["",{"translate":"sr.lobby.next_track","color":"white","bold":true},{"text":"Outer Spaceway","bold":true,"color":"aqua"}]

scoreboard players set @e[tag=w,type=armor_stand] lap 2
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{"translate":"sr.lobby.created_by","color":"white","bold":false},{"text":"ReflectedMantis","color":"green"}]