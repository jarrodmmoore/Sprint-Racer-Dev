#function is called each tick if at least one cheat is enabled

#view enabled cheats via /trigger
execute as @a[scores={viewCheats=1}] run function sprint_racer_language:_dlc_6/join_messages/cheats_are_enabled

#this function is subdivided to reduce the number of condition checks happening each tick
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected1_5] run function sprint_racer:cheats/_cheats_1_5
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected6_10] run function sprint_racer:cheats/_cheats_6_10
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected11_15] run function sprint_racer:cheats/_cheats_11_15
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected16_25] run function sprint_racer:cheats/_cheats_16_25
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected26_30] run function sprint_racer:cheats/_cheats_26_30
#ADD ON TO THIS WHEN MORE CHEATS ARE ADDED...
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected31_35] run function sprint_racer:cheats/_cheats_31_35
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected36_40] run function sprint_racer:cheats/_cheats_36_40
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected46_50] run function sprint_racer:cheats/_cheats_46_50
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected51_55] run function sprint_racer:cheats/_cheats_51_55
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected56_60] run function sprint_racer:cheats/_cheats_56_60
execute if entity @e[tag=w,type=armor_stand,tag=cheatdetected61_65] run function sprint_racer:cheats/_cheats_61_65