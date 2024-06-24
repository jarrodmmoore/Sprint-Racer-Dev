scoreboard players remove @s[scores={aiStuckTime2=1..}] aiStuckTime2 1
scoreboard players remove @s[scores={aiStuckTime2=1..}] aiStuckTime2 1
execute positioned ~-2 0 ~-2 if entity @e[tag=myCHILDtarget,dx=4,dy=300,dz=4] run scoreboard players add @s aiStuckTime2 4