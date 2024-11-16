scoreboard players set @e[tag=w,type=armor_stand] math 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,type=armor_stand] math 1

tag @e[tag=w,type=armor_stand] remove noBots

tag @e[tag=w,tag=noAItrack] add noBots
tag @e[tag=w,tag=!RAIautocount,scores={optRAIcount=..0}] add noBots
tag @e[tag=w,tag=optRAInever] add noBots

#only announce "ai not supported" if we're about to go straight into time attack mode
tag @e[tag=w,type=armor_stand] remove sayit
scoreboard players set @e[tag=w,type=armor_stand] playerCount 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,type=armor_stand] playerCount 1
execute if entity @e[tag=w,tag=optRAIsingle,scores={playerCount=..1}] run tag @e[tag=w,type=armor_stand] add sayit
execute if entity @e[tag=w,tag=optRAIalways,scores={playerCount=..1}] run tag @e[tag=w,type=armor_stand] add sayit
execute if entity @e[tag=w,tag=optRAInever] run tag @e[tag=w,type=armor_stand] remove sayit

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=23a] run tag @e[tag=w,type=armor_stand] remove sayit
execute if entity @e[tag=w,tag=sayit,tag=noAItrack] run function sprint_racer_language:gameplay/ai_not_supported
execute if entity @e[tag=w,tag=noAItrack] run tag @e[tag=w,type=armor_stand] remove sayit
tag @e[tag=w,type=armor_stand] remove sayit

#less than 2 total active players (including AI)? switch to time attack.
execute unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=23a] if entity @e[tag=w,tag=noBots] unless entity @e[tag=w,scores={math=2..}] run function sprint_racer:game_logic/1/_switch_to_time_attack
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=23a] run function sprint_racer:game_logic/1/_switch_to_time_attack

tag @e[tag=w,type=armor_stand] remove noBots