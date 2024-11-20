tag @s add impGotItem

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber

#will only apply resistance when players are nearby
tag @s add self0
execute unless entity @e[distance=..25,tag=activeplayer,tag=!self0] run scoreboard players set @s rNumber 0
tag @s remove self0

#more likely to apply resistance on low health
execute if entity @s[scores={hitboxHP=..1005,rNumber=1..45}] run tag @s add useresist
execute if entity @s[scores={hitboxHP=1006..1009,rNumber=1..35}] run tag @s add useresist
execute if entity @s[scores={hitboxHP=1010..1014,rNumber=1..25}] run tag @s add useresist
execute if entity @s[scores={hitboxHP=1015..1018,rNumber=1..17}] run tag @s add useresist
execute if entity @s[scores={hitboxHP=1020,rNumber=1..10}] run tag @s add useresist

execute if entity @s[tag=useresist] run function sprint_racer:ai/general/item_logic/7/use

tag @s[tag=useresist] remove useresist

scoreboard players set @s[scores={aiHasItem7=..0}] aiHoldingItem 0