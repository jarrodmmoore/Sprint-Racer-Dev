#can't heal while airborne, in water, or in hitstun
execute if entity @s[nbt={OnGround:0b}] run scoreboard players set @s regenTimer 0

scoreboard players set @s aiStuckTime 0
scoreboard players add @s regenTimer 1
scoreboard players set @s[scores={hitstun=1..}] regenTimer 0

execute if entity @s[tag=undead,scores={regenTimer=15}] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[tag=!undead,scores={regenTimer=15}] run effect give @s minecraft:instant_health 1 0 true

#summon text_display for number
execute if entity @s[scores={regenTimer=15,hitboxHP=..1016}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+4",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={regenTimer=15,hitboxHP=1017}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+3",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={regenTimer=15,hitboxHP=1018}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+2",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={regenTimer=15,hitboxHP=1019}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+1",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={regenTimer=15,hitboxHP=1020..}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+0",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity

execute if entity @s[scores={regenTimer=15,hitboxHP=..1019}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 1
execute if entity @s[scores={regenTimer=15,hitboxHP=1020..}] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

execute if score global gameState matches 3 run scoreboard players set @s[scores={regenTimer=15..}] regenTimer -6
scoreboard players set @s[scores={regenTimer=15..}] regenTimer 0

#running this at 10Hz so let's do the echo
function sprint_racer:ai/general/sneak_regen_echo