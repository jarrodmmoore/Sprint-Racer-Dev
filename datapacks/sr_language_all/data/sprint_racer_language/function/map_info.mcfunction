###################################################################################### ! REMEMBER TO SET MAP mapVersion BELOW !
execute unless entity @e[tag=w,type=armor_stand,tag=realms] run tellraw @s ["",{"text":"Map version: 1.5.10","bold":false,"color":"gray"}]
scoreboard players set @e[tag=w,type=armor_stand] mapVersion 10510