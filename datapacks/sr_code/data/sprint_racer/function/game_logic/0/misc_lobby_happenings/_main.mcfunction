#MISC LOBBY HAPPENINGS

#boost pads n stuff
function sprint_racer:game_logic/0/node_effects/node_effects_main

#credits button
execute if block 1652 88 418 clay unless block 1652 89 418 command_block run function sprint_racer:game_logic/0/misc_lobby_happenings/credits_button/place

#clear night vision?
execute positioned 1556 89 406 positioned ~-8 ~-1 ~-8 run effect clear @a[dx=16,dy=10,dz=16] night_vision

#fly through ring!
execute as @a[gamemode=adventure,x=1711,y=75,z=404,dx=10,dy=10,dz=4,scores={elytraTimer=1..,inputCooldown=..0}] run function sprint_racer:game_logic/0/misc_lobby_happenings/ring_fly

#chests spin
execute if entity @s[scores={oTimerGlobal=0}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/_index
execute if entity @s[tag=moretick,scores={oTimerGlobal=1}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin_extra_frames/_index
execute if entity @s[tag=halftick,scores={oTimerGlobal=1}] run function sprint_racer:game_logic/0/misc_lobby_happenings/preview_chest_spin/_index

execute as @a[x=1588,y=78,z=420,dx=36,dy=8,dz=15,gamemode=!spectator] at @s as @e[distance=..4,limit=1,sort=nearest,tag=itempreview,type=item] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/show_item_names

#jailbirds need to exist
execute unless entity @s[tag=optRAInever] if block 1620 88 353 air if block 1620 88 363 air unless entity @e[limit=1,sort=nearest,type=zombie,tag=jailz1] run function sprint_racer:game_logic/0/props/update_jail_zombies
execute unless entity @s[tag=optBAInever] if block 1620 88 353 air if block 1620 88 363 air unless entity @e[limit=1,sort=nearest,type=zombie,tag=jailz2] run function sprint_racer:game_logic/0/props/update_jail_zombies

#fix lingering podium area bug caused by low view distance or disconnect during end sequence
execute if block 1660 102 392 air run function sprint_racer:game_logic/0/misc_lobby_happenings/remove_lingering_podium
execute if block 1643 89 395 barrier run function sprint_racer:game_logic/0/misc_lobby_happenings/remove_lingering_podium

#update team pads
execute if entity @s[tag=teamplay] if block 1574 88 401 air run function sprint_racer:game_logic/0/misc_lobby_happenings/team_pad_add
execute unless entity @s[tag=teamplay] if block 1574 88 401 cyan_carpet run function sprint_racer:game_logic/0/misc_lobby_happenings/team_pad_remove
execute if entity @s[tag=teamplay] run function sprint_racer:game_logic/0/misc_lobby_happenings/team_pad_active

#item room floating texts
execute if entity @a[x=1588,y=78,z=420,dx=36,dy=8,dz=15,gamemode=!spectator] as @e[tag=cDisplay,tag=!cShowing] run function sprint_racer:game_logic/0/props/show_container_name
execute unless entity @a[x=1588,y=78,z=420,dx=36,dy=8,dz=15,gamemode=!spectator] as @e[tag=cDisplay,tag=cShowing] run function sprint_racer:game_logic/0/props/hide_container_name

#extras room floating texts
execute if entity @a[x=1608,y=79,z=357,dx=23,dy=8,dz=17,gamemode=!spectator] as @e[tag=cDisplay2,tag=!cShowing] run function sprint_racer:game_logic/0/props/show_container_name
execute unless entity @a[x=1608,y=79,z=357,dx=23,dy=8,dz=17,gamemode=!spectator] as @e[tag=cDisplay2,tag=cShowing] run function sprint_racer:game_logic/0/props/hide_container_name

#villagers look at nearby players
execute as @e[limit=1,sort=random,type=villager,tag=lobbyprop,tag=lookatplayer] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/villager_look_at_player

#keep non-admin players out of the item room
execute if entity @s[tag=requireAdmin] as @a[tag=!admin,x=1588,y=78,z=420,dx=36,dy=8,dz=15] at @s run function sprint_racer_language:lobby/kick_out_of_item_room

#keep non-admin players out of the extras room
execute if entity @s[tag=requireAdmin] as @a[tag=!admin,x=1608,y=79,z=357,dx=23,dy=8,dz=17] at @s run function sprint_racer_language:_dlc_1/lobby/kick_out_of_extra_room

#keep non-admin players out of the cheat room
execute if entity @s[tag=requireAdmin] as @a[tag=!admin,x=1574,y=97,z=438,dx=20,dy=14,dz=13] at @s run function sprint_racer_language:_dlc_4/lobby/kick_out_of_cheat_room

#prevent explosions in the item room
kill @e[tag=missile,x=1588,y=78,z=420,dx=36,dy=8,dz=15]
kill @e[type=tnt,x=1588,y=78,z=420,dx=36,dy=8,dz=15]
kill @e[type=chicken,x=1588,y=78,z=420,dx=36,dy=8,dz=15]
execute if entity @e[limit=1,type=item,tag=!lobbyprop,x=1588,y=78,z=420,dx=36,dy=8,dz=15] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}},x=1588,y=78,z=420,dx=36,dy=8,dz=15]
clear @a[x=1588,y=78,z=420,dx=36,dy=8,dz=15] tnt

#teleporting tunnels
execute if entity @s[scores={allowSecretLob=1}] as @a[gamemode=adventure,x=1548,y=88,z=346,dx=16,dy=6,dz=10] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/enter_northwest
execute if entity @s[scores={allowSecretLob=1}] as @a[gamemode=adventure,x=1548,y=88,z=456,dx=16,dy=6,dz=10] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/enter_northeast
execute if entity @s[scores={allowSecretLob=1}] as @a[gamemode=adventure,x=1628,y=88,z=346,dx=16,dy=6,dz=10] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/enter_southwest
execute if entity @s[scores={allowSecretLob=1}] as @a[gamemode=adventure,x=1628,y=88,z=456,dx=16,dy=6,dz=10] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/warp_tunnels/enter_southeast

#portals in extras room
execute as @a[x=1623,y=81,z=371,dx=0,dy=2,dz=0] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run schedule function sprint_racer:game_logic/6/_initialize 1t
execute as @a[x=1627,y=81,z=371,dx=0,dy=2,dz=0] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run schedule function sprint_racer:game_logic/5/_initialize 1t
execute unless entity @s[tag=realms] as @a[x=1623,y=81,z=360,dx=0,dy=2,dz=0] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run schedule function sprint_racer:game_logic/10/_initialize_def 1t
execute as @a[x=1627,y=81,z=360,dx=0,dy=2,dz=0] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run schedule function sprint_racer:game_logic/9/_initialize 1t
execute as @a[x=1619,y=81,z=360,dx=0,dy=2,dz=0] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] at @s run schedule function sprint_racer:game_logic/11/_initialize 1t

#cheats room
execute if entity @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheats_room
execute unless entity @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] run clear @a bow[custom_data~{cheatentry:1b}]
execute unless entity @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] run clear @a arrow[custom_data~{cheatarrow:1b}]

#lobby only, check if players are looking around to mark them not AFK
execute as @a run function sprint_racer:game_logic/0/misc_lobby_happenings/afk_rotation_check