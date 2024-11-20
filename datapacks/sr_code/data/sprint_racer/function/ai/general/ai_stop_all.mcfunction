tag @e[tag=AImaster] remove AImaster
scoreboard objectives remove validAI1
scoreboard objectives remove validAI2
scoreboard objectives remove validAI3
scoreboard objectives remove validAI4
scoreboard objectives remove validAI5
scoreboard objectives remove validAI6
scoreboard objectives remove validAI7
scoreboard objectives remove validAI8
scoreboard objectives remove validAI9

tag @e[tag=aiDisable] remove aiDisable

scoreboard players reset @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] finishPos
scoreboard players reset @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] addPoints