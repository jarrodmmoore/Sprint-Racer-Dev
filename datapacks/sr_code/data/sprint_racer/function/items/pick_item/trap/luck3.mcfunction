scoreboard players set @s lastCatPicked 4

tag @s add itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo13] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..13}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo14] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=14..16}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo15] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=17..28}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo16] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=29..40}] add tempBan

#don't let players have more than 1 nasty potion (this is unlikely, but we'll account for it anyway)
execute store result score #test value run clear @s lingering_potion[custom_data~{item:1b}] 0
execute if score #test value matches 1.. unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo13,tag=banNo15,tag=banNo16] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=14..16}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..13}] run function sprint_racer_language:gameplay/give_item/no13
execute if entity @s[scores={rNumber=14..16}] run function sprint_racer_language:gameplay/give_item/no14
execute if entity @s[scores={rNumber=17..28}] run function sprint_racer_language:gameplay/give_item/no15
execute if entity @s[scores={rNumber=29..40}] run function sprint_racer_language:gameplay/give_item/no16

tag @e[tag=tempBan,type=armor_stand] remove tempBan