#WHERE IS THE CREATOR
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
function sprint_racer:levels/_custom_general/announce_creator_macro with storage sprint_racer:func_args