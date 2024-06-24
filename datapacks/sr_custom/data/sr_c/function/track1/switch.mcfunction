#example code for a switch
#this is usually activated using a command block on the track with a command like "function sr_c:track1/switch"

#if you want a switch on your track, you'll need to set the switch to a default state at some point in "start_countdown"


tag @e[tag=w,tag=switchON] add turnItOff

#TURN ON (LIME)
#execute if entity @e[tag=w,tag=!turnItOff] run <do something>
execute if entity @e[tag=w,tag=!turnItOff] run fill 107 60 1733 107 60 1735 lime_wool
execute if entity @e[tag=w,tag=!turnItOff] run function sprint_racer_language:levels/switch_pressed_on
execute if entity @e[tag=w,tag=!turnItOff] run tag @e[tag=w,type=armor_stand] add switchON

#TURN OFF (RED)
#execute if entity @e[tag=w,tag=turnItOff] run <do something>
execute if entity @e[tag=w,tag=turnItOff] run fill 107 60 1733 107 60 1735 red_wool
execute if entity @e[tag=w,tag=turnItOff] run function sprint_racer_language:levels/switch_pressed_off
execute if entity @e[tag=w,tag=turnItOff] run tag @e[tag=w,type=armor_stand] remove switchON

tag @e[tag=w,type=armor_stand] remove turnItOff