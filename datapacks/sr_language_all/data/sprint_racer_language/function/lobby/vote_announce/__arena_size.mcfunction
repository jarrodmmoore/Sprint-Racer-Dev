execute if entity @e[tag=w,tag=sizeSmall] run tellraw @a ["",{"translate":"sr.lobby.size","color":"white","bold":true},{"translate":"sr.lobby.size_small","color":"white","bold":true}]
execute if entity @e[tag=w,tag=sizeMedium] run tellraw @a ["",{"translate":"sr.lobby.size","color":"white","bold":true},{"translate":"sr.lobby.size_medium","color":"white","bold":true}]
execute if entity @e[tag=w,tag=sizeLarge] run tellraw @a ["",{"translate":"sr.lobby.size","color":"white","bold":true},{"translate":"sr.lobby.size_large","color":"white","bold":true}]

tag @e[tag=sizeSmall] remove sizeSmall
tag @e[tag=sizeMedium] remove sizeMedium
tag @e[tag=sizeLarge] remove sizeLarge