attribute @s movement_speed base set 0.1

scoreboard players set #setspeed value -1
scoreboard players add @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,limit=1] speedlevel 0
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=01a] run scoreboard players operation #setspeed value = @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand] speedlevel

#+5% speed = 0.105 (+0.005)
#-5% speed = 0.095 (-0.005)

execute if score @s cStatTopS matches 1 unless score #setspeed value matches 0.. run attribute @s movement_speed base set 0.105
execute if score @s cStatTopS matches 1 if score #setspeed value matches 0 run attribute @s movement_speed base set 0.155
execute if score @s cStatTopS matches 1 if score #setspeed value matches 1 run attribute @s movement_speed base set 0.165
execute if score @s cStatTopS matches 1 if score #setspeed value matches 2 run attribute @s movement_speed base set 0.175
execute if score @s cStatTopS matches 1 if score #setspeed value matches 3 run attribute @s movement_speed base set 0.185
execute if score @s cStatTopS matches 1 if score #setspeed value matches 4 run attribute @s movement_speed base set 0.195
execute if score @s cStatTopS matches 1 if score #setspeed value matches 5 run attribute @s movement_speed base set 0.205
execute if score @s cStatTopS matches 1 if score #setspeed value matches 6 run attribute @s movement_speed base set 0.075
execute if score @s cStatTopS matches 1 if score #setspeed value matches 7 run attribute @s movement_speed base set 0.085
execute if score @s cStatTopS matches 1 if score #setspeed value matches 8 run attribute @s movement_speed base set 0.095
execute if score @s cStatTopS matches 1 if score #setspeed value matches 9 run attribute @s movement_speed base set 0.115
execute if score @s cStatTopS matches 1 if score #setspeed value matches 10 run attribute @s movement_speed base set 0.125
execute if score @s cStatTopS matches 1 if score #setspeed value matches 11 run attribute @s movement_speed base set 0.135
execute if score @s cStatTopS matches 1 if score #setspeed value matches 12.. run attribute @s movement_speed base set 0.145

execute if score @s cStatTopS matches -1 unless score #setspeed value matches 0.. run attribute @s movement_speed base set 0.095
execute if score @s cStatTopS matches -1 if score #setspeed value matches 0 run attribute @s movement_speed base set 0.145
execute if score @s cStatTopS matches -1 if score #setspeed value matches 1 run attribute @s movement_speed base set 0.155
execute if score @s cStatTopS matches -1 if score #setspeed value matches 2 run attribute @s movement_speed base set 0.165
execute if score @s cStatTopS matches -1 if score #setspeed value matches 3 run attribute @s movement_speed base set 0.175
execute if score @s cStatTopS matches -1 if score #setspeed value matches 4 run attribute @s movement_speed base set 0.185
execute if score @s cStatTopS matches -1 if score #setspeed value matches 5 run attribute @s movement_speed base set 0.195
execute if score @s cStatTopS matches -1 if score #setspeed value matches 6 run attribute @s movement_speed base set 0.065
execute if score @s cStatTopS matches -1 if score #setspeed value matches 7 run attribute @s movement_speed base set 0.075
execute if score @s cStatTopS matches -1 if score #setspeed value matches 8 run attribute @s movement_speed base set 0.085
execute if score @s cStatTopS matches -1 if score #setspeed value matches 9 run attribute @s movement_speed base set 0.105
execute if score @s cStatTopS matches -1 if score #setspeed value matches 10 run attribute @s movement_speed base set 0.115
execute if score @s cStatTopS matches -1 if score #setspeed value matches 11 run attribute @s movement_speed base set 0.125
execute if score @s cStatTopS matches -1 if score #setspeed value matches 12.. run attribute @s movement_speed base set 0.135