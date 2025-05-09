#race
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1,tvPoolNum=55..}] tvPoolNum 1
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1,tvPoolNum=..0}] tvPoolNum 54
#execute if score #secret_track_r value matches 1 run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=1}] tvPoolNum 50
#execute if score #secret_track_r value matches 1 run scoreboard players set #secret_track_r value 0

#battle
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2,tvPoolNum=20..}] tvPoolNum 1
#scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2,tvPoolNum=..0}] tvPoolNum 19
#execute if score #secret_track_b value matches 1 run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={tvPoolMode=2}] tvPoolNum 50
#execute if score #secret_track_b value matches 1 run scoreboard players set #secret_track_b value 0

#now update the display...
#function sprint_racer:game_logic/9/update_display/_index
function sprint_racer:game_logic/9/grid_display/ungrouped_stock/update_display