#pick an item (assuming we have that item)

tag @s remove impGotItem
tag @s add gotCategory
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] remove improvPick

execute if entity @s[scores={aiHasItem17=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1}] add improvPick
execute if entity @s[scores={aiHasItem18=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=2}] add improvPick
execute if entity @s[scores={aiHasItem19=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=3}] add improvPick
execute if entity @s[scores={aiHasItem20=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add improvPick
execute if entity @s[scores={aiHasItem37=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5}] add improvPick
execute if entity @s[scores={aiHasItem38=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6}] add improvPick
execute if entity @s[scores={aiHasItem39=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=7}] add improvPick
execute if entity @s[scores={aiHasItem40=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=8}] add improvPick

#insert more functions here...

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=improvPick,scores={rNumber=1..8}] rNumber

execute if entity @s[tag=!impGotItem,scores={rNumber=1}] run function sprint_racer:ai/general/item_logic/17/think
execute if entity @s[tag=!impGotItem,scores={rNumber=2}] run function sprint_racer:ai/general/item_logic/18/think
execute if entity @s[tag=!impGotItem,scores={rNumber=3}] run function sprint_racer:ai/general/item_logic/19/think
execute if entity @s[tag=!impGotItem,scores={rNumber=4}] run function sprint_racer:ai/general/item_logic/20/think
execute if entity @s[tag=!impGotItem,scores={rNumber=5}] run function sprint_racer:ai/general/item_logic/37/think
execute if entity @s[tag=!impGotItem,scores={rNumber=6}] run function sprint_racer:ai/general/item_logic/38/think
execute if entity @s[tag=!impGotItem,scores={rNumber=7}] run function sprint_racer:ai/general/item_logic/39/think
execute if entity @s[tag=!impGotItem,scores={rNumber=8}] run function sprint_racer:ai/general/item_logic/40/think

tag @e[tag=improvPick] remove improvPick