#lap count was changed? change time limit, too

#get number of additional laps
scoreboard players set @s math 1
scoreboard players operation @s math2 = @s lap
scoreboard players operation @s math2 -= @s math

#add 7 min for every added lap
scoreboard players set @s math 4200
scoreboard players operation @s math *= @s math2
scoreboard players operation @s timeRemaining2 += @s math

scoreboard players set @s math 7
scoreboard players operation @s math *= @s math2
scoreboard players operation @s countTimeMin += @s math

tag @s remove hideLaps