scoreboard players reset @e[tag=w,type=armor_stand] teamPoints
scoreboard players reset * teamPointsShow
scoreboard players reset * teamPoints
scoreboard players reset * points
scoreboard objectives remove dummyPoints
scoreboard objectives add dummyPoints dummy
scoreboard objectives remove aiPoints
scoreboard objectives add aiPoints dummy

scoreboard objectives setdisplay list dummyPoints