scoreboard players set @s lastCatPicked 3

tag @s add itemGetType
tag @e[tag=tempBan,type=armor_stand] remove tempBan

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo9] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..8}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo10] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9..16}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo11] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=17..32}] add tempBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo12] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=33..40}] add tempBan

#don't let players have more than 1 elytra
execute store result score #test value run clear @s elytra[custom_data~{item:1b}] 0
execute if score #test value matches 1.. unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=banNo9,tag=banNo10,tag=banNo11] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=33..40}] add tempBan

#pick a random number, ignoring any banned item types
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=!tempBan,scores={rNumber=1..40}] rNumber

execute if entity @s[scores={rNumber=1..8}] run function sprint_racer_language:gameplay/give_item/no9
execute if entity @s[scores={rNumber=9..16}] run function sprint_racer_language:gameplay/give_item/no10
execute if entity @s[scores={rNumber=17..32}] run function sprint_racer_language:gameplay/give_item/no11
execute if entity @s[scores={rNumber=33..40}] run function sprint_racer_language:gameplay/give_item/no12

tag @e[tag=tempBan,type=armor_stand] remove tempBan