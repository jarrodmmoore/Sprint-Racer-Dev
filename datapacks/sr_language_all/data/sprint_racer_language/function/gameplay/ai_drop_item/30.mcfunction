summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:diamond",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:lure":1},show_in_tooltip:0b},"minecraft:custom_name":'["",{"text":"↑ ","color":"dark_purple","bold":true,"italic":false},{"translate":"sr.item_elite.speed_boost","color":"aqua","bold":true,"italic":false}]',"minecraft:custom_data":{elite10:1b,stay:1b,item:1b,eliteitem:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem30 1

execute if entity @s[scores={aiHasItem30=1..}] run function sprint_racer_language:gameplay/ai_drop_item/30