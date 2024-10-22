#deploy a hyper chicken mine
summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","hyper","trap","giveID"],attributes:[{id:"movement_speed",base:0}]}
scoreboard players operation @e[tag=giveID] playerID = @s playerID
execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=1] add itemCyan
tag @e[tag=giveID] remove giveID
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 2 0.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 .7

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 50
scoreboard players set @s inputCooldown 10
scoreboard players remove @s aiHasItem35 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasElite 1

scoreboard players set @s[scores={aiHasItem35=1..}] aiHoldingItem 35
scoreboard players set @s[scores={aiHasItem35=1..}] aiActICooldown 50