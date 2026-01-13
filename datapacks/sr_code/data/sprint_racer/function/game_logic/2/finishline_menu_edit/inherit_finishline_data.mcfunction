tag @e[tag=selectCheck,type=marker,tag=finishline] add dasme

scoreboard players add @e[tag=dasme,type=marker,tag=finishline] nCheck 0

scoreboard players operation @s nCheck = @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline] nCheck
scoreboard players operation @s fin_y_min = @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline] check_y_min
scoreboard players operation @s fin_y_max = @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline] check_y_max
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=finAnyY] run tag @s add finAnyY
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=!finAnyY] run tag @s remove finAnyY
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=finWarn] run tag @s add finWarn
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=!finWarn] run tag @s remove finWarn
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=finWrongWay] run tag @s add finWrongWay
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=!finWrongWay] run tag @s remove finWrongWay
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=posCalc] run tag @s add thisFPosCalc
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline,tag=!posCalc] run tag @s remove thisFPosCalc

tag @e[limit=1,tag=node,type=marker,tag=dasme,tag=finishline] remove dasme