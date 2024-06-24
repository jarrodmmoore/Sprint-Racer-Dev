tag @e[tag=vote1] remove vote1
tag @e[tag=vote2] remove vote2
tag @e[tag=vote3] remove vote3

tag @e[tag=voteViable] remove voteViable

#calculating overall "maturity" of players
#this determines what tracks will be offered
scoreboard players set @e[tag=w,limit=1] playerCountB 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,limit=1] playerCountB 1
scoreboard players set @e[tag=w,limit=1] maturity 0
execute as @a[tag=playing] run scoreboard players operation @e[tag=w,limit=1] maturity += @s maturity
scoreboard players operation @e[tag=w,limit=1] maturity /= @e[tag=w,limit=1] playerCountB
scoreboard players set @e[tag=w,limit=1,scores={difficultyRamp=..0}] maturity 100

#maturity ..1 GUARENTEED TUTORIAL, THEN NOVICE ONLY
#maturity 2 NOVICE ONLY + POSSIBLE INTERMEDIATE IN SLOT 3
#maturity 3 NOVICE OR INTERMEDIATE
#maturity 4..6 NOVICE TO EXPERT
#maturity 7.. NOVICE TO MASTER

#force tutorial on the first go, but only if an unbanned tutorial track exists
tag @e[tag=w,type=armor_stand] remove forcetutorial
execute if entity @e[tag=trackTutorial,tag=!rtBlacklist] run tag @e[tag=w,scores={maturity=..1}] add forcetutorial

#mark viable courses for voting, track pool expands to include more difficult tracks the longer everyone plays
tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackNovice] add voteViable
execute if entity @e[tag=w,scores={maturity=2..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackTutorial] add voteViable
execute if entity @e[tag=w,scores={maturity=3..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackIntermed] add voteViable
execute if entity @e[tag=w,scores={maturity=4..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackExpert] add voteViable
execute if entity @e[tag=w,scores={maturity=7..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackMaster] add voteViable

function sprint_racer:random/check_for_options_race

####assign slot 1 with a random number
#unless we want to force it to be the tutorial track
tag @e[tag=vote1] remove vote1
execute unless entity @e[tag=w,tag=forcetutorial] unless entity @e[tag=vote1] run tag @e[limit=1,sort=random,tag=voteViable,scores={randomCooldown=..0}] add vote1
execute if entity @e[tag=w,tag=forcetutorial] run tag @e[limit=1,sort=random,tag=trackTutorial,tag=!rtBlacklist] add vote1
execute if entity @e[tag=w,tag=forcetutorial] unless entity @e[tag=vote1] run tag @e[limit=1,sort=random,tag=voteViable,scores={randomCooldown=..0}] add vote1
execute as @e[tag=nVote1] run scoreboard players operation @s rNumber = @e[tag=vote1,limit=1] rNumber
tag @e[tag=vote1] remove voteViable
execute as @e[limit=1,tag=vote1] if entity @s[tag=r_1_only] run function sprint_racer:random/1_only_race

function sprint_racer:random/check_for_options_race

####assign slot 2 with a random number
tag @e[limit=1,sort=random,tag=voteViable,tag=!vote1,scores={randomCooldown=..0}] add vote2
execute as @e[tag=nVote2] run scoreboard players operation @s rNumber = @e[tag=vote2,limit=1] rNumber
tag @e[tag=vote2] remove voteViable
execute as @e[limit=1,tag=vote2] if entity @s[tag=r_1_only] run function sprint_racer:random/1_only_race

execute if entity @e[tag=w,scores={maturity=2..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackIntermed] add voteViable
function sprint_racer:random/check_for_options_race

####assign slot 3 with a random number
tag @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,scores={randomCooldown=..0}] add vote3
execute as @e[tag=nVote3] run scoreboard players operation @s rNumber = @e[tag=vote3,limit=1] rNumber
tag @e[tag=vote3] remove voteViable


tag @e[tag=voteViable] remove voteViable
scoreboard players remove @e[tag=trackStandR,scores={randomCooldown=1..}] randomCooldown 1
scoreboard players set @e[tag=vote1] randomCooldown 5
scoreboard players set @e[tag=vote2] randomCooldown 5
scoreboard players set @e[tag=vote3] randomCooldown 5

#error if not all slots were filled...
execute unless entity @e[tag=vote1] run tag @e[tag=random,limit=1,scores={rNumber=1}] add vote1
execute unless entity @e[tag=vote2] run tag @e[tag=random,limit=1,scores={rNumber=2}] add vote2
execute unless entity @e[tag=vote3] run tag @e[tag=random,limit=1,scores={rNumber=3}] add vote3