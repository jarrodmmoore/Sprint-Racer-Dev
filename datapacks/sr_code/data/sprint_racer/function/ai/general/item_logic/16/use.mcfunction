#deploy a trapped chest
summon item ~ ~1 ~ {PickupDelay:100,Tags:["nopickup"],Motion:[0.0d,0.5d,0.0d],Invulnerable:1b,Item:{id:"minecraft:trapped_chest",count:1,components:{"minecraft:custom_data":{no16:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b}}}}
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.6

scoreboard players set @s aiReverseCooldn 160

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 20
scoreboard players remove @s aiHasItem16 1
scoreboard players remove @s aiHasTrap 1
scoreboard players remove @s aiHasNormal 1

scoreboard players set @s[scores={aiHasItem16=1..}] aiHoldingItem 16
scoreboard players set @s[scores={aiHasItem16=1..}] aiActICooldown 100