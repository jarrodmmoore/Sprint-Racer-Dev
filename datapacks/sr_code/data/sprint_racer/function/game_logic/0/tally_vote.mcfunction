scoreboard players reset @e[scores={voteCount=..9999}] voteCount

tag @e[tag=vote1] add voteOption
tag @e[tag=vote2] add voteOption
tag @e[tag=vote3] add voteOption

scoreboard players set @e[tag=voteOption] voteCount 0

execute as @a[tag=playing,tag=playerVote1] run scoreboard players add @e[tag=vote1] voteCount 1
execute as @a[tag=playing,tag=playerVote2] run scoreboard players add @e[tag=vote2] voteCount 1
execute as @a[tag=playing,tag=playerVote3] run scoreboard players add @e[tag=vote3] voteCount 1

#votes for invalid tracks are rejected
tag @e[tag=voteOption,tag=!trackStandR,tag=!trackStandB] add invalidtrack
scoreboard players set @e[tag=voteOption,tag=!trackStandR,tag=!trackStandB] voteCount 0

#max number of player votes this function will count per vote option is 2048
#highly unlikely this will EVER be reached, but we may as well support up to that number since it's easy to do
scoreboard players set @e[scores={voteCount=2048..}] voteCount 2048

#this sequence will leave the highest voted track (or multiple in the case of a tie) at voteCount=0
#the other tracks that didn't win will have a negative number
execute if entity @e[scores={voteCount=1024..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 1024
execute if entity @e[scores={voteCount=512..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 512
execute if entity @e[scores={voteCount=256..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 256
execute if entity @e[scores={voteCount=128..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 128
execute if entity @e[scores={voteCount=64..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 64
execute if entity @e[scores={voteCount=32..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 32
execute if entity @e[scores={voteCount=16..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 16
execute if entity @e[scores={voteCount=8..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 8
execute if entity @e[scores={voteCount=4..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 4
execute if entity @e[scores={voteCount=2..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 2
execute if entity @e[scores={voteCount=1..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 1
execute if entity @e[scores={voteCount=1..}] run scoreboard players remove @e[scores={voteCount=..9999}] voteCount 1

#roulette mode on? only 1 player (chosen at random) determines the track
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optRoulette,tag=!grandprix] as @a[tag=playing,limit=1,sort=random] run function sprint_racer:game_logic/0/roulette_rocks_the_vote
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] if score #gpTrackSelect value matches 4 as @a[tag=playing,limit=1,sort=random] run function sprint_racer:game_logic/0/roulette_rocks_the_vote

#clear tags
tag @a remove playerVote1
tag @a remove playerVote2
tag @a remove playerVote3

#choose one of the frontrunners at random
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 2 2
tag @e[sort=random,limit=1,scores={voteCount=0..},tag=voteOption,tag=!invalidtrack,type=armor_stand] add chosenTrack
#if no valid track was chosen, force choose the error handler track
execute unless entity @e[tag=chosenTrack] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={roundNumber=..4}] as @e[limit=1,tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={roundNumber=5..}] as @e[limit=1,tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_index_announce

tag @e[tag=voteOption] remove voteOption
tag @e[tag=invalidtrack] remove invalidtrack