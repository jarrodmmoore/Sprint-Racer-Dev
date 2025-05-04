tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.welcome.welcome_to_sprint_racer",fallback:"Welcome to Sprint Racer!",bold:true,color:"aqua"}]
tellraw @s ["",{translate:"sr.welcome.error_w_missing",fallback:"This is an error message.\nEntity \"w\" is missing, which means the map isn't going to function correctly.",color:"white"}]
function sprint_racer_language:map_info
tellraw @s ["",{text:" "}]