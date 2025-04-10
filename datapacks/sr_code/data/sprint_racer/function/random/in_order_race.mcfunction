tag @e[type=armor_stand,tag=chosenTrack] remove chosenTrack

#increment sequence number
scoreboard players add @s trackSequenceR 1
scoreboard players set @s[scores={trackSequenceR=..0}] trackSequenceR 1
scoreboard players set @s[scores={trackSequenceR=61..}] trackSequenceR 1

#find the armor stand that matches our sequence number
execute as @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=trackStandR,scores={rNumber=1..60}] run scoreboard players operation @s math = @s rNumber
scoreboard players operation @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=trackStandR,scores={rNumber=1..60}] math -= @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] trackSequenceR

#choose the track that matches! (unless blacklisted)
tag @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=trackStandR,tag=!rtBlacklist,scores={rNumber=1..60,math=0}] add chosenTrack
execute if entity @e[type=armor_stand,tag=chosenTrack] run function sprint_racer_language:_dlc_2/lobby/track_sequence_number_race

#no un-blacklisted tracks exist? go straight to track 50
execute unless entity @e[type=armor_stand,tag=chosenTrack] unless entity @e[type=armor_stand,tag=trackStandR,tag=!rtBlacklist] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack

#no chosen track? recursion until we get one!
execute unless entity @e[type=armor_stand,tag=chosenTrack] run function sprint_racer:random/in_order_race