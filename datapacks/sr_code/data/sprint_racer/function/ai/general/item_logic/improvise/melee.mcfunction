#pick an item (assuming we have that item)

tag @s remove impGotItem
tag @s add gotCategory
tag @e[tag=random,type=armor_stand,scores={rNumber=1..50}] remove improvPick

execute if entity @s[scores={aiHasItem4=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=1}] add improvPick
execute if entity @s[scores={aiHasItem24=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=2}] add improvPick

#insert more functions here...

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,tag=improvPick,scores={rNumber=1..2}] rNumber

execute if entity @s[tag=!impGotItem,scores={rNumber=1}] run function sprint_racer:ai/general/item_logic/4/think
execute if entity @s[tag=!impGotItem,scores={rNumber=2}] run function sprint_racer:ai/general/item_logic/24/think

tag @e[tag=improvPick] remove improvPick