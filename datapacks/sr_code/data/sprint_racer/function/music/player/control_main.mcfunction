#1 = next
#2 = previous
#3 = back to default

execute if entity @s[scores={BGMcontrol=1}] at @s run function sprint_racer:music/player/control_next
execute if entity @s[scores={BGMcontrol=2}] at @s run function sprint_racer:music/player/control_previous

#revert to 0 afterwards
scoreboard players set @s BGMcontrol 0

#always show menu and current song
function sprint_racer:music/player/announce_index
function sprint_racer_language:_dlc_2/music/radio_menu