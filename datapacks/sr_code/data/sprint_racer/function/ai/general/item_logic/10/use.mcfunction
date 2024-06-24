#use speed boost

scoreboard players set @s hitstun 0
scoreboard players set @s speedBoost 1
tag @s[scores={anvil=..999}] add dodge

scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 15
scoreboard players remove @s aiHasItem10 1
scoreboard players remove @s aiHasSBoost 1
scoreboard players remove @s aiHasNormal 1

scoreboard players set @s[scores={aiHasItem10=1..}] aiHoldingItem 10
scoreboard players set @s[scores={aiHasItem10=1..}] aiActICooldown 45