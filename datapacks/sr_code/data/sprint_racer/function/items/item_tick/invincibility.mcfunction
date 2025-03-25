scoreboard players remove @e[scores={invulTime=1..}] invulTime 1

effect give @e[scores={invulTime=2..}] resistance 3 250 true
execute as @e[tag=ai,scores={invulTime=2..}] run data merge entity @s {Invulnerable:1b}
effect clear @e[scores={invulTime=1,nResist=..0}] resistance
execute as @e[tag=ai,scores={invulTime=1}] run data merge entity @s {Invulnerable:0}

execute as @e[tag=activeplayer,scores={invulTime=1..,invisibility=..0}] at @s run particle instant_effect ~ ~1 ~ .4 .6 .4 1 2 force
execute as @e[tag=activeplayer,scores={invulTime=41..,invisibility=..0}] at @s run particle instant_effect ~ ~1 ~ .4 .6 .4 1 2 force
execute as @e[tag=activeplayer,scores={invulTime=81..,invisibility=..0}] at @s run particle instant_effect ~ ~1 ~ .4 .6 .4 1 2 force

#convert to seconds for visual timer
execute as @e[scores={invulTime=1..}] run scoreboard players operation @s invulTimer = @s invulTime
execute as @e[scores={invulTime=1..}] run scoreboard players operation @s invulTimer /= @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] rNumber
execute as @e[scores={invulTime=1..}] run scoreboard players add @s invulTimer 1

#actionbar display
scoreboard players set @a[gamemode=!spectator,scores={invulTime=1..,actionbarState=..3}] actionbarState 3
scoreboard players set @a[gamemode=!spectator,scores={invulTime=1..,actionbarState=..3}] actionbarState2 4