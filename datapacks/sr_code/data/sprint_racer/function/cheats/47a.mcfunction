execute as @a[tag=playing,tag=!noInventory,gamemode=adventure,scores={elytraTimer=..0}] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{no12:1b}}}]}] run function sprint_racer_language:gameplay/give_item/no12

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{no12:1b}}}}]

scoreboard players add @a elyRocketTime 0
scoreboard players remove @a[scores={elyRocketTime=1..,elytraTimer=1..}] elyRocketTime 1
execute if score #halftick value matches 1 run scoreboard players remove @a[scores={elyRocketTime=1..,elytraTimer=1..}] elyRocketTime 1

execute as @a[tag=playing,gamemode=adventure,scores={elytraTimer=1..,elyRocketTime=..0}] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{rocketboost:1b}}}]}] run function sprint_racer_language:gameplay/give_item/firework
execute as @a[tag=playing,tag=!noInventory,gamemode=adventure,scores={elytraTimer=1..,elyRocketTime=..0}] run scoreboard players set @s elyRocketTime 70

scoreboard players set @e[tag=ai] aiHasItem32 1