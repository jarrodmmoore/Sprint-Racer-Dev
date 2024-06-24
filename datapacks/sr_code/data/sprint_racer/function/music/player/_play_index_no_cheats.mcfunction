#must stop sound when there's a change!
execute unless score @s BGMtrack = @s prevBGM run stopsound @s record

#play 7 dummy streamed sounds! this is how we auto-loop :)
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0
execute unless entity @s[scores={soundtrack=1}] run playsound minecraft:sprint_racer_ost/blank record @s ~ ~10 ~ .4 1 0

#now play actual song
execute if entity @s[scores={soundtrack=1}] run function sprint_racer:music/player/_play_index_stock
execute if entity @s[scores={soundtrack=2}] run function sprint_racer:music/player/_play_index_custom

scoreboard players operation @s prevBGM = @s BGMtrack