scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 0
execute as @a[tag=playing,tag=playerOrange] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 1
execute as @a[tag=playing,tag=playerCyan] run scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 1

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={teamCount=..-2}] as @a[limit=1,sort=random,tag=playerCyan] run function sprint_racer:teams/join_orange_forced
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={teamCount=2..}] as @a[limit=1,sort=random,tag=playerOrange] run function sprint_racer:teams/join_cyan_forced

#recursion if still unbalanced
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 0
execute as @a[tag=playing,tag=playerOrange] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 1
execute as @a[tag=playing,tag=playerCyan] run scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 1

execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={teamCount=-1..1}] run function sprint_racer:teams/auto_balance