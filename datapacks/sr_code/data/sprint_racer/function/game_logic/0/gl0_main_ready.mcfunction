#send players to spawn if they aren't at spawn
execute if entity @s[tag=!choosingTrack] as @a[gamemode=adventure,x=1596,y=108,z=406,distance=190..] at @s run function sprint_racer:game_logic/0/goto_spawn

execute if entity @s[tag=choosingTrack] run effect give @a[x=2471,y=110,z=267,distance=350..] blindness 2 10 true
execute if entity @s[tag=choosingTrack] run tp @a[x=2471,y=110,z=267,distance=350..] ~ ~ ~ 180 30
execute if entity @s[tag=choosingTrack] run clear @a[x=2471,y=110,z=267,distance=350..]
execute if entity @s[tag=choosingTrack] run scoreboard players reset @a[x=2471,y=110,z=267,distance=350..] enderman
#execute if entity @s[tag=choosingTrack] run spreadplayers 2471 399 10 10 false @a[x=2471,y=110,z=267,distance=350..]

execute if entity @s[tag=choosingTrack] as @a[x=2471,y=110,z=267,distance=350..] positioned 2472 100 268 positioned ~-.5 ~ ~-.5 rotated 0 0 run function sprint_racer:varied_teleport


#timer and lobby logic
scoreboard players set @s[scores={oTimer=21..}] oTimer 0
scoreboard players add @s oTimer 1

scoreboard players remove @s[scores={oTimer=20,voteTime=1..}] voteTime 1
scoreboard players remove @s[scores={oTimer=20,gameTime=1..}] gameTime 1

scoreboard players set @s[scores={gameTime=10000..}] voteTime 30
scoreboard players set @s[scores={gameTime=10000..}] gameTime 40
scoreboard players set @s[tag=choosingTrack,scores={gameTime=1..}] gameTime 0

tag @s[scores={oTimer=20,voteTime=1..},tag=!clearImpulse] add clearImpulse
execute if entity @s[tag=!grandprix,tag=optVote] run function sprint_racer:game_logic/0/lobby_vote
execute if entity @s[tag=!grandprix,tag=optRandom] run function sprint_racer:game_logic/0/lobby_random
execute if entity @s[tag=!grandprix,tag=optChoose,tag=!choosingTrack] run function sprint_racer:game_logic/0/lobby_choose
execute if entity @s[tag=grandprix] unless score #gpTrackSelect value matches 3.. run function sprint_racer:game_logic/0/lobby_grand_prix
execute if entity @s[tag=grandprix] if score #gpTrackSelect value matches 3..4 run function sprint_racer:game_logic/0/lobby_vote
execute if entity @s[tag=grandprix,tag=!choosingTrack] if score #gpTrackSelect value matches 5.. run function sprint_racer:game_logic/0/lobby_choose

bossbar set minecraft:menutimer players @a[tag=lobby]

#bossbar showing how many players are needed to pause the menu
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players @a[tag=playing,tag=!readyup]
scoreboard players set @s unReadyCount 0
execute as @a[tag=playing,tag=!readyup] run scoreboard players add @e[tag=w,type=armor_stand] unReadyCount 1
execute store result bossbar minecraft:unreadyprogress value run scoreboard players get @s unReadyCount
execute store result bossbar minecraft:unreadyprogress max run scoreboard players get @s readyRequired
function sprint_racer_language:lobby/bossbar_unready_up


#repeat some stuff if half tick mode is enabled
execute if entity @s[tag=halftick] run function sprint_racer:game_logic/0/gl0_main_ready_echo


#time's up, start gameplay
execute if entity @s[tag=!grandprix,tag=optRandom,scores={gameTime=0,roundNumber=..4}] run function sprint_racer:random/random_track_race
execute if entity @s[tag=!grandprix,tag=optRandom,scores={gameTime=0,roundNumber=5..}] run function sprint_racer:random/random_track_battle
execute if entity @s[tag=!grandprix,tag=!optChoose,scores={gameTime=0,roundNumber=..4}] run function sprint_racer:game_logic/1/_initialize
execute if entity @s[tag=!grandprix,tag=!optChoose,scores={gameTime=0,roundNumber=5}] run function sprint_racer:game_logic/3/_initialize
execute if entity @s[tag=!grandprix,tag=optChoose,scores={gameTime=0}] run function sprint_racer:game_logic/0/choose_track
execute if entity @s[tag=grandprix,scores={gameTime=0}] unless score #gpTrackSelect value matches 5.. run function sprint_racer:game_logic/0/grand_prix_round_start
execute if entity @s[tag=grandprix,scores={gameTime=0}] if score #gpTrackSelect value matches 5.. run function sprint_racer:game_logic/0/choose_track