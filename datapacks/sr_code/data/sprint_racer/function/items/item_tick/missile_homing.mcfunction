#home in on things that are NOT our owner
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=activeplayer] if score @s playerID = #checkID value run tag @s add rocketOwner
execute positioned ^ ^ ^9 run tag @e[tag=activeplayer,tag=!rocketOwner,scores={invisibility=..0},distance=..9] add homingTarget
execute if score global gameState matches 8 positioned ^ ^ ^9 run tag @e[tag=taTargetCore,type=magma_cube,distance=..9] add homingTarget
execute if entity @e[tag=homingTarget] facing entity @e[limit=1,tag=homingTarget,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
tag @e[tag=homingTarget] remove homingTarget
tag @e[tag=rocketOwner] remove rocketOwner