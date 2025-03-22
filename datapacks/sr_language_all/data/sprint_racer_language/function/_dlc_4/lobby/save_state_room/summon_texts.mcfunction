execute positioned 1612 91 461 run summon armor_stand ~.5 ~ ~-.5 {Tags:["save_state_text","save_state_title","lobbyprop"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Invisible:1b,Marker:1b,CustomName:{translate:"sr.lobby.save_state.current_settings",bold:true,color:"#00CCCC"},CustomNameVisible:1b,DisabledSlots:2039583}

execute positioned 1608 91 461 positioned ~.5 ~ ~-.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/save_state_name
execute positioned 1608 91 461 positioned ~.5 ~-.4 ~-.5 run function sprint_racer_language:_dlc_4/lobby/save_state_room/save_state_empty

function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/scrolling_text_restart