scoreboard players add @s aiSpecial 1

execute if entity @s[scores={aiSpecial=170}] run function sprint_racer:ai/general/special/pig_get_apple

scoreboard players set @s[scores={aiSpecial=170..}] aiSpecial 0

#no zombies from lightning please
kill @e[type=zombified_piglin]