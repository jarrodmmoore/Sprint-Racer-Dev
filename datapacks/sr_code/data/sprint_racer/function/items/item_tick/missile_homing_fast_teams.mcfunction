#particle trail
particle dust{color:[1.0,0.0,1.0],scale:2} ~ ~1.1 ~ .05 .05 .05 0 1 force

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=8}] if entity @s[scores={age=4..}] positioned ^ ^ ^9 run tag @e[distance=..9,sort=nearest,tag=activeplayer,scores={invisibility=..0}] add homingTarget
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=8}] if entity @s[scores={age=4..}] positioned ^ ^ ^9 run tag @e[distance=..9,sort=nearest,tag=taTargetCore,type=magma_cube] add homingTarget

#missile will NOT home in on its own team
execute if entity @s[tag=itemCyan] run tag @e[tag=homingTarget,tag=playerCyan] remove homingTarget
execute if entity @s[tag=!itemCyan] run tag @e[tag=homingTarget,tag=playerOrange] remove homingTarget

execute if entity @s[tag=!hurryUp] unless entity @s[tag=homingTarget] run tp @s ^ ^ ^1.25
execute if entity @s[tag=!hurryUp] if entity @e[tag=homingTarget] run tp @s ^ ^ ^1.25 facing entity @e[limit=1,sort=nearest,tag=homingTarget]
execute if entity @s[tag=hurryUp] unless entity @s[tag=homingTarget] run tp @s ^ ^ ^1.5
execute if entity @s[tag=hurryUp] if entity @e[tag=homingTarget] run tp @s ^ ^ ^1.5 facing entity @e[limit=1,sort=nearest,tag=homingTarget]

tag @e[tag=homingTarget] remove homingTarget