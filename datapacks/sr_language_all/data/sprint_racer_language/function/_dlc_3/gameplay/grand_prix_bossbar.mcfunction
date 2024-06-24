bossbar set minecraft:freeroam name ["",{"translate":"sr.grand_prix.bossbar","color":"gold","bold":true}]
bossbar set freeroam color white
bossbar set freeroam max 1
bossbar set freeroam style progress
scoreboard players set @e[tag=w,type=armor_stand] math 1
execute store result bossbar minecraft:freeroam value run scoreboard players get @e[tag=w,limit=1] math