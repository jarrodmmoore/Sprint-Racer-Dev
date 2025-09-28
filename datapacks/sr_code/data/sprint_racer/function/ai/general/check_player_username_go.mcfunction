#if no player exists with this bot's username, quit out the function
$execute unless entity $(name) run return 1
#=====

#ok, we need to change username to avoid conflict
#let's remember to apply our current team color to whatever our final username ends up being!

#change username back to a generic "CPU_X" format
$data modify storage sprint_racer:ai_storage_$(id) name set value "CPU_$(id)"

#check again to see if somebody named themselves CPU_X
$execute unless entity CPU_$(id) run return run function sprint_racer:ai/general/update_bot_name_color with storage sprint_racer:ai_storage_$(id)
#=====

#ok wise guy, there's no possible way you could have a _ at the start of your username
$data modify storage sprint_racer:ai_storage_$(id) name set value "_CPU_$(id)"
$function sprint_racer:ai/general/update_bot_name_color with storage sprint_racer:ai_storage_$(id)
#gottem