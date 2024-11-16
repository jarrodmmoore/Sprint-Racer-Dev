scoreboard players set @s resetCooldown 0
function sprint_racer:game_logic/1/reset/player_use_reset
execute if entity @e[tag=w,tag=!customTesting,scores={gameTime=..170}] run function sprint_racer_language:_dlc_3/track_load_failed_return_to_lobby
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=61a] run function sprint_racer:death_logic/elimination_after_death