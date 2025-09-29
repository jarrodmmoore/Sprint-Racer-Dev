#executed by an armor stand representing an ai

#check if someone else has our username
scoreboard players set #test3 value 0
$execute if entity $(name) run scoreboard players add #test3 value 2
scoreboard players operation #test4 value = @s aiEntity
execute if entity @s[tag=has_custom_ai_name] as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] if score @s aiEntity = #test4 value run scoreboard players add #test3 value 1
#if no player exists with this bot's username, quit out the function
execute if score #test3 value matches ..1 run return 1
#=====

#ok, we need to change username to avoid conflict
#let's remember to apply our current team color to whatever our final username ends up being!

#slap a number at the end of our name
$data modify storage sprint_racer:ai_storage_$(id) name set value "$(name)$(id)"

#check again to see if somebody named themselves that
$execute unless entity $(name)$(id) run return run function sprint_racer:ai/general/update_bot_name_color with storage sprint_racer:ai_storage_$(id)
#=====

#still taken? ok, fall back on the CPU_X format

#change username back to a generic "CPU_X" format
$data modify storage sprint_racer:ai_storage_$(id) name set value "CPU_$(id)"

#check again to see if somebody named themselves CPU_X
$execute unless entity CPU_$(id) run return run function sprint_racer:ai/general/update_bot_name_color with storage sprint_racer:ai_storage_$(id)
#=====

#ok wise guy, there's no possible way you could have a _ at the start of your username
$data modify storage sprint_racer:ai_storage_$(id) name set value "_CPU_$(id)"
$function sprint_racer:ai/general/update_bot_name_color with storage sprint_racer:ai_storage_$(id)
#gottem