scoreboard players add @s[scores={elytraTimer=..99}] elytraTimer 1
execute if score #halftick value matches 1 run scoreboard players add @s[scores={elytraTimer=..99}] elytraTimer 1

scoreboard players add @s[scores={showCheckNav=..4}] showCheckNav 2

execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=09a] run tag @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] add ejectkart

execute if entity @s[scores={elytraTimer=..30}] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0 2 force

#give slow falling until wings are opened, also show particles while gliding
execute if entity @s[nbt={FallFlying:0b}] run effect give @s slow_falling 5 0 false
execute if entity @s[nbt={FallFlying:1b}] run effect clear @s slow_falling
execute if entity @s[nbt={FallFlying:1b}] run particle instant_effect ^.8 ^.4 ^ 0.0 0.0 0.0 0 1 force
execute if entity @s[nbt={FallFlying:1b}] run particle instant_effect ^-.8 ^.4 ^ 0.0 0.0 0.0 0 1 force

#remove elytra if on ground or in water
execute if entity @s[scores={elytraTimer=10..},nbt={OnGround:1b}] run function sprint_racer:items/item_tick/elytra_remove
execute if entity @s[scores={elytraTimer=10..}] if block ~ ~ ~ water run function sprint_racer:items/item_tick/elytra_remove