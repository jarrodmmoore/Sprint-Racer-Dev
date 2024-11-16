function sprint_racer:levels/gummi_gorge/clone_crimson1_solid

function sprint_racer:levels/gummi_gorge/clone_crimson2_solid

function sprint_racer:levels/gummi_gorge/clone_warped1_solid

function sprint_racer:levels/gummi_gorge/clone_warped2_solid

#set timer to make traps on the far edge of the map reload themselves just in case they aren't loaded yet
scoreboard players set #ggTrapC2 value 140
scoreboard players set #ggTrapW2 value 140
execute if score #halftick value matches 1 run scoreboard players set #ggTrapC2 value 70
execute if score #halftick value matches 1 run scoreboard players set #ggTrapW2 value 70