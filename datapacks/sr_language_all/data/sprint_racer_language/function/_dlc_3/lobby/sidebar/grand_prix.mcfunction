scoreboard objectives remove lobbyDisplay
execute unless entity @e[tag=w,type=armor_stand,tag=endlessMode] run scoreboard objectives add lobbyDisplay dummy ["",{"translate":"sr.grand_prix","color":"gold","bold":true}]
execute if entity @e[tag=w,type=armor_stand,tag=endlessMode] run scoreboard objectives add lobbyDisplay dummy ["",{"translate":"sr.lobby.endless_mode","color":"gold","bold":true}]

function sprint_racer_language:_dlc_3/lobby/sidebar/gp_round

scoreboard objectives setdisplay sidebar lobbyDisplay