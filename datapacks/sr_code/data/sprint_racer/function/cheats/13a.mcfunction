scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] revengeTime 1
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick] revengeTime 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={revengeTime=80..}] revengeTime 1

execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,scores={revengeTime=41}] if entity @e[tag=node,type=marker,scores={nodeState=1..}] at @e[limit=1,sort=random,type=marker,tag=node,scores={nodeState=1..}] run function sprint_racer:cheats/summon_random_chicken