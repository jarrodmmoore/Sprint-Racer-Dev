execute as @a[tag=playing,tag=requestOrange] run function sprint_racer:teams/join_orange
execute as @a[tag=playing,tag=requestCyan] run function sprint_racer:teams/join_cyan
execute as @a[tag=playing,scores={previousTeam=..0},team=!playerOrange,team=!playerCyan] run function sprint_racer:teams/pick_team
execute as @a[tag=playing,scores={previousTeam=1..},team=!playerOrange,team=!playerCyan] run function sprint_racer:teams/pick_team
execute as @a[tag=playing,team=!playerOrange,team=!playerCyan] run function sprint_racer:teams/pick_team

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=autobalance] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={forcePlayerTeam=1..2}] run function sprint_racer:teams/auto_balance

#hidden feature: all players can be forced onto a team together
#might use this in a mission/adventure mode one day? ;)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={forcePlayerTeam=1}] as @a[tag=playing] run function sprint_racer:teams/join_orange
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={forcePlayerTeam=2}] as @a[tag=playing] run function sprint_racer:teams/join_cyan