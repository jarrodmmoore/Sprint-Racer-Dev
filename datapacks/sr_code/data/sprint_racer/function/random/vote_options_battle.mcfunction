tag @e[tag=vote1,type=armor_stand] remove vote1
tag @e[tag=vote2,type=armor_stand] remove vote2
tag @e[tag=vote3,type=armor_stand] remove vote3

tag @e[tag=voteViable,type=armor_stand] remove voteViable

#mark viable tracks
#no restrictions really since the pool here is so small
tag @e[tag=trackStandB,tag=!btBlacklist,type=armor_stand] add voteViable


function sprint_racer:random/check_for_options_battle

#assign slot 1 with a random number
tag @e[limit=1,sort=random,tag=voteViable,type=armor_stand,scores={randomCooldown2=..0}] add vote1
execute as @e[tag=nVote1,type=armor_stand] run scoreboard players operation @s rNumber = @e[tag=vote1,limit=1,type=armor_stand] rNumber
tag @e[tag=vote1,type=armor_stand] remove voteViable
execute as @e[limit=1,tag=vote1,type=armor_stand] if entity @s[tag=b_1_only] run function sprint_racer:random/1_only_battle

function sprint_racer:random/check_for_options_battle

#assign slot 2 with a random number
tag @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,scores={randomCooldown2=..0}] add vote2
execute as @e[tag=nVote2,type=armor_stand] run scoreboard players operation @s rNumber = @e[tag=vote2,limit=1,type=armor_stand] rNumber
tag @e[tag=vote2,type=armor_stand] remove voteViable
execute as @e[limit=1,tag=vote2,type=armor_stand] if entity @s[tag=b_1_only] run function sprint_racer:random/1_only_battle

function sprint_racer:random/check_for_options_battle

#figure out how many players we're expecting next game (including bots)
execute store result score #test value run execute if entity @a[tag=playing]
execute if score #test value matches ..1 as @e[tag=w,type=armor_stand,tag=optBAIsingle,tag=!BAIautocount] run scoreboard players operation #test value += @s optBAIcount
execute if score #test value matches ..1 as @e[tag=w,type=armor_stand,tag=optBAIsingle,tag=BAIautocount] run scoreboard players operation #test value = @s optBAIcount
execute as @e[tag=w,type=armor_stand,tag=optBAIalways,tag=!BAIautocount] run scoreboard players operation #test value += @s optBAIcount
execute as @e[tag=w,type=armor_stand,tag=optBAIalways,tag=BAIautocount] if score #test value < @s optBAIcount run scoreboard players operation #test value = @s optBAIcount
#now make sure there's at least 1 track that suits our player count
execute if score #test value matches ..2 run function sprint_racer:random/check_for_battle_1_size {size:"trackTiny"}
execute if score #test value matches 3 run function sprint_racer:random/check_for_battle_2_sizes {size1:"trackTiny",size2:"trackSmall"}
execute if score #test value matches 4..5 run function sprint_racer:random/check_for_battle_1_size {size:"trackSmall"}
execute if score #test value matches 6 run function sprint_racer:random/check_for_battle_2_sizes {size1:"trackSmall",size2:"trackMedium"}
execute if score #test value matches 7..8 run function sprint_racer:random/check_for_battle_1_size {size:"trackMedium"}
execute if score #test value matches 9 run function sprint_racer:random/check_for_battle_2_sizes {size1:"trackMedium",size2:"trackLarge"}
execute if score #test value matches 10.. run function sprint_racer:random/check_for_battle_1_size {size:"trackLarge"}

#assign slot 3 with a random number
tag @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,scores={randomCooldown2=..0}] add vote3
execute as @e[tag=nVote3,type=armor_stand] run scoreboard players operation @s rNumber = @e[tag=vote3,limit=1,type=armor_stand] rNumber
tag @e[tag=vote3,type=armor_stand] remove voteViable

#set random cooldown on chosen tracks
tag @e[tag=voteViable,type=armor_stand] remove voteViable
scoreboard players remove @e[tag=trackStandB,type=armor_stand,scores={randomCooldown2=1..}] randomCooldown2 1
scoreboard players set @e[tag=vote1,type=armor_stand] randomCooldown2 2
scoreboard players set @e[tag=vote2,type=armor_stand] randomCooldown2 2
scoreboard players set @e[tag=vote3,type=armor_stand] randomCooldown2 2

#error if not all slots were filled...
execute unless entity @e[tag=vote1,type=armor_stand] run tag @e[tag=random,type=armor_stand,limit=1,scores={rNumber=50}] add vote1
execute unless entity @e[tag=vote2,type=armor_stand] run tag @e[tag=random,type=armor_stand,limit=1,scores={rNumber=1}] add vote2
execute unless entity @e[tag=vote3,type=armor_stand] run tag @e[tag=random,type=armor_stand,limit=1,scores={rNumber=2}] add vote3