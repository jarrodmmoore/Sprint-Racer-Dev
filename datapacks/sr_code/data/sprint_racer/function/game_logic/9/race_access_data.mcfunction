execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..60}] run scoreboard players operation @s tvPoolNum = @s rNumber
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..60}] run scoreboard players operation @s tvPoolNum -= @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] tvPoolNum

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,limit=1,scores={rNumber=1..60,tvPoolNum=0}] add focusT
execute if entity @e[tag=focusT,type=armor_stand,tag=rtBlacklist] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add focusTrackBan
execute unless entity @e[tag=focusT,type=armor_stand,tag=rtBlacklist] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove focusTrackBan