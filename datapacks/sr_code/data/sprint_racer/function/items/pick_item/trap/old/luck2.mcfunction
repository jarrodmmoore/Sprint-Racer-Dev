tag @s add itemGetType
tag @e[tag=tempBan] remove tempBan

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo13] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..14}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo14] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=15..26}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo15] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=27..34}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo16] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=35..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..14}] run function sprint_racer_language:gameplay/give_item/no13
execute if entity @s[scores={rNumber=15..26}] run function sprint_racer_language:gameplay/give_item/no14
execute if entity @s[scores={rNumber=27..34}] run function sprint_racer_language:gameplay/give_item/no15
execute if entity @s[scores={rNumber=35..40}] run function sprint_racer_language:gameplay/give_item/no16

tag @e[tag=tempBan] remove tempBan