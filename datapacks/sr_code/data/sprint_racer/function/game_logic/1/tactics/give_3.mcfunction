#initial setup
scoreboard players set @s tacticsSequence 1
scoreboard players set @s tacticsStep 1

#if apples aren't banned, always give one at the start 
execute if entity @e[tag=w,type=armor_stand,tag=banNo5] run function sprint_racer:game_logic/1/tactics/give_1
execute unless entity @e[tag=w,type=armor_stand,tag=banNo5] run function sprint_racer_language:gameplay/give_item/no5
function sprint_racer:game_logic/1/tactics/give_1
function sprint_racer:game_logic/1/tactics/give_1