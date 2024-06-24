tag @e[limit=1,sort=random,tag=node,tag=playerstart,tag=!psBattle,tag=!spawnOccupy,distance=..100,scores={nodeState=1..}] add targetlol

tp @s @e[limit=1,tag=targetlol]

tag @e[tag=targetlol] add spawnOccupy
tag @e[tag=targetlol] remove targetlol