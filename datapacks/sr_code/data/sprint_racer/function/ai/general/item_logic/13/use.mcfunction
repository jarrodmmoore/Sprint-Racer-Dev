#deploy slime trap
summon armor_stand ~ ~1 ~ {Tags:["slimetrap","trap","giveID"],Motion:[0.0d,0.5d,0.0d],Silent:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:slime_block",count:1}]}
scoreboard players operation @e[tag=giveID] playerID = @s playerID
execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=1] add itemCyan
tag @e[tag=giveID] remove giveID
playsound minecraft:entity.slime.attack master @a

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 30
scoreboard players set @s inputCooldown 7
scoreboard players remove @s aiHasItem13 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasNormal 1

scoreboard players set @s[scores={aiHasItem13=1..}] aiHoldingItem 13
scoreboard players set @s[scores={aiHasItem13=1..}] aiActICooldown 45