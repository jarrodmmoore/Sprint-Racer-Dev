scoreboard players operation #math value = @e[limit=1,tag=currentMaster,x=1548,y=155,z=406,distance=..1,type=armor_stand] customAIdiff

execute unless score #math value matches 0 run tag @s remove very_easy_ai
execute unless score #math value matches 0 run tag @s remove tryhard

execute if score #math value matches 1 run tag @s add very_easy_ai
execute if score #math value matches 1..2 run scoreboard players set @s aiSkill 1
execute if score #math value matches 3 run scoreboard players set @s aiSkill 2
execute if score #math value matches 4..5 run scoreboard players set @s aiSkill 3
execute if score #math value matches 5.. run tag @s add tryhard