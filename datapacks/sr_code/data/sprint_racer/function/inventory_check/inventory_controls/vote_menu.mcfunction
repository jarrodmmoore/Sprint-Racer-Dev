playsound minecraft:block.note_block.bit master @s ~ 100000 ~ 100000 1.3

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3,mgVoteMode=0}] run function sprint_racer_language:_dlc_2/mid_game_vote/possible_new_vote
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3,mgVoteMode=0}] run function sprint_racer_language:_dlc_2/mid_game_vote/vote_already_going