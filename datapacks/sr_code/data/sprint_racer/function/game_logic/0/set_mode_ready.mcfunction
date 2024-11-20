tag @a add spdbump
tag @a add readyup
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyState 1

scoreboard players set @a subtitleDelay 50
function sprint_racer_language:lobby/announce_lobby_ready


#add time so players aren't caught off guard if the lobby un-readied right before voting or game time was about to expire
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=1..19}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=1..19}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 5

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=1..19}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=1..19}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 5

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=1..19}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 5
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=1..19}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 5

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=1..9}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 10


#make sure we're under the default time
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=..15,gameTime=16..,voteTime=1..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 10
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=..15,gameTime=16..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 15

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=..20,gameTime=21..,voteTime=1..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=..20,gameTime=21..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 20

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=..25,gameTime=26..,voteTime=1..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] voteTime 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={defLobbyTime=..25,gameTime=26..}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 25


#if we resume the timer after a vote has already concluded, we'll have to re-announce the track that got picked
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optVote,scores={voteTime=..0}] add needAnnounce


#if we're using [CHOOSE] mode, go straight to track select (unless we're in grand prix mode)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optChoose,tag=!grandprix] gameTime 0


#go right to track selection if w has "choosingTrack" tag (cuts out extra wait time)
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=choosingTrack] gameTime 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=choosingTrack] voteTime 0