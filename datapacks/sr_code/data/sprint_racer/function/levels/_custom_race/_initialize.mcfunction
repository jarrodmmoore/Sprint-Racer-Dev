#TP TO TRACK
function sprint_racer:teleport_to_custom_track

######
#MUSIC
function sprint_racer:levels/_custom_general/set_music
######

#LAPS
scoreboard players operation @e[tag=w,type=armor_stand] lap = @s lap

#CHECKPOINTS
scoreboard players operation @e[tag=w,type=armor_stand] check = @s check

#DAYLIGHT CYCLE
execute if entity @s[tag=daylightCycle] run gamerule doDaylightCycle true

#AI?
tag @e[tag=w,type=armor_stand] remove noAItrack
execute if entity @s[tag=noAItrack] run tag @e[tag=w,type=armor_stand] add noAItrack

#TIME OF DAY
time set 0
scoreboard players set @s math 0
scoreboard players operation @s math = @s customTrackTime
execute if entity @s[scores={math=12800..}] run time add 12800
execute if entity @s[scores={math=12800..}] run scoreboard players remove @s math 12800
execute if entity @s[scores={math=6400..}] run time add 6400
execute if entity @s[scores={math=6400..}] run scoreboard players remove @s math 6400
execute if entity @s[scores={math=3200..}] run time add 3200
execute if entity @s[scores={math=3200..}] run scoreboard players remove @s math 3200
execute if entity @s[scores={math=1600..}] run time add 1600
execute if entity @s[scores={math=1600..}] run scoreboard players remove @s math 1600
execute if entity @s[scores={math=800..}] run time add 800
execute if entity @s[scores={math=800..}] run scoreboard players remove @s math 800
execute if entity @s[scores={math=400..}] run time add 400
execute if entity @s[scores={math=400..}] run scoreboard players remove @s math 400
execute if entity @s[scores={math=200..}] run time add 200
execute if entity @s[scores={math=200..}] run scoreboard players remove @s math 200
execute if entity @s[scores={math=100..}] run time add 100
execute if entity @s[scores={math=100..}] run scoreboard players remove @s math 100

#WEATHER
execute if entity @s[scores={customTWeather=1}] run weather clear
execute if entity @s[scores={customTWeather=2}] run weather rain
execute if entity @s[scores={customTWeather=3}] run weather thunder
execute if entity @s[scores={customTWeather=2..3}] run tag @e[tag=w,type=armor_stand] add raining

#TIME LIMIT
execute if entity @s[scores={timeRemaining=..2}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 2609
execute if entity @s[scores={timeRemaining=3}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 3809
#default is 4 minutes, or 5009
execute if entity @s[scores={timeRemaining=5}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 6209
execute if entity @s[scores={timeRemaining=6}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 7409
execute if entity @s[scores={timeRemaining=7}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 8609
execute if entity @s[scores={timeRemaining=8}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 9809
execute if entity @s[scores={timeRemaining=9}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 11009
execute if entity @s[scores={timeRemaining=10..}] run scoreboard players set @e[tag=w,type=armor_stand] timeRemaining 12209

#GAUNTLET?
execute if entity @s[tag=customGauntlet] run function sprint_racer:levels/_custom_race/gauntlet_mode

#MUSIC
execute as @e[type=armor_stand,tag=random,limit=1,scores={rNumber=1..}] run scoreboard players operation @s math = @s rNumber
scoreboard players operation @e[type=armor_stand,tag=random] math -= @s BGMtrack
tag @e[type=armor_stand,limit=1,tag=random,scores={math=0}] add setBGM

#CUSTOM CODE? RUN IT
execute if entity @s[scores={customCodePath=1..50}] run function sprint_racer:levels/_index_custom_path_init_1_50
execute if entity @s[scores={customCodePath=51..100}] run function sprint_racer:levels/_index_custom_path_init_51_100