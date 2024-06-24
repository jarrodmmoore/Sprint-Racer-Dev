scoreboard players set @s lastCatPicked 5

tag @s add itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

execute if entity @e[tag=w,type=armor_stand,tag=banNo17] run tag @e[tag=random,scores={rNumber=1..14}] add tempBan
execute if entity @e[tag=w,type=armor_stand,tag=banNo18] run tag @e[tag=random,scores={rNumber=15..26}] add tempBan
execute if entity @e[tag=w,type=armor_stand,tag=banNo19] run tag @e[tag=random,scores={rNumber=27..34}] add tempBan
execute if entity @e[tag=w,type=armor_stand,tag=banNo20] run tag @e[tag=random,scores={rNumber=35..40}] add tempBan

#don't let players have more than 1 lightning
execute store result score #test value run clear @s blaze_rod[custom_data~{item:1b}] 0
execute if score #test value matches 1.. unless entity @e[tag=w,type=armor_stand,tag=banNo17,tag=banNo18,tag=banNo19] run tag @e[tag=random,scores={rNumber=35..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..14}] run function sprint_racer_language:gameplay/give_item/no17
execute if entity @s[scores={rNumber=15..26}] run function sprint_racer_language:gameplay/give_item/no18
execute if entity @s[scores={rNumber=27..34}] run function sprint_racer_language:gameplay/give_item/no19
execute if entity @s[scores={rNumber=35..40}] run function sprint_racer_language:gameplay/give_item/no20

tag @e[tag=tempBan,type=armor_stand] remove tempBan