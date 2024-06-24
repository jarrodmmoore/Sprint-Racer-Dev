#always has ender pearls
execute if entity @s[scores={aiHasItem11=..0}] run function sprint_racer_language:gameplay/give_item/no11

#no water please
execute if block ~ ~-.6 ~ water run tag @s add aiDontFace
execute if block ~ ~-.6 ~ water run tp @s ~ ~.5 ~