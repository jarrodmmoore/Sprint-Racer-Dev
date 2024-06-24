#deploy nasty lingering potion (doing an item drop because I'm too lazy to program an actual lingering potion entity)
function sprint_racer_language:gameplay/ai_drop_item/14_trap

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 90
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem14 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasNormal 1

scoreboard players set @s[scores={aiHasItem14=1..}] aiHoldingItem 14
scoreboard players set @s[scores={aiHasItem14=1..}] aiActICooldown 90