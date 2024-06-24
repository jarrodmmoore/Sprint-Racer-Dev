execute if entity @s[tag=!requireBoost] as @e[distance=..3,tag=activeplayer,scores={scriptMove=..0}] run tag @s add sTarget
execute if entity @s[tag=requireBoost] as @e[distance=..4,tag=activeplayer,scores={scriptMove=..0,speedBoost=1..}] run tag @s add sTarget

execute if entity @e[tag=sTarget] run scoreboard players operation @e[tag=sTarget] scriptMove = @s scriptMove
scoreboard players set @e[tag=sTarget] scriptMoveLimit 120
tp @e[tag=sTarget] @s

tag @e[tag=sTarget] remove sTarget