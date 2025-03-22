summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:slime_block",count:1,components:{"minecraft:custom_name":'{translate:"sr.item.slime_trap",color:"green",bold:true,italic:false}',"minecraft:custom_data":{no13:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem13 1

execute if entity @s[scores={aiHasItem13=1..}] run function sprint_racer_language:gameplay/ai_drop_item/13