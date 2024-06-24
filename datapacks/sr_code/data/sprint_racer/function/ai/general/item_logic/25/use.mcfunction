#eat golden apple

scoreboard players add @s eatGoldApple 1
playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1


scoreboard players set @s aiActICooldown 50
scoreboard players set @s inputCooldown 30
scoreboard players remove @s aiHasItem25 1
scoreboard players remove @s aiHasDefense 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem25=1..}] aiHoldingItem 25
scoreboard players set @s[scores={aiHasItem25=1..}] aiActICooldown 50