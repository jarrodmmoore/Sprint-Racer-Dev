tag @s add impGotItem

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,scores={rNumber=1..50}] rNumber

#more likely to eat the apple on lower health
execute if entity @s[scores={hitboxHP=..1005,rNumber=1..45}] run tag @s add eatit
execute if entity @s[scores={hitboxHP=1006..1009,rNumber=1..35}] run tag @s add eatit
execute if entity @s[scores={hitboxHP=1010..1014,rNumber=1..25}] run tag @s add eatit
execute if entity @s[scores={hitboxHP=1015..1018,rNumber=1..15}] run tag @s add eatit
execute if entity @s[scores={hitboxHP=1019,rNumber=1..2}] run tag @s add eatit

execute if entity @s[tag=eatit] run function sprint_racer:ai/general/item_logic/5/use

tag @s[tag=eatit] remove eatit

scoreboard players set @s[scores={aiHoldingItem=5,hitboxHP=1020..}] aiHoldingItem 0

scoreboard players set @s[scores={aiHasItem5=..0}] aiHoldingItem 0