summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_name":'{translate:"sr.item.ender_pearl",color:"aqua",bold:true,italic:false}',"minecraft:custom_data":{no11:1b,stay:1b,item:1b,normalitem:1b}}}}
scoreboard players remove @s aiHasItem11 1

execute if entity @s[scores={aiHasItem11=1..}] run function sprint_racer_language:gameplay/ai_drop_item/11