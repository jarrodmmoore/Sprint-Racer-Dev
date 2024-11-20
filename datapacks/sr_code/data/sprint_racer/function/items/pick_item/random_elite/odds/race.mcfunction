#make sure race capsule randomization table is loaded
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand,scores={capsuleState=1}] as @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:items/container_spawn/capsule_category_odds/load_race_odds

#summon random item, provided it isn't banned
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!specialOddBan,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber

execute if entity @s[scores={rNumber=0..15}] run function sprint_racer:items/pick_item/random_elite/race/index_0_15
execute if entity @s[scores={rNumber=16..24}] run function sprint_racer:items/pick_item/random_elite/race/index_16_24
execute if entity @s[scores={rNumber=25..36}] run function sprint_racer:items/pick_item/random_elite/race/index_25_36
execute if entity @s[scores={rNumber=37..44}] run function sprint_racer:items/pick_item/random_elite/race/index_37_44
execute if entity @s[scores={rNumber=45..50}] run function sprint_racer:items/pick_item/random_elite/race/index_45_50