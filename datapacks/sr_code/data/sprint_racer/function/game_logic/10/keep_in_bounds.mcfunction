execute as @e[tag=customtrack,type=armor_stand,tag=customrace] run scoreboard players operation @s customDummyID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
execute as @e[tag=customtrack,type=armor_stand,tag=customrace] run scoreboard players operation @s customDummyID -= @s customTrackID
execute as @e[tag=customtrack,type=armor_stand,tag=custombattle] run scoreboard players operation @s customDummyBID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
execute as @e[tag=customtrack,type=armor_stand,tag=custombattle] run scoreboard players operation @s customDummyBID -= @s customTrackBID

scoreboard players set #max_race_track_id value 0
scoreboard players operation #max_race_track_id value > @e[tag=customtrack,type=armor_stand,tag=customrace] customTrackID
scoreboard players set #max_battle_track_id value 0
scoreboard players operation #max_battle_track_id value > @e[tag=customtrack,type=armor_stand,tag=custombattle] customTrackBID

#not doing wrapping, that's too difficult for custom tracks

tag @e[tag=focusT] remove focusT

#race
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1,tvPoolNum=..0}] tvPoolNum 1
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1,tvPoolNum=1..}] if score @s tvPoolNum >= #max_race_track_id value run scoreboard players operation @s tvPoolNum = #max_race_track_id value


#battle
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2,tvPoolNum=..0}] tvPoolNum 1
execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2,tvPoolNum=1..}] if score @s tvPoolNum >= #max_battle_track_id value run scoreboard players operation @s tvPoolNum = #max_battle_track_id value

#now update the display...

function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display