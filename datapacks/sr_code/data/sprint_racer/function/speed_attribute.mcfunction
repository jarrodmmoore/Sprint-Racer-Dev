scoreboard players set #setspeed value -1
scoreboard players add @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,limit=1] speedlevel 0
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=01a] run scoreboard players operation #setspeed value = @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] speedlevel
scoreboard players operation #speedoSpeed value = #setspeed value

#default
execute as @a run attribute @s movement_speed base set 0.1

#speed cheat, can use various modifiers
execute if score #setspeed value matches 0 as @a run attribute @s movement_speed base set 0.15
execute if score #setspeed value matches 1 as @a run attribute @s movement_speed base set 0.16
execute if score #setspeed value matches 2 as @a run attribute @s movement_speed base set 0.17
execute if score #setspeed value matches 3 as @a run attribute @s movement_speed base set 0.18
execute if score #setspeed value matches 4 as @a run attribute @s movement_speed base set 0.19
execute if score #setspeed value matches 5 as @a run attribute @s movement_speed base set 0.20
execute if score #setspeed value matches 6 as @a run attribute @s movement_speed base set 0.07
execute if score #setspeed value matches 7 as @a run attribute @s movement_speed base set 0.08
execute if score #setspeed value matches 8 as @a run attribute @s movement_speed base set 0.09
execute if score #setspeed value matches 9 as @a run attribute @s movement_speed base set 0.11
execute if score #setspeed value matches 10 as @a run attribute @s movement_speed base set 0.12
execute if score #setspeed value matches 11 as @a run attribute @s movement_speed base set 0.13
execute if score #setspeed value matches 12.. as @a run attribute @s movement_speed base set 0.14

execute as @a unless score @s cStatTopS matches 0 run function sprint_racer:cheats/shoes/modified_top_speed

#let's also handle custom max HP while we're here
execute as @a if score @s cStatHP matches 20 run attribute @s minecraft:max_health base set 20
execute as @a unless score @s cStatHP matches 20 run function sprint_racer:cheats/shoes/modified_max_hp
execute if entity @s[type=player] run effect give @s instant_health 1 100 true

#let's also handle attributes for various cheats while in here
scoreboard players set #getOnWithIt value 0
execute as @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,limit=1] run function sprint_racer:cheats/update_player_attributes