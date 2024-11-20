#send players to the place thing
spawnpoint @a[x=1636,y=88,z=406,distance=50..] 1636 88 406
execute as @a[x=1636,y=88,z=406,distance=50..] positioned 1636 88 406 facing 1653 92 406 run function sprint_racer:varied_teleport

#give proper tags to players and spectators
tag @a[tag=!forcespectate,tag=!afk] add playing
#previousTeam
team join player @a[team=!player,tag=!forcespectate,tag=!afk]
tag @a[tag=forcespectate] remove playing
team join spectator @a[team=!spectator,tag=forcespectate]
tag @a[tag=afk] remove playing
team join spectator @a[team=!spectator,tag=afk]
tag @a[x=1550,y=108,z=406,distance=..150] add lobby
execute as @a[tag=afk] at @s run function sprint_racer_language:afk_tag

scoreboard players remove @a[scores={subtitleDelay=1..}] subtitleDelay 1

#allow players to un-afk themselves
execute as @a[tag=afk,scores={moveState=1..}] run function sprint_racer_language:afk_tag_remove
execute as @a[tag=afk,scores={pressJump=1..}] run function sprint_racer_language:afk_tag_remove
scoreboard players reset @a[scores={pressJump=1}] pressJump

#calculate ranks based on total points
execute if entity @a[scores={dummyPoints=0..}] run function sprint_racer:game_logic/4/rank_calc
execute unless entity @a[scores={dummyPoints=0..}] if score #getOnWithIt value matches 1 if score @s gameTime matches ..89 run scoreboard players set @s gameTime 90

#fill in any holes in the rankings by shifting all players
execute if entity @s[scores={gameTime=93}] run function sprint_racer:game_logic/4/rank_fill_holes_1st
execute if entity @s[scores={gameTime=95}] run function sprint_racer:game_logic/4/rank_fill_holes_2nd
execute if entity @s[scores={gameTime=97}] run function sprint_racer:game_logic/4/rank_fill_holes_3rd

#did the AIs make top 3?
execute if entity @s[scores={gameTime=99}] as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run scoreboard players set @s finishPos 0
execute if entity @s[scores={gameTime=99}] as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer:game_logic/4/check_for_ai_placements

#once the ranks are determined, start the sequence
execute unless entity @a[scores={dummyPoints=0..}] run scoreboard players add @s gameTime 1
execute if entity @s[scores={gameTime=100}] run function sprint_racer:game_logic/4/show_third
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 130 run scoreboard players set @s gameTime 180
execute if entity @s[scores={gameTime=180}] run function sprint_racer:game_logic/4/show_second
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 210 run scoreboard players set @s gameTime 260
execute if entity @s[scores={gameTime=260}] run function sprint_racer:game_logic/4/show_first
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 290 run scoreboard players set @s gameTime 340
execute if entity @s[scores={gameTime=340..}] run function sprint_racer_language:lobby/award_ceremony/thanks_for_playing
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 410 run scoreboard players set @s gameTime 450
execute if entity @s[scores={gameTime=450..}] run function sprint_racer:game_logic/4/end

execute if entity @s[tag=halftick] run function sprint_racer:game_logic/4/gl4_main_echo