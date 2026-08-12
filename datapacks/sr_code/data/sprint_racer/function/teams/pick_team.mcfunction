scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 0
execute as @a[tag=playing,team=playerOrange] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 1
execute as @a[tag=playing,team=playerCyan] run scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] teamCount 1

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={teamCount=1..}] run function sprint_racer:teams/join_cyan
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={teamCount=..-1}] run function sprint_racer:teams/join_orange

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={teamCount=0}] run function sprint_racer:teams/pick_random