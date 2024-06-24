scoreboard players add @s aiSpecial 1

execute if entity @s[scores={aiSpecial=170}] run function sprint_racer:ai/general/special/snow_golem_get_snowball

scoreboard players set @s[scores={aiSpecial=170..}] aiSpecial 0

#no water please
execute if block ~ ~-.2 ~ water run tag @s add aiDontFace
execute if block ~ ~-.2 ~ water run tp @s ~ ~.5 ~