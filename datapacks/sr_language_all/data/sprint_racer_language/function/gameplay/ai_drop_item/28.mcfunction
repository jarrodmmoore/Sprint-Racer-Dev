summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:lure":1},show_in_tooltip:0b},"minecraft:custom_name":'["",{text:"↑ ",color:"dark_purple",bold:true,italic:false},{translate:"sr.item_elite.totem",color:"yellow",bold:true,italic:false}]',"minecraft:custom_data":{elite8:1b,stay:1b,item:1b,eliteitem:1b,rightclick:1b}}}}
scoreboard players remove @s aiHasItem28 1

execute if entity @s[scores={aiHasItem28=1..}] run function sprint_racer_language:gameplay/ai_drop_item/28