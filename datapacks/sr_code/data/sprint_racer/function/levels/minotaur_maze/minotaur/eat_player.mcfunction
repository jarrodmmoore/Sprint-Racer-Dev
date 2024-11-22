#sound
playsound entity.ravager.attack master @a ~ ~ ~ 3.5 1.1

#might laugh in some amount of time
execute store result score #test value run random value 1..4
execute if score #test value matches 3 run scoreboard players set @e[type=item_display,tag=minotaur,distance=..7,sort=nearest] aiHasItem1 15
execute if score #test value matches 4 run scoreboard players set @e[type=item_display,tag=minotaur,distance=..7,sort=nearest] aiHasItem1 30

#dead
kill @s[type=player]
execute if entity @s[tag=ai] run function sprint_racer:ai/general/die