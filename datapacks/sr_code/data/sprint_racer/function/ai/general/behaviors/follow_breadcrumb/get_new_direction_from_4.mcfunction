tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=randomNOGO] remove randomNOGO

#can only choose directions that are NOT null for the breadcrumb we hit, here we ban the null ones
execute if entity @s[scores={AIBC_dir4=0}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..8}] add randomNOGO
execute if entity @s[scores={AIBC_dir1=0}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=9..10}] add randomNOGO
execute if entity @s[scores={AIBC_dir2=0}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add randomNOGO
execute if entity @s[scores={AIBC_dir3=0}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=12..13}] add randomNOGO

execute if entity @s[scores={aiReverseCooldn=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] add randomNOGO
execute unless entity @e[tag=!randomNOGO,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..13}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11}] remove randomNOGO

#pick a number between 1 and 13
#ai favors the direction it is already facing, neighboring directions are less likely but have equal odds to eachother, opposite direction is rare
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=!randomNOGO,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..13}] rNumber

scoreboard players set @s[scores={rNumber=..8}] aiDirection 4
scoreboard players set @s[scores={rNumber=9..10}] aiDirection 1
scoreboard players set @s[scores={rNumber=11}] aiDirection 2
scoreboard players set @s[scores={rNumber=12..13}] aiDirection 3

scoreboard players set @s[scores={rNumber=11}] aiReverseCooldn 100

#long time since engagement in battle? consider moving in the direction of a player
execute if entity @s[scores={AIBC_engagemt=..0}] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/stalk_player/think

tag @s add gotdir
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=randomNOGO] remove randomNOGO