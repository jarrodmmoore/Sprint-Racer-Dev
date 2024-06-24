#nothing to translate here! see save_state_delete_execute.
execute if score global saveState matches 1 as @e[tag=w,limit=1] positioned 1627 71 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 2 as @e[tag=w,limit=1] positioned 1627 72 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 3 as @e[tag=w,limit=1] positioned 1627 73 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 4 as @e[tag=w,limit=1] positioned 1627 74 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 5 as @e[tag=w,limit=1] positioned 1627 75 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 6 as @e[tag=w,limit=1] positioned 1627 76 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 7 as @e[tag=w,limit=1] positioned 1627 77 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 8 as @e[tag=w,limit=1] positioned 1627 78 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 9 as @e[tag=w,limit=1] positioned 1627 79 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute
execute if score global saveState matches 10 as @e[tag=w,limit=1] positioned 1627 80 460 run function sprint_racer_language:_dlc_4/lobby/options/save_state_delete_execute

execute positioned 1608 91 461 positioned ~.5 ~-.4 ~-.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/save_state_empty
function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/scrolling_text_restart

function sprint_racer:game_logic/0/save_state/update_save_state_screen