scoreboard players set @s navDirection 0
tag @s[scores={recDirection=1..8}] add gotDirection

scoreboard players operation @s[tag=gotDirection] navDirection = @s recDirection
scoreboard players operation @s[tag=gotDirection] navDirection -= @s faceDirection
scoreboard players add @s[tag=gotDirection,scores={navDirection=..-1}] navDirection 8

##navigation arrow cannot change instantly, instead must change incrementally until the correct orientation is reached
##this makes the navigator look a lot less jank and less likely to overwhelm players with wacky jumps in orientation
#execute if entity @e[tag=w,tag=!halftick,scores={oTimerGlobal=0}] run function sprint_racer:game_logic/1/nav/nav_arrow_chase
##^ Remove the hashtag above to double the refresh rate. I chose to cut the refresh rate in half since I thought it looked better.
execute if entity @e[tag=w,tag=!halftick,scores={oTimerGlobal=1}] run function sprint_racer:game_logic/1/nav/nav_arrow_chase
execute if score #halftick value matches 1 run function sprint_racer:game_logic/1/nav/nav_arrow_chase

scoreboard players set @s[tag=!gotDirection] navDirection -1

tag @s remove gotDirection


#off-course
scoreboard players set @s[scores={offCourseBuffer=20..,elytraTimer=..0,recDirection=10,actionbarState=..6}] actionbarState 6
scoreboard players set @s[scores={offCourseBuffer=20..,elytraTimer=..0,recDirection=10,actionbarState=..6}] actionbarState2 4

#missed checkpoint
scoreboard players set @s[scores={recDirection=11,elytraTimer=..0,actionbarState=..8}] actionbarState 8
scoreboard players set @s[scores={recDirection=11,elytraTimer=..0,actionbarState=..8}] actionbarState2 20

#navDirection between 3 and 5 means we're looking backwards
scoreboard players set @s[scores={wrongWayBuffer=20..,elytraTimer=..0,navDirection=3..5,actionbarState=..7}] actionbarState 7
scoreboard players set @s[scores={wrongWayBuffer=20..,elytraTimer=..0,navDirection=3..5,actionbarState=..7}] actionbarState2 10

#function sprint_racer_language:_dlc_3/track_load_failed_return_to_lobby

#reset
scoreboard players set @s[scores={hp=1..,recDirection=12}] resetCooldown 0
execute if entity @s[scores={hp=1..,recDirection=12}] unless entity @e[tag=20a,tag=cheats,x=1550,y=148,z=406,distance=..1] at @s run function sprint_racer:game_logic/1/reset/forced_reset