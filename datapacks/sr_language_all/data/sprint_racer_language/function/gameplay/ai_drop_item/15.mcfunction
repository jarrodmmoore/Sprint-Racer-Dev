summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:bricks",count:1,components:{"minecraft:custom_model_data":1111111,"minecraft:entity_data":{Tags:["invalidchicken"]},"minecraft:custom_name":'{"translate":"sr.item.chicken_mine","color":"green","bold":true,"italic":false}',"minecraft:custom_data":{no15:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem15 1

execute if entity @s[scores={aiHasItem15=1..}] run function sprint_racer_language:gameplay/ai_drop_item/15