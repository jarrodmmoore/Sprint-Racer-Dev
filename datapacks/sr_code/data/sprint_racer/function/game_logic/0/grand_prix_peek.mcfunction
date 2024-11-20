tag @e[tag=chosenTrack] remove chosenTrack

scoreboard players set @s gpModifier 0

#get sequence data, also with gamemode and modifier
tag @s add return_full
function sprint_racer:game_logic/11/get_gamemode

#random gamemode
scoreboard players set @s math 0
execute if entity @s[tag=read_random] run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..5}] rNumber
tag @s[scores={math=1..3}] add read_race
tag @s[scores={math=4..5}] add read_battle

#remember what gamemode we chose if we're doing vote or roulette
scoreboard players set #gpVoteGamemode value 0
execute if entity @s[tag=read_race] run scoreboard players set #gpVoteGamemode value 1
execute if entity @s[tag=read_battle] run scoreboard players set #gpVoteGamemode value 3

#coming round uses a save state? remember that
scoreboard players operation #requestSaveState value = #gpSaveState value

#we're doing a vote or roulette. set roundnumber or whatever
execute if score #gpTrackSelect value matches 3..4 if entity @s[tag=read_race] run function sprint_racer:game_logic/0/grand_prix_prep_vote_race
execute if score #gpTrackSelect value matches 3..4 if entity @s[tag=read_battle] run function sprint_racer:game_logic/0/grand_prix_prep_vote_battle

#clean up tags, as always
tag @s remove read_race
tag @s remove read_battle
tag @s remove read_random

tag @s remove read_rtrack

tag @s remove return_full