scoreboard players set global math 0
execute as @e[tag=voteViable,tag=!b_1_only,scores={randomCooldown2=..0}] run scoreboard players add global math 1
execute if score global math matches 3.. run tag @e[type=armor_stand,tag=b_1_only,tag=voteViable] remove voteViable