tag @e[tag=firstplace,scores={racePosDisplay=2..}] remove firstplace

#use classic display if we've run out of nodes
execute unless score #bbPersonalize value matches 2 run function sprint_racer:game_logic/1/position_calc/subtitle_display_classic
execute if score #bbPersonalize value matches 2 run function sprint_racer:game_logic/1/position_calc/subtitle_display_new

scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1
execute if score #halftick value matches 1 run scoreboard players remove @e[scores={subtitleDelay=1..}] subtitleDelay 1

title @a[tag=playing,tag=!finished,scores={lapAnimation=..0}] title [""]