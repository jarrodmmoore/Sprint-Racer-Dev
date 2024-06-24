#this is run by the poor sap who got eliminated

#get a finishPos
scoreboard players set @s finishPos 1

tag @s add eliminated

scoreboard players set @s addPoints 0
scoreboard players operation @s addPoints += @e[tag=w,limit=1] addPoints2

#AI stuff
execute if entity @s[tag=AImaster,scores={rNumber=1}] run scoreboard objectives remove validAI1
execute if entity @s[tag=AImaster,scores={rNumber=2}] run scoreboard objectives remove validAI2
execute if entity @s[tag=AImaster,scores={rNumber=3}] run scoreboard objectives remove validAI3
execute if entity @s[tag=AImaster,scores={rNumber=4}] run scoreboard objectives remove validAI4
execute if entity @s[tag=AImaster,scores={rNumber=5}] run scoreboard objectives remove validAI5
execute if entity @s[tag=AImaster,scores={rNumber=6}] run scoreboard objectives remove validAI6
execute if entity @s[tag=AImaster,scores={rNumber=7}] run scoreboard objectives remove validAI7
execute if entity @s[tag=AImaster,scores={rNumber=8}] run scoreboard objectives remove validAI8
execute if entity @s[tag=AImaster,scores={rNumber=9}] run scoreboard objectives remove validAI9
execute if entity @s[tag=AImaster] run tag @s add aiDisable