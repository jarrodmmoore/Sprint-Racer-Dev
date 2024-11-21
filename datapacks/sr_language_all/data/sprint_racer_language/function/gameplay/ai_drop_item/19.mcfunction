summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:blue_terracotta",count:1,components:{"minecraft:item_model":"sr/item/blinding_squid","minecraft:custom_name":'{"translate":"sr.item.squid","color":"light_purple","bold":true,"italic":false}',"minecraft:custom_data":{no19:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem19 1

execute if entity @s[scores={aiHasItem19=1..}] run function sprint_racer_language:gameplay/ai_drop_item/19