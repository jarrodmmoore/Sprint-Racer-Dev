scoreboard players set @s resetCooldown 0
function sprint_racer:game_logic/1/reset/player_use_reset
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=61a] run function sprint_racer:death_logic/elimination_after_death