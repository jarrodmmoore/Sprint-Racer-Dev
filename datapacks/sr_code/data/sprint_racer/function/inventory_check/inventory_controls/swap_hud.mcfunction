scoreboard players set #executed value 0

execute at @s run playsound minecraft:block.note_block.hat master @s

execute if entity @s[tag=!timer,tag=!navigator] run function sprint_racer:inventory_check/inventory_controls/display_timer
execute if score #executed value matches 0 if entity @s[tag=timer] run function sprint_racer:inventory_check/inventory_controls/display_navigator
execute if score #executed value matches 0 if entity @s[tag=navigator,tag=!showCheckNav] run function sprint_racer:inventory_check/inventory_controls/display_navigator_checkpoint
execute if score #executed value matches 0 if entity @s[tag=navigator,tag=showCheckNav] run function sprint_racer:inventory_check/inventory_controls/display_navigator

tag @s add bbarbump
tag @s add spdbump