tag @e[tag=counted] remove counted
scoreboard players set @e[tag=w,type=armor_stand] math 0

function sprint_racer:game_logic/1/elimination/find_last_place_recursive
tag @e[tag=counted] remove counted

tag @e[tag=nextelimination] remove nextelimination
tag @e[tag=lastplace] add nextelimination
tag @e[tag=lastplace] remove lastplace

#time until elimination expired? eliminate last place!
execute if entity @e[tag=w,scores={timeUntilElim=0}] as @e[tag=nextelimination] at @s run function sprint_racer:game_logic/1/elimination/eliminate_last_place