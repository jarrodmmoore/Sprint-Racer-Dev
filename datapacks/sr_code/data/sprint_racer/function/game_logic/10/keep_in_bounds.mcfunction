execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= @s customTrackID
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @s customTrackBID

#not doing wrapping, that's too difficult for custom tracks

tag @e[tag=focusT] remove focusT

#race
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1,tvPoolNum=..0}] tvPoolNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1,tvPoolNum=1..}] unless entity @e[tag=customrace,scores={customDummyID=..0}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1


#battle
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2,tvPoolNum=..0}] tvPoolNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2,tvPoolNum=1..}] unless entity @e[tag=custombattle,scores={customDummyBID=..0}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1

#now update the display...
#function sprint_racer:game_logic/10/update_display/_index
function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display