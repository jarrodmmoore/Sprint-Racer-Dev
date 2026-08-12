execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives remove displayLeaderA
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives add displayLeaderB dummy {translate:"sr.game.current_leaders",bold:true}

execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives remove displayLeaderB
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives add displayLeaderA dummy {translate:"sr.game.current_leaders",bold:true}