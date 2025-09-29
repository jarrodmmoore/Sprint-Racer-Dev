execute on vehicle if entity @s[type=chicken,tag=chickenmine] on passengers if entity @s[tag=cminezombie] run scoreboard players set @s lifespan 6
scoreboard players add @s lifespan 0

#chicken mine zombies pick who they're angry at once in a while
scoreboard players remove @s age 1
execute if score #halftick value matches 1 run scoreboard players remove @s age 1
execute if score @s age matches ..0 at @s run function sprint_racer:items/item_tick/chicken_mine_zombie_target