tag @s remove hasMedal4_1
tag @s[nbt={Inventory:[{Slot:6b,components:{"minecraft:custom_data":{medal4_1:1b}}}]}] add hasMedal4_1
clear @s[tag=!hasMedal4_1] light_blue_concrete[custom_data~{medal4_1:1b}]
execute if entity @s[tag=!hasMedal4_1] run function sprint_racer_language:_dlc_1/lobby/ta_medals/4_1