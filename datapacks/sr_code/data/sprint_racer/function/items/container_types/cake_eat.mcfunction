particle item{item:"minecraft:cake"} ^ ^1.5 ^.75 0.2 0.2 0.2 .05 20 force
execute if entity @s[scores={hp=..19}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.9
execute if entity @s[scores={hp=20..}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.95

#gain +4hp in absorption if already at full health
execute if entity @s[scores={hp=20}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+4",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=21}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+3",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=22}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+2",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=23}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+1",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=24}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+0",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore
execute if entity @s[scores={hp=20..}] run effect give @s absorption 100000 0 true

#heals
effect give @s instant_health 1 2 true
execute if entity @s[scores={hp=..12}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+8",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=13}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+7",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=14}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+6",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=15}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+5",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=16}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+4",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=17}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+3",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=18}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+2",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=19}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+1",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity

scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

scoreboard players set @s hitstun 0
scoreboard players add @s[scores={rateAccel=..300}] rateAccel 50