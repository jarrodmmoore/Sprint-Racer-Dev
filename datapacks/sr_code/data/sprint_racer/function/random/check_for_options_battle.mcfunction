#no viable choices? pick anything regardless of difficulty
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3] if entity @e[tag=trackStandB,tag=!btBlacklist] run tag @e[tag=trackStandB,tag=!btBlacklist,tag=!vote1,tag=!vote2,tag=!vote3] add voteViable

#make sure we've got at least one track off cooldown if possible
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown2=..2}] randomCooldown2 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown2=..4}] randomCooldown2 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,scores={randomCooldown2=..6}] randomCooldown2 0
execute unless entity @e[tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3,type=armor_stand,scores={randomCooldown2=..0}] run scoreboard players set @e[limit=1,sort=random,tag=voteViable,tag=!vote1,tag=!vote2,tag=!vote3] randomCooldown2 0