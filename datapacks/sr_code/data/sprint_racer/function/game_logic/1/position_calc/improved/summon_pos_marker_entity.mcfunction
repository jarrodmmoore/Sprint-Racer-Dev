data merge entity @s {Tags:["playerPosMarker"],width:0,height:0,interaction:{player:[I;0,0,0,0],timestamp:0L}}

#get data from the player we're representing
data modify entity @s interaction.player set from storage sprint_racer:player_pos_calc uuid
execute store result score @s lap run data get storage sprint_racer:player_pos_calc lap
execute store result score @s check run data get storage sprint_racer:player_pos_calc check

#we'll be killed as soon as we assign position to our interaction.player, but we'll also die at the end of this tick as a failsafe
scoreboard players set @s lifespan 0