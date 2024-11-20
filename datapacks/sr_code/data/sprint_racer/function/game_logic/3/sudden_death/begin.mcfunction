tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add suddenDeath

scoreboard players set @a[tag=playing,tag=!eliminated] playerLives 1
scoreboard players set @e[tag=AImaster,tag=!aiDisable] playerLives 1

execute as @e[tag=AImaster] run function sprint_racer:game_logic/3/master_send_data_to_entity

function sprint_racer_language:_dlc_1/gameplay/sudden_death_start