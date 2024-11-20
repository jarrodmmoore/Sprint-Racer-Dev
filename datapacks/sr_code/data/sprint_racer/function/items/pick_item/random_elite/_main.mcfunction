#=======================
#item odds depend on whether we're in battle mode or not
#(lobby and free-roam are considered "race" here)
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:items/pick_item/random_elite/odds/race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:items/pick_item/random_elite/odds/battle
#=======================

#DISABLED, REBALANCED ABOVE
#pick random number between 1 and 20, assuming item is not banned
#scoreboard players set @s rNumber 0
#scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!capsuleBan,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..20}] rNumber

#execute if entity @s[scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/elite0
#execute if entity @s[scores={rNumber=1..5}] run function sprint_racer:items/pick_item/random_elite/index_1_5
#execute if entity @s[scores={rNumber=6..10}] run function sprint_racer:items/pick_item/random_elite/index_6_10
#execute if entity @s[scores={rNumber=11..15}] run function sprint_racer:items/pick_item/random_elite/index_11_15
#execute if entity @s[scores={rNumber=16..20}] run function sprint_racer:items/pick_item/random_elite/index_16_20