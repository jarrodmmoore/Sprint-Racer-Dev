#always run at 20Hz to avoid confusing custom track creators ;)
function sprint_racer:levels/_index_levels_custom_path_go
execute if score #halftick value matches 1 run schedule function sprint_racer:levels/_index_levels_custom_path_echo 1t