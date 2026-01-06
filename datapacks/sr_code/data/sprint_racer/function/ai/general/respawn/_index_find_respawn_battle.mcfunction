#respawn at a random playerstart node, provided there is at least one which is loaded
#if the node isn't loaded, just do nothing until it's loaded again

#no teams
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @e[tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}] at @e[limit=1,sort=random,tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}] run function sprint_racer:ai/general/respawn/_index_entity

#orange team
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] if entity @e[tag=node,tag=playerstart,tag=psBattle,tag=!psTeamCyan,scores={nodeState=1..}] at @e[limit=1,sort=random,tag=node,tag=playerstart,tag=psBattle,tag=!psTeamCyan,scores={nodeState=1..}] run function sprint_racer:ai/general/respawn/_index_entity
#cyan team
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=!playerOrange] if entity @e[tag=node,tag=playerstart,tag=psBattle,tag=!psTeamOrange,scores={nodeState=1..}] at @e[limit=1,sort=random,tag=node,tag=playerstart,tag=psBattle,tag=!psTeamOrange,scores={nodeState=1..}] run function sprint_racer:ai/general/respawn/_index_entity