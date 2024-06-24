tellraw @s ["",{"translate":"sr.lobby.fixed_missing_pos_calc_finish_line","color":"light_purple"}]

execute at @s run tag @e[limit=1,sort=nearest,type=marker,tag=finishline,scores={nodeState=1..}] add posCalc