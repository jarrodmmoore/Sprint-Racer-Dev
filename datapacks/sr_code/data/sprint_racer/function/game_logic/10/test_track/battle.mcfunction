tag @e[tag=focusT,limit=1,type=armor_stand] add chosenTrack
tag @e[tag=focusT,type=armor_stand,tag=customrace] remove chosenTrack

#IMPORTANT TAG
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add customTesting

execute if entity @e[tag=chosenTrack] run function sprint_racer_language:_dlc_2/lobby/custom_track/now_testing

execute if entity @e[tag=chosenTrack] run function sprint_racer:game_logic/3/_initialize