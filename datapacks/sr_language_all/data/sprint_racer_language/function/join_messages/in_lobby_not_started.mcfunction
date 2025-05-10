tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.welcome.welcome_to_sprint_racer",fallback:"Welcome to Sprint Racer!",bold:true,color:"aqua"}]
tellraw @s ["",{translate:"sr.welcome.players_in_lobby_not_started",fallback:"No game has been started yet.\nUse the block on your hotbar to ready up!",color:"white"}]
function sprint_racer_language:map_info
tellraw @s ["",{text:" "}]