execute as @e[limit=1,type=sheep,tag=killme] at @s run summon marker ~ ~ ~ {Tags:["setup","node","checkpoint","showing","visualBound","showDispenser","checkHasYRange"]}
kill @e[limit=1,type=sheep,tag=killme]
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=checkpoint] check = @s check
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=checkpoint] check_y_min = @s check_y_min
scoreboard players operation @e[limit=1,tag=node,tag=setup,tag=checkpoint] check_y_max = @s check_y_max
execute if entity @s[tag=checkAnyY] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkAnyY
execute if entity @s[tag=checkSound] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkSound
execute if entity @s[tag=checkText] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkText
execute if entity @s[tag=checkWarn] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkWarn
execute if entity @s[tag=checkWrongWay] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add checkWrongWay
execute if entity @s[tag=thisPosCalc] run tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] add posCalc
execute as @e[limit=1,tag=node,tag=setup,tag=checkpoint] run function sprint_racer_language:editor_mode/name/name_checkpoint
tag @e[limit=1,tag=node,tag=setup,tag=checkpoint] remove setup