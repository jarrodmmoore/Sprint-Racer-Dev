playsound minecraft:block.note_block.hat master @a
scoreboard players add global saveState 1
execute if score global saveState matches 11.. run scoreboard players set global saveState 1

execute positioned 1608 91 461 positioned ~.5 ~ ~-.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/save_state_name
execute positioned 1608 91 461 positioned ~.5 ~-.4 ~-.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/save_state_empty

function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/scrolling_text_restart

function sprint_racer:game_logic/0/save_state/update_save_state_screen