#pick an item (assuming we have that item)

tag @s remove impGotItem
tag @s add gotCategory
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] remove improvPick

execute if entity @s[scores={aiHasItem13=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add improvPick
execute if entity @s[scores={aiHasItem14=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] add improvPick
execute if entity @s[scores={aiHasItem15=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add improvPick
execute if entity @s[scores={aiHasItem16=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add improvPick
execute if entity @s[scores={aiHasItem33=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add improvPick
execute if entity @s[scores={aiHasItem34=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add improvPick
execute if entity @s[scores={aiHasItem35=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add improvPick
execute if entity @s[scores={aiHasItem36=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add improvPick

#insert more functions here...

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=improvPick,scores={rNumber=1..8}] rNumber

execute if entity @s[tag=!impGotItem,scores={rNumber=1}] run function sprint_racer:ai/general/item_logic/13/think
execute if entity @s[tag=!impGotItem,scores={rNumber=2}] run function sprint_racer:ai/general/item_logic/14/think
execute if entity @s[tag=!impGotItem,scores={rNumber=3}] run function sprint_racer:ai/general/item_logic/15/think
execute if entity @s[tag=!impGotItem,scores={rNumber=4}] run function sprint_racer:ai/general/item_logic/16/think
execute if entity @s[tag=!impGotItem,scores={rNumber=5}] run function sprint_racer:ai/general/item_logic/33/think
execute if entity @s[tag=!impGotItem,scores={rNumber=6}] run function sprint_racer:ai/general/item_logic/34/think
execute if entity @s[tag=!impGotItem,scores={rNumber=7}] run function sprint_racer:ai/general/item_logic/35/think
execute if entity @s[tag=!impGotItem,scores={rNumber=8}] run function sprint_racer:ai/general/item_logic/36/think

tag @e[tag=improvPick] remove improvPick