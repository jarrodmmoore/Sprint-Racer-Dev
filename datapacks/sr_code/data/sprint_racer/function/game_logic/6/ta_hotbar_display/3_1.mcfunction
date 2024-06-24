tag @s remove hasMedal3_1
tag @s[nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_data":{medal3_1:1b}}}]}] add hasMedal3_1
clear @s[tag=!hasMedal3_1] yellow_stained_glass[custom_data~{medal3_0:1b}]
clear @s[tag=!hasMedal3_1] yellow_concrete[custom_data~{medal3_1:1b}]
execute if entity @s[tag=!hasMedal3_1] run function sprint_racer_language:_dlc_1/lobby/ta_medals/3_1