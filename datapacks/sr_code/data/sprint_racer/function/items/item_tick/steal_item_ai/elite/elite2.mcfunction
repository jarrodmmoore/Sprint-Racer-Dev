tag @s add gotEm

scoreboard players remove @e[tag=stealTarget1] aiHasItem22 1
scoreboard players remove @e[tag=stealTarget1] aiHasProjectile 1
scoreboard players remove @e[tag=stealTarget1,scores={aiHasElite=1..}] aiHasElite 1
scoreboard players add @s giveQty 1

#use recursion to nab up to 10 items from the victim's active slot
execute if entity @s[scores={giveQty=..9}] if entity @e[tag=stealTarget1,scores={aiHasItem22=1..}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite2

scoreboard players set @e[tag=stealTarget1] itemStolen 102
scoreboard players set @s giveItem 102