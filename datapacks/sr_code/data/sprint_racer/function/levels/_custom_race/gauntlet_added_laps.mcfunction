#lap count was changed? change time limit, too

#get number of additional laps
scoreboard players operation @s math = @e[limit=1,tag=chosenTrack,type=armor_stand] lap
scoreboard players operation @s math2 = @s lap
scoreboard players operation @s math2 -= @s math

#add 6 min for every added lap
scoreboard players set @s math 3600
scoreboard players operation @s math *= @s math2
execute if entity @s[scores={math2=1..}] run scoreboard players operation @s timeRemaining2 += @s math

scoreboard players set @s math 6
scoreboard players operation @s math *= @s math2
execute if entity @s[scores={math2=1..}] run scoreboard players operation @s countTimeMin += @s math

tag @s[scores={lap=2..}] remove hideLaps