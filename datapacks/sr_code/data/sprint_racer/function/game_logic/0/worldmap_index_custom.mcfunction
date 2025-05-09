#tag the custom track we're looking at
tag @e[tag=customtrack,type=armor_stand] remove wmCustomT
scoreboard players operation #test4 value = @s wmCustomNum
execute if score #trackGridMode value matches 1 as @e[tag=customrace,type=armor_stand] if score @s customTrackID = #test4 value run tag @s add wmCustomT
execute if score #trackGridMode value matches 2 as @e[tag=custombattle,type=armor_stand] if score @s customTrackBID = #test4 value run tag @s add wmCustomT

execute if entity @s[scores={worldmapID=-10}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_race_neutral
execute if entity @s[scores={worldmapID=-11}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_race_novice
execute if entity @s[scores={worldmapID=-12}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_race_intermediate
execute if entity @s[scores={worldmapID=-13}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_race_expert
execute if entity @s[scores={worldmapID=-14}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_race_master
execute if entity @s[scores={worldmapID=-15}] run function sprint_racer_language:_dlc_6/lobby/worldmap/custom/custom_race_custom_preview

execute if entity @s[scores={worldmapID=-20}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_battle_neutral
execute if entity @s[scores={worldmapID=-21}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_battle_small
execute if entity @s[scores={worldmapID=-22}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_battle_medium
execute if entity @s[scores={worldmapID=-23}] run function sprint_racer_language:_dlc_1/lobby/worldmap/custom/custom_battle_large
execute if entity @s[scores={worldmapID=-24}] run function sprint_racer_language:_dlc_6/lobby/worldmap/custom/custom_battle_custom_preview
#4 years later, we finally add support for "tiny" size map generic preview images. whoop de doo
execute if entity @s[scores={worldmapID=-25}] run function sprint_racer_language:_dlc_6/lobby/worldmap/custom/custom_battle_tiny