execute store result score #checkA value run clear @s blue_dye[custom_data~{group_a:1b}] 0
execute store result score #checkB value run clear @s blue_dye[custom_data~{group_b:1b}] 0
execute store result score #checkC value run clear @s blue_dye[custom_data~{group_c:1b}] 0
execute store result score #checkD value run clear @s blue_dye[custom_data~{group_d:1b}] 0
execute store result score #checkE value run clear @s blue_dye[custom_data~{group_e:1b}] 0

execute if score #checkA value matches 1.. run function sprint_racer:worldmap/race/_index_track_select_1_10
execute if score #checkB value matches 1.. run function sprint_racer:worldmap/race/_index_track_select_11_20
execute if score #checkC value matches 1.. run function sprint_racer:worldmap/race/_index_track_select_21_30
execute if score #checkD value matches 1.. run function sprint_racer:worldmap/race/_index_track_select_31_40
execute if score #checkE value matches 1.. run function sprint_racer:worldmap/race/_index_track_select_41_50
execute if score #checkE value matches 1.. run function sprint_racer:worldmap/race/_index_track_select_51_55

#now clear it
clear @s blue_dye[custom_data~{rQuickSelect:1b}]