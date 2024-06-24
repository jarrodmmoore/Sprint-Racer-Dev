tag @e[limit=1,sort=random,tag=activeplayer,distance=3..] add newTarget
execute unless entity @e[tag=newTarget] run tag @e[limit=1,sort=random,tag=itemchest] add newTarget
execute unless entity @e[tag=newTarget] run tag @e[limit=1,sort=random,tag=AIBC] add newTarget