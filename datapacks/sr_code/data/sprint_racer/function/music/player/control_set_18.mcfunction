#the "18" in the title is now a lie
#we have more than 18 music tracks ;)

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run scoreboard players set @s BGMtrack 21
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run scoreboard players set @s BGMtrack 36

scoreboard players set @s musicTime 3

tag @s remove musicDef
tag @s add musicSel