#AI
#try and nab elite items first
tag @e[limit=1,sort=random,tag=ai,tag=!stealer,tag=playerCyan,scores={invisibility=..0,aiHasElite=1..}] add stealTarget1
execute if entity @e[tag=stealTarget1,tag=ai] unless entity @e[tag=stealTarget1,tag=ai,scores={enderSteal=..999}] run function sprint_racer:items/item_tick/steal_item_ai/elite/_index

#otherwise go for normal items
execute unless entity @e[tag=stealTarget1] run tag @e[limit=1,sort=random,tag=ai,tag=playerCyan,tag=!stealer,scores={invisibility=..0,aiHasNormal=1..}] add stealTarget2
execute if entity @e[tag=stealTarget2,tag=ai] unless entity @e[tag=stealTarget2,tag=ai,scores={enderSteal=..999}] run function sprint_racer:items/item_tick/steal_item_ai/normal/_index