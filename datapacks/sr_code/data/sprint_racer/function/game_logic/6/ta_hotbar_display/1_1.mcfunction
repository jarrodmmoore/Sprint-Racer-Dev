tag @s remove hasMedal1_1
tag @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{medal1_1:1b}}}]}] add hasMedal1_1
clear @s[tag=!hasMedal1_1] orange_stained_glass[custom_data~{medal1_0:1b}]
clear @s[tag=!hasMedal1_1] orange_concrete[custom_data~{medal1_1:1b}]
execute if entity @s[tag=!hasMedal1_1] run function sprint_racer_language:_dlc_1/lobby/ta_medals/1_1