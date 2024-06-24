tag @s add impGotItem

tag @s add self0

#turn invisible if other players are nearby
execute if entity @e[tag=activeplayer,tag=!self0,distance=..25] run function sprint_racer:ai/general/item_logic/6/use

tag @s remove self0

scoreboard players set @s[scores={aiHasItem6=..0}] aiHoldingItem 0