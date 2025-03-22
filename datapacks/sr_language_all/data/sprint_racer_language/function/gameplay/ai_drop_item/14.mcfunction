summon item ~ ~.3 ~ {Tags:["giveVelocity","setItemID"],PickupDelay:40,Age:0,Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_name":'{translate:"sr.item.lingering_potion",color:"green",bold:true,italic:false}',"minecraft:potion_contents":{potion:"minecraft:poison"},"minecraft:custom_data":{no14:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b}}}}
scoreboard players operation @e[tag=setItemID] playerID = @s playerID
tag @e[tag=setItemID] remove setItemID

scoreboard players remove @s aiHasItem14 1

execute if entity @s[scores={aiHasItem14=1..}] run function sprint_racer_language:gameplay/ai_drop_item/14