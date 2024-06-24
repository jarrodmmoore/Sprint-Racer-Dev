tag @s add clickSign

execute if entity @s[tag=clickSign] unless entity @e[tag=w,tag=requireAdmin] run function sprint_racer_language:_dlc_2/lobby/options/endless_mode

execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] if entity @s[tag=admin] run function sprint_racer_language:_dlc_2/lobby/options/endless_mode
execute if entity @s[tag=clickSign] if entity @e[tag=w,tag=requireAdmin] unless entity @s[tag=admin] run function sprint_racer_language:lobby/options/not_admin

function sprint_racer:game_logic/0/update_round_display
function sprint_racer:game_logic/0/sidebar/__index_main

tag @s remove clickSign