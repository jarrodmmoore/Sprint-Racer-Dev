#elimination sub-gamemode ONLY, make adjustments to the lap count before calculation
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gamemodePresetA=2}] run function sprint_racer:game_logic/1/elimination/lap_adjust



#players copy w's "racePosCalc" value one at a time in order of how far they are into the racePosCalc
#and after each time it gets copied, w's "racePosCalc" value increments
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] racePosCalc = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] finishPos
scoreboard players reset @e[name=!"w",scores={racePosCalc=-100..}] racePosCalc

#finished players don't need to get calculated, so we'll just give them their finish position value since that isn't going to change
execute as @e[tag=playing,tag=finished] run scoreboard players operation @s racePosCalc = @s finishPos
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=finished] run scoreboard players operation @s racePosCalc = @s finishPos

#players' lap and checkpoint values can change during calculation which causes problems
#so we use an extra dummy objective that stays constant throughout each position calculator cycle to avoid these problems
execute as @e[tag=activeplayer,tag=!finished,scores={lap=0..,check=0..}] run scoreboard players operation @s storedLap = @s lap
execute as @e[tag=activeplayer,tag=!finished,scores={lap=0..,check=0..}] run scoreboard players operation @s storedCheck = @s check

tag @e[tag=gotCalc] remove gotCalc

#calculations must be performed for every possible lap players can be on
#lapCalc keeps track of how many times this needs to be done
#calculation starts with the final lap and goes back to lap 1 since players on later laps obviously should have better placements
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lapCalc = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] lap
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] checkCalc 0

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcStart
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove calcEnd
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add calcRunning