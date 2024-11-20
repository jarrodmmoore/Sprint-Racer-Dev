#pick an item category (assuming we have an item from that category)

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] remove improvPick

execute if entity @s[scores={aiHasProjectile=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..3}] add improvPick
execute if entity @s[scores={aiHasMelee=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=4}] add improvPick
execute if entity @s[scores={aiHasDefense=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=5..8}] add improvPick
execute if entity @s[scores={aiHasSBoost=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=10}] add improvPick
execute if entity @s[scores={aiHasTrap=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=13..16}] add improvPick
execute if entity @s[scores={aiHasGlobal=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=17..20}] add improvPick

execute if entity @s[scores={aiHasProjectile=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=21..23}] add improvPick
execute if entity @s[scores={aiHasMelee=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=24}] add improvPick
execute if entity @s[scores={aiHasDefense=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=25..28}] add improvPick
execute if entity @s[scores={aiHasSBoost=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=30}] add improvPick
execute if entity @s[scores={aiHasItem31=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=31}] add improvPick
execute if entity @s[scores={aiHasTrap=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=33..36}] add improvPick
execute if entity @s[scores={aiHasGlobal=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=37..40}] add improvPick

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:ai/general/item_logic/improvise/battle_improv_items

#aggressive or tryhard tag means use items more aggressively
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=41..50}] add improvPick
execute if entity @s[tag=aggressive] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=41..45}] remove improvPick
execute if entity @s[tag=tryhard] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=41..47}] remove improvPick

#insert more functions here...

scoreboard players set @s rNumber 50
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=improvPick,type=armor_stand,scores={rNumber=1..50}] rNumber
#very_easy_ai will re-roll for lower chance of item usage
execute if entity @s[tag=very_easy_ai,scores={rNumber=1..40}] run scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=improvPick,type=armor_stand,scores={rNumber=1..50}] rNumber
execute if entity @s[tag=very_easy_ai,scores={rNumber=1..40}] run scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=improvPick,type=armor_stand,scores={rNumber=1..50}] rNumber
tag @s[scores={rNumber=9}] add improvBattle
tag @s[scores={rNumber=11}] add improvBattle
tag @s[scores={rNumber=12}] add improvBattle
tag @s[scores={rNumber=29}] add improvBattle
tag @s[scores={rNumber=31}] add 31warp
tag @s[scores={rNumber=32}] add improvBattle
scoreboard players remove @s[scores={rNumber=21..40}] rNumber 20

tag @s remove gotCategory
execute if entity @s[tag=!gotCategory,scores={rNumber=1..3}] run function sprint_racer:ai/general/item_logic/improvise/projectiles
execute if entity @s[tag=!gotCategory,scores={rNumber=4}] run function sprint_racer:ai/general/item_logic/improvise/melee
execute if entity @s[tag=!gotCategory,scores={rNumber=5..8}] run function sprint_racer:ai/general/item_logic/improvise/defense
execute if entity @s[tag=!gotCategory,scores={rNumber=10}] run function sprint_racer:ai/general/item_logic/improvise/speed_boost
execute if entity @s[tag=31warp] run function sprint_racer:ai/general/item_logic/31/think
execute if entity @s[tag=improvBattle] run function sprint_racer:ai/general/item_logic/improvise/battle_only_items
execute if entity @s[tag=!gotCategory,scores={rNumber=13..16}] run function sprint_racer:ai/general/item_logic/improvise/trap
execute if entity @s[tag=!gotCategory,scores={rNumber=17..20}] run function sprint_racer:ai/general/item_logic/improvise/global
tag @s remove gotCategory

tag @e[tag=31warp] remove 31warp
tag @e[tag=improvBattle] remove improvBattle
tag @e[tag=improvPick] remove improvPick

execute if entity @s[scores={aiActICooldown=..0}] run scoreboard players operation @s aiActICooldown = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,type=armor_stand,scores={rNumber=20..50}] rNumber