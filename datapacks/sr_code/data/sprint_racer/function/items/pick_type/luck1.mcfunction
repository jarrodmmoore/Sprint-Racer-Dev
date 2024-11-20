tag @s remove itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

#don't pick a category that has all of its items banned
execute if score #catRed value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..13}] add tempBan
execute if score #catYel value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14..31}] add tempBan
#execute if score #catBlu value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=26..30}] add tempBan
execute if score #catGre value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=32..50}] add tempBan
#execute if score #catPur value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..5}] add tempBan

#don't pick the same category twice in a row, please!
execute if score @s lastCatPicked matches 1 if score #catTotal value matches 4.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..13}] add tempBan
execute if score @s lastCatPicked matches 2 if score #catTotal value matches 4.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=14..31}] add tempBan
execute if score @s lastCatPicked matches 4 if score #catTotal value matches 4.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=32..50}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=!tempBan,scores={rNumber=1..50}] rNumber

execute if entity @s[scores={rNumber=0}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banRedItem,tag=banYelItem,tag=banGreItem,tag=!banPurItem] run scoreboard players set @s rNumber 52
execute if entity @s[scores={rNumber=0}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banRedItem,tag=banYelItem,tag=banGreItem,tag=!banBluItem] run scoreboard players set @s rNumber 51

execute if entity @s[tag=!itemGetType,scores={rNumber=1..13}] run function sprint_racer:items/pick_item/offense/luck1
execute if entity @s[tag=!itemGetType,scores={rNumber=14..31}] run function sprint_racer:items/pick_item/defense/luck1
execute if entity @s[tag=!itemGetType,scores={rNumber=51}] run function sprint_racer:items/pick_item/speed/luck1
execute if entity @s[tag=!itemGetType,scores={rNumber=32..50}] run function sprint_racer:items/pick_item/trap/luck1
execute if entity @s[tag=!itemGetType,scores={rNumber=52}] run function sprint_racer:items/pick_item/global/luck1

execute if entity @s[tag=!itemGetType,scores={rNumber=0}] run function sprint_racer_language:gameplay/give_item/no0

tag @s remove itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

#note: since we already know the player running this has itemLuck=1...
#we can just send them directly to where they need to go instead of running another "_main" function to determine itemLuck