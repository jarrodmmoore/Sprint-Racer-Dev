#calculate how long a lap is expected to take based on given time limit and lap count
scoreboard players operation @s math = @s timeRemaining
scoreboard players remove @s math 1409
scoreboard players operation @s math /= @s lap

#find the difference between our modified lap count and default lap count
scoreboard players operation @s math2 = @s gpModifier
scoreboard players operation @s math2 -= @s lap

#time added = (time per lap) * (lap difference)
scoreboard players operation @s math *= @s math2

#if 1 lap or more was added, increase the time limit ^
execute if score @s gpModifier matches 1.. run scoreboard players operation @s timeRemaining += @s math

#now set the lap count
scoreboard players operation @s lap = @s gpModifier

#announce
function sprint_racer_language:_dlc_3/grand_prix/applied_lap_modifier