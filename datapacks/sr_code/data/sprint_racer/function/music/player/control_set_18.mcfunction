#the "18" in the title is now a lie
#we have more than 18 music tracks ;)

execute if entity @e[tag=w,type=armor_stand,tag=realms] run scoreboard players set @s BGMtrack 20
execute unless entity @e[tag=w,type=armor_stand,tag=realms] run scoreboard players set @s BGMtrack 35

scoreboard players set @s musicTime 3

tag @s remove musicDef
tag @s add musicSel