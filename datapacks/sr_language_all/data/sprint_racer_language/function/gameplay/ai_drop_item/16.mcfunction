summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:trapped_chest",count:1,components:{"minecraft:custom_name":{translate:"sr.item.trapped_chest",color:"green",bold:true,italic:false},"minecraft:custom_data":{no16:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem16 1

execute if entity @s[scores={aiHasItem16=1..}] run function sprint_racer_language:gameplay/ai_drop_item/16