#why is this in its own function? because otherwise this breaks.
execute if score @s bSortValue < #bFindLowest value run function sprint_racer:worldmap/battle/check_for_lowest_success