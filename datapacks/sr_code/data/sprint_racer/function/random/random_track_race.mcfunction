#calculating overall "maturity" of players
#this determines what tracks will be offered
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity 0
execute as @a[tag=playing] run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity += @s maturity
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] maturity /= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] playerCountB
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={difficultyRamp=..0}] maturity 100

#harder tracks will not be chosen if the average player is new
tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackTutorial] add pickViable
tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackNovice] add pickViable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={maturity=3..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackIntermed] add pickViable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={maturity=4..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackExpert] add pickViable
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={maturity=8..}] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=trackMaster] add pickViable
#note: on "random", master rated tracks won't appear until the group has been playing for a considerably long time

#don't choose gauntlet or cotton void on random mode...
tag @e[type=armor_stand,tag=trackStandR,scores={rNumber=19}] remove pickViable
tag @e[type=armor_stand,tag=trackStandR,scores={rNumber=50}] remove pickViable

#no viable choices? pick anything regardless of difficulty
execute unless entity @e[tag=pickViable] if entity @e[tag=trackStandR] run tag @e[tag=trackStandR,tag=!rtBlacklist] add pickViable

#make sure at least one track is off cooldown
execute unless entity @e[tag=pickViable,scores={randomCooldown=..0}] run scoreboard players set @e[limit=1,sort=random,tag=pickViable] randomCooldown 0

#choose a track at random
tag @e[limit=1,sort=random,tag=pickViable,scores={randomCooldown=..0}] add chosenTrack

#in case of error
execute unless entity @e[tag=chosenTrack] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack

tag @e[tag=pickViable] remove pickViable

#cooldown prevents track from getting picked multiple times in a row
scoreboard players remove @e[tag=trackStandR,scores={randomCooldown=1..}] randomCooldown 1
scoreboard players set @e[limit=1,tag=chosenTrack] randomCooldown 12

#"in order" track mode overrides random
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optInOrder,limit=1,tag=!grandprix] if entity @e[type=armor_stand,tag=!rtBlacklist,tag=trackStandR,limit=1] run function sprint_racer:random/in_order_race

execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ 100000 ~ 100000 2
execute as @e[tag=chosenTrack] run function sprint_racer:game_logic/0/vote_preview/race/v_r_index_announce

#this is for grand prix handling missing tracks...
tag @s[tag=oops_an_accident] remove oops_an_accident