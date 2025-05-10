tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.welcome.welcome_to_sprint_racer",fallback:"Welcome to Sprint Racer!",bold:true,color:"aqua"}]
tellraw @s ["",{translate:"sr.welcome.players_in_lobby_get_ready",fallback:"Players are currently in the lobby.\nGet ready to play in the next match!",color:"white"}]
function sprint_racer_language:map_info
tellraw @s ["",{text:" "}]