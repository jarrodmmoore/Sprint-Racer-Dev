#TP TO TRACK
function sprint_racer:teleport_to_custom_track

#STORAGE SETUP
execute store result storage sprint_racer:func_args custom_uid int 1 run scoreboard players get @s customTagLine

#CHECK FOR SETTINGS OVERRIDES (only needed on first boot, not for restarts)
execute unless score #settingsWereOverridden value matches 1.. run function sprint_racer:levels/_custom_battle/apply_settings_overrides

######
#MUSIC
function sprint_racer:levels/_custom_general/set_music
######

#START COUNTDOWN
execute unless score @s startType matches 0 run scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] startType = @s startType

#NIGHT VISION -- night vision if we're playing in free roam mode
execute if entity @s[tag=nightVision] run tag @a[tag=dontSetGamemode] add fr_nightvision

#DAYLIGHT CYCLE
execute if entity @s[tag=daylightCycle] run gamerule advance_time true

#AI?
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove noAItrack
execute if entity @s[tag=noAItrack] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noAItrack

#TIME OF DAY
execute store result storage sprint_racer:func_args time int 1 run scoreboard players get @s customTrackTime
function sprint_racer:levels/_custom_general/set_time_macro with storage sprint_racer:func_args

#WEATHER
execute if entity @s[scores={customTWeather=1}] run weather clear
execute if entity @s[scores={customTWeather=2}] run weather rain
execute if entity @s[scores={customTWeather=3}] run weather thunder
execute if entity @s[scores={customTWeather=2..3}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add raining

#TARGET COUNT
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] targetData = @s customTTargets

#MUSIC
#execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..}] run scoreboard players operation @s math = @s rNumber
#scoreboard players operation @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1] math -= @s BGMtrack
#tag @e[type=armor_stand,limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={math=0}] add setBGM

#CUSTOM CODE? RUN IT
execute if entity @s[tag=usingMacroCodePath] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute if entity @s[tag=usingMacroCodePath] run function sprint_racer:levels/_custom_general/init_with_macro_path with storage sprint_racer:func_args
execute if entity @s[tag=!usingMacroCodePath,scores={customCodePath=1..50}] run function sprint_racer:levels/_index_custom_path_init_1_50
execute if entity @s[tag=!usingMacroCodePath,scores={customCodePath=51..100}] run function sprint_racer:levels/_index_custom_path_init_51_100