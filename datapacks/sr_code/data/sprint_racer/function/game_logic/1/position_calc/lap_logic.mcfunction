#the number of checkpoints is the number of times we'll need to run check_logic for this lap
#adding 1 also to make things less confusing later
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] checkCalc = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] check
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] checkCalc 1

#this makes sure only players on the lap we're currently testing will be tested and given positions
tag @e[tag=pCalcTarget] remove pCalcTarget
execute as @e[tag=activeplayer,tag=!finished] run scoreboard players operation @s lapCalc = @s storedLap
scoreboard players operation @e[tag=activeplayer,tag=!finished] lapCalc -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] lapCalc
tag @e[tag=activeplayer,tag=!finished,scores={lapCalc=0}] add pCalcTarget

#may as well just start running this to save ticks
function sprint_racer:game_logic/1/position_calc/check_logic