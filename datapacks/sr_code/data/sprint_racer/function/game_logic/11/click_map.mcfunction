#choose track
execute if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] run function sprint_racer:game_logic/11/choose_track
execute if items entity @s weapon.mainhand filled_map[custom_data~{map_random1:1b}] run function sprint_racer:game_logic/11/choose_track_random_1
execute if items entity @s weapon.mainhand filled_map[custom_data~{map_random2:1b}] run function sprint_racer:game_logic/11/choose_track_random_2
execute if items entity @s weapon.mainhand filled_map[custom_data~{map_random3:1b}] run function sprint_racer:game_logic/11/choose_track_random_3
execute if items entity @s weapon.mainhand tnt[custom_data~{gp_undo:1b}] run function sprint_racer:game_logic/11/choose_track_undo