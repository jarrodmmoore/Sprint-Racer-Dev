#do in reverse order

execute if score @s racePosDisplay matches 1 run scoreboard players set @s racePosDisplay2 4
execute if score @s racePosDisplay matches 1 if entity @s[tag=!finished] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➀","color":"yellow","bold":false}]

execute if score @s racePosDisplay matches 2 run scoreboard players set @s racePosDisplay2 3
execute if score @s racePosDisplay matches 2 if entity @s[tag=!finished] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➁","color":"white","bold":false}]

execute if score @s racePosDisplay matches 3 run scoreboard players set @s racePosDisplay2 2
execute if score @s racePosDisplay matches 3 if entity @s[tag=!finished] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➂","color":"white","bold":false}]

execute if score @s racePosDisplay matches 4 run scoreboard players set @s racePosDisplay2 1
execute if score @s racePosDisplay matches 4 if entity @s[tag=!finished] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➃","color":"white","bold":false}]

execute if entity @s[tag=finished] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"\uE072","color":"white","bold":false}]