execute if entity @s[tag=musicDef] run tag @s add musicSetA

execute if entity @s[tag=musicSetA] run function sprint_racer:music/player/control_set_18
execute if entity @s[tag=!musicSetA] run function sprint_racer:music/player/control_previous_true

tag @s remove musicSetA