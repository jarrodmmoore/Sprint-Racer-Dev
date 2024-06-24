tag @e[type=armor_stand,tag=chosenTrack] remove chosenTrack

#increment sequence number
scoreboard players add @s trackSequenceB 1
scoreboard players set @s[scores={trackSequenceB=..0}] trackSequenceB 1
scoreboard players set @s[scores={trackSequenceB=51..}] trackSequenceB 1

#find the armor stand that matches our sequence number
execute as @e[type=armor_stand,tag=random,tag=trackStandB,scores={rNumber=1..50}] run scoreboard players operation @s math = @s rNumber
scoreboard players operation @e[type=armor_stand,tag=random,tag=trackStandB,scores={rNumber=1..50}] math -= @e[tag=w,limit=1,type=armor_stand] trackSequenceB

#choose the track that matches! (unless blacklisted)
tag @e[limit=1,type=armor_stand,tag=random,tag=trackStandB,tag=!btBlacklist,scores={rNumber=1..50,math=0}] add chosenTrack
execute if entity @e[type=armor_stand,tag=chosenTrack] run function sprint_racer_language:_dlc_2/lobby/track_sequence_number_battle

#no un-blacklisted tracks exist? go straight to track 50
execute unless entity @e[type=armor_stand,tag=chosenTrack] unless entity @e[type=armor_stand,tag=trackStandB,tag=!btBlacklist] run tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add chosenTrack

#no chosen track? recursion until we get one!
execute unless entity @e[type=armor_stand,tag=chosenTrack] run function sprint_racer:random/in_order_battle