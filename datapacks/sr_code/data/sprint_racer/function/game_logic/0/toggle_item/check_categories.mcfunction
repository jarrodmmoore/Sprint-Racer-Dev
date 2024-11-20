#calculate how many categories are enabled
scoreboard players set #catRed value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!banRedItem] run scoreboard players set #catRed value 1
scoreboard players set #catYel value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!banYelItem] run scoreboard players set #catYel value 1
scoreboard players set #catBlu value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!banBluItem] run scoreboard players set #catBlu value 1
scoreboard players set #catGre value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!banGreItem] run scoreboard players set #catGre value 1
scoreboard players set #catPur value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!banPurItem] run scoreboard players set #catPur value 1

#calculate total enabled categories
scoreboard players set #catTotal value 0
scoreboard players operation #catTotal value += #catRed value
scoreboard players operation #catTotal value += #catYel value
scoreboard players operation #catTotal value += #catBlu value
scoreboard players operation #catTotal value += #catGre value
scoreboard players operation #catTotal value += #catPur value