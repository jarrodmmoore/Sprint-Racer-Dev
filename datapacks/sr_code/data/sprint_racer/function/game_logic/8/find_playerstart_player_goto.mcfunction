tag @e[limit=1,sort=nearest,tag=node,tag=playerstart,tag=psTimeAttack,tag=psBattle,tag=!spawnOccupy,distance=..300,scores={nodeState=1..}] add targetlol

#no spawn occupy in time attack, we'll just stack all the players on top of one another
tp @s @e[limit=1,tag=targetlol]

tag @e[tag=targetlol] remove targetlol