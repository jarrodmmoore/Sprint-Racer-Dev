scoreboard objectives remove lobbyDisplay
scoreboard objectives add lobbyDisplay dummy ["",{translate:"sr.lobby.round_3_of_3",color:"white",bold:true}]

function sprint_racer_language:lobby/sidebar/gamemode_battle

scoreboard objectives setdisplay sidebar lobbyDisplay