#announce
tellraw @a ["",{"text":" "}]
function sprint_racer_language:_dlc_1/lobby/cheat_room/cheat_found/clearall
tellraw @a ["",{"text":" "}]

tag @e[tag=w,type=armor_stand] remove cheatdetected
tag @e[tag=w,type=armor_stand] remove cheatdetected1_5
tag @e[tag=w,type=armor_stand] remove cheatdetected6_10
tag @e[tag=w,type=armor_stand] remove cheatdetected11_15
tag @e[tag=w,type=armor_stand] remove cheatdetected16_25
tag @e[tag=w,type=armor_stand] remove cheatdetected26_30
tag @e[tag=w,type=armor_stand] remove cheatdetected31_35
tag @e[tag=w,type=armor_stand] remove cheatdetected36_40
tag @e[tag=w,type=armor_stand] remove cheatdetected41_45
tag @e[tag=w,type=armor_stand] remove cheatdetected46_50
tag @e[tag=w,type=armor_stand] remove cheatdetected51_55
tag @e[tag=w,type=armor_stand] remove cheatdetected56_60
tag @e[tag=w,type=armor_stand] remove cheatdetected61_65

function sprint_racer:cheats/clear_all_cheats