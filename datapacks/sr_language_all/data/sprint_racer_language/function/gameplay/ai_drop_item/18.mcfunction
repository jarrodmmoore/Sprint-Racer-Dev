summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:black_terracotta",count:1,components:{"minecraft:item_model":"sr/item/enderman_thief","minecraft:custom_name":'{"translate":"sr.item.enderman","color":"light_purple","bold":true,"italic":false}',"minecraft:custom_data":{no18:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem18 1

execute if entity @s[scores={aiHasItem18=1..}] run function sprint_racer_language:gameplay/ai_drop_item/18