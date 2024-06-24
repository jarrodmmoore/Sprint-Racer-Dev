scoreboard players set @e[tag=w,type=armor_stand] teamCount 0
execute as @a[tag=playing,team=playerOrange] run scoreboard players add @e[tag=w,type=armor_stand] teamCount 1
execute as @a[tag=playing,team=playerCyan] run scoreboard players remove @e[tag=w,type=armor_stand] teamCount 1

execute if entity @e[tag=w,type=armor_stand,scores={teamCount=1..}] run function sprint_racer:teams/join_cyan
execute if entity @e[tag=w,type=armor_stand,scores={teamCount=..-1}] run function sprint_racer:teams/join_orange

execute if entity @e[tag=w,type=armor_stand,scores={teamCount=0}] run function sprint_racer:teams/pick_random