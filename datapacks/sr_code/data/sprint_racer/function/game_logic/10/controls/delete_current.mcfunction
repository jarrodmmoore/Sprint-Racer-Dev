#get chat off the screen so playes don't hit the chat button again on accident
tellraw @s ["",{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]

#feedback message
function sprint_racer_language:_dlc_1/lobby/custom_track/track_deleted

#kill the track
kill @e[tag=focusT]

#shift down IDs of all tracks that follow this one
execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= @s customTrackID
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] tvPoolNum
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @s customTrackBID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run scoreboard players remove @e[tag=customrace,scores={customDummyID=..-1}] customTrackID 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run scoreboard players remove @e[tag=custombattle,scores={customDummyBID=..-1}] customTrackBID 1

#next track down is the focus, now
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] if entity @e[tag=customrace] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolNum=..0}] tvPoolNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] unless entity @e[tag=customrace] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolNum=..-1}] tvPoolNum 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] if entity @e[tag=custombattle] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolNum=..0}] tvPoolNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] unless entity @e[tag=custombattle] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolNum=..-1}] tvPoolNum 0
function sprint_racer:game_logic/10/update_display/_index

scoreboard players set @s inputCooldown 15