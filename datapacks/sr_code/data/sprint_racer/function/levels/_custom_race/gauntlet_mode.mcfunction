#read in minutes from @s timeRemaining

#should have base of -20 ticks with an added 1200 for each additional minute
scoreboard players set #math value 1200
scoreboard players operation #math value *= @s timeRemaining
execute if score #math value matches ..1199 run scoreboard players set #math value 1200
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining2 -20
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining2 += #math value
#default is 10 minutes, or 11980

#displayed minute digit should be minutes minus 1
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMin = @s timeRemaining
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMin 1
#displayed sec and msec are always the same
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeSec 59
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMsec 9

#store max time for bossbar
execute store result bossbar gauntlettime max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] timeRemaining2

#player will be shown time limit in announce message
scoreboard players operation #gauntletTimeMins value = @s timeRemaining

#hide laps, but only if there's 1 lap
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={lap=1}] add hideLaps
#other tags
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add noCharity
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add gauntletTrack