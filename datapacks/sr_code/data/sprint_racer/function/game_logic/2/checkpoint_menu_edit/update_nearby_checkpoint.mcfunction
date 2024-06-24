tag @e[tag=selectCheck,tag=checkpoint] add setup

scoreboard players add @e[tag=setup,tag=checkpoint] check 0

scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=checkpoint] check = @s check
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=checkpoint] check_y_min = @s check_y_min
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=checkpoint] check_y_max = @s check_y_max
execute if entity @s[tag=checkAnyY] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkAnyY
execute if entity @s[tag=!checkAnyY] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove checkAnyY
execute if entity @s[tag=checkSound] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkSound
execute if entity @s[tag=!checkSound] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove checkSound
execute if entity @s[tag=checkText] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkText
execute if entity @s[tag=!checkText] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove checkText
execute if entity @s[tag=checkWarn] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkWarn
execute if entity @s[tag=!checkWarn] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove checkWarn
execute if entity @s[tag=checkWrongWay] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkWrongWay
execute if entity @s[tag=!checkWrongWay] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove checkWrongWay
execute if entity @s[tag=thisPosCalc] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add posCalc
execute if entity @s[tag=!thisPosCalc] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove posCalc
execute if entity @s[tag=hasVisualLine] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add hasVisualLine
execute if entity @s[tag=!hasVisualLine] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove hasVisualLine

execute as @e[limit=1,tag=node,tag=setup,tag=checkpoint] run function sprint_racer_language:editor_mode/name/name_checkpoint

tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove setup