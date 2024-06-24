#it's like regular cp hit detection, but the hitbox is attached to the ender pearl instead of the CP
#offset in such a way that it matches the original CP hitbox
#so if the CP node is anywhere in the box, we're inside the CP hitbox

execute store result score #pearl_coord_y value run data get entity @s Pos[1] 10000

scoreboard players operation #pearlID value = @s playerID
#must sync check value with our parent player!
execute as @e[tag=activeplayer] if score @s playerID = #pearlID value run scoreboard players operation #pearlCheck value = @s check
scoreboard players operation @s check = #pearlCheck value

scoreboard players set #goNextCP value 0
scoreboard players set #goNextLap value 0

execute positioned ~-5 -64 ~-5 as @e[type=marker,tag=checkpoint,dx=9,dy=400,dz=9,scores={nodeState=1..}] run function sprint_racer:items/item_tick/ender_pearl_inside_checkpoint
execute positioned ~-5 -64 ~-5 as @e[type=marker,tag=finishline,dx=9,dy=400,dz=9,scores={nodeState=1..}] run function sprint_racer:items/item_tick/ender_pearl_inside_finishline

execute if score #goNextCP value matches 1 run scoreboard players add @s check 1
execute if score #goNextCP value matches 1 as @e[tag=activeplayer] if score @s playerID = #pearlID value if score @s check = #pearlCheck value run tag @s add checkIncrement
execute if score #goNextCP value matches 1 as @e[tag=activeplayer] if score @s playerID = #pearlID value if score @s check = #pearlCheck value run tag @s add checkSound
execute if score #goNextCP value matches 1 as @e[tag=activeplayer] if score @s playerID = #pearlID value if score @s check = #pearlCheck value run tag @s add checkText

execute if score #goNextLap value matches 1 run scoreboard players set @s check 0
execute if score #goNextLap value matches 1 as @e[tag=activeplayer] if score @s playerID = #pearlID value if score @s check = #pearlCheck value run tag @s add finishLap