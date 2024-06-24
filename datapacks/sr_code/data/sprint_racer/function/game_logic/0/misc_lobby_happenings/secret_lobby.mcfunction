execute if entity @s[scores={gameState=0}] run effect give @a[scores={coord_y=..400000}] night_vision 15 1 true

#spawn nodes
execute unless entity @e[tag=node,tag=lobbyprop,type=marker,x=1580,y=12,z=414,distance=..2] run function sprint_racer:game_logic/0/props/summon_nodes_secret

#leave
execute as @a[gamemode=adventure,x=1545,y=19,z=344,dx=10,dy=5,dz=4] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/leave_northwest
execute as @a[gamemode=adventure,x=1605,y=19,z=344,dx=10,dy=5,dz=4] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/leave_southwest
execute as @a[gamemode=adventure,x=1545,y=19,z=464,dx=10,dy=5,dz=4] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/leave_northeast
execute as @a[gamemode=adventure,x=1605,y=19,z=464,dx=10,dy=5,dz=4] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/leave_southeast