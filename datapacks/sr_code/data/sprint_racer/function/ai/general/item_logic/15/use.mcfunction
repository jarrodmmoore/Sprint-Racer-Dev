#deploy a chicken mine
summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","trap","giveID"],attributes:[{id:"movement_speed",base:0}]}
scoreboard players operation @e[tag=giveID] playerID = @s playerID
execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=1] add itemCyan
tag @e[tag=giveID] remove giveID
playsound minecraft:entity.chicken.egg master @a

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 50
scoreboard players set @s inputCooldown 10
scoreboard players remove @s aiHasItem15 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasNormal 1

scoreboard players set @s[scores={aiHasItem15=1..}] aiHoldingItem 15
scoreboard players set @s[scores={aiHasItem15=1..}] aiActICooldown 50