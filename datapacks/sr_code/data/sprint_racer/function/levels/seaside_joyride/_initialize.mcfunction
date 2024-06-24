tp @a[tag=!dontWarp] 733 79 -812

scoreboard players set #listenForEndgame value 1

scoreboard players set @e[tag=w,type=armor_stand] lap 3
scoreboard players set @e[tag=w,type=armor_stand] check 5

scoreboard players set @e[tag=w,type=armor_stand,tag=realms,tag=RAIautocount] optRAIcount 3

#longer time limit for this track (5 min)
scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 6209


#set time and weather based on #seasideJoyrideTime
#cycles once each time the track is beaten. resets between sessions
execute unless score #seasideJoyrideTime value matches 2..4 run time set 12500
execute if score #seasideJoyrideTime value matches 2 run time set 14000
execute if score #seasideJoyrideTime value matches 3 run time set 0
execute if score #seasideJoyrideTime value matches 4 run time set 6000

execute unless score #seasideJoyrideTime value matches 4 run weather clear
execute if score #seasideJoyrideTime value matches 4 run weather rain

######
#MUSIC
execute unless score #seasideJoyrideTime value matches 2..4 run tag @e[tag=random,type=armor_stand,scores={rNumber=5..7}] add musicViable
execute if score #seasideJoyrideTime value matches 2 run tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add musicViable
execute if score #seasideJoyrideTime value matches 2 run tag @e[tag=random,type=armor_stand,scores={rNumber=10}] add musicViable
execute if score #seasideJoyrideTime value matches 3 run tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add musicViable
execute if score #seasideJoyrideTime value matches 3 run tag @e[tag=random,type=armor_stand,scores={rNumber=8}] add musicViable
execute if score #seasideJoyrideTime value matches 4 run tag @e[tag=random,type=armor_stand,scores={rNumber=9}] add musicViable
execute if score #seasideJoyrideTime value matches 4 run tag @e[tag=random,type=armor_stand,scores={rNumber=12..13}] add musicViable

######