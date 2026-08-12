scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] revengeTime 1
scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=halftick] revengeTime 1
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={revengeTime=80..}] revengeTime 1

execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1,scores={revengeTime=41}] if entity @e[tag=node,type=marker,scores={nodeState=1..}] at @e[limit=1,sort=random,type=marker,tag=node,scores={nodeState=1..}] run function sprint_racer:cheats/summon_random_chicken