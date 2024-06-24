scoreboard players set global math 0
execute as @e[tag=voteViable,tag=!r_1_only,scores={randomCooldown=..0}] run scoreboard players add global math 1
execute if score global math matches 5.. run tag @e[type=armor_stand,tag=r_1_only,tag=voteViable] remove voteViable