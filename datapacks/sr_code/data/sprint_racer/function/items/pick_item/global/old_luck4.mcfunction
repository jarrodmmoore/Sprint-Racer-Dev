scoreboard players set @s lastCatPicked 5

tag @s add itemGetType
tag @e[tag=tempBan] remove tempBan

execute if entity @e[tag=w,tag=banNo17] run tag @e[tag=random,scores={rNumber=1..6}] add tempBan
execute if entity @e[tag=w,tag=banNo18] run tag @e[tag=random,scores={rNumber=7..14}] add tempBan
execute if entity @e[tag=w,tag=banNo19] run tag @e[tag=random,scores={rNumber=15..26}] add tempBan
execute if entity @e[tag=w,tag=banNo20] run tag @e[tag=random,scores={rNumber=27..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..6}] run function sprint_racer_language:gameplay/give_item/no17
execute if entity @s[scores={rNumber=7..14}] run function sprint_racer_language:gameplay/give_item/no18
execute if entity @s[scores={rNumber=15..26}] run function sprint_racer_language:gameplay/give_item/no19
execute if entity @s[scores={rNumber=27..40}] run function sprint_racer_language:gameplay/give_item/no20

tag @e[tag=tempBan] remove tempBan