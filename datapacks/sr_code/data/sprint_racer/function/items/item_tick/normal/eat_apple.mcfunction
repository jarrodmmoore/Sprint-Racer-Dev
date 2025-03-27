clear @s apple[custom_data~{no5:1b}] 1

#calculate how much less hp we have than our max
scoreboard players operation #dHP value = @s hp
scoreboard players operation #dHP value -= @s cStatHP

effect clear @s poison
effect clear @s wither
execute if score #dHP value matches 0..3 run effect clear @s absorption
scoreboard players reset @s[scores={electrocute=1..}] electrocute
scoreboard players reset @s[scores={burn=1..}] burn

particle item{item:"minecraft:apple"} ^ ^1.5 ^.75 0.2 0.2 0.2 .05 20 force
execute if score #dHP value matches 0.. run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1.25
execute if score #dHP value matches ..-1 run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1

#gain +4hp in absorption if already at full health
execute if score #dHP value matches 0 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+4",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches 1 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+3",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches 2 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+2",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches 3 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+1",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches 4.. run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+0",color:"yellow",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity

#overheal?
execute if score #dHP value matches 0.. run effect give @s absorption 100000 0 true
execute if score #dHP value matches 0.. run tag @s add absorption

#heals
effect give @s instant_health 1 1 true

#numbers based on #dHP
execute if score #dHP value matches ..-8 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+8",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -7 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+7",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -6 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+6",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -5 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+5",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -4 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+4",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -3 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+3",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -2 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+2",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if score #dHP value matches -1 run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+1",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
#execute if score #dHP value matches 0.. run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+0",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity


scoreboard players set @s hitstun 0
scoreboard players add @s[scores={rateAccel=..300}] rateAccel 50

scoreboard players set @s inputCooldown 5