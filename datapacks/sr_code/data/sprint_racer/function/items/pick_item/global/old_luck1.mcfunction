scoreboard players set @s lastCatPicked 5

tag @s add itemGetType
tag @e[tag=tempBan] remove tempBan

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo17] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..18}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo18] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=19..33}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo19] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=34..38}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo20] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=39..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..18}] run function sprint_racer_language:gameplay/give_item/no17
execute if entity @s[scores={rNumber=19..33}] run function sprint_racer_language:gameplay/give_item/no18
execute if entity @s[scores={rNumber=34..38}] run function sprint_racer_language:gameplay/give_item/no19
execute if entity @s[scores={rNumber=39..40}] run function sprint_racer_language:gameplay/give_item/no20

tag @e[tag=tempBan] remove tempBan