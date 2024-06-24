#bossbar stuff
#execute if entity @s[scores={voteTime=1..,roundNumber=..4}] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_main
#execute if entity @s[scores={voteTime=1..,roundNumber=5}] run function sprint_racer:game_logic/0/vote_preview/race/v_r_main
execute if entity @s[scores={voteTime=1..,roundNumber=..4}] run function sprint_racer_language:lobby/bossbar_voting_race
execute if entity @s[scores={voteTime=1..,roundNumber=5}] run function sprint_racer_language:lobby/bossbar_voting_battle
execute if entity @s[scores={voteTime=1..}] store result bossbar minecraft:menutimer value run scoreboard players get @s voteTime
execute if entity @s[scores={voteTime=1..}] run bossbar set minecraft:menutimer color yellow

#when votetime ends, go to the non-voting bossbar
#execute if entity @s[scores={voteTime=0,gameTime=10..}] store result bossbar minecraft:menutimer max run scoreboard players get @s gameTime
execute if entity @s[scores={voteTime=0}] store result bossbar minecraft:menutimer value run scoreboard players get @s gameTime
execute if entity @s[scores={voteTime=0,roundNumber=..4}] run function sprint_racer_language:lobby/next_round_countdown_race
execute if entity @s[scores={voteTime=0,roundNumber=..4}] run bossbar set minecraft:menutimer color blue
execute if entity @s[scores={voteTime=0,roundNumber=5}] run function sprint_racer_language:lobby/next_round_countdown_battle
execute if entity @s[scores={voteTime=0,roundNumber=5}] run bossbar set minecraft:menutimer color red

execute if entity @s[scores={voteTime=1..,roundNumber=..4}] run function sprint_racer:game_logic/0/vote_preview/race/v_r_main
execute if entity @s[scores={voteTime=1..,roundNumber=5}] run function sprint_racer:game_logic/0/vote_preview/battle/v_b_main

execute if entity @s[tag=clearImpulse,scores={voteTime=0}] run clear @a[tag=playing] filled_map
clear @a[tag=!playing] filled_map

execute if entity @s[scores={voteTime=0},tag=clearImpulse] store result bossbar minecraft:menutimer max run scoreboard players get @s gameTime
execute if entity @s[scores={voteTime=0},tag=clearImpulse] run function sprint_racer:game_logic/0/tally_vote
execute if entity @s[tag=clearImpulse,scores={voteTime=0}] run tag @s remove clearImpulse

execute if entity @s[scores={voteTime=1..}] as @a[tag=playing,gamemode=!creative] at @s run function sprint_racer:game_logic/0/player_vote