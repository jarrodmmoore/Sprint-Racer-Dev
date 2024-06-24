summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_name":'{"translate":"sr.item.snowball","color":"red","bold":true,"italic":false}',"minecraft:custom_data":{no1:1b,stay:1b,item:1b,normalitem:1b}}}}
scoreboard players remove @s aiHasItem1 1

execute if entity @s[scores={aiHasItem1=1..}] run function sprint_racer_language:gameplay/ai_drop_item/1