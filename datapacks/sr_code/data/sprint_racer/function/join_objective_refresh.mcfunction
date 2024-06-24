#in testing we kept encountering a bug where players wouldn't initialize correctly
#due to their "join" objective not incrementing upon joining the world
#this fixes that lol

tag @a[scores={join=100}] add validJoinedPlayer

scoreboard objectives remove join
scoreboard objectives add join minecraft.custom:minecraft.leave_game

scoreboard players set @a[tag=validJoinedPlayer] join 100

tag @a[tag=validJoinedPlayer] remove validJoinedPlayer


#might as well tack this on here since I want this to run periodically but not super often...
function sprint_racer:refresh_area_effect_clouds