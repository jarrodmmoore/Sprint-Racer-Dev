#run by "chosenTrack" (unless it's a custom track)

scoreboard players operation @s worldmapID = @s rNumber
function sprint_racer:game_logic/6/worldmap_say_name
scoreboard players reset @s worldmapID