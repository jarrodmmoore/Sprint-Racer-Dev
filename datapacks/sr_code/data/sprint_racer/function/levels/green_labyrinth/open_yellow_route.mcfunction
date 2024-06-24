scoreboard players set @e[tag=w,type=armor_stand] mapZone 2

tag @e[tag=GLcheckpoint] remove posCalc
tag @e[tag=GLcheckpoint,tag=route2] add posCalc

execute as @e[tag=node,tag=GLtpnode] at @s run tp @s ~ 51 ~
fill 1334 60 817 1336 60 819 stone

fill 1334 61 815 1336 62 815 air

function sprint_racer_language:levels/green_labyrinth/open_yellow_route