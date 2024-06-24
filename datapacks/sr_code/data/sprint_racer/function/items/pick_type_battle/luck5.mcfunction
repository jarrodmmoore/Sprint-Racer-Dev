tag @s remove itemGetType
tag @e[tag=tempBan] remove tempBan

execute if score #catRed value matches 0 run tag @e[tag=random,scores={rNumber=1..27}] add tempBan
execute if score #catYel value matches 0 run tag @e[tag=random,scores={rNumber=28..36}] add tempBan
execute if score #catBlu value matches 0 run tag @e[tag=random,scores={rNumber=37}] add tempBan
execute if score #catGre value matches 0 run tag @e[tag=random,scores={rNumber=38..40}] add tempBan
execute if score #catPur value matches 0 run tag @e[tag=random,scores={rNumber=41..50}] add tempBan

#don't pick the same category twice in a row, please! (except offense. offense is fine)
execute if score @s lastCatPicked matches 2 if score #catTotal value matches 2.. run tag @e[tag=random,type=armor_stand,scores={rNumber=28..36}] add tempBan
execute if score @s lastCatPicked matches 3 if score #catTotal value matches 2.. run tag @e[tag=random,type=armor_stand,scores={rNumber=37}] add tempBan
execute if score @s lastCatPicked matches 4 if score #catTotal value matches 2.. run tag @e[tag=random,type=armor_stand,scores={rNumber=38..40}] add tempBan
execute if score @s lastCatPicked matches 5 if score #catTotal value matches 2.. run tag @e[tag=random,type=armor_stand,scores={rNumber=41..50}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,tag=!tempBan,scores={rNumber=1..50}] rNumber

execute if entity @s[tag=!itemGetType,scores={rNumber=1..27}] run function sprint_racer:items/pick_item/offense/luck5
execute if entity @s[tag=!itemGetType,scores={rNumber=28..36}] run function sprint_racer:items/pick_item/defense/luck5
execute if entity @s[tag=!itemGetType,scores={rNumber=37}] run function sprint_racer:items/pick_item/speed/luck5
execute if entity @s[tag=!itemGetType,scores={rNumber=38..40}] run function sprint_racer:items/pick_item/trap/luck5
execute if entity @s[tag=!itemGetType,scores={rNumber=41..50}] run function sprint_racer:items/pick_item/global/luck5

tag @s remove itemGetType
tag @e[tag=tempBan] remove tempBan

#note: since we already know the player running this has itemLuck=1...
#we can just send them directly to where they need to go instead of running another "_main" function to determine itemLuck