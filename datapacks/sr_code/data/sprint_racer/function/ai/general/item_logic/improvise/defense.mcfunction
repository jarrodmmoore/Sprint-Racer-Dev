#pick an item (assuming we have that item)

tag @s remove impGotItem
tag @s add gotCategory
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] remove improvPick

execute if entity @s[scores={aiHasItem5=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add improvPick
execute if entity @s[scores={aiHasItem6=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] add improvPick
execute if entity @s[scores={aiHasItem7=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add improvPick
execute if entity @s[scores={aiHasItem8=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add improvPick
execute if entity @s[scores={aiHasItem25=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add improvPick
execute if entity @s[scores={aiHasItem26=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add improvPick
execute if entity @s[scores={aiHasItem27=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add improvPick
execute if entity @s[scores={aiHasItem28=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add improvPick

#insert more functions here...

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=improvPick,scores={rNumber=1..8}] rNumber

execute if entity @s[tag=!impGotItem,scores={rNumber=1}] run function sprint_racer:ai/general/item_logic/5/think
execute if entity @s[tag=!impGotItem,scores={rNumber=2}] run function sprint_racer:ai/general/item_logic/6/think
execute if entity @s[tag=!impGotItem,scores={rNumber=3}] run function sprint_racer:ai/general/item_logic/7/think
execute if entity @s[tag=!impGotItem,scores={rNumber=4}] run function sprint_racer:ai/general/item_logic/8/think
execute if entity @s[tag=!impGotItem,scores={rNumber=5}] run function sprint_racer:ai/general/item_logic/25/think
execute if entity @s[tag=!impGotItem,scores={rNumber=6}] run function sprint_racer:ai/general/item_logic/26/think
execute if entity @s[tag=!impGotItem,scores={rNumber=7}] run function sprint_racer:ai/general/item_logic/27/think
execute if entity @s[tag=!impGotItem,scores={rNumber=8}] run function sprint_racer:ai/general/item_logic/28/think

tag @e[tag=improvPick] remove improvPick