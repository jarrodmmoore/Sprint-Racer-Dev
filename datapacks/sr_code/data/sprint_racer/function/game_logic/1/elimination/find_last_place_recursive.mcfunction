tag @e[tag=notInRange] remove notInRange

#check the race position value
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] math 1

#find players who's race position matches the value we're checking
scoreboard players set @e[tag=activeplayer,tag=!eliminated,tag=!counted] math2 0
execute as @e[tag=activeplayer,tag=!eliminated,tag=!counted] run scoreboard players operation @s math2 = @s racePosDisplay
execute as @e[tag=activeplayer,tag=!eliminated,tag=!counted] run scoreboard players operation @s math2 -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] math

#if these are the last positioned players, tag them as the next elimination and stop repeating
tag @e[tag=notInRange] remove notInRange
tag @e[tag=activeplayer,tag=!eliminated,tag=!counted,scores={math2=1..}] add notInRange
execute unless entity @e[tag=notInRange] run tag @e[tag=activeplayer,tag=!counted,tag=!eliminated,scores={math2=..0}] add lastplace
tag @e[tag=activeplayer,tag=!eliminated,tag=!counted,scores={math2=..0}] add counted

#if there are still more players to check, repeat the function
execute if entity @e[tag=notInRange] run function sprint_racer:game_logic/1/elimination/find_last_place_recursive

#clear tags... this might get run 20 times rapidly but whatever
tag @e[tag=notInRange] remove notInRange