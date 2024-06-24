#MISC LOBBY HAPPENINGS
#20hz stuff

#credits cycle
function sprint_racer:game_logic/0/props/credits_cycle

#item room door
execute if entity @s[tag=!requireAdmin] if entity @a[x=1596,y=89,z=465,distance=..4,gamemode=!spectator] run scoreboard players add @s[scores={scriptMove=..9}] scriptMove 1
execute if entity @s[tag=!requireAdmin] unless entity @a[x=1596,y=89,z=465,distance=..4,gamemode=!spectator] run scoreboard players remove @s[scores={scriptMove=2..}] scriptMove 1
execute if entity @s[tag=requireAdmin] if entity @a[tag=admin,x=1596,y=89,z=465,distance=..4,gamemode=!spectator] run scoreboard players add @s[scores={scriptMove=..9}] scriptMove 1
execute if entity @s[tag=requireAdmin] unless entity @a[tag=admin,x=1596,y=89,z=465,distance=..4,gamemode=!spectator] run scoreboard players remove @s[scores={scriptMove=2..}] scriptMove 1
execute if entity @s[scores={scriptMove=2..8}] run function sprint_racer:game_logic/0/misc_lobby_happenings/item_room_door

#extras room door
execute if entity @s[tag=!requireAdmin] if entity @a[x=1596,y=89,z=347,distance=..4,gamemode=!spectator] run scoreboard players add @s[scores={dropBarrier=..9}] dropBarrier 1
execute if entity @s[tag=!requireAdmin] unless entity @a[x=1596,y=89,z=347,distance=..4,gamemode=!spectator] run scoreboard players remove @s[scores={dropBarrier=2..}] dropBarrier 1
execute if entity @s[tag=requireAdmin] if entity @a[tag=admin,x=1596,y=89,z=347,distance=..4,gamemode=!spectator] run scoreboard players add @s[scores={dropBarrier=..9}] dropBarrier 1
execute if entity @s[tag=requireAdmin] unless entity @a[tag=admin,x=1596,y=89,z=347,distance=..4,gamemode=!spectator] run scoreboard players remove @s[scores={dropBarrier=2..}] dropBarrier 1
execute if entity @s[scores={dropBarrier=2..8}] run function sprint_racer:game_logic/0/misc_lobby_happenings/extras_room_door

#alarm when players reach the 2nd floor of the bank
execute if entity @a[x=1574,y=96,z=369,dx=18,dy=6,dz=11,gamemode=!spectator] if entity @s[scores={oTimerGlobal=0}] positioned 1582 99 374 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 2 1.15

#villagers walk around
execute as @e[type=villager,tag=lobbyprop,tag=walk] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/walk_villager
execute as @e[type=villager,tag=lobbyprop,tag=run] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/run_villager
kill @e[type=witch,tag=!killme]

#villagers in love
function sprint_racer:game_logic/0/misc_lobby_happenings/lovebird_particles

#does a fishing bobber exist? do special logic to keep fishing loot alive
execute if score #fishingBobberTime value matches 1.. run scoreboard players remove #fishingBobberTime value 1
execute if entity @e[type=fishing_bobber,limit=1] run scoreboard players set #fishingBobberTime value 6
execute if score #fishingBobberTime value matches 1.. as @e[type=item] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{stay:1b}}}}] if entity @s[tag=!stay] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{notitle:1b}}}}] at @s if block ~ ~-.2 ~ water run tag @s add stay

#particles for the round display to indicate the current round
execute as @e[tag=roundDisplay,tag=roundCurrent,tag=particleA] at @s run particle dust{color:[0.0,1.0,1.0],scale:0.5} ~ ~.4 ~ 0 .12 .12 0 1
execute as @e[tag=roundDisplay,tag=roundCurrent,tag=particleB] at @s run particle dust{color:[1.0,0.0,0.0],scale:0.5} ~ ~.4 ~ 0 .12 .12 0 1
execute as @e[tag=roundDisplay,tag=roundCurrent,tag=particleC] at @s run particle dust{color:[1.0,1.0,0.0],scale:0.5} ~ ~.4 ~ 0 .12 .12 0 1

#particles in the extras room
execute if entity @a[x=1608,y=79,z=357,dx=23,dy=8,dz=17] run function sprint_racer:game_logic/0/misc_lobby_happenings/extras_room_particles

#save state room
execute if entity @a[x=1605,y=87,z=455,dx=11,dy=6,dz=7,gamemode=!spectator] run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/main