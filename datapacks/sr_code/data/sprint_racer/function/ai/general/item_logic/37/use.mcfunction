#deploy anvil

tag @s add self

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.25

#let's anvil half of the players at random, thanos style
scoreboard players set @e[tag=w,type=armor_stand] math 2
scoreboard players operation @s repeatCount = @e[limit=1,tag=w] playerCountB
scoreboard players operation @s repeatCount /= @e[limit=1,tag=w] math

function sprint_racer:items/item_tick/elite/anvil_of_injustice_repeat
tag @e[tag=anvilled] remove anvilled

#kill some chicken mines as well because why not
scoreboard players set @e[limit=5,tag=chickenmine,sort=random] anvil 0

tag @s remove self


scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem37 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem37=1..}] aiHoldingItem 37
scoreboard players set @s[scores={aiHasItem37=1..}] aiActICooldown 100