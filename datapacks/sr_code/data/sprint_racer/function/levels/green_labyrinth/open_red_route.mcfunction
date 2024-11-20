scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] mapZone 3

tag @e[tag=GLcheckpoint] remove posCalc
tag @e[tag=GLcheckpoint,tag=route3] add posCalc

scoreboard players set @e[tag=GLaibcSetMe] AIBC_dir1 9
scoreboard players set @e[tag=GLaibcSetMe] AIBC_event 0
scoreboard players set @e[tag=GLaibcSetMe] AIBC_condition 0

fill 1364 61 818 1370 62 818 air

function sprint_racer_language:levels/green_labyrinth/open_red_route