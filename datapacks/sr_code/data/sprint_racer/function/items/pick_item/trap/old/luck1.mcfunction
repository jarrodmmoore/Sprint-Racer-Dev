tag @s add itemGetType
tag @e[tag=tempBan] remove tempBan

execute if entity @e[tag=w,tag=banNo13] run tag @e[tag=random,scores={rNumber=1..18}] add tempBan
execute if entity @e[tag=w,tag=banNo14] run tag @e[tag=random,scores={rNumber=19..33}] add tempBan
execute if entity @e[tag=w,tag=banNo15] run tag @e[tag=random,scores={rNumber=34..38}] add tempBan
execute if entity @e[tag=w,tag=banNo16] run tag @e[tag=random,scores={rNumber=39..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..18}] run function sprint_racer_language:gameplay/give_item/no13
execute if entity @s[scores={rNumber=19..33}] run function sprint_racer_language:gameplay/give_item/no14
execute if entity @s[scores={rNumber=34..38}] run function sprint_racer_language:gameplay/give_item/no15
execute if entity @s[scores={rNumber=39..40}] run function sprint_racer_language:gameplay/give_item/no16

tag @e[tag=tempBan] remove tempBan