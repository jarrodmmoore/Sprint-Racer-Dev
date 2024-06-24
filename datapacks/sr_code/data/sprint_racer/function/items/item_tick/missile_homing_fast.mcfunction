#particle trail
particle dust{color:[1.0,0.0,1.0],scale:2} ~ ~1.1 ~ .05 .05 .05 0 1 force

execute unless entity @e[tag=w,scores={gameState=8}] if entity @s[scores={age=4..}] positioned ^ ^ ^9 run tag @e[distance=..9,sort=nearest,tag=activeplayer,scores={invisibility=..0}] add homingTarget
execute if entity @e[tag=w,scores={gameState=8}] if entity @s[scores={age=4..}] positioned ^ ^ ^9 run tag @e[distance=..9,sort=nearest,tag=taTargetCore] add homingTarget

#missile will NOT home in on its user
scoreboard players operation @e[tag=homingTarget] dummyID = @s playerID
execute as @e[tag=homingTarget] run scoreboard players operation @s dummyID -= @s playerID
tag @e[tag=homingTarget,scores={playerID=1..,dummyID=0}] remove homingTarget

execute if entity @s[tag=!hurryUp] unless entity @s[tag=homingTarget] run tp @s ^ ^ ^1.25
execute if entity @s[tag=!hurryUp] if entity @e[tag=homingTarget] run tp @s ^ ^ ^1.25 facing entity @e[limit=1,sort=nearest,tag=homingTarget]
execute if entity @s[tag=hurryUp] unless entity @s[tag=homingTarget] run tp @s ^ ^ ^1.5
execute if entity @s[tag=hurryUp] if entity @e[tag=homingTarget] run tp @s ^ ^ ^1.5 facing entity @e[limit=1,sort=nearest,tag=homingTarget]

tag @e[tag=homingTarget] remove homingTarget