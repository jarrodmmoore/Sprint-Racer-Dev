execute if entity @s[scores={previousTeam=1}] run function sprint_racer:teams/join_orange
execute if entity @s[scores={previousTeam=2}] run function sprint_racer:teams/join_cyan

scoreboard players set @e[tag=w,type=armor_stand] math 0
scoreboard players operation @e[tag=w,type=armor_stand] math = @e[limit=1,sort=random,tag=random,scores={rNumber=1..2}] rNumber

execute unless entity @s[scores={previousTeam=1..}] if entity @e[tag=w,type=armor_stand,scores={math=..1}] run function sprint_racer:teams/join_orange
execute unless entity @s[scores={previousTeam=1..}] unless entity @e[tag=w,type=armor_stand,scores={math=..1}] run function sprint_racer:teams/join_cyan