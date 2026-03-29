#if player has all gold medals, 50% chance we play the movie on Monochrome Road instead.
execute store result score #random value run random value 1..2
#medals not earned? 0% chance
execute unless score #specialCredits value matches 1.. run scoreboard players set #random value 1
#first time watching after earning all medals is 100% chance
execute if score #specialCredits value matches 1 run scoreboard players set #random value 2
execute if score #random value matches 1 run function sprint_racer:game_logic/12/initialize_track_normal
execute if score #random value matches 2 run function sprint_racer:game_logic/12/initialize_track_special



######
#MUSIC
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=16}] add musicViable
######