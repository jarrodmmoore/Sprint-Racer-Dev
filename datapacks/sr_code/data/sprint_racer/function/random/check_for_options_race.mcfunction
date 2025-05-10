#no viable choices? pick anything regardless of difficulty
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand] if entity @e[tag=trackStandR,tag=!rtBlacklist,type=armor_stand] run tag @e[tag=trackStandR,tag=!rtBlacklist,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand] add voteViable

#make sure we've got at least one track off cooldown if possible
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown=..2}] randomCooldown 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown=..4}] randomCooldown 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown=..6}] randomCooldown 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown=..8}] randomCooldown 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3] randomCooldown 0

#count how many common tracks are available to pick
execute store result score #countCommonTracks value run execute if entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,tag=!r_1_only,tag=!r_rare_track,type=armor_stand,scores={randomCooldown=..0}]

#-----
#..35 = exclude uncommon and rare tracks (35% chance of tag=!r_1_only,tag=!r_rare_track)
#..70 = exclude rare tracks (70% chance of tag=!r_rare_track)
#71.. = pick any track
#-----
execute store result score #random value run random value 1..100
#not enough common tracks left in the pool? 100% chance to pick any track
execute if score #countCommonTracks value matches ..3 run scoreboard players set #random value 100