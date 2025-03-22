scoreboard players add @s check 1
tag @s remove checkSound
tag @s remove checkText
tag @s remove checkIncrement
scoreboard players set @s resetCooldown 50
scoreboard players set @s timeSinceCheck 0

#get time difference
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1,tag=optBalance,tag=timeBalance] run function sprint_racer:game_logic/1/checkpoint_time_difference/_index

tag @s[tag=chicken_water] remove chicken_water

execute if entity @s[tag=!elytra_specific,scores={elytraTimer=10..}] run function sprint_racer:ai/general/behaviors/elytra_flight/race_refocus_target

#heals
effect give @s[tag=!undead] instant_health 1 0 true
effect give @s[tag=undead] instant_damage 1 0 true
execute if entity @s[scores={hitboxHP=..1016}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+4",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hitboxHP=1017}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+3",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hitboxHP=1018}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+2",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hitboxHP=1019}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+1",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity

#tactics mode, get next item
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/give_1

scoreboard players set @s lastTeleport 0

function sprint_racer:game_logic/1/ai_send_data_to_master