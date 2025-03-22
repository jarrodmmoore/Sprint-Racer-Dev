summon item ~ ~.3 ~ {Tags:["giveVelocity","setItemID"],PickupDelay:40,Age:0,Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:lure":1},show_in_tooltip:0b},"minecraft:custom_name":'["",{text:"↑ ",color:"dark_purple",bold:true,italic:false},{translate:"sr.item_elite.lingering_potion",color:"green",bold:true,italic:false}]',"minecraft:potion_contents":{custom_color:9186694,custom_effects:[{id:"minecraft:nausea",amplifier:1,duration:180,show_particles:0b}],potion:"minecraft:strong_poison"},"minecraft:custom_data":{elite14:1b,stay:1b,item:1b,eliteitem:1b,groundDeploy:1b}}}}
scoreboard players operation @e[tag=setItemID] playerID = @s playerID
tag @e[tag=setItemID] remove setItemID

scoreboard players remove @s aiHasItem34 1

execute if entity @s[scores={aiHasItem34=1..}] run function sprint_racer_language:gameplay/ai_drop_item/34