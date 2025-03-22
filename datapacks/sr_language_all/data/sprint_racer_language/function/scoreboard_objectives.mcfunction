scoreboard objectives remove racePosDisplay
scoreboard objectives remove racePosDisplay2
scoreboard objectives remove points
scoreboard objectives remove KOs
scoreboard objectives remove battPosDisplay
scoreboard objectives remove battPosDisplay2

scoreboard objectives add racePosDisplay dummy ["",{translate:"sr.position",bold:true}]
scoreboard objectives add racePosDisplay2 dummy ["",{translate:"sr.position",bold:true}]
scoreboard objectives add points dummy ["",{translate:"sr.points",bold:true}]
scoreboard objectives add KOs dummy ["",{translate:"sr.kos",bold:true}]
scoreboard objectives add battPosDisplay dummy ["",{translate:"sr.ko_ranking",bold:true}]
scoreboard objectives add battPosDisplay2 dummy ["",{translate:"sr.ko_ranking",bold:true}]