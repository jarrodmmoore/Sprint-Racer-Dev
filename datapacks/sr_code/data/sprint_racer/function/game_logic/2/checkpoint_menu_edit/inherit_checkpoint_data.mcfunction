tag @e[tag=selectCheck,tag=checkpoint] add dasme

scoreboard players add @e[tag=dasme,tag=checkpoint] check 0

execute as @e[limit=1,tag=node,tag=dasme,tag=checkpoint] unless entity @s[scores={checkpointID=1..}] run function sprint_racer:game_logic/2/checkpoint_menu_edit/get_id

tag @s[tag=setVisualLine] remove setVisualLine

scoreboard players operation @s check = @e[limit=1,tag=node,tag=dasme,tag=checkpoint] check
scoreboard players operation @s check_y_min = @e[limit=1,tag=node,tag=dasme,tag=checkpoint] check_y_min
scoreboard players operation @s check_y_max = @e[limit=1,tag=node,tag=dasme,tag=checkpoint] check_y_max
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=checkAnyY] run tag @s add checkAnyY
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!checkAnyY] run tag @s remove checkAnyY
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=checkSound] run tag @s add checkSound
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!checkSound] run tag @s remove checkSound
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=checkText] run tag @s add checkText
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!checkText] run tag @s remove checkText
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=checkWarn] run tag @s add checkWarn
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!checkWarn] run tag @s remove checkWarn
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=checkWrongWay] run tag @s add checkWrongWay
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!checkWrongWay] run tag @s remove checkWrongWay
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=posCalc] run tag @s add thisPosCalc
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!posCalc] run tag @s remove thisPosCalc
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=hasVisualLine] run tag @s add hasVisualLine
execute if entity @e[limit=1,tag=node,tag=dasme,tag=checkpoint,tag=!hasVisualLine] run tag @s remove hasVisualLine
scoreboard players operation @s checkpointID = @e[limit=1,tag=node,tag=dasme,tag=checkpoint] checkpointID

tag @e[limit=1,tag=node,tag=dasme,tag=checkpoint] remove dasme