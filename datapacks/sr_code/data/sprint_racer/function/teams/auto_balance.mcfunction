scoreboard players set @e[tag=w,type=armor_stand] teamCount 0
execute as @a[tag=playing,tag=playerOrange] run scoreboard players add @e[tag=w,type=armor_stand] teamCount 1
execute as @a[tag=playing,tag=playerCyan] run scoreboard players remove @e[tag=w,type=armor_stand] teamCount 1

execute if entity @e[tag=w,type=armor_stand,scores={teamCount=..-2}] as @a[limit=1,sort=random,tag=playerCyan] run function sprint_racer:teams/join_orange_forced
execute if entity @e[tag=w,type=armor_stand,scores={teamCount=2..}] as @a[limit=1,sort=random,tag=playerOrange] run function sprint_racer:teams/join_cyan_forced

#recursion if still unbalanced
scoreboard players set @e[tag=w,type=armor_stand] teamCount 0
execute as @a[tag=playing,tag=playerOrange] run scoreboard players add @e[tag=w,type=armor_stand] teamCount 1
execute as @a[tag=playing,tag=playerCyan] run scoreboard players remove @e[tag=w,type=armor_stand] teamCount 1

execute unless entity @e[tag=w,type=armor_stand,scores={teamCount=-1..1}] run function sprint_racer:teams/auto_balance