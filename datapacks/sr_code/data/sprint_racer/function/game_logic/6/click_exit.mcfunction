tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove choosingTrack
function sprint_racer_language:_dlc_1/gameplay/ta_ended
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] run function sprint_racer:game_logic/0/_initialize

tp @s[type=player] 1629 80 365 90 0