clear @s
effect clear @s
effect give @s resistance 1 200 true

#first teleport. This is a fallback, also cancels player velocity which relative TPs don't do
tp @s 1556 89 406 90 0
#second teleport. Spreads players out using a relative TP
execute positioned 1556 89 406 rotated 90 0 run function sprint_racer:varied_teleport

spawnpoint @s 1556 89 406

function sprint_racer:save_coordinates