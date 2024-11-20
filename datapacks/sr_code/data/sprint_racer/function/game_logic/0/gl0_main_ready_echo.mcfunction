#timer and lobby logic
scoreboard players set @s[scores={oTimer=21..}] oTimer 0
scoreboard players add @s oTimer 1

scoreboard players remove @s[scores={oTimer=20,voteTime=1..}] voteTime 1
scoreboard players remove @s[scores={oTimer=20,gameTime=1..}] gameTime 1

tag @s[scores={oTimer=20,voteTime=1..},tag=!clearImpulse] add clearImpulse
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optVote] run function sprint_racer:game_logic/0/lobby_vote
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optRandom] run function sprint_racer:game_logic/0/lobby_random
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optChoose,tag=!choosingTrack] run function sprint_racer:game_logic/0/lobby_choose