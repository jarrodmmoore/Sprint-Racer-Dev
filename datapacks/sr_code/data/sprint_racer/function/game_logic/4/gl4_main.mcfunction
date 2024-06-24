execute unless entity @s[tag=teamplay] run function sprint_racer:game_logic/4/gl4_main_no_teams
execute if entity @s[tag=teamplay] run function sprint_racer:game_logic/4/gl4_main_teams

#we ran into a bug with nearby player invisibility where players stay invisible during the podium sequence
#i don't know how to approach this problem so i'll just be an ape and do a band-aid solution
execute if entity @s[scores={gameTime=20}] run effect clear @a invisibility
execute if entity @s[scores={gameTime=40}] run effect clear @a invisibility
execute if entity @s[scores={gameTime=60}] run effect clear @a invisibility