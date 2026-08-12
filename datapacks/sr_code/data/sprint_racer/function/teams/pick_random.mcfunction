execute if entity @s[scores={previousTeam=1}] run function sprint_racer:teams/join_orange
execute if entity @s[scores={previousTeam=2}] run function sprint_racer:teams/join_cyan

scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math 0
scoreboard players operation @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..2}] rNumber

execute unless entity @s[scores={previousTeam=1..}] if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..1}] run function sprint_racer:teams/join_orange
execute unless entity @s[scores={previousTeam=1..}] unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..1}] run function sprint_racer:teams/join_cyan