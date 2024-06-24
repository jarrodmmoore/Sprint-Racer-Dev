#deploy big nasty lingering potion (doing an item drop because I'm too lazy to program an actual lingering potion entity)
function sprint_racer_language:gameplay/ai_drop_item/34_trap

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 90
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem34 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasElite 1

scoreboard players set @s[scores={aiHasItem34=1..}] aiHoldingItem 34
scoreboard players set @s[scores={aiHasItem34=1..}] aiActICooldown 90