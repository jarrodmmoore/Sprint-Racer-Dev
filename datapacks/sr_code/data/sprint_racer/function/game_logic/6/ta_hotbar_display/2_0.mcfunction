tag @s remove hasMedal2_0
tag @s[nbt={Inventory:[{Slot:4b,components:{"minecraft:custom_data":{medal2_0:1b}}}]}] add hasMedal2_0
clear @s[tag=!hasMedal2_0] light_gray_stained_glass[custom_data~{medal2_0:1b}]
clear @s[tag=!hasMedal2_0] light_gray_concrete[custom_data~{medal2_1:1b}]
execute if entity @s[tag=!hasMedal2_0] run function sprint_racer_language:_dlc_1/lobby/ta_medals/2_0