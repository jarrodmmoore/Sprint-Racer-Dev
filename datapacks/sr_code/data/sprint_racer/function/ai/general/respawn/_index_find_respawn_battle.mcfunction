#respawn at a random playerstart node, provided there is at least one which is loaded
#if the node isn't loaded, just do nothing until it's loaded again

execute if entity @e[tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}] at @e[limit=1,sort=random,tag=node,tag=playerstart,tag=psBattle,scores={nodeState=1..}] run function sprint_racer:ai/general/respawn/_index_entity