#assign position to the player we represent
execute if entity @s[tag=!nonPlayer] on target run function sprint_racer:game_logic/1/position_calc/improved/get_pos_player

#execute on target via interaction entity doesn't work on non-players. super lame...
execute if entity @s[tag=nonPlayer] run scoreboard players operation #checkID value = @s playerID
execute if entity @s[tag=nonPlayer] at @s as @e[tag=ai,distance=..1] if score @s playerID = #checkID value run function sprint_racer:game_logic/1/position_calc/improved/get_pos_player

#we've done our job. we're gone
kill @s