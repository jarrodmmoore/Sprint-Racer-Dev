#deploy angry squid
function sprint_racer:items/item_tick/elite/deploy_squid_angry

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem39 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem39=1..}] aiHoldingItem 39
scoreboard players set @s[scores={aiHasItem39=1..}] aiActICooldown 100