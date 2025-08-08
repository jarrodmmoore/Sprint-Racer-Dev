#shoot, with random spread
execute facing entity @e[limit=1,tag=looktarget] eyes rotated ~ ~5 run function sprint_racer:ai/general/item_logic/obliterator/random_yaw

#look at target for a moment
execute store result score #setTime value run random value 7..15
execute facing entity @e[limit=1,tag=looktarget] eyes run function sprint_racer:ai/general/movement/face_direction_temporarily

#clear target
tag @e[tag=looktarget] remove looktarget

#scoreboard players set @s inputCooldown 15
scoreboard players set @s aiActICooldown 10
scoreboard players remove @s aiHasObliterator 1
scoreboard players remove @s aiHasProjectile 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasObliterator=1..}] aiHoldingItem 42
scoreboard players set @s[scores={aiHasObliterator=1..}] aiActICooldown 10