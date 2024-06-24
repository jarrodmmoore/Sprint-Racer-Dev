execute if entity @s[tag=checkpoint,tag=!checkAnyY] run scoreboard players set @s check_y_min -1
execute if entity @s[tag=checkpoint,tag=!checkAnyY] run scoreboard players set @s check_y_max 10
execute if entity @s[tag=checkpoint,tag=checkAnyY] run scoreboard players set @s check_y_min -9999
execute if entity @s[tag=checkpoint,tag=checkAnyY] run scoreboard players set @s check_y_max 9999

execute if entity @s[tag=finishline,tag=!finAnyY] run scoreboard players set @s check_y_min -1
execute if entity @s[tag=finishline,tag=!finAnyY] run scoreboard players set @s check_y_max 10
execute if entity @s[tag=finishline,tag=finAnyY] run scoreboard players set @s check_y_min -9999
execute if entity @s[tag=finishline,tag=finAnyY] run scoreboard players set @s check_y_max 9999

tag @s add checkHasYRange