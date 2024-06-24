tag @s remove very_easy_ai
tag @s remove tryhard
execute if score @e[limit=1,tag=currentMaster,type=armor_stand] customAIdiff matches 1 run tag @s add very_easy_ai
execute if score @e[limit=1,tag=currentMaster,type=armor_stand] customAIdiff matches ..2 run scoreboard players set @s aiSkill 1
execute if score @e[limit=1,tag=currentMaster,type=armor_stand] customAIdiff matches 3 run scoreboard players set @s aiSkill 2
execute if score @e[limit=1,tag=currentMaster,type=armor_stand] customAIdiff matches 4..5 run scoreboard players set @s aiSkill 3
execute if score @e[limit=1,tag=currentMaster,type=armor_stand] customAIdiff matches 5.. run tag @s add tryhard