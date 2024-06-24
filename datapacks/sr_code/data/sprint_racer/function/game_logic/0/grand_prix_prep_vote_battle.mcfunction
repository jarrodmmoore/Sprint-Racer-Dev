scoreboard players set @e[tag=w,type=armor_stand] roundNumber 5

bossbar set minecraft:menutimer style notched_10
execute store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,limit=1] voteTime
function sprint_racer_language:lobby/bossbar_voting_battle
function sprint_racer:random/vote_options_battle

team modify playerCyan color red
team modify playerOrange color red
team modify player color red