execute if entity @e[tag=w,type=armor_stand,tag=rank_sidebar_b] run scoreboard objectives remove displayLeaderA
execute if entity @e[tag=w,type=armor_stand,tag=rank_sidebar_b] run scoreboard objectives add displayLeaderB dummy {"translate":"sr.game.current_leader","bold":true}

execute unless entity @e[tag=w,type=armor_stand,tag=rank_sidebar_b] run scoreboard objectives remove displayLeaderB
execute unless entity @e[tag=w,type=armor_stand,tag=rank_sidebar_b] run scoreboard objectives add displayLeaderA dummy {"translate":"sr.game.current_leader","bold":true}