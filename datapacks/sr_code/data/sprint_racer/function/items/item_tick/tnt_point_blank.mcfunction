scoreboard players operation #check_tnt_id value = @s playerID

scoreboard players set #tnt_check value 0
execute as @e[tag=activeplayer,distance=..5,scores={invisibility=..0}] unless score @s playerID = #check_tnt_id value run scoreboard players set #tnt_check value 1
execute as @e[tag=activeplayer,distance=..3,scores={invisibility=..0}] unless score @s playerID = #check_tnt_id value run scoreboard players set #tnt_check value 2
execute as @e[tag=activeplayer,distance=..2,scores={invisibility=..0}] unless score @s playerID = #check_tnt_id value run scoreboard players set #tnt_check value 3

execute if score #tnt_check value matches 1 run scoreboard players add @s age 5
execute if score #tnt_check value matches 2 run scoreboard players add @s age 17
execute if score #tnt_check value matches 3 run scoreboard players add @s age 117