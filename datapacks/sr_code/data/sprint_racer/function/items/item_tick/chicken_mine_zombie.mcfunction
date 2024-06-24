kill @s[nbt={OnGround:1b}]
execute unless entity @e[tag=chickenmine,distance=..2] run kill @s
execute if block ~ ~ ~ water run kill @s

#chicken mine zombies pick who they're angry at once in a while
scoreboard players remove @s age 1
execute if score #halftick value matches 1 run scoreboard players remove @s age 1
execute if score @s age matches ..0 at @s run function sprint_racer:items/item_tick/chicken_mine_zombie_target