summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:tnt",count:1,components:{"minecraft:custom_name":'{translate:"sr.item.tnt",color:"red",bold:true,italic:false}',"minecraft:custom_data":{no3:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem3 1

execute if entity @s[scores={aiHasItem3=1..}] run function sprint_racer_language:gameplay/ai_drop_item/3