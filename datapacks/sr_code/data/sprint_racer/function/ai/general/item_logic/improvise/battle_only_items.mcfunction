#pick an item (assuming we have that item)

tag @s remove impGotItem
tag @s add gotCategory
tag @e[tag=random,type=armor_stand,scores={rNumber=1..50}] remove improvPick

execute if entity @s[scores={aiHasItem9=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=1}] add improvPick
execute if entity @s[scores={aiHasItem11=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=2}] add improvPick
execute if entity @s[scores={aiHasItem12=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add improvPick
execute if entity @s[scores={aiHasItem29=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=4}] add improvPick
execute if entity @s[scores={aiHasItem32=1..}] run tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add improvPick

#insert more functions here...

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,tag=improvPick,scores={rNumber=1..5}] rNumber

execute if entity @s[tag=!impGotItem,scores={rNumber=1}] run function sprint_racer:ai/general/item_logic/9/think
execute if entity @s[tag=!impGotItem,scores={rNumber=2}] run function sprint_racer:ai/general/item_logic/11/think
execute if entity @s[tag=!impGotItem,scores={rNumber=3}] run function sprint_racer:ai/general/item_logic/12/think
execute if entity @s[tag=!impGotItem,scores={rNumber=4}] run function sprint_racer:ai/general/item_logic/29/think
execute if entity @s[tag=!impGotItem,scores={rNumber=5}] run function sprint_racer:ai/general/item_logic/32/think

tag @e[tag=improvPick] remove improvPick