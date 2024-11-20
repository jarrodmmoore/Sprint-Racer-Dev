#run by an eliminated player in spectator mode
tag @s add revengineer

#find my chicken mine
execute as @e[tag=chickenmine,tag=getrevenge] run scoreboard players operation @s math = @s revengeMine
execute as @e[tag=chickenmine,tag=getrevenge] run scoreboard players operation @s math -= @a[limit=1,tag=revengineer] revengeMine
tag @e[tag=chickenmine,tag=getrevenge,scores={math=0}] add mychickenmine

#either summon a new chicken mine or make the current one follow me
execute if score #halftick value matches 1 as @e[tag=mychickenmine] at @s facing entity @e[limit=1,tag=revengineer,sort=nearest] feet run function sprint_racer:cheats/chickenmine_follow_owner
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!halftick,scores={oTimerGlobal=1}] as @e[tag=mychickenmine] at @s facing entity @e[limit=1,tag=revengineer,sort=nearest] feet run function sprint_racer:cheats/chickenmine_follow_owner
execute if entity @s[scores={revengeTime=99}] unless entity @e[tag=mychickenmine] at @e[limit=1,sort=random,tag=node,distance=..25,tag=!AIBC] run function sprint_racer_language:_dlc_1/cheats/summon_revenge_mine
execute if entity @e[tag=mychickenmine] run scoreboard players set @s revengeTime 1

tag @e[tag=mychickenmine] remove mychickenmine
tag @s remove revengineer