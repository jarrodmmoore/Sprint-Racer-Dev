tag @a remove playing

scoreboard players set @a join 1

#executing player is the first join
execute if entity @s[type=player] run function sprint_racer:join