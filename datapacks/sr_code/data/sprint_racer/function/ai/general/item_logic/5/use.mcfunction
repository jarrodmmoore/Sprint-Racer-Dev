#eat apple

particle item{item:"minecraft:apple"} ^ ^1.5 ^.75 0.2 0.2 0.2 .05 20 force
execute if entity @s[scores={hitboxHP=..1019}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1
execute if entity @s[scores={hitboxHP=1020..}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1.25

#heals
effect give @s[tag=!undead] instant_health 1 1 true
effect give @s[tag=undead] instant_damage 1 1 true
execute if entity @s[type=wither] run data merge entity @s {Health:1020.0f}

#number
execute if entity @s[type=!wither,scores={hitboxHP=..1012}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+8",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1013}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+7",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1014}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+6",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1015}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+5",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1016}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+4",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1017}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+3",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1018}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+2",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1019}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+1",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=!wither,scores={hitboxHP=1020}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+0",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[type=wither] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+20",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity


scoreboard players set @s hitstun 0
scoreboard players add @s[scores={rateAccel=..300}] rateAccel 50


scoreboard players set @s aiActICooldown 10
scoreboard players set @s inputCooldown 5
scoreboard players remove @s aiHasItem5 1
scoreboard players remove @s aiHasDefense 1
scoreboard players remove @s aiHasNormal 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem5=1..}] aiHoldingItem 5
scoreboard players set @s[scores={aiHasItem5=1..}] aiActICooldown 10