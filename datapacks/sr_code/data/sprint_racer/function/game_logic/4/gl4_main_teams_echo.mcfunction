#once the ranks are determined, start the sequence
execute unless entity @a[scores={dummyPoints=0..}] run scoreboard players add @s gameTime 1

execute if entity @s[scores={gameTime=100}] run function sprint_racer:game_logic/4/show_team_winner
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 140 run scoreboard players set @s gameTime 340
execute if entity @s[scores={gameTime=340..}] run function sprint_racer_language:lobby/award_ceremony/thanks_for_playing
execute if score #getOnWithIt value matches 1 if score @s gameTime matches 410 run scoreboard players set @s gameTime 450
execute if entity @s[scores={gameTime=450..}] run function sprint_racer:game_logic/4/end