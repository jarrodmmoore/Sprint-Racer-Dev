#no viable choices? pick anything regardless of difficulty
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand] if entity @e[tag=trackStandB,tag=!btBlacklist,type=armor_stand] run tag @e[tag=trackStandB,tag=!btBlacklist,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand] add voteViable

#make sure we've got at least one track off cooldown if possible
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown2=..2}] randomCooldown2 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown2=..4}] randomCooldown2 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown2=..6}] randomCooldown2 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,type=armor_stand,tag=!vote1,tag=!vote2,tag=!vote3] randomCooldown2 0

#count how many common tracks are available to pick
execute store result score #countCommonTracks value run execute if entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,tag=!b_1_only,tag=!b_rare_track,type=armor_stand,scores={randomCooldown2=..0}]

#-----
#..35 = exclude uncommon and rare tracks (35% chance of tag=!b_1_only,tag=!b_rare_track)
#..70 = exclude rare tracks (70% chance of tag=!b_rare_track)
#71.. = pick any track
#-----
execute store result score #random value run random value 1..100
#not enough common tracks left in the pool? 100% chance to pick any track
execute if score #countCommonTracks value matches ..2 run scoreboard players set #random value 100
