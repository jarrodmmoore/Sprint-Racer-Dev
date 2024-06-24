tag @s add lil_baby

execute on origin if entity @s[type=player] run scoreboard players operation @e[limit=1,tag=lil_baby] playerID = @s playerID

tag @s remove lil_baby