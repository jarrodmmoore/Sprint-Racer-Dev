scoreboard players add @s check 1
function sprint_racer:game_logic/7/record_current_split
execute unless entity @s[tag=!checkText,tag=!checkSound] if entity @s[scores={bestSplit1=1..}] run function sprint_racer:game_logic/7/show_split_checkpoint
execute unless entity @s[tag=!checkText,tag=!checkSound] unless entity @s[scores={bestSplit1=1..}] run function sprint_racer_language:gameplay/subtitle_checkpoint_text
function sprint_racer_language:gameplay/checkpoint_hit
tag @s remove checkSound
tag @s remove checkText
tag @s remove checkIncrement
scoreboard players set @s resetCooldown 50
scoreboard players set @s timeSinceCheck 0

#heals
effect give @s instant_health 1 0 true

#number text
execute if entity @s[scores={hp=..16}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+4",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=17}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+3",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=18}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+2",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=19}] run summon text_display ~ ~1.8 ~ {alignment:center,text:{text:"+1",color:"light_purple",bold:true},Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity

#set repsawn point
scoreboard players set @s lastTeleport 0
execute at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run spawnpoint @s ~ ~1 ~