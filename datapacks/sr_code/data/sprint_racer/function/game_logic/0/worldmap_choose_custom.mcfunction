#choose the custom track whose custom track ID matches the custom track selector's wmCustomNum

scoreboard players set @e[tag=customtrack,tag=customrace] customDummyID 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] as @e[tag=customtrack,tag=customrace] run scoreboard players operation @s customDummyID -= @s customTrackID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run tag @e[limit=1,sort=random,tag=customtrack,tag=customrace,scores={customDummyID=0}] add chosenTrack

scoreboard players set @e[tag=customtrack,tag=custombattle] customDummyBID 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] wmCustomNum
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] as @e[tag=customtrack,tag=custombattle] run scoreboard players operation @s customDummyBID -= @s customTrackBID
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run tag @e[limit=1,sort=random,tag=customtrack,tag=custombattle,scores={customDummyBID=0}] add chosenTrack
