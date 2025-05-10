tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"sr.welcome.welcome_to_sprint_racer",fallback:"Welcome to Sprint Racer!",bold:true,color:"aqua"}]
tellraw @s ["",{translate:"sr.welcome.game_in_progress",fallback:"A game is currently in progress.\nYou'll have to spectate until this one ends!",color:"white"}]
function sprint_racer_language:map_info
tellraw @s ["",{text:" "}]