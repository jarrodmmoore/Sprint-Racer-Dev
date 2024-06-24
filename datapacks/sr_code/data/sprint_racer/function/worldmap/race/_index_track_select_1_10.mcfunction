execute store result score #check1 value run clear @s blue_dye[custom_data~{01:1b}]
execute store result score #check2 value run clear @s blue_dye[custom_data~{02:1b}]
execute store result score #check3 value run clear @s blue_dye[custom_data~{03:1b}]
execute store result score #check4 value run clear @s blue_dye[custom_data~{04:1b}]
execute store result score #check5 value run clear @s blue_dye[custom_data~{05:1b}]
execute store result score #check6 value run clear @s blue_dye[custom_data~{06:1b}]
execute store result score #check7 value run clear @s blue_dye[custom_data~{07:1b}]
execute store result score #check8 value run clear @s blue_dye[custom_data~{08:1b}]
execute store result score #check9 value run clear @s blue_dye[custom_data~{09:1b}]
execute store result score #check10 value run clear @s blue_dye[custom_data~{10:1b}]

execute if score #check1 value matches 1.. run scoreboard players set @s qsTrackWarp 1
execute if score #check2 value matches 1.. run scoreboard players set @s qsTrackWarp 2
execute if score #check3 value matches 1.. run scoreboard players set @s qsTrackWarp 3
execute if score #check4 value matches 1.. run scoreboard players set @s qsTrackWarp 4
execute if score #check5 value matches 1.. run scoreboard players set @s qsTrackWarp 5
execute if score #check6 value matches 1.. run scoreboard players set @s qsTrackWarp 6
execute if score #check7 value matches 1.. run scoreboard players set @s qsTrackWarp 7
execute if score #check8 value matches 1.. run scoreboard players set @s qsTrackWarp 8
execute if score #check9 value matches 1.. run scoreboard players set @s qsTrackWarp 9
execute if score #check10 value matches 1.. run scoreboard players set @s qsTrackWarp 10