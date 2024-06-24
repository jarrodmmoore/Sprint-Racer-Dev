tag @s add gotEm

scoreboard players remove @e[tag=stealTarget2] aiHasItem8 1
scoreboard players remove @e[tag=stealTarget2] aiHasDefense 1
scoreboard players remove @e[tag=stealTarget2,scores={aiHasNormal=1..}] aiHasNormal 1
scoreboard players add @s giveQty 1

#use recursion to nab up to 10 items from the victim's active slot
execute if entity @s[scores={giveQty=..9}] if entity @e[tag=stealTarget2,scores={aiHasItem8=1..}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no8

scoreboard players set @e[tag=stealTarget2] itemStolen 8
scoreboard players set @s giveItem 8