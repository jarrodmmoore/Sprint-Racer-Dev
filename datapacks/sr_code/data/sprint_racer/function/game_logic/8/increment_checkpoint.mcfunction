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
execute if entity @s[scores={hp=..16}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=17}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=18}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=19}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

#set repsawn point
scoreboard players set @s lastTeleport 0
execute at @s if block ~ ~1 ~ air if block ~ ~2 ~ air run spawnpoint @s ~ ~1 ~