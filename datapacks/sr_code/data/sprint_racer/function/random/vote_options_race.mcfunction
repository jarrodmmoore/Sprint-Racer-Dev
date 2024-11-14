tag @e[tag=vote1,type=armor_stand] remove vote1
tag @e[tag=vote2,type=armor_stand] remove vote2
tag @e[tag=vote3,type=armor_stand] remove vote3

tag @e[tag=voteViable,type=armor_stand] remove voteViable

#calculating overall "maturity" of players
#this determines what tracks will be offered
scoreboard players set @e[tag=w,type=armor_stand,limit=1] playerCountB 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,limit=1] playerCountB 1
scoreboard players set @e[tag=w,type=armor_stand,limit=1] maturity 0
execute as @a[tag=playing] run scoreboard players operation @e[tag=w,type=armor_stand,limit=1] maturity += @s maturity
scoreboard players operation @e[tag=w,type=armor_stand,limit=1] maturity /= @e[tag=w,type=armor_stand,limit=1] playerCountB
scoreboard players set @e[tag=w,type=armor_stand,limit=1,scores={difficultyRamp=..0}] maturity 100

#maturity ..1 GUARANTEED TUTORIAL, THEN NOVICE ONLY
#maturity 2 NOVICE ONLY + POSSIBLE INTERMEDIATE IN SLOT 3
#maturity 3 NOVICE OR INTERMEDIATE
#maturity 4..6 NOVICE TO EXPERT
#maturity 7.. NOVICE TO MASTER

#force tutorial on the first go, but only if an unbanned tutorial track exists
tag @e[tag=w,type=armor_stand] remove forcetutorial
execute if entity @e[tag=trackTutorial,tag=!rtBlacklist,type=armor_stand] run tag @e[tag=w,type=armor_stand,scores={maturity=..1}] add forcetutorial

#mark viable courses for voting, track pool expands to include more difficult tracks the longer everyone plays
tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackNovice,type=armor_stand] add voteViable
execute if entity @e[tag=w,type=armor_stand,scores={maturity=2..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackTutorial,type=armor_stand] add voteViable
execute if entity @e[tag=w,type=armor_stand,scores={maturity=3..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackIntermed,type=armor_stand] add voteViable
execute if entity @e[tag=w,type=armor_stand,scores={maturity=4..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackExpert,type=armor_stand] add voteViable
execute if entity @e[tag=w,type=armor_stand,scores={maturity=7..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackMaster,type=armor_stand] add voteViable

function sprint_racer:random/check_for_options_race

####assign slot 1 with a random number
#unless we want to force it to be the tutorial track
tag @e[tag=vote1,type=armor_stand] remove vote1
execute unless entity @e[tag=w,type=armor_stand,tag=forcetutorial] unless entity @e[tag=vote1,type=armor_stand] run tag @e[limit=1,sort=random,tag=voteViable,type=armor_stand,scores={randomCooldown=..0}] add vote1
execute if entity @e[tag=w,tag=forcetutorial,type=armor_stand] run tag @e[limit=1,sort=random,tag=trackTutorial,tag=!rtBlacklist,type=armor_stand] add vote1
execute if entity @e[tag=w,tag=forcetutorial,type=armor_stand] unless entity @e[tag=vote1,type=armor_stand] run tag @e[limit=1,sort=random,tag=voteViable,type=armor_stand,scores={randomCooldown=..0}] add vote1
execute as @e[tag=nVote1,type=armor_stand] run scoreboard players operation @s rNumber = @e[tag=vote1,limit=1,type=armor_stand] rNumber
tag @e[tag=vote1,type=armor_stand] remove voteViable
execute as @e[limit=1,tag=vote1,type=armor_stand] if entity @s[tag=r_1_only] run function sprint_racer:random/1_only_race

function sprint_racer:random/check_for_options_race

####assign slot 2 with a random number
tag @e[limit=1,sort=random,tag=voteViable,tag=!vote1,type=armor_stand,scores={randomCooldown=..0}] add vote2
execute as @e[tag=nVote2,type=armor_stand] run scoreboard players operation @s rNumber = @e[tag=vote2,limit=1,type=armor_stand] rNumber
tag @e[tag=vote2,type=armor_stand] remove voteViable
execute as @e[limit=1,tag=vote2,type=armor_stand] if entity @s[tag=r_1_only] run function sprint_racer:random/1_only_race

execute if entity @e[tag=w,type=armor_stand,scores={maturity=2..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackIntermed,type=armor_stand] add voteViable
function sprint_racer:random/check_for_options_race

#are slots 1 and 2 expert+? slot 3 should be something easier, then.
scoreboard players set #test value 0
execute if entity @e[tag=vote1,tag=trackExpert,type=armor_stand] run scoreboard players add #test value 1
execute if entity @e[tag=vote1,tag=trackMaster,type=armor_stand] run scoreboard players add #test value 1
execute if entity @e[tag=vote2,tag=trackExpert,type=armor_stand] run scoreboard players add #test value 1
execute if entity @e[tag=vote2,tag=trackMaster,type=armor_stand] run scoreboard players add #test value 1
execute if score #test value matches 2.. if entity @e[tag=voteViable,tag=!trackExpert,tag=!trackMaster,type=armor_stand,scores={randomCooldown=..0}] run tag @e[tag=voteViable,tag=!trackNovice,tag=!trackIntermed,type=armor_stand] remove voteViable

####assign slot 3 with a random number
tag @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,type=armor_stand,scores={randomCooldown=..0}] add vote3
execute as @e[tag=nVote3,type=armor_stand] run scoreboard players operation @s rNumber = @e[tag=vote3,type=armor_stand,limit=1] rNumber
tag @e[tag=vote3,type=armor_stand] remove voteViable


tag @e[tag=voteViable,type=armor_stand] remove voteViable
scoreboard players remove @e[tag=trackStandR,type=armor_stand,scores={randomCooldown=1..}] randomCooldown 1
scoreboard players set @e[tag=vote1,type=armor_stand] randomCooldown 5
scoreboard players set @e[tag=vote2,type=armor_stand] randomCooldown 5
scoreboard players set @e[tag=vote3,type=armor_stand] randomCooldown 5

#error if not all slots were filled...
execute unless entity @e[tag=vote1,type=armor_stand] run tag @e[tag=random,type=armor_stand,limit=1,scores={rNumber=1}] add vote1
execute unless entity @e[tag=vote2,type=armor_stand] run tag @e[tag=random,type=armor_stand,limit=1,scores={rNumber=2}] add vote2
execute unless entity @e[tag=vote3,type=armor_stand] run tag @e[tag=random,type=armor_stand,limit=1,scores={rNumber=3}] add vote3