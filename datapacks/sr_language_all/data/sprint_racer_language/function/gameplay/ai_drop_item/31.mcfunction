#i don't know why i wrote this function
#warp items aren't even allowed to drop

summon item ~ ~.3 ~ {Tags:["giveVelocity"],PickupDelay:40,Age:0,Item:{id:"minecraft:flint",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:lure":1},show_in_tooltip:0b},"minecraft:custom_name":'["",{text:"↑ ",color:"dark_purple",bold:true,italic:false},{translate:"sr.item_elite.warp",color:"aqua",bold:true,italic:false}]',"minecraft:custom_data":{elite11:1b,item:1b,eliteitem:1b}}}}
scoreboard players remove @s aiHasItem31 1

execute if entity @s[scores={aiHasItem31=1..}] run function sprint_racer_language:gameplay/ai_drop_item/31