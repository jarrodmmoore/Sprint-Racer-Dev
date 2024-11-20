execute if entity @s[scores={cl_trigger=1}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapType 1
execute if entity @s[scores={cl_trigger=2}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapType 2

execute if entity @s[scores={cl_trigger=10}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapOffset 1
execute if entity @s[scores={cl_trigger=11}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapOffset 1

execute if entity @s[scores={cl_trigger=20}] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapMult 20
execute if entity @s[scores={cl_trigger=21}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapMult 20

#value limits
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={customLapOffset=..-50}] customLapOffset -50
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={customLapOffset=50..}] customLapOffset 50

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={customLapMult=..20}] customLapMult 20
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={customLapMult=500..}] customLapMult 500

#refresh menu
scoreboard players reset @s cl_trigger
function sprint_racer_language:_dlc_4/lobby/options/custom_laps