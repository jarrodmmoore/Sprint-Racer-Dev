kill @e[limit=1,sort=nearest,tag=cminezombie,type=zombified_piglin,distance=..2]
execute if entity @s[tag=hyper] run scoreboard players set @e[distance=..2,tag=activeplayer,scores={invisibility=..0}] burn 1
function sprint_racer:explode
tag @s add cmineblownup