#deploy a land mine
summon item ~ ~1 ~ {PickupDelay:100,Tags:["nopickup"],Motion:[0.0d,0.5d,0.0d],Invulnerable:1b,Item:{id:"minecraft:smooth_stone_slab",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:lure":1},show_in_tooltip:0b},"minecraft:custom_data":{elite16:1b,stay:1b,item:1b,eliteitem:1b,groundDeploy:1b}}}}
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.6

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem36 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasElite 1

scoreboard players set @s[scores={aiHasItem36=1..}] aiHoldingItem 36
scoreboard players set @s[scores={aiHasItem36=1..}] aiActICooldown 100