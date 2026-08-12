#pick one of the bots that has the most points
scoreboard players add @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] aiPoints 0
scoreboard players set #maxBotPoints value -1
scoreboard players operation #maxBotPoints value > @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] aiPoints
execute as @e[type=armor_stand,tag=AImaster,x=1548,y=155,z=406,distance=..1] if score @s aiPoints >= #maxBotPoints value run tag @s add possible_ai_rival
tag @e[tag=rivalAImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] remove rivalAImaster
tag @e[tag=possible_ai_rival,type=armor_stand,x=1548,y=155,z=406,distance=..1,limit=1,sort=random] add rivalAImaster
tag @e[tag=possible_ai_rival,type=armor_stand,x=1548,y=155,z=406,distance=..1] remove possible_ai_rival
