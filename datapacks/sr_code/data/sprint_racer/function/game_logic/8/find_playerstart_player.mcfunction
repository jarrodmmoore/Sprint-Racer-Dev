execute if entity @e[tag=playerstart,tag=node,tag=psTimeAttack,tag=psBattle,tag=!spawnOccupy,distance=..300,scores={nodeState=1..}] run function sprint_racer:game_logic/8/find_playerstart_player_goto
execute unless entity @e[tag=playerstart,tag=node,tag=psTimeAttack,tag=psBattle,tag=!spawnOccupy,distance=..300,scores={nodeState=1..}] run tp @s @e[limit=1,sort=nearest,tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}]

function sprint_racer:game_logic/8/find_playerstart_player_goto