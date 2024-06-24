execute as @a[gamemode=adventure,tag=playing] unless score @s hudNode matches 1.. run function sprint_racer:custom_hud/get_hud_node

########################
#generic stuff that we're going to calculate in every gamemode

#5Hz flashing, used in some situations
scoreboard players add #hud5Hz value 1
execute if score #halftick value matches 1 run scoreboard players add #hud5Hz value 1
execute if score #hud5Hz value matches 4.. run scoreboard players remove #hud5Hz value 4
#flashSplitTime
scoreboard players remove @a[scores={flashSplitTime=1..}] flashSplitTime 1
execute if score #halftick value matches 1 run scoreboard players remove @a[scores={flashSplitTime=1..}] flashSplitTime 1

#store current time
scoreboard players operation #hudTimeMin value = #currentTimeMin value
scoreboard players operation #hudTimeSec value = #currentTimeSec value
scoreboard players set #10 value 10
scoreboard players operation #hudTimeSec value %= #10 value
scoreboard players operation #hudTimeSec10 value = #currentTimeSec value
scoreboard players operation #hudTimeSec10 value /= #10 value
scoreboard players operation #hudTimeMsec value = #currentTimeMSec value

#store max laps
scoreboard players operation #hudLapA value = @s lap
scoreboard players operation #hudLapA value /= #10 value
scoreboard players operation #hudLapB value = @s lap
scoreboard players operation #hudLapB value %= #10 value
#max display value is 99
execute if score #hudLapA value matches 10.. run scoreboard players set #hudLapB value 9
execute if score #hudLapA value matches 10.. run scoreboard players set #hudLapA value 9

#count all players
scoreboard players set #hudAllPlayers value 0
execute as @a[gamemode=adventure,tag=playing,tag=!finished] run scoreboard players add #hudAllPlayers value 1
execute as @e[type=armor_stand,tag=AImaster,tag=!aiDisable] run scoreboard players add #hudAllPlayers value 1
scoreboard players operation #hudAllAlive value = #hudAllPlayers value
execute if score @s gameState matches 1 run scoreboard players remove #hudAllPlayers value 1
execute if score @s gameState matches 1 run scoreboard players operation #hudAllPlayers value += @s finishPos

#remember peak number of players
execute if score #hudAllAlive value > #hudAliveAtStart value run scoreboard players operation #hudAliveAtStart value = #hudAllAlive value

########################

#keep track of spacing on both sides...
scoreboard players set #hudLeftDebt value 0
scoreboard players set #hudRightDebt value 0

#HUD modes
#1 = race
#2 = elimination race
#3 = time attack
#4 = ko battle
#5 = lives battle
#6 = target attack

###update display for all nodes
#race
execute if score #hudMode value matches 1 if entity @s[tag=!hideLaps,tag=!gauntletTrack] as @a[tag=playing,tag=!finished,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_race
execute if score #hudMode value matches 1 if entity @s[tag=hideLaps,tag=!gauntletTrack] as @a[tag=playing,tag=!finished,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_race_hidden_laps
execute if score #hudMode value matches 1 if entity @s[tag=gauntletTrack] as @a[tag=playing,tag=!finished,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_race_gauntlet
#elimination race
execute if score #hudMode value matches 2 as @a[tag=playing,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_elim
#time attack
execute if score #hudMode value matches 3 if entity @s[tag=!hideLaps] as @a[tag=playing,tag=!finished,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_time
execute if score #hudMode value matches 3 if entity @s[tag=hideLaps] as @a[tag=playing,tag=!finished,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_time_hidden_laps
#ko-fest
execute if score #hudMode value matches 4 as @a[tag=playing,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_ko
#3-lives elimination
execute if score #hudMode value matches 5 as @a[tag=playing,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_lives
#target attack
execute if score #hudMode value matches 6 as @a[tag=playing,scores={hudNode=1..}] run function sprint_racer:custom_hud/_update_index_target



#make sure bossbars are shown to the correct players
execute if score #hudNode value matches 1.. run function sprint_racer:custom_hud/set_players_1_8
execute if score #hudNode value matches 9.. run function sprint_racer:custom_hud/set_players_9_16
execute if score #hudNode value matches 17.. run function sprint_racer:custom_hud/set_players_17_24
execute if score #hudNode value matches 25.. run function sprint_racer:custom_hud/set_players_25_32

#invisible buffer bossbar
bossbar set lap1 players @a[tag=playing,tag=!miniHUD,scores={hudNode=1..}]


#too many hud nodes being used? switch back to old hud
execute if score #hudNode value matches 34.. run function sprint_racer:custom_hud/switch_to_old_hud