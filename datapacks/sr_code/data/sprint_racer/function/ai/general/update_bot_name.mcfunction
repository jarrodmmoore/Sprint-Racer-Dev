#executed by one of the armor stands that corresponds to a bot
execute store result storage sprint_racer:func_args id int 1 run scoreboard players get @s rNumber
function sprint_racer:ai/general/update_bot_name_go with storage sprint_racer:func_args