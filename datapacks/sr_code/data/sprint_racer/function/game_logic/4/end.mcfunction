#end grand prix here
scoreboard players set @e[tag=w,type=armor_stand,tag=grandprix] gpRound 1
execute if entity @s[tag=w,type=armor_stand,tag=grandprix,tag=!grandprixloop] run scoreboard players set grandprix gameState 0

execute if entity @s[tag=w,type=armor_stand,tag=grandprix,tag=!grandprixloop] run setblock 1615 81 369 stone_button[facing=north]
execute if entity @s[tag=w,type=armor_stand,tag=grandprix,tag=!grandprixloop] run setblock 1611 81 369 stone_button[facing=north]

tag @e[tag=w,type=armor_stand,tag=grandprix,tag=!grandprixloop] remove grandprix
scoreboard objectives remove gpPoints
scoreboard objectives add gpPoints dummy

#change the lobby back to normal
function sprint_racer:game_logic/0/misc_lobby_happenings/remove_lingering_podium

scoreboard objectives setdisplay sidebar
#CLEAR POINTS NOW
function sprint_racer:game_logic/0/clear_points

scoreboard players set @e[tag=w,type=armor_stand] roundNumber2 1

tag @e[name=,type=armor_stand] remove ceremony

execute as @a at @s run function sprint_racer:game_logic/0/goto_spawn
#tag @a remove readyup
#scoreboard players set @e[tag=w,type=armor_stand] readyState 0
scoreboard players set @e[tag=w,type=armor_stand] maturity 4
function sprint_racer:game_logic/0/_initialize_for_real