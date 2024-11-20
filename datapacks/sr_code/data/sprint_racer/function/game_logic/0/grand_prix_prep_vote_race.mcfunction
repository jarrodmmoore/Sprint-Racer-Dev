scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1

bossbar set minecraft:menutimer style notched_10
execute store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] voteTime
function sprint_racer_language:lobby/bossbar_voting_race
function sprint_racer:random/vote_options_race

team modify playerCyan color aqua
team modify playerOrange color aqua
team modify player color aqua