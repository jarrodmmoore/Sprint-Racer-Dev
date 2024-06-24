#make sure race capsule randomization table is loaded
execute as @e[limit=1,tag=w,type=armor_stand,scores={gameState=3}] run function sprint_racer:items/container_spawn/capsule_category_odds/load_race_odds
execute as @e[limit=1,tag=w,type=armor_stand] unless entity @s[scores={gameState=3}] run function sprint_racer:items/container_spawn/capsule_category_odds/load_battle_odds

#summon random item, provided it isn't banned
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!capsuleBan,tag=random,scores={rNumber=1..20}] rNumber

execute if entity @s[scores={rNumber=1}] run function sprint_racer_language:gameplay/capsule_item/1
execute if entity @s[scores={rNumber=2}] run function sprint_racer_language:gameplay/capsule_item/2
execute if entity @s[scores={rNumber=3}] run function sprint_racer_language:gameplay/capsule_item/3
execute if entity @s[scores={rNumber=4}] run function sprint_racer_language:gameplay/capsule_item/4
execute if entity @s[scores={rNumber=5}] run function sprint_racer_language:gameplay/capsule_item/5
execute if entity @s[scores={rNumber=6}] run function sprint_racer_language:gameplay/capsule_item/6
execute if entity @s[scores={rNumber=7}] run function sprint_racer_language:gameplay/capsule_item/7
execute if entity @s[scores={rNumber=8}] run function sprint_racer_language:gameplay/capsule_item/8
execute if entity @s[scores={rNumber=9}] run function sprint_racer_language:gameplay/capsule_item/9
execute if entity @s[scores={rNumber=10}] run function sprint_racer_language:gameplay/capsule_item/10
execute if entity @s[scores={rNumber=11}] run function sprint_racer_language:gameplay/capsule_item/11
execute if entity @s[scores={rNumber=12}] run function sprint_racer_language:gameplay/capsule_item/12
execute if entity @s[scores={rNumber=13}] run function sprint_racer_language:gameplay/capsule_item/13
execute if entity @s[scores={rNumber=14}] run function sprint_racer_language:gameplay/capsule_item/14
execute if entity @s[scores={rNumber=15}] run function sprint_racer_language:gameplay/capsule_item/15
#execute if entity @s[scores={rNumber=16}] run function sprint_racer_language:gameplay/capsule_item/16
execute if entity @s[scores={rNumber=17}] run function sprint_racer_language:gameplay/capsule_item/17
execute if entity @s[scores={rNumber=18}] run function sprint_racer_language:gameplay/capsule_item/18
execute if entity @s[scores={rNumber=19}] run function sprint_racer_language:gameplay/capsule_item/19
#execute if entity @s[scores={rNumber=20}] run function sprint_racer_language:gameplay/capsule_item/20
#not spawning trapped chests due to potential memory leaks
#also not spawning lightning because that's obnoxious

#fix tags on item
execute as @e[tag=capsuleSummon,type=item,sort=nearest,limit=1] run function sprint_racer:cheats/item_rain_fix_item_tags