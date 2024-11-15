#race
scoreboard players set @e[tag=w,scores={tvPoolMode=1,tvPoolNum=55..}] tvPoolNum 1
scoreboard players set @e[tag=w,scores={tvPoolMode=1,tvPoolNum=..0}] tvPoolNum 54
execute if score #secret_track_r value matches 1 run scoreboard players set @e[tag=w,type=armor_stand,scores={tvPoolMode=1}] tvPoolNum 50
execute if score #secret_track_r value matches 1 run scoreboard players set #secret_track_r value 0

#battle
scoreboard players set @e[tag=w,scores={tvPoolMode=2,tvPoolNum=20..}] tvPoolNum 1
scoreboard players set @e[tag=w,scores={tvPoolMode=2,tvPoolNum=..0}] tvPoolNum 19
execute if score #secret_track_b value matches 1 run scoreboard players set @e[tag=w,type=armor_stand,scores={tvPoolMode=2}] tvPoolNum 50
execute if score #secret_track_b value matches 1 run scoreboard players set #secret_track_b value 0

#now update the display...
function sprint_racer:game_logic/9/update_display/_index