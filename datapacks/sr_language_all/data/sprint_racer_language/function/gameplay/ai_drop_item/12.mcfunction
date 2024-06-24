summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_name":'{"translate":"sr.item.elytra","color":"aqua","bold":true,"italic":false}',"minecraft:custom_data":{no12:1b,stay:1b,item:1b,normalitem:1b}}}}
scoreboard players remove @s aiHasItem12 1

execute if entity @s[scores={aiHasItem12=1..}] run function sprint_racer_language:gameplay/ai_drop_item/12