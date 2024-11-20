scoreboard players set @s lastCatPicked 1

tag @s add itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo1] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..11}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo2] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12..22}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo3] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=23..33}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo4] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=34..40}] add tempBan

#don't let players have more than 1 knockback sword
execute store result score #test value run clear @s golden_sword[custom_data~{item:1b}] 0
execute if score #test value matches 1.. unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo1,tag=banNo2,tag=banNo3] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=34..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..11}] run function sprint_racer_language:gameplay/give_item/no1
execute if entity @s[scores={rNumber=12..22}] run function sprint_racer_language:gameplay/give_item/no2
execute if entity @s[scores={rNumber=23..33}] run function sprint_racer_language:gameplay/give_item/no3
execute if entity @s[scores={rNumber=34..40}] run function sprint_racer_language:gameplay/give_item/no4

tag @e[tag=tempBan,type=armor_stand] remove tempBan