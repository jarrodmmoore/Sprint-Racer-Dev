#don't bother if the desired track size exists in slot 1 or 2
$execute if entity @e[tag=vote1,type=armor_stand,tag=$(size)] run return 0
$execute if entity @e[tag=vote2,type=armor_stand,tag=$(size)] run return 0

#make sure a track exists that is off cooldown
$execute unless entity @e[tag=voteViable,type=armor_stand,tag=$(size),scores={randomCooldown2=..0}] run return 0

#slot 3 will have to be the desired size
$tag @e[tag=voteViable,type=armor_stand,tag=!$(size)] remove voteViable
scoreboard players set #random value 100