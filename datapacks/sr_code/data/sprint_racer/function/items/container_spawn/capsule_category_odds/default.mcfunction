#summon random item, provided it isn't banned
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!capsuleBan,tag=random,scores={rNumber=1..20}] rNumber

#1/20 chance to get any particular item
execute if entity @s[scores={rNumber=0..5}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_0_5
execute if entity @s[scores={rNumber=6..10}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_6_10
execute if entity @s[scores={rNumber=11..15}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_11_15
execute if entity @s[scores={rNumber=16..20}] run function sprint_racer:items/container_spawn/summon_item_capsule/index_16_20