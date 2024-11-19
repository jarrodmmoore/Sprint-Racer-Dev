#do we have scoreboard data? cool. just save what we have
execute if score @s jump matches 1.. run return 0

#otherwise, we should try to use our tags to restore scoreboard data
function sprint_racer:game_logic/2/node_update/jumpboost/restore_data