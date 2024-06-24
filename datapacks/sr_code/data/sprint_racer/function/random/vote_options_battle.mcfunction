tag @e[tag=vote1] remove vote1
tag @e[tag=vote2] remove vote2
tag @e[tag=vote3] remove vote3

tag @e[tag=voteViable] remove voteViable

#mark viable tracks
#no restrictions really since the pool here is so small
tag @e[tag=trackStandB,tag=!btBlacklist] add voteViable


function sprint_racer:random/check_for_options_battle

#assign slot 1 with a random number
tag @e[limit=1,sort=random,tag=voteViable,scores={randomCooldown2=..0}] add vote1
execute as @e[tag=nVote1] run scoreboard players operation @s rNumber = @e[tag=vote1,limit=1] rNumber
tag @e[tag=vote1] remove voteViable
execute as @e[limit=1,tag=vote1] if entity @s[tag=b_1_only] run function sprint_racer:random/1_only_battle

function sprint_racer:random/check_for_options_battle

#assign slot 2 with a random number
tag @e[limit=1,sort=random,tag=voteViable,tag=!vote1,scores={randomCooldown2=..0}] add vote2
execute as @e[tag=nVote2] run scoreboard players operation @s rNumber = @e[tag=vote2,limit=1] rNumber
tag @e[tag=vote2] remove voteViable
execute as @e[limit=1,tag=vote2] if entity @s[tag=b_1_only] run function sprint_racer:random/1_only_battle

function sprint_racer:random/check_for_options_battle

#assign slot 3 with a random number
tag @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,scores={randomCooldown2=..0}] add vote3
execute as @e[tag=nVote3] run scoreboard players operation @s rNumber = @e[tag=vote3,limit=1] rNumber
tag @e[tag=vote3] remove voteViable


tag @e[tag=voteViable] remove voteViable
scoreboard players remove @e[tag=trackStandB,scores={randomCooldown2=1..}] randomCooldown2 1
scoreboard players set @e[tag=vote1] randomCooldown2 2
scoreboard players set @e[tag=vote2] randomCooldown2 2
scoreboard players set @e[tag=vote3] randomCooldown2 2

#error if not all slots were filled...
execute unless entity @e[tag=vote1] run tag @e[tag=random,limit=1,scores={rNumber=50}] add vote1
execute unless entity @e[tag=vote2] run tag @e[tag=random,limit=1,scores={rNumber=1}] add vote2
execute unless entity @e[tag=vote3] run tag @e[tag=random,limit=1,scores={rNumber=2}] add vote3