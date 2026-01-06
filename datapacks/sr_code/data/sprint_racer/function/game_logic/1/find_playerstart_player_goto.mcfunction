tag @e[limit=1,sort=nearest,tag=node,tag=playerstart,type=marker,tag=!psBattle,tag=!spawnOccupy,distance=..100,scores={nodeState=1..}] add targetlol

tp @s @e[limit=1,tag=targetlol,type=marker]

tag @e[tag=targetlol,type=marker] add spawnOccupy
tag @e[tag=targetlol,type=marker] remove targetlol