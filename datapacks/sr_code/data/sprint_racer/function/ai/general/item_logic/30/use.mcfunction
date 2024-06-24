#use super speed boost

scoreboard players set @s hitstun 0
scoreboard players set @s speedBoost 31
tag @s[scores={anvil=..999}] add dodge

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 15
scoreboard players remove @s aiHasItem30 1
scoreboard players remove @s aiHasSBoost 1
scoreboard players remove @s aiHasElite 1

scoreboard players set @s[scores={aiHasItem30=1..}] aiHoldingItem 30
scoreboard players set @s[scores={aiHasItem30=1..}] aiActICooldown 45