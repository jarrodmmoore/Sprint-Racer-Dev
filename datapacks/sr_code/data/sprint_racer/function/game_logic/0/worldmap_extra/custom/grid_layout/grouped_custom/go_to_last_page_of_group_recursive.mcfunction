scoreboard players operation #math value = #trackGridEnd value
scoreboard players operation #math value -= #trackGridStartCustom value
execute if score #math value matches 18.. run scoreboard players add #trackGridStartCustom value 18
execute if score #math value matches 18.. run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/go_to_last_page_of_group_recursive