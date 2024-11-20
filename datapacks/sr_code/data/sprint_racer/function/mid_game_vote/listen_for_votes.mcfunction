execute as @a[scores={mgVoteTrigger=1..}] run function sprint_racer:mid_game_vote/vote_in

#51% of active players must affirm vote
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math2 2
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math /= @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math2
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math 1

scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math -= @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mgVoteCount

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..0,mgVoteMode=1}] run function sprint_racer_language:_dlc_2/mid_game_vote/pass_restart
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..0,mgVoteMode=2}] run function sprint_racer_language:_dlc_2/mid_game_vote/pass_lobby