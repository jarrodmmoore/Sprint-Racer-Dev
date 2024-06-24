#use warp

function sprint_racer:items/item_tick/elite/warp/_index
scoreboard players set @s aiDelayNewPath 3

scoreboard players set @s inputCooldown 50
scoreboard players remove @s aiHasItem31 1
scoreboard players remove @s aiHasElite 1

tag @s add aiDontFace



scoreboard players set @s[scores={aiHasItem31=1..}] aiHoldingItem 31
scoreboard players set @s[scores={aiHasItem31=1..}] aiActICooldown 10

scoreboard players set @s[scores={aiHasItem31=..0}] aiHoldingItem 0