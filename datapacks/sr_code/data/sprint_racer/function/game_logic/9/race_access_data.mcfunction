execute as @e[tag=random,scores={rNumber=1..50}] run scoreboard players operation @s tvPoolNum = @s rNumber
execute as @e[tag=random,scores={rNumber=1..50}] run scoreboard players operation @s tvPoolNum -= @e[limit=1,tag=w] tvPoolNum

tag @e[tag=random,limit=1,scores={rNumber=1..50,tvPoolNum=0}] add focusT
execute if entity @e[tag=focusT,tag=rtBlacklist] run tag @e[tag=w,type=armor_stand] add focusTrackBan
execute unless entity @e[tag=focusT,tag=rtBlacklist] run tag @e[tag=w,type=armor_stand] remove focusTrackBan