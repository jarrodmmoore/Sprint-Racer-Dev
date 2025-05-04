tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.welcome.welcome_to_sprint_racer",fallback:"Welcome to Sprint Racer!",bold:true,color:"aqua"}]
tellraw @s ["",{translate:"sr.welcome.last_match_was_abandoned",fallback:"The last match was abandoned mid-game!\nYou will be sent to the lobby and the previous match will be force-ended.",color:"white"}]
function sprint_racer_language:map_info
tellraw @s ["",{text:" "}]