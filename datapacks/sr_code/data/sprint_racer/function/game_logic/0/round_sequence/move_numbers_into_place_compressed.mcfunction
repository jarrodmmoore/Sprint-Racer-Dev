#executed by each number that needs moved


#numbers get spread out
execute if entity @s[tag=roundNo1] run tp @s ~ ~4.5 ~
execute if entity @s[tag=roundNo2] run tp @s ~ ~4.5 ~-.5
execute if entity @s[tag=roundNo3] run tp @s ~ ~4.5 ~-1
execute if entity @s[tag=roundNo4] run tp @s ~ ~4.5 ~-1.5
execute if entity @s[tag=roundNo5] run tp @s ~ ~4.5 ~-2
execute if entity @s[tag=roundNo6] run tp @s ~ ~4.5 ~-2.5
execute if entity @s[tag=roundNo7] run tp @s ~ ~4.5 ~-3
execute if entity @s[tag=roundNo8] run tp @s ~ ~4.5 ~-3.5
execute if entity @s[tag=roundNo9] run tp @s ~ ~4.5 ~-4
execute if entity @s[tag=roundNo10] run tp @s ~ ~4.5 ~-4.5

#roundText sits above
execute if entity @s[tag=roundText1] run tp @s ~ ~5.75 ~
execute if entity @s[tag=roundText2] run tp @s ~ ~5.25 ~


#roundText 1 and 2 don't need to shift. exit now
execute if entity @s[tag=roundText1] run return 0
execute if entity @s[tag=roundText2] run return 0
#=====


#everyone else will shift to put the current round in the center
execute if score #round_number value matches 2 at @s run tp @s ~ ~ ~.5
execute if score #round_number value matches 3 at @s run tp @s ~ ~ ~1
execute if score #round_number value matches 4 at @s run tp @s ~ ~ ~1.5
execute if score #round_number value matches 5 at @s run tp @s ~ ~ ~2
execute if score #round_number value matches 6 at @s run tp @s ~ ~ ~2.5
execute if score #round_number value matches 7 at @s run tp @s ~ ~ ~3
execute if score #round_number value matches 8 at @s run tp @s ~ ~ ~3.5
execute if score #round_number value matches 9 at @s run tp @s ~ ~ ~4
execute if score #round_number value matches 10 at @s run tp @s ~ ~ ~4.5
execute if score #round_number value matches 11.. at @s run tp @s ~ ~ ~5

#mark the current round so it can show particles later
execute if score #round_number value matches 1 if entity @s[tag=roundNo1] run tag @s add roundCurrent
execute if score #round_number value matches 2 if entity @s[tag=roundNo2] run tag @s add roundCurrent
execute if score #round_number value matches 3 if entity @s[tag=roundNo3] run tag @s add roundCurrent
execute if score #round_number value matches 4 if entity @s[tag=roundNo4] run tag @s add roundCurrent
execute if score #round_number value matches 5 if entity @s[tag=roundNo5] run tag @s add roundCurrent
execute if score #round_number value matches 6 if entity @s[tag=roundNo6] run tag @s add roundCurrent
execute if score #round_number value matches 7 if entity @s[tag=roundNo7] run tag @s add roundCurrent
execute if score #round_number value matches 8 if entity @s[tag=roundNo8] run tag @s add roundCurrent
execute if score #round_number value matches 9 if entity @s[tag=roundNo9] run tag @s add roundCurrent
execute if score #round_number value matches 10 if entity @s[tag=roundNo10] run tag @s add roundCurrent