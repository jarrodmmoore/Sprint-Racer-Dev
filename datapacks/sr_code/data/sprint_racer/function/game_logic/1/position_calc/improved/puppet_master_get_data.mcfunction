#executed by @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1]

#finished players recall what position they are
execute if entity @s[tag=!eliminated,scores={finishPos=1..4}] run scoreboard players operation @s racePosDisplay = @s finishPos

#publish on sidebar?
execute if score @s racePosDisplay matches 1..4 run function sprint_racer:game_logic/1/position_calc/publish_positions_top_ai