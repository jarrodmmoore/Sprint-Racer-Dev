scoreboard players set @s gpModifier 0

#get sequence data, also with gamemode and modifier
tag @s add return_full
function sprint_racer:game_logic/11/get_gamemode

#remove chosenTrack tag if we did NOT vote
execute if entity @s[tag=!read_rtrack] run tag @e[tag=chosenTrack] remove chosenTrack
execute unless score #gpTrackSelect value matches 3..5 run tag @e[tag=chosenTrack] remove chosenTrack

#random gamemode
scoreboard players set @s math 0
execute if entity @s[tag=read_random] unless score #gpTrackSelect value matches 3.. run scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..5}] rNumber
execute if entity @s[tag=read_random] if score #gpTrackSelect value matches 3.. if score #gpVoteGamemode value matches 1 run scoreboard players set @s math 1
execute if entity @s[tag=read_random] if score #gpTrackSelect value matches 3.. if score #gpVoteGamemode value matches 3 run scoreboard players set @s math 4
tag @s[scores={math=1..3}] add read_race
tag @s[scores={math=4..5}] add read_battle

#choose track
execute unless entity @s[tag=read_rtrack] run function sprint_racer:game_logic/11/choose_track_defined
execute if entity @s[tag=read_rtrack,tag=read_race] unless score #gpTrackSelect value matches 2..4 run function sprint_racer:random/random_track_race
execute if entity @s[tag=read_rtrack,tag=read_battle] unless score #gpTrackSelect value matches 2..4 run function sprint_racer:random/random_track_battle
#"in order" mode...
execute if entity @s[tag=read_rtrack,tag=read_race] if score #gpTrackSelect value matches 2 run function sprint_racer:random/in_order_race
execute if entity @s[tag=read_rtrack,tag=read_race] if score #gpTrackSelect value matches 2 as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce
execute if entity @s[tag=read_rtrack,tag=read_battle] if score #gpTrackSelect value matches 2 run function sprint_racer:random/in_order_battle
execute if entity @s[tag=read_rtrack,tag=read_battle] if score #gpTrackSelect value matches 2 as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce
execute if entity @s[tag=read_rtrack] if score #gpTrackSelect value matches 2 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2

#chosenTrack missing? choose random track (possible if a custom track is deleted while in the sequence)
tag @s add oops_an_accident
execute if entity @s[tag=!read_rtrack,tag=read_race] unless entity @e[type=armor_stand,tag=chosenTrack] run function sprint_racer:random/random_track_race
execute if entity @s[tag=!read_rtrack,tag=read_battle] unless entity @e[type=armor_stand,tag=chosenTrack] run function sprint_racer:random/random_track_battle

#announce if not random
execute if entity @s[tag=!read_rtrack,tag=oops_an_accident] as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
execute if entity @s[tag=!read_rtrack,tag=read_race,tag=oops_an_accident] as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce
execute if entity @s[tag=!read_rtrack,tag=read_battle,tag=oops_an_accident] as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce
tag @s remove oops_an_accident

#get this party started
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=needAnnounce] remove needAnnounce
execute if entity @s[tag=read_race] run function sprint_racer:game_logic/1/_initialize
execute if entity @s[tag=read_battle] run function sprint_racer:game_logic/3/_initialize

#clean up tags, as always
tag @s remove read_race
tag @s remove read_battle
tag @s remove read_random

tag @s remove read_rtrack

tag @s remove return_full