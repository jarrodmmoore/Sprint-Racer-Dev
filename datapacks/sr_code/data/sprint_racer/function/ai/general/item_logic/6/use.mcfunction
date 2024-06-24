#turn invisible

effect give @s invisibility 1 1 true
scoreboard players add @s invisibility 200
scoreboard players set @s[scores={invisibility=601..}] invisibility 600

playsound minecraft:entity.vex.hurt master @a

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 10
scoreboard players remove @s aiHasItem6 1
scoreboard players remove @s aiHasDefense 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem6=1..}] aiHoldingItem 6
scoreboard players set @s[scores={aiHasItem6=1..}] aiActICooldown 10