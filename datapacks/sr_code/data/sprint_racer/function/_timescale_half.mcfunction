#oTimerTS, helps run commands at half frequency when I want to
scoreboard players add #oTimerTS value 1
execute if score #oTimerTS value matches 2.. run scoreboard players set #oTimerTS value 0

execute if score #oTimerTS value matches 1 run function sprint_racer:_main

execute if score #oTimerTS value matches 0 run function sprint_racer:all_20hz_stuff