#set initial value to 1:00:9
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1220}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMin 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1220}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeSec 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1220}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] countTimeMsec 9
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1220}] run bossbar set minecraft:timeremaining max 1200

#decrement Msec every 10th of a second
execute if entity @s[scores={oTimer=1}] run scoreboard players remove @s countTimeMsec 1

#correct negative seconds
execute if entity @s[scores={countTimeMsec=..-1}] run scoreboard players remove @s countTimeSec 1
execute if entity @s[scores={countTimeMsec=..-1}] run scoreboard players add @s countTimeMsec 10
execute if entity @s[scores={countTimeSec=..-1}] run scoreboard players remove @s countTimeMin 1
execute if entity @s[scores={countTimeSec=..-1}] run scoreboard players add @s countTimeSec 60

#UNUSED, found a much better solution to this using bossbars
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={countTimeMin=0..}] run function sprint_racer_language:gameplay/race_end/subtitle_timer
#scoreboard players add @a subtitleDelay 0
#scoreboard players remove @a[scores={subtitleDelay=1..}] subtitleDelay 1

#bossbar time remaining display
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=3..}] run bossbar set timeremaining players @a[tag=!bbarbump]
tag @a[tag=bbarbump] remove bbarbump
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=..2}] run bossbar set timeremaining players
execute unless score #bbPersonalize value matches 2 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=201..}] run bossbar set minecraft:timeremaining color white
execute unless score #bbPersonalize value matches 2 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=..200}] run bossbar set minecraft:timeremaining color red
function sprint_racer_language:gameplay/race_end/bossbar_timer
execute store result bossbar minecraft:timeremaining value run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] timeRemaining