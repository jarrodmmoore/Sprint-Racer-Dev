execute store result score #checkR value run clear @s blue_dye[custom_data~{rQuickSelect:1b}] 0
execute store result score #checkB value run clear @s red_dye[custom_data~{bQuickSelect:1b}] 0

execute if score #checkR value matches 1.. run function sprint_racer:worldmap/race/_index_track_select
execute if score #checkB value matches 1.. run function sprint_racer:worldmap/battle/_index_track_select

#don't get marked as idle while looking in chests
scoreboard players set @s afkTime 0

execute if score @s qsTrackWarp matches 1.. run function sprint_racer:worldmap/qs_track_warp