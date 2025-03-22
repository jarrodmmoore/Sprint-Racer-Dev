scoreboard players remove #wExists value 1
execute if score #wExists value matches 40 run tellraw @a ["",{text:"\uE075 Entity \"w\" does not exist!\nSprint Racer will fully reset itself in an attempt to fix the issue.\nPlease report this issue somewhere.",color:"red"}]
execute if score #wExists value matches ..-10 run function sprint_racer:world_setup

scoreboard players remove #wHasScore value 1
execute if score #wHasScore value matches 40 if score #wExists value matches 60.. run tellraw @a ["",{text:"\uE075 Entity \"w\" is missing critical scoreboard data!\nSprint Racer will fully reset itself in an attempt to fix the issue.\nPlease report this issue somewhere.",color:"red"}]
execute if score #wHasScore value matches ..-11 run function sprint_racer:world_setup