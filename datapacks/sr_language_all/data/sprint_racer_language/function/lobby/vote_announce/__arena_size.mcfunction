execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=sizeSmall] run tellraw @a ["",{"translate":"sr.lobby.size","color":"white","bold":true},{"translate":"sr.lobby.size_small","color":"white","bold":true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=sizeMedium] run tellraw @a ["",{"translate":"sr.lobby.size","color":"white","bold":true},{"translate":"sr.lobby.size_medium","color":"white","bold":true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=sizeLarge] run tellraw @a ["",{"translate":"sr.lobby.size","color":"white","bold":true},{"translate":"sr.lobby.size_large","color":"white","bold":true}]

tag @e[tag=sizeSmall,type=armor_stand] remove sizeSmall
tag @e[tag=sizeMedium,type=armor_stand] remove sizeMedium
tag @e[tag=sizeLarge,type=armor_stand] remove sizeLarge