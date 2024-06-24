#make sure race capsule randomization table is loaded
execute unless entity @e[tag=w,limit=1,type=armor_stand,scores={capsuleState=3}] as @e[limit=1,tag=w,type=armor_stand] run function sprint_racer:items/container_spawn/capsule_category_odds/load_battle_odds

#summon random item, provided it isn't banned
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!specialOddBan,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

execute if entity @s[scores={rNumber=0..20}] run function sprint_racer:items/container_spawn/summon_item_capsule/battle/index_0_20
execute if entity @s[scores={rNumber=21..29}] run function sprint_racer:items/container_spawn/summon_item_capsule/battle/index_21_29
execute if entity @s[scores={rNumber=30..36}] run function sprint_racer:items/container_spawn/summon_item_capsule/battle/index_30_36
execute if entity @s[scores={rNumber=37..44}] run function sprint_racer:items/container_spawn/summon_item_capsule/battle/index_37_44
execute if entity @s[scores={rNumber=45..50}] run function sprint_racer:items/container_spawn/summon_item_capsule/battle/index_45_50