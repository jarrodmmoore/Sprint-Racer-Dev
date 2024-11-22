#executed by a player at the position of the minotaur
scoreboard players set #recursions value 50
execute facing entity @s feet rotated ~ 0 positioned ^ ^ ^1 run function sprint_racer:levels/minotaur_maze/minotaur/check_los_to_player_recursion