scoreboard players operation #checkID value = @s playerID
execute as @e[tag=activeplayer,distance=..3] unless score @s playerID = #checkID value run scoreboard players set @s burn 1