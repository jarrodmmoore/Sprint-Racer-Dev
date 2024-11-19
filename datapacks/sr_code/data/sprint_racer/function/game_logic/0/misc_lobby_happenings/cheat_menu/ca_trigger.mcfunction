execute if entity @s[scores={ca_trigger=1}] run scoreboard players remove @s customAInumber 1
execute if entity @s[scores={ca_trigger=2}] run scoreboard players add @s customAInumber 1

scoreboard players operation #ai_num value = @s customAInumber
execute as @e[type=armor_stand,tag=random] if score @s rNumber = #ai_num value run tag @s add ca_focus

execute if entity @s[scores={ca_trigger=11}] run scoreboard players remove @e[tag=ca_focus,type=armor_stand] customAIset 1
execute if entity @s[scores={ca_trigger=12}] run scoreboard players add @e[tag=ca_focus,type=armor_stand] customAIset 1

execute if entity @s[scores={ca_trigger=21}] run scoreboard players remove @e[tag=ca_focus,type=armor_stand] customAIdiff 1
execute if entity @s[scores={ca_trigger=22}] run scoreboard players add @e[tag=ca_focus,type=armor_stand] customAIdiff 1

execute if entity @s[scores={ca_trigger=31}] run scoreboard players remove @e[tag=ca_focus,type=armor_stand] customAIteam 1
execute if entity @s[scores={ca_trigger=32}] run scoreboard players add @e[tag=ca_focus,type=armor_stand] customAIteam 1

#value limits
scoreboard players set @e[tag=ca_focus,type=armor_stand,scores={customAIset=..0}] customAIset 27
scoreboard players set @e[tag=ca_focus,type=armor_stand,scores={customAIset=28..}] customAIset 1

scoreboard players set @e[tag=ca_focus,type=armor_stand,scores={customAIdiff=..-1}] customAIdiff 5
scoreboard players set @e[tag=ca_focus,type=armor_stand,scores={customAIdiff=6..}] customAIdiff 0

scoreboard players set @e[tag=ca_focus,type=armor_stand,scores={customAIteam=..-1}] customAIteam 2
scoreboard players set @e[tag=ca_focus,type=armor_stand,scores={customAIteam=3..}] customAIteam 0

scoreboard players set @s[scores={customAInumber=..0}] customAInumber 9
scoreboard players set @s[scores={customAInumber=10..}] customAInumber 1

tag @e[tag=ca_focus] remove ca_focus

#refresh menu
scoreboard players reset @s ca_trigger
function sprint_racer_language:_dlc_4/lobby/options/custom_ai