scoreboard objectives remove lobbyDisplay
scoreboard objectives add lobbyDisplay dummy ["",{"translate":"sr.lobby.round_2_of_5","color":"white","bold":true}]

function sprint_racer_language:lobby/sidebar/gamemode_choice

scoreboard objectives setdisplay sidebar lobbyDisplay