tag @e[tag=selectCheck,tag=finishline] add setup

scoreboard players add @e[tag=setup,tag=finishline] nCheck 0

scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=finishline] nCheck = @s nCheck
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=finishline] check_y_min = @s fin_y_min
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=finishline] check_y_max = @s fin_y_max
execute if entity @s[tag=finAnyY] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] add finAnyY
execute if entity @s[tag=!finAnyY] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] remove finAnyY
execute if entity @s[tag=finWarn] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] add finWarn
execute if entity @s[tag=!finWarn] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] remove finWarn
execute if entity @s[tag=finWrongWay] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] add finWrongWay
execute if entity @s[tag=!finWrongWay] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] remove finWrongWay
execute if entity @s[tag=thisFPosCalc] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] add posCalc
execute if entity @s[tag=!thisFPosCalc] run tag @e[limit=1,tag=node,tag=setup,tag=finishline] remove posCalc

execute as @e[limit=1,tag=node,tag=setup,tag=finishline] run function sprint_racer_language:editor_mode/name/name_finishline

tag @e[limit=1,tag=node,tag=setup,tag=finishline] remove setup