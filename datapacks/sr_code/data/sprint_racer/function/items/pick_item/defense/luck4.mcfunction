scoreboard players set @s lastCatPicked 2

tag @s add itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

execute if entity @e[tag=w,type=armor_stand,tag=banNo5] run tag @e[tag=random,scores={rNumber=1..13}] add tempBan
execute if entity @e[tag=w,type=armor_stand,tag=banNo6] run tag @e[tag=random,scores={rNumber=14..26}] add tempBan
execute if entity @e[tag=w,type=armor_stand,tag=banNo7] run tag @e[tag=random,scores={rNumber=27..37}] add tempBan
execute if entity @e[tag=w,type=armor_stand,tag=banNo8] run tag @e[tag=random,scores={rNumber=38..40}] add tempBan

#don't let players have more than 1 totem of undying
execute store result score #test value run clear @s totem_of_undying[custom_data~{item:1b}] 0
execute if score #test value matches 1.. unless entity @e[tag=w,type=armor_stand,tag=banNo5,tag=banNo6,tag=banNo7] run tag @e[tag=random,scores={rNumber=38..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..13}] run function sprint_racer_language:gameplay/give_item/no5
execute if entity @s[scores={rNumber=14..26}] run function sprint_racer_language:gameplay/give_item/no6
execute if entity @s[scores={rNumber=27..37}] run function sprint_racer_language:gameplay/give_item/no7
execute if entity @s[scores={rNumber=38..40}] run function sprint_racer_language:gameplay/give_item/no8

tag @e[tag=tempBan,type=armor_stand] remove tempBan