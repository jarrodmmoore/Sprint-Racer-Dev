execute unless entity @e[tag=w,scores={gameState=3}] run title @s subtitle ["",{"translate":"sr.you_died","color":"red","bold":true}]
execute unless entity @e[tag=w,scores={gameState=3}] run title @s title [""]

execute if entity @e[tag=w,scores={gameState=3}] run title @s subtitle [""]
execute if entity @e[tag=w,scores={gameState=3}] run title @s title ["",{"translate":"sr.you_died","color":"red","bold":true}]