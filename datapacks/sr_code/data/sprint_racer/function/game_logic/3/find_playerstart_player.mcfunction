#team mode
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run return run function sprint_racer:game_logic/3/find_playerstart_player_orange
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run return run function sprint_racer:game_logic/3/find_playerstart_player_cyan
#=====

execute if entity @e[tag=playerstart,tag=node,type=marker,tag=psBattle,tag=!spawnOccupy,scores={nodeState=1..}] run function sprint_racer:game_logic/3/find_playerstart_player_goto
execute unless entity @e[tag=playerstart,tag=node,type=marker,tag=psBattle,tag=!spawnOccupy,scores={nodeState=1..}] run tp @s @e[limit=1,sort=random,tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}]