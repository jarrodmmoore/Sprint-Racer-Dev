scoreboard objectives remove lobbyDisplay
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=endlessMode] run scoreboard objectives add lobbyDisplay dummy ["",{translate:"sr.grand_prix",color:"gold",bold:true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=endlessMode] run scoreboard objectives add lobbyDisplay dummy ["",{translate:"sr.lobby.endless_mode",color:"gold",bold:true}]

execute store result storage sprint_racer:func_args num1 int 1 run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpRound
execute store result storage sprint_racer:func_args num2 int 1 run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpNumber
function sprint_racer_language:_dlc_3/lobby/sidebar/gp_round with storage sprint_racer:func_args

scoreboard objectives setdisplay sidebar lobbyDisplay