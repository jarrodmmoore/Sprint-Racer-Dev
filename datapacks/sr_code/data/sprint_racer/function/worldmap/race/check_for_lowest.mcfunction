#why is this in its own function? because otherwise this breaks.
execute if score @s rSortValue < #rFindLowest value run function sprint_racer:worldmap/race/check_for_lowest_success