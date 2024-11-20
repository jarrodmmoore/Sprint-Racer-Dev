scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemRainTimer 30

#summon one item via players
execute as @e[limit=1,tag=activeplayer,sort=random] at @s run function sprint_racer:cheats/item_rain_individual_spawn

#summon one item via a random node
execute as @e[limit=1,tag=node,type=marker,sort=random,scores={nodeState=1..}] at @s run function sprint_racer:cheats/item_rain_individual_spawn