scoreboard players remove #recursions value 1

#found self? exit out now
execute positioned ~-.5 ~-1 ~-.5 if entity @s[dx=1,dy=4,dz=1] run return run function sprint_racer:levels/minotaur_maze/minotaur/check_los_to_player_success

#keep going?
execute if score #recursions value matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #sprint_racer:missile_do_not_explode run function sprint_racer:levels/minotaur_maze/minotaur/check_los_to_player_recursion