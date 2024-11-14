scoreboard players add @s check 1
tag @s remove checkSound
tag @s remove checkText
tag @s remove checkIncrement
scoreboard players set @s resetCooldown 50
scoreboard players set @s timeSinceCheck 0

#get time difference
execute if entity @e[tag=w,type=armor_stand,limit=1,tag=optBalance,tag=timeBalance] run function sprint_racer:game_logic/1/checkpoint_time_difference/_index

tag @s[tag=chicken_water] remove chicken_water

execute if entity @s[tag=!elytra_specific,scores={elytraTimer=10..}] run function sprint_racer:ai/general/behaviors/elytra_flight/race_refocus_target

#heals
effect give @s[tag=!undead] instant_health 1 0 true
effect give @s[tag=undead] instant_damage 1 0 true
execute if entity @s[scores={hitboxHP=..1016}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={hitboxHP=1017}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={hitboxHP=1018}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={hitboxHP=1019}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

#tactics mode, get next item
execute if entity @e[tag=w,type=armor_stand,scores={gamemodePresetA=3}] run function sprint_racer:game_logic/1/tactics/give_1

scoreboard players set @s lastTeleport 0

function sprint_racer:game_logic/1/ai_send_data_to_master