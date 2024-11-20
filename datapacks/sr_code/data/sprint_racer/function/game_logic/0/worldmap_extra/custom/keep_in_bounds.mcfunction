execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
execute as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= @s customTrackID
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
execute as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @s customTrackBID

#not doing wrapping, that's too difficult for custom tracks

tag @e[tag=focusT] remove focusT

#race
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1,wmCustomNum=..0}] wmCustomNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1,wmCustomNum=1..}] unless entity @e[tag=customrace,scores={customDummyID=..0}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomNum 1


#battle
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2,wmCustomNum=..0}] wmCustomNum 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2,wmCustomNum=1..}] unless entity @e[tag=custombattle,scores={customDummyBID=..0}] run scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] wmCustomNum 1

#now update the display...
function sprint_racer:game_logic/0/worldmap_extra/custom/update_display/_index

#tag the current track as the focus

tag @e[tag=wmCustomFocus] remove wmCustomFocus

scoreboard players set @e[tag=customtrack,tag=customrace] customDummyID 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= @s customTrackID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run tag @e[limit=1,sort=random,tag=customtrack,tag=customrace,scores={customDummyID=0}] add wmCustomFocus

scoreboard players set @e[tag=customtrack,tag=custombattle] customDummyBID 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @s customTrackBID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run tag @e[limit=1,sort=random,tag=customtrack,tag=custombattle,scores={customDummyBID=0}] add wmCustomFocus
