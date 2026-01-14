tag @s remove itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

execute if score #catRed value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..25}] add tempBan
execute if score #catYel value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=26..36}] add tempBan
execute if score #catBlu value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=37..41}] add tempBan
execute if score #catGre value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=42..48}] add tempBan
execute if score #catPur value matches 0 run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=49..50}] add tempBan

#don't pick the same category twice in a row, please! (except offense. offense is fine)
execute if score @s lastCatPicked matches 2 if score #catTotal value matches 2.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=26..36}] add tempBan
execute if score @s lastCatPicked matches 3 if score #catTotal value matches 2.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=37..41}] add tempBan
execute if score @s lastCatPicked matches 4 if score #catTotal value matches 2.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=42..48}] add tempBan
execute if score @s lastCatPicked matches 5 if score #catTotal value matches 2.. run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=49..50}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..50}] rNumber
#battle bat banned? re-roll if we didn't get an offensive item
execute if score #battleBatbanned value matches 1.. unless score @s rNumber matches 1..25 run scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..50}] rNumber

execute if score @s rNumber matches 0 if score #catTotal value matches 0 run scoreboard players set @s rNumber 52

execute if entity @s[tag=!itemGetType,scores={rNumber=1..25}] run function sprint_racer:items/pick_item/offense/luck3
execute if entity @s[tag=!itemGetType,scores={rNumber=26..36}] run function sprint_racer:items/pick_item/defense/luck3
execute if entity @s[tag=!itemGetType,scores={rNumber=37..41}] run function sprint_racer:items/pick_item/speed/luck3
execute if entity @s[tag=!itemGetType,scores={rNumber=42..48}] run function sprint_racer:items/pick_item/trap/luck3
execute if entity @s[tag=!itemGetType,scores={rNumber=49..50}] run function sprint_racer:items/pick_item/global/luck3

#obliterator if all items banned
execute if entity @s[tag=!itemGetType,scores={rNumber=52}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!banObliterator] run function sprint_racer_language:_dlc_6/gameplay/give_obliterator {count:1}
execute if entity @s[tag=!itemGetType,scores={rNumber=52}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banObliterator] run function sprint_racer_language:gameplay/give_item/elite0

tag @s remove itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

#note: since we already know the player running this has itemLuck=1...
#we can just send them directly to where they need to go instead of running another "_main" function to determine itemLuck