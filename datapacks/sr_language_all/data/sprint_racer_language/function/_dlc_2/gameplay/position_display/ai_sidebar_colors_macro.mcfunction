$data modify storage sprint_racer:ai_storage_$(id) team set value "player"
$execute if entity @s[tag=playerOrange] run data modify storage sprint_racer:ai_storage_$(id) team set value "playerOrange"
$execute if entity @s[tag=playerCyan] run data modify storage sprint_racer:ai_storage_$(id) team set value "playerCyan"

#update color
$function sprint_racer:ai/general/update_bot_name_color with storage sprint_racer:ai_storage_$(id)