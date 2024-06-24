#use the normal totem first
tag @s remove totemNormal
tag @s[scores={aiHasItem8=1..}] add totemNormal

particle totem_of_undying ~ ~2 ~ 0 0 0 .4 40 normal
particle totem_of_undying ~ ~2 ~ 0 0 0 .4 10 force
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 1

function sprint_racer_language:gameplay/misc_item_text/used_totem

data merge entity @s[tag=!lowhp] {Health:1009.0f}
data merge entity @s[tag=lowhp] {Health:1015.0f}
scoreboard players set @s hitstun 0

scoreboard players set @s aiActICooldown 20
scoreboard players set @s inputCooldown 7
scoreboard players remove @s[tag=totemNormal] aiHasItem8 1
scoreboard players remove @s[tag=!totemNormal] aiHasItem28 1
scoreboard players remove @s aiHasDefense 1
scoreboard players remove @s[tag=totemNormal] aiHasNormal 1
scoreboard players remove @s[tag=!totemNormal] aiHasElite 1

scoreboard players set @s[tag=totemNormal] aiHoldingItem 0
scoreboard players set @s[tag=totemNormal,scores={aiHasItem8=1..}] aiHoldingItem 8
scoreboard players set @s[tag=totemNormal,scores={aiHasItem28=1..}] aiHoldingItem 28
scoreboard players set @s[tag=totemNormal,scores={aiHasItem8=1..}] aiActICooldown 20

scoreboard players set @s[tag=!totemNormal] aiHoldingItem 0
scoreboard players set @s[tag=!totemNormal,scores={aiHasItem28=1..}] aiHoldingItem 28
scoreboard players set @s[tag=!totemNormal,scores={aiHasItem28=1..}] aiActICooldown 20

tag @s remove totemNormal