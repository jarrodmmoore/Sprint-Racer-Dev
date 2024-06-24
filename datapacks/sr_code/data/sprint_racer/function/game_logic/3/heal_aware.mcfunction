scoreboard players remove @a[scores={heal_aware=2..}] heal_aware 1

execute as @a[gamemode=adventure,tag=playing,scores={hp=..10,heal_aware=1..59,hitstun=..0}] unless entity @e[tag=activeplayer,limit=1,sort=nearest,gamemode=adventure,distance=1..6] run scoreboard players add @s heal_aware 2