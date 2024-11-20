#fill in any holes in the rankings by shifting all players
execute if entity @s[scores={gameTime=93}] run function sprint_racer:game_logic/4/rank_fill_holes_1st
execute if entity @s[scores={gameTime=95}] run function sprint_racer:game_logic/4/rank_fill_holes_2nd
execute if entity @s[scores={gameTime=97}] run function sprint_racer:game_logic/4/rank_fill_holes_3rd

#did the AIs make top 3?
execute if entity @s[scores={gameTime=99}] as @e[tag=random,type=armor_stand,scores={rNumber=1..9}] run scoreboard players set @s finishPos 0
execute if entity @s[scores={gameTime=99}] as @e[tag=random,type=armor_stand,scores={rNumber=1..9,aiPoints=1..}] run function sprint_racer:game_logic/4/check_for_ai_placements

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