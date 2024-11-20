scoreboard players set @e[tag=w,type=armor_stand] teamCount 0
execute as @a[tag=playing,team=playerOrange] run scoreboard players add @e[tag=w,type=armor_stand] teamCount 1
execute as @e[tag=AImaster,type=armor_stand,tag=playerOrange] run scoreboard players add @e[tag=w,type=armor_stand] teamCount 1
execute as @a[tag=playing,team=playerCyan] run scoreboard players remove @e[tag=w,type=armor_stand] teamCount 1
execute as @e[tag=AImaster,type=armor_stand,tag=playerCyan] run scoreboard players remove @e[tag=w,type=armor_stand] teamCount 1

#custom ai cheat code can force team for this one
execute if entity @e[limit=1,type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=54a] if entity @s[scores={customAIteam=1}] run scoreboard players set @e[tag=w,type=armor_stand] teamCount -1
execute if entity @e[limit=1,type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=54a] if entity @s[scores={customAIteam=2}] run scoreboard players set @e[tag=w,type=armor_stand] teamCount 1

execute if entity @e[tag=w,type=armor_stand,scores={teamCount=1..}] run tag @s add playerCyan
execute if entity @e[tag=w,type=armor_stand,scores={teamCount=..-1}] run tag @s add playerOrange

execute if entity @e[tag=w,type=armor_stand,scores={teamCount=0}] run function sprint_racer:teams/pick_random_ai