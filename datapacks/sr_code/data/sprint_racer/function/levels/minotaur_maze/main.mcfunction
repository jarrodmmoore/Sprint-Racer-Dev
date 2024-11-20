function sprint_racer:levels/minotaur_maze/map

#minotaur does its thing
execute as @e[type=item_display,tag=minotaur] at @s run function sprint_racer:levels/minotaur_maze/minotaur/_tick
execute if score #halftick value matches 1 as @e[type=item_display,tag=minotaur] at @s run function sprint_racer:levels/minotaur_maze/minotaur/_tick