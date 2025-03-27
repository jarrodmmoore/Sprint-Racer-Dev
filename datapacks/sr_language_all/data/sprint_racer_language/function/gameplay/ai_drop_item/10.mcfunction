#disabled since AI can get this item via charity
#which can lead to some wacky duplication shenanigans

#summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:gold_ingot",count:1,components:{"minecraft:custom_name":{translate:"sr.item.speed_boost",color:"aqua",bold:true,italic:"false"},"minecraft:custom_data":{no10:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}}}}
#scoreboard players remove @s aiHasItem10 1

#execute if entity @s[scores={aiHasItem10=1..}] run function sprint_racer_language:gameplay/ai_drop_item/10